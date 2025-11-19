uint64_t sub_C4B850(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t **a4, uint64_t a5)
{
  v10 = sub_C4B020(a5, *a2, *a1);
  v11 = sub_C4B020(a5, *a3, *a2);
  if (v10)
  {
    v12 = *a1;
    if (v11)
    {
      *a1 = *a3;
      *a3 = v12;
    }

    else
    {
      *a1 = *a2;
      *a2 = v12;
      if (sub_C4B020(a5, *a3, v12))
      {
        v15 = *a2;
        *a2 = *a3;
        *a3 = v15;
      }
    }
  }

  else if (v11)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    if (sub_C4B020(a5, *a2, *a1))
    {
      v14 = *a1;
      *a1 = *a2;
      *a2 = v14;
    }
  }

  result = sub_C4B020(a5, *a4, *a3);
  if (result)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    result = sub_C4B020(a5, *a3, *a2);
    if (result)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      result = sub_C4B020(a5, *a2, *a1);
      if (result)
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  return result;
}

uint64_t **sub_C4B9A4(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v4 = a2;
  v6 = *a1;
  if (sub_C4B020(a3, *a1, *(a2 - 1)))
  {
    v7 = a1;
    do
    {
      v8 = v7[1];
      ++v7;
    }

    while ((sub_C4B020(a3, v6, v8) & 1) == 0);
  }

  else
  {
    v9 = a1 + 1;
    do
    {
      v7 = v9;
      if (v9 >= v4)
      {
        break;
      }

      ++v9;
    }

    while (!sub_C4B020(a3, v6, *v7));
  }

  if (v7 < v4)
  {
    do
    {
      v10 = *--v4;
    }

    while ((sub_C4B020(a3, v6, v10) & 1) != 0);
  }

  while (v7 < v4)
  {
    v11 = *v7;
    *v7 = *v4;
    *v4 = v11;
    do
    {
      v12 = v7[1];
      ++v7;
    }

    while (!sub_C4B020(a3, v6, v12));
    do
    {
      v13 = *--v4;
    }

    while ((sub_C4B020(a3, v6, v13) & 1) != 0);
  }

  if (v7 - 1 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v6;
  return v7;
}

uint64_t **sub_C4BAB4(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v6 = 0;
  v7 = *a1;
  do
  {
    v8 = sub_C4B020(a3, a1[++v6], v7);
  }

  while ((v8 & 1) != 0);
  v9 = &a1[v6];
  v10 = &a1[v6 - 1];
  if (v6 == 1)
  {
    do
    {
      if (v9 >= a2)
      {
        break;
      }

      v12 = *--a2;
    }

    while ((sub_C4B020(a3, v12, v7) & 1) == 0);
  }

  else
  {
    do
    {
      v11 = *--a2;
    }

    while (!sub_C4B020(a3, v11, v7));
  }

  if (v9 < a2)
  {
    v13 = &a1[v6];
    v14 = a2;
    do
    {
      v15 = *v13;
      *v13 = *v14;
      *v14 = v15;
      do
      {
        v16 = v13[1];
        ++v13;
      }

      while ((sub_C4B020(a3, v16, v7) & 1) != 0);
      do
      {
        v17 = *--v14;
      }

      while (!sub_C4B020(a3, v17, v7));
    }

    while (v13 < v14);
    v10 = v13 - 1;
  }

  if (v10 != a1)
  {
    *a1 = *v10;
  }

  *v10 = v7;
  return v10;
}

BOOL sub_C4BBD0(uint64_t **a1, uint64_t **a2, uint64_t a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v15 = sub_C4B020(a3, a1[1], *a1);
        v16 = sub_C4B020(a3, *(a2 - 1), a1[1]);
        if (v15)
        {
          v17 = *a1;
          if (v16)
          {
            *a1 = *(a2 - 1);
            *(a2 - 1) = v17;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v17;
            if (sub_C4B020(a3, *(a2 - 1), v17))
            {
              v28 = a1[1];
              a1[1] = *(a2 - 1);
              *(a2 - 1) = v28;
            }
          }

          return 1;
        }

        if (!v16)
        {
          return 1;
        }

        v22 = a1[1];
        a1[1] = *(a2 - 1);
        *(a2 - 1) = v22;
        v14 = *a1;
        v12 = a1[1];
        break;
      case 4:
        sub_C4B850(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_C4B850(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        if (!sub_C4B020(a3, *(a2 - 1), a1[3]))
        {
          return 1;
        }

        v8 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v8;
        if (!sub_C4B020(a3, a1[3], a1[2]))
        {
          return 1;
        }

        v10 = a1[2];
        v9 = a1[3];
        v11 = a1[1];
        a1[2] = v9;
        a1[3] = v10;
        if (!sub_C4B020(a3, v9, v11))
        {
          return 1;
        }

        v13 = a1[1];
        v12 = a1[2];
        v14 = *a1;
        a1[1] = v12;
        a1[2] = v13;
        break;
      default:
        goto LABEL_16;
    }

    if (sub_C4B020(a3, v12, v14))
    {
      v23 = *a1;
      *a1 = a1[1];
      a1[1] = v23;
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    if (sub_C4B020(a3, *(a2 - 1), *a1))
    {
      v7 = *a1;
      *a1 = *(a2 - 1);
      *(a2 - 1) = v7;
    }

    return 1;
  }

LABEL_16:
  v18 = sub_C4B020(a3, a1[1], *a1);
  v19 = a1 + 2;
  v20 = sub_C4B020(a3, a1[2], a1[1]);
  if (v18)
  {
    v21 = *a1;
    if (v20)
    {
      *a1 = a1[2];
      a1[2] = v21;
    }

    else
    {
      v29 = a1[2];
      *a1 = a1[1];
      a1[1] = v21;
      if (sub_C4B020(a3, v29, v21))
      {
        v30 = a1[1];
        a1[1] = a1[2];
        a1[2] = v30;
      }
    }
  }

  else if (v20)
  {
    v25 = a1[1];
    v24 = a1[2];
    v26 = *a1;
    a1[1] = v24;
    a1[2] = v25;
    if (sub_C4B020(a3, v24, v26))
    {
      v27 = *a1;
      *a1 = a1[1];
      a1[1] = v27;
    }
  }

  v31 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v32 = 0;
  v33 = 0;
  while (!sub_C4B020(a3, *v31, *v19))
  {
LABEL_40:
    v19 = v31;
    v32 += 8;
    if (++v31 == a2)
    {
      return 1;
    }
  }

  v34 = *v31;
  v35 = v32;
  do
  {
    v36 = (a1 + v35);
    *(a1 + v35 + 24) = *(a1 + v35 + 16);
    if (v35 == -16)
    {
      *a1 = v34;
      if (++v33 != 8)
      {
        goto LABEL_40;
      }

      return v31 + 1 == a2;
    }

    v35 -= 8;
  }

  while ((sub_C4B020(a3, v34, v36[1]) & 1) != 0);
  *(a1 + v35 + 24) = v34;
  if (++v33 != 8)
  {
    goto LABEL_40;
  }

  return v31 + 1 == a2;
}

uint64_t sub_C4BEE0(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 80);
  if (v2 == *(a1 + 88))
  {
    v3 = 10 * *(*(a1 + 40) + 12 * a2 + 4);
  }

  else
  {
    v3 = *(v2 + 12 * a2);
  }

  v4 = v3 / 10;
  v5 = v3 % 10;
  if (v3 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  return v4 + *(a1 + 48) + (((103 * (v6 + v5)) >> 15) & 1) + ((103 * (v6 + v5)) >> 10);
}

uint64_t sub_C4BF74(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(*(v2 + 40) + 20 * a2 + 12);
  }

  else
  {
    v3 = 10 * *(*(a1 + 24) + 24 * a2 + 12);
  }

  v4 = v3 / 10;
  v5 = v3 % 10;
  if (v3 < 0)
  {
    v6 = -5;
  }

  else
  {
    v6 = 5;
  }

  return v4 + *(a1 + 48) + (((103 * (v6 + v5)) >> 15) & 1) + ((103 * (v6 + v5)) >> 10);
}

uint64_t **sub_C4C004(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_C4C23C(a1, a4, v8, v11--);
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
        if (sub_C4B020(a4, *v12, *a1))
        {
          v13 = *v12;
          *v12 = *a1;
          *a1 = v13;
          sub_C4C23C(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        if (v8 >= 2)
        {
          v16 = 0;
          v32 = *a1;
          v33 = v6;
          v17 = (v8 - 2) >> 1;
          v18 = a1;
          do
          {
            while (1)
            {
              v22 = &v18[v16];
              v21 = v22 + 1;
              v23 = (2 * v16) | 1;
              v24 = 2 * v16 + 2;
              if (v24 < v8)
              {
                break;
              }

              v16 = (2 * v16) | 1;
              *v18 = *v21;
              v18 = v22 + 1;
              if (v23 > v17)
              {
                goto LABEL_24;
              }
            }

            v20 = v22[2];
            v19 = v22 + 2;
            if (sub_C4B020(a4, *(v19 - 1), v20))
            {
              v21 = v19;
              v16 = v24;
            }

            else
            {
              v16 = v23;
            }

            *v18 = *v21;
            v18 = v21;
          }

          while (v16 <= v17);
LABEL_24:
          v6 = v33;
          v25 = v33 - 1;
          if (v21 == v33 - 1)
          {
            *v21 = v32;
          }

          else
          {
            *v21 = *v25;
            *v25 = v32;
            v26 = (v21 - a1 + 8) >> 3;
            v15 = v26 < 2;
            v27 = v26 - 2;
            if (!v15)
            {
              v28 = v27 >> 1;
              v29 = &a1[v27 >> 1];
              if (sub_C4B020(a4, *v29, *v21))
              {
                v30 = *v21;
                do
                {
                  v31 = v21;
                  v21 = v29;
                  *v31 = *v29;
                  if (!v28)
                  {
                    break;
                  }

                  v28 = (v28 - 1) >> 1;
                  v29 = &a1[v28];
                }

                while ((sub_C4B020(a4, *v29, v30) & 1) != 0);
                *v21 = v30;
              }
            }
          }
        }

        --v6;
        v15 = v8-- > 2;
      }

      while (v15);
    }

    return v12;
  }

  return a3;
}

uint64_t sub_C4C23C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 3)
    {
      v10 = (a4 - result) >> 2;
      v11 = v10 + 1;
      v12 = (result + 8 * (v10 + 1));
      v13 = v10 + 2;
      if (v10 + 2 < a3 && sub_C4B020(a2, *v12, v12[1]))
      {
        ++v12;
        v11 = v13;
      }

      result = sub_C4B020(a2, *v12, *v5);
      if ((result & 1) == 0)
      {
        v14 = *v5;
        do
        {
          v15 = v5;
          v5 = v12;
          *v15 = *v12;
          if (v7 < v11)
          {
            break;
          }

          v16 = (2 * v11) | 1;
          v12 = (v6 + 8 * v16);
          v17 = 2 * v11 + 2;
          if (v17 < a3)
          {
            if (sub_C4B020(a2, *v12, v12[1]))
            {
              ++v12;
              v16 = v17;
            }
          }

          result = sub_C4B020(a2, *v12, v14);
          v11 = v16;
        }

        while (!result);
        *v5 = v14;
      }
    }
  }

  return result;
}

uint64_t sub_C4C36C(void *a1, uint64_t a2)
{
  v2 = sub_92FC60(*a1 + 24, __ROR8__(a2, 32), 0, "line");
  v3 = (v2 - *v2);
  if (*v3 >= 9u && v3[4] && *(v2 + v3[4] + *(v2 + v3[4])))
  {
    operator new();
  }

  return 3;
}

void sub_C4C520(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (v11)
  {
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C4C54C(uint64_t result)
{
  if ((result & 0xFFFF0000) != 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_C4C60C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_C4C68C(unint64_t result)
{
  if (result >= 0x100)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v6, v1);
    sub_23E08("narrowing ", &v6, &v7);
    sub_30F54(" failed", &v7, &v8);
    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v3 = &v8;
    }

    else
    {
      v3 = v8.__r_.__value_.__r.__words[0];
    }

    if ((v8.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v8.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v8.__r_.__value_.__l.__size_;
    }

    v5 = sub_2D390(exception, v3, size);
  }

  return result;
}

void sub_C4C74C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void **sub_C4C7CC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 3);
        if (v5)
        {
          *(v3 - 2) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 6);
        if (v6)
        {
          *(v3 - 5) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 9);
        if (v7)
        {
          *(v3 - 8) = v7;
          operator delete(v7);
        }

        v3 -= 128;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_C4C860(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 57))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_C4C94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_C4C96C(&a11);
  *(v11 + 8) = v12;
  sub_C4CC34(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_C4C96C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 24);
      if (v5)
      {
        *(v3 - 16) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 48);
      if (v6)
      {
        *(v3 - 40) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 72);
      if (v7)
      {
        *(v3 - 64) = v7;
        operator delete(v7);
      }

      v3 -= 128;
    }
  }

  return a1;
}

uint64_t sub_C4C9F0(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(result + 48) = *(a2 + 6);
  *(result + 16) = v3;
  *(result + 32) = v4;
  *(result + 56) = 0;
  *result = v2;
  *(result + 64) = 0;
  *(result + 72) = 0;
  v6 = *(a2 + 7);
  v5 = *(a2 + 8);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  v8 = *(a2 + 10);
  v7 = *(a2 + 11);
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  v10 = *(a2 + 13);
  v9 = *(a2 + 14);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_C4CB70(_Unwind_Exception *exception_object)
{
  v6 = *v2;
  if (*v2)
  {
    v1[14] = v6;
    operator delete(v6);
    v7 = *v4;
    if (!*v4)
    {
LABEL_3:
      v8 = *v3;
      if (!*v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v4;
    if (!*v4)
    {
      goto LABEL_3;
    }
  }

  v1[11] = v7;
  operator delete(v7);
  v8 = *v3;
  if (!*v3)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[8] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_C4CBD0()
{
  if (!*v0)
  {
    JUMPOUT(0xC4CB94);
  }

  JUMPOUT(0xC4CB8CLL);
}

void *sub_C4CBE0(void *a1)
{
  v2 = a1[13];
  if (v2)
  {
    a1[14] = v2;
    operator delete(v2);
  }

  v3 = a1[10];
  if (v3)
  {
    a1[11] = v3;
    operator delete(v3);
  }

  v4 = a1[7];
  if (v4)
  {
    a1[8] = v4;
    operator delete(v4);
  }

  return a1;
}

void ***sub_C4CC34(void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 3);
          if (v6)
          {
            *(v4 - 2) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 6);
          if (v7)
          {
            *(v4 - 5) = v7;
            operator delete(v7);
          }

          v8 = *(v4 - 9);
          if (v8)
          {
            *(v4 - 8) = v8;
            operator delete(v8);
          }

          v4 -= 128;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *sub_C4CCD8(void *a1, int **a2)
{
  v4 = sub_C45DD4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    sub_C4D02C();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_C45E20(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_C45E20(a1, (v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_C4D018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_C4D0FC(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void *sub_C4D120(void *a1, int **a2)
{
  v4 = sub_C45748(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_23;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4;
    if (v4 >= *&v6)
    {
      v8 = v4 % *&v6;
    }
  }

  else
  {
    v8 = (*&v6 - 1) & v4;
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_23:
    sub_C4D474();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v10[1];
      if (v12 == v5)
      {
        if (sub_C457AC(a1, (v10 + 2), a2))
        {
          return v10;
        }
      }

      else if ((v12 & (*&v6 - 1)) != v8)
      {
        goto LABEL_23;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v11 = v10[1];
    if (v11 == v5)
    {
      break;
    }

    if (v11 >= *&v6)
    {
      v11 %= *&v6;
    }

    if (v11 != v8)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_23;
    }
  }

  if (!sub_C457AC(a1, (v10 + 2), a2))
  {
    goto LABEL_12;
  }

  return v10;
}

void sub_C4D460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_C4D564(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_9BB5DC(v1);
  _Unwind_Resume(a1);
}

void sub_C4D588(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 112);
    if (v3)
    {
      *(a2 + 120) = v3;
      operator delete(v3);
    }

    v4 = *(a2 + 88);
    if (v4)
    {
      *(a2 + 96) = v4;
      operator delete(v4);
    }

    v5 = *(a2 + 48);
    if (v5)
    {
      *(a2 + 56) = v5;
      operator delete(v5);
    }

    v6 = *(a2 + 24);
    if (v6)
    {
      *(a2 + 32) = v6;
      operator delete(v6);
    }

    v7 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v7;
      operator delete(v7);
    }

    operator delete();
  }
}

uint64_t **sub_C4D624(uint64_t **a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    v6 = a1[1];
    v7 = *a1;
    if (v6 != v5)
    {
      v8 = v6 - 1;
      do
      {
        v10 = *v8;
        *v8 = 0;
        if (v10)
        {
          sub_C4D588(v8, v10);
        }
      }

      while (v8-- != v5);
      v7 = *a1;
    }

    a1[1] = v5;
    operator delete(v7);
  }

  return a1;
}

void sub_C4D6D4(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 3);
        if (v6)
        {
          *(v4 - 2) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 6);
        if (v7)
        {
          *(v4 - 5) = v7;
          operator delete(v7);
        }

        v8 = *(v4 - 9);
        if (v8)
        {
          *(v4 - 8) = v8;
          operator delete(v8);
        }

        v4 -= 128;
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

uint64_t sub_C4D7A0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[2];
      if (v6)
      {
        v2[3] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_C4D80C(uint64_t a1, void *a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v4);
    do
    {
      *v8 = 0;
      v8[1] = 0;
      v8[2] = 0;
      *v8 = *v7;
      v8[2] = v7[2];
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
      v7 += 3;
      v8 += 3;
    }

    while (v7 != v4);
    do
    {
      v10 = *v5;
      if (*v5)
      {
        v11 = v5[1];
        v9 = *v5;
        if (v11 != v10)
        {
          do
          {
            v12 = *(v11 - 3);
            if (v12)
            {
              *(v11 - 2) = v12;
              operator delete(v12);
            }

            v13 = *(v11 - 6);
            if (v13)
            {
              *(v11 - 5) = v13;
              operator delete(v13);
            }

            v14 = *(v11 - 9);
            if (v14)
            {
              *(v11 - 8) = v14;
              operator delete(v14);
            }

            v11 -= 128;
          }

          while (v11 != v10);
          v9 = *v5;
        }

        v5[1] = v10;
        operator delete(v9);
      }

      v5 += 3;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v15 = *a1;
  *a1 = v6;
  *(a1 + 8) = v15;
  a2[1] = v15;
  v16 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v16;
  v17 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v17;
  *a2 = a2[1];
}

void **sub_C4D948(void **a1)
{
  sub_C4D97C(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C4D97C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v1)
  {
    v4 = *(a1 + 16);
    do
    {
      v7 = *(v4 - 3);
      v4 -= 3;
      v6 = v7;
      *(a1 + 16) = v4;
      if (v7)
      {
        v8 = *(v2 - 2);
        v5 = v6;
        if (v8 != v6)
        {
          do
          {
            v9 = *(v8 - 3);
            if (v9)
            {
              *(v8 - 2) = v9;
              operator delete(v9);
            }

            v10 = *(v8 - 6);
            if (v10)
            {
              *(v8 - 5) = v10;
              operator delete(v10);
            }

            v11 = *(v8 - 9);
            if (v11)
            {
              *(v8 - 8) = v11;
              operator delete(v11);
            }

            v8 -= 128;
          }

          while (v8 != v6);
          v5 = *v4;
        }

        *(v2 - 2) = v6;
        operator delete(v5);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v1);
  }
}

void sub_C4DA3C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v30 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 2);
    do
    {
      v12 = *a2;
      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3))
      {
        v41 = 0;
        v42 = 0;
        v43 = 0;
      }

      else
      {
        v13 = (*a3 + v9);
        v41 = 0;
        v42 = 0;
        v43 = 0;
        v15 = *v13;
        v14 = v13[1];
        if (v14 != v15)
        {
          if (((v14 - v15) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3))
      {
        v38 = 0;
        v39 = 0;
        v40 = 0;
      }

      else
      {
        v16 = (*a4 + v9);
        v38 = 0;
        v39 = 0;
        v40 = 0;
        v18 = *v16;
        v17 = v16[1];
        if (v17 != v18)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v17 - v18) >> 2) < 0x1555555555555556)
          {
            operator new();
          }

          sub_1794();
        }
      }

      if (v11 >= 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3))
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
      }

      else
      {
        v19 = (*a5 + v9);
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v21 = *v19;
        v20 = v19[1];
        if (v20 != v21)
        {
          if (((v20 - v21) & 0x8000000000000000) == 0)
          {
            operator new();
          }

          sub_1794();
        }
      }

      sub_C4DE74(a1, (v12 + v10), &v41, &v38, &v35, v44);
      v22 = a6[1];
      if (v22 >= a6[2])
      {
        sub_C4DF5C(a6, v44);
        v28 = v27;
        v29 = __p;
        a6[1] = v28;
        if (v29)
        {
          *(&__p + 1) = v29;
          operator delete(v29);
        }
      }

      else
      {
        v23 = v44[0];
        v24 = v44[2];
        v25 = v45;
        *(v22 + 16) = v44[1];
        *(v22 + 32) = v24;
        *v22 = v23;
        *(v22 + 48) = v25;
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        *(v22 + 72) = 0;
        *(v22 + 56) = v46;
        *(v22 + 80) = 0;
        *(v22 + 88) = 0;
        *(v22 + 96) = 0;
        *(v22 + 104) = 0;
        *(v22 + 80) = v48;
        v26 = v49;
        *(v22 + 72) = v47;
        v46 = 0uLL;
        *(v22 + 96) = v26;
        v47 = 0;
        v48 = 0uLL;
        v49 = 0;
        *(v22 + 112) = 0;
        *(v22 + 120) = 0;
        *(v22 + 104) = __p;
        *(v22 + 120) = v51;
        __p = 0uLL;
        v51 = 0;
        a6[1] = v22 + 128;
      }

      if (v48)
      {
        *(&v48 + 1) = v48;
        operator delete(v48);
      }

      if (v46)
      {
        *(&v46 + 1) = v46;
        operator delete(v46);
      }

      if (v35)
      {
        v36 = v35;
        operator delete(v35);
      }

      if (v38)
      {
        v39 = v38;
        operator delete(v38);
      }

      if (v41)
      {
        v42 = v41;
        operator delete(v41);
      }

      ++v11;
      v10 += 12;
      v9 += 24;
    }

    while (v30 != v11);
  }
}

