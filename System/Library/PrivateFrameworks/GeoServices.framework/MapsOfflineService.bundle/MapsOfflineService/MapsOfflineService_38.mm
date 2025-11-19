void sub_2C8708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2B2E00(va);
  _Unwind_Resume(a1);
}

void sub_2C871C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_2C8764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
    sub_2B2E00(&a11);
    _Unwind_Resume(a1);
  }

  sub_2B2E00(&a11);
  _Unwind_Resume(a1);
}

unsigned int *sub_2C87F0(unsigned int *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  if (a1 != a2)
  {
    do
    {
      v8 = *v5;
      if (sub_2C8914(*a4, *v5))
      {
        v9 = sub_2D52A4(**(a4 + 8), 32, v8, 1);
        if (v10)
        {
          v11 = (v9 + *v9);
          v12 = (v11 - *v11);
          if (*v12 >= 5u)
          {
            v13 = v12[2];
            if (v13)
            {
              if (*(v11 + v13))
              {
                v14 = a3[2];
                v15 = a3[1];
                if (v14 == v15)
                {
                  v16 = 0;
                }

                else
                {
                  v16 = ((v14 - v15) << 7) - 1;
                }

                v17 = a3[5];
                v18 = v17 + a3[4];
                if (v16 == v18)
                {
                  sub_2B2A38(a3);
                  v15 = a3[1];
                  v17 = a3[5];
                  v18 = a3[4] + v17;
                }

                *(*(v15 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v18 & 0x3FF)) = *v5;
                a3[5] = v17 + 1;
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != a2);
    return a2;
  }

  return v5;
}

uint64_t sub_2C8914(uint64_t a1, unsigned int a2)
{
  if (a2 && (**a1 != -1 || *(*a1 + 4) != -1))
  {
    sub_7FD28(6u);
    sub_57A90(a2);
    operator new();
  }

  return 1;
}

void sub_2C8B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_2C8B78(unsigned int *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  if (a1 != a2)
  {
    do
    {
      v8 = *v5;
      if (sub_2C8C9C(*a4, *v5))
      {
        v9 = sub_2D52A4(**(a4 + 8), 32, v8, 1);
        if (v10)
        {
          v11 = (v9 + *v9);
          v12 = (v11 - *v11);
          if (*v12 >= 5u)
          {
            v13 = v12[2];
            if (v13)
            {
              if (*(v11 + v13))
              {
                v14 = a3[2];
                v15 = a3[1];
                if (v14 == v15)
                {
                  v16 = 0;
                }

                else
                {
                  v16 = ((v14 - v15) << 7) - 1;
                }

                v17 = a3[5];
                v18 = v17 + a3[4];
                if (v16 == v18)
                {
                  sub_2B2A38(a3);
                  v15 = a3[1];
                  v17 = a3[5];
                  v18 = a3[4] + v17;
                }

                *(*(v15 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v18 & 0x3FF)) = *v5;
                a3[5] = v17 + 1;
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != a2);
    return a2;
  }

  return v5;
}

uint64_t sub_2C8C9C(uint64_t a1, unsigned int a2)
{
  if (a2 && (**a1 != -1 || *(*a1 + 4) != -1))
  {
    sub_7FD28(6u);
    sub_57A90(a2);
    operator new();
  }

  return 1;
}

void sub_2C8EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2C8F00(uint64_t a1, unint64_t a2)
{
  v2 = sub_2C9210(a1, a2, 0, "payment_method");
  v3 = (v2 - *v2);
  if (*v3 < 0xDu)
  {
    return 0;
  }

  if (!v3[6])
  {
    return 0;
  }

  v4 = (v2 + v3[6] + *(v2 + v3[6]));
  v5 = (v4 - *v4);
  v6 = *v5;
  if (v6 < 5)
  {
    return 0;
  }

  if (v5[2])
  {
    v7 = *(v4 + v5[2]) != 0;
    if (v6 < 7)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
    if (v6 < 7)
    {
      return v7;
    }
  }

  if (v5[3] && *(v4 + v5[3] + *(v4 + v5[3])))
  {
    operator new();
  }

  return v7;
}

void sub_2C91D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (v16)
  {
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2C9210(uint64_t a1, unint64_t a2, int a3, const char *a4)
{
  v5 = a2;
  v6 = HIDWORD(a2);
  v23 = a4;
  v7 = sub_2C939C(a1, a2, a3);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = &v7[-*v7];
  if (*v8 >= 0x31u)
  {
    v9 = *(v8 + 24);
    if (v9)
    {
      v9 = (v9 + v7 + *(v9 + v7));
      if (*v9 > v6)
      {
        return &v9[v6 + 1] + v9[v6 + 1];
      }
    }

LABEL_7:
    if (a3 != 1)
    {
      goto LABEL_8;
    }

    return 0;
  }

  v9 = 0;
  if (a3 != 1)
  {
LABEL_8:
    if (!a3)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = v5;
      v13 = exception;
      v19 = v6;
      v20 = v12;
      v18[0] = sub_7FCF0(6u);
      v18[1] = v14;
      sub_2C956C("Failed to acquire entity ", &v23, " in quad node ", " at position ", " on layer ", v18, v21);
      if ((v22 & 0x80u) == 0)
      {
        v15 = v21;
      }

      else
      {
        v15 = v21[0];
      }

      if ((v22 & 0x80u) == 0)
      {
        v16 = v22;
      }

      else
      {
        v16 = v21[1];
      }

      v17 = sub_2D390(v13, v15, v16);
    }

    return &v9[v6 + 1] + v9[v6 + 1];
  }

  return 0;
}

void sub_2C936C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2C939C(uint64_t a1, unsigned int a2, int a3)
{
  v20 = a3;
  v21 = a2;
  v19[0] = &v20;
  v19[1] = &v21;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_32;
  }

  if (*(a1 + 592) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 600) = v3;
    v4 = *(a1 + 608);
    if (!v4)
    {
      goto LABEL_32;
    }

    return v4 + *v4;
  }

  if (*(a1 + 616) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 624) = v3;
    v4 = *(a1 + 632);
    if (!v4)
    {
      goto LABEL_32;
    }

    return v4 + *v4;
  }

  if (*(a1 + 640) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 648) = v3;
    v4 = *(a1 + 656);
    if (!v4)
    {
      goto LABEL_32;
    }

    return v4 + *v4;
  }

  if (*(a1 + 664) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 672) = v3;
    v4 = *(a1 + 680);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 648);
    v8 = *(a1 + 624);
    if (*(a1 + 600) >= v3)
    {
      v9 = 0;
    }

    else
    {
      v3 = *(a1 + 600);
      v9 = 24;
    }

    v10 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 624);
    }

    v11 = 25;
    if (v10)
    {
      v11 = v9;
    }

    if (v7 >= v3)
    {
      v12 = v3;
    }

    else
    {
      v12 = *(a1 + 648);
    }

    v13 = *(a1 + 672);
    if (v7 >= v3)
    {
      v14 = v11;
    }

    else
    {
      v14 = 26;
    }

    v16 = sub_2D52A4(*a1, 6, a2, 1);
    v17 = 27;
    if (v13 >= v12)
    {
      v17 = v14;
    }

    v18 = v6 + 24 * v17;
    *v18 = v21;
    *(v18 + 8) = *(a1 + 3856);
    *(v18 + 16) = v16;
    if (v16)
    {
      return v16 + *v16;
    }
  }

LABEL_32:
  sub_2C9894(v19);
  return 0;
}

uint64_t sub_2C956C@<X0>(const char *a1@<X0>, const char **a2@<X1>, const char *a3@<X2>, const char *a4@<X4>, const char *a5@<X6>, uint64_t *a6@<X7>, _BYTE *a7@<X8>)
{
  sub_D7B0(v30);
  v14 = strlen(a1);
  v15 = sub_4A5C(&v31, a1, v14);
  v16 = *a2;
  v17 = strlen(v16);
  v18 = sub_4A5C(v15, v16, v17);
  v19 = strlen(a3);
  sub_4A5C(v18, a3, v19);
  v20 = std::ostream::operator<<();
  v21 = strlen(a4);
  sub_4A5C(v20, a4, v21);
  v22 = std::ostream::operator<<();
  v23 = strlen(a5);
  v24 = sub_4A5C(v22, a5, v23);
  sub_4A5C(v24, *a6, a6[1]);
  if ((v41 & 0x10) != 0)
  {
    v26 = v40;
    if (v40 < v37)
    {
      v40 = v37;
      v26 = v37;
    }

    v27 = __src;
    v25 = v26 - __src;
    if (v26 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v41 & 8) == 0)
    {
      v25 = 0;
      a7[23] = 0;
      goto LABEL_12;
    }

    v27 = v34;
    v25 = v35 - v34;
    if ((v35 - v34) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  a7[23] = v25;
  if (v25)
  {
    memmove(a7, v27, v25);
  }

LABEL_12:
  a7[v25] = 0;
  v31 = v28;
  if (v39 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v33);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_2C9894(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(6u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_2C9990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2C99C0(uint64_t *result, void *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = *a2;
    v12 = 8 * v7 + 8;
    memcpy(0, v5, v6);
    *v2 = 0;
    *(v2 + 8) = v12;
    *(v2 + 16) = 0;
    if (v5)
    {
      operator delete(v5);
    }

    result = v11;
    *(v2 + 8) = v12;
  }

  else
  {
    *v4 = *a2;
    *(v2 + 8) = v4 + 1;
  }

  return result;
}

uint64_t sub_2C9AE4(char *__src)
{
  if (!__src)
  {
    goto LABEL_18;
  }

  v2 = __src + 4;
  v3 = *__src;
  if (v3 >= 0x17)
  {
    operator new();
  }

  BYTE7(v17) = *__src;
  if (v3)
  {
    memcpy(&__dst, v2, v3);
    *(&__dst + v3) = 0;
    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v4 = SBYTE7(v17);
    }

    else
    {
      v4 = *(&__dst + 1);
    }

    if ((SBYTE7(v17) & 0x8000000000000000) == 0)
    {
LABEL_8:
      if (v4)
      {
        goto LABEL_9;
      }

      goto LABEL_18;
    }
  }

  else
  {
    *(&__dst + v3) = 0;
    if ((SBYTE7(v17) & 0x80u) == 0)
    {
      v4 = SBYTE7(v17);
    }

    else
    {
      v4 = *(&__dst + 1);
    }

    if ((SBYTE7(v17) & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  operator delete(__dst);
  if (v4)
  {
LABEL_9:
    v5 = *__src;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v14 = v5;
    if (v5)
    {
      memcpy(__p, v2, v5);
    }

    *(__p + v5) = 0;
    v7 = v14;
    v8 = __p[0];
    if ((v14 & 0x80u) == 0)
    {
      v9 = __p;
    }

    else
    {
      v9 = __p[0];
    }

    if ((v14 & 0x80u) != 0)
    {
      v7 = __p[1];
    }

    if (v7 >= 0x1F)
    {
      v10 = 31;
    }

    else
    {
      v10 = v7;
    }

    if (v7)
    {
      switch(v7)
      {
        case 1uLL:
          v11 = *v9;
          v12 = 1;
          break;
        case 2uLL:
          if ((v14 & 0x80u) == 0)
          {
            v8 = __p;
          }

          v11 = *v9 | (*(v8 + 1) << 8);
          v12 = 2;
          break;
        case 3uLL:
          if ((v14 & 0x80u) == 0)
          {
            v8 = __p;
          }

          v11 = *v9 | (*(v8 + 1) << 8) | (*(v8 + 2) << 16);
          v12 = 3;
          break;
        default:
          sub_852E4(v9, v10, &__dst);
          goto LABEL_44;
      }

      *&__dst = v11;
      *(&__dst + 1) = v12;
      v17 = 0u;
      v18 = 0u;
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      __dst = 0u;
    }

LABEL_44:
    v15 = sub_1232F28(&__dst, 0);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    if (sub_1232E90(&v15) == 1)
    {
      return sub_12330DC(0);
    }

    else
    {
      return v15;
    }
  }

LABEL_18:

  return sub_12330DC(0);
}

void sub_2C9D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2C9DC0(uint64_t a1, unsigned int a2)
{
  v4 = sub_2C9E38(a1, a2, 1);
  if (v4 && (v5 = &v4[-*v4], *v5 >= 5u) && *(v5 + 2))
  {
    return 1;
  }

  else
  {
    return sub_2C9E38(a1 + 3888, a2, 1) != 0;
  }
}

char *sub_2C9E38(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 2800) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2808) = v3;
    v4 = *(a1 + 2816);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2824) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2832) = v3;
    v4 = *(a1 + 2840);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2848) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2856) = v3;
    v4 = *(a1 + 2864);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2872) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2880) = v3;
    v4 = *(a1 + 2888);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2856);
    v8 = *(a1 + 2832);
    v9 = *(a1 + 2808);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2808);
    }

    v11 = 116;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2832);
    }

    v13 = 117;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 2856);
    }

    v15 = *(a1 + 2880);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 118;
    }

    v18 = sub_2D52A4(*a1, 29, a2, 1);
    v19 = 119;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_2CF670(v21);
  return 0;
}

std::string::size_type sub_2CA00C(uint64_t a1, unint64_t a2)
{
  v4 = sub_2C9E38(a1, a2, 1);
  if (v4 && (v5 = &v4[-*v4], *v5 >= 5u) && *(v5 + 2))
  {

    return sub_2CA0F4(a1, a2);
  }

  else
  {
    v7 = sub_2CA308(a1, a2);
    v8 = &v7[*&v7[-*v7 + 18]];
    LODWORD(v9) = *(v8 + 4);
    if (v9 >= 0xFFFFFFFE)
    {
      v9 = 4294967294;
    }

    else
    {
      v9 = v9;
    }

    v13 = *v8 | (v9 << 32);
    v14 = 0x7FFFFFFF;
    v10 = *(v8 + 8);
    LODWORD(v8) = *(v8 + 12);
    if (v8 >= 0xFFFFFFFE)
    {
      v8 = 4294967294;
    }

    else
    {
      v8 = v8;
    }

    v11 = v10 | (v8 << 32);
    v12 = 0x7FFFFFFF;
    sub_320C0(&v15, &v13, &v11);
    return v15;
  }
}

std::string::size_type sub_2CA0F4(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_2C9E38(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v17 = v3;
    v18 = exception;
    v25[0] = v17;
    v25[1] = v2;
    sub_2FF494(v25, &v22);
    sub_23E08("Referenced polygon ", &v22, &v23);
    sub_30F54(" does not exist.", &v23, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = &v24;
    }

    else
    {
      v19 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v21 = sub_2D390(v18, v19, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[*&v11[-*v11 + 6]];
  v13 = *(v12 + 4);
  if (v13 >= 0xFFFFFFFE)
  {
    v13 = -2;
  }

  LODWORD(v23.__r_.__value_.__l.__data_) = *v12;
  HIDWORD(v23.__r_.__value_.__r.__words[0]) = v13;
  LODWORD(v23.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  v14 = *(v12 + 8);
  LODWORD(v12) = *(v12 + 12);
  if (v12 >= 0xFFFFFFFE)
  {
    v12 = 4294967294;
  }

  else
  {
    v12 = v12;
  }

  v22.__r_.__value_.__r.__words[0] = v14 | (v12 << 32);
  LODWORD(v22.__r_.__value_.__r.__words[1]) = 0x7FFFFFFF;
  sub_320C0(&v24, &v23, &v22);
  return v24.__r_.__value_.__r.__words[0];
}

void sub_2CA288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

char *sub_2CA308(uint64_t a1, unint64_t a2)
{
  v4 = HIDWORD(a2);
  v5 = a2;
  v6 = sub_2C9E38(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 5u) || !*(v7 + 2) || (v8 = sub_2C9E38(a1, v5, 1)) == 0 || (v9 = &v8[-*v8], *v9 < 5u) || (v10 = *(v9 + 2)) == 0 || (v11 = &v8[v10 + *&v8[v10]], v12 = &v11[-*v11], *v12 < 5u) || (v13 = *(v12 + 2)) == 0 || *&v11[v13 + *&v11[v13]] <= v4 || (result = sub_2CD6EC(a1, a2)) == 0)
  {
    v15 = sub_2C9E38(a1 + 3888, v5, 1);
    if (!v15 || (v16 = &v15[-*v15], *v16 < 7u) || (v17 = *(v16 + 3)) == 0 || (v18 = &v15[v17], v19 = *v18, *&v18[v19] <= v4))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v26[0] = v4;
      v26[1] = a2;
      sub_2FF494(v26, &v24);
      sub_23E08("TNP access could not find quad node for ", &v24, &v25);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v21 = &v25;
      }

      else
      {
        v21 = v25.__r_.__value_.__r.__words[0];
      }

      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v25.__r_.__value_.__l.__size_;
      }

      v23 = sub_2D390(exception, v21, size);
    }

    return sub_2CD944(&v18[v19], a2);
  }

  return result;
}

