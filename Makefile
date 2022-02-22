NAME	=	libft.a

SRCS	=	ft_bzero.c ft_isalpha.c ft_isprint.c \
			ft_memcpy.c ft_strchr.c ft_strlcat.c \
			ft_strncmp.c ft_strtrim.c ft_toupper.c \
			ft_calloc.c ft_isascii.c ft_memchr.c \
			ft_memmove.c ft_strdup.c ft_strlcpy.c \
			ft_strnstr.c ft_substr.c ft_atoi.c \
			ft_isalnum.c ft_isdigit.c ft_memcmp.c \
			ft_memset.c ft_strjoin.c ft_strlen.c \
			ft_strrchr.c ft_tolower.c ft_putchar_fd.c \
			ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
			ft_itoa.c ft_strmapi.c ft_striteri.c \
			ft_split.c ft_lstnew.c ft_lstadd_front.c ft_lstsize.c \
			ft_lstlast.c ft_lstadd_back.c ft_lstdelone.c \
			ft_lstclear.c ft_lstiter.c ft_lstmap.c	

OBJS	=	$(SRCS:.c=.o)

LIBH	=	libft.h

CC		=	gcc

FLAGS	=	-Wall -Wextra -Werror

RM		=	rm -rf

all:		${NAME}

${NAME}: ${OBJS}
			ar rc ${NAME} ${OBJS}
			ranlib ${NAME}

%.o:	%.c ${LIBH}
			${CC} ${FLAGS} -c $< -o $@
			
.PHONY:	all clean fclean re