void sub_C4DDB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
    v26 = a21;
    if (!a21)
    {
LABEL_3:
      sub_C4C7CC(v24);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v26 = a21;
    if (!a21)
    {
      goto LABEL_3;
    }
  }

  operator delete(v26);
  sub_C4C7CC(v24);
  _Unwind_Resume(a1);
}

uint64_t sub_C4DE74@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_3A231C(*a1 + 24, a2[1] | (*a2 << 32), 0);
  v13 = sub_585D8((*a1 + 3896));
  v14 = *a1;
  if (sub_4C2B90(*a1 + 3896) && *(v14 + 3960))
  {
    v15 = sub_39F47C(*(*a1 + 3960), a2[1] | (*a2 << 32), a2[2], v13);
  }

  else
  {
    v15 = 0;
  }

  return sub_C4E274(a6, v12, a2, v15, a3, a4, a5);
}

double sub_C4DF5C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a1 + 8) - *a1) >> 7;
  v3 = v2 + 1;
  if ((v2 + 1) >> 57)
  {
    sub_1794();
  }

  v5 = *(a1 + 16) - *a1;
  if (v5 >> 6 > v3)
  {
    v3 = v5 >> 6;
  }

  if (v5 >= 0x7FFFFFFFFFFFFF80)
  {
    v6 = 0x1FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 57))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = v2 << 7;
  v7 = *(a2 + 16);
  *v13 = *a2;
  *(v13 + 16) = v7;
  *(v13 + 32) = *(a2 + 32);
  *(v13 + 48) = *(a2 + 48);
  *(v13 + 56) = *(a2 + 56);
  *(v13 + 72) = *(a2 + 72);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(v13 + 80) = *(a2 + 80);
  *(v13 + 96) = *(a2 + 96);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(v13 + 104) = *(a2 + 104);
  *(v13 + 120) = *(a2 + 120);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  v8 = *(a1 + 8);
  v9 = (v2 << 7) + *a1 - v8;
  sub_C4E0C4(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = ((v2 << 7) + 128);
  *(a1 + 8) = v11;
  if (v10)
  {
    operator delete(v10);
    *&v11 = (v2 << 7) + 128;
  }

  return *&v11;
}

void sub_C4E0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_C4E1C0(va);
  _Unwind_Resume(a1);
}

void sub_C4E0C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = *(v6 + 2);
      v9 = v6[6];
      *(a4 + 16) = *(v6 + 1);
      *(a4 + 32) = v8;
      *a4 = v7;
      *(a4 + 48) = v9;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 72) = 0;
      *(a4 + 56) = *(v6 + 7);
      *(a4 + 72) = v6[9];
      v6[7] = 0;
      v6[8] = 0;
      v6[9] = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 96) = 0;
      *(a4 + 80) = *(v6 + 5);
      *(a4 + 96) = v6[12];
      v6[10] = 0;
      v6[11] = 0;
      v6[12] = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = *(v6 + 13);
      *(a4 + 120) = v6[15];
      v6[13] = 0;
      v6[14] = 0;
      v6[15] = 0;
      v6 += 16;
      a4 += 128;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v10 = v5[13];
      if (v10)
      {
        v5[14] = v10;
        operator delete(v10);
      }

      v11 = v5[10];
      if (v11)
      {
        v5[11] = v11;
        operator delete(v11);
      }

      v12 = v5[7];
      if (v12)
      {
        v5[8] = v12;
        operator delete(v12);
      }

      v5 += 16;
    }
  }
}

void **sub_C4E1C0(void **a1)
{
  sub_C4E1F4(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_C4E1F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  for (i = *(a1 + 16); i != v1; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 128;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    v6 = *(i - 72);
    if (v6)
    {
      *(i - 64) = v6;
      operator delete(v6);
    }
  }
}

uint64_t sub_C4E274(uint64_t a1, int *a2, unsigned int *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *a3;
  *(a1 + 8) = a3[2];
  *a1 = v10;
  v11 = (a2 - *a2);
  v12 = *v11;
  if (v12 < 5 || !v11[2])
  {
    v21 = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 32) = a4;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    goto LABEL_32;
  }

  v13 = &a2[*a3] + v11[2] + *(a2 + v11[2]);
  v14 = (v13 + 4 + *(v13 + 4));
  *(a1 + 16) = v14;
  if (v12 < 7 || !v11[3])
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = a4;
    v18 = (v14 - *v14);
    v19 = *v18;
    if (v19 < 0x13)
    {
      goto LABEL_9;
    }

LABEL_13:
    v22 = v18[9];
    if (v18[9])
    {
      v22 += v14 + *(v14 + v22) + 4;
    }

    *(a1 + 40) = v22;
    if (v12 < 0xD)
    {
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  v15 = 0x17FFFFFFE8;
  v16 = (v14 - *v14);
  if (*v16 >= 0xDu)
  {
    v17 = v16[6];
    if (v17)
    {
      v15 = 24 * *(v14 + v17);
    }
  }

  *(a1 + 24) = a2 + v11[3] + *(a2 + v11[3]) + v15 + 4;
  *(a1 + 32) = a4;
  v18 = (v14 - *v14);
  v19 = *v18;
  if (v19 >= 0x13)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(a1 + 40) = 0;
  if (v12 < 0xD)
  {
LABEL_10:
    LODWORD(v20) = 0;
    goto LABEL_20;
  }

LABEL_16:
  v20 = v11[6];
  if (!v20)
  {
LABEL_20:
    *(a1 + 48) = v20;
    v27 = (v14 - *v14);
    if (*v27 < 0x13u)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v23 = (a2 + v20);
  if (v19 >= 0x15 && (v24 = v18[10]) != 0)
  {
    v25 = a5;
    v26 = *(v14 + v24);
  }

  else
  {
    v25 = a5;
    v26 = -1;
  }

  v28 = *(sub_A56DB8((v23 + *v23), a3[2] + v26) + 4);
  v14 = *(a1 + 16);
  v29 = (v14 - *v14);
  if (*v29 < 0xBu)
  {
    v31 = 0x7FFFFFFF;
    a5 = v25;
  }

  else
  {
    v30 = v29[5];
    a5 = v25;
    if (v30)
    {
      v31 = *(v14 + v30);
    }

    else
    {
      v31 = 0x7FFFFFFF;
    }
  }

  *(a1 + 48) = v31 + v28;
  v27 = (v14 - *v14);
  if (*v27 < 0x13u)
  {
    goto LABEL_31;
  }

LABEL_29:
  v32 = v27[9];
  if (v32)
  {
    v21 = *(v14 + v32 + *(v14 + v32));
    goto LABEL_32;
  }

LABEL_31:
  v21 = 0;
LABEL_32:
  *(a1 + 56) = 0u;
  *(a1 + 52) = v21;
  *(a1 + 104) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0;
  if (a1 + 56 != a5)
  {
    sub_C4E558((a1 + 56), *a5, *(a5 + 8), (*(a5 + 8) - *a5) >> 1);
  }

  if (a1 + 80 != a6)
  {
    sub_35354C((a1 + 80), *a6, *(a6 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a6 + 8) - *a6) >> 2));
  }

  if (a1 + 104 != a7)
  {
    sub_31F64((a1 + 104), *a7, *(a7 + 8), (*(a7 + 8) - *a7) >> 3);
  }

  return a1;
}

void sub_C4E52C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 112) = v4;
    operator delete(v4);
  }

  sub_21E3988((v1 + 80), (v1 + 56), v1);
  _Unwind_Resume(a1);
}

char *sub_C4E558(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 1)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v6 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v6;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFFELL;
      v11 = 0x7FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if ((v11 & 0x8000000000000000) == 0)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 1)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_C4E6A8(void *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v23 = a1;
  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 24 * v2;
  __p = 0;
  v20 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v21 = 24 * v2 + 24;
  v22 = 0;
  sub_C4D80C(a1, &__p);
  v7 = a1[1];
  v8 = v20;
  v9 = v21;
  if (v21 != v20)
  {
    v10 = v21;
    do
    {
      v13 = *(v10 - 3);
      v10 -= 3;
      v12 = v13;
      v21 = v10;
      if (v13)
      {
        v14 = *(v9 - 16);
        v11 = v12;
        if (v14 != v12)
        {
          do
          {
            v15 = *(v14 - 3);
            if (v15)
            {
              *(v14 - 2) = v15;
              operator delete(v15);
            }

            v16 = *(v14 - 6);
            if (v16)
            {
              *(v14 - 5) = v16;
              operator delete(v16);
            }

            v17 = *(v14 - 9);
            if (v17)
            {
              *(v14 - 8) = v17;
              operator delete(v17);
            }

            v14 -= 128;
          }

          while (v14 != v12);
          v11 = *v10;
        }

        *(v9 - 16) = v12;
        operator delete(v11);
        v10 = v21;
      }

      v9 = v10;
    }

    while (v10 != v8);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_C4E858(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C4D948(va);
  _Unwind_Resume(a1);
}

void sub_C4E86C(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a3;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = a2[1] - *a2;
  if (v4)
  {
    v5 = 0;
    v24 = a1 << 32;
    v25 = v4 >> 3;
    v27 = v3;
    do
    {
      v6 = *a2;
      if (v5 >= (a2[1] - *a2) >> 3)
      {
        sub_6FAB4();
      }

      v7 = sub_2FEF94(v5);
      v8 = *(*(v6 + 8 * v5) + 8) - **(v6 + 8 * v5);
      if (v8)
      {
        v9 = 0;
        v10 = v8 >> 3;
        v11 = __ROR8__(v24 | v7, 32);
        do
        {
          while (1)
          {
            v12 = **(v6 + 8 * v5);
            if (v9 >= (*(*(v6 + 8 * v5) + 8) - v12) >> 3)
            {
              sub_6FAB4();
            }

            v28[0] = __ROR8__(*(v12 + 8 * v9), 32);
            v28[2] = v28;
            v13 = sub_C4EB5C(v3, v28);
            v14 = sub_C4C68C(v9);
            v16 = v13[4];
            v15 = v13[5];
            if (v16 >= v15)
            {
              break;
            }

            *v16 = v11;
            *(v16 + 8) = v14;
            *(v16 + 9) = 0;
            *(v16 + 10) = 0;
            v13[4] = v16 + 12;
            if (v10 == ++v9)
            {
              goto LABEL_3;
            }
          }

          v17 = v13[3];
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v17) >> 2) + 1;
          if (v18 > 0x1555555555555555)
          {
            sub_1794();
          }

          v19 = 0xAAAAAAAAAAAAAAABLL * ((v15 - v17) >> 2);
          if (2 * v19 > v18)
          {
            v18 = 2 * v19;
          }

          if (v19 >= 0xAAAAAAAAAAAAAAALL)
          {
            v20 = 0x1555555555555555;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (v20 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v21 = 4 * ((v16 - v17) >> 2);
          *v21 = v11;
          *(v21 + 8) = v14;
          *(v21 + 9) = 0;
          *(v21 + 10) = 0;
          v22 = v21 + 12;
          v23 = (v21 - (v16 - v17));
          memcpy(v23, v17, v16 - v17);
          v13[3] = v23;
          v13[4] = v22;
          v13[5] = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v3 = v27;
          v13[4] = v22;
          ++v9;
        }

        while (v10 != v9);
      }

LABEL_3:
      ++v5;
    }

    while (v5 != v25);
  }
}

uint64_t *sub_C4EB5C(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C4EEC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_39EA4(va);
  _Unwind_Resume(a1);
}

void sub_C4EED8(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v26 = a1 << 32;
    v27 = v3 >> 3;
    do
    {
      v33 = *a2;
      if (v4 >= (a2[1] - *a2) >> 3)
      {
        sub_6FAB4();
      }

      v5 = sub_2FEF94(v4);
      v6 = *(*(v33 + 8 * v4) + 32) - *(*(v33 + 8 * v4) + 24);
      if (v6)
      {
        v34 = 0;
        v28 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
        v30 = __ROR8__(v26 | v5, 32);
        do
        {
          v7 = *(*(v33 + 8 * v4) + 8) - **(v33 + 8 * v4);
          if (v7)
          {
            v8 = 0;
            v32 = v7 >> 3;
            do
            {
              v10 = v8 + *(*(v33 + 8 * v4) + 76) + ((*(*(v33 + 8 * v4) + 8) - **(v33 + 8 * v4)) >> 3) * v34;
              v11 = a2[9];
              if (0xAAAAAAAAAAAAAAABLL * ((a2[10] - v11) >> 2) <= v10)
              {
                sub_6FAB4();
              }

              v12 = v11 + 12 * v10;
              v35[0] = __ROR8__(*v12, 32);
              v13 = *(v12 + 8);
              v35[2] = v35;
              v14 = sub_C4F530(a3, v35);
              v15 = v14[3];
              if (v13 >= (v14[4] - v15) >> 3)
              {
                operator new();
              }

              v16 = *(v15 + 8 * v13);
              v17 = *(v16 + 8);
              v18 = *(v16 + 16);
              if (v17 < v18)
              {
                *v17 = v30;
                *(v17 + 8) = v34;
                v9 = v17 + 12;
              }

              else
              {
                v19 = *v16;
                v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - *v16) >> 2);
                v21 = v20 + 1;
                if (v20 + 1 > 0x1555555555555555)
                {
                  sub_1794();
                }

                v22 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v19) >> 2);
                if (2 * v22 > v21)
                {
                  v21 = 2 * v22;
                }

                if (v22 >= 0xAAAAAAAAAAAAAAALL)
                {
                  v23 = 0x1555555555555555;
                }

                else
                {
                  v23 = v21;
                }

                if (v23)
                {
                  if (v23 <= 0x1555555555555555)
                  {
                    operator new();
                  }

                  sub_1808();
                }

                v24 = 4 * ((v17 - *v16) >> 2);
                *v24 = v30;
                *(v24 + 8) = v34;
                v9 = 12 * v20 + 12;
                v25 = 12 * v20 - (v17 - v19);
                memcpy((v24 - (v17 - v19)), v19, v17 - v19);
                *v16 = v25;
                *(v16 + 8) = v9;
                *(v16 + 16) = 0;
                if (v19)
                {
                  operator delete(v19);
                }
              }

              *(v16 + 8) = v9;
              ++v8;
            }

            while (v8 != v32);
          }

          ++v34;
        }

        while (v34 != v28);
      }

      ++v4;
    }

    while (v4 != v27);
  }
}

void sub_C4F348()
{
  v1 = *v0;
  if (*v0)
  {
    *(v0 + 8) = v1;
    operator delete(v1);
  }

  operator delete();
}

uint64_t sub_C4F39C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[3];
      if (v5)
      {
        v6 = v2[4];
        v3 = v2[3];
        if (v6 != v5)
        {
          do
          {
            v8 = *--v6;
            v7 = v8;
            *v6 = 0;
            if (v8)
            {
              v9 = *v7;
              if (*v7)
              {
                *(v7 + 8) = v9;
                operator delete(v9);
              }

              operator delete();
            }
          }

          while (v6 != v5);
          v3 = v2[3];
        }

        v2[4] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v10 = *a1;
  *a1 = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return a1;
}

void sub_C4F474(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    v3 = *(a2 + 16);
    v4 = *(a2 + 8);
    if (v3 != v2)
    {
      do
      {
        v6 = *--v3;
        v5 = v6;
        *v3 = 0;
        if (v6)
        {
          v7 = *v5;
          if (*v5)
          {
            *(v5 + 8) = v7;
            operator delete(v7);
          }

          operator delete();
        }
      }

      while (v3 != v2);
      v4 = *(a2 + 8);
    }

    *(a2 + 16) = v2;

    operator delete(v4);
  }
}