void sub_2CA4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CA528(uint64_t a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v6 = sub_2C9E38(a1 + 3888, *a2, 1);
  if (v6 && (v7 = *v6, v8 = &v6[-v7], v9 = *&v6[-v7], v9 >= 7) && *(v8 + 3))
  {
    v10 = *&v6[*(v8 + 3) + *&v6[*(v8 + 3)]];
    if (v9 < 9)
    {
      if (*&v6[*(v8 + 3) + *&v6[*(v8 + 3)]])
      {
        goto LABEL_8;
      }
    }

    else
    {
      v11 = *(v8 + 4);
      if (v11)
      {
        v11 = *&v6[v11 + *&v6[v11]];
      }

      if (v11 + v10)
      {
LABEL_8:
        operator new();
      }
    }

    v12 = &v6[*&v6[-v7 + 6]];
    if (*&v12[*v12])
    {
      operator new();
    }

    sub_2CA8D4(a1, *a2, &__p);
    sub_2CE7AC(&v26, 0, __p, v25, (v25 - __p) >> 3);
    v14 = 126 - 2 * __clz((v27 - v26) >> 3);
    if (v27 == v26)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }

    sub_2D31D4(v26, v27, &v29, v15, 1);
    v16 = v26;
    v17 = v27;
    if (v26 != v27)
    {
      v18 = v26 - 8;
      while (v18 + 16 != v27)
      {
        v19 = *(v18 + 2);
        v18 += 8;
        LODWORD(v20) = *(v18 + 2);
        if (v19 == v20 && *(v18 + 1) == *(v18 + 3))
        {
          v22 = (v18 + 16);
          if (v18 + 16 != v27)
          {
            do
            {
              if (v20 != v22->i32[0] || *(v18 + 1) != v22->i32[1])
              {
                v20 = v22->i64[0];
                *(v18 + 1) = v22->i64[0];
                v18 += 8;
              }

              v22 = (v22 + 8);
            }

            while (v22 != v17);
            v17 = v27;
          }

          if (v18 + 8 != v17)
          {
            v17 = (v18 + 8);
            v27 = (v18 + 8);
          }

          break;
        }
      }
    }

    *a3 = v16;
    a3[1] = v17;
    a3[2] = v28;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (__p)
    {
      v25 = __p;
      operator delete(__p);
      if (v26)
      {
        v27 = v26;
        operator delete(v26);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_2CA88C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2CA8D4@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_2C9E38(a1, a2, 1);
  if (v6 && (v7 = &v6[-*v6], *v7 >= 5u) && *(v7 + 2))
  {

    return sub_2CB190(a1, a2, a3);
  }

  else
  {
    result = sub_2C9E38(a1 + 3888, a2, 1);
    if (result && (v9 = &result[-*result], *v9 >= 9u) && (v10 = *(v9 + 4)) != 0)
    {
      if (*&result[v10 + *&result[v10]])
      {
        operator new();
      }

      *a3 = 0u;
      *(a3 + 16) = 0;
    }

    else
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  return result;
}

void sub_2CAA4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2CAA68(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz((v3->i64 - v2) >> 3);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  result = sub_2D31D4(v2, v3, &v15, v5, 1);
  v8 = *a1;
  v7 = a1[1];
  if (*a1 == v7)
  {
LABEL_22:
    if (v8 != v7)
    {
      a1[1] = v8;
    }
  }

  else
  {
    v9 = v8 - 2;
    while (v9 + 4 != v7)
    {
      v10 = v9[2];
      v9 += 2;
      LODWORD(v11) = v9[2];
      if (v10 == v11 && v9[1] == v9[3])
      {
        v13 = v9 + 4;
        if (v9 + 4 != v7)
        {
          do
          {
            if (v11 != *v13 || v9[1] != v13[1])
            {
              v11 = *v13;
              *(v9 + 1) = *v13;
              v9 += 2;
            }

            v13 += 2;
          }

          while (v13 != v7);
          v7 = a1[1];
        }

        v8 = v9 + 2;
        goto LABEL_22;
      }
    }
  }

  return result;
}

void sub_2CAB6C(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_2CAF08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, void *a14, uint64_t a15)
{
  a10[1] = v16;
  a10[2] = v15;
  *a10 = __p;
  if (a14)
  {
    operator delete(a14);
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!__p)
  {
    goto LABEL_3;
  }

  a10[1] = __p;
  operator delete(__p);
  _Unwind_Resume(exception_object);
}

char *sub_2CAFAC@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  result = sub_2C9E38(a1, a2, 1);
  if (result && (v7 = &result[-*result], *v7 >= 5u) && *(v7 + 2))
  {

    return sub_2CB03C(a1, a2, a3);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

char *sub_2CB03C@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_2C9E38(a1, a2, 1);
  if (result && (v5 = &result[-*result], *v5 >= 5u) && (v6 = *(v5 + 2)) != 0)
  {
    v7 = &result[v6 + *&result[v6]];
    v8 = &v7[-*v7];
    if (*v8 >= 7u)
    {
      v9 = *(v8 + 3);
      if (v9)
      {
        if (*&v7[v9 + *&v7[v9]])
        {
          operator new();
        }
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_2CB174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_2CB190@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  result = sub_2C9E38(a1, a2, 1);
  if (result && (v5 = &result[-*result], *v5 >= 5u) && (v6 = *(v5 + 2)) != 0)
  {
    v7 = &result[v6 + *&result[v6]];
    v8 = &v7[-*v7];
    if (*v8 >= 9u)
    {
      v9 = *(v8 + 4);
      if (v9)
      {
        if (*&v7[v9 + *&v7[v9]])
        {
          operator new();
        }
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

void sub_2CB2C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2CB2E4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2CA308(a1, a2);
  v3 = &v2[-*v2];
  if (*v3 < 7u)
  {
    return 0;
  }

  v4 = *(v3 + 3);
  if (v4)
  {
    LODWORD(v4) = v2[v4];
  }

  return v4 == 4 || v4 == 9;
}

char *sub_2CB340@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2CA308(a1, a2);
  v5 = &result[-*result];
  if (*v5 >= 9u)
  {
    v6 = *(v5 + 4);
    if (v6)
    {
      if (*&result[v6 + *&result[v6]])
      {
        operator new();
      }
    }
  }

  *a3 = 0u;
  *(a3 + 16) = 0;
  return result;
}

void sub_2CB428(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2CB444(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(*a4 + 24 * a3 + 8) - *(*a4 + 24 * a3) < 9uLL)
  {
    return 0;
  }

  v7 = (*a4 + 24 * a2);
  __p = 0;
  __dst = 0;
  v20 = 0;
  v8 = v7[1];
  if (v8 != *v7)
  {
    if (((v8 - *v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_2D31D4(0, 0, &v21, 0, 1);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  sub_2CEBBC(*(*a4 + 24 * a3), *(*a4 + 24 * a3 + 8), __p, __dst, &v15, &v21);
  v9 = v15;
  v10 = v16 - v15;
  v11 = *a4 + 24 * a3;
  v13 = *v11;
  v12 = *(v11 + 8);
  if (v11 != &v15)
  {
    sub_31F64(v11, v15, v16, v10 >> 3);
    v9 = v15;
  }

  v4 = v10 < (v12 - v13);
  if (v9)
  {
    v16 = v9;
    operator delete(v9);
  }

  if (__p)
  {
    __dst = __p;
    operator delete(__p);
  }

  return v4;
}

void sub_2CB700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_2CB760(uint64_t a1, unint64_t a2)
{
  sub_2CB7A4(a1, a2, v5);
  v2 = v5[0];
  v3 = v5[1];
  if (v5[0])
  {
    operator delete(v5[0]);
  }

  return v2 != v3;
}

char *sub_2CB7A4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2CA308(a1, a2);
  v5 = &result[-*result];
  if (*v5 >= 0xBu && *(v5 + 5) && *&result[*(v5 + 5) + *&result[*(v5 + 5)]])
  {
    operator new();
  }

  *a3 = 0u;
  *(a3 + 16) = 0;
  return result;
}

void sub_2CB898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2CB8B4(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2C9E38(a1, a2, 1);
  if (v6 && (v7 = &v6[-*v6], *v7 >= 5u) && *(v7 + 2))
  {

    sub_2CB974(a1, a2, a3);
  }

  else
  {
    v8 = sub_2CA308(a1, a2);
    v9 = &v8[*&v8[-*v8 + 16]];
    v10 = &v9[*v9];

    sub_2CBB58(v10, a3);
  }
}

void sub_2CB974(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v5 = HIDWORD(a2);
  v6 = sub_2C9E38(a1, a2, 1);
  if (!v6 || (v7 = &v6[-*v6], *v7 < 5u) || (v8 = *(v7 + 2)) == 0 || (v9 = &v6[v8 + *&v6[v8]], v10 = &v9[-*v9], *v10 < 5u) || (v11 = *(v10 + 2)) == 0 || (v12 = &v9[v11 + *&v9[v11]], *v12 <= v5))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v23[0] = v5;
    v23[1] = v3;
    sub_2FF494(v23, &v20);
    sub_23E08("Referenced polygon ", &v20, &v21);
    sub_30F54(" does not exist.", &v21, &v22);
    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v17 = &v22;
    }

    else
    {
      v17 = v22.__r_.__value_.__r.__words[0];
    }

    if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v22.__r_.__value_.__l.__size_;
    }

    v19 = sub_2D390(exception, v17, size);
  }

  v13 = &v12[4 * v5 + 4 + *&v12[4 * v5 + 4]];
  v14 = &v13[*&v13[-*v13 + 4]];
  v15 = &v14[*v14];

  sub_2CBB58(v15, a3);
}

void sub_2CBAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void sub_2CBB58(int *a1@<X0>, void *a2@<X8>)
{
  v2 = (a1 - *a1);
  if (*v2 >= 5u && (v3 = v2[2]) != 0)
  {
    v4 = a2;
    v5 = a1 + v3;
    v6 = *(a1 + v3);
    v18 = 0;
    v19 = 0uLL;
    sub_2CEE78(&v18, *(a1 + v3 + v6));
    sub_2CEFF4(&v5[v6], &v18);
    v7 = v18;
    v8 = v19;
    a2 = v4;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v9 = v8;
  sub_53358(a2, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
  if (v7)
  {
    if (v9 != v7)
    {
      v10 = v9;
      do
      {
        v13 = *(v10 - 3);
        v10 -= 3;
        v12 = v13;
        if (v13)
        {
          v14 = *(v9 - 2);
          v11 = v12;
          if (v14 != v12)
          {
            v15 = *(v9 - 2);
            do
            {
              v17 = *(v15 - 3);
              v15 -= 24;
              v16 = v17;
              if (v17)
              {
                *(v14 - 2) = v16;
                operator delete(v16);
              }

              v14 = v15;
            }

            while (v15 != v12);
            v11 = *v10;
          }

          *(v9 - 2) = v12;
          operator delete(v11);
        }

        v9 = v10;
      }

      while (v10 != v7);
    }

    operator delete(v7);
  }
}

void sub_2CBC9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_2CBCB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

void sub_2CBCC4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2C9E38(a1, a2, 1);
  if (v6 && (v7 = &v6[-*v6], *v7 >= 5u) && *(v7 + 2))
  {
    sub_2CB974(a1, a2, a3);
  }

  else
  {
    v8 = sub_2CA308(a1, a2);
    v9 = &v8[*&v8[-*v8 + 16]];
    sub_2CBB58(&v9[*v9], a3);
  }

  sub_2CB7A4(a1, a2, &__p);
  v10 = *a3;
  v11 = a3[1];
  v12 = __p;
  if (*a3 != v11)
  {
    v13 = 0;
    do
    {
      v14 = *v10;
      v15 = v10[1];
      while (v14 != v15)
      {
        v16 = *v14;
        v17 = v14[1];
        if (*v14 != v17)
        {
          do
          {
            v18 = v12[v13++];
            *(v16 + 8) = v18;
            v16 += 12;
          }

          while (v16 != v17);
        }

        v14 += 3;
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  if (v12)
  {

    operator delete(v12);
  }
}

char *sub_2CBE14(uint64_t a1, unsigned int a2)
{
  v4 = sub_2C9E38(a1, a2, 1);
  if (v4)
  {
    v5 = &v4[-*v4];
    if (*v5 >= 5u)
    {
      if (*(v5 + 2))
      {
        sub_2CAB6C(&v9);
      }
    }
  }

  result = sub_2C9E38(a1 + 3888, a2, 1);
  if (result)
  {
    v7 = &result[-*result];
    if (*v7 >= 7u && (v8 = *(v7 + 3)) != 0)
    {
      return *&result[v8 + *&result[v8]];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

double sub_2CBF08@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = sub_2CA308(a1, a2);
  v5 = &v4[-*v4];
  if (*v5 >= 0xFu && (v6 = *(v5 + 7), *(v5 + 7)))
  {
    v7 = v4;
    v8 = *&v4[v6];
    v9 = &v4[v6 + v8];
    v20 = 0uLL;
    v21 = 0;
    sub_2CF2A8(&v20, *v9);
    v10 = *v9;
    if (v10)
    {
      v11 = 0;
      v12 = 4 * v10;
      v13 = &v7[v6 + v8];
      do
      {
        v14 = *&v9[v11 + 4];
        v15 = &v13[v11 + v14 - *&v9[v11 + 4 + v14]];
        if (*(v15 + 2) >= 5u && (v16 = *(v15 + 4)) != 0)
        {
          v17 = &v13[v11 + 4 + v14 + v16 + *&v13[v11 + 4 + v14 + v16]];
        }

        else
        {
          v17 = 0;
        }

        sub_2CF504(v17, __p);
        v18 = *(&v20 + 1);
        if (*(&v20 + 1) < v21)
        {
          **(&v20 + 1) = 0;
          *(v18 + 8) = 0;
          *(v18 + 16) = 0;
          *v18 = *__p;
          *(v18 + 16) = v23;
          *(&v20 + 1) = v18 + 24;
        }

        else
        {
          *(&v20 + 1) = sub_52C28(&v20, __p);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }
        }

        v11 += 4;
      }

      while (v12 != v11);
    }
  }

  else
  {
    v20 = 0uLL;
    v21 = 0;
  }

  result = *&v20;
  *a3 = v20;
  *(a3 + 16) = v21;
  return result;
}

void sub_2CC0C0(uint64_t *a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, void **a7@<X8>)
{
  v127 = a5;
  sub_58168(*a2 >> 18, a2[1] >> 18);
  v11 = sub_2C9E38((a1 + 486), v10 | 0x10000000u, 1);
  if (!v11 || (v12 = &v11[-*v11], *v12 < 7u) || !*(v12 + 3))
  {
    v132 = *&a1;
    v133 = a2;
    v134 = a3;
    v135 = a4;
    v98 = 0x7FFFFFFFFFFFFFFELL;
    if (a5 < 0x7FFFFFFFFFFFFFFELL)
    {
      v98 = a5;
    }

    v136 = v98;
    v137 = a6;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v147 = 0;
    v148 = 0;
    v146 = 0;
    v138 = 0u;
    v139 = 0u;
    if (*a2 == -1 && a2[1] == -1)
    {
      *a7 = 0;
      a7[1] = 0;
      a7[2] = 0;
    }

    else
    {
      sub_2D07E8(&v132);
      sub_2D1498(&v132, a7);
      if (v146)
      {
        v147 = v146;
        operator delete(v146);
      }
    }

    if (v143)
    {
      v144 = v143;
      operator delete(v143);
    }

    if (v140)
    {
      v141 = v140;
      operator delete(v140);
    }

    if (*(&v138 + 1))
    {
      *&v139 = *(&v138 + 1);
      operator delete(*(&v138 + 1));
    }

    return;
  }

  *a7 = 0;
  a7[1] = 0;
  a7[2] = 0;
  v126[0] = sub_3514C(a2, &v127);
  v126[1] = v13;
  v14 = sub_3425C(v126);
  v15 = sub_3427C(v126);
  sub_58168(v14 >> 18, v14 >> 50);
  LODWORD(v14) = v16;
  sub_58168(v15 >> 18, v15 >> 50);
  LODWORD(v15) = v17;
  v104 = v14 | 0x10000000;
  v18 = sub_57A90(v14 | 0x10000000);
  v105 = sub_581D8((v14 | 0x10000000) & ~(-1 << (v18 & 0xFE)));
  v19 = v15 | 0x10000000;
  v20 = sub_57A90(v19);
  v21 = sub_581D8(v19 & ~(-1 << (v20 & 0xFE)));
  if (v105 <= v21 + 1)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v105;
  }

  v103 = v23;
  v24 = 0;
  if (v105 >= v21 + 1)
  {
    v99 = 0;
    goto LABEL_143;
  }

  v109 = a1 + 2;
  v110 = a7;
  v118 = a1 + 350;
  v115 = a1 + 353;
  v112 = a1 + 359;
  v113 = a1 + 356;
  v106 = v19;
  while (2)
  {
    v25 = sub_57A90(v104);
    v26 = sub_581D8((v104 & ~(-1 << (v25 & 0xFE))) >> 1);
    v27 = sub_57A90(v19);
    v28 = sub_581D8((v19 & ~(-1 << (v27 & 0xFE))) >> 1);
    if (v26 <= v28 + 1)
    {
      v29 = v28 + 1;
    }

    else
    {
      v29 = v26;
    }

    v108 = v29;
    if (v26 >= v28 + 1)
    {
      goto LABEL_9;
    }

    v30 = v105;
    if (v105 >= 0x3FFF)
    {
      v30 = 0x3FFF;
    }

    v107 = v30;
    while (2)
    {
      if (v26 >= 0x3FFF)
      {
        v31 = 0x3FFF;
      }

      else
      {
        v31 = v26;
      }

      sub_58168(v107, v31);
      v111 = v26;
      v32 = a7;
      v125 = v33 | 0x10000000;
      sub_2CA528(a1, &v125, &v123);
      v34 = v123;
      v119 = v124;
      if (v123 == v124)
      {
        if (v123)
        {
          goto LABEL_126;
        }

        goto LABEL_17;
      }

      do
      {
        v36 = *v34;
        v122 = *v34;
        v37 = a1[482] + 1;
        a1[482] = v37;
        if (*a1)
        {
          v38 = a1 + 350;
          if (*v118 == v36 || (v38 = a1 + 353, *v115 == v36) || (v38 = a1 + 356, *v113 == v36) || (v38 = a1 + 359, *v112 == v36))
          {
            ++a1[483];
            v38[1] = v37;
            v39 = v38[2];
            if (!v39)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v43 = a1[357];
            v44 = a1[354];
            v45 = a1[351];
            v46 = a1[360];
            v39 = sub_2D52A4(*a1, 29, v36, 1);
            if (v45 >= v37)
            {
              v47 = v37;
            }

            else
            {
              v47 = v45;
            }

            v48 = 116;
            if (v45 >= v37)
            {
              v48 = 0;
            }

            if (v44 < v47)
            {
              v47 = v44;
              v48 = 117;
            }

            if (v43 < v47)
            {
              v48 = 118;
              v47 = v43;
            }

            v49 = v46 >= v47;
            v50 = 119;
            if (v49)
            {
              v50 = v48;
            }

            v51 = &v109[3 * v50];
            *v51 = v36;
            v51[1] = a1[482];
            v51[2] = v39;
            if (!v39)
            {
              goto LABEL_50;
            }
          }

          v40 = (v39 + *v39 - *(v39 + *v39));
          if (*v40 >= 5u && v40[2])
          {
            v41 = COERCE_DOUBLE(sub_2CA0F4(a1, v36));
            goto LABEL_57;
          }
        }

LABEL_50:
        v52 = sub_2CA308(a1, v36);
        v53 = &v52[*&v52[-*v52 + 18]];
        LODWORD(v54) = *(v53 + 4);
        if (v54 >= 0xFFFFFFFE)
        {
          v54 = 4294967294;
        }

        else
        {
          v54 = v54;
        }

        v130 = *v53 | (v54 << 32);
        v131 = 0x7FFFFFFF;
        v55 = *(v53 + 8);
        LODWORD(v53) = *(v53 + 12);
        if (v53 >= 0xFFFFFFFE)
        {
          v53 = 4294967294;
        }

        else
        {
          v53 = v53;
        }

        v128 = v55 | (v53 << 32);
        v129 = 0x7FFFFFFF;
        sub_320C0(&v132, &v130, &v128);
        v41 = v132;
        v42 = v133;
LABEL_57:
        __p = *&v41;
        v121 = v42;
        if (!sub_32ACC(&__p, v126))
        {
          goto LABEL_27;
        }

        v56 = v122;
        v57 = a1[482] + 1;
        a1[482] = v57;
        if (!*a1)
        {
          goto LABEL_80;
        }

        v58 = a1 + 350;
        if (*v118 == v56 || (v58 = a1 + 353, *v115 == v56) || (v58 = a1 + 356, *v113 == v56) || (v58 = a1 + 359, *v112 == v56))
        {
          ++a1[483];
          v58[1] = v57;
          v59 = v58[2];
          if (!v59)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v63 = v56;
          v64 = a1[357];
          v65 = a1[354];
          v66 = a1[351];
          v67 = a1[360];
          v59 = sub_2D52A4(*a1, 29, v56, 1);
          if (v66 >= v57)
          {
            v68 = v57;
          }

          else
          {
            v68 = v66;
          }

          v69 = 116;
          if (v66 >= v57)
          {
            v69 = 0;
          }

          if (v65 < v68)
          {
            v68 = v65;
            v69 = 117;
          }

          if (v64 < v68)
          {
            v69 = 118;
            v68 = v64;
          }

          v49 = v67 >= v68;
          v70 = 119;
          if (v49)
          {
            v70 = v69;
          }

          v71 = &v109[3 * v70];
          v56 = v63;
          *v71 = v63;
          v71[1] = a1[482];
          v71[2] = v59;
          if (!v59)
          {
            goto LABEL_80;
          }
        }

        v60 = (v59 + *v59 - *(v59 + *v59));
        if (*v60 >= 5u && v60[2])
        {
          sub_2CB974(a1, v56, &__p);
          goto LABEL_81;
        }

LABEL_80:
        v72 = sub_2CA308(a1, v56);
        v73 = &v72[*&v72[-*v72 + 16]];
        sub_2CBB58(&v73[*v73], &__p);
LABEL_81:
        sub_2CCAE0(&__p, a2, a6, &v132, v61, v62);
        v22.n128_f64[0] = v132 * 100.0;
        v74 = v32;
        if (v132 * 100.0 >= 0.0)
        {
          v75 = v132 * 100.0;
          if (v22.n128_f64[0] >= 4.50359963e15)
          {
            goto LABEL_87;
          }

          v76 = (v22.n128_f64[0] + v22.n128_f64[0]) + 1;
        }

        else
        {
          v75 = v132 * 100.0;
          if (v22.n128_f64[0] <= -4.50359963e15)
          {
            goto LABEL_87;
          }

          v76 = (v22.n128_f64[0] + v22.n128_f64[0]) - 1 + (((v22.n128_f64[0] + v22.n128_f64[0]) - 1) >> 63);
        }

        v75 = (v76 >> 1);
LABEL_87:
        if (v75 >= 9.22337204e18)
        {
          v78 = 0x7FFFFFFFFFFFFFFELL;
          if (v127 == 0x7FFFFFFFFFFFFFFFLL)
          {
            goto LABEL_97;
          }

          goto LABEL_113;
        }

        if (v22.n128_f64[0] >= 0.0)
        {
          if (v22.n128_f64[0] >= 4.50359963e15)
          {
            goto LABEL_96;
          }

          v77 = (v22.n128_f64[0] + v22.n128_f64[0]) + 1;
        }

        else
        {
          if (v22.n128_f64[0] <= -4.50359963e15)
          {
            goto LABEL_96;
          }

          v77 = (v22.n128_f64[0] + v22.n128_f64[0]) - 1 + (((v22.n128_f64[0] + v22.n128_f64[0]) - 1) >> 63);
        }

        v22.n128_f64[0] = (v77 >> 1);
LABEL_96:
        v78 = v22.n128_f64[0];
        if (v22.n128_f64[0] < v127)
        {
LABEL_97:
          v79 = *(a3 + 24);
          if (!v79)
          {
            sub_2B7420();
          }

          if ((*(*v79 + 48))(v79, &v122))
          {
            v80 = v32[2];
            if (v24 >= v80)
            {
              v82 = *v32;
              v83 = v24 - *v32;
              v84 = (v83 >> 4) + 1;
              if (v84 >> 60)
              {
                sub_1794();
              }

              v85 = v80 - v82;
              if (v85 >> 3 > v84)
              {
                v84 = v85 >> 3;
              }

              if (v85 >= 0x7FFFFFFFFFFFFFF0)
              {
                v86 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v86 = v84;
              }

              if (v86)
              {
                if (!(v86 >> 60))
                {
                  operator new();
                }

                sub_1808();
              }

              v87 = (16 * (v83 >> 4));
              v87->n128_u64[0] = v122;
              v87->n128_u64[1] = v78;
              v81 = v87 + 1;
              memcpy(0, v82, v83);
              v74 = v110;
              *v110 = 0;
              v110[2] = 0;
              if (v82)
              {
                operator delete(v82);
              }
            }

            else
            {
              v24->n128_u64[0] = v122;
              v24->n128_u64[1] = v78;
              v81 = v24 + 1;
            }

            v24 = v81;
            v74[1] = v81;
          }
        }

LABEL_113:
        v88 = __p;
        if (__p)
        {
          v89 = v121;
          v35 = __p;
          if (v121 != __p)
          {
            v90 = v121;
            do
            {
              v93 = *(v90 - 3);
              v90 -= 3;
              v92 = v93;
              if (v93)
              {
                v94 = *(v89 - 2);
                v91 = v92;
                if (v94 != v92)
                {
                  v95 = *(v89 - 2);
                  do
                  {
                    v97 = *(v95 - 3);
                    v95 -= 24;
                    v96 = v97;
                    if (v97)
                    {
                      *(v94 - 2) = v96;
                      operator delete(v96);
                    }

                    v94 = v95;
                  }

                  while (v95 != v92);
                  v91 = *v90;
                }

                *(v89 - 2) = v92;
                operator delete(v91);
              }

              v89 = v90;
            }

            while (v90 != v88);
            v35 = __p;
          }

          v121 = v88;
          operator delete(v35);
        }

        v32 = v74;
LABEL_27:
        ++v34;
      }

      while (v34 != v119);
      v34 = v123;
      a7 = v32;
      if (v123)
      {
LABEL_126:
        operator delete(v34);
      }

LABEL_17:
      v26 = v111 + 1;
      v19 = v106;
      if (v111 + 1 != v108)
      {
        continue;
      }

      break;
    }

LABEL_9:
    if (++v105 != v103)
    {
      continue;
    }

    break;
  }

  v99 = *a7;
LABEL_143:
  v100 = 126 - 2 * __clz(v24 - v99);
  if (v24 == v99)
  {
    v101 = 0;
  }

  else
  {
    v101 = v100;
  }

  sub_2CF79C(v99, v24, v101, 1, v22);
  if (a4 < (a7[1] - *a7) >> 4)
  {
    a7[1] = *a7 + 16 * a4;
  }
}

void sub_2CCA30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  v42 = *v40;
  if (!*v40)
  {
    _Unwind_Resume(exception_object);
  }

  *(v40 + 8) = v42;
  operator delete(v42);
  _Unwind_Resume(exception_object);
}

double sub_2CCAE0@<D0>(void *a1@<X0>, unsigned int *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>, double a5@<D2>, unint64_t a6@<D3>)
{
  v6 = a1[1] - *a1;
  if (v6)
  {
    v8 = 0;
    v82 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 3);
    v9 = -1;
    v10 = -1;
    v11 = 1.0;
    v12 = 0x7FFFFFFF;
    v89 = 1.79769313e308;
    v98 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v99 = vdupq_n_s64(0x4076800000000000uLL);
    v96 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v97 = vdupq_n_s64(0xC066800000000000);
    v13 = -1;
    while (1)
    {
      v91 = (*a1 + 24 * v8);
      v18 = v91[1];
      v88 = v9;
      v87 = v10;
      v86 = v8;
      v84 = v13;
      v85 = v12;
      if (*v91 != v18)
      {
        break;
      }

      v14 = 0x7FFFFFFF;
      v15 = -1;
      v95 = 1.79769313e308;
      v16 = -1;
LABEL_4:
      v17 = v89;
      v9 = v88;
      if (v95 < v89)
      {
        v9 = v86;
      }

      v13 = v84;
      v12 = v85;
      if (v95 < v89)
      {
        v13 = v15;
      }

      v10 = v87;
      if (v95 < v89)
      {
        v10 = v16;
        v12 = v14;
        v17 = v95;
      }

      v89 = v17;
      v8 = v86 + 1;
      if (v86 + 1 == v82)
      {
        goto LABEL_62;
      }
    }

    v19 = 0;
    v15 = *a2;
    v16 = a2[1];
    v20 = v16;
    v21 = *v91;
    do
    {
      v22 = v21[1];
      v23 = (*v21 + 12);
      if (*v21 != v22 && v23 != v22)
      {
        do
        {
          v25 = *(v23 - 2);
          v26 = v23[1];
          if (v25 < v16 != v26 < v16)
          {
            LODWORD(a5) = *v23;
            LODWORD(a6) = *(v23 - 3);
            *&a6 = a6;
            a5 = (v20 - v25) / (v26 - v25) * (*&a5 - *&a6) + *&a6;
            if (a5 < v15)
            {
              v19 ^= 1u;
            }
          }

          v23 += 3;
        }

        while (v23 != v22);
      }

      v21 += 3;
    }

    while (v21 != v18);
    if (v19)
    {
      v14 = a2[2];
      v95 = 0.0;
      goto LABEL_4;
    }

    v27 = 0;
    v90 = 0xAAAAAAAAAAAAAAABLL * ((v18 - *v91) >> 3);
    v14 = 0x7FFFFFFF;
    v95 = 1.79769313e308;
    LODWORD(v28) = *a2;
    LODWORD(v29) = a2[1];
    v30 = v29;
    v31 = *a2;
    v16 = -1;
    v15 = -1;
    while (1)
    {
      v93 = v14;
      v94 = v15;
      v92 = v27;
      v47 = (*v91 + 24 * v27);
      v48 = *v47;
      v49 = v47[1] - *v47;
      if (v49 == 12)
      {
        v102 = v48[1];
        v32 = exp(3.14159265 - v102 * 6.28318531 / 4294967300.0);
        v33 = atan((v32 - v11 / v32) * 0.5) * 57.2957795 * 0.0174532925;
        v34 = *v48;
        v35 = exp(3.14159265 - v29 * 6.28318531 / 4294967300.0);
        v101 = v34;
        v36 = atan((v35 - v11 / v35) * 0.5) * 57.2957795 * 0.0174532925;
        v37.i64[0] = v34;
        v37.i64[1] = v28;
        v38 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v37), v99), v98), v97), v96);
        v104 = vsubq_f64(v38, vdupq_laneq_s64(v38, 1)).f64[0];
        v39 = sin((v33 - v36) * 0.5);
        v40 = v39 * v39;
        v41 = cos(v33);
        v42 = v41 * cos(v36);
        v43 = sin(0.5 * v104);
        v44 = atan2(sqrt(v43 * v43 * v42 + v40), sqrt(v11 - (v43 * v43 * v42 + v40)));
        v45 = (v44 + v44) * 6372797.56;
        v100 = v48[2];
        v30 = v29;
        v31 = v28;
      }

      else
      {
        v50 = -1 - 0x5555555555555555 * (v49 >> 2);
        if (v50)
        {
          v51 = 0;
          v100 = 0x7FFFFFFF;
          v45 = 1.79769313e308;
          LODWORD(v29) = v30;
          LODWORD(v28) = v31;
          v101 = -1;
          v102 = -1;
          while (1)
          {
            v52 = &(*v47)[v51];
            LODWORD(v20) = *v52;
            LODWORD(a5) = v52[1];
            v53 = *&v20;
            v54 = *&a5;
            LODWORD(a6) = v52[4];
            v55 = v52[3] - v53;
            v56 = a6 - *&a5;
            v57 = v55 * v55 + v56 * v56;
            if (v57 == 0.0)
            {
              goto LABEL_48;
            }

            v58 = -v57;
            if (v57 > 0.0)
            {
              v58 = v55 * v55 + v56 * v56;
            }

            if (v58 < 2.22044605e-16)
            {
LABEL_48:
              v59 = 0.0;
            }

            else
            {
              v59 = (v55 * (v28 - v53) + v56 * (v29 - v54)) / v57;
            }

            if (v59 <= v11)
            {
              v60 = v59;
            }

            else
            {
              v60 = v11;
            }

            v46 = v59 < 0.0;
            v61 = 0.0;
            if (!v46)
            {
              v61 = v60;
            }

            v62 = sub_6EFC0(v52, v52 + 3, v61);
            v63 = v62;
            v65 = v64;
            v66 = HIDWORD(v62);
            if (a3)
            {
              v28 = *a2;
              v29 = a2[1];
              v20 = sqrt(((v28 - v62) * (v28 - v62) + (v29 - v66) * (v29 - v66))) / 100.0;
              if (v20 < v45)
              {
                goto LABEL_58;
              }
            }

            else
            {
              LODWORD(v29) = a2[1];
              v67 = exp(3.14159265 - v29 * 6.28318531 / 4294967300.0);
              v105 = v45;
              v68 = atan((v67 - v11 / v67) * 0.5) * 57.2957795 * 0.0174532925;
              LODWORD(v28) = *a2;
              v69 = exp(3.14159265 - v66 * 6.28318531 / 4294967300.0);
              v70 = atan((v69 - 1.0 / v69) * 0.5) * 57.2957795 * 0.0174532925;
              v11 = 1.0;
              v71.i64[0] = v28;
              v71.i64[1] = v63;
              v72 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v71), v99), v98), v97), v96);
              v103 = vsubq_f64(v72, vdupq_laneq_s64(v72, 1)).f64[0];
              v73 = sin((v68 - v70) * 0.5);
              v74 = v73 * v73;
              v75 = cos(v68);
              v76 = cos(v70) * v75;
              v77 = sin(0.5 * v103);
              v78 = v77 * v77 * v76;
              v45 = v105;
              v79 = atan2(sqrt(v78 + v74), sqrt(1.0 - (v78 + v74)));
              v20 = (v79 + v79) * 6372797.56;
              if (v20 < v105)
              {
LABEL_58:
                v101 = v63;
                v102 = v66;
                v100 = v65;
                v45 = v20;
              }
            }

            v51 += 3;
            v30 = v29;
            v31 = v28;
            if (!--v50)
            {
              goto LABEL_28;
            }
          }
        }

        v100 = 0x7FFFFFFF;
        v101 = -1;
        v45 = 1.79769313e308;
        v102 = -1;
      }

LABEL_28:
      v20 = v95;
      v46 = v45 < v95;
      if (v45 < v95)
      {
        v20 = v45;
      }

      v95 = v20;
      v14 = v93;
      v15 = v94;
      if (v46)
      {
        v15 = v101;
      }

      if (v46)
      {
        v16 = v102;
      }

      if (v46)
      {
        v14 = v100;
      }

      v27 = v92 + 1;
      if (v92 + 1 == v90)
      {
        goto LABEL_4;
      }
    }
  }

  v12 = 0x7FFFFFFF;
  v13 = -1;
  v9 = -1;
  v89 = 1.79769313e308;
  v10 = -1;
LABEL_62:
  result = v89;
  *a4 = v89;
  *(a4 + 8) = v13;
  *(a4 + 12) = v10;
  *(a4 + 16) = v12;
  *(a4 + 24) = v9;
  return result;
}