uint64_t *sub_C4F530(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 0xFF51AFD7ED558CCDLL * (*a2 ^ (*a2 >> 33));
  v4 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v3 ^ (v3 >> 33))) >> 33);
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v6.u32[0] < 2uLL)
  {
    while (1)
    {
      v12 = v9[1];
      if (v12 == v4)
      {
        if (*(v9 + 5) == HIDWORD(v2) && *(v9 + 4) == v2)
        {
          return v9;
        }
      }

      else if ((v12 & (*&v5 - 1)) != v7)
      {
        goto LABEL_31;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v10 >= *&v5)
    {
      v10 %= *&v5;
    }

    if (v10 != v7)
    {
      goto LABEL_31;
    }

LABEL_12:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_31;
    }
  }

  if (*(v9 + 5) != HIDWORD(v2) || *(v9 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v9;
}

void sub_C4F898(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C4F8AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_C4F8AC(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_C4F474(*(a1 + 8), v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

int *sub_C4F900@<X0>(void *a1@<X0>, void *a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  *(a5 + 144) = 0u;
  *(a5 + 160) = 0u;
  *(a5 + 112) = 0u;
  *(a5 + 128) = 0u;
  *(a5 + 80) = 0u;
  *(a5 + 96) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0u;
  *a5 = 0u;
  *(a5 + 202) = 0;
  *(a5 + 192) = 0x3E4CCCCD3F000000;
  *(a5 + 204) = 0xFFFFFFFF00000000;
  *(a5 + 220) = 0;
  *(a5 + 212) = 0;
  *(a5 + 228) = 0;
  *(a5 + 240) = 0xFFFFFFFFLL;
  v7 = (a5 + 240);
  *(a5 + 176) = xmmword_2267060;
  v775 = a5 + 176;
  *(a5 + 232) = 32;
  *(a5 + 200) = 256;
  *(a5 + 288) = 0;
  *(a5 + 256) = 0;
  *(a5 + 264) = 0;
  *(a5 + 272) = 0;
  *(a5 + 280) = 0;
  *(a5 + 248) = -1;
  result = malloc_type_malloc(0x180uLL, 0x10000403E1C8BA9uLL);
  *(a5 + 256) = result;
  v9 = *(a5 + 232);
  if (v9)
  {
    v10 = 12 * v9;
    do
    {
      *result = *v7;
      result[2] = *(a5 + 248);
      result += 3;
      v10 -= 12;
    }

    while (v10);
  }

  v11 = *a2;
  v760 = a2[1];
  if (*a2 != v760)
  {
    v779 = (a5 + 240);
    while (1)
    {
      v12 = sub_994FB4(a1[521] + 24, __ROR8__(*v11, 32), 0, "transfer graph");
      v13 = (v12 - *v12);
      v765 = v11;
      if (*v13 >= 7u)
      {
        v14 = v13[3];
        if (v14)
        {
          v772 = *(v12 + v14 + *(v12 + v14));
          if (v772)
          {
            v781 = 0;
            while (1)
            {
              v16 = a1[521];
              v17 = __ROR8__(*v11, 32);
              v790 = 0;
              v791 = v17;
              v787 = "transfer graph";
              v788 = &v790;
              v789 = &v791;
              v18 = *(v16 + 3880) + 1;
              *(v16 + 3880) = v18;
              v19 = *(v16 + 24);
              if (!v19)
              {
                exception = __cxa_allocate_exception(0x40uLL);
                v794 = v791;
                v792 = sub_7FCF0(6u);
                v793 = v641;
                sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                if ((v786 & 0x80000000) == 0)
                {
                  v642 = v785;
                }

                else
                {
                  v642 = *v785;
                }

                if ((v786 & 0x80000000) == 0)
                {
                  v643 = BYTE3(v786);
                }

                else
                {
                  v643 = *&v785[8];
                }

                v644 = sub_2D390(exception, v642, v643);
              }

              if (*(v16 + 616) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 624) = v18;
                v20 = *(v16 + 632);
                if (!v20)
                {
                  goto LABEL_1008;
                }
              }

              else if (*(v16 + 640) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 648) = v18;
                v20 = *(v16 + 656);
                if (!v20)
                {
                  goto LABEL_1008;
                }
              }

              else if (*(v16 + 664) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 672) = v18;
                v20 = *(v16 + 680);
                if (!v20)
                {
                  goto LABEL_1008;
                }
              }

              else if (*(v16 + 688) == v17)
              {
                ++*(v16 + 3888);
                *(v16 + 696) = v18;
                v20 = *(v16 + 704);
                if (!v20)
                {
LABEL_1008:
                  v665 = __cxa_allocate_exception(0x40uLL);
                  v794 = v791;
                  v792 = sub_7FCF0(6u);
                  v793 = v666;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v667 = v785;
                  }

                  else
                  {
                    v667 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v668 = BYTE3(v786);
                  }

                  else
                  {
                    v668 = *&v785[8];
                  }

                  v669 = sub_2D390(v665, v667, v668);
                }
              }

              else
              {
                v21 = *(v16 + 672);
                v22 = *(v16 + 648);
                v23 = *(v16 + 624);
                v24 = *(v16 + 696);
                v20 = sub_2D52A4(v19, 6, v17, 1);
                if (v23 >= v18)
                {
                  v25 = v18;
                }

                else
                {
                  v25 = v23;
                }

                if (v23 >= v18)
                {
                  v26 = 0;
                }

                else
                {
                  v26 = 24;
                }

                if (v22 < v25)
                {
                  v25 = v22;
                  v26 = 25;
                }

                if (v21 < v25)
                {
                  v26 = 26;
                  v25 = v21;
                }

                v27 = v24 >= v25;
                v28 = 27;
                if (v27)
                {
                  v28 = v26;
                }

                v29 = v16 + 40 + 24 * v28;
                *v29 = v791;
                *(v29 + 8) = *(v16 + 3880);
                *(v29 + 16) = v20;
                if (!v20)
                {
                  sub_2C9894(&v788);
LABEL_1100:
                  v725 = __cxa_allocate_exception(0x40uLL);
                  v794 = HIDWORD(v17);
                  LODWORD(v788) = v17;
                  v792 = sub_7FCF0(6u);
                  v793 = v726;
                  sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v727 = v785;
                  }

                  else
                  {
                    v727 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v728 = BYTE3(v786);
                  }

                  else
                  {
                    v728 = *&v785[8];
                  }

                  v729 = sub_2D390(v725, v727, v728);
                }
              }

              v30 = (v20 + *v20);
              v31 = (v30 - *v30);
              if (*v31 < 0x25u)
              {
                goto LABEL_1100;
              }

              v32 = v31[18];
              if (!v32)
              {
                goto LABEL_1100;
              }

              v33 = (v30 + v32 + *(v30 + v32));
              if (*v33 <= HIDWORD(v17))
              {
                goto LABEL_1100;
              }

              v34 = (&v33[HIDWORD(v17) + 1] + v33[HIDWORD(v17) + 1]);
              v35 = (v34 - *v34);
              if (*v35 >= 7u && (v36 = v35[3]) != 0)
              {
                v37 = (v34 + v36 + *(v34 + v36));
              }

              else
              {
                v37 = 0;
              }

              v38 = sub_C54264(v37, v781);
              if (v38)
              {
                v39 = v38[1] | (*v38 << 32);
              }

              else
              {
                v39 = 0xFFFFFFFFLL;
              }

              v40 = *(a5 + 232) - 1;
              v41 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v39 ^ (v39 >> 33))) >> 33));
              v42 = v41 ^ (v41 >> 33);
              v43 = *(a5 + 256);
              v45 = *(a5 + 240);
              v44 = *(a5 + 244);
              v46 = v42 & v40;
              v47 = (v43 + 12 * (v42 & v40));
              v49 = *v47;
              v48 = v47[1];
              if (v44 == v48 && v45 == v49)
              {
LABEL_71:
                v51 = v46;
                goto LABEL_72;
              }

              if (!*(a5 + 216))
              {
                break;
              }

              v51 = -1;
              v52 = 1;
              do
              {
                if (*(a5 + 212) == v48 && *(a5 + 208) == v49)
                {
                  if (v51 == -1)
                  {
                    v51 = v46;
                  }
                }

                else if (__PAIR64__(v48, v49) == v39)
                {
                  if (v46 != -1)
                  {
LABEL_67:
                    v55 = v43 + 12 * v46;
                    v56 = *(v55 + 8);
                    if (v56 == -1)
                    {
                      goto LABEL_68;
                    }

LABEL_129:
                    v94 = *(a5 + 72);
                    v95 = *(a5 + 80);
                    v96 = v95 - v94;
                    v97 = (v95 - v94) >> 3;
                    if (v56 < v97)
                    {
                      goto LABEL_13;
                    }

                    goto LABEL_143;
                  }

LABEL_105:
                  v51 = -1;
                  goto LABEL_72;
                }

                v46 = (v46 + v52) & v40;
                v53 = (v43 + 12 * v46);
                v49 = *v53;
                v48 = v53[1];
                ++v52;
              }

              while (v44 != v48 || v45 != v49);
              if (v51 == -1)
              {
                goto LABEL_71;
              }

LABEL_72:
              if (!sub_C54418(v775, 1))
              {
                v76 = *(a5 + 216);
                v75 = *(a5 + 224);
                if ((v75 - v76) >= 0x1555555555555555)
                {
                  goto LABEL_1067;
                }

                v62 = *(a5 + 256);
                v7 = v779;
                if (v76 && ((v77 = (v62 + 12 * v51), *(a5 + 212) == v77[1]) ? (v78 = *(a5 + 208) == *v77) : (v78 = 0), v78))
                {
                  *(a5 + 216) = v76 - 1;
                }

                else
                {
                  *(a5 + 224) = v75 + 1;
                }

                v89 = 3 * v51;
LABEL_128:
                v92 = 4 * v89;
                v93 = v62 + v92;
                *v93 = v39;
                *(v93 + 8) = -1;
                v55 = *(a5 + 256) + v92;
                v56 = *(v55 + 8);
                if (v56 == -1)
                {
                  goto LABEL_68;
                }

                goto LABEL_129;
              }

              v61 = *(a5 + 232) - 1;
              v62 = *(a5 + 256);
              v64 = *(a5 + 240);
              v63 = *(a5 + 244);
              v65 = v61 & v42;
              v66 = (v62 + 12 * (v61 & v42));
              v68 = *v66;
              v67 = v66[1];
              v69 = *(a5 + 216);
              if (v63 == v67 && v64 == v68)
              {
                v7 = v779;
                v71 = v61 & v42;
                v79 = *(a5 + 224);
                if ((v79 - v69) < 0x1555555555555555)
                {
                  goto LABEL_120;
                }

                goto LABEL_1067;
              }

              v7 = v779;
              if (v69)
              {
                v71 = -1;
                v72 = 1;
                do
                {
                  if (*(a5 + 212) == v67 && *(a5 + 208) == v68)
                  {
                    if (v71 == -1)
                    {
                      v71 = v65;
                    }
                  }

                  else if (__PAIR64__(v67, v68) == v39)
                  {
                    goto LABEL_137;
                  }

                  v65 = (v65 + v72) & v61;
                  v73 = (v62 + 12 * v65);
                  v68 = *v73;
                  v67 = v73[1];
                  ++v72;
                }

                while (v63 != v67 || v64 != v68);
                if (v71 == -1)
                {
LABEL_118:
                  v71 = v65;
                }

                v79 = *(a5 + 224);
                if ((v79 - v69) < 0x1555555555555555)
                {
LABEL_120:
                  if (v69 && ((v90 = (v62 + 12 * v71), *(a5 + 212) == v90[1]) ? (v91 = *(a5 + 208) == *v90) : (v91 = 0), v91))
                  {
                    *(a5 + 216) = v69 - 1;
                  }

                  else
                  {
                    *(a5 + 224) = v79 + 1;
                  }

                  v89 = 3 * v71;
                  goto LABEL_128;
                }

LABEL_1067:
                v707 = __cxa_allocate_exception(0x10uLL);
                std::logic_error::logic_error(v707, "insert overflow");
              }

              v98 = 1;
              while (__PAIR64__(v67, v68) != v39)
              {
                v65 = (v65 + v98) & v61;
                v99 = (v62 + 12 * v65);
                v68 = *v99;
                v67 = v99[1];
                ++v98;
                if (v63 == v67 && v64 == v68)
                {
                  goto LABEL_118;
                }
              }

LABEL_137:
              if (v65 == -1)
              {
                v71 = -1;
                v79 = *(a5 + 224);
                if ((v79 - v69) < 0x1555555555555555)
                {
                  goto LABEL_120;
                }

                goto LABEL_1067;
              }

              v55 = v62 + 12 * v65;
              v56 = *(v55 + 8);
              if (v56 != -1)
              {
                goto LABEL_129;
              }

LABEL_68:
              v57 = *(a5 + 288);
              *(a5 + 288) = v57 + 1;
              *(v55 + 8) = v57;
              v59 = *(a5 + 272);
              v58 = *(a5 + 280);
              if (v59 >= v58)
              {
                v83 = v7[3];
                v84 = v59 - v83;
                v85 = (v59 - v83) >> 3;
                v86 = v85 + 1;
                if ((v85 + 1) >> 61)
                {
                  sub_1794();
                }

                v87 = v58 - v83;
                if (v87 >> 2 > v86)
                {
                  v86 = v87 >> 2;
                }

                if (v87 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v88 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v88 = v86;
                }

                if (!v88)
                {
                  v101 = v85;
                  v102 = (8 * v85);
                  v103 = &v102[-v101];
                  *v102 = v39;
                  v60 = v102 + 1;
                  memcpy(v103, v83, v84);
                  *(a5 + 264) = v103;
                  *(a5 + 272) = v60;
                  *(a5 + 280) = 0;
                  if (v83)
                  {
                    operator delete(v83);
                  }

                  goto LABEL_142;
                }

                if (!(v88 >> 61))
                {
                  operator new();
                }

                goto LABEL_969;
              }

              *v59 = v39;
              v60 = v59 + 1;
LABEL_142:
              *(a5 + 272) = v60;
              v56 = *(v55 + 8);
              v94 = *(a5 + 72);
              v95 = *(a5 + 80);
              v96 = v95 - v94;
              v97 = (v95 - v94) >> 3;
              if (v56 < v97)
              {
                goto LABEL_13;
              }

LABEL_143:
              v104 = v56 + 1;
              v776 = v97;
              v770 = v104;
              if (v104 >= v97)
              {
                goto LABEL_179;
              }

              v105 = v56 + 1;
              v106 = v97;
              while (2)
              {
                v107 = v105;
                v108 = *(a5 + 72);
                v109 = *(a5 + 80);
                v110 = (v109 - v108) >> 3;
                if (v110 <= v105)
                {
                  v115 = v105 + 1;
                  v116 = v115 - v110;
                  if (v115 <= v110)
                  {
                    if (v115 < v110)
                    {
                      v109 = &v108[8 * v115];
                      *(a5 + 80) = v109;
                    }

                    goto LABEL_146;
                  }

                  v117 = *(a5 + 88);
                  if (v116 <= (v117 - v109) >> 3)
                  {
                    bzero(*(a5 + 80), 8 * v116);
                    v109 += 8 * v116;
                    *(a5 + 80) = v109;
                    v108 = *(a5 + 72);
                    goto LABEL_146;
                  }

                  v118 = v117 - v108;
                  if (v118 >> 2 > v115)
                  {
                    v115 = v118 >> 2;
                  }

                  if (v118 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v119 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v119 = v115;
                  }

                  if (!(v119 >> 61))
                  {
                    operator new();
                  }

LABEL_969:
                  sub_1808();
                }

LABEL_146:
                v111 = *(a5 + 96);
                v112 = *&v108[8 * v107];
                v113 = (v109 - v108) >> 3;
                if (v113 > v107)
                {
                  goto LABEL_147;
                }

                v120 = (v107 + 1);
                v121 = v120 - v113;
                if (v120 <= v113)
                {
                  if (v120 < v113)
                  {
                    *(a5 + 80) = &v108[8 * v120];
                  }

LABEL_147:
                  v114 = v111;
                }

                else
                {
                  v122 = *(a5 + 88);
                  if (v121 <= (v122 - v109) >> 3)
                  {
                    bzero(v109, 8 * v121);
                    *(a5 + 80) = &v109[8 * v121];
                  }

                  else
                  {
                    v123 = (v109 - v108) >> 3;
                    v124 = v123 + v121;
                    if ((v123 + v121) >> 61)
                    {
                      goto LABEL_971;
                    }

                    v125 = v122 - v108;
                    if (v125 >> 2 > v124)
                    {
                      v124 = v125 >> 2;
                    }

                    if (v125 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v126 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v126 = v124;
                    }

                    if (v126)
                    {
                      if (!(v126 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_969;
                    }

                    v127 = (8 * v123);
                    bzero(v127, 8 * v121);
                    v128 = &v127[8 * v121];
                    v129 = &v127[-8 * ((v109 - v108) >> 3)];
                    memcpy(v129, v108, v109 - v108);
                    *(a5 + 72) = v129;
                    *(a5 + 80) = v128;
                    *(a5 + 88) = 0;
                    v106 = v776;
                    if (v108)
                    {
                      operator delete(v108);
                    }
                  }

                  v108 = *(a5 + 72);
                  v114 = *(a5 + 96);
                }

                sub_C54CE4((a5 + 72), v107, (v111 + 28 * v112), (v114 + 28 * *&v108[8 * v107 + 4]));
                v105 = v107 + 1;
                if (v106 != v107 + 1)
                {
                  continue;
                }

                break;
              }

              v94 = *(a5 + 72);
              v95 = *(a5 + 80);
              v96 = v95 - v94;
              v7 = v779;
              v11 = v765;
              v104 = v770;
LABEL_179:
              v130 = v96 >> 3;
              v131 = v104 - v130;
              if (v104 <= v130)
              {
                if (v104 >= v130)
                {
                  goto LABEL_196;
                }

                v138 = &v94[8 * v104];
                goto LABEL_193;
              }

              v132 = *(a5 + 88);
              if (v131 <= (v132 - v95) >> 3)
              {
                bzero(v95, 8 * v131);
                v138 = &v95[8 * v131];
LABEL_193:
                *(a5 + 80) = v138;
                goto LABEL_196;
              }

              v133 = v95 - v94;
              v134 = (v133 >> 3) + v131;
              if (v134 >> 61)
              {
                goto LABEL_971;
              }

              v135 = v104;
              v136 = v132 - v94;
              if (v136 >> 2 > v134)
              {
                v134 = v136 >> 2;
              }

              if (v136 >= 0x7FFFFFFFFFFFFFF8)
              {
                v137 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v137 = v134;
              }

              if (v137)
              {
                if (!(v137 >> 61))
                {
                  operator new();
                }

                goto LABEL_969;
              }

              v11 = v765;
              v139 = (8 * (v133 >> 3));
              bzero(v139, 8 * v131);
              memcpy(0, v94, v133);
              *(a5 + 72) = 0;
              *(a5 + 80) = &v139[8 * v131];
              *(a5 + 88) = 0;
              v7 = v779;
              v104 = v135;
              if (v94)
              {
                operator delete(v94);
              }

LABEL_196:
              v140 = *a5;
              v141 = *(a5 + 8);
              v142 = &v141[-*a5];
              v777 = v142 >> 3;
              if (v104 >= (v142 >> 3))
              {
                goto LABEL_232;
              }

              v143 = v104;
              v144 = v777;
              while (2)
              {
                v145 = v143;
                v147 = *a5;
                v146 = *(a5 + 8);
                v148 = &v146[-*a5] >> 3;
                if (v148 <= v143)
                {
                  v153 = v143 + 1;
                  v154 = v153 - v148;
                  if (v153 <= v148)
                  {
                    if (v153 < v148)
                    {
                      v146 = &v147[2 * v153];
                      *(a5 + 8) = v146;
                    }
                  }

                  else
                  {
                    v155 = *(a5 + 16);
                    if (v154 > (v155 - v146) >> 3)
                    {
                      v156 = v155 - v147;
                      if (v156 >> 2 > v153)
                      {
                        v153 = v156 >> 2;
                      }

                      if (v156 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v157 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v157 = v153;
                      }

                      if (!(v157 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_969;
                    }

                    bzero(*(a5 + 8), 8 * v154);
                    v146 += 8 * v154;
                    *(a5 + 8) = v146;
                    v147 = *a5;
                  }
                }

                v149 = *(a5 + 24);
                v150 = v147[2 * v145];
                v151 = (v146 - v147) >> 3;
                if (v151 <= v145)
                {
                  v158 = (v145 + 1);
                  v159 = v158 - v151;
                  if (v158 <= v151)
                  {
                    if (v158 < v151)
                    {
                      *(a5 + 8) = &v147[2 * v158];
                    }

                    goto LABEL_200;
                  }

                  v160 = *(a5 + 16);
                  if (v159 <= (v160 - v146) >> 3)
                  {
                    bzero(v146, 8 * v159);
                    *(a5 + 8) = &v146[8 * v159];
                  }

                  else
                  {
                    v161 = v146 - v147;
                    v162 = (v161 >> 3) + v159;
                    if (v162 >> 61)
                    {
                      goto LABEL_971;
                    }

                    v163 = v160 - v147;
                    if (v163 >> 2 > v162)
                    {
                      v162 = v163 >> 2;
                    }

                    if (v163 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v164 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v164 = v162;
                    }

                    if (v164)
                    {
                      if (!(v164 >> 61))
                      {
                        operator new();
                      }

                      goto LABEL_969;
                    }

                    v165 = (8 * (v161 >> 3));
                    bzero(v165, 8 * v159);
                    memcpy(0, v147, v161);
                    *a5 = 0;
                    *(a5 + 8) = &v165[8 * v159];
                    *(a5 + 16) = 0;
                    v144 = v777;
                    if (v147)
                    {
                      operator delete(v147);
                    }
                  }

                  v147 = *a5;
                  v152 = *(a5 + 24);
                }

                else
                {
LABEL_200:
                  v152 = v149;
                }

                sub_C54CE4(a5, v145, (v149 + 28 * v150), (v152 + 28 * v147[2 * v145 + 1]));
                v143 = v145 + 1;
                if (v144 != v145 + 1)
                {
                  continue;
                }

                break;
              }

              v140 = *a5;
              v141 = *(a5 + 8);
              v142 = &v141[-*a5];
              v7 = v779;
              v11 = v765;
              v104 = v770;
LABEL_232:
              v166 = v142 >> 3;
              v167 = v104 - v166;
              if (v104 <= v166)
              {
                if (v104 >= v166)
                {
                  goto LABEL_13;
                }

                v15 = &v140[8 * v104];
LABEL_12:
                *(a5 + 8) = v15;
                goto LABEL_13;
              }

              v168 = *(a5 + 16);
              if (v167 <= (v168 - v141) >> 3)
              {
                bzero(v141, 8 * v167);
                v15 = &v141[8 * v167];
                goto LABEL_12;
              }

              v169 = v141 - v140;
              v170 = (v169 >> 3) + v167;
              if (v170 >> 61)
              {
LABEL_971:
                sub_1794();
              }

              v171 = v168 - v140;
              if (v171 >> 2 > v170)
              {
                v170 = v171 >> 2;
              }

              if (v171 >= 0x7FFFFFFFFFFFFFF8)
              {
                v172 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v172 = v170;
              }

              if (v172)
              {
                if (!(v172 >> 61))
                {
                  operator new();
                }

                goto LABEL_969;
              }

              v11 = v765;
              v173 = (8 * (v169 >> 3));
              bzero(v173, 8 * v167);
              memcpy(0, v140, v169);
              *a5 = 0;
              *(a5 + 8) = &v173[8 * v167];
              *(a5 + 16) = 0;
              v7 = v779;
              if (v140)
              {
                operator delete(v140);
              }

LABEL_13:
              if (++v781 == v772)
              {
                goto LABEL_249;
              }
            }

            v80 = 1;
            while (__PAIR64__(v48, v49) != v39)
            {
              v46 = (v46 + v80) & v40;
              v81 = (v43 + 12 * v46);
              v49 = *v81;
              v48 = v81[1];
              ++v80;
              if (v44 == v48 && v45 == v49)
              {
                goto LABEL_71;
              }
            }

            v7 = v779;
            if (v46 != -1)
            {
              goto LABEL_67;
            }

            goto LABEL_105;
          }
        }
      }

LABEL_249:
      result = sub_994FB4(a1[521] + 24, __ROR8__(*v11, 32), 0, "transfer graph");
      v174 = (result - *result);
      if (*v174 >= 9u)
      {
        v175 = v174[4];
        if (v175)
        {
          v763 = *(result + v175 + *(result + v175));
          if (v763)
          {
            break;
          }
        }
      }

LABEL_6:
      if (++v11 == v760)
      {
        return result;
      }
    }

    v771 = 0;
LABEL_255:
    v177 = a1[521];
    v178 = __ROR8__(*v11, 32);
    v790 = 0;
    v791 = v178;
    v787 = "transfer graph";
    v788 = &v790;
    v789 = &v791;
    v179 = *(v177 + 3880) + 1;
    *(v177 + 3880) = v179;
    v180 = *(v177 + 24);
    if (!v180)
    {
      v645 = __cxa_allocate_exception(0x40uLL);
      v794 = v791;
      v792 = sub_7FCF0(6u);
      v793 = v646;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
      if ((v786 & 0x80000000) == 0)
      {
        v647 = v785;
      }

      else
      {
        v647 = *v785;
      }

      if ((v786 & 0x80000000) == 0)
      {
        v648 = BYTE3(v786);
      }

      else
      {
        v648 = *&v785[8];
      }

      v649 = sub_2D390(v645, v647, v648);
    }

    if (*(v177 + 616) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 624) = v179;
      v181 = *(v177 + 632);
      if (!v181)
      {
        goto LABEL_1015;
      }
    }

    else if (*(v177 + 640) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 648) = v179;
      v181 = *(v177 + 656);
      if (!v181)
      {
        goto LABEL_1015;
      }
    }

    else if (*(v177 + 664) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 672) = v179;
      v181 = *(v177 + 680);
      if (!v181)
      {
        goto LABEL_1015;
      }
    }

    else if (*(v177 + 688) == v178)
    {
      ++*(v177 + 3888);
      *(v177 + 696) = v179;
      v181 = *(v177 + 704);
      if (!v181)
      {
LABEL_1015:
        v670 = __cxa_allocate_exception(0x40uLL);
        v794 = v791;
        v792 = sub_7FCF0(6u);
        v793 = v671;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v672 = v785;
        }

        else
        {
          v672 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v673 = BYTE3(v786);
        }

        else
        {
          v673 = *&v785[8];
        }

        v674 = sub_2D390(v670, v672, v673);
      }
    }

    else
    {
      v182 = *(v177 + 672);
      v183 = *(v177 + 648);
      v184 = *(v177 + 624);
      v185 = *(v177 + 696);
      v181 = sub_2D52A4(v180, 6, v178, 1);
      if (v184 >= v179)
      {
        v186 = v179;
      }

      else
      {
        v186 = v184;
      }

      if (v184 >= v179)
      {
        v187 = 0;
      }

      else
      {
        v187 = 24;
      }

      if (v183 < v186)
      {
        v186 = v183;
        v187 = 25;
      }

      if (v182 < v186)
      {
        v187 = 26;
        v186 = v182;
      }

      v27 = v185 >= v186;
      v188 = 27;
      if (v27)
      {
        v188 = v187;
      }

      v189 = v177 + 40 + 24 * v188;
      *v189 = v791;
      *(v189 + 8) = *(v177 + 3880);
      *(v189 + 16) = v181;
      if (!v181)
      {
        sub_2C9894(&v788);
LABEL_1116:
        v735 = __cxa_allocate_exception(0x40uLL);
        v794 = HIDWORD(v178);
        LODWORD(v788) = v178;
        v792 = sub_7FCF0(6u);
        v793 = v736;
        sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v737 = v785;
        }

        else
        {
          v737 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v738 = BYTE3(v786);
        }

        else
        {
          v738 = *&v785[8];
        }

        v739 = sub_2D390(v735, v737, v738);
      }
    }

    v190 = (v181 + *v181);
    v191 = (v190 - *v190);
    if (*v191 < 0x25u)
    {
      goto LABEL_1116;
    }

    v192 = v191[18];
    if (!v192)
    {
      goto LABEL_1116;
    }

    v193 = (v190 + v192 + *(v190 + v192));
    if (*v193 <= HIDWORD(v178))
    {
      goto LABEL_1116;
    }

    v194 = (&v193[HIDWORD(v178) + 1] + v193[HIDWORD(v178) + 1]);
    v195 = (v194 - *v194);
    if (*v195 >= 9u && (v196 = v195[4]) != 0)
    {
      v197 = (v194 + v196 + *(v194 + v196));
    }

    else
    {
      v197 = 0;
    }

    v198 = sub_C54264(v197, v771);
    if (v198)
    {
      v199 = v198[1] | (*v198 << 32);
    }

    else
    {
      v199 = 0xFFFFFFFFLL;
    }

    v200 = a1[520];
    v201 = __ROR8__(v199, 32);
    v790 = 0;
    v791 = v201;
    v787 = "transfer";
    v788 = &v790;
    v789 = &v791;
    v202 = *(v200 + 3880) + 1;
    *(v200 + 3880) = v202;
    v203 = *(v200 + 24);
    if (!v203)
    {
      v655 = __cxa_allocate_exception(0x40uLL);
      v794 = v791;
      v792 = sub_7FCF0(6u);
      v793 = v656;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
      if ((v786 & 0x80000000) == 0)
      {
        v657 = v785;
      }

      else
      {
        v657 = *v785;
      }

      if ((v786 & 0x80000000) == 0)
      {
        v658 = BYTE3(v786);
      }

      else
      {
        v658 = *&v785[8];
      }

      v659 = sub_2D390(v655, v657, v658);
    }

    v204 = HIDWORD(v201);
    v764 = v201;
    v205 = a5;
    v768 = v201;
    v766 = v199;
    if (*(v200 + 616) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 624) = v202;
      v206 = *(v200 + 632);
      if (!v206)
      {
        goto LABEL_1029;
      }
    }

    else if (*(v200 + 640) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 648) = v202;
      v206 = *(v200 + 656);
      if (!v206)
      {
        goto LABEL_1029;
      }
    }

    else if (*(v200 + 664) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 672) = v202;
      v206 = *(v200 + 680);
      if (!v206)
      {
        goto LABEL_1029;
      }
    }

    else if (*(v200 + 688) == v201)
    {
      ++*(v200 + 3888);
      *(v200 + 696) = v202;
      v206 = *(v200 + 704);
      if (!v206)
      {
LABEL_1029:
        v680 = __cxa_allocate_exception(0x40uLL);
        v794 = v791;
        v792 = sub_7FCF0(6u);
        v793 = v681;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v682 = v785;
        }

        else
        {
          v682 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v683 = BYTE3(v786);
        }

        else
        {
          v683 = *&v785[8];
        }

        v684 = sub_2D390(v680, v682, v683);
      }
    }

    else
    {
      v207 = HIDWORD(v201);
      v208 = *(v200 + 672);
      v209 = *(v200 + 648);
      v210 = *(v200 + 624);
      v211 = *(v200 + 696);
      v206 = sub_2D52A4(v203, 6, v764, 1);
      if (v210 >= v202)
      {
        v212 = v202;
      }

      else
      {
        v212 = v210;
      }

      if (v210 >= v202)
      {
        v213 = 0;
      }

      else
      {
        v213 = 24;
      }

      if (v209 < v212)
      {
        v212 = v209;
        v213 = 25;
      }

      if (v208 < v212)
      {
        v213 = 26;
        v212 = v208;
      }

      v27 = v211 >= v212;
      v214 = 27;
      if (v27)
      {
        v214 = v213;
      }

      v215 = v200 + 40 + 24 * v214;
      *v215 = v791;
      *(v215 + 8) = *(v200 + 3880);
      *(v215 + 16) = v206;
      LODWORD(v201) = v768;
      v204 = v207;
      if (!v206)
      {
        sub_2C9894(&v788);
        LODWORD(v201) = v768;
        LODWORD(v204) = v207;
LABEL_1132:
        v745 = __cxa_allocate_exception(0x40uLL);
        LODWORD(v788) = v201;
        v794 = v204;
        v792 = sub_7FCF0(6u);
        v793 = v746;
        sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v747 = v785;
        }

        else
        {
          v747 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v748 = BYTE3(v786);
        }

        else
        {
          v748 = *&v785[8];
        }

        v749 = sub_2D390(v745, v747, v748);
      }
    }

    v216 = (v206 + *v206);
    v217 = (v216 - *v216);
    if (*v217 < 0x23u)
    {
      goto LABEL_1132;
    }

    v218 = v217[17];
    if (!v218)
    {
      goto LABEL_1132;
    }

    v219 = (v216 + v218 + *(v216 + v218));
    if (*v219 <= v204)
    {
      goto LABEL_1132;
    }

    v773 = v204;
    v220 = (&v219[v204 + 1] + v219[v204 + 1]);
    v221 = (v220 - *v220);
    v769 = v204;
    if (*v221 >= 7u && (v222 = v221[3]) != 0)
    {
      v223 = *(v220 + v222 + 4) | (*(v220 + v222) << 32);
    }

    else
    {
      v223 = 0xFFFFFFFFLL;
    }

    v224 = a1[520];
    v790 = 0;
    v791 = v201;
    v787 = "transfer";
    v788 = &v790;
    v789 = &v791;
    v225 = *(v224 + 3880) + 1;
    *(v224 + 3880) = v225;
    v226 = *(v224 + 24);
    if (!v226)
    {
      v650 = __cxa_allocate_exception(0x40uLL);
      v794 = v791;
      v792 = sub_7FCF0(6u);
      v793 = v651;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
      if ((v786 & 0x80000000) == 0)
      {
        v652 = v785;
      }

      else
      {
        v652 = *v785;
      }

      if ((v786 & 0x80000000) == 0)
      {
        v653 = BYTE3(v786);
      }

      else
      {
        v653 = *&v785[8];
      }

      v654 = sub_2D390(v650, v652, v653);
    }

    if (*(v224 + 616) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 624) = v225;
      v227 = *(v224 + 632);
      if (!v227)
      {
        goto LABEL_1022;
      }
    }

    else if (*(v224 + 640) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 648) = v225;
      v227 = *(v224 + 656);
      if (!v227)
      {
        goto LABEL_1022;
      }
    }

    else if (*(v224 + 664) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 672) = v225;
      v227 = *(v224 + 680);
      if (!v227)
      {
        goto LABEL_1022;
      }
    }

    else if (*(v224 + 688) == v201)
    {
      ++*(v224 + 3888);
      *(v224 + 696) = v225;
      v227 = *(v224 + 704);
      if (!v227)
      {
LABEL_1022:
        v675 = __cxa_allocate_exception(0x40uLL);
        v794 = v791;
        v792 = sub_7FCF0(6u);
        v793 = v676;
        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v677 = v785;
        }

        else
        {
          v677 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v678 = BYTE3(v786);
        }

        else
        {
          v678 = *&v785[8];
        }

        v679 = sub_2D390(v675, v677, v678);
      }
    }

    else
    {
      v228 = *(v224 + 672);
      v229 = *(v224 + 648);
      v230 = *(v224 + 624);
      v231 = *(v224 + 696);
      v227 = sub_2D52A4(v226, 6, v764, 1);
      if (v230 >= v225)
      {
        v232 = v225;
      }

      else
      {
        v232 = v230;
      }

      if (v230 >= v225)
      {
        v233 = 0;
      }

      else
      {
        v233 = 24;
      }

      if (v229 < v232)
      {
        v232 = v229;
        v233 = 25;
      }

      if (v228 < v232)
      {
        v233 = 26;
        v232 = v228;
      }

      v27 = v231 >= v232;
      v234 = 27;
      if (v27)
      {
        v234 = v233;
      }

      v235 = v224 + 40 + 24 * v234;
      *v235 = v791;
      *(v235 + 8) = *(v224 + 3880);
      *(v235 + 16) = v227;
      v205 = a5;
      LODWORD(v201) = v768;
      if (!v227)
      {
        sub_2C9894(&v788);
        LODWORD(v201) = v768;
LABEL_1124:
        v740 = __cxa_allocate_exception(0x40uLL);
        LODWORD(v788) = v201;
        v794 = v769;
        v792 = sub_7FCF0(6u);
        v793 = v741;
        sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
        if ((v786 & 0x80000000) == 0)
        {
          v742 = v785;
        }

        else
        {
          v742 = *v785;
        }

        if ((v786 & 0x80000000) == 0)
        {
          v743 = BYTE3(v786);
        }

        else
        {
          v743 = *&v785[8];
        }

        v744 = sub_2D390(v740, v742, v743);
      }
    }

    v236 = (v227 + *v227);
    v237 = (v236 - *v236);
    if (*v237 < 0x23u)
    {
      goto LABEL_1124;
    }

    v238 = v237[17];
    if (!v238)
    {
      goto LABEL_1124;
    }

    v239 = (v236 + v238 + *(v236 + v238));
    if (*v239 <= v769)
    {
      goto LABEL_1124;
    }

    v240 = (&v239[v773 + 1] + v239[v773 + 1]);
    v241 = (v240 - *v240);
    if (*v241 >= 9u && (v242 = v241[4]) != 0)
    {
      v243 = *(v240 + v242 + 4) | (*(v240 + v242) << 32);
    }

    else
    {
      v243 = 0xFFFFFFFFLL;
    }

    v244 = *(v205 + 232) - 1;
    v245 = *(v205 + 256);
    v247 = *(v205 + 240);
    v246 = *(v205 + 244);
    v778 = v243;
    if (a4)
    {
      v248 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) >> 33));
      v249 = v248 ^ (v248 >> 33);
      v250 = v244 & v249;
      v251 = (v245 + 12 * (v244 & v249));
      v253 = *v251;
      v252 = v251[1];
      v254 = HIDWORD(v243);
      if (v246 == v252 && v247 == v253)
      {
        goto LABEL_363;
      }

      if (!*(v205 + 216))
      {
        v308 = 1;
        while (__PAIR64__(v252, v253) != v243)
        {
          v250 = (v250 + v308) & v244;
          v309 = (v245 + 12 * v250);
          v253 = *v309;
          v252 = v309[1];
          ++v308;
          if (v246 == v252 && v247 == v253)
          {
            goto LABEL_363;
          }
        }

LABEL_450:
        if (v250 != -1)
        {
          v311 = v245 + 12 * v250;
          v312 = *(v311 + 8);
          v290 = (v311 + 8);
          v774 = v312;
          if (v312 != -1)
          {
            goto LABEL_493;
          }

          goto LABEL_470;
        }

        v255 = -1;
        goto LABEL_364;
      }

      v255 = -1;
      v292 = 1;
      do
      {
        if (*(v205 + 212) == v252 && *(v205 + 208) == v253)
        {
          if (v255 == -1)
          {
            v255 = v250;
          }
        }

        else if (__PAIR64__(v252, v253) == v243)
        {
          goto LABEL_450;
        }

        v250 = (v250 + v292) & v244;
        v293 = (v245 + 12 * v250);
        v253 = *v293;
        v252 = v293[1];
        ++v292;
      }

      while (v246 != v252 || v247 != v253);
      if (v255 == -1)
      {
LABEL_363:
        v255 = v250;
      }

LABEL_364:
      if (sub_C54418(v775, 1))
      {
        v243 = v778;
        v792 = v778;
        LODWORD(v793) = -1;
        v256 = *(v205 + 232) - 1;
        v257 = *(v205 + 256);
        v259 = *(v205 + 240);
        v258 = *(v205 + 244);
        v260 = v256 & v249;
        v261 = (v257 + 12 * (v256 & v249));
        v263 = *v261;
        v262 = v261[1];
        if (v258 == v262 && v259 == v263)
        {
LABEL_468:
          v265 = v260;
          goto LABEL_469;
        }

        if (*(v205 + 216))
        {
          v265 = -1;
          v266 = 1;
          do
          {
            if (*(v205 + 212) == v262 && *(v205 + 208) == v263)
            {
              if (v265 == -1)
              {
                v265 = v260;
              }
            }

            else if (v263 == v778 && v262 == v254)
            {
              goto LABEL_488;
            }

            v260 = (v260 + v266) & v256;
            v267 = (v257 + 12 * v260);
            v263 = *v267;
            v262 = v267[1];
            ++v266;
          }

          while (v258 != v262 || v259 != v263);
          if (v265 == -1)
          {
            goto LABEL_468;
          }

LABEL_469:
          sub_C546F0(v775, &v792, v265, v785);
          v243 = v778;
          v290 = (*&v785[8] + 8);
          v774 = *(*&v785[8] + 8);
          if (v774 == -1)
          {
            goto LABEL_470;
          }

LABEL_493:
          v340 = *(v205 + 232) - 1;
          v341 = *(v205 + 256);
          v343 = *(v205 + 240);
          v342 = *(v205 + 244);
          if (!a4)
          {
            goto LABEL_584;
          }

LABEL_494:
          v344 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) >> 33));
          v345 = v344 ^ (v344 >> 33);
          v346 = v340 & v345;
          v347 = (v341 + 12 * (v340 & v345));
          v349 = *v347;
          v348 = v347[1];
          if (v342 == v348 && v343 == v349)
          {
            goto LABEL_511;
          }

          if (*(v205 + 216))
          {
            v351 = -1;
            v352 = 1;
            do
            {
              if (*(v205 + 212) == v348 && *(v205 + 208) == v349)
              {
                if (v351 == -1)
                {
                  v351 = v346;
                }
              }

              else if (__PAIR64__(v348, v349) == v223)
              {
                goto LABEL_542;
              }

              v346 = (v346 + v352) & v340;
              v353 = (v341 + 12 * v346);
              v349 = *v353;
              v348 = v353[1];
              ++v352;
            }

            while (v342 != v348 || v343 != v349);
            if (v351 == -1)
            {
LABEL_511:
              v351 = v346;
            }
          }

          else
          {
            v373 = 1;
            while (__PAIR64__(v348, v349) != v223)
            {
              v346 = (v346 + v373) & v340;
              v374 = (v341 + 12 * v346);
              v349 = *v374;
              v348 = v374[1];
              ++v373;
              if (v342 == v348 && v343 == v349)
              {
                goto LABEL_511;
              }
            }

LABEL_542:
            if (v346 != -1)
            {
              v376 = v341 + 12 * v346;
              v379 = *(v376 + 8);
              v378 = (v376 + 8);
              v377 = v379;
              if (v379 != -1)
              {
                goto LABEL_687;
              }

              goto LABEL_551;
            }

            v351 = -1;
          }

          if (sub_C54418(v775, 1))
          {
            v792 = v223;
            LODWORD(v793) = -1;
            v355 = *(v205 + 232) - 1;
            v356 = *(v205 + 256);
            v358 = *(v205 + 240);
            v357 = *(v205 + 244);
            v359 = v355 & v345;
            v360 = (v356 + 12 * (v355 & v345));
            v362 = *v360;
            v361 = v360[1];
            if (v357 == v361 && v358 == v362)
            {
LABEL_549:
              v364 = v359;
              goto LABEL_550;
            }

            if (*(v205 + 216))
            {
              v364 = -1;
              v365 = 1;
              do
              {
                if (*(v205 + 212) == v361 && *(v205 + 208) == v362)
                {
                  if (v364 == -1)
                  {
                    v364 = v359;
                  }
                }

                else if (__PAIR64__(v361, v362) == v223)
                {
                  goto LABEL_568;
                }

                v359 = (v359 + v365) & v355;
                v366 = (v356 + 12 * v359);
                v362 = *v366;
                v361 = v366[1];
                ++v365;
              }

              while (v357 != v361 || v358 != v362);
              if (v364 == -1)
              {
                goto LABEL_549;
              }

LABEL_550:
              sub_C546F0(v775, &v792, v364, v785);
              v378 = (*&v785[8] + 8);
              v377 = *(*&v785[8] + 8);
              if (v377 != -1)
              {
                goto LABEL_687;
              }

              goto LABEL_551;
            }

            v394 = 1;
            while (__PAIR64__(v361, v362) != v223)
            {
              v359 = (v359 + v394) & v355;
              v395 = (v356 + 12 * v359);
              v362 = *v395;
              v361 = v395[1];
              ++v394;
              if (v357 == v361 && v358 == v362)
              {
                goto LABEL_549;
              }
            }

LABEL_568:
            if (v359 == -1)
            {
              v364 = -1;
              goto LABEL_550;
            }

            v397 = v356 + 12 * v359;
            v398 = *(v397 + 8);
            v378 = (v397 + 8);
            v377 = v398;
            if (v398 != -1)
            {
              goto LABEL_687;
            }
          }

          else
          {
            v369 = *(v205 + 216);
            v368 = *(v205 + 224);
            if ((v368 - v369) >= 0x1555555555555555)
            {
              goto LABEL_1087;
            }

            v370 = *(v205 + 256);
            if (v369 && ((v371 = (v370 + 12 * v351), *(v205 + 212) == v371[1]) ? (v372 = *(v205 + 208) == *v371) : (v372 = 0), v372))
            {
              *(v205 + 216) = v369 - 1;
            }

            else
            {
              *(v205 + 224) = v368 + 1;
            }

            v380 = v370 + 12 * v351;
            *v380 = v223;
            *(v380 + 8) = -1;
            v381 = *(v205 + 256) + 12 * v351;
            v382 = *(v381 + 8);
            v378 = (v381 + 8);
            v377 = v382;
            if (v382 != -1)
            {
              goto LABEL_687;
            }
          }

LABEL_551:
          v383 = *(v205 + 288);
          *(v205 + 288) = v383 + 1;
          *v378 = v383;
          v384 = v205;
          v385 = *(v205 + 272);
          v386 = *(v384 + 280);
          if (v385 < v386)
          {
            *v385 = v223;
            v387 = (v385 + 1);
LABEL_686:
            *(a5 + 272) = v387;
            v205 = a5;
            v377 = *v378;
            goto LABEL_687;
          }

          v388 = v7[3];
          v389 = v385 - v388;
          v390 = (v385 - v388) >> 3;
          v391 = v390 + 1;
          if (!((v390 + 1) >> 61))
          {
            v392 = v386 - v388;
            if (v392 >> 2 > v391)
            {
              v391 = v392 >> 2;
            }

            if (v392 >= 0x7FFFFFFFFFFFFFF8)
            {
              v393 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v393 = v391;
            }

            if (v393)
            {
              if (!(v393 >> 61))
              {
                operator new();
              }

LABEL_1090:
              sub_1808();
            }

            *(8 * v390) = v223;
            v387 = 8 * v390 + 8;
            memcpy(0, v388, v389);
            *(a5 + 264) = 0;
            *(a5 + 272) = v387;
            *(a5 + 280) = 0;
            if (!v388)
            {
              goto LABEL_686;
            }

            goto LABEL_685;
          }

          goto LABEL_1079;
        }

        v332 = 1;
        while (v263 != v778 || v262 != v254)
        {
          v260 = (v260 + v332) & v256;
          v333 = (v257 + 12 * v260);
          v263 = *v333;
          v262 = v333[1];
          ++v332;
          if (v258 == v262 && v259 == v263)
          {
            goto LABEL_468;
          }
        }

LABEL_488:
        if (v260 == -1)
        {
          v265 = -1;
          goto LABEL_469;
        }

        v335 = v257 + 12 * v260;
        v336 = *(v335 + 8);
        v290 = (v335 + 8);
        v774 = v336;
        if (v336 != -1)
        {
          goto LABEL_493;
        }

LABEL_470:
        v321 = *(v205 + 288);
        *(v205 + 288) = v321 + 1;
        *v290 = v321;
        v322 = v205;
        v323 = *(v205 + 272);
        v324 = *(v322 + 280);
        if (v323 < v324)
        {
          *v323 = v243;
          v325 = (v323 + 1);
          goto LABEL_583;
        }

        v326 = v7[3];
        v327 = v323 - v326;
        v328 = (v323 - v326) >> 3;
        v329 = v328 + 1;
        if (!((v328 + 1) >> 61))
        {
          v330 = v324 - v326;
          if (v330 >> 2 > v329)
          {
            v329 = v330 >> 2;
          }

          if (v330 >= 0x7FFFFFFFFFFFFFF8)
          {
            v331 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v331 = v329;
          }

          if (v331)
          {
            if (!(v331 >> 61))
            {
              operator new();
            }

            goto LABEL_1089;
          }

          *(8 * v328) = v778;
          v325 = 8 * v328 + 8;
          memcpy(0, v326, v327);
          *(a5 + 264) = 0;
          *(a5 + 272) = v325;
          *(a5 + 280) = 0;
          if (v326)
          {
LABEL_574:
            operator delete(v326);
          }

LABEL_575:
          v243 = v778;
          goto LABEL_583;
        }

        goto LABEL_1078;
      }

      v296 = *(v205 + 216);
      v295 = *(v205 + 224);
      v243 = v778;
      if ((v295 - v296) < 0x1555555555555555)
      {
        v297 = *(v205 + 256);
        if (v296 && ((v298 = (v297 + 12 * v255), *(v205 + 212) == v298[1]) ? (v299 = *(v205 + 208) == *v298) : (v299 = 0), v299))
        {
          *(v205 + 216) = v296 - 1;
        }

        else
        {
          *(v205 + 224) = v295 + 1;
        }

        v313 = v297 + 12 * v255;
        *v313 = v778;
        *(v313 + 8) = -1;
        v314 = *(v205 + 256) + 12 * v255;
        v315 = *(v314 + 8);
        v290 = (v314 + 8);
        v774 = v315;
        if (v315 != -1)
        {
          goto LABEL_493;
        }

        goto LABEL_470;
      }