void sub_2CD1E0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
  memset(__p, 0, sizeof(__p));
  sub_2D2BA0(a4, v8);
  v9 = a3[1] - *a3;
  if (v9)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
    do
    {
      sub_2CD3D4(a1, (*a3 + v11), a2, (*a4 + v10));
      v13 = (*a4 + v10);
      v14 = *v13;
      v15 = v13[1];
      v16 = 126 - 2 * __clz((v15->i64 - *v13) >> 3);
      if (v15 == v14)
      {
        v17 = 0;
      }

      else
      {
        v17 = v16;
      }

      sub_2D31D4(v14, v15, __p, v17, 1);
      v11 += 12;
      v10 += 24;
      --v12;
    }

    while (v12);
  }

  v18 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
  if (v18 >= 2)
  {
    do
    {
      v20 = -2;
      v21 = 1;
      while (!sub_2CB444(a1, v21 - 1, v21, a4))
      {
        v22 = v20 - 0x5555555555555555 * ((a4[1] - *a4) >> 3);
        if (sub_2CB444(a1, v22 + 1, v22, a4))
        {
          break;
        }

        ++v21;
        --v20;
        if (v18 == v21)
        {
          return;
        }
      }

      v19 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
      if (v19 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
      }
    }

    while (v19 >= 2);
  }
}

void sub_2CD390(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2CD3D4(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t *a4)
{
  a4[1] = *a4;
  sub_58168(*a2 >> 17, a2[1] >> 17);
  v9 = v8 | 0x40000000;
  do
  {
    v10 = v9;
    v11 = sub_2C9E38(a1, v9, 1);
    if (!v11 || (v12 = &v11[-*v11], *v12 < 5u) || !*(v12 + 2))
    {
      if (!sub_2C9E38(a1 + 3888, v10, 1))
      {
        goto LABEL_3;
      }
    }

    v13 = sub_2C9E38(a1, v10, 1);
    if (v13 && (v14 = &v13[-*v13], *v14 >= 5u) && *(v14 + 2))
    {
      sub_2CB03C(a1, v10, &__p);
    }

    else
    {
      __p = 0;
      v32 = 0;
      v33 = 0;
    }

    sub_2D2D3C(&__p, a4, a3);
    v28 = v10;
    sub_2CA8D4(a1, v10, &v29);
    v15 = v29;
    v16 = v30;
    if (v29 != v30)
    {
      do
      {
        v34 = *v15;
        v18 = *(a3 + 24);
        if (!v18)
        {
          sub_2B7420();
        }

        if (((*(*v18 + 48))(v18, &v34) & 1) != 0 && sub_2D2F88(a1, &v34, a2))
        {
          v20 = a4[1];
          v19 = a4[2];
          if (v20 < v19)
          {
            *v20 = *v15;
            v17 = (v20 + 1);
          }

          else
          {
            v21 = *a4;
            v22 = v20 - *a4;
            v23 = v22 >> 3;
            v24 = (v22 >> 3) + 1;
            if (v24 >> 61)
            {
              sub_1794();
            }

            v25 = v19 - v21;
            if (v25 >> 2 > v24)
            {
              v24 = v25 >> 2;
            }

            if (v25 >= 0x7FFFFFFFFFFFFFF8)
            {
              v26 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v26 = v24;
            }

            if (v26)
            {
              if (!(v26 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            *(8 * v23) = *v15;
            v17 = 8 * v23 + 8;
            memcpy(0, v21, v22);
            *a4 = 0;
            a4[1] = v17;
            a4[2] = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          a4[1] = v17;
        }

        ++v15;
      }

      while (v15 != v16);
      v15 = v29;
      if (!v29)
      {
        goto LABEL_16;
      }

LABEL_15:
      v30 = v15;
      operator delete(v15);
      goto LABEL_16;
    }

    if (v29)
    {
      goto LABEL_15;
    }

LABEL_16:
    if (__p)
    {
      v32 = __p;
      operator delete(__p);
    }

    v10 = v28;
LABEL_3:
    v9 = v10 >> 2;
  }

  while (v10 >= 4);
  return sub_2CAA68(a4);
}

void sub_2CD68C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

char *sub_2CD6EC(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v3 = HIDWORD(a2);
  v4 = sub_2C9E38(a1, a2, 1);
  if (!v4 || (v5 = &v4[-*v4], *v5 < 5u) || (v6 = *(v5 + 2)) == 0 || (v7 = &v4[v6 + *&v4[v6]], v8 = &v7[-*v7], *v8 < 5u) || (v9 = *(v8 + 2)) == 0 || (v10 = &v7[v9 + *&v7[v9]], *v10 <= v3))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v21 = v3;
    v22 = exception;
    v28[0] = v21;
    v28[1] = v2;
    sub_2FF494(v28, &v26);
    sub_23E08("Referenced polygon ", &v26, &v27);
    sub_30F54(" does not exist.", &v27, &v29);
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = &v29;
    }

    else
    {
      v23 = v29.__r_.__value_.__r.__words[0];
    }

    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v29.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v29.__r_.__value_.__l.__size_;
    }

    v25 = sub_2D390(v22, v23, size);
  }

  v11 = &v10[4 * v3 + 4 + *&v10[4 * v3 + 4]];
  v12 = &v11[-*v11];
  if (*v12 >= 9u && (v13 = *(v12 + 4)) != 0 && (v14 = &v11[v13 + *&v11[v13]], v17 = *v14, v16 = v14 + 1, v15 = v17, v29.__r_.__value_.__r.__words[0] = v16, v29.__r_.__value_.__l.__size_ = v17, v29.__r_.__value_.__r.__words[2] = 0xF424000000040, v30 = 257, v32 = 0, v33 = 0, v31 = 0, v17 >= 0xC) && (v18 = *v16, v18 >= 1) && v15 - 1 >= v18 && sub_2CDA9C((v16 + v18), &v29))
  {
    return v16 + *v16;
  }

  else
  {
    return 0;
  }
}

void sub_2CD8C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2CD944(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v12[0] = v2;
    v12[1] = v4;
    sub_2FF494(v12, &v9);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v9, &v10);
    sub_30F54(" is out of range", &v10, &v11);
    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v11;
    }

    else
    {
      v6 = v11.__r_.__value_.__r.__words[0];
    }

    if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v11.__r_.__value_.__l.__size_;
    }

    v8 = sub_2D390(exception, v6, size);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_2CDA1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2CDA9C(int *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v4 = *(a2 + 8);
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = vadd_s32(*(a2 + 40), 0x100000001);
  *(a2 + 40) = v8;
  v9 = vcgt_u32(v8, *(a2 + 16));
  if ((v9.i32[0] | v9.i32[1]))
  {
    return 0;
  }

  v11 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v11)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((*(a2 + 24) & 1) != 0 || v4 - 2 < v11)
  {
    return 0;
  }

LABEL_15:
  v12 = *(v2 + v11);
  if (v12)
  {
    return 0;
  }

  if (v4 > v12 && v4 - v12 >= v11)
  {
    v15 = (a1 - *a1);
    v16 = *v15;
    if (v16 >= 5)
    {
      v17 = v15[2];
      if (v15[2])
      {
        v18 = &v3[v17];
        if (&v3[v17] & 7) != 0 && (*(a2 + 24))
        {
          return 0;
        }

        v13 = 0;
        if (v4 < 9 || v4 - 8 < v18)
        {
          return v13;
        }
      }

      if (v16 >= 7)
      {
        if (v15[3] && v4 - 1 < &v3[v15[3]])
        {
          return 0;
        }

        if (v16 >= 9)
        {
          v19 = v15[4];
          if (v15[4])
          {
            v20 = &v3[v19];
            if ((&v3[v19] & 3) != 0)
            {
              v13 = 0;
              if (v5 < v20 || (*(a2 + 24) & 1) != 0)
              {
                return v13;
              }
            }

            else if (v5 < v20)
            {
              return 0;
            }

            v21 = *&v20[v2];
            if (v21 < 1 || v4 - 1 < &v20[v21])
            {
              return 0;
            }

            v22 = (a1 + v19 + *(a1 + v19));
            v23 = v22 - v2;
            if (((v22 - v2) & 3) != 0)
            {
              v13 = 0;
              if (v5 < v23 || (*(a2 + 24) & 1) != 0)
              {
                return v13;
              }
            }

            else if (v5 < v23)
            {
              return 0;
            }

            v24 = *v22;
            if (v24 > 0xFFFFFFE)
            {
              return 0;
            }

            v13 = 0;
            v25 = (8 * v24) | 4;
            v6 = v4 >= v25;
            v26 = v4 - v25;
            if (v26 == 0 || !v6 || v26 < v23)
            {
              return v13;
            }
          }

          if (v16 >= 0xB)
          {
            v27 = v15[5];
            if (v27)
            {
              v28 = &v3[v27];
              if ((v28 & 3) != 0)
              {
                v13 = 0;
                if (v5 < v28 || (*(a2 + 24) & 1) != 0)
                {
                  return v13;
                }
              }

              else if (v5 < v28)
              {
                return 0;
              }

              v29 = *(v2 + v28);
              if (v29 < 1 || v4 - 1 < v28 + v29)
              {
                return 0;
              }

              v30 = a2;
              v31 = a1;
              v32 = sub_2CE100(a2, (a1 + v27 + *(a1 + v27)), 4uLL, 0);
              a2 = v30;
              v13 = v32;
              a1 = v31;
              if (!v13)
              {
                return v13;
              }
            }
          }
        }
      }
    }

    v33 = a1;
    v34 = a2;
    if (!sub_2CDF90(a1, a2, 0xCu))
    {
      return 0;
    }

    v35 = (v33 - *v33);
    if (*v35 < 0xDu)
    {
      v38 = 0;
      v37 = v34;
    }

    else
    {
      v36 = v35[6];
      v37 = v34;
      v38 = v36 ? (v33 + v36 + *(v33 + v36)) : 0;
    }

    if (!sub_2CE170(v37, v38) || !sub_2CDF90(v33, v34, 0xEu))
    {
      return 0;
    }

    v39 = v33;
    v40 = *v33;
    v41 = -v40;
    v42 = (v33 - v40);
    if (*v42 >= 0xFu)
    {
      v43 = v42[7];
      v44 = v34;
      if (!v43)
      {
LABEL_72:
        v45 = (v39 + v41);
        if (*v45 >= 0xFu && (v46 = v45[7]) != 0)
        {
          v47 = (v39 + v46 + *(v39 + v46));
        }

        else
        {
          v47 = 0;
        }

        if (sub_2CE014(v44, v47) && sub_2CDF90(v33, v34, 0x10u))
        {
          v48 = v33;
          v49 = (v33 - *v33);
          if (*v49 >= 0x11u)
          {
            v50 = v49[8];
            if (v50)
            {
              v13 = sub_2CE314((v33 + v50 + *(v33 + v50)), v34);
              v48 = v33;
              if (!v13)
              {
                return v13;
              }
            }
          }

          if (sub_2CE0A0(v48, v34, 0x12u, 4))
          {
            --v34[5].i32[0];
            return 1;
          }
        }

        return 0;
      }

      if (!sub_2CE100(v34, (v33 + v43 + *(v33 + v43)), 4uLL, 0))
      {
        return 0;
      }

      v39 = v33;
      v41 = -*v33;
    }

    v44 = v34;
    goto LABEL_72;
  }

  return 0;
}

BOOL sub_2CDED0(int *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3])
  {
    return 0;
  }

  v4 = a2[1];
  if (v4 < 5 || v4 - 4 < v3)
  {
    return 0;
  }

  v6 = *a1;
  v7 = vadd_s32(a2[5], 0x100000001);
  a2[5] = v7;
  v8 = vcgt_u32(v7, a2[2]);
  if ((v8.i32[0] | v8.i32[1]))
  {
    return 0;
  }

  v10 = v3 - v6;
  if (v10)
  {
    result = 0;
    if ((a2[3] & 1) != 0 || v4 - 2 < v10)
    {
      return result;
    }
  }

  else if (v4 - 2 < v10)
  {
    return 0;
  }

  v11 = *(v2 + v10);
  if (v11)
  {
    return 0;
  }

  v12 = v4 > v11;
  v13 = v4 - v11;
  return v12 && v13 >= v10;
}

BOOL sub_2CDF90(int *a1, uint64_t a2, unsigned int a3)
{
  v3 = (a1 - *a1);
  if (*v3 <= a3)
  {
    return 1;
  }

  v4 = *(v3 + a3);
  if (!v4)
  {
    return 1;
  }

  v5 = a1 + v4 - *a2;
  if (v5 & 3) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  result = 0;
  v7 = *(a2 + 8);
  if (v7 >= 5 && v7 - 4 >= v5)
  {
    v8 = *(*a2 + v5);
    if (v8 >= 1)
    {
      return v7 - 1 >= v5 + v8;
    }

    return 0;
  }

  return result;
}