LABEL_1088:
      v719 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v719, "insert overflow");
    }

    v269 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v223 ^ (v223 >> 33))) >> 33));
    v270 = v269 ^ (v269 >> 33);
    v271 = v244 & v270;
    v272 = (v245 + 12 * (v244 & v270));
    v274 = *v272;
    v273 = v272[1];
    if (v246 == v273 && v247 == v274)
    {
      goto LABEL_384;
    }

    if (*(v205 + 216))
    {
      v275 = -1;
      v300 = 1;
      do
      {
        if (*(v205 + 212) == v273 && *(v205 + 208) == v274)
        {
          if (v275 == -1)
          {
            v275 = v271;
          }
        }

        else if (__PAIR64__(v273, v274) == v223)
        {
          goto LABEL_464;
        }

        v271 = (v271 + v300) & v244;
        v301 = (v245 + 12 * v271);
        v274 = *v301;
        v273 = v301[1];
        ++v300;
      }

      while (v246 != v273 || v247 != v274);
      if (v275 == -1)
      {
LABEL_384:
        v275 = v271;
      }
    }

    else
    {
      v316 = 1;
      while (__PAIR64__(v273, v274) != v223)
      {
        v271 = (v271 + v316) & v244;
        v317 = (v245 + 12 * v271);
        v274 = *v317;
        v273 = v317[1];
        ++v316;
        if (v246 == v273 && v247 == v274)
        {
          goto LABEL_384;
        }
      }

LABEL_464:
      if (v271 != -1)
      {
        v319 = v245 + 12 * v271;
        v320 = *(v319 + 8);
        v290 = (v319 + 8);
        v774 = v320;
        if (v320 == -1)
        {
          goto LABEL_581;
        }

        goto LABEL_493;
      }

      v275 = -1;
    }

    if (!sub_C54418(v775, 1))
    {
      v304 = *(v205 + 216);
      v303 = *(v205 + 224);
      if ((v303 - v304) < 0x1555555555555555)
      {
        v305 = *(v205 + 256);
        if (v304 && ((v306 = (v305 + 12 * v275), *(v205 + 212) == v306[1]) ? (v307 = *(v205 + 208) == *v306) : (v307 = 0), v307))
        {
          *(v205 + 216) = v304 - 1;
        }

        else
        {
          *(v205 + 224) = v303 + 1;
        }

        v243 = v778;
        v337 = v305 + 12 * v275;
        *v337 = v223;
        *(v337 + 8) = -1;
        v338 = *(v205 + 256) + 12 * v275;
        v339 = *(v338 + 8);
        v290 = (v338 + 8);
        v774 = v339;
        if (v339 == -1)
        {
          goto LABEL_581;
        }

        goto LABEL_493;
      }

      goto LABEL_1088;
    }

    v792 = v223;
    LODWORD(v793) = -1;
    v276 = *(v205 + 232) - 1;
    v277 = *(v205 + 256);
    v279 = *(v205 + 240);
    v278 = *(v205 + 244);
    v280 = v276 & v270;
    v281 = (v277 + 12 * (v276 & v270));
    v283 = *v281;
    v282 = v281[1];
    if (v278 == v282 && v279 == v283)
    {
LABEL_579:
      v285 = v280;
      goto LABEL_580;
    }

    if (!*(v205 + 216))
    {
      v455 = 1;
      while (__PAIR64__(v282, v283) != v223)
      {
        v280 = (v280 + v455) & v276;
        v456 = (v277 + 12 * v280);
        v283 = *v456;
        v282 = v456[1];
        ++v455;
        if (v278 == v282 && v279 == v283)
        {
          goto LABEL_579;
        }
      }

      v243 = v778;
      if (v280 != -1)
      {
        goto LABEL_402;
      }

      goto LABEL_669;
    }

    v285 = -1;
    v286 = 1;
    v243 = v778;
    do
    {
      if (*(v205 + 212) == v282 && *(v205 + 208) == v283)
      {
        if (v285 == -1)
        {
          v285 = v280;
        }
      }

      else if (__PAIR64__(v282, v283) == v223)
      {
        if (v280 != -1)
        {
LABEL_402:
          v289 = v277 + 12 * v280;
          v291 = *(v289 + 8);
          v290 = (v289 + 8);
          v774 = v291;
          if (v291 == -1)
          {
            goto LABEL_581;
          }

          goto LABEL_493;
        }

LABEL_669:
        v285 = -1;
        goto LABEL_580;
      }

      v280 = (v280 + v286) & v276;
      v287 = (v277 + 12 * v280);
      v283 = *v287;
      v282 = v287[1];
      ++v286;
    }

    while (v278 != v282 || v279 != v283);
    if (v285 == -1)
    {
      goto LABEL_579;
    }

LABEL_580:
    sub_C546F0(v775, &v792, v285, v785);
    v243 = v778;
    v290 = (*&v785[8] + 8);
    v774 = *(*&v785[8] + 8);
    if (v774 != -1)
    {
      goto LABEL_493;
    }

LABEL_581:
    v399 = *(v205 + 288);
    *(v205 + 288) = v399 + 1;
    *v290 = v399;
    v400 = v205;
    v401 = *(v205 + 272);
    v402 = *(v400 + 280);
    if (v401 >= v402)
    {
      v326 = v7[3];
      v433 = v401 - v326;
      v434 = (v401 - v326) >> 3;
      v435 = v434 + 1;
      if (!((v434 + 1) >> 61))
      {
        v436 = v402 - v326;
        if (v436 >> 2 > v435)
        {
          v435 = v436 >> 2;
        }

        if (v436 >= 0x7FFFFFFFFFFFFFF8)
        {
          v437 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v437 = v435;
        }

        if (v437)
        {
          if (!(v437 >> 61))
          {
            operator new();
          }

LABEL_1089:
          sub_1808();
        }

        *(8 * v434) = v223;
        v325 = 8 * v434 + 8;
        memcpy(0, v326, v433);
        *(a5 + 264) = 0;
        *(a5 + 272) = v325;
        *(a5 + 280) = 0;
        if (v326)
        {
          goto LABEL_574;
        }

        goto LABEL_575;
      }

LABEL_1078:
      sub_1794();
    }

    *v401 = v223;
    v325 = (v401 + 1);
LABEL_583:
    *(a5 + 272) = v325;
    v205 = a5;
    v774 = *v290;
    v340 = *(a5 + 232) - 1;
    v341 = *(a5 + 256);
    v343 = *(a5 + 240);
    v342 = *(a5 + 244);
    if (a4)
    {
      goto LABEL_494;
    }

LABEL_584:
    v403 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v243 ^ (v243 >> 33))) >> 33));
    v404 = v403 ^ (v403 >> 33);
    v405 = v340 & v404;
    v406 = (v341 + 12 * (v340 & v404));
    v408 = *v406;
    v407 = v406[1];
    v409 = HIDWORD(v243);
    if (v342 == v407 && v343 == v408)
    {
      goto LABEL_601;
    }

    if (!*(v205 + 216))
    {
      v438 = 1;
      while (__PAIR64__(v407, v408) != v243)
      {
        v405 = (v405 + v438) & v340;
        v439 = (v341 + 12 * v405);
        v408 = *v439;
        v407 = v439[1];
        ++v438;
        if (v342 == v407 && v343 == v408)
        {
          goto LABEL_601;
        }
      }

LABEL_642:
      if (v405 == -1)
      {
        v411 = -1;
        goto LABEL_602;
      }

      v441 = v341 + 12 * v405;
      v442 = *(v441 + 8);
      v378 = (v441 + 8);
      v377 = v442;
      if (v442 == -1)
      {
        goto LABEL_651;
      }

      goto LABEL_687;
    }

    v411 = -1;
    v412 = 1;
    do
    {
      if (*(v205 + 212) == v407 && *(v205 + 208) == v408)
      {
        if (v411 == -1)
        {
          v411 = v405;
        }
      }

      else if (__PAIR64__(v407, v408) == v243)
      {
        goto LABEL_642;
      }

      v405 = (v405 + v412) & v340;
      v413 = (v341 + 12 * v405);
      v408 = *v413;
      v407 = v413[1];
      ++v412;
    }

    while (v342 != v407 || v343 != v408);
    if (v411 == -1)
    {
LABEL_601:
      v411 = v405;
    }

LABEL_602:
    if (!sub_C54418(v775, 1))
    {
      v429 = *(v205 + 216);
      v428 = *(v205 + 224);
      v243 = v778;
      if ((v428 - v429) < 0x1555555555555555)
      {
        v430 = *(v205 + 256);
        if (v429 && ((v431 = (v430 + 12 * v411), *(v205 + 212) == v431[1]) ? (v432 = *(v205 + 208) == *v431) : (v432 = 0), v432))
        {
          *(v205 + 216) = v429 - 1;
        }

        else
        {
          *(v205 + 224) = v428 + 1;
        }

        v443 = v430 + 12 * v411;
        *v443 = v778;
        *(v443 + 8) = -1;
        v444 = *(v205 + 256) + 12 * v411;
        v445 = *(v444 + 8);
        v378 = (v444 + 8);
        v377 = v445;
        if (v445 == -1)
        {
          goto LABEL_651;
        }

        goto LABEL_687;
      }

LABEL_1087:
      v718 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v718, "insert overflow");
    }

    v243 = v778;
    v792 = v778;
    LODWORD(v793) = -1;
    v415 = *(v205 + 232) - 1;
    v416 = *(v205 + 256);
    v418 = *(v205 + 240);
    v417 = *(v205 + 244);
    v419 = v415 & v404;
    v420 = (v416 + 12 * (v415 & v404));
    v422 = *v420;
    v421 = v420[1];
    if (v417 == v421 && v418 == v422)
    {
      goto LABEL_649;
    }

    if (!*(v205 + 216))
    {
      v458 = 1;
      while (v422 != v778 || v421 != v409)
      {
        v419 = (v419 + v458) & v415;
        v459 = (v416 + 12 * v419);
        v422 = *v459;
        v421 = v459[1];
        ++v458;
        if (v417 == v421 && v418 == v422)
        {
          goto LABEL_649;
        }
      }

LABEL_677:
      if (v419 == -1)
      {
        v424 = -1;
        goto LABEL_650;
      }

      v461 = v416 + 12 * v419;
      v462 = *(v461 + 8);
      v378 = (v461 + 8);
      v377 = v462;
      if (v462 != -1)
      {
        goto LABEL_687;
      }

LABEL_651:
      v446 = *(v205 + 288);
      *(v205 + 288) = v446 + 1;
      *v378 = v446;
      v447 = v205;
      v448 = *(v205 + 272);
      v449 = *(v447 + 280);
      if (v448 < v449)
      {
        *v448 = v243;
        v387 = (v448 + 1);
        goto LABEL_686;
      }

      v388 = v7[3];
      v450 = v448 - v388;
      v451 = (v448 - v388) >> 3;
      v452 = v451 + 1;
      if (!((v451 + 1) >> 61))
      {
        v453 = v449 - v388;
        if (v453 >> 2 > v452)
        {
          v452 = v453 >> 2;
        }

        if (v453 >= 0x7FFFFFFFFFFFFFF8)
        {
          v454 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v454 = v452;
        }

        if (v454)
        {
          if (!(v454 >> 61))
          {
            operator new();
          }

          goto LABEL_1090;
        }

        *(8 * v451) = v778;
        v387 = 8 * v451 + 8;
        memcpy(0, v388, v450);
        *(a5 + 264) = 0;
        *(a5 + 272) = v387;
        *(a5 + 280) = 0;
        if (!v388)
        {
          goto LABEL_686;
        }

LABEL_685:
        operator delete(v388);
        goto LABEL_686;
      }

LABEL_1079:
      sub_1794();
    }

    v424 = -1;
    v425 = 1;
    do
    {
      if (*(v205 + 212) == v421 && *(v205 + 208) == v422)
      {
        if (v424 == -1)
        {
          v424 = v419;
        }
      }

      else if (v422 == v778 && v421 == v409)
      {
        goto LABEL_677;
      }

      v419 = (v419 + v425) & v415;
      v426 = (v416 + 12 * v419);
      v422 = *v426;
      v421 = v426[1];
      ++v425;
    }

    while (v417 != v421 || v418 != v422);
    if (v424 == -1)
    {
LABEL_649:
      v424 = v419;
    }

LABEL_650:
    sub_C546F0(v775, &v792, v424, v785);
    v243 = v778;
    v378 = (*&v785[8] + 8);
    v377 = *(*&v785[8] + 8);
    if (v377 == -1)
    {
      goto LABEL_651;
    }