BOOL sub_2CE014(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  if (!*a2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a2 + 1;
  do
  {
    result = sub_2CE1E0((v5 + *v5), a1);
    if (!result)
    {
      break;
    }

    ++v4;
    ++v5;
  }

  while (v4 < *a2);
  return result;
}

BOOL sub_2CE0A0(int *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v4 = (a1 - *a1);
  if (*v4 <= a3)
  {
    return 1;
  }

  v5 = *(v4 + a3);
  if (!v5)
  {
    return 1;
  }

  v6 = a1 + v5 - *a2;
  if (v6 & (a4 - 1)) != 0 && (*(a2 + 24))
  {
    return 0;
  }

  v8 = *(a2 + 8);
  v9 = v8 > 0x10;
  v10 = v8 - 16;
  return v9 && v10 >= v6;
}

BOOL sub_2CE100(uint64_t a1, unsigned int *a2, unint64_t a3, void *a4)
{
  v4 = a2 - *a1;
  if (v4 & 3) != 0 && (*(a1 + 24))
  {
    return 0;
  }

  v5 = *(a1 + 8);
  if (v5 < 5 || v5 - 4 < v4)
  {
    return 0;
  }

  v7 = *a2;
  if (0x7FFFFFFF / a3 <= v7)
  {
    return 0;
  }

  v8 = v7 * a3 + 4;
  if (a4)
  {
    *a4 = v8 + v4;
    v5 = *(a1 + 8);
  }

  v9 = v5 > v8;
  v10 = v5 - v8;
  return v9 && v10 >= v4;
}

BOOL sub_2CE170(uint64_t a1, _DWORD *a2)
{
  if (!a2)
  {
    return 1;
  }

  v2 = a2 - *a1;
  if (v2 & 3) != 0 && (*(a1 + 24))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 5 && v3 - 4 >= v2;
  if (!v4 || *a2 > 0xAAAAAA9u)
  {
    return 0;
  }

  v5 = 12 * *a2 + 4;
  v6 = v3 > v5;
  v7 = v3 - v5;
  return v6 && v7 >= v2;
}

BOOL sub_2CE1E0(int *a1, uint64_t a2)
{
  result = sub_2CDED0(a1, a2);
  if (result)
  {
    v5 = (a1 - *a1);
    if (*v5 < 5u || (v6 = v5[2]) == 0)
    {
LABEL_22:
      --*(a2 + 40);
      return 1;
    }

    v7 = a1 + v6 - *a2;
    if (v7 & 3) != 0 && (*(a2 + 24))
    {
      return 0;
    }

    result = 0;
    v8 = *(a2 + 8);
    if (v8 >= 5 && v8 - 4 >= v7)
    {
      v9 = *(*a2 + v7);
      if (v9 < 1)
      {
        return 0;
      }

      if (v8 - 1 < v7 + v9)
      {
        return 0;
      }

      v10 = (a1 + v6 + *(a1 + v6));
      v11 = v10 - *a2;
      if (v11 & 3) != 0 && (*(a2 + 24))
      {
        return 0;
      }

      result = 0;
      v12 = *(a2 + 8);
      if (v12 >= 5 && v12 - 4 >= v11)
      {
        v13 = *v10;
        if (v13 > 0xFFFFFFE)
        {
          return 0;
        }

        v14 = (8 * v13) | 4;
        v16 = v12 >= v14;
        v15 = v12 - v14;
        v16 = v15 != 0 && v16 && v15 >= v11;
        if (!v16)
        {
          return 0;
        }

        goto LABEL_22;
      }
    }
  }

  return result;
}

uint64_t sub_2CE314(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if ((sub_2CE560((v29 + *v29), a2) & 1) == 0)
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

uint64_t sub_2CE560(int *a1, uint32x2_t *a2)
{
  v2 = *a2;
  v3 = a1 - *a2;
  if (v3 & 3) != 0 && (a2[3].i8[0])
  {
    return 0;
  }

  v4 = a2[1];
  v5 = v4 - 4;
  v6 = v4 >= 5 && v5 >= v3;
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a2[5];
  v9 = vadd_s32(v8, 0x100000001);
  a2[5] = v9;
  v10 = vcgt_u32(v9, a2[2]);
  if ((v10.i32[0] | v10.i32[1]))
  {
    return 0;
  }

  v12 = &v3[-v7];
  if (((v3 - v7) & 1) == 0)
  {
    if (v4 - 2 >= v12)
    {
      goto LABEL_15;
    }

    return 0;
  }

  if ((a2[3].i8[0] & 1) != 0 || v4 - 2 < v12)
  {
    return 0;
  }

LABEL_15:
  v13 = *(*&v2 + v12);
  if (v13)
  {
    return 0;
  }

  if (v4 <= v13 || v4 - v13 < v12)
  {
    return 0;
  }

  v15 = (a1 - *a1);
  v16 = v8.i32[0];
  if (*v15 < 5u)
  {
    goto LABEL_46;
  }

  v17 = v15[2];
  if (!v15[2])
  {
    goto LABEL_46;
  }

  v18 = &v3[v17];
  if ((v18 & 3) != 0)
  {
    if (v5 < v18 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }
  }

  else if (v5 < v18)
  {
    return 0;
  }

  v19 = *(*&v2 + v18);
  if (v19 < 1 || v4 - 1 < v18 + v19)
  {
    return 0;
  }

  v20 = (a1 + v17);
  v21 = (a1 + v17 + *(a1 + v17));
  v22 = v21 - *&v2;
  if ((v22 & 3) != 0)
  {
    if (v5 < v22 || (a2[3].i8[0] & 1) != 0)
    {
      return 0;
    }

    goto LABEL_35;
  }

  if (v5 < v22)
  {
    return 0;
  }

LABEL_35:
  v23 = *v21;
  if (v23 > 0x1FFFFFFE)
  {
    return 0;
  }

  v24 = 4 * v23 + 4;
  v6 = v4 >= v24;
  v25 = v4 - v24;
  if (v25 == 0 || !v6 || v25 < v22)
  {
    return 0;
  }

  v27 = (v20 + *v20);
  if (*v27)
  {
    v28 = 0;
    v29 = v27 + 1;
    while (1)
    {
      v30 = a2;
      if (!sub_2CE1E0((v29 + *v29), a2))
      {
        return 0;
      }

      ++v28;
      ++v29;
      a2 = v30;
      if (v28 >= *v27)
      {
        v16 = v30[5].i32[0] - 1;
        break;
      }
    }
  }

LABEL_46:
  a2[5].i32[0] = v16;
  return 1;
}

char *sub_2CE7AC(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  v6 = a5 - 1;
  if (a5 < 1)
  {
    return v5;
  }

  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (a5 > (v7 - v8) >> 3)
  {
    v9 = *a1;
    v10 = a5 + ((v8 - *a1) >> 3);
    if (v10 >> 61)
    {
      sub_1794();
    }

    v11 = v7 - v9;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    if (v11 >= 0x7FFFFFFFFFFFFFF8)
    {
      v12 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (!(v12 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v30 = (__dst - v9);
    v31 = 8 * ((__dst - v9) >> 3);
    v32 = (v31 + 8 * a5);
    v33 = v6 & 0x1FFFFFFFFFFFFFFFLL;
    if ((v6 & 0x1FFFFFFFFFFFFFFFuLL) >= 7 && (v30 - __src) >= 0x20)
    {
      v54 = v33 + 1;
      v55 = (v33 + 1) & 0x3FFFFFFFFFFFFFFCLL;
      v34 = (v31 + 8 * v55);
      v35 = &__src[8 * v55];
      v56 = (__src + 16);
      v57 = (v31 + 16);
      v58 = v55;
      do
      {
        v59 = *v56;
        *(v57 - 1) = *(v56 - 1);
        *v57 = v59;
        v56 += 2;
        v57 += 2;
        v58 -= 4;
      }

      while (v58);
      if (v54 == v55)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v34 = v31;
      v35 = __src;
    }

    do
    {
      v36 = *v35;
      v35 += 8;
      *v34++ = v36;
    }

    while (v34 != v32);
LABEL_31:
    v37 = *(a1 + 8) - __dst;
    memcpy((v31 + 8 * a5), __dst, v37);
    v39 = v32 + v37;
    *(a1 + 8) = v5;
    v40 = *a1;
    v41 = &v5[-*a1];
    v42 = v31 - v41;
    memcpy((v31 - v41), *a1, v41);
    *a1 = v42;
    *(a1 + 8) = v39;
    *(a1 + 16) = 0;
    if (v40)
    {
      operator delete(v40);
    }

    return v31;
  }

  v13 = v8 - __dst;
  v14 = (v8 - __dst) >> 3;
  if (v14 >= a5)
  {
    v13 = 8 * a5;
    v17 = &__dst[8 * a5];
    v18 = (v8 - 8 * a5);
    if (v18 >= v8)
    {
      v22 = *(a1 + 8);
    }

    else
    {
      v19 = v18 + 1;
      if (v8 > (v18 + 1))
      {
        v19 = *(a1 + 8);
      }

      v20 = v19 + v13 + ~v8;
      v21 = v20 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v22 = *(a1 + 8);
      if (v21)
      {
        goto LABEL_74;
      }

      v23 = (v20 >> 3) + 1;
      v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFFCLL);
      v18 = (v18 + v24);
      v22 = (v8 + v24);
      v25 = (v8 + 16);
      v26 = (v8 + 16 - v13);
      v27 = v23 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 4;
      }

      while (v27);
      if (v23 != (v23 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_74:
        do
        {
          v29 = *v18++;
          *v22++ = v29;
        }

        while (v18 < v8);
      }
    }

    *(a1 + 8) = v22;
    if (v8 != v17)
    {
      v51 = __src;
      memmove(v17, __dst, v8 - v17);
      __src = v51;
    }

    v52 = v5;
    v53 = __src;
    goto LABEL_68;
  }

  v15 = &__src[v13];
  if (&__src[v13] == a4)
  {
    v16 = *(a1 + 8);
  }

  else
  {
    v43 = &__src[v13];
    v44 = a4 - v15 - 8;
    if (v44 < 0x18)
    {
      v16 = *(a1 + 8);
    }

    else
    {
      v16 = *(a1 + 8);
      if (v8 - v15 >= 0x20)
      {
        v45 = (v44 >> 3) + 1;
        v46 = 8 * (v45 & 0x3FFFFFFFFFFFFFFCLL);
        v43 = &v15[v46];
        v16 = v8 + v46;
        v47 = (v8 + 16);
        v48 = (v15 + 16);
        v49 = v45 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v50 = *v48;
          *(v47 - 1) = *(v48 - 1);
          *v47 = v50;
          v47 += 2;
          v48 += 2;
          v49 -= 4;
        }

        while (v49);
        if (v45 == (v45 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_50;
        }
      }
    }

    do
    {
      v60 = *v43;
      v43 += 8;
      *v16 = v60;
      v16 += 8;
    }

    while (v43 != a4);
  }

LABEL_50:
  *(a1 + 8) = v16;
  if (v14 >= 1)
  {
    v61 = a5;
    v62 = &__dst[8 * a5];
    v63 = (v16 - 8 * a5);
    v64 = __src;
    if (v63 >= v8)
    {
      v68 = v16;
    }

    else
    {
      v65 = v63 + 1;
      if (v8 > (v63 + 1))
      {
        v65 = v8;
      }

      v66 = &v65[v61] + ~v16;
      v67 = v66 < 0x18 || (a5 & 0x1FFFFFFFFFFFFFFCLL) == 0;
      v68 = v16;
      if (v67)
      {
        goto LABEL_75;
      }

      v69 = (v66 >> 3) + 1;
      v70 = 8 * (v69 & 0x3FFFFFFFFFFFFFFCLL);
      v63 = (v63 + v70);
      v68 = (v16 + v70);
      v71 = (v16 + 16);
      v72 = (v16 + 16 - v61 * 8);
      v73 = v69 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v74 = *v72;
        *(v71 - 1) = *(v72 - 1);
        *v71 = v74;
        v71 += 2;
        v72 += 2;
        v73 -= 4;
      }

      while (v73);
      if (v69 != (v69 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_75:
        do
        {
          v75 = *v63++;
          *v68++ = v75;
        }

        while (v63 < v8);
      }
    }

    *(a1 + 8) = v68;
    if (v16 != v62)
    {
      memmove(&__dst[8 * a5], __dst, v16 - v62);
    }

    if (v8 != v5)
    {
      v52 = v5;
      v53 = v64;
LABEL_68:
      memmove(v52, v53, v13);
    }
  }

  return v5;
}

void sub_2CEBBC(unsigned int *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, unsigned int *a4@<X3>, uint64_t a5@<X4>, unsigned int **a6@<X8>)
{
  if (a3 != a4)
  {
    v10 = a3;
    v11 = 0;
    while (1)
    {
      v12 = a2;
      if (a1 != a2)
      {
        v13 = v10[1] | (*v10 << 32);
        v12 = a1;
        if ((a1[1] | (*a1 << 32)) < v13)
        {
          break;
        }
      }

LABEL_32:
      v23 = v12 == a1;
      if (v23 && v11)
      {
        sub_2512DC(a5, v12);
        v23 = 0;
        v12 += 2;
        v10 += 2;
      }

      if (v12 == a2)
      {
        goto LABEL_2;
      }

      v24 = a4;
      if (v10 != a4)
      {
        v25 = v12[1] | (*v12 << 32);
        v24 = v10;
        if ((v10[1] | (*v10 << 32)) < v25)
        {
          v26 = (a4 - v10) >> 3;
          if (v26 >= 1)
          {
            v26 = 1;
          }

          v24 = &v10[2 * v26];
          if (v24 == a4)
          {
            v28 = v10;
            v24 = a4;
            if (!v26)
            {
              goto LABEL_61;
            }
          }

          else if ((v24[1] | (*v24 << 32)) >= v25)
          {
            v28 = v10;
LABEL_55:
            if (!v26)
            {
              goto LABEL_61;
            }
          }

          else
          {
            v27 = 1;
            while (1)
            {
              v28 = v24;
              v27 *= 2;
              v26 = (a4 - v24) >> 3;
              if (v26 <= v27)
              {
                v29 = v27;
              }

              else
              {
                v29 = (a4 - v24) >> 3;
              }

              if (v26 >= v27)
              {
                v26 = v27;
              }

              if (v27 < 0)
              {
                v26 = v29;
              }

              v24 += 2 * v26;
              if (v24 == a4)
              {
                break;
              }

              if ((v24[1] | (*v24 << 32)) >= v25)
              {
                goto LABEL_55;
              }
            }

            v24 = a4;
            if (!v26)
            {
              goto LABEL_61;
            }
          }

          if (v26 != 1)
          {
            do
            {
              v30 = v26 >> 1;
              v31 = &v28[2 * (v26 >> 1)];
              v33 = *v31;
              v34 = v31[1];
              v32 = v31 + 2;
              v26 += ~(v26 >> 1);
              if ((v34 | (v33 << 32)) < v25)
              {
                v28 = v32;
              }

              else
              {
                v26 = v30;
              }
            }

            while (v26);
LABEL_61:
            v24 = v28;
          }
        }
      }

      v11 = v24 == v10;
      if (v24 != v10)
      {
        v23 = 0;
      }

      if (v23)
      {
        sub_2512DC(a5, v12);
        v11 = 0;
        v12 += 2;
        v24 += 2;
      }

      a1 = v12;
      v10 = v24;
      if (v24 == a4)
      {
        goto LABEL_2;
      }
    }

    v14 = (a2 - a1) >> 3;
    if (v14 >= 1)
    {
      v14 = 1;
    }

    v12 = &a1[2 * v14];
    if (v12 == a2)
    {
      v16 = a1;
      v12 = a2;
      if (!v14)
      {
LABEL_31:
        v12 = v16;
        goto LABEL_32;
      }
    }

    else if ((v12[1] | (*v12 << 32)) >= v13)
    {
      v16 = a1;
LABEL_25:
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v15 = 1;
      while (1)
      {
        v16 = v12;
        v15 *= 2;
        v14 = (a2 - v12) >> 3;
        if (v14 <= v15)
        {
          v17 = v15;
        }

        else
        {
          v17 = (a2 - v12) >> 3;
        }

        if (v14 >= v15)
        {
          v14 = v15;
        }

        if (v15 < 0)
        {
          v14 = v17;
        }

        v12 += 2 * v14;
        if (v12 == a2)
        {
          break;
        }

        if ((v12[1] | (*v12 << 32)) >= v13)
        {
          goto LABEL_25;
        }
      }

      v12 = a2;
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    if (v14 == 1)
    {
      goto LABEL_32;
    }

    do
    {
      v18 = v14 >> 1;
      v19 = &v16[2 * (v14 >> 1)];
      v21 = *v19;
      v22 = v19[1];
      v20 = v19 + 2;
      v14 += ~(v14 >> 1);
      if ((v22 | (v21 << 32)) < v13)
      {
        v16 = v20;
      }

      else
      {
        v14 = v18;
      }
    }

    while (v14);
    goto LABEL_31;
  }

LABEL_2:
  *a6 = a2;
  a6[1] = a4;
  a6[2] = a5;
}

void *sub_2CEE78(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t *sub_2CEFF4(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = a1;
    v5 = &a1[v3];
    do
    {
      v6 = v4[1];
      sub_2CF0FC((++v4 + v6), __p);
      v7 = a2[1];
      if (v7 < a2[2])
      {
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        *v7 = *__p;
        v7[2] = v17;
        a2[1] = (v7 + 3);
      }

      else
      {
        v8 = sub_52D94(a2, __p);
        v9 = __p[0];
        a2[1] = v8;
        if (v9)
        {
          v10 = __p[1];
          v11 = v9;
          if (__p[1] != v9)
          {
            v12 = __p[1];
            do
            {
              v14 = *(v12 - 3);
              v12 -= 24;
              v13 = v14;
              if (v14)
              {
                *(v10 - 2) = v13;
                operator delete(v13);
              }

              v10 = v12;
            }

            while (v12 != v9);
            v11 = __p[0];
          }

          __p[1] = v9;
          operator delete(v11);
        }
      }
    }

    while (v4 != v5);
  }

  return a2;
}

void sub_2CF0FC(int *a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 - *a1);
  if (*v3 >= 5u && (v4 = v3[2]) != 0)
  {
    v5 = a1 + v4;
    v6 = *(a1 + v4);
    v9 = 0;
    v10 = 0uLL;
    sub_2CF2A8(&v9, *(a1 + v4 + v6));
    sub_2CF3E0(&v5[v6], &v9);
    v7 = v9;
    v8 = v10;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v9 = a2;
  LOBYTE(v10) = 0;
  if (v8 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  if (v7)
  {
    operator delete(v7);
  }
}

void sub_2CF258(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  *(v2 + 8) = v3;
  sub_35390(va1);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_2CF278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_2CF28C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  sub_35390(va1);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void *sub_2CF2A8(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t *sub_2CF3E0(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  if (v3)
  {
    v4 = 4 * v3;
    v5 = a1 + 1;
    do
    {
      v6 = *v5;
      v7 = v6 - *(v5 + v6);
      if (*(v5 + v7) >= 5u && (v8 = *(v5 + v7 + 4)) != 0)
      {
        sub_2CF504((v5 + v6 + v8 + *(v5 + v6 + v8)), __p);
        v9 = a2[1];
        if (v9 >= a2[2])
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_2CF504(0, __p);
        v9 = a2[1];
        if (v9 >= a2[2])
        {
LABEL_10:
          v10 = sub_52C28(a2, __p);
          v11 = __p[0];
          a2[1] = v10;
          if (v11)
          {
            __p[1] = v11;
            operator delete(v11);
          }

          goto LABEL_4;
        }
      }

      *v9 = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = *__p;
      v9[2] = v14;
      a2[1] = (v9 + 3);
LABEL_4:
      ++v5;
      v4 -= 4;
    }

    while (v4);
  }

  return a2;
}

void sub_2CF4E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_2CF504@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  if (result && *result)
  {
    operator new();
  }

  *a2 = 0u;
  *(a2 + 16) = 0;
  return result;
}

void sub_2CF5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2CF60C(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    a1[20] = v2;
    operator delete(v2);
  }

  v3 = a1[15];
  if (v3)
  {
    a1[16] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    a1[8] = v5;
    operator delete(v5);
  }

  return a1;
}

uint64_t sub_2CF670(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x1Du);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_2CF76C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_2CF79C(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
  while (2)
  {
    v9 = a2 - 1;
    v10 = a2 - 2;
    v11 = a2 - 3;
    v12 = a1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          a1 = v12;
          v13 = a2 - v12;
          if (v13 <= 2)
          {
            if (v13 < 2)
            {
              return result;
            }

            if (v13 == 2)
            {
              if (a2[-1].n128_u64[1] < v12->n128_u64[1])
              {
                v128 = *v12;
                *v12 = a2[-1];
                result = v128;
                a2[-1] = v128;
              }

              return result;
            }

            goto LABEL_9;
          }

          switch(v13)
          {
            case 3:
              v58 = v12[1].n128_i64[1];
              v59 = a2[-1].n128_i64[1];
              if (v58 < v12->n128_u64[1])
              {
                if (v59 >= v58)
                {
                  v133 = *v12;
                  *v12 = v12[1];
                  result = v133;
                  v12[1] = v133;
                  if (a2[-1].n128_u64[1] < v12[1].n128_u64[1])
                  {
                    result = v12[1];
                    v12[1] = *v9;
                    *v9 = result;
                  }
                }

                else
                {
                  v129 = *v12;
                  *v12 = *v9;
                  result = v129;
                  *v9 = v129;
                }

                return result;
              }

              if (v59 >= v58)
              {
                return result;
              }

              result = v12[1];
              v12[1] = *v9;
              *v9 = result;
LABEL_184:
              if (v12[1].n128_u64[1] < v12->n128_u64[1])
              {
                v135 = *v12;
                *v12 = v12[1];
                result = v135;
                v12[1] = v135;
              }

              return result;
            case 4:
              v60 = v12[1].n128_i64[1];
              v61 = v12[2].n128_i64[1];
              if (v60 >= v12->n128_u64[1])
              {
                if (v61 < v60)
                {
                  result = v12[1];
                  v12[1] = v12[2];
                  v12[2] = result;
                  if (v12[1].n128_u64[1] < v12->n128_u64[1])
                  {
                    v132 = *v12;
                    *v12 = v12[1];
                    result = v132;
                    v12[1] = v132;
                  }
                }

                goto LABEL_181;
              }

              if (v61 >= v60)
              {
                v134 = *v12;
                *v12 = v12[1];
                result = v134;
                v12[1] = v134;
                if (v12[2].n128_u64[1] >= v12[1].n128_u64[1])
                {
                  goto LABEL_181;
                }

                result = v12[1];
                v12[1] = v12[2];
              }

              else
              {
                v130 = *v12;
                *v12 = v12[2];
                result = v130;
              }

              v12[2] = result;
LABEL_181:
              if (a2[-1].n128_u64[1] >= v12[2].n128_u64[1])
              {
                return result;
              }

              result = v12[2];
              v12[2] = *v9;
              *v9 = result;
              if (v12[2].n128_u64[1] >= v12[1].n128_u64[1])
              {
                return result;
              }

              result = v12[1];
              v12[1] = v12[2];
              v12[2] = result;
              goto LABEL_184;
            case 5:

              result.n128_u64[0] = sub_2D0310(v12, v12 + 1, v12 + 2, v12 + 3, a2 - 1, result).n128_u64[0];
              return result;
          }

LABEL_9:
          if (v13 <= 23)
          {
            v62 = v12 + 1;
            v64 = v12 == a2 || v62 == a2;
            if (a4)
            {
              if (!v64)
              {
                v65 = 0;
                v66 = v12;
                do
                {
                  v68 = v66[1].n128_i64[1];
                  v69 = v66->n128_i64[1];
                  v66 = v62;
                  if (v68 < v69)
                  {
                    v70 = v62->n128_u64[0];
                    v71 = v65;
                    do
                    {
                      result = *(v12 + v71);
                      *(v12 + v71 + 16) = result;
                      if (!v71)
                      {
                        v67 = v12;
                        goto LABEL_125;
                      }

                      v72 = *(&v12->n128_i64[-1] + v71);
                      v71 -= 16;
                    }

                    while (v68 < v72);
                    v67 = (v12 + v71 + 16);
LABEL_125:
                    v67->n128_u64[0] = v70;
                    v67->n128_u64[1] = v68;
                  }

                  v62 = v66 + 1;
                  v65 += 16;
                }

                while (&v66[1] != a2);
              }
            }

            else if (!v64)
            {
              do
              {
                v104 = a1[1].n128_i64[1];
                v105 = a1->n128_i64[1];
                a1 = v62;
                if (v104 < v105)
                {
                  v106 = v62->n128_u64[0];
                  v107 = a1;
                  do
                  {
                    result = v107[-1];
                    *v107 = result;
                    v108 = v107[-2].n128_i64[1];
                    --v107;
                  }

                  while (v104 < v108);
                  v107->n128_u64[0] = v106;
                  v107->n128_u64[1] = v104;
                }

                v62 = a1 + 1;
              }

              while (&a1[1] != a2);
            }

            return result;
          }

          if (!a3)
          {
            if (v12 != a2)
            {
              v73 = (v13 - 2) >> 1;
              v74 = v73;
              do
              {
                if (v73 >= v74)
                {
                  v76 = (2 * (v74 & 0xFFFFFFFFFFFFFFFLL)) | 1;
                  v77 = &v12[v76];
                  if (2 * (v74 & 0xFFFFFFFFFFFFFFFLL) + 2 < v13)
                  {
                    v78 = v77->n128_i64[1];
                    v79 = v77[1].n128_i64[1];
                    v77 += v78 < v79;
                    if (v78 < v79)
                    {
                      v76 = 2 * (v74 & 0xFFFFFFFFFFFFFFFLL) + 2;
                    }
                  }

                  v80 = &v12[v74];
                  v81 = v80->n128_i64[1];
                  if (v77->n128_u64[1] >= v81)
                  {
                    v82 = v80->n128_u64[0];
                    do
                    {
                      v83 = v80;
                      v80 = v77;
                      *v83 = *v77;
                      if (v73 < v76)
                      {
                        break;
                      }

                      v84 = (2 * v76) | 1;
                      v77 = &v12[v84];
                      v85 = 2 * v76 + 2;
                      if (v85 < v13)
                      {
                        v86 = v77->n128_i64[1];
                        v87 = v77[1].n128_i64[1];
                        v77 += v86 < v87;
                        if (v86 < v87)
                        {
                          v84 = v85;
                        }
                      }

                      v76 = v84;
                    }

                    while (v77->n128_u64[1] >= v81);
                    v80->n128_u64[0] = v82;
                    v80->n128_u64[1] = v81;
                  }
                }

                v75 = v74-- <= 0;
              }

              while (!v75);
              do
              {
                v88 = 0;
                v131 = *v12;
                v89 = (v13 - 2) >> 1;
                v90 = v12;
                do
                {
                  while (1)
                  {
                    v95 = &v90[v88];
                    v94 = v95 + 1;
                    v96 = (2 * v88) | 1;
                    v88 = 2 * v88 + 2;
                    if (v88 < v13)
                    {
                      break;
                    }

                    v88 = v96;
                    *v90 = *v94;
                    v90 = v95 + 1;
                    if (v96 > v89)
                    {
                      goto LABEL_157;
                    }
                  }

                  v91 = v95[1].n128_i64[1];
                  v92 = v95[2].n128_i64[1];
                  v93 = v95 + 2;
                  if (v91 >= v92)
                  {
                    v88 = v96;
                  }

                  else
                  {
                    v94 = v93;
                  }

                  *v90 = *v94;
                  v90 = v94;
                }

                while (v88 <= v89);
LABEL_157:
                if (v94 == --a2)
                {
                  result = v131;
                  *v94 = v131;
                }

                else
                {
                  *v94 = *a2;
                  result = v131;
                  *a2 = v131;
                  v97 = (v94 - v12 + 16) >> 4;
                  v75 = v97 < 2;
                  v98 = v97 - 2;
                  if (!v75)
                  {
                    v99 = v98 >> 1;
                    v100 = &v12[v98 >> 1];
                    v101 = v94->n128_i64[1];
                    if (v100->n128_u64[1] < v101)
                    {
                      v102 = v94->n128_u64[0];
                      do
                      {
                        v103 = v94;
                        v94 = v100;
                        result = *v100;
                        *v103 = *v100;
                        if (!v99)
                        {
                          break;
                        }

                        v99 = (v99 - 1) >> 1;
                        v100 = &v12[v99];
                      }

                      while (v100->n128_u64[1] < v101);
                      v94->n128_u64[0] = v102;
                      v94->n128_u64[1] = v101;
                    }
                  }
                }

                v75 = v13-- <= 2;
              }

              while (!v75);
            }

            return result;
          }

          v14 = &v12[v13 >> 1];
          v15 = a2[-1].n128_i64[1];
          if (v13 >= 0x81)
          {
            break;
          }

          v17 = v12->n128_i64[1];
          if (v17 < v14->n128_u64[1])
          {
            if (v15 >= v17)
            {
              v117 = *v14;
              *v14 = *v12;
              result = v117;
              *v12 = v117;
              if (a2[-1].n128_u64[1] >= v12->n128_u64[1])
              {
                goto LABEL_37;
              }

              v110 = *v12;
              *v12 = *v9;
            }

            else
            {
              v110 = *v14;
              *v14 = *v9;
            }

            result = v110;
            *v9 = v110;
LABEL_37:
            --a3;
            if ((a4 & 1) == 0)
            {
              goto LABEL_61;
            }

            goto LABEL_38;
          }

          if (v15 >= v17)
          {
            goto LABEL_37;
          }

          v113 = *v12;
          *v12 = *v9;
          result = v113;
          *v9 = v113;
          if (v12->n128_u64[1] >= v14->n128_u64[1])
          {
            goto LABEL_37;
          }

          v114 = *v14;
          *v14 = *v12;
          result = v114;
          *v12 = v114;
          --a3;
          if (a4)
          {
            goto LABEL_38;
          }

LABEL_61:
          v23 = v12->n128_i64[1];
          if (v12[-1].n128_u64[1] < v23)
          {
            goto LABEL_62;
          }

          if (v23 >= a2[-1].n128_u64[1])
          {
            v49 = v12 + 1;
            do
            {
              v12 = v49;
              if (v49 >= a2)
              {
                break;
              }

              v50 = v49->n128_i64[1];
              ++v49;
            }

            while (v23 >= v50);
          }

          else
          {
            v47 = v12;
            do
            {
              v12 = v47 + 1;
              v48 = v47[1].n128_i64[1];
              ++v47;
            }

            while (v23 >= v48);
          }

          v51 = a2;
          if (v12 < a2)
          {
            v52 = a2;
            do
            {
              v51 = v52 - 1;
              v53 = v52[-1].n128_i64[1];
              --v52;
            }

            while (v23 < v53);
          }

          v54 = a1->n128_u64[0];
          while (v12 < v51)
          {
            v127 = *v12;
            *v12 = *v51;
            result = v127;
            *v51 = v127;
            do
            {
              v55 = v12[1].n128_i64[1];
              ++v12;
            }

            while (v23 >= v55);
            do
            {
              v56 = v51[-1].n128_i64[1];
              --v51;
            }

            while (v23 < v56);
          }

          v57 = v12 - 1;
          if (&v12[-1] != a1)
          {
            result = *v57;
            *a1 = *v57;
          }

          a4 = 0;
          v12[-1].n128_u64[0] = v54;
          v12[-1].n128_u64[1] = v23;
        }

        v16 = v14->n128_i64[1];
        if (v16 >= v12->n128_u64[1])
        {
          if (v15 < v16)
          {
            v111 = *v14;
            *v14 = *v9;
            *v9 = v111;
            if (v14->n128_u64[1] < v12->n128_u64[1])
            {
              v112 = *v12;
              *v12 = *v14;
              *v14 = v112;
            }
          }
        }

        else
        {
          if (v15 >= v16)
          {
            v115 = *v12;
            *v12 = *v14;
            *v14 = v115;
            if (a2[-1].n128_u64[1] >= v14->n128_u64[1])
            {
              goto LABEL_28;
            }

            v109 = *v14;
            *v14 = *v9;
          }

          else
          {
            v109 = *v12;
            *v12 = *v9;
          }

          *v9 = v109;
        }

LABEL_28:
        v18 = v14 - 1;
        v19 = v14[-1].n128_i64[1];
        v20 = a2[-2].n128_i64[1];
        if (v19 >= v12[1].n128_u64[1])
        {
          if (v20 < v19)
          {
            v116 = *v18;
            *v18 = *v10;
            *v10 = v116;
            if (v14[-1].n128_u64[1] < v12[1].n128_u64[1])
            {
              v22 = v12[1];
              v12[1] = *v18;
              *v18 = v22;
            }
          }
        }

        else
        {
          if (v20 >= v19)
          {
            v24 = v12[1];
            v12[1] = *v18;
            *v18 = v24;
            if (a2[-2].n128_u64[1] >= v14[-1].n128_u64[1])
            {
              goto LABEL_42;
            }

            v118 = *v18;
            *v18 = *v10;
            v21 = v118;
          }

          else
          {
            v21 = v12[1];
            v12[1] = *v10;
          }

          *v10 = v21;
        }

LABEL_42:
        v25 = v14[1].n128_i64[1];
        v26 = a2[-3].n128_i64[1];
        if (v25 >= v12[2].n128_u64[1])
        {
          if (v26 < v25)
          {
            v119 = v14[1];
            v14[1] = *v11;
            *v11 = v119;
            if (v14[1].n128_u64[1] < v12[2].n128_u64[1])
            {
              v28 = v12[2];
              v12[2] = v14[1];
              v14[1] = v28;
            }
          }
        }

        else
        {
          if (v26 >= v25)
          {
            v29 = v12[2];
            v12[2] = v14[1];
            v14[1] = v29;
            if (a2[-3].n128_u64[1] >= v14[1].n128_u64[1])
            {
              goto LABEL_51;
            }

            v120 = v14[1];
            v14[1] = *v11;
            v27 = v120;
          }

          else
          {
            v27 = v12[2];
            v12[2] = *v11;
          }

          *v11 = v27;
        }

LABEL_51:
        v30 = v14->n128_i64[1];
        v31 = v14[1].n128_i64[1];
        if (v30 >= v14[-1].n128_u64[1])
        {
          if (v31 < v30)
          {
            v122 = *v14;
            *v14 = v14[1];
            v14[1] = v122;
            if (v14->n128_u64[1] < v14[-1].n128_u64[1])
            {
              v123 = *v18;
              *v18 = *v14;
              *v14 = v123;
            }
          }
        }

        else
        {
          if (v31 >= v30)
          {
            v124 = *v18;
            *v18 = *v14;
            *v14 = v124;
            if (v14[1].n128_u64[1] >= v14->n128_u64[1])
            {
              goto LABEL_60;
            }

            v121 = *v14;
            *v14 = v14[1];
          }

          else
          {
            v121 = *v18;
            *v18 = v14[1];
          }

          v14[1] = v121;
        }

LABEL_60:
        v125 = *v12;
        *v12 = *v14;
        result = v125;
        *v14 = v125;
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

LABEL_38:
        v23 = v12->n128_i64[1];
LABEL_62:
        v32 = 0;
        v33 = v12->n128_u64[0];
        do
        {
          v34 = v12[++v32].n128_i64[1];
        }

        while (v34 < v23);
        v35 = &v12[v32];
        v36 = a2;
        if (v32 == 1)
        {
          v39 = a2;
          while (v35 < v39)
          {
            v37 = v39 - 1;
            v40 = v39[-1].n128_i64[1];
            --v39;
            if (v40 < v23)
            {
              goto LABEL_70;
            }
          }

          v37 = v39;
          v12 = v35;
        }

        else
        {
          do
          {
            v37 = v36 - 1;
            v38 = v36[-1].n128_i64[1];
            --v36;
          }

          while (v38 >= v23);
LABEL_70:
          v12 = v35;
          if (v35 < v37)
          {
            v41 = v37;
            do
            {
              v126 = *v12;
              *v12 = *v41;
              result = v126;
              *v41 = v126;
              do
              {
                v42 = v12[1].n128_i64[1];
                ++v12;
              }

              while (v42 < v23);
              do
              {
                v43 = v41[-1].n128_i64[1];
                --v41;
              }

              while (v43 >= v23);
            }

            while (v12 < v41);
          }
        }

        v44 = v12 - 1;
        if (&v12[-1] != a1)
        {
          result = *v44;
          *a1 = *v44;
        }

        v12[-1].n128_u64[0] = v33;
        v12[-1].n128_u64[1] = v23;
        if (v35 >= v37)
        {
          break;
        }

LABEL_81:
        sub_2CF79C(a1, &v12[-1], a3, a4 & 1);
        a4 = 0;
      }

      v45 = sub_2D0494(a1, v12 - 1, result);
      if (sub_2D0494(v12, a2, v46))
      {
        break;
      }

      if (!v45)
      {
        goto LABEL_81;
      }
    }

    a2 = v12 - 1;
    if (!v45)
    {
      continue;
    }

    return result;
  }
}

__n128 sub_2D0310(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL sub_2D0494(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = a2 - 1;
      v7 = a1[1].n128_i64[1];
      v8 = a2[-1].n128_i64[1];
      if (v7 < a1->n128_u64[1])
      {
        if (v8 < v7)
        {
          v9 = *a1;
          *a1 = *v6;
          *v6 = v9;
          return 1;
        }

        v24 = *a1;
        *a1 = a1[1];
        a1[1] = v24;
        if (a2[-1].n128_u64[1] < a1[1].n128_u64[1])
        {
          v25 = a1[1];
          a1[1] = *v6;
          *v6 = v25;
          return 1;
        }

        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v19 = a1[1];
      a1[1] = *v6;
      *v6 = v19;
LABEL_49:
      if (a1[1].n128_u64[1] < a1->n128_u64[1])
      {
        v38 = *a1;
        *a1 = a1[1];
        a1[1] = v38;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        sub_2D0310(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      }

      goto LABEL_13;
    }

    v15 = a1[1].n128_i64[1];
    v16 = a1->n128_i64[1];
    v17 = a1[2].n128_i64[1];
    if (v15 >= v16)
    {
      if (v17 < v15)
      {
        v22 = a1[1];
        a1[1] = a1[2];
        a1[2] = v22;
        if (a1[1].n128_u64[1] < v16)
        {
          v23 = *a1;
          *a1 = a1[1];
          a1[1] = v23;
        }
      }

      goto LABEL_46;
    }

    if (v17 >= v15)
    {
      v35 = *a1;
      *a1 = a1[1];
      a1[1] = v35;
      if (v17 >= a1[1].n128_u64[1])
      {
        goto LABEL_46;
      }

      v18 = a1[1];
      a1[1] = a1[2];
    }

    else
    {
      v18 = *a1;
      *a1 = a1[2];
    }

    a1[2] = v18;
LABEL_46:
    if (a2[-1].n128_u64[1] >= a1[2].n128_u64[1])
    {
      return 1;
    }

    v36 = a1[2];
    a1[2] = a2[-1];
    a2[-1] = v36;
    if (a1[2].n128_u64[1] >= a1[1].n128_u64[1])
    {
      return 1;
    }

    v37 = a1[1];
    a1[1] = a1[2];
    a1[2] = v37;
    goto LABEL_49;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (a2[-1].n128_u64[1] < a1->n128_u64[1])
    {
      v4 = *a1;
      *a1 = a2[-1];
      a2[-1] = v4;
      return 1;
    }

    return 1;
  }

LABEL_13:
  v10 = a1 + 2;
  v11 = a1[1].n128_i64[1];
  v12 = a1->n128_i64[1];
  v13 = a1[2].n128_i64[1];
  if (v11 >= v12)
  {
    if (v13 < v11)
    {
      v20 = a1[1];
      a1[1] = *v10;
      *v10 = v20;
      if (a1[1].n128_u64[1] < v12)
      {
        v21 = *a1;
        *a1 = a1[1];
        a1[1] = v21;
      }
    }
  }

  else
  {
    if (v13 >= v11)
    {
      v26 = *a1;
      *a1 = a1[1];
      a1[1] = v26;
      if (v13 >= a1[1].n128_u64[1])
      {
        goto LABEL_32;
      }

      v14 = a1[1];
      a1[1] = *v10;
    }

    else
    {
      v14 = *a1;
      *a1 = *v10;
    }

    *v10 = v14;
  }

LABEL_32:
  v27 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v28 = 0;
  v29 = 0;
  while (1)
  {
    v30 = v27->n128_i64[1];
    if (v30 < v10->n128_u64[1])
    {
      break;
    }

LABEL_41:
    v10 = v27;
    v28 += 16;
    if (++v27 == a2)
    {
      return 1;
    }
  }

  v31 = v27->n128_u64[0];
  v32 = v28;
  do
  {
    *(a1 + v32 + 48) = *(a1 + v32 + 32);
    if (v32 == -32)
    {
      a1->n128_u64[0] = v31;
      a1->n128_u64[1] = v30;
      if (++v29 != 8)
      {
        goto LABEL_41;
      }

      return &v27[1] == a2;
    }

    v33 = *(&a1[1].n128_i64[1] + v32);
    v32 -= 16;
  }

  while (v30 < v33);
  v34 = a1 + v32;
  *(v34 + 6) = v31;
  *(v34 + 7) = v30;
  if (++v29 != 8)
  {
    goto LABEL_41;
  }

  return &v27[1] == a2;
}

void sub_2D07E8(uint64_t a1)
{
  LODWORD(v179) = 0;
  sub_2D1C68((a1 + 56), &v179, (a1 + 32));
  LODWORD(v177) = 1;
  *&v179 = 0;
  sub_2D1C68((a1 + 56), &v177, &v179);
  v2 = *(a1 + 56);
  v3 = *(a1 + 64);
  if (v2 != v3)
  {
    v5 = *(a1 + 88);
    v4 = *(a1 + 96);
    v6 = *(a1 + 24);
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 3) >= v6)
      {
        return;
      }

      v7 = *v2;
      v8 = *(v2 + 1);
      v9 = v3 - v2;
      if (v9 >= 2)
      {
        v10 = 0;
        v179 = *v2;
        v11 = v2;
        do
        {
          v12 = &v11[v10 + 1];
          v13 = (2 * v10) | 1;
          v14 = 2 * v10 + 2;
          if (v14 < v9)
          {
            v15 = *(v12 + 8);
            v16 = *(v12 + 24);
            v12 += 16 * (v15 > v16);
            if (v15 > v16)
            {
              v13 = v14;
            }
          }

          *v11 = *v12;
          v11 = v12;
          v10 = v13;
        }

        while (v13 <= ((v9 - 2) >> 1));
        v17 = v3 - 1;
        if (v12 == v17)
        {
          *v12 = v179;
        }

        else
        {
          *v12 = *v17;
          *v17 = v179;
          v18 = (v12 - v2 + 16) >> 4;
          v39 = v18 < 2;
          v19 = v18 - 2;
          if (!v39)
          {
            v20 = v19 >> 1;
            v21 = &v2[v19 >> 1];
            v22 = *(v12 + 8);
            if (*(v21 + 8) > v22)
            {
              v23 = *v12;
              do
              {
                v24 = v12;
                v12 = v21;
                *v24 = *v21;
                if (!v20)
                {
                  break;
                }

                v20 = (v20 - 1) >> 1;
                v21 = &v2[v20];
              }

              while (*(v21 + 8) > v22);
              *v12 = v23;
              *(v12 + 8) = v22;
            }
          }
        }

        v3 = *(a1 + 64);
      }

      *(a1 + 64) = v3 - 1;
      *(a1 + 48) = v8;
      if (v7)
      {
        sub_2D1DF0(a1, v7);
      }

      while (1)
      {
        v25 = *(a1 + 152);
        v26 = *(a1 + 160);
        if (v25 == v26)
        {
          break;
        }

        v27 = *(v25 + 1);
        if (v27 > *(a1 + 48))
        {
          break;
        }

        v28 = *v25;
        v29 = *(v25 + 2);
        if (v26 - v25 >= 25)
        {
          v30 = 0;
          v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - v25) >> 3);
          v179 = *v25;
          v180 = *(v25 + 2);
          v32 = v25;
          do
          {
            v34 = &v32[3 * v30 + 3];
            v35 = (2 * v30) | 1;
            v36 = 2 * v30 + 2;
            if (v36 < v31)
            {
              v37 = *(v34 + 8);
              v38 = *(v34 + 32);
              v39 = v37 <= v38;
              v40 = v37 <= v38 ? 0 : 24;
              v34 += v40;
              if (!v39)
              {
                v35 = v36;
              }
            }

            v33 = *v34;
            v32[2] = *(v34 + 16);
            *v32 = v33;
            v32 = v34;
            v30 = v35;
          }

          while (v35 <= ((v31 - 2) >> 1));
          v41 = v26 - 24;
          if (v34 == v41)
          {
            v51 = v179;
            *(v34 + 16) = v180;
            *v34 = v51;
          }

          else
          {
            v42 = *v41;
            *(v34 + 16) = *(v41 + 2);
            *v34 = v42;
            *v41 = v179;
            *(v41 + 2) = v180;
            v43 = v34 - v25 + 24;
            if (v43 >= 25)
            {
              v44 = (-2 - 0x5555555555555555 * (v43 >> 3)) >> 1;
              v45 = &v25[24 * v44];
              v46 = *(v34 + 8);
              if (*(v45 + 1) > v46)
              {
                v47 = *v34;
                v48 = *(v34 + 16);
                do
                {
                  v49 = v34;
                  v34 = v45;
                  v50 = *v45;
                  *(v49 + 16) = *(v45 + 2);
                  *v49 = v50;
                  if (!v44)
                  {
                    break;
                  }

                  v44 = (v44 - 1) >> 1;
                  v45 = &v25[24 * v44];
                }

                while (*(v45 + 1) > v46);
                *v34 = v47;
                *(v34 + 8) = v46;
                *(v34 + 16) = v48;
              }
            }
          }

          v26 = *(a1 + 160);
        }

        *(a1 + 160) = v26 - 24;
        v52 = *(a1 + 128);
        v53 = *(a1 + 136);
        if (v52 >= v53)
        {
          v57 = *(a1 + 120);
          v58 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v57) >> 3) + 1;
          if (v58 > 0xAAAAAAAAAAAAAAALL)
          {
LABEL_176:
            sub_1794();
          }

          v59 = 0xAAAAAAAAAAAAAAABLL * ((v53 - v57) >> 3);
          if (2 * v59 > v58)
          {
            v58 = 2 * v59;
          }

          if (v59 >= 0x555555555555555)
          {
            v60 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v60 = v58;
          }

          if (v60)
          {
            if (v60 <= 0xAAAAAAAAAAAAAAALL)
            {
              operator new();
            }

            goto LABEL_174;
          }

          v61 = (8 * ((v52 - v57) >> 3));
          *v61 = v28;
          v61[1] = v27;
          v61[2] = v29;
          v54 = v61 + 3;
          v62 = v61 - (v52 - v57);
          memcpy(v62, v57, v52 - v57);
          *(a1 + 120) = v62;
          *(a1 + 128) = v54;
          *(a1 + 136) = 0;
          if (v57)
          {
            operator delete(v57);
          }

          *(a1 + 128) = v54;
          v55 = *(a1 + 120);
          v56 = v54 - v55;
          if (v54 - v55 >= 25)
          {
LABEL_60:
            v63 = (-2 - 0x5555555555555555 * (v56 >> 3)) >> 1;
            v64 = (v55 + 24 * v63);
            v65 = *(v54 - 1);
            if (v64[2] > v65)
            {
              v66 = v54 - 3;
              v179 = *(v54 - 3);
              do
              {
                v67 = v66;
                v66 = v64;
                v68 = *v64;
                v67[2] = v64[2];
                *v67 = v68;
                if (!v63)
                {
                  break;
                }

                v63 = (v63 - 1) >> 1;
                v64 = (v55 + 24 * v63);
              }

              while (v64[2] > v65);
              *v66 = v179;
              v66[2] = v65;
            }
          }
        }

        else
        {
          *v52 = v28;
          *(v52 + 1) = v27;
          v54 = v52 + 24;
          *(v52 + 2) = v29;
          *(a1 + 128) = v52 + 24;
          v55 = *(a1 + 120);
          v56 = v54 - v55;
          if (v54 - v55 >= 25)
          {
            goto LABEL_60;
          }
        }
      }

      while (1)
      {
        v69 = *(a1 + 120);
        v70 = *(a1 + 128);
        if (v69 == v70)
        {
          break;
        }

        v71 = *(v69 + 2);
        if (v71 >= *(a1 + 48))
        {
          break;
        }

        v73 = *v69;
        v72 = *(v69 + 1);
        if (v70 - v69 >= 25)
        {
          v74 = 0;
          v75 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v69) >> 3);
          v179 = *v69;
          v180 = *(v69 + 2);
          v76 = v69;
          do
          {
            v78 = &v76[3 * v74 + 3];
            v79 = (2 * v74) | 1;
            v80 = 2 * v74 + 2;
            if (v80 < v75)
            {
              v81 = *(v78 + 16);
              v82 = *(v78 + 40);
              v83 = v81 <= v82;
              v84 = v81 <= v82 ? 0 : 24;
              v78 += v84;
              if (!v83)
              {
                v79 = v80;
              }
            }

            v77 = *v78;
            v76[2] = *(v78 + 16);
            *v76 = v77;
            v76 = v78;
            v74 = v79;
          }

          while (v79 <= ((v75 - 2) >> 1));
          v85 = v70 - 24;
          if (v78 == v85)
          {
            v93 = v179;
            *(v78 + 16) = v180;
            *v78 = v93;
          }

          else
          {
            v86 = *v85;
            *(v78 + 16) = *(v85 + 2);
            *v78 = v86;
            *v85 = v179;
            *(v85 + 2) = v180;
            v87 = v78 - v69 + 24;
            if (v87 >= 25)
            {
              v88 = (-2 - 0x5555555555555555 * (v87 >> 3)) >> 1;
              v89 = &v69[24 * v88];
              v90 = *(v78 + 16);
              if (*(v89 + 2) > v90)
              {
                v177 = *v78;
                do
                {
                  v91 = v78;
                  v78 = v89;
                  v92 = *v89;
                  *(v91 + 16) = *(v89 + 2);
                  *v91 = v92;
                  if (!v88)
                  {
                    break;
                  }

                  v88 = (v88 - 1) >> 1;
                  v89 = &v69[24 * v88];
                }

                while (*(v89 + 2) > v90);
                *v78 = v177;
                *(v78 + 16) = v90;
              }
            }
          }

          v70 = *(a1 + 128);
        }

        *(a1 + 128) = v70 - 24;
        v94 = *(a1 + 96);
        v95 = *(a1 + 104);
        if (v94 < v95)
        {
          *v94 = v73;
          *(v94 + 1) = v72;
          v96 = v94 + 24;
          *(v94 + 2) = v71;
          *(a1 + 96) = v94 + 24;
          v97 = *(a1 + 88);
          v98 = v96 - v97;
          if (v96 - v97 < 25)
          {
            continue;
          }

LABEL_102:
          v105 = (-2 - 0x5555555555555555 * (v98 >> 3)) >> 1;
          v106 = (v97 + 24 * v105);
          v107 = *(v96 - 2);
          if (v106[1] > v107)
          {
            v110 = *(v96 - 3);
            v109 = v96 - 3;
            v108 = v110;
            v111 = v109[2];
            do
            {
              v112 = v109;
              v109 = v106;
              v113 = *v106;
              v112[2] = v106[2];
              *v112 = v113;
              if (!v105)
              {
                break;
              }

              v105 = (v105 - 1) >> 1;
              v106 = (v97 + 24 * v105);
            }

            while (v106[1] > v107);
            *v109 = v108;
            v109[1] = v107;
            v109[2] = v111;
          }

          continue;
        }

        v99 = *(a1 + 88);
        v100 = 0xAAAAAAAAAAAAAAABLL * ((v94 - v99) >> 3) + 1;
        if (v100 > 0xAAAAAAAAAAAAAAALL)
        {
LABEL_175:
          sub_1794();
        }

        v101 = 0xAAAAAAAAAAAAAAABLL * ((v95 - v99) >> 3);
        if (2 * v101 > v100)
        {
          v100 = 2 * v101;
        }

        if (v101 >= 0x555555555555555)
        {
          v102 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v102 = v100;
        }

        if (v102)
        {
          if (v102 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          goto LABEL_174;
        }

        v103 = (8 * ((v94 - v99) >> 3));
        *v103 = v73;
        v103[1] = v72;
        v103[2] = v71;
        v96 = v103 + 3;
        v104 = v103 - (v94 - v99);
        memcpy(v104, v99, v94 - v99);
        *(a1 + 88) = v104;
        *(a1 + 96) = v96;
        *(a1 + 104) = 0;
        if (v99)
        {
          operator delete(v99);
        }

        *(a1 + 96) = v96;
        v97 = *(a1 + 88);
        v98 = v96 - v97;
        if (v96 - v97 >= 25)
        {
          goto LABEL_102;
        }
      }

      while (2)
      {
        v5 = *(a1 + 88);
        v4 = *(a1 + 96);
        v6 = *(a1 + 24);
        v114 = v70 - v69;
        if (v70 != v69)
        {
          v115 = 0xAAAAAAAAAAAAAAABLL * (v114 >> 3);
          if (v115 - 0x5555555555555555 * ((v4 - v5) >> 3) >= v6 && *(v69 + 1) < *(v69 + 2))
          {
            v116 = *v69;
            v178 = *(v69 + 2);
            v177 = v116;
            if (v114 >= 25)
            {
              v117 = 0;
              v118 = *v69;
              v180 = *(v69 + 2);
              v179 = v118;
              v119 = v69;
              do
              {
                v121 = &v119[3 * v117 + 3];
                v122 = (2 * v117) | 1;
                v123 = 2 * v117 + 2;
                if (v123 < v115)
                {
                  v124 = *(v121 + 16);
                  v125 = *(v121 + 40);
                  v126 = v124 <= v125;
                  v127 = v124 <= v125 ? 0 : 24;
                  v121 += v127;
                  if (!v126)
                  {
                    v122 = v123;
                  }
                }

                v120 = *v121;
                v119[2] = *(v121 + 16);
                *v119 = v120;
                v119 = v121;
                v117 = v122;
              }

              while (v122 <= ((v115 - 2) >> 1));
              v128 = v70 - 24;
              if (v121 == v128)
              {
                v137 = v179;
                *(v121 + 16) = v180;
                *v121 = v137;
              }

              else
              {
                v129 = *v128;
                *(v121 + 16) = *(v128 + 2);
                *v121 = v129;
                v130 = v179;
                *(v128 + 2) = v180;
                *v128 = v130;
                v131 = v121 - v69 + 24;
                if (v131 >= 25)
                {
                  v132 = (-2 - 0x5555555555555555 * (v131 >> 3)) >> 1;
                  v133 = &v69[24 * v132];
                  v134 = *(v121 + 16);
                  if (*(v133 + 2) > v134)
                  {
                    v181 = *v121;
                    do
                    {
                      v135 = v121;
                      v121 = v133;
                      v136 = *v133;
                      *(v135 + 16) = *(v133 + 2);
                      *v135 = v136;
                      if (!v132)
                      {
                        break;
                      }

                      v132 = (v132 - 1) >> 1;
                      v133 = &v69[24 * v132];
                    }

                    while (*(v133 + 2) > v134);
                    *v121 = v181;
                    *(v121 + 16) = v134;
                  }
                }
              }

              v70 = *(a1 + 128);
            }

            *(a1 + 128) = v70 - 24;
            v138 = sub_2D2528(a1, &v177);
            *&v181 = v138;
            v182 = v138;
            v139 = *(a1 + 48);
            if (v139 <= v138)
            {
              if (v139 >= v138)
              {
                v146 = *(a1 + 128);
                v145 = *(a1 + 136);
                if (v146 >= v145)
                {
                  v154 = *(a1 + 120);
                  v155 = 0xAAAAAAAAAAAAAAABLL * ((v146 - v154) >> 3) + 1;
                  if (v155 > 0xAAAAAAAAAAAAAAALL)
                  {
                    goto LABEL_176;
                  }

                  v156 = 0xAAAAAAAAAAAAAAABLL * ((v145 - v154) >> 3);
                  if (2 * v156 > v155)
                  {
                    v155 = 2 * v156;
                  }

                  if (v156 >= 0x555555555555555)
                  {
                    v157 = 0xAAAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v157 = v155;
                  }

                  if (v157)
                  {
                    if (v157 <= 0xAAAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

LABEL_174:
                    sub_1808();
                  }

                  v169 = (8 * ((v146 - v154) >> 3));
                  *v169 = v177;
                  v169[1] = v138;
                  v169[2] = v138;
                  v147 = v169 + 3;
                  v170 = v169 - (v146 - v154);
                  memcpy(v170, v154, v146 - v154);
                  *(a1 + 120) = v170;
                  *(a1 + 128) = v147;
                  *(a1 + 136) = 0;
                  if (v154)
                  {
                    operator delete(v154);
                  }

                  *(a1 + 128) = v147;
                  v148 = *(a1 + 120);
                  v149 = v147 - v148;
                  if (v147 - v148 < 25)
                  {
                    goto LABEL_108;
                  }
                }

                else
                {
                  *v146 = v177;
                  *(v146 + 1) = v138;
                  *(v146 + 2) = v138;
                  v147 = v146 + 24;
                  *(a1 + 128) = v146 + 24;
                  v148 = *(a1 + 120);
                  v149 = &v146[-v148 + 24];
                  if (v149 < 25)
                  {
                    goto LABEL_108;
                  }
                }

                v171 = (-2 - 0x5555555555555555 * (v149 >> 3)) >> 1;
                v172 = (v148 + 24 * v171);
                v173 = *(v147 - 1);
                if (v172[2] > v173)
                {
                  v174 = v147 - 3;
                  v179 = *(v147 - 3);
                  do
                  {
                    v175 = v174;
                    v174 = v172;
                    v176 = *v172;
                    v175[2] = v172[2];
                    *v175 = v176;
                    if (!v171)
                    {
                      break;
                    }

                    v171 = (v171 - 1) >> 1;
                    v172 = (v148 + 24 * v171);
                  }

                  while (v172[2] > v173);
                  *v174 = v179;
                  v174[2] = v173;
                }

                goto LABEL_108;
              }

              sub_2D2348(a1 + 152, &v177, &v181, &v182);
            }

            else
            {
              v141 = *(a1 + 96);
              v140 = *(a1 + 104);
              if (v141 >= v140)
              {
                v150 = *(a1 + 88);
                v151 = 0xAAAAAAAAAAAAAAABLL * ((v141 - v150) >> 3) + 1;
                if (v151 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_175;
                }

                v152 = 0xAAAAAAAAAAAAAAABLL * ((v140 - v150) >> 3);
                if (2 * v152 > v151)
                {
                  v151 = 2 * v152;
                }

                if (v152 >= 0x555555555555555)
                {
                  v153 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v153 = v151;
                }

                if (v153)
                {
                  if (v153 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  goto LABEL_174;
                }

                v158 = (8 * ((v141 - v150) >> 3));
                *v158 = v177;
                v158[1] = v138;
                v158[2] = v138;
                v142 = v158 + 3;
                v159 = v158 - (v141 - v150);
                memcpy(v159, v150, v141 - v150);
                *(a1 + 88) = v159;
                *(a1 + 96) = v142;
                *(a1 + 104) = 0;
                if (v150)
                {
                  operator delete(v150);
                }

                *(a1 + 96) = v142;
                v143 = *(a1 + 88);
                v144 = v142 - v143;
                if (v142 - v143 >= 25)
                {
LABEL_160:
                  v160 = (-2 - 0x5555555555555555 * (v144 >> 3)) >> 1;
                  v161 = (v143 + 24 * v160);
                  v162 = *(v142 - 2);
                  if (v161[1] > v162)
                  {
                    v165 = *(v142 - 3);
                    v164 = v142 - 3;
                    v163 = v165;
                    v166 = v164[2];
                    do
                    {
                      v167 = v164;
                      v164 = v161;
                      v168 = *v161;
                      v167[2] = v161[2];
                      *v167 = v168;
                      if (!v160)
                      {
                        break;
                      }

                      v160 = (v160 - 1) >> 1;
                      v161 = (v143 + 24 * v160);
                    }

                    while (v161[1] > v162);
                    *v164 = v163;
                    v164[1] = v162;
                    v164[2] = v166;
                  }
                }
              }

              else
              {
                *v141 = v177;
                *(v141 + 1) = v138;
                *(v141 + 2) = v138;
                v142 = v141 + 24;
                *(a1 + 96) = v141 + 24;
                v143 = *(a1 + 88);
                v144 = &v141[-v143 + 24];
                if (v144 >= 25)
                {
                  goto LABEL_160;
                }
              }
            }

LABEL_108:
            v69 = *(a1 + 120);
            v70 = *(a1 + 128);
            continue;
          }
        }

        break;
      }

      v2 = *(a1 + 56);
      v3 = *(a1 + 64);
    }

    while (v2 != v3);
  }
}