LABEL_687:
    *v785 = v377;
    *&v785[4] = xmmword_22AC000;
    v786 = 0xFFFFFFFFLL;
    v463 = v774;
    if (v377 > v774)
    {
      v463 = v377;
    }

    v464 = *(v205 + 72);
    v465 = *(v205 + 80);
    v466 = v465 - v464;
    v467 = (v465 - v464) >> 3;
    if (v463 < v467)
    {
      goto LABEL_796;
    }

    v468 = v463 + 1;
    v761 = v468;
    if (v468 < v467)
    {
      v469 = v463 + 1;
      v782 = (v465 - v464) >> 3;
      while (1)
      {
        v470 = v469;
        v471 = *(v205 + 72);
        v472 = *(v205 + 80);
        v473 = (v472 - v471) >> 3;
        if (v473 <= v469)
        {
          v479 = v469 + 1;
          v480 = v479 - v473;
          if (v479 <= v473)
          {
            if (v479 < v473)
            {
              v472 = &v471[8 * v479];
              *(v205 + 80) = v472;
            }
          }

          else
          {
            v481 = *(v205 + 88);
            if (v480 > (v481 - v472) >> 3)
            {
              v482 = v481 - v471;
              if (v482 >> 2 > v479)
              {
                v479 = v482 >> 2;
              }

              if (v482 >= 0x7FFFFFFFFFFFFFF8)
              {
                v483 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v483 = v479;
              }

              if (!(v483 >> 61))
              {
                operator new();
              }

LABEL_970:
              sub_1808();
            }

            bzero(*(v205 + 80), 8 * v480);
            v472 += 8 * v480;
            *(v205 + 80) = v472;
            v471 = *(v205 + 72);
          }
        }

        v474 = *(v205 + 96);
        v475 = *&v471[8 * v470];
        v476 = (v472 - v471) >> 3;
        if (v476 > v470)
        {
          goto LABEL_694;
        }

        v484 = (v470 + 1);
        v485 = v484 - v476;
        if (v484 > v476)
        {
          v478 = a5;
          v486 = *(a5 + 88);
          if (v485 <= (v486 - v472) >> 3)
          {
            bzero(v472, 8 * v485);
            *(a5 + 80) = &v472[8 * v485];
          }

          else
          {
            v487 = v472 - v471;
            v488 = (v487 >> 3) + v485;
            if (v488 >> 61)
            {
              goto LABEL_972;
            }

            v489 = v486 - v471;
            if (v489 >> 2 > v488)
            {
              v488 = v489 >> 2;
            }

            if (v489 >= 0x7FFFFFFFFFFFFFF8)
            {
              v490 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v490 = v488;
            }

            if (v490)
            {
              if (!(v490 >> 61))
              {
                operator new();
              }

              goto LABEL_970;
            }

            v478 = a5;
            v491 = (8 * (v487 >> 3));
            bzero(v491, 8 * v485);
            memcpy(0, v471, v487);
            *(a5 + 72) = 0;
            *(a5 + 80) = &v491[8 * v485];
            *(a5 + 88) = 0;
            v7 = v779;
            if (v471)
            {
              operator delete(v471);
            }
          }

          v471 = *(v478 + 72);
          v477 = *(v478 + 96);
          goto LABEL_724;
        }

        if (v484 >= v476)
        {
LABEL_694:
          v477 = v474;
          v478 = a5;
        }

        else
        {
          v478 = a5;
          *(a5 + 80) = &v471[8 * v484];
          v477 = v474;
        }

LABEL_724:
        sub_C54CE4((v478 + 72), v470, (v474 + 28 * v475), (v477 + 28 * *&v471[8 * v470 + 4]));
        v469 = v470 + 1;
        v205 = a5;
        if (v782 == v470 + 1)
        {
          v464 = *(a5 + 72);
          v465 = *(a5 + 80);
          v466 = v465 - v464;
          v11 = v765;
          v468 = v761;
          break;
        }
      }
    }

    v492 = v466 >> 3;
    v493 = v468 - v492;
    if (v468 <= v492)
    {
      if (v468 >= v492)
      {
LABEL_743:
        v502 = *v205;
        v503 = *(v205 + 8);
        v504 = &v503[-*v205];
        v783 = v504 >> 3;
        if (v468 >= (v504 >> 3))
        {
          goto LABEL_779;
        }

        v505 = v468;
        while (1)
        {
          v506 = v505;
          v507 = *v205;
          v508 = *(v205 + 8);
          v509 = &v508[-*v205] >> 3;
          if (v509 <= v505)
          {
            v514 = v505 + 1;
            v515 = v514 - v509;
            if (v514 <= v509)
            {
              if (v514 < v509)
              {
                v508 = &v507[2 * v514];
                *(v205 + 8) = v508;
              }
            }

            else
            {
              v516 = *(v205 + 16);
              if (v515 > (v516 - v508) >> 3)
              {
                v517 = v516 - v507;
                if (v517 >> 2 > v514)
                {
                  v514 = v517 >> 2;
                }

                if (v517 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v518 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v518 = v514;
                }

                if (!(v518 >> 61))
                {
                  operator new();
                }

                goto LABEL_970;
              }

              bzero(*(v205 + 8), 8 * v515);
              v508 += 8 * v515;
              *(v205 + 8) = v508;
              v507 = *v205;
            }
          }

          v510 = *(v205 + 24);
          v511 = v507[2 * v506];
          v512 = (v508 - v507) >> 3;
          if (v512 <= v506)
          {
            v519 = (v506 + 1);
            v520 = v519 - v512;
            if (v519 > v512)
            {
              v521 = *(v205 + 16);
              if (v520 <= (v521 - v508) >> 3)
              {
                bzero(v508, 8 * v520);
                *(v205 + 8) = &v508[8 * v520];
              }

              else
              {
                v522 = v508 - v507;
                v523 = (v522 >> 3) + v520;
                if (v523 >> 61)
                {
                  goto LABEL_972;
                }

                v524 = v521 - v507;
                if (v524 >> 2 > v523)
                {
                  v523 = v524 >> 2;
                }

                if (v524 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v525 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v525 = v523;
                }

                if (v525)
                {
                  if (!(v525 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_970;
                }

                v205 = a5;
                v526 = (8 * (v522 >> 3));
                bzero(v526, 8 * v520);
                memcpy(0, v507, v522);
                *a5 = 0;
                *(a5 + 8) = &v526[8 * v520];
                *(a5 + 16) = 0;
                v7 = v779;
                if (v507)
                {
                  operator delete(v507);
                }
              }

              v507 = *v205;
              v513 = *(v205 + 24);
              goto LABEL_777;
            }

            if (v519 < v512)
            {
              *(v205 + 8) = &v507[2 * v519];
            }
          }

          v513 = v510;
LABEL_777:
          sub_C54CE4(v205, v506, (v510 + 28 * v511), (v513 + 28 * v507[2 * v506 + 1]));
          v505 = v506 + 1;
          if (v783 == v506 + 1)
          {
            v502 = *v205;
            v503 = *(v205 + 8);
            v504 = &v503[-*v205];
            v11 = v765;
            v468 = v761;
LABEL_779:
            v527 = v504 >> 3;
            v528 = v468 - v527;
            if (v468 <= v527)
            {
              if (v468 >= v527)
              {
                goto LABEL_796;
              }

              v534 = &v502[2 * v468];
            }

            else
            {
              v529 = *(v205 + 16);
              if (v528 > (v529 - v503) >> 3)
              {
                v530 = v503 - v502;
                v531 = (v530 >> 3) + v528;
                if (v531 >> 61)
                {
LABEL_972:
                  sub_1794();
                }

                v532 = v529 - v502;
                if (v532 >> 2 > v531)
                {
                  v531 = v532 >> 2;
                }

                if (v532 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v533 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v533 = v531;
                }

                if (v533)
                {
                  if (!(v533 >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_970;
                }

                v205 = a5;
                v11 = v765;
                v535 = (8 * (v530 >> 3));
                bzero(v535, 8 * v528);
                memcpy(0, v502, v530);
                *a5 = 0;
                *(a5 + 8) = &v535[8 * v528];
                *(a5 + 16) = 0;
                v7 = v779;
                if (v502)
                {
                  operator delete(v502);
                }

LABEL_796:
                result = sub_C551EC((v205 + 72), v774, v785);
                ++*(v205 + 144);
                v536 = a1[520];
                v537 = v768;
                v538 = v769;
                v790 = 0;
                v791 = v768;
                v787 = "transfer";
                v788 = &v790;
                v789 = &v791;
                v539 = *(v536 + 3880) + 1;
                *(v536 + 3880) = v539;
                if (!*(v536 + 24))
                {
                  v660 = __cxa_allocate_exception(0x40uLL);
                  v794 = v791;
                  v792 = sub_7FCF0(6u);
                  v793 = v661;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v662 = v785;
                  }

                  else
                  {
                    v662 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v663 = BYTE3(v786);
                  }

                  else
                  {
                    v663 = *&v785[8];
                  }

                  v664 = sub_2D390(v660, v662, v663);
                }

                if (*(v536 + 616) != v768)
                {
                  if (*(v536 + 640) == v768)
                  {
                    ++*(v536 + 3888);
                    *(v536 + 648) = v539;
                    v540 = *(v536 + 656);
                    if (v540)
                    {
                      goto LABEL_823;
                    }
                  }

                  else if (*(v536 + 664) == v768)
                  {
                    ++*(v536 + 3888);
                    *(v536 + 672) = v539;
                    v540 = *(v536 + 680);
                    if (v540)
                    {
                      goto LABEL_823;
                    }
                  }

                  else
                  {
                    if (*(v536 + 688) != v768)
                    {
                      v541 = result;
                      v542 = *(v536 + 672);
                      v543 = *(v536 + 648);
                      v544 = *(v536 + 624);
                      v545 = *(v536 + 696);
                      v546 = sub_2D52A4(*(v536 + 24), 6, v764, 1);
                      v540 = v546;
                      if (v544 >= v539)
                      {
                        v547 = v539;
                      }

                      else
                      {
                        v547 = v544;
                      }

                      if (v544 >= v539)
                      {
                        v548 = 0;
                      }

                      else
                      {
                        v548 = 24;
                      }

                      if (v543 < v547)
                      {
                        v547 = v543;
                        v548 = 25;
                      }

                      if (v542 < v547)
                      {
                        v548 = 26;
                        v547 = v542;
                      }

                      v27 = v545 >= v547;
                      v549 = 27;
                      if (v27)
                      {
                        v549 = v548;
                      }

                      v550 = v536 + 40 + 24 * v549;
                      *v550 = v791;
                      *(v550 + 8) = *(v536 + 3880);
                      *(v550 + 16) = v546;
                      result = v541;
                      v537 = v768;
                      v538 = v769;
                      if (v540)
                      {
                        goto LABEL_823;
                      }

                      sub_2C9894(&v788);
                      v537 = v768;
                      v538 = v769;
LABEL_1108:
                      v730 = __cxa_allocate_exception(0x40uLL);
                      LODWORD(v788) = v537;
                      v794 = v538;
                      v792 = sub_7FCF0(6u);
                      v793 = v731;
                      sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                      if ((v786 & 0x80000000) == 0)
                      {
                        v732 = v785;
                      }

                      else
                      {
                        v732 = *v785;
                      }

                      if ((v786 & 0x80000000) == 0)
                      {
                        v733 = BYTE3(v786);
                      }

                      else
                      {
                        v733 = *&v785[8];
                      }

                      v734 = sub_2D390(v730, v732, v733);
                    }

                    ++*(v536 + 3888);
                    *(v536 + 696) = v539;
                    v540 = *(v536 + 704);
                    if (v540)
                    {
                      goto LABEL_823;
                    }
                  }

LABEL_1036:
                  v685 = __cxa_allocate_exception(0x40uLL);
                  v794 = v791;
                  v792 = sub_7FCF0(6u);
                  v793 = v686;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v687 = v785;
                  }

                  else
                  {
                    v687 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v688 = BYTE3(v786);
                  }

                  else
                  {
                    v688 = *&v785[8];
                  }

                  v689 = sub_2D390(v685, v687, v688);
                }

                ++*(v536 + 3888);
                *(v536 + 624) = v539;
                v540 = *(v536 + 632);
                if (!v540)
                {
                  goto LABEL_1036;
                }

LABEL_823:
                v551 = (v540 + *v540);
                v552 = (v551 - *v551);
                if (*v552 < 0x23u)
                {
                  goto LABEL_1108;
                }

                v553 = v552[17];
                if (!v553)
                {
                  goto LABEL_1108;
                }

                v554 = (v551 + v553 + *(v551 + v553));
                if (*v554 <= v538)
                {
                  goto LABEL_1108;
                }

                v555 = (&v554[v773 + 1] + v554[v773 + 1]);
                v556 = (v555 - *v555);
                if (*v556 >= 0xBu)
                {
                  v557 = v556[5];
                  if (v557)
                  {
                    if (*(v555 + v557) != -1)
                    {
                      v558 = a1[520];
                      v790 = 0;
                      v791 = v537;
                      v787 = "transfer";
                      v788 = &v790;
                      v789 = &v791;
                      v559 = *(v558 + 3880) + 1;
                      *(v558 + 3880) = v559;
                      if (!*(v558 + 24))
                      {
                        v708 = __cxa_allocate_exception(0x40uLL);
                        v794 = v791;
                        v792 = sub_7FCF0(6u);
                        v793 = v709;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                        if ((v786 & 0x80000000) == 0)
                        {
                          v710 = v785;
                        }

                        else
                        {
                          v710 = *v785;
                        }

                        if ((v786 & 0x80000000) == 0)
                        {
                          v711 = BYTE3(v786);
                        }

                        else
                        {
                          v711 = *&v785[8];
                        }

                        v712 = sub_2D390(v708, v710, v711);
                      }

                      if (*(v558 + 616) != v537)
                      {
                        if (*(v558 + 640) == v537)
                        {
                          ++*(v558 + 3888);
                          *(v558 + 648) = v559;
                          v560 = *(v558 + 656);
                          if (v560)
                          {
                            goto LABEL_893;
                          }
                        }

                        else if (*(v558 + 664) == v537)
                        {
                          ++*(v558 + 3888);
                          *(v558 + 672) = v559;
                          v560 = *(v558 + 680);
                          if (v560)
                          {
                            goto LABEL_893;
                          }
                        }

                        else
                        {
                          if (*(v558 + 688) != v537)
                          {
                            v582 = v538;
                            v583 = result;
                            v584 = *(v558 + 672);
                            v585 = *(v558 + 648);
                            v586 = *(v558 + 624);
                            v587 = *(v558 + 696);
                            v588 = sub_2D52A4(*(v558 + 24), 6, v764, 1);
                            v560 = v588;
                            if (v586 >= v559)
                            {
                              v589 = v559;
                            }

                            else
                            {
                              v589 = v586;
                            }

                            if (v586 >= v559)
                            {
                              v590 = 0;
                            }

                            else
                            {
                              v590 = 24;
                            }

                            if (v585 < v589)
                            {
                              v589 = v585;
                              v590 = 25;
                            }

                            if (v584 < v589)
                            {
                              v590 = 26;
                              v589 = v584;
                            }

                            v27 = v587 >= v589;
                            v591 = 27;
                            if (v27)
                            {
                              v591 = v590;
                            }

                            v592 = v558 + 40 + 24 * v591;
                            *v592 = v791;
                            *(v592 + 8) = *(v558 + 3880);
                            *(v592 + 16) = v588;
                            result = v583;
                            v537 = v768;
                            v538 = v582;
                            if (v560)
                            {
                              goto LABEL_893;
                            }

                            sub_2C9894(&v788);
                            v537 = v768;
                            v538 = v582;
LABEL_1148:
                            v755 = __cxa_allocate_exception(0x40uLL);
                            LODWORD(v788) = v537;
                            v794 = v538;
                            v792 = sub_7FCF0(6u);
                            v793 = v756;
                            sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                            if ((v786 & 0x80000000) == 0)
                            {
                              v757 = v785;
                            }

                            else
                            {
                              v757 = *v785;
                            }

                            if ((v786 & 0x80000000) == 0)
                            {
                              v758 = BYTE3(v786);
                            }

                            else
                            {
                              v758 = *&v785[8];
                            }

                            v759 = sub_2D390(v755, v757, v758);
                          }

                          ++*(v558 + 3888);
                          *(v558 + 696) = v559;
                          v560 = *(v558 + 704);
                          if (v560)
                          {
                            goto LABEL_893;
                          }
                        }

LABEL_1080:
                        v713 = __cxa_allocate_exception(0x40uLL);
                        v794 = v791;
                        v792 = sub_7FCF0(6u);
                        v793 = v714;
                        sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                        if ((v786 & 0x80000000) == 0)
                        {
                          v715 = v785;
                        }

                        else
                        {
                          v715 = *v785;
                        }

                        if ((v786 & 0x80000000) == 0)
                        {
                          v716 = BYTE3(v786);
                        }

                        else
                        {
                          v716 = *&v785[8];
                        }

                        v717 = sub_2D390(v713, v715, v716);
                      }

                      ++*(v558 + 3888);
                      *(v558 + 624) = v559;
                      v560 = *(v558 + 632);
                      if (!v560)
                      {
                        goto LABEL_1080;
                      }

LABEL_893:
                      v593 = (v560 + *v560);
                      v594 = (v593 - *v593);
                      if (*v594 < 0x23u)
                      {
                        goto LABEL_1148;
                      }

                      v595 = v594[17];
                      if (!v595)
                      {
                        goto LABEL_1148;
                      }

                      v596 = (v593 + v595 + *(v593 + v595));
                      if (*v596 <= v538)
                      {
                        goto LABEL_1148;
                      }

                      v597 = (&v596[v773 + 1] + v596[v773 + 1]);
                      v598 = (v597 - *v597);
                      if (*v598 >= 0xBu)
                      {
                        v599 = v598[5];
                        if (v599)
                        {
                          if (*(v597 + v599) != -1)
                          {
                            v600 = a1[520];
                            v788 = "transfer";
                            LODWORD(v792) = v537;
                            LODWORD(v787) = 0;
                            *v785 = &v787;
                            *&v785[8] = &v792;
                            v601 = *(v600 + 3880) + 1;
                            *(v600 + 3880) = v601;
                            if (!*(v600 + 24))
                            {
                              goto LABEL_1091;
                            }

                            if (*(v600 + 616) != v537)
                            {
                              if (*(v600 + 640) == v537)
                              {
                                ++*(v600 + 3888);
                                *(v600 + 648) = v601;
                                v602 = *(v600 + 656);
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

                              else if (*(v600 + 664) == v537)
                              {
                                ++*(v600 + 3888);
                                *(v600 + 672) = v601;
                                v602 = *(v600 + 680);
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

                              else if (*(v600 + 688) == v537)
                              {
                                ++*(v600 + 3888);
                                *(v600 + 696) = v601;
                                v602 = *(v600 + 704);
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

                              else
                              {
                                v624 = v538;
                                v625 = result;
                                v626 = *(v600 + 672);
                                v627 = *(v600 + 648);
                                v628 = *(v600 + 624);
                                v629 = *(v600 + 696);
                                v630 = sub_2D52A4(*(v600 + 24), 6, v764, 1);
                                v602 = v630;
                                if (v628 >= v601)
                                {
                                  v631 = v601;
                                }

                                else
                                {
                                  v631 = v628;
                                }

                                if (v628 >= v601)
                                {
                                  v632 = 0;
                                }

                                else
                                {
                                  v632 = 24;
                                }

                                if (v627 < v631)
                                {
                                  v631 = v627;
                                  v632 = 25;
                                }

                                if (v626 < v631)
                                {
                                  v632 = 26;
                                  v631 = v626;
                                }

                                v27 = v629 >= v631;
                                v633 = 27;
                                if (v27)
                                {
                                  v633 = v632;
                                }

                                v634 = v600 + 40 + 24 * v633;
                                *v634 = v792;
                                *(v634 + 8) = *(v600 + 3880);
                                *(v634 + 16) = v630;
                                result = v625;
                                v537 = v768;
                                v538 = v624;
                                if (v602)
                                {
                                  goto LABEL_962;
                                }
                              }

LABEL_1091:
                              sub_2C9894(v785);
                              v537 = v768;
LABEL_1092:
                              v720 = __cxa_allocate_exception(0x40uLL);
                              LODWORD(v787) = v537;
                              v794 = v538;
                              v792 = sub_7FCF0(6u);
                              v793 = v721;
                              sub_2C956C("Failed to acquire entity ", &v788, " in quad node ", " at position ", " on layer ", &v792, v785);
                              if ((v786 & 0x80000000) == 0)
                              {
                                v722 = v785;
                              }

                              else
                              {
                                v722 = *v785;
                              }

                              if ((v786 & 0x80000000) == 0)
                              {
                                v723 = BYTE3(v786);
                              }

                              else
                              {
                                v723 = *&v785[8];
                              }

                              v724 = sub_2D390(v720, v722, v723);
                            }

                            ++*(v600 + 3888);
                            *(v600 + 624) = v601;
                            v602 = *(v600 + 632);
                            if (!v602)
                            {
                              goto LABEL_1091;
                            }

LABEL_962:
                            v635 = (v602 + *v602);
                            v636 = (v635 - *v635);
                            if (*v636 < 0x23u)
                            {
                              goto LABEL_1092;
                            }

                            v637 = v636[17];
                            if (!v637)
                            {
                              goto LABEL_1092;
                            }

                            v638 = (v635 + v637 + *(v635 + v637));
                            if (*v638 <= v538)
                            {
                              goto LABEL_1092;
                            }

                            v579 = (&v638[v773 + 1] + v638[v773 + 1]);
                            v639 = (v579 - *v579);
                            v565 = 4294967286;
                            v563 = v778;
                            if (*v639 >= 0xBu)
                            {
                              v581 = v639[5];
                              v565 = 4294967286;
                              if (v581)
                              {
                                goto LABEL_871;
                              }
                            }

LABEL_905:
                            if (!a3)
                            {
                              goto LABEL_253;
                            }

                            v603 = a1[522];
                            v604 = __ROR8__(v563, 32);
                            v790 = 0;
                            v791 = v604;
                            v787 = "transfer node";
                            v788 = &v790;
                            v789 = &v791;
                            v605 = *(v603 + 3880) + 1;
                            *(v603 + 3880) = v605;
                            if (!*(v603 + 24))
                            {
                              v690 = __cxa_allocate_exception(0x40uLL);
                              v794 = v791;
                              v792 = sub_7FCF0(6u);
                              v793 = v691;
                              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                              if ((v786 & 0x80000000) == 0)
                              {
                                v692 = v785;
                              }

                              else
                              {
                                v692 = *v785;
                              }

                              if ((v786 & 0x80000000) == 0)
                              {
                                v693 = BYTE3(v786);
                              }

                              else
                              {
                                v693 = *&v785[8];
                              }

                              v694 = sub_2D390(v690, v692, v693);
                            }

                            if (*(v603 + 616) != v604)
                            {
                              if (*(v603 + 640) == v604)
                              {
                                ++*(v603 + 3888);
                                *(v603 + 648) = v605;
                                v606 = *(v603 + 656);
                                if (v606)
                                {
                                  goto LABEL_933;
                                }
                              }

                              else if (*(v603 + 664) == v604)
                              {
                                ++*(v603 + 3888);
                                *(v603 + 672) = v605;
                                v606 = *(v603 + 680);
                                if (v606)
                                {
                                  goto LABEL_933;
                                }
                              }

                              else
                              {
                                if (*(v603 + 688) != v604)
                                {
                                  v607 = result;
                                  v608 = *(v603 + 672);
                                  v609 = *(v603 + 648);
                                  v610 = *(v603 + 624);
                                  v611 = *(v603 + 696);
                                  v612 = sub_2D52A4(*(v603 + 24), 6, v604, 1);
                                  v606 = v612;
                                  if (v610 >= v605)
                                  {
                                    v613 = v605;
                                  }

                                  else
                                  {
                                    v613 = v610;
                                  }

                                  if (v610 >= v605)
                                  {
                                    v614 = 0;
                                  }

                                  else
                                  {
                                    v614 = 24;
                                  }

                                  if (v609 < v613)
                                  {
                                    v613 = v609;
                                    v614 = 25;
                                  }

                                  if (v608 < v613)
                                  {
                                    v614 = 26;
                                    v613 = v608;
                                  }

                                  v27 = v611 >= v613;
                                  v615 = 27;
                                  if (v27)
                                  {
                                    v615 = v614;
                                  }

                                  v616 = v603 + 40 + 24 * v615;
                                  *v616 = v791;
                                  *(v616 + 8) = *(v603 + 3880);
                                  *(v616 + 16) = v612;
                                  result = v607;
                                  v7 = v779;
                                  v11 = v765;
                                  if (v606)
                                  {
                                    goto LABEL_933;
                                  }

                                  sub_2C9894(&v788);
LABEL_1140:
                                  v750 = __cxa_allocate_exception(0x40uLL);
                                  v794 = HIDWORD(v604);
                                  LODWORD(v788) = v604;
                                  v792 = sub_7FCF0(6u);
                                  v793 = v751;
                                  sub_2C956C("Failed to acquire entity ", &v787, " in quad node ", " at position ", " on layer ", &v792, v785);
                                  if ((v786 & 0x80000000) == 0)
                                  {
                                    v752 = v785;
                                  }

                                  else
                                  {
                                    v752 = *v785;
                                  }

                                  if ((v786 & 0x80000000) == 0)
                                  {
                                    v753 = BYTE3(v786);
                                  }

                                  else
                                  {
                                    v753 = *&v785[8];
                                  }

                                  v754 = sub_2D390(v750, v752, v753);
                                }

                                ++*(v603 + 3888);
                                *(v603 + 696) = v605;
                                v606 = *(v603 + 704);
                                if (v606)
                                {
                                  goto LABEL_933;
                                }
                              }

LABEL_1050:
                              v695 = __cxa_allocate_exception(0x40uLL);
                              v794 = v791;
                              v792 = sub_7FCF0(6u);
                              v793 = v696;
                              sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                              if ((v786 & 0x80000000) == 0)
                              {
                                v697 = v785;
                              }

                              else
                              {
                                v697 = *v785;
                              }

                              if ((v786 & 0x80000000) == 0)
                              {
                                v698 = BYTE3(v786);
                              }

                              else
                              {
                                v698 = *&v785[8];
                              }

                              v699 = sub_2D390(v695, v697, v698);
                            }

                            ++*(v603 + 3888);
                            *(v603 + 624) = v605;
                            v606 = *(v603 + 632);
                            if (!v606)
                            {
                              goto LABEL_1050;
                            }

LABEL_933:
                            v617 = (v606 + *v606);
                            v618 = (v617 - *v617);
                            if (*v618 < 0x29u)
                            {
                              goto LABEL_1140;
                            }

                            v619 = v618[20];
                            if (!v619)
                            {
                              goto LABEL_1140;
                            }

                            v620 = (v617 + v619 + *(v617 + v619));
                            if (*v620 <= HIDWORD(v604))
                            {
                              goto LABEL_1140;
                            }

                            v621 = (&v620[HIDWORD(v604) + 1] + v620[HIDWORD(v604) + 1]);
                            v622 = (v621 - *v621);
                            if (*v622 < 7u || (v623 = v622[3]) == 0)
                            {
LABEL_253:
                              v176 = 0;
                              goto LABEL_254;
                            }

                            v176 = (*(v621 + v623) == 5) << 32;
LABEL_254:
                            *(result + 1) = v176 | v565;
                            *(result + 3) = v766;
                            *(result + 5) = *v11;
                            if (++v771 == v763)
                            {
                              goto LABEL_6;
                            }

                            goto LABEL_255;
                          }
                        }
                      }

                      v565 = 0x7FFFFFFFLL;
LABEL_904:
                      v563 = v778;
                      goto LABEL_905;
                    }
                  }
                }

                v561 = a1[520];
                if (*(v561 + 17) != 1)
                {
                  v565 = 300;
                  goto LABEL_904;
                }

                v794 = 1;
                v791 = 0;
                v788 = &v791;
                v789 = &v794;
                v562 = *(v561 + 3880) + 1;
                *(v561 + 3880) = v562;
                v563 = v778;
                if (!*(v561 + 24))
                {
                  v702 = __cxa_allocate_exception(0x40uLL);
                  LODWORD(v787) = *v789;
                  v792 = sub_7FCF0(9u);
                  v793 = v703;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v792, v785);
                  if ((v786 & 0x80000000) == 0)
                  {
                    v704 = v785;
                  }

                  else
                  {
                    v704 = *v785;
                  }

                  if ((v786 & 0x80000000) == 0)
                  {
                    v705 = BYTE3(v786);
                  }

                  else
                  {
                    v705 = *&v785[8];
                  }

                  v706 = sub_2D390(v702, v704, v705);
                }

                if (*(v561 + 904) == 1)
                {
                  ++*(v561 + 3888);
                  *(v561 + 912) = v562;
                  v564 = *(v561 + 920);
                  if (!v564)
                  {
                    goto LABEL_1058;
                  }

LABEL_867:
                  v576 = (v564 + *v564);
                  v577 = (v576 - *v576);
                  if (*v577 >= 5u)
                  {
                    v578 = v577[2];
                    if (v578)
                    {
                      v579 = (v576 + v578 + *(v576 + v578));
                      v580 = (v579 - *v579);
                      if (*v580 < 0x11u || (v581 = v580[8]) == 0)
                      {
                        v565 = 0;
                        goto LABEL_905;
                      }

LABEL_871:
                      v565 = (10 * *(v579 + v581));
                      goto LABEL_905;
                    }
                  }
                }

                else
                {
                  if (*(v561 + 928) == 1)
                  {
                    ++*(v561 + 3888);
                    *(v561 + 936) = v562;
                    v564 = *(v561 + 944);
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

                  else if (*(v561 + 952) == 1)
                  {
                    ++*(v561 + 3888);
                    *(v561 + 960) = v562;
                    v564 = *(v561 + 968);
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

                  else if (*(v561 + 976) == 1)
                  {
                    ++*(v561 + 3888);
                    *(v561 + 984) = v562;
                    v564 = *(v561 + 992);
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

                  else
                  {
                    v566 = result;
                    v567 = *(v561 + 960);
                    v568 = *(v561 + 936);
                    v569 = *(v561 + 912);
                    v570 = *(v561 + 984);
                    v571 = sub_2D52A4(*(v561 + 24), 9, 1u, 1);
                    v564 = v571;
                    if (v569 >= v562)
                    {
                      v572 = v562;
                    }

                    else
                    {
                      v572 = v569;
                    }

                    v573 = 36;
                    if (v569 >= v562)
                    {
                      v573 = 0;
                    }

                    if (v568 < v572)
                    {
                      v572 = v568;
                      v573 = 37;
                    }

                    if (v567 < v572)
                    {
                      v573 = 38;
                      v572 = v567;
                    }

                    v27 = v570 >= v572;
                    v574 = 39;
                    if (v27)
                    {
                      v574 = v573;
                    }

                    v575 = v561 + 40 + 24 * v574;
                    *v575 = v794;
                    *(v575 + 8) = *(v561 + 3880);
                    *(v575 + 16) = v571;
                    result = v566;
                    v563 = v778;
                    if (v564)
                    {
                      goto LABEL_867;
                    }
                  }

LABEL_1058:
                  sub_3D4ED8(&v788);
                }

                v700 = __cxa_allocate_exception(0x40uLL);
                v701 = sub_2D390(v700, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
              }

              bzero(v503, 8 * v528);
              v534 = &v503[8 * v528];
            }

            *(v205 + 8) = v534;
            goto LABEL_796;
          }
        }
      }

      v500 = &v464[8 * v468];
    }

    else
    {
      v494 = *(v205 + 88);
      if (v493 > (v494 - v465) >> 3)
      {
        v495 = v465 - v464;
        v496 = (v495 >> 3) + v493;
        if (v496 >> 61)
        {
          goto LABEL_972;
        }

        v497 = v468;
        v498 = v494 - v464;
        if (v498 >> 2 > v496)
        {
          v496 = v498 >> 2;
        }

        if (v498 >= 0x7FFFFFFFFFFFFFF8)
        {
          v499 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v499 = v496;
        }

        if (v499)
        {
          if (!(v499 >> 61))
          {
            operator new();
          }

          goto LABEL_970;
        }

        v205 = a5;
        v11 = v765;
        v501 = (8 * (v495 >> 3));
        bzero(v501, 8 * v493);
        memcpy(0, v464, v495);
        *(a5 + 72) = 0;
        *(a5 + 80) = &v501[8 * v493];
        *(a5 + 88) = 0;
        v7 = v779;
        v468 = v497;
        if (v464)
        {
          operator delete(v464);
        }

        goto LABEL_743;
      }

      bzero(v465, 8 * v493);
      v500 = &v465[8 * v493];
    }

    *(v205 + 80) = v500;
    goto LABEL_743;
  }

  return result;
}

void sub_C53F20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v32 = *(v30 + 24);
  if (v32)
  {
    *(a30 + 272) = v32;
    operator delete(v32);
    v33 = *(a30 + 256);
    if (!v33)
    {
LABEL_3:
      sub_C541D8(a30);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v33 = *(a30 + 256);
    if (!v33)
    {
      goto LABEL_3;
    }
  }

  free(v33);
  sub_C541D8(a30);
  _Unwind_Resume(a1);
}

uint64_t sub_C541D8(uint64_t a1)
{
  v2 = *(a1 + 152);
  if (v2)
  {
    *(a1 + 160) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    *(a1 + 104) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 72);
  if (v5)
  {
    *(a1 + 80) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 24);
  if (v7)
  {
    *(a1 + 32) = v7;
    operator delete(v7);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t sub_C54264(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v10, a2);
    sub_23E08("Flatbuffer vector requested index ", &v10, &v11);
    v5 = std::string::append(&v11, " is out of range", 0x10uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v13 = v5->__r_.__value_.__r.__words[2];
    v12 = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if (v13 >= 0)
    {
      v7 = &v12;
    }

    else
    {
      v7 = v12;
    }

    if (v13 >= 0)
    {
      v8 = HIBYTE(v13);
    }

    else
    {
      v8 = *(&v12 + 1);
    }

    v9 = sub_2D390(exception, v7, v8);
  }

  return &a1[2 * a2 + 1];
}

void sub_C54348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

uint64_t sub_C543C8(void *a1)
{
  v2 = a1[33];
  if (v2)
  {
    a1[34] = v2;
    operator delete(v2);
  }

  v3 = a1[32];
  if (v3)
  {
    free(v3);
  }

  return sub_C541D8(a1);
}

uint64_t sub_C54418(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_C547E0(a1);
  }

  else
  {
    result = 0;
  }

  v5 = *(a1 + 48);
  if (v5 >= ~a2)
  {
    goto LABEL_27;
  }

  v6 = *(a1 + 56);
  v7 = v5 + a2;
  if (v6 < 4 || v7 > *a1)
  {
    v8 = *(a1 + 16);
    v9 = vcvts_n_u32_f32(v8, 2uLL);
    v10 = 4;
    if (v7 >= v9)
    {
      while ((v10 & 0x8000000000000000) == 0)
      {
        v10 *= 2;
        if (v7 < (v8 * v10))
        {
          goto LABEL_10;
        }
      }

LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_195A000(exception, "resize overflow");
    }

LABEL_10:
    if (v10 > v6)
    {
      v11 = *(a1 + 40);
      v12 = v5 - v11 + a2;
      v13 = 4;
      if (v6 > 4)
      {
        goto LABEL_13;
      }

LABEL_12:
      if (v12 >= (v8 * v13))
      {
LABEL_13:
        while ((v13 & 0x8000000000000000) == 0)
        {
          v13 *= 2;
          if (v13 >= v6)
          {
            goto LABEL_12;
          }
        }

        goto LABEL_27;
      }

      v14 = v7 - (v11 >> 2);
      v15 = 4;
      if (v14 >= v9)
      {
        while ((v15 & 0x8000000000000000) == 0)
        {
          v15 *= 2;
          if (v14 < (v8 * v15))
          {
            goto LABEL_19;
          }
        }

        goto LABEL_27;
      }

LABEL_19:
      if (v13 <= 0x7FFFFFFFFFFFFFFELL && v13 < v15 && v12 >= (*(a1 + 20) * (2 * v13)))
      {
        v13 *= 2;
      }

      sub_C54924(&v26, a1, v13);
      v17 = *a1;
      v16 = *(a1 + 16);
      v18 = v27;
      *a1 = v26;
      *(a1 + 16) = v18;
      v26 = v17;
      v27 = v16;
      v19 = *(a1 + 32);
      *(a1 + 32) = v28;
      v28 = v19;
      v20 = v29;
      v21 = v30;
      v29 = *(a1 + 48);
      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      *(a1 + 48) = v20;
      *(a1 + 56) = v21;
      *(a1 + 72) = v31;
      *(a1 + 64) = *(&v30 + 1);
      v30 = v23;
      v31 = v22;
      v24 = *(a1 + 80);
      *(a1 + 80) = v32;
      v32 = v24;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v21)));
      *(a1 + 24) = 0;
      v26 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v27, v23)));
      BYTE8(v27) = 0;
      if (v24)
      {
        free(v24);
      }

      return 1;
    }
  }

  return result;
}

uint64_t sub_C546F0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(result + 40);
  v4 = *(result + 48);
  if ((v4 - v5) >= 0x1555555555555555)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  v6 = *(result + 80);
  if (v5 && ((v7 = (v6 + 12 * a3), *(result + 36) == v7[1]) ? (v8 = *(result + 32) == *v7) : (v8 = 0), v8))
  {
    *(result + 40) = v5 - 1;
  }

  else
  {
    *(result + 48) = v4 + 1;
  }

  v9 = v6 + 12 * a3;
  v10 = *a2;
  *(v9 + 8) = *(a2 + 2);
  *v9 = v10;
  v11 = *(result + 80);
  v12 = v11 + 12 * a3;
  v13 = v11 + 12 * *(result + 56);
  *a4 = result;
  a4[1] = v12;
  a4[2] = v13;
  return result;
}

uint64_t sub_C547E0(uint64_t a1)
{
  v2 = *(a1 + 48) - *(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v2 >= v3;
  }

  else
  {
    v4 = 1;
  }

  if (v4 || (v5 = *(a1 + 56), v5 < 0x21))
  {
    result = 0;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = v2;
    do
    {
      v7 = v5;
      v5 >>= 1;
    }

    while (v7 >= 0x42 && (*(a1 + 20) * v5) > v6);
    sub_C54924(&v18, a1, v5);
    v9 = *a1;
    v8 = *(a1 + 16);
    v10 = v19;
    *a1 = v18;
    *(a1 + 16) = v10;
    v18 = v9;
    v19 = v8;
    v11 = *(a1 + 32);
    *(a1 + 32) = v20;
    v20 = v11;
    v12 = v21;
    v13 = v22;
    v21 = *(a1 + 48);
    v14 = *(a1 + 72);
    v15 = *(a1 + 56);
    *(a1 + 48) = v12;
    *(a1 + 56) = v13;
    *(a1 + 72) = v23;
    *(a1 + 64) = *(&v22 + 1);
    v22 = v15;
    v23 = v14;
    v16 = *(a1 + 80);
    *(a1 + 80) = v24;
    v24 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v13)));
    *(a1 + 24) = 0;
    v18 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v19, v15)));
    BYTE8(v19) = 0;
    if (v16)
    {
      free(v16);
    }

    result = 1;
    *(a1 + 24) = 0;
  }

  return result;
}

float sub_C54924(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  v5 = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 80) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_C54A64(a1, a2, a3);
  }

  else
  {
    v7 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v8 = *(a1 + 16) * v7;
      if (*(a2 + 48) - *(a2 + 40) < v8)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v7 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v7 *= 2;
      }

      while (v7 < a3);
    }

    *(a1 + 56) = v7;
    result = *(a1 + 20) * v7;
    *a1 = v8;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_C54A64(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a2 + 48) - *(a2 + 40);
  v6 = 4;
  if (a3 > 4)
  {
    goto LABEL_3;
  }

  while (v5 >= (*(a1 + 16) * v6))
  {
    do
    {
LABEL_3:
      if ((v6 & 0x8000000000000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_195A000(exception, "resize overflow");
      }

      v6 *= 2;
    }

    while (v6 < a3);
  }

  sub_A98D90(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v9 = *(a2 + 64);
    v8 = *(a2 + 68);
    if (*(a2 + 40))
    {
      v10 = 12 * v7;
      v11 = *(a2 + 80);
      while (1)
      {
        v12 = *v11;
        v13 = v11[1];
        if ((v8 != v13 || v9 != v12) && (*(a2 + 36) != v13 || *(a2 + 32) != v12))
        {
          break;
        }

        v11 += 3;
        v10 -= 12;
        if (!v10)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
      v36 = 12 * v7;
      v11 = *(a2 + 80);
      while (v8 == v11[1] && v9 == *v11)
      {
        v11 += 3;
        v36 -= 12;
        if (!v36)
        {
          goto LABEL_60;
        }
      }
    }
  }

  else
  {
    v11 = *(a2 + 80);
  }

  v16 = *(a2 + 80) + 12 * v7;
  if (v11 != v16)
  {
    do
    {
      v17 = *(a1 + 56) - 1;
      v18 = 0xFF51AFD7ED558CCDLL * (*v11 ^ (*v11 >> 33));
      v19 = (0xC4CEB9FE1A85EC53 * (v18 ^ (v18 >> 33))) ^ ((0xC4CEB9FE1A85EC53 * (v18 ^ (v18 >> 33))) >> 33);
      v20 = *(a1 + 80);
      v22 = *(a1 + 64);
      v21 = *(a1 + 68);
      v23 = v19 & v17;
      v24 = (v20 + 12 * v23);
      if (v21 != v24[1] || v22 != *v24)
      {
        v26 = 1;
        do
        {
          v23 = (v23 + v26) & v17;
          v24 = (v20 + 12 * v23);
          ++v26;
        }

        while (v21 != v24[1] || v22 != *v24);
      }

      v28 = *v11;
      v24[2] = v11[2];
      *v24 = v28;
      ++*(a1 + 48);
      v11 += 3;
      if (v11 != v16)
      {
        v30 = *(a2 + 64);
        v29 = *(a2 + 68);
        if (*(a2 + 40))
        {
          do
          {
            v32 = *v11;
            v31 = v11[1];
            if ((v29 != v31 || v30 != v32) && (*(a2 + 36) != v31 || *(a2 + 32) != v32))
            {
              break;
            }

            v11 += 3;
          }

          while (v11 != v16);
        }

        else
        {
          do
          {
            if (v29 != v11[1] || v30 != *v11)
            {
              break;
            }

            v11 += 3;
          }

          while (v11 != v16);
        }
      }
    }

    while (v11 != (*(a2 + 80) + 12 * *(a2 + 56)));
  }

LABEL_60:
  ++*(a1 + 28);
}

char *sub_C54CE4(uint64_t *a1, unsigned int a2, char *__dst, _BYTE *__src)
{
  v8 = a2;
  v9 = *a1;
  v10 = a1[1];
  v11 = (v10 - *a1) >> 3;
  if (v11 <= a2)
  {
    v12 = a2 + 1;
    if (v12 <= v11)
    {
      if (v12 < v11)
      {
        v10 = v9 + 8 * v12;
        a1[1] = v10;
      }
    }

    else
    {
      sub_30B70(a1, v12 - v11);
      v9 = *a1;
      v10 = a1[1];
    }
  }

  v13 = (v9 + 8 * v8);
  v14 = (v10 - v9) >> 3;
  if (v14 <= v8)
  {
    v15 = a2 + 1;
    if (v15 <= v14)
    {
      if (v15 < v14)
      {
        a1[1] = v9 + 8 * v15;
      }
    }

    else
    {
      sub_30B70(a1, v15 - v14);
      v9 = *a1;
    }
  }

  v16 = a1[3];
  if ((v16 + 28 * *(v9 + 8 * v8 + 4)) == __src)
  {
    v17.i64[0] = __src;
    v17.i64[1] = __dst;
    v18 = vsubq_s64(v17, vdupq_n_s64(v16));
    v19 = vshrq_n_s64(v18, 2uLL);
    v21.i64[0] = 0x6DB6DB6DB6DB6DB7 * v19.i64[0];
    v21.i64[1] = 0x6DB6DB6DB6DB6DB7 * v19.i64[1];
    v20 = v21.i32[2];
    v22 = vbslq_s8(vcgtq_s64(v18, vdupq_n_s64(0xFFFFFFFFFFFFFFE4)), vshrq_n_u64(v21, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v21), 6uLL)));
    v23 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
    if (v23 >= 1)
    {
      v24 = (a1[6] + 8 * v22.i64[1]);
      if ((v21.i8[8] & 0x3F) != 0)
      {
        if (64 - (v21.i8[8] & 0x3Fu) >= v23)
        {
          v25 = (v21.i8[0] & 0x3F) - (v21.i8[8] & 0x3F) + ((v22.i64[0] - v22.i64[1]) << 6);
        }

        else
        {
          v25 = 64 - (v21.i8[8] & 0x3Fu);
        }

        *v24++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v21.i8[8] & 0x3Fu) - v25)) & (-1 << (v21.i8[8] & 0x3F)));
        v23 -= v25;
      }

      v26 = v23 >> 6;
      if (v23 >= 0x40)
      {
        bzero(v24, 8 * v26);
      }

      if ((v23 & 0x3F) != 0)
      {
        v24[v26] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v23 & 0x3F));
      }
    }

    v13[1] = v20;
  }

  else
  {
    v27 = (a1[1] - v9) >> 3;
    if (v27 <= v8)
    {
      v28 = a2 + 1;
      if (v28 <= v27)
      {
        if (v28 < v27)
        {
          a1[1] = v9 + 8 * v28;
        }
      }

      else
      {
        sub_30B70(a1, v28 - v27);
        v9 = *a1;
        v16 = a1[3];
      }
    }

    if ((v16 + 28 * *(v9 + 8 * v8)) == __dst)
    {
      v29.i64[0] = __src;
      v29.i64[1] = __dst;
      v30 = vsubq_s64(v29, vdupq_n_s64(v16));
      v31 = vshrq_n_s64(v30, 2uLL);
      v33.i64[0] = 0x6DB6DB6DB6DB6DB7 * v31.i64[0];
      v32 = v33.i32[0];
      v33.i64[1] = 0x6DB6DB6DB6DB6DB7 * v31.i64[1];
      v34 = vbslq_s8(vcgtq_s64(v30, vdupq_n_s64(0xFFFFFFFFFFFFFFE4)), vshrq_n_u64(v33, 6uLL), vnegq_s64(vshrq_n_u64(vsubq_s64(vdupq_n_s64(0x3FuLL), v33), 6uLL)));
      v35 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
      if (v35 >= 1)
      {
        v36 = (a1[6] + 8 * v34.i64[1]);
        if ((v33.i8[8] & 0x3F) != 0)
        {
          if (64 - (v33.i8[8] & 0x3Fu) >= v35)
          {
            v37 = (v33.i8[0] & 0x3F) - (v33.i8[8] & 0x3F) + ((v34.i64[0] - v34.i64[1]) << 6);
          }

          else
          {
            v37 = 64 - (v33.i8[8] & 0x3Fu);
          }

          *v36++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v33.i8[8] & 0x3Fu) - v37)) & (-1 << (v33.i8[8] & 0x3F)));
          v35 -= v37;
        }

        v38 = v35 >> 6;
        if (v35 >= 0x40)
        {
          bzero(v36, 8 * v38);
        }

        if ((v35 & 0x3F) != 0)
        {
          v36[v38] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v35 & 0x3F));
        }
      }

      *v13 = v32;
      return __src;
    }

    else
    {
      v39 = (a1[1] - v9) >> 3;
      if (v39 <= v8)
      {
        v40 = a2 + 1;
        if (v40 <= v39)
        {
          if (v40 < v39)
          {
            a1[1] = v9 + 8 * v40;
          }
        }

        else
        {
          sub_30B70(a1, v40 - v39);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v41 = (v16 + 28 * *(v9 + 8 * v8 + 4));
      v42 = v41 - __src;
      if (v41 != __src)
      {
        memmove(__dst, __src, v41 - __src);
        v16 = a1[3];
        v9 = *a1;
      }

      v43 = &__dst[v42];
      v44 = a1[6];
      v45 = 0x6DB6DB6DB6DB6DB7 * (&v43[-v16] >> 2);
      if (&v43[-v16] <= -28)
      {
        v46 = -((63 - v45) >> 6);
      }

      else
      {
        v46 = v45 >> 6;
      }

      v47 = 8 * v46;
      v48 = (a1[1] - v9) >> 3;
      if (v48 <= v8)
      {
        v49 = a2 + 1;
        if (v49 <= v48)
        {
          if (v49 < v48)
          {
            a1[1] = v9 + 8 * v49;
          }
        }

        else
        {
          sub_30B70(a1, v49 - v48);
          v9 = *a1;
          v16 = a1[3];
        }
      }

      v50 = *(v9 + 8 * v8 + 4);
      v51 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
      if (v51 >= 1)
      {
        v52 = (v44 + v47);
        if ((v45 & 0x3F) != 0)
        {
          if (64 - (v45 & 0x3F) >= v51)
          {
            v53 = (v50 & 0x3F) - (v45 & 0x3F) + 8 * (((v50 >> 3) & 0x1FFFFFF8) - v47);
          }

          else
          {
            v53 = 64 - (v45 & 0x3F);
          }

          *v52++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - (v45 & 0x3Fu) - v53)) & (-1 << (v45 & 0x3F)));
          v51 -= v53;
        }

        v54 = v51 >> 6;
        if (v51 >= 0x40)
        {
          bzero(v52, 8 * v54);
        }

        if ((v51 & 0x3F) != 0)
        {
          v52[v54] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v51 & 0x3F));
        }
      }

      v13[1] = -1227133513 * (&v43[-v16] >> 2);
    }
  }

  return __dst;
}

uint64_t sub_C551EC(uint64_t *a1, unsigned int a2, __int128 *a3)
{
  v5 = a2;
  v6 = *a1;
  v7 = (a1[1] - *a1) >> 3;
  if (v7 <= a2)
  {
    v8 = a2 + 1;
    if (v8 <= v7)
    {
      if (v8 < v7)
      {
        a1[1] = v6 + 8 * v8;
      }
    }

    else
    {
      sub_30B70(a1, v8 - v7);
      v6 = *a1;
    }
  }

  v9 = (v6 + 8 * v5);
  v10 = *v9;
  if (*v9 && (v11 = v10 - 1, ((*(a1[6] + ((v11 >> 3) & 0x1FFFFFF8)) >> (v10 - 1)) & 1) == 0))
  {
    *v9 = v11;
    v41 = (a1[3] + 28 * v11);
    v42 = *a3;
    *(v41 + 12) = *(a3 + 12);
    *v41 = v42;
    v39 = *v9;
    *(a1[6] + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
    v40 = a1[3];
  }

  else
  {
    v12 = v9[1];
    v13 = a1[3];
    v14 = a1[4];
    v15 = a1 + 3;
    v16 = 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 2);
    if (v16 <= (v12 + 1) || ((*(a1[6] + ((v12 >> 3) & 0x1FFFFFF8)) >> v12) & 1) != 0)
    {
      v17 = a1[1] - v6;
      v18 = v12 - 1227133513 * ((v14 - v13) >> 2) - v10;
      v19 = 2 * (v12 - v10) + 2;
      if (v5 < v17 >> 3)
      {
        v20 = v18;
      }

      else
      {
        v20 = -1227133513 * ((v14 - v13) >> 2);
      }

      if (v5 < v17 >> 3)
      {
        v21 = v19;
      }

      else
      {
        v21 = 2;
      }

      if (v16 >= v21 + v16)
      {
        if (v16 > v21 + v16)
        {
          v14 = v13 + 28 * (v21 + v16);
          a1[4] = v14;
        }
      }

      else
      {
        sub_C555BC((a1 + 3), v21);
        v13 = a1[3];
        v14 = a1[4];
      }

      sub_4D9168((a1 + 6), 0x6DB6DB6DB6DB6DB7 * ((v14 - v13) >> 2), 0);
      v22 = *v9;
      v23 = v9[1];
      v24 = v22;
      if (v23 != v22)
      {
        memmove((a1[3] + 28 * v16), (a1[3] + 28 * v22), 28 * (v23 - v22));
        v24 = *v9;
        LODWORD(v22) = v9[1];
      }

      v25 = a1[6];
      v26 = (v24 >> 3) & 0x1FFFFFF8;
      v27 = v24 & 0x3F;
      v28 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
      if (v28 >= 1)
      {
        v29 = (v25 + v26);
        if ((v24 & 0x3F) != 0)
        {
          if ((64 - v27) >= v28)
          {
            v30 = (v22 & 0x3F) - v27 + 8 * (((v22 >> 3) & 0x1FFFFFF8) - v26);
          }

          else
          {
            v30 = (64 - v27);
          }

          *v29++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v27 - v30)) & (-1 << v27));
          v28 -= v30;
        }

        v31 = v28 >> 6;
        if (v28 >= 0x40)
        {
          bzero(v29, 8 * v31);
        }

        if ((v28 & 0x3F) != 0)
        {
          v29[v31] &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v28 & 0x3F));
        }
      }

      v32 = (v16 >> 3) & 0x1FFFFFF8;
      v33 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
      if (v33 >= 1)
      {
        v34 = (v25 + v32);
        if ((v16 & 0x3F) != 0)
        {
          if (64 - (v16 & 0x3F) >= v33)
          {
            v35 = (v20 & 0xFFFFFFC0) - 8 * v32 - (v16 & 0x3F) + (v20 & 0x3F);
          }

          else
          {
            v35 = 64 - (v16 & 0x3F);
          }

          *v34++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - (v16 & 0x3Fu) - v35)) & (-1 << (v16 & 0x3F));
          v33 -= v35;
        }

        v36 = v33 >> 6;
        if (v33 >= 0x40)
        {
          memset(v34, 255, 8 * v36);
        }

        if ((v33 & 0x3F) != 0)
        {
          v34[v36] |= 0xFFFFFFFFFFFFFFFFLL >> -(v33 & 0x3F);
        }
      }

      *v9 = v16;
      v9[1] = v20;
      v37 = (*v15 + 28 * v20);
      v38 = *a3;
      *(v37 + 12) = *(a3 + 12);
      *v37 = v38;
      v39 = v9[1];
      *(a1[6] + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
      v40 = *v15;
    }

    else
    {
      v44 = (v13 + 28 * v12);
      v45 = *a3;
      *(v44 + 12) = *(a3 + 12);
      *v44 = v45;
      v39 = v9[1];
      *(a1[6] + ((v39 >> 3) & 0x1FFFFFF8)) |= 1 << v39;
      v40 = a1[3];
    }

    v9[1] = v39 + 1;
  }

  return v40 + 28 * v39;
}

void sub_C555BC(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v4 - v3) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 28 * a2;
      v10 = 28 * a2 - 28;
      if (v10 < 0x1C)
      {
        goto LABEL_33;
      }

      v11 = v10 / 0x1C + 1;
      v12 = v3 + 28 * (v11 & 0x1FFFFFFFFFFFFFFELL);
      v13 = v3 + 32;
      *&v14 = 0xFFFFFFFF00000000;
      *(&v14 + 1) = 0xFFFFFFFF00000000;
      v15 = v11 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 16) = v14;
        *v13 = xmmword_22AC000;
        *(v13 - 32) = xmmword_22AC010;
        *(v13 + 16) = 0xFFFFFFFFLL;
        v13 += 56;
        v15 -= 2;
      }

      while (v15);
      v3 = v12;
      if (v11 != (v11 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_33:
        do
        {
          *v3 = xmmword_22AC010;
          *(v3 + 16) = 0xFFFFFFFF00000000;
          *(v3 + 24) = 0;
          v3 += 28;
        }

        while (v3 != v9);
      }

      v3 = v9;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v5 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 2);
    v6 = v5 + a2;
    if (v5 + a2 > 0x924924924924924)
    {
      sub_1794();
    }

    v7 = 0x6DB6DB6DB6DB6DB7 * ((v4 - *a1) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x492492492492492)
    {
      v8 = 0x924924924924924;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1808();
    }

    v16 = 28 * v5;
    v17 = 28 * v5 + 28 * a2;
    v18 = 28 * a2 - 28;
    v19 = 28 * v5;
    if (v18 < 0x1C)
    {
      goto LABEL_34;
    }

    v20 = v18 / 0x1C + 1;
    v19 = v16 + 28 * (v20 & 0x1FFFFFFFFFFFFFFELL);
    v21 = 28 * v5 + 32;
    *&v22 = 0xFFFFFFFF00000000;
    *(&v22 + 1) = 0xFFFFFFFF00000000;
    v23 = v20 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v21 - 16) = v22;
      *v21 = xmmword_22AC000;
      *(v21 - 32) = xmmword_22AC010;
      *(v21 + 16) = 0xFFFFFFFFLL;
      v21 += 56;
      v23 -= 2;
    }

    while (v23);
    if (v20 != (v20 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_34:
      do
      {
        *v19 = xmmword_22AC010;
        *(v19 + 16) = 0xFFFFFFFF00000000;
        *(v19 + 24) = 0;
        v19 += 28;
      }

      while (v19 != v17);
    }

    v24 = *a1;
    v25 = *(a1 + 8) - *a1;
    v26 = v16 - v25;
    memcpy((v16 - v25), *a1, v25);
    *a1 = v26;
    *(a1 + 8) = v17;
    *(a1 + 16) = 0;
    if (v24)
    {

      operator delete(v24);
    }
  }
}