void sub_2D1498(void *a1@<X0>, void **a2@<X8>)
{
  v4 = a1[15];
  for (i = a1[16]; v4 != i; i = a1[16])
  {
    v6 = *v4;
    v101 = *(v4 + 16);
    v100 = v6;
    if (i - v4 >= 25)
    {
      v7 = 0;
      v8 = 0xAAAAAAAAAAAAAAABLL * ((i - v4) >> 3);
      v103 = *v4;
      v104 = *(v4 + 16);
      v9 = v4;
      do
      {
        v11 = v9 + 24 * v7 + 24;
        v12 = (2 * v7) | 1;
        v13 = 2 * v7 + 2;
        if (v13 < v8)
        {
          v14 = *(v11 + 16);
          v15 = *(v11 + 40);
          v16 = v14 <= v15;
          v17 = v14 <= v15 ? 0 : 24;
          v11 += v17;
          if (!v16)
          {
            v12 = v13;
          }
        }

        v10 = *v11;
        *(v9 + 16) = *(v11 + 16);
        *v9 = v10;
        v9 = v11;
        v7 = v12;
      }

      while (v12 <= ((v8 - 2) >> 1));
      v18 = (i - 24);
      if (v11 == v18)
      {
        v26 = v103;
        *(v11 + 16) = v104;
        *v11 = v26;
      }

      else
      {
        v19 = *v18;
        *(v11 + 16) = *(v18 + 2);
        *v11 = v19;
        *v18 = v103;
        *(v18 + 2) = v104;
        v20 = v11 - v4 + 24;
        if (v20 >= 25)
        {
          v21 = (-2 - 0x5555555555555555 * (v20 >> 3)) >> 1;
          v22 = v4 + 24 * v21;
          v23 = *(v11 + 16);
          if (*(v22 + 16) > v23)
          {
            v102 = *v11;
            do
            {
              v24 = v11;
              v11 = v22;
              v25 = *v22;
              *(v24 + 16) = *(v22 + 16);
              *v24 = v25;
              if (!v21)
              {
                break;
              }

              v21 = (v21 - 1) >> 1;
              v22 = v4 + 24 * v21;
            }

            while (*(v22 + 16) > v23);
            *v11 = v102;
            *(v11 + 16) = v23;
          }
        }
      }

      i = a1[16];
    }

    a1[16] = i - 24;
    *&v103 = sub_2D2528(a1, &v100);
    if (v103 <= a1[4])
    {
      sub_2D2348((a1 + 11), &v100, &v103, &v103);
    }

    v4 = a1[15];
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[3])
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    while (1)
    {
      v29 = a1[12];
      v30 = a1[11];
      if (v30 == v29)
      {
        break;
      }

      v31 = *v30;
      v101 = *(v30 + 16);
      v100 = v31;
      if (v29 - v30 >= 25)
      {
        v32 = 0;
        v33 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v30) >> 3);
        v34 = *v30;
        v104 = *(v30 + 16);
        v103 = v34;
        v35 = v30;
        do
        {
          v37 = v35 + 24 * v32 + 24;
          v38 = (2 * v32) | 1;
          v39 = 2 * v32 + 2;
          if (v39 < v33)
          {
            v40 = *(v37 + 8);
            v41 = *(v37 + 32);
            v42 = v40 <= v41;
            v43 = v40 <= v41 ? 0 : 24;
            v37 += v43;
            if (!v42)
            {
              v38 = v39;
            }
          }

          v36 = *v37;
          *(v35 + 16) = *(v37 + 16);
          *v35 = v36;
          v35 = v37;
          v32 = v38;
        }

        while (v38 <= ((v33 - 2) >> 1));
        v44 = (v29 - 24);
        if (v37 == v44)
        {
          v55 = v103;
          *(v37 + 16) = v104;
          *v37 = v55;
        }

        else
        {
          v45 = *v44;
          *(v37 + 16) = *(v44 + 2);
          *v37 = v45;
          v46 = v103;
          *(v44 + 2) = v104;
          *v44 = v46;
          v47 = v37 - v30 + 24;
          if (v47 >= 25)
          {
            v48 = (-2 - 0x5555555555555555 * (v47 >> 3)) >> 1;
            v49 = v30 + 24 * v48;
            v50 = *(v37 + 8);
            if (*(v49 + 8) > v50)
            {
              v51 = *v37;
              v52 = *(v37 + 16);
              do
              {
                v53 = v37;
                v37 = v49;
                v54 = *v49;
                *(v53 + 16) = *(v49 + 16);
                *v53 = v54;
                if (!v48)
                {
                  break;
                }

                v48 = (v48 - 1) >> 1;
                v49 = v30 + 24 * v48;
              }

              while (*(v49 + 8) > v50);
              *v37 = v51;
              *(v37 + 8) = v50;
              *(v37 + 16) = v52;
            }
          }
        }

        v29 = a1[12];
      }

      a1[12] = v29 - 24;
      v56 = *(&v100 + 1);
      if (*(&v100 + 1) == v101)
      {
        v58 = a2[1];
        v57 = a2[2];
        if (v58 < v57)
        {
          *v58 = v100;
          v58[1] = v56;
          v28 = v58 + 2;
        }

        else
        {
          v59 = *a2;
          v60 = v58 - *a2;
          v61 = (v60 >> 4) + 1;
          if (v61 >> 60)
          {
            sub_1794();
          }

          v62 = v57 - v59;
          if (v62 >> 3 > v61)
          {
            v61 = v62 >> 3;
          }

          if (v62 >= 0x7FFFFFFFFFFFFFF0)
          {
            v63 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v63 = v61;
          }

          if (v63)
          {
            if (!(v63 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v64 = (16 * (v60 >> 4));
          *v64 = v100;
          v64[1] = v56;
          v28 = v64 + 2;
          memcpy(0, v59, v60);
          *a2 = 0;
          a2[2] = 0;
          if (v59)
          {
            operator delete(v59);
          }
        }

        a2[1] = v28;
        v27 = v101;
        if (a1[3] <= ((v28 - *a2) >> 4))
        {
          break;
        }
      }

      else
      {
        *&v103 = sub_2D2528(a1, &v100);
        sub_2D2348((a1 + 11), &v100, &v103, &v103);
        if (a1[3] <= ((a2[1] - *a2) >> 4))
        {
          break;
        }
      }
    }
  }

  else
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v65 = a1[11];
  for (j = a1[12]; v65 != j; j = a1[12])
  {
    if (*(v65 + 8) != v27)
    {
      break;
    }

    v68 = *v65;
    v101 = *(v65 + 16);
    v100 = v68;
    if (j - v65 >= 25)
    {
      v69 = 0;
      v70 = 0xAAAAAAAAAAAAAAABLL * ((j - v65) >> 3);
      v103 = *v65;
      v104 = *(v65 + 16);
      v71 = v65;
      do
      {
        v73 = v71 + 24 * v69 + 24;
        v74 = (2 * v69) | 1;
        v75 = 2 * v69 + 2;
        if (v75 < v70)
        {
          v76 = *(v73 + 8);
          v77 = *(v73 + 32);
          v78 = v76 <= v77;
          v79 = v76 <= v77 ? 0 : 24;
          v73 += v79;
          if (!v78)
          {
            v74 = v75;
          }
        }

        v72 = *v73;
        *(v71 + 16) = *(v73 + 16);
        *v71 = v72;
        v71 = v73;
        v69 = v74;
      }

      while (v74 <= ((v70 - 2) >> 1));
      v80 = (j - 24);
      if (v73 == v80)
      {
        v90 = v103;
        *(v73 + 16) = v104;
        *v73 = v90;
      }

      else
      {
        v81 = *v80;
        *(v73 + 16) = *(v80 + 2);
        *v73 = v81;
        *v80 = v103;
        *(v80 + 2) = v104;
        v82 = v73 - v65 + 24;
        if (v82 >= 25)
        {
          v83 = (-2 - 0x5555555555555555 * (v82 >> 3)) >> 1;
          v84 = v65 + 24 * v83;
          v85 = *(v73 + 8);
          if (*(v84 + 8) > v85)
          {
            v86 = *v73;
            v87 = *(v73 + 16);
            do
            {
              v88 = v73;
              v73 = v84;
              v89 = *v84;
              *(v88 + 16) = *(v84 + 16);
              *v88 = v89;
              if (!v83)
              {
                break;
              }

              v83 = (v83 - 1) >> 1;
              v84 = v65 + 24 * v83;
            }

            while (*(v84 + 8) > v85);
            *v73 = v86;
            *(v73 + 8) = v85;
            *(v73 + 16) = v87;
          }
        }
      }

      j = a1[12];
    }

    a1[12] = j - 24;
    v91 = *(&v100 + 1);
    if (*(&v100 + 1) == v101)
    {
      v93 = a2[1];
      v92 = a2[2];
      if (v93 < v92)
      {
        *v93 = v100;
        v93[1] = v91;
        v67 = v93 + 2;
      }

      else
      {
        v94 = *a2;
        v95 = v93 - *a2;
        v96 = (v95 >> 4) + 1;
        if (v96 >> 60)
        {
          sub_1794();
        }

        v97 = v92 - v94;
        if (v97 >> 3 > v96)
        {
          v96 = v97 >> 3;
        }

        if (v97 >= 0x7FFFFFFFFFFFFFF0)
        {
          v98 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v98 = v96;
        }

        if (v98)
        {
          if (!(v98 >> 60))
          {
            operator new();
          }

          sub_1808();
        }

        v99 = (16 * (v95 >> 4));
        *v99 = v100;
        v99[1] = v91;
        v67 = v99 + 2;
        memcpy(0, v94, v95);
        *a2 = 0;
        a2[2] = 0;
        if (v94)
        {
          operator delete(v94);
        }
      }

      a2[1] = v67;
    }

    else
    {
      *&v103 = sub_2D2528(a1, &v100);
      sub_2D2348((a1 + 11), &v100, &v103, &v103);
    }

    v65 = a1[11];
  }
}

void sub_2D1C38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2D1C68(char **a1, _DWORD *a2, uint64_t *a3)
{
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v9 = *a1;
    v10 = v5 - *a1;
    v11 = v10 >> 4;
    v12 = (v10 >> 4) + 1;
    if (v12 >> 60)
    {
      sub_1794();
    }

    v13 = v6 - v9;
    if (v13 >> 3 > v12)
    {
      v12 = v13 >> 3;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v14 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (!(v14 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v15 = 16 * v11;
    v16 = *a3;
    *v15 = *a2;
    *(v15 + 8) = v16;
    v8 = 16 * v11 + 16;
    memcpy(0, v9, v10);
    *a1 = 0;
    a1[1] = v8;
    a1[2] = 0;
    if (v9)
    {
      operator delete(v9);
    }
  }

  else
  {
    v7 = *a3;
    *v5 = *a2;
    *(v5 + 8) = v7;
    v8 = v5 + 16;
  }

  a1[1] = v8;
  v17 = *a1;
  v18 = (v8 - *a1) >> 4;
  v19 = v18 < 2;
  v20 = v18 - 2;
  if (!v19)
  {
    v21 = v20 >> 1;
    v22 = &v17[16 * (v20 >> 1)];
    v23 = *(v8 - 8);
    if (*(v22 + 1) > v23)
    {
      v26 = *(v8 - 16);
      v25 = (v8 - 16);
      v24 = v26;
      do
      {
        v27 = v25;
        v25 = v22;
        *v27 = *v22;
        if (!v21)
        {
          break;
        }

        v21 = (v21 - 1) >> 1;
        v22 = &v17[16 * v21];
      }

      while (*(v22 + 1) > v23);
      *v25 = v24;
      *(v25 + 1) = v23;
    }
  }
}

void sub_2D1DF0(uint64_t *a1, unsigned int a2)
{
  if (sub_57A90(a2) <= 0x1D)
  {
    v4 = sub_57A90(a2);
    v5 = sub_57A90(a2);
    if (v4 <= 0x1D && v5 >> 1 <= v4 >> 1)
    {
      sub_57A90(a2);
      operator new();
    }
  }

  v6 = sub_2CBE14(*a1, a2);
  if (v6)
  {
    v7 = 0;
    while (1)
    {
      v31 = __PAIR64__(v7, a2);
      v9 = *(a1[2] + 24);
      if (!v9)
      {
        sub_2B7420();
      }

      if (!(*(*v9 + 48))(v9, &v31))
      {
        goto LABEL_9;
      }

      *&v34 = sub_2CA00C(*a1, v31);
      *(&v34 + 1) = v10;
      v11 = sub_2D2764(a1, &v34);
      v32 = v12;
      v33 = v11;
      v13 = a1[6];
      if (v13 > v12)
      {
        break;
      }

      if (v13 < v11)
      {
        v8 = (a1 + 19);
        goto LABEL_8;
      }

      v15 = a1[16];
      v14 = a1[17];
      if (v15 >= v14)
      {
        v19 = a1[15];
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v19) >> 3) + 1;
        if (v20 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v21 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v19) >> 3);
        if (2 * v21 > v20)
        {
          v20 = 2 * v21;
        }

        if (v21 >= 0x555555555555555)
        {
          v22 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v22 = v20;
        }

        if (v22)
        {
          if (v22 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v23 = (8 * ((v15 - v19) >> 3));
        *v23 = v31;
        v23[1] = v11;
        v23[2] = v12;
        v16 = v23 + 3;
        v24 = v23 - (v15 - v19);
        memcpy(v24, v19, v15 - v19);
        a1[15] = v24;
        a1[16] = v16;
        a1[17] = 0;
        if (v19)
        {
          operator delete(v19);
        }

        a1[16] = v16;
        v17 = a1[15];
        v18 = v16 - v17;
        if (v16 - v17 < 25)
        {
          goto LABEL_9;
        }

LABEL_30:
        v25 = (-2 - 0x5555555555555555 * (v18 >> 3)) >> 1;
        v26 = v17 + 24 * v25;
        v27 = *(v16 - 1);
        if (*(v26 + 16) > v27)
        {
          v28 = v16 - 3;
          v34 = *(v16 - 3);
          do
          {
            v29 = v28;
            v28 = v26;
            v30 = *v26;
            v29[2] = *(v26 + 16);
            *v29 = v30;
            if (!v25)
            {
              break;
            }

            v25 = (v25 - 1) >> 1;
            v26 = v17 + 24 * v25;
          }

          while (*(v26 + 16) > v27);
          *v28 = v34;
          v28[2] = v27;
        }

        goto LABEL_9;
      }

      *v15 = v31;
      *(v15 + 1) = v11;
      *(v15 + 2) = v12;
      v16 = v15 + 24;
      a1[16] = (v15 + 24);
      v17 = a1[15];
      v18 = &v15[-v17 + 24];
      if (v18 >= 25)
      {
        goto LABEL_30;
      }

LABEL_9:
      if (++v7 == v6)
      {
        return;
      }
    }

    v8 = (a1 + 11);
LABEL_8:
    sub_2D2348(v8, &v31, &v33, &v32);
    goto LABEL_9;
  }
}

void sub_2D2348(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a1] >> 3);
    v12 = v11 + 1;
    if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x555555555555555)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v15 = (8 * (&v5[-*a1] >> 3));
    v16 = *a3;
    v17 = *a4;
    *v15 = *a2;
    v15[1] = v16;
    v15[2] = v17;
    v9 = 24 * v11 + 24;
    v18 = 24 * v11 - (v5 - v10);
    memcpy(v15 - (v5 - v10), v10, v5 - v10);
    *a1 = v18;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v10)
    {
      operator delete(v10);
    }
  }

  else
  {
    v7 = *a3;
    v8 = *a4;
    *v5 = *a2;
    *(v5 + 1) = v7;
    *(v5 + 2) = v8;
    v9 = (v5 + 24);
  }

  *(a1 + 8) = v9;
  v19 = *a1;
  v20 = v9 - *a1;
  if (v20 >= 25)
  {
    v21 = (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) - 2) >> 1;
    v22 = &v19[24 * v21];
    v23 = *(v9 - 16);
    if (v22[1] > v23)
    {
      v26 = *(v9 - 24);
      v25 = (v9 - 24);
      v24 = v26;
      v27 = v25[2];
      do
      {
        v28 = v25;
        v25 = v22;
        v29 = *v22;
        v28[2] = v22[2];
        *v28 = v29;
        if (!v21)
        {
          break;
        }

        v21 = (v21 - 1) >> 1;
        v22 = &v19[24 * v21];
      }

      while (v22[1] > v23);
      *v25 = v24;
      v25[1] = v23;
      v25[2] = v27;
    }
  }
}