uint64_t sub_C5587C(void *a1, uint64_t a2, int a3)
{
  v5 = *a2;
  v6 = *(a2 + 8);
  if (*a2 == v6)
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  do
  {
    v10 = sub_504BC8(a1[520] + 24, __ROR8__(*v5, 32), 0, "transfer");
    v11 = (v10 - *v10);
    if (*v11 < 0xBu || (v12 = v11[5]) == 0 || *(v10 + v12) == -1)
    {
      ++v8;
    }

    else
    {
      v13 = __ROR8__(*v5, 32);
      v14 = sub_504BC8(a1[520] + 24, v13, 0, "transfer");
      v15 = (v14 - *v14);
      if (*v15 < 0xBu || (v16 = v15[5]) == 0 || *(v14 + v16) == -1)
      {
        v9 = (v9 + 0x7FFFFFFF);
      }

      else
      {
        v17 = sub_504BC8(a1[520] + 24, v13, 0, "transfer");
        v18 = (v17 - *v17);
        if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
        {
          v9 = (10 * *(v17 + v19) + v9);
        }

        else
        {
          v9 = (v9 - 10);
        }
      }
    }

    ++v5;
  }

  while (v5 != v6);
  if (!v8)
  {
LABEL_46:
    v54 = *a2;
    if (*a2 != *(a2 + 8))
    {
      goto LABEL_47;
    }

    return v9;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      goto LABEL_46;
    }

    v20 = a1[520];
    if (*(v20 + 17) == 1)
    {
      v21 = sub_3D4D04(v20 + 24, 1u, 0);
      if (!v21)
      {
        goto LABEL_87;
      }

      v22 = &v21[-*v21];
      if (*v22 < 5u)
      {
        goto LABEL_87;
      }

      v23 = *(v22 + 2);
      if (!v23)
      {
        goto LABEL_87;
      }

      v24 = &v21[v23 + *&v21[v23]];
      v25 = &v24[-*v24];
      v26 = 0.0;
      if (*v25 >= 0x11u)
      {
        v27 = *(v25 + 8);
        if (v27)
        {
          v26 = (10 * *&v24[v27]);
        }
      }

      v28 = v26 * v8;
      if (v28 < 0.0)
      {
LABEL_27:
        if (v28 > -4.50359963e15)
        {
          v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_44:
          v28 = (v29 >> 1);
          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v28 = 300.0 * v8;
      if (v28 < 0.0)
      {
        goto LABEL_27;
      }
    }

    if (v28 < 4.50359963e15)
    {
      v29 = (v28 + v28) + 1;
      goto LABEL_44;
    }

LABEL_45:
    v9 = (v9 + v28);
    goto LABEL_46;
  }

  v30 = sub_504BC8(a1[520] + 24, __ROR8__(**a2, 32), 0, "transfer");
  v31 = (v30 - *v30);
  if (*v31 >= 7u && (v32 = v31[3]) != 0)
  {
    v33 = *(v30 + v32 + 4) | (*(v30 + v32) << 32);
  }

  else
  {
    v33 = 0xFFFFFFFFLL;
  }

  v34 = sub_504BC8(a1[520] + 24, __ROR8__(*(*(a2 + 8) - 8), 32), 0, "transfer");
  v35 = (v34 - *v34);
  if (*v35 >= 9u && (v36 = v35[4]) != 0)
  {
    v37 = *(v34 + v36 + 4) | (*(v34 + v36) << 32);
  }

  else
  {
    v37 = 0xFFFFFFFFLL;
  }

  v84 = a1;
  v38 = sub_C561BC(&v84, v33);
  v39 = sub_C561BC(&v84, v37);
  v40 = exp(3.14159265 - HIDWORD(v38) * 6.28318531 / 4294967300.0);
  v41 = atan((v40 - 1.0 / v40) * 0.5) * 57.2957795 * 0.0174532925;
  v42 = exp(3.14159265 - HIDWORD(v39) * 6.28318531 / 4294967300.0);
  v43 = atan((v42 - 1.0 / v42) * 0.5) * 57.2957795 * 0.0174532925;
  v44.i64[0] = v38;
  v44.i64[1] = v39;
  v45 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v44), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v83 = vsubq_f64(v45, vdupq_laneq_s64(v45, 1)).f64[0];
  v46 = sin((v41 - v43) * 0.5);
  v47 = v46 * v46;
  v48 = cos(v41);
  v49 = v48 * cos(v43);
  v50 = sin(0.5 * v83);
  v51 = atan2(sqrt(v50 * v50 * v49 + v47), sqrt(1.0 - (v50 * v50 * v49 + v47)));
  v52 = (v51 + v51) * 6372797.56 / 0.9 * 10.0;
  if (v52 >= 0.0)
  {
    if (v52 >= 4.50359963e15)
    {
      goto LABEL_75;
    }

    v53 = (v52 + v52) + 1;
  }

  else
  {
    if (v52 <= -4.50359963e15)
    {
      goto LABEL_75;
    }

    v53 = (v52 + v52) - 1 + (((v52 + v52) - 1) >> 63);
  }

  v52 = (v53 >> 1);
LABEL_75:
  v79 = v52;
  if (v9 > v52)
  {
    v79 = v9;
  }

  if (v79 >= 600)
  {
    v9 = v79;
  }

  else
  {
    v9 = 600;
  }

  v54 = *a2;
  if (*a2 == *(a2 + 8))
  {
    return v9;
  }

LABEL_47:
  v55 = sub_504BC8(a1[520] + 24, __ROR8__(*v54, 32), 0, "transfer");
  v56 = (v55 - *v55);
  if (*v56 >= 7u && (v57 = v56[3]) != 0)
  {
    v58 = *(v55 + v57 + 4) | (*(v55 + v57) << 32);
  }

  else
  {
    v58 = 0xFFFFFFFFLL;
  }

  v59 = sub_504D54(a1[522] + 24, __ROR8__(v58, 32), 0, "transfer node");
  v60 = (v59 - *v59);
  v62 = *v60 >= 7u && (v61 = v60[3]) != 0 && *(v59 + v61) == 3;
  v63 = sub_504BC8(a1[520] + 24, __ROR8__(*(*(a2 + 8) - 8), 32), 0, "transfer");
  v64 = (v63 - *v63);
  if (*v64 >= 9u && (v65 = v64[4]) != 0)
  {
    v66 = *(v63 + v65 + 4) | (*(v63 + v65) << 32);
  }

  else
  {
    v66 = 0xFFFFFFFFLL;
  }

  v67 = sub_504D54(a1[522] + 24, __ROR8__(v66, 32), 0, "transfer node");
  v68 = (v67 - *v67);
  if (*v68 < 7u)
  {
    return v9;
  }

  v69 = v68[3];
  if (!v69)
  {
    return v9;
  }

  if (*(v67 + v69) != 3 || !v62)
  {
    return v9;
  }

  v71 = a1[509];
  if (*(v71 + 17) == 1)
  {
    v72 = sub_3D4D04(v71 + 24, 1u, 0);
    if (v72)
    {
      v73 = &v72[-*v72];
      if (*v73 >= 5u)
      {
        v74 = *(v73 + 2);
        if (v74)
        {
          v75 = &v72[v74 + *&v72[v74]];
          v76 = &v75[-*v75];
          if (*v76 >= 0x17u && (v77 = *(v76 + 11)) != 0)
          {
            v78 = 10 * *&v75[v77];
          }

          else
          {
            v78 = 0;
          }

          goto LABEL_84;
        }
      }
    }

LABEL_87:
    exception = __cxa_allocate_exception(0x40uLL);
    v82 = sub_2D390(exception, "Root quad node of transit routing layer does not contain info object", 0x44uLL);
  }

  v78 = 300;
LABEL_84:
  if (v9 <= v78)
  {
    return v78;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_C55FEC(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = a2[10] - a2[9];
  if ((v3 & 0x7FFFFFFF8) != 0)
  {
    v7 = 0;
    v8 = (v3 >> 3);
    do
    {
      v10 = __ROR8__(*sub_A9C5E0(a2 + 33, v7), 32);
      v11 = sub_504D54(*(a1 + 4176) + 24, v10, 0, "transfer node");
      v12 = (v11 - *v11);
      v13 = *v12;
      if (v13 >= 7 && v12[3] && (*(v11 + v12[3]) & 0xFE) == 2)
      {
        if (v13 >= 9 && (v14 = v12[4]) != 0)
        {
          v15 = *(v11 + v14 + 4) | (*(v11 + v14) << 32);
          v16 = HIDWORD(v15);
          if (*(a3 + 240))
          {
            goto LABEL_29;
          }
        }

        else
        {
          LODWORD(v15) = -1;
          LODWORD(v16) = 0;
          if (*(a3 + 240))
          {
LABEL_29:
            sub_5AF20();
          }
        }
      }

      else
      {
        LODWORD(v16) = 0;
        LODWORD(v15) = -1;
        if (*(a3 + 240))
        {
          goto LABEL_29;
        }
      }

      if (v16 == *(a3 + 4) && v15 == *a3)
      {
        v9 = *(a3 + 248);
        if (v9 == 2)
        {
          v18 = sub_504D54(*(a1 + 4176) + 24, v10, 0, "transfer node");
          v19 = (v18 - *v18);
          if (*v19 >= 7u)
          {
            v20 = v19[3];
            if (v20)
            {
              if (*(v18 + v20) == 3)
              {
                return v7;
              }
            }
          }

          v9 = *(a3 + 248);
        }

        if (!v9)
        {
          v21 = sub_504D54(*(a1 + 4176) + 24, v10, 0, "transfer node");
          v22 = (v21 - *v21);
          if (*v22 >= 7u)
          {
            v23 = v22[3];
            if (v23)
            {
              if (*(v21 + v23) == 2)
              {
                return v7;
              }
            }
          }
        }
      }

      ++v7;
    }

    while (v8 != v7);
  }

  return 0xFFFFFFFFLL;
}

uint64_t sub_C561BC(uint64_t *a1, uint64_t a2)
{
  v3 = __ROR8__(a2, 32);
  v4 = sub_504D54(*(*a1 + 4176) + 24, v3, 0, "transfer node");
  v5 = (v4 - *v4);
  if (*v5 < 7u || (v6 = v5[3]) == 0)
  {
    v31 = 0;
    goto LABEL_36;
  }

  v7 = *(v4 + v6);
  if (v7 != 3)
  {
    if (v7 == 2)
    {
      v8 = *a1;
      v9 = sub_504D54(*(v8 + 4176) + 24, v3, 0, "transfer node");
      v10 = (v9 - *v9);
      v11 = *v10;
      if (v11 >= 7 && v10[3] && (*(v9 + v10[3]) & 0xFE) == 2)
      {
        if (v11 >= 9 && (v12 = v10[4]) != 0)
        {
          v13 = *(v9 + v12 + 4) | (*(v9 + v12) << 32);
        }

        else
        {
          v13 = 0xFFFFFFFFLL;
        }

        v27 = v13 & 0xFFFFFFFF00000000;
        v13 = v13;
      }

      else
      {
        v27 = 0;
        v13 = 0xFFFFFFFFLL;
      }

      v25 = sub_503310(*(v8 + 4008) + 24, __ROR8__(v27 | v13, 32), 0, "access point");
      v26 = 14;
      goto LABEL_29;
    }

    v31 = v7;
LABEL_36:
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v36, v31);
    sub_23E08("Attempted to obtain coordinate for transfer node of type ", &v36, &v37);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v33 = &v37;
    }

    else
    {
      v33 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v35 = sub_2D390(exception, v33, size);
  }

  v14 = *a1;
  v15 = sub_504D54(*(v14 + 4176) + 24, v3, 0, "transfer node");
  v16 = (v15 - *v15);
  v17 = *v16;
  if (v17 >= 7 && v16[3] && ((*(v15 + v16[3]) & 0xFE) == 2 ? (v18 = v17 >= 9) : (v18 = 0), v18 && (v19 = v16[4]) != 0))
  {
    v22 = (v15 + v19);
    v20 = *v22;
    v21 = v22[1];
    if (v20 == 1 && (v21 + 3) < 2)
    {
      return -1;
    }

    v24 = v20 << 32;
  }

  else
  {
    v24 = 0;
    v21 = 0xFFFFFFFFLL;
  }

  v25 = sub_502FF8(*(v14 + 4120) + 24, __ROR8__(v24 | v21, 32), 0, "stop");
  v26 = 6;
LABEL_29:
  v28 = v25 + *(v25 + v26 - *v25);
  v29 = *v28;
  LODWORD(v28) = *(v28 + 4);
  if (v28 >= 0xFFFFFFFE)
  {
    v28 = 4294967294;
  }

  else
  {
    v28 = v28;
  }

  return v29 | (v28 << 32);
}

void sub_C56444(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C5649C(uint64_t a1, void *a2)
{
  v14 = 9;
  strcpy(__p, "algorithm");
  v4 = sub_5F8FC(a2, __p);
  v5 = sub_C567B4(v4);
  if (v14 < 0)
  {
    v6 = v5;
    operator delete(*__p);
    v5 = v6;
  }

  *a1 = v5;
  v14 = 18;
  strcpy(__p, "cost_function_name");
  v7 = sub_5F8FC(a2, __p);
  if (*(v7 + 23) < 0)
  {
    sub_325C((a1 + 8), *v7, v7[1]);
  }

  else
  {
    v8 = *v7;
    *(a1 + 24) = v7[2];
    *(a1 + 8) = v8;
  }

  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v14 = 18;
  strcpy(__p, "eta_evaluator_name");
  v9 = sub_5F8FC(a2, __p);
  if (*(v9 + 23) < 0)
  {
    sub_325C((a1 + 32), *v9, v9[1]);
  }

  else
  {
    v10 = *v9;
    *(a1 + 48) = v9[2];
    *(a1 + 32) = v10;
  }

  if (v14 < 0)
  {
    operator delete(*__p);
  }

  v14 = 12;
  strcpy(__p, "unpack_paths");
  v11 = sub_5F9D0(a2, __p);
  if (v14 < 0)
  {
    v12 = v11;
    operator delete(*__p);
    v11 = v12;
  }

  *(a1 + 56) = v11;
  operator new();
}

void sub_C56734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v14 + 55) < 0)
  {
    operator delete(*(v14 + 32));
  }

  if (*(v14 + 31) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_C567B4(uint64_t a1)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    v1 = *(a1 + 23);
    if (v1 != 8)
    {
      if (v1 != 16)
      {
        v2 = a1;
        if (v1 != 22)
        {
          goto LABEL_34;
        }

        goto LABEL_25;
      }

      if (*a1 == 0x615F66695F726263 && *(a1 + 8) == 0x656C62616C696176)
      {
        return 1;
      }

LABEL_34:
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(" provided", &v16, &v17);
      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v13 = &v17;
      }

      else
      {
        v13 = v17.__r_.__value_.__r.__words[0];
      }

      if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v17.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v17.__r_.__value_.__l.__size_;
      }

      v15 = sub_2D390(exception, v13, size);
    }

    if (*a1 != 0x617274736B6A6964)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (*(a1 + 8) == 8 && **a1 == 0x617274736B6A6964)
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if (v3 != 22)
  {
    if (v3 == 16 && **a1 == 0x615F66695F726263 && *(*a1 + 8) == 0x656C62616C696176)
    {
      return 1;
    }

    goto LABEL_34;
  }

  v2 = *a1;
LABEL_25:
  v7 = *v2;
  v8 = v2[1];
  v9 = *(v2 + 14);
  if (v7 != 0x687469775F726263 || v8 != 0x5F74656B6375625FLL || v9 != 0x6863726165735F74)
  {
    goto LABEL_34;
  }

  return 2;
}

void sub_C569CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_C56A24(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = 9;
  strcpy(__p, "on_street");
  v5 = sub_5F5AC(a4, __p);
  sub_C5649C(a1, v5);
}

void sub_C56AD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_C56AF0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = 2;
  sub_CCE5F4(__p, &v16);
  v8 = v24;
  *(a1 + 176) = v23;
  *(a1 + 192) = v8;
  *(a1 + 208) = v25;
  v9 = v20;
  *(a1 + 112) = v19;
  *(a1 + 128) = v9;
  v10 = v22;
  *(a1 + 144) = v21;
  *(a1 + 160) = v10;
  v11 = v18;
  *(a1 + 80) = *__p;
  *(a1 + 96) = v11;
  sub_C56C78(a1, a2, a3, __p);
  if (BYTE8(v18) != 1)
  {
    sub_C570A8();
  }

  sub_C5A6E0(a4, __p);
  if (BYTE8(v18) == 1)
  {
    v12 = __p[0];
    if (__p[0])
    {
      v13 = __p[1];
      v14 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v15 = *(v13 - 2);
          if (v15 != -1)
          {
            (off_2672A90[v15])(&v16, v13 - 408);
          }

          *(v13 - 2) = -1;
          v13 -= 410;
        }

        while (v13 != v12);
        v14 = __p[0];
      }

      __p[1] = v12;
      operator delete(v14);
    }
  }
}

void sub_C56C60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_C584DC(va);
  _Unwind_Resume(a1);
}

void sub_C56C78(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *v43 = 0u;
  *__p = 0u;
  v45 = 1065353216;
  v7 = *(a3 + 8);
  for (i = *(a3 + 16); v7 != i; v7 += 1920)
  {
    if (*(v7 + 1904) == -1 && *(v7 + 248) == 2)
    {
      if (*(v7 + 240))
      {
        goto LABEL_59;
      }

      if (HIDWORD(*v7) != 1 || *v7 + 3 >= 2)
      {
        v10 = *(a1 + 72);
        v11 = sub_502FF8(*(v10 + 4120) + 24, __ROR8__(*v7, 32), 0, "stop");
        v12 = (v11 - *v11);
        if (*v12 >= 0xDu)
        {
          v13 = v12[6];
          if (v13)
          {
            v15 = *(v11 + v13);
            v14 = *(v11 + v13 + 4);
            if (v14 != -1 && v15 != 0)
            {
              v17 = sub_93D480(*(v10 + 4128) + 24, __ROR8__(v14 | (v15 << 32), 32), 0, "station");
              v18 = (v17 - *v17);
              if (*v18 >= 0xBu)
              {
                v19 = v18[5];
                if (v19)
                {
                  if (*(v17 + v19 + *(v17 + v19)))
                  {
                    if (*(v7 + 240))
                    {
LABEL_59:
                      sub_5AF20();
                    }

                    sub_BC460C(v43, v7);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v20 = (a2 + 8);
  if (v21 == v22)
  {
    goto LABEL_52;
  }

  v23 = 0;
  do
  {
    v24 = v23;
    if (*(v21 + 248) != 2)
    {
      goto LABEL_45;
    }

    if (*(v21 + 240))
    {
      goto LABEL_58;
    }

    if (!sub_A794D0(v43, v21))
    {
      goto LABEL_45;
    }

    v25 = *(v21 + 1904);
    if (v25 == -1 || *(sub_C58590(v20, v25) + 248) != 2)
    {
      goto LABEL_45;
    }

    if (*(v21 + 240))
    {
LABEL_58:
      sub_5AF20();
    }

    if (((v26 = *(a1 + 72), v27 = *v21, HIDWORD(*v21) != 1) || (v27 + 3) >= 2) && (v28 = sub_502FF8(*(v26 + 4120) + 24, __ROR8__(v27, 32), 0, "stop"), v29 = (v28 - *v28), *v29 >= 0xDu) && (v30 = v29[6]) != 0 && ((v32 = *(v28 + v30), v31 = *(v28 + v30 + 4), v31 != -1) ? (v33 = v32 == 0) : (v33 = 1), !v33 && (v34 = sub_93D480(*(v26 + 4128) + 24, __ROR8__(v31 | (v32 << 32), 32), 0, "station"), v35 = (v34 - *v34), *v35 >= 0xBu) && (v36 = v35[5]) != 0 && *(v34 + v36 + *(v34 + v36))))
    {
      v23 = v21;
      if (v24)
      {
        v23 = v24;
        if (*(v21 + 256) < *(v24 + 256))
        {
          v23 = v21;
        }
      }
    }

    else
    {
LABEL_45:
      v23 = v24;
    }

    v21 += 1920;
  }

  while (v21 != v22);
  if (!v23)
  {
LABEL_52:
    *a4 = 0;
    *(a4 + 24) = 0;
  }

  else
  {
    v48[0] = 0;
    v49 = -1;
    v37 = *(v23 + 1896);
    if (v37 != -1)
    {
      v46 = v48;
      (off_2672AC0[v37])(&v46, v23 + 272);
      v49 = v37;
    }

    sub_C5A918(&v41, v47, 1uLL);
    *a4 = v41;
    *(a4 + 16) = v42;
    v42 = 0;
    v41 = 0uLL;
    *(a4 + 24) = 1;
    if (v49 != -1)
    {
      (off_2672A90[v49])(&v46, v48);
    }
  }

  v38 = __p[0];
  if (__p[0])
  {
    do
    {
      v39 = *v38;
      operator delete(v38);
      v38 = v39;
    }

    while (v39);
  }

  v40 = v43[0];
  v43[0] = 0;
  if (v40)
  {
    operator delete(v40);
  }
}