uint64_t sub_2D2528(uint64_t a1, unint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  v5 = sub_2C9E38(*a1, *a2, 1);
  if (v5 && (v6 = &v5[-*v5], *v6 >= 5u) && *(v6 + 2))
  {
    sub_2CB974(v3, v4, &__p);
  }

  else
  {
    v9 = sub_2CA308(v3, v4);
    v10 = &v9[*&v9[-*v9 + 16]];
    sub_2CBB58(&v10[*v10], &__p);
  }

  sub_2CCAE0(&__p, *(a1 + 8), *(a1 + 40), v28, v7, v8);
  v11 = v28[0] * 100.0;
  if (v28[0] * 100.0 >= 0.0)
  {
    v12 = v28[0] * 100.0;
    if (v11 >= 4.50359963e15)
    {
      goto LABEL_12;
    }

    v13 = (v11 + v11) + 1;
  }

  else
  {
    v12 = v28[0] * 100.0;
    if (v11 <= -4.50359963e15)
    {
      goto LABEL_12;
    }

    v13 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
  }

  v12 = (v13 >> 1);
LABEL_12:
  if (v12 < 9.22337204e18)
  {
    if (v11 >= 0.0)
    {
      if (v11 >= 4.50359963e15)
      {
        goto LABEL_21;
      }

      v14 = (v11 + v11) + 1;
    }

    else
    {
      if (v11 <= -4.50359963e15)
      {
        goto LABEL_21;
      }

      v14 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
    }

    v11 = (v14 >> 1);
LABEL_21:
    v15 = v11;
    v16 = __p;
    if (!__p)
    {
      return v15;
    }

    goto LABEL_22;
  }

  v15 = 0x7FFFFFFFFFFFFFFELL;
  v16 = __p;
  if (!__p)
  {
    return v15;
  }

LABEL_22:
  v17 = v30;
  v18 = v16;
  if (v30 != v16)
  {
    v19 = v30;
    do
    {
      v22 = *(v19 - 3);
      v19 -= 3;
      v21 = v22;
      if (v22)
      {
        v23 = *(v17 - 2);
        v20 = v21;
        if (v23 != v21)
        {
          v24 = *(v17 - 2);
          do
          {
            v26 = *(v24 - 3);
            v24 -= 24;
            v25 = v26;
            if (v26)
            {
              *(v23 - 2) = v25;
              operator delete(v25);
            }

            v23 = v24;
          }

          while (v24 != v21);
          v20 = *v19;
        }

        *(v17 - 2) = v21;
        operator delete(v20);
      }

      v17 = v19;
    }

    while (v19 != v16);
    v18 = __p;
  }

  v30 = v16;
  operator delete(v18);
  return v15;
}

void sub_2D2750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_52FF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2D2764(uint64_t a1, unsigned int *a2)
{
  v4 = sub_340A8(a2, *(a1 + 8), *(a1 + 40));
  v5 = *(a1 + 40);
  v6 = sub_32DBC(a2);
  if (v5 != 1)
  {
    v11 = sub_32DA0(a2);
    v12 = HIDWORD(v11);
    if (v11 != v6 || HIDWORD(v6) != v12)
    {
      v13 = exp(3.14159265 - HIDWORD(v6) * 6.28318531 / 4294967300.0);
      v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
      v15 = exp(3.14159265 - v12 * 6.28318531 / 4294967300.0);
      v16 = atan((v15 - 1.0 / v15) * 0.5) * 57.2957795 * 3.14159265 / 180.0;
      v17 = tan(v16 * 0.5 + 0.785398163);
      v18 = tan(v14 * 0.5 + 0.785398163);
      if (log(v17 / v18) == 0.0)
      {
        cos(v14);
      }
    }

    v19 = v4 * 100.0;
    if (v4 * 100.0 >= 0.0)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  v7 = (sub_32DA0(a2) >> 1) + (v6 >> 1);
  v8 = sub_32DA0(a2) >> 33;
  v9 = (sub_32DBC(a2) >> 33) + v8;
  if (**(a1 + 8) >= v7)
  {
    sub_32DBC(a2);
    v10 = a2;
    if (*(*(a1 + 8) + 4) >= v9)
    {
      goto LABEL_4;
    }
  }

  else
  {
    sub_32DA0(a2);
    v10 = a2;
    if (*(*(a1 + 8) + 4) >= v9)
    {
LABEL_4:
      sub_32DA0(v10);
      goto LABEL_11;
    }
  }

  sub_32DBC(v10);
LABEL_11:
  v19 = v4 * 100.0;
  if (v4 * 100.0 >= 0.0)
  {
LABEL_12:
    v20 = v19;
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_18;
    }

    v21 = (v19 + v19) + 1;
    goto LABEL_17;
  }

LABEL_15:
  v20 = v19;
  if (v19 <= -4.50359963e15)
  {
    goto LABEL_18;
  }

  v21 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
LABEL_17:
  v20 = (v21 >> 1);
LABEL_18:
  if (v20 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v19 >= 0.0)
  {
    if (v19 < 4.50359963e15)
    {
      v22 = (v19 + v19) + 1;
      return (v22 >> 1);
    }
  }

  else if (v19 > -4.50359963e15)
  {
    v22 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
    return (v22 >> 1);
  }

  return v19;
}

void *sub_2D2BA0(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_2D2D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v12;
    operator delete(v12);
  }

  *(v9 + 8) = v10;
  sub_35390(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_2D2D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 24);
  if (v6)
  {
    if (v6 == a3)
    {
      v9 = v8;
      (*(*v6 + 24))(v6, v8);
    }

    else
    {
      v9 = (*(*v6 + 16))(v6);
    }
  }

  else
  {
    v9 = 0;
  }

  while (v4 != v5)
  {
    if (!v9)
    {
      sub_2B7420();
    }

    if ((*(*v9 + 48))(v9, v4))
    {
      sub_2512DC(a2, v4);
    }

    ++v4;
  }

  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
  }

  else if (v9)
  {
    (*(*v9 + 40))();
  }

  return a2;
}

void sub_2D2ED4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2D2EFC(va);
  _Unwind_Resume(a1);
}

void sub_2D2EE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2D2EFC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2D2EFC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
    return a1;
  }

  else
  {
    if (v2)
    {
      (*(*v2 + 40))(v2);
    }

    return a1;
  }
}

uint64_t sub_2D2F88(uint64_t a1, unint64_t *a2, _DWORD *a3)
{
  v41[0] = sub_2CA00C(a1, *a2);
  v41[1] = v6;
  if (sub_32A18(v41, a3))
  {
    v7 = *a2;
    v8 = sub_2C9E38(a1, v7, 1);
    if (v8 && (v9 = &v8[-*v8], *v9 >= 5u) && *(v9 + 2))
    {
      sub_2CB974(a1, v7, &__p);
      v13 = __p;
      v14 = v40;
      if (__p == v40)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v17 = sub_2CA308(a1, v7);
      v18 = &v17[*&v17[-*v17 + 16]];
      sub_2CBB58(&v18[*v18], &__p);
      v13 = __p;
      v14 = v40;
      if (__p == v40)
      {
LABEL_6:
        v15 = 0;
        v16 = v13;
        if (!v13)
        {
          return v15;
        }

        goto LABEL_40;
      }
    }

    v19 = a3[1];
    LODWORD(v10) = *a3;
    v20 = v10;
    v21 = v13;
    while (1)
    {
      v22 = *v21;
      v23 = v21[1];
      if (*v21 != v23)
      {
        v24 = 0;
        do
        {
          v25 = v22[1];
          v26 = (*v22 + 12);
          if (*v22 != v25 && v26 != v25)
          {
            do
            {
              v28 = *(v26 - 2);
              v29 = v26[1];
              if (v28 < v19 != v29 < v19)
              {
                LODWORD(v11) = *v26;
                LODWORD(v12) = *(v26 - 3);
                v12 = *&v12;
                v11 = (v19 - v28) / (v29 - v28) * (*&v11 - v12) + v12;
                if (v11 < v20)
                {
                  v24 ^= 1u;
                }
              }

              v26 += 3;
            }

            while (v26 != v25);
          }

          v22 += 3;
        }

        while (v22 != v23);
        if (v24)
        {
          break;
        }
      }

      v21 += 3;
      if (v21 == v14)
      {
        v15 = 0;
        if (!v13)
        {
          return v15;
        }

        goto LABEL_29;
      }
    }

    v15 = 1;
    if (!v13)
    {
      return v15;
    }

LABEL_29:
    v30 = v14;
    do
    {
      v33 = *(v30 - 3);
      v30 -= 3;
      v32 = v33;
      if (v33)
      {
        v34 = *(v14 - 2);
        v31 = v32;
        if (v34 != v32)
        {
          v35 = *(v14 - 2);
          do
          {
            v37 = *(v35 - 3);
            v35 -= 24;
            v36 = v37;
            if (v37)
            {
              *(v34 - 2) = v36;
              operator delete(v36);
            }

            v34 = v35;
          }

          while (v35 != v32);
          v31 = *v30;
        }

        *(v14 - 2) = v32;
        operator delete(v31);
      }

      v14 = v30;
    }

    while (v30 != v13);
    v16 = __p;
LABEL_40:
    v40 = v13;
    operator delete(v16);
    return v15;
  }

  return 0;
}

uint64_t sub_2D31D4(uint64_t result, int8x16_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) >= (v10->u32[1] | (v10->u32[0] << 32)))
        {
          return result;
        }

        v84 = v10->i64[0];
        goto LABEL_116;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_2D3B48(v10, &v10->u32[2], &v10[1], &a2[-1].u32[2]);
    }

    if (v11 == 5)
    {
      result = sub_2D3B48(v10, &v10->u32[2], &v10[1], &v10[1].u32[2]);
      if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) < (v10[1].u32[3] | (v10[1].u32[2] << 32)))
      {
        v78 = v10[1].i64[1];
        v10[1].i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v78;
        if ((v10[1].u32[3] | (v10[1].u32[2] << 32)) < (v10[1].u32[1] | (v10[1].u32[0] << 32)))
        {
          v80 = v10[1].i64[0];
          v79 = v10[1].i64[1];
          v10[1].i64[0] = v79;
          v10[1].i64[1] = v80;
          v81 = __ROR8__(v79, 32);
          if (v81 < (v10->u32[3] | (v10->u32[2] << 32)))
          {
            v82 = v10->i64[1];
            v10->i64[1] = v79;
            v10[1].i64[0] = v82;
            if (v81 < (v10->u32[1] | (v10->u32[0] << 32)))
            {
              v83 = v10->i64[0];
              v10->i64[0] = v79;
              v10->i64[1] = v83;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v87 = &v10->u64[1];
      v89 = v10 == a2 || v87 == a2;
      if (a5)
      {
        if (!v89)
        {
          v90 = 0;
          v91 = v10;
          do
          {
            v93 = v91->u32[2];
            v94 = v91->u32[3];
            v95 = v91->u32[0];
            v96 = v91->u32[1];
            v91 = v87;
            if ((v94 | (v93 << 32)) < (v96 | (v95 << 32)))
            {
              v97 = v87->i64[0];
              v98 = __ROR8__(v91->i64[0], 32);
              v99 = v90;
              do
              {
                *(&v10->i64[1] + v99) = *(v10->i64 + v99);
                if (!v99)
                {
                  v92 = v10;
                  goto LABEL_131;
                }

                v100 = *(&v10->u32[-1] + v99) | (*(&v10->u32[-2] + v99) << 32);
                v99 -= 8;
              }

              while (v98 < v100);
              v92 = (&v10->i64[1] + v99);
LABEL_131:
              *v92 = v97;
            }

            v87 = &v91->u64[1];
            v90 += 8;
          }

          while (&v91->u64[1] != a2);
        }
      }

      else if (!v89)
      {
        do
        {
          v102 = v9->u32[2];
          v103 = v9->u32[3];
          v104 = v9->u32[0];
          v105 = v9->u32[1];
          v9 = v87;
          if ((v103 | (v102 << 32)) < (v105 | (v104 << 32)))
          {
            v106 = v87->i64[0];
            v107 = __ROR8__(v87->i64[0], 32);
            do
            {
              v108 = v87;
              v109 = v87[-1].i64[1];
              v87 = (v87 - 8);
              *v108 = v109;
            }

            while (v107 < (*(v108 - 3) | (*(v108 - 4) << 32)));
            v87->i64[0] = v106;
          }

          v87 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_2D3FD0(v10, a2, a2, a3);
      }

      return result;
    }

    v12 = v10 + 2 * (v11 >> 1);
    v13 = a2[-1].u32[3] | (a2[-1].u32[2] << 32);
    if (v11 < 0x81)
    {
      v16 = v10->u32[1] | (v10->u32[0] << 32);
      if (v16 < (v12[1] | (*v12 << 32)))
      {
        v17 = *v12;
        if (v13 < v16)
        {
          *v12 = a2[-1].i64[1];
          goto LABEL_37;
        }

        *v12 = v10->i64[0];
        v10->i64[0] = v17;
        if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) < __ROR8__(v17, 32))
        {
          v10->i64[0] = a2[-1].i64[1];
LABEL_37:
          a2[-1].i64[1] = v17;
        }

LABEL_38:
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      if (v13 >= v16)
      {
        goto LABEL_38;
      }

      v20 = v10->i64[0];
      v10->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v20;
      if ((v10->u32[1] | (v10->u32[0] << 32)) >= (v12[1] | (*v12 << 32)))
      {
        goto LABEL_38;
      }

      v21 = *v12;
      *v12 = v10->i64[0];
      v10->i64[0] = v21;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_63;
      }

      goto LABEL_39;
    }

    v14 = v12[1] | (*v12 << 32);
    if (v14 >= (v10->u32[1] | (v10->u32[0] << 32)))
    {
      if (v13 < v14)
      {
        v18 = *v12;
        *v12 = a2[-1].i64[1];
        a2[-1].i64[1] = v18;
        if ((v12[1] | (*v12 << 32)) < (v10->u32[1] | (v10->u32[0] << 32)))
        {
          v19 = v10->i64[0];
          v10->i64[0] = *v12;
          *v12 = v19;
        }
      }
    }

    else
    {
      v15 = v10->i64[0];
      if (v13 >= v14)
      {
        v10->i64[0] = *v12;
        *v12 = v15;
        if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) >= __ROR8__(v15, 32))
        {
          goto LABEL_29;
        }

        *v12 = a2[-1].i64[1];
      }

      else
      {
        v10->i64[0] = a2[-1].i64[1];
      }

      a2[-1].i64[1] = v15;
    }

LABEL_29:
    v22 = v12 - 2;
    v23 = *(v12 - 1) | (*(v12 - 2) << 32);
    v24 = a2[-1].u32[1] | (a2[-1].u32[0] << 32);
    if (v23 >= (v10->u32[3] | (v10->u32[2] << 32)))
    {
      if (v24 < v23)
      {
        v26 = *v22;
        *v22 = a2[-1].i64[0];
        a2[-1].i64[0] = v26;
        if ((*(v12 - 1) | (*(v12 - 2) << 32)) < (v10->u32[3] | (v10->u32[2] << 32)))
        {
          v27 = v10->i64[1];
          v10->i64[1] = *v22;
          *v22 = v27;
        }
      }
    }

    else
    {
      v25 = v10->i64[1];
      if (v24 >= v23)
      {
        v10->i64[1] = *v22;
        *v22 = v25;
        if ((a2[-1].u32[1] | (a2[-1].u32[0] << 32)) >= __ROR8__(v25, 32))
        {
          goto LABEL_43;
        }

        *v22 = a2[-1].i64[0];
      }

      else
      {
        v10->i64[1] = a2[-1].i64[0];
      }

      a2[-1].i64[0] = v25;
    }

LABEL_43:
    v29 = (v12 + 2);
    v30 = v12[3] | (v12[2] << 32);
    v31 = a2[-2].u32[3] | (a2[-2].u32[2] << 32);
    if (v30 >= (v10[1].u32[1] | (v10[1].u32[0] << 32)))
    {
      if (v31 < v30)
      {
        v33 = *v29;
        *v29 = a2[-2].i64[1];
        a2[-2].i64[1] = v33;
        if ((v12[3] | (v12[2] << 32)) < (v10[1].u32[1] | (v10[1].u32[0] << 32)))
        {
          v34 = v10[1].i64[0];
          v10[1].i64[0] = *v29;
          *v29 = v34;
        }
      }

      goto LABEL_52;
    }

    v32 = v10[1].i64[0];
    if (v31 < v30)
    {
      v10[1].i64[0] = a2[-2].i64[1];
LABEL_51:
      a2[-2].i64[1] = v32;
      goto LABEL_52;
    }

    v10[1].i64[0] = *v29;
    *v29 = v32;
    if ((a2[-2].u32[3] | (a2[-2].u32[2] << 32)) < __ROR8__(v32, 32))
    {
      *v29 = a2[-2].i64[1];
      goto LABEL_51;
    }

LABEL_52:
    v35 = v12[1] | (*v12 << 32);
    v36 = *(v12 - 1) | (*(v12 - 2) << 32);
    v37 = v12[3] | (v12[2] << 32);
    if (v35 >= v36)
    {
      v38 = *v12;
      if (v37 >= v35)
      {
        goto LABEL_62;
      }

      v40 = *v29;
      *v12 = *v29;
      *v29 = v38;
      if (__ROR8__(v40, 32) >= v36)
      {
        v63 = v10->i64[0];
        v10->i64[0] = v40;
        *v12 = v63;
        --a4;
        if (a5)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v41 = *v22;
        *v22 = v40;
        *v12 = v41;
        v42 = v10->i64[0];
        v10->i64[0] = v41;
        *v12 = v42;
        --a4;
        if (a5)
        {
          goto LABEL_39;
        }
      }

LABEL_63:
      v28 = v10->i64[0];
      if ((v10[-1].u32[3] | (v10[-1].u32[2] << 32)) < (v10->u32[1] | (v10->u32[0] << 32)))
      {
        goto LABEL_64;
      }

      v64 = __ROR8__(v28, 32);
      if (v64 >= (a2[-1].u32[3] | (a2[-1].u32[2] << 32)))
      {
        v67 = &v10->u64[1];
        do
        {
          v10 = v67;
          if (v67 >= a2)
          {
            break;
          }

          v68 = v67->u32[1] | (v67->u32[0] << 32);
          v67 = (v67 + 8);
        }

        while (v64 >= v68);
      }

      else
      {
        do
        {
          v65 = v10->u32[2];
          v66 = v10->u32[3];
          v10 = (v10 + 8);
        }

        while (v64 >= (v66 | (v65 << 32)));
      }

      v69 = a2;
      if (v10 < a2)
      {
        v69 = a2;
        do
        {
          v70 = v69[-1].u32[2];
          v71 = v69[-1].u32[3];
          v69 = (v69 - 8);
        }

        while (v64 < (v71 | (v70 << 32)));
      }

      while (v10 < v69)
      {
        v72 = v10->i64[0];
        v10->i64[0] = v69->i64[0];
        v69->i64[0] = v72;
        do
        {
          v73 = v10->u32[2];
          v74 = v10->u32[3];
          v10 = (v10 + 8);
        }

        while (v64 >= (v74 | (v73 << 32)));
        do
        {
          v75 = v69[-1].u32[2];
          v76 = v69[-1].u32[3];
          v69 = (v69 - 8);
        }

        while (v64 < (v76 | (v75 << 32)));
      }

      v77 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != v9)
      {
        v9->i64[0] = *v77;
      }

      a5 = 0;
      *v77 = v28;
    }

    else
    {
      v38 = *v22;
      if (v37 >= v35)
      {
        *v22 = *v12;
        *v12 = v38;
        if (v37 < __ROR8__(v38, 32))
        {
          v43 = *v29;
          *v12 = *v29;
          *v29 = v38;
          v38 = v43;
        }

LABEL_62:
        v44 = v10->i64[0];
        v10->i64[0] = v38;
        *v12 = v44;
        --a4;
        if ((a5 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_39;
      }

      *v22 = *v29;
      *v29 = v38;
      v39 = v10->i64[0];
      v10->i64[0] = *v12;
      *v12 = v39;
      --a4;
      if ((a5 & 1) == 0)
      {
        goto LABEL_63;
      }

LABEL_39:
      v28 = v10->i64[0];
LABEL_64:
      v45 = 0;
      v46 = __ROR8__(v28, 32);
      do
      {
        v47 = v10->u32[v45 + 3] | (v10->u32[v45 + 2] << 32);
        v45 += 2;
      }

      while (v47 < v46);
      v48 = &v10->i8[v45 * 4];
      v49 = a2;
      if (v45 == 2)
      {
        v49 = a2;
        do
        {
          if (v48 >= v49)
          {
            break;
          }

          v52 = v49[-1].u32[2];
          v53 = v49[-1].u32[3];
          v49 = (v49 - 8);
        }

        while ((v53 | (v52 << 32)) >= v46);
      }

      else
      {
        do
        {
          v50 = v49[-1].u32[2];
          v51 = v49[-1].u32[3];
          v49 = (v49 - 8);
        }

        while ((v51 | (v50 << 32)) >= v46);
      }

      if (v48 >= v49)
      {
        v61 = v48 - 8;
        if (v48 - 8 == v10)
        {
          goto LABEL_82;
        }

LABEL_81:
        v10->i64[0] = *v61;
        goto LABEL_82;
      }

      v54 = v48;
      v55 = v49;
      do
      {
        v56 = *v54;
        *v54 = *v55;
        *v55 = v56;
        do
        {
          v57 = *(v54 + 8);
          v58 = *(v54 + 12);
          v54 += 8;
        }

        while ((v58 | (v57 << 32)) < v46);
        do
        {
          v59 = *(v55 - 2);
          v60 = *(v55-- - 1);
        }

        while ((v60 | (v59 << 32)) >= v46);
      }

      while (v54 < v55);
      v61 = (v54 - 8);
      if ((v54 - 8) != v10)
      {
        goto LABEL_81;
      }

LABEL_82:
      *v61 = v28;
      if (v48 < v49)
      {
        goto LABEL_85;
      }

      v62 = sub_2D3C84(v10, v61);
      v10 = (v61 + 8);
      result = sub_2D3C84((v61 + 8), a2);
      if (result)
      {
        a2 = v61;
        if (!v62)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v62)
      {
LABEL_85:
        result = sub_2D31D4(v9, v61, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v61 + 8);
      }
    }
  }

  v85 = v10->u32[3] | (v10->u32[2] << 32);
  v86 = a2[-1].u32[3] | (a2[-1].u32[2] << 32);
  if (v85 >= (v10->u32[1] | (v10->u32[0] << 32)))
  {
    if (v86 < v85)
    {
      v101 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v101;
      if ((v10->u32[3] | (v10->u32[2] << 32)) < (v10->u32[1] | (v10->u32[0] << 32)))
      {
        *v10 = vextq_s8(*v10, *v10, 8uLL);
      }
    }
  }

  else
  {
    v84 = v10->i64[0];
    if (v86 < v85)
    {
LABEL_116:
      v10->i64[0] = a2[-1].i64[1];
      a2[-1].i64[1] = v84;
      return result;
    }

    v10->i64[0] = v10->i64[1];
    v10->i64[1] = v84;
    if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) < __ROR8__(v84, 32))
    {
      v10->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v84;
    }
  }

  return result;
}

unsigned int *sub_2D3B48(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = a2[1] | (*a2 << 32);
  v5 = a3[1];
  v6 = v5 | (*a3 << 32);
  if (v4 >= (result[1] | (*result << 32)))
  {
    if (v6 < v4)
    {
      v8 = *a2;
      *a2 = *a3;
      *a3 = v8;
      if ((a2[1] | (*a2 << 32)) >= (result[1] | (*result << 32)))
      {
        v5 = HIDWORD(v8);
      }

      else
      {
        v5 = *result;
        *result = *a2;
        *a2 = v5;
        LODWORD(v5) = a3[1];
      }
    }
  }

  else
  {
    v7 = *result;
    if (v6 < v4)
    {
      *result = *a3;
LABEL_9:
      *a3 = v7;
      v5 = HIDWORD(v7);
      goto LABEL_11;
    }

    *result = *a2;
    *a2 = v7;
    LODWORD(v5) = a3[1];
    if ((v5 | (*a3 << 32)) < __ROR8__(v7, 32))
    {
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_11:
  if ((a4[1] | (*a4 << 32)) < (v5 | (*a3 << 32)))
  {
    v9 = *a3;
    *a3 = *a4;
    *a4 = v9;
    if ((a3[1] | (*a3 << 32)) < (a2[1] | (*a2 << 32)))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      if ((a2[1] | (*a2 << 32)) < (result[1] | (*result << 32)))
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
      }
    }
  }

  return result;
}

BOOL sub_2D3C84(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v13 = a1->u32[3] | (a1->u32[2] << 32);
        v14 = a2[-1].u32[3] | (a2[-1].u32[2] << 32);
        if (v13 >= (a1->u32[1] | (a1->u32[0] << 32)))
        {
          if (v14 < v13)
          {
            v20 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v20;
            if ((a1->u32[3] | (a1->u32[2] << 32)) < (a1->u32[1] | (a1->u32[0] << 32)))
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
              return 1;
            }
          }
        }

        else
        {
          v3 = a1->i64[0];
          if (v14 < v13)
          {
            goto LABEL_16;
          }

          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v3;
          if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) < __ROR8__(v3, 32))
          {
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v3;
            return 1;
          }
        }

        return 1;
      case 4:
        sub_2D3B48(a1, &a1->u32[2], &a1[1], &a2[-1].u32[2]);
        return 1;
      case 5:
        sub_2D3B48(a1, &a1->u32[2], &a1[1], &a1[1].u32[2]);
        if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) < (a1[1].u32[3] | (a1[1].u32[2] << 32)))
        {
          v6 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v6;
          if ((a1[1].u32[3] | (a1[1].u32[2] << 32)) < (a1[1].u32[1] | (a1[1].u32[0] << 32)))
          {
            v8 = a1[1].i64[0];
            v7 = a1[1].i64[1];
            a1[1].i64[0] = v7;
            a1[1].i64[1] = v8;
            v9 = __ROR8__(v7, 32);
            if (v9 < (a1->u32[3] | (a1->u32[2] << 32)))
            {
              v10 = a1->i64[1];
              a1->i64[1] = v7;
              a1[1].i64[0] = v10;
              if (v9 < (a1->u32[1] | (a1->u32[0] << 32)))
              {
                v11 = a1->i64[0];
                a1->i64[0] = v7;
                a1->i64[1] = v11;
                return 1;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      if ((a2[-1].u32[3] | (a2[-1].u32[2] << 32)) < (a1->u32[1] | (a1->u32[0] << 32)))
      {
        v3 = a1->i64[0];
LABEL_16:
        a1->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v3;
        return 1;
      }

      return 1;
    }
  }

  v15 = a1 + 1;
  v16 = a1->u32[3] | (a1->u32[2] << 32);
  v17 = a1->u32[1] | (a1->u32[0] << 32);
  v18 = a1[1].u32[1] | (a1[1].u32[0] << 32);
  if (v16 >= v17)
  {
    if (v18 < v16)
    {
      v22 = a1->i64[1];
      v21 = a1[1].i64[0];
      a1->i64[1] = v21;
      a1[1].i64[0] = v22;
      if (__ROR8__(v21, 32) < v17)
      {
        v23 = a1->i64[0];
        a1->i64[0] = v21;
        a1->i64[1] = v23;
      }
    }
  }

  else
  {
    v19 = a1->i64[0];
    if (v18 >= v16)
    {
      a1->i64[0] = a1->i64[1];
      a1->i64[1] = v19;
      if (v18 >= __ROR8__(v19, 32))
      {
        goto LABEL_32;
      }

      a1->i64[1] = a1[1].i64[0];
    }

    else
    {
      a1->i64[0] = a1[1].i64[0];
    }

    a1[1].i64[0] = v19;
  }

LABEL_32:
  v24 = &a1[1].u32[2];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v25 = 0;
  v26 = 0;
  while ((v24[1] | (*v24 << 32)) >= (v15->u32[1] | (v15->u32[0] << 32)))
  {
LABEL_41:
    v15 = v24;
    v25 += 8;
    v24 += 2;
    if (v24 == a2)
    {
      return 1;
    }
  }

  v27 = *v24;
  v28 = __ROR8__(*v24, 32);
  v29 = v25;
  do
  {
    *(&a1[1].i64[1] + v29) = *(a1[1].i64 + v29);
    if (v29 == -16)
    {
      a1->i64[0] = v27;
      if (++v26 != 8)
      {
        goto LABEL_41;
      }

      return v24 + 2 == a2;
    }

    v30 = *(&a1->u32[3] + v29) | (*(&a1->u32[2] + v29) << 32);
    v29 -= 8;
  }

  while (v28 < v30);
  *(&a1[1].i64[1] + v29) = v27;
  if (++v26 != 8)
  {
    goto LABEL_41;
  }

  return v24 + 2 == a2;
}

unsigned int *sub_2D3FD0(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = (a2 - a1) >> 3;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[2 * v9];
      do
      {
        sub_2D41EC(a1, a4, v8, v11);
        v11 -= 2;
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        if ((v12[1] | (*v12 << 32)) < (a1[1] | (*a1 << 32)))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_2D41EC(a1, a4, v8, a1);
        }

        v12 += 2;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v16 = 0;
        v17 = *a1;
        v18 = (v8 - 2) >> 1;
        v19 = a1;
        do
        {
          while (1)
          {
            v23 = &v19[2 * v16];
            v22 = v23 + 2;
            v24 = (2 * v16) | 1;
            v16 = 2 * v16 + 2;
            if (v16 < v8)
            {
              break;
            }

            v16 = v24;
            *v19 = *v22;
            v19 = v23 + 2;
            if (v24 > v18)
            {
              goto LABEL_22;
            }
          }

          v21 = v23[4];
          v20 = v23 + 4;
          if ((*(v20 - 1) | (*(v20 - 2) << 32)) >= (v20[1] | (v21 << 32)))
          {
            v16 = v24;
          }

          else
          {
            v22 = v20;
          }

          *v19 = *v22;
          v19 = v22;
        }

        while (v16 <= v18);
LABEL_22:
        v6 -= 2;
        if (v22 == v6)
        {
          *v22 = v17;
        }

        else
        {
          *v22 = *v6;
          *v6 = v17;
          v25 = (v22 - a1 + 8) >> 3;
          v15 = v25 < 2;
          v26 = v25 - 2;
          if (!v15)
          {
            v27 = v26 >> 1;
            v28 = &a1[2 * v27];
            if ((v28[1] | (*v28 << 32)) < (v22[1] | (*v22 << 32)))
            {
              v29 = *v22;
              v30 = __ROR8__(*v22, 32);
              do
              {
                v31 = v22;
                v22 = v28;
                *v31 = *v28;
                if (!v27)
                {
                  break;
                }

                v27 = (v27 - 1) >> 1;
                v28 = &a1[2 * v27];
              }

              while ((v28[1] | (*v28 << 32)) < v30);
              *v22 = v29;
            }
          }
        }

        v15 = v8-- <= 2;
      }

      while (!v15);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_2D41EC(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (a3 < 2)
  {
    return result;
  }

  v4 = a4 - result;
  v5 = (a3 - 2) >> 1;
  if (v5 < (a4 - result) >> 3)
  {
    return result;
  }

  v6 = v4 >> 2;
  v7 = (v4 >> 2) + 1;
  v8 = (result + 8 * v7);
  v9 = v6 + 2;
  if (v9 >= a3)
  {
    if ((v8[1] | (*v8 << 32)) < (a4[1] | (*a4 << 32)))
    {
      return result;
    }
  }

  else
  {
    v10 = *v8;
    v11 = v8[1] | (v10 << 32);
    v12 = v8[2];
    v13 = v8[3] | (v12 << 32);
    if (v11 >= v13)
    {
      v10 = v10;
    }

    else
    {
      v10 = v12;
    }

    if (v11 < v13)
    {
      v8 += 2;
      v7 = v9;
    }

    if ((v8[1] | (v10 << 32)) < (a4[1] | (*a4 << 32)))
    {
      return result;
    }
  }

  v14 = *a4;
  v15 = __ROR8__(*a4, 32);
  while (1)
  {
    v20 = a4;
    a4 = v8;
    *v20 = *v8;
    if (v5 < v7)
    {
      break;
    }

    v21 = (2 * v7) | 1;
    v8 = (result + 8 * v21);
    v7 = 2 * v7 + 2;
    if (v7 < a3)
    {
      v16 = *v8;
      v17 = v8[1] | (v16 << 32);
      v18 = v8[2];
      v19 = v8[3] | (v18 << 32);
      if (v17 >= v19)
      {
        v16 = v16;
      }

      else
      {
        v16 = v18;
      }

      if (v17 >= v19)
      {
        v7 = v21;
      }

      else
      {
        v8 += 2;
      }

      if ((v8[1] | (v16 << 32)) < v15)
      {
        break;
      }
    }

    else
    {
      v7 = v21;
      if ((v8[1] | (*v8 << 32)) < v15)
      {
        break;
      }
    }
  }

  *a4 = v14;
  return result;
}