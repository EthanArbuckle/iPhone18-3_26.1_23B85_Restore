void sub_41A264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_41AB8C(v23 + 64);
  sub_1A104(v24);
  sub_23D9C(v23);
  _Unwind_Resume(a1);
}

uint64_t sub_41A2E4(void *a1, uint64_t a2)
{
  v3 = sub_41B024(a1, a2);
  if (v3)
  {
    return *(v3 + 10);
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v14);
    v5 = sub_4A5C(&v14, "Invalid stacked experiment name: ", 33);
    v6 = *(a2 + 23);
    if (v6 >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (v6 >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      v8 = *(a2 + 8);
    }

    sub_4A5C(v5, v7, v8);
    if ((v24 & 0x10) != 0)
    {
      v10 = v23;
      if (v23 < v20)
      {
        v23 = v20;
        v10 = v20;
      }

      v11 = v19;
      v9 = v10 - v19;
      if (v10 - v19 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if ((v24 & 8) == 0)
      {
        v9 = 0;
        v13 = 0;
LABEL_21:
        *(&__p + v9) = 0;
        sub_7E854(&__p, 3u);
        if (v13 < 0)
        {
          operator delete(__p);
        }

        if (v22 < 0)
        {
          operator delete(v21);
        }

        std::locale::~locale(&v16);
        std::ostream::~ostream();
        std::ios::~ios();
        return 0xFFFFFFFFLL;
      }

      v11 = v17;
      v9 = v18 - v17;
      if ((v18 - v17) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_28:
        sub_3244();
      }
    }

    if (v9 >= 0x17)
    {
      operator new();
    }

    v13 = v9;
    if (v9)
    {
      memmove(&__p, v11, v9);
    }

    goto LABEL_21;
  }

  return 0xFFFFFFFFLL;
}

void sub_41A574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_41A5B8@<X0>(void *result@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = result[5] + 24 * a2;
  if (*(v3 + 23) < 0)
  {
    return sub_325C(a3, *v3, *(v3 + 8));
  }

  v4 = *v3;
  *(a3 + 16) = *(v3 + 16);
  *a3 = v4;
  return result;
}

uint64_t sub_41A604(uint64_t a1, int *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  v19 = a1;
  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v16 = 48 * v3;
  v17 = 48 * v3;
  v18 = 0;
  sub_418CD8((48 * v3), *a2, a3);
  v17 = 48 * v3 + 48;
  sub_41A7DC(a1, &__p);
  v7 = *(a1 + 8);
  v8 = v16;
  for (i = v17; v17 != v8; i = v17)
  {
    v17 = i - 48;
    v10 = *(i - 24);
    if (v10)
    {
      do
      {
        v12 = *v10;
        v13 = *(v10 + 12);
        if (v13 != -1)
        {
          (off_2669DC8[v13])(&v20, v10 + 5);
        }

        *(v10 + 12) = -1;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v12;
      }

      while (v12);
    }

    v11 = *(i - 40);
    *(i - 40) = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v7;
}

void sub_41A7DC(char **a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v17 = v7;
  if (*a1 != v5)
  {
    v8 = (v4 + v6 - v5);
    v9 = v6;
    do
    {
      *v8 = *v9;
      sub_5ADDC((v8 + 2), (v9 + 8));
      v9 += 48;
      v8 = (v17 + 48);
      v17 += 48;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 3);
      if (v10)
      {
        do
        {
          v12 = *v10;
          v13 = *(v10 + 12);
          if (v13 != -1)
          {
            (off_2669DC8[v13])(&v18, v10 + 5);
          }

          *(v10 + 12) = -1;
          if (*(v10 + 39) < 0)
          {
            operator delete(v10[2]);
          }

          operator delete(v10);
          v10 = v12;
        }

        while (v12);
      }

      v11 = *(v6 + 1);
      *(v6 + 1) = 0;
      if (v11)
      {
        operator delete(v11);
      }

      v6 += 48;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v14 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v14;
  v15 = a1[1];
  a1[1] = a2[2];
  a2[2] = v15;
  v16 = a1[2];
  a1[2] = a2[3];
  a2[3] = v16;
  *a2 = a2[1];
}

void sub_41A94C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_41AA10(va);
  _Unwind_Resume(a1);
}

void sub_41A964(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_2669DC8[v5])(&v7, v3 + 5);
      }

      *(v3 + 12) = -1;
      if (*(v3 + 39) < 0)
      {
        operator delete(v3[2]);
      }

      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v6 = *(a2 + 8);
  *(a2 + 8) = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

uint64_t sub_41AA10(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = *a1;
      do
      {
        v4 -= 48;
        sub_41A964(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_41AA78(uint64_t a1)
{
  sub_41AAB0(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_41AAB0(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    v5 = *(i - 24);
    if (v5)
    {
      do
      {
        v7 = *v5;
        v8 = *(v5 + 12);
        if (v8 != -1)
        {
          (off_2669DC8[v8])(&v9, v5 + 5);
        }

        *(v5 + 12) = -1;
        if (*(v5 + 39) < 0)
        {
          operator delete(v5[2]);
        }

        operator delete(v5);
        v5 = v7;
      }

      while (v7);
    }

    v6 = *(i - 40);
    *(i - 40) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }
}

uint64_t sub_41AB8C(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_41A964(a1, i))
    {
      i -= 48;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_41ABF0(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v24, a2, v5);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_43;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v8)
    {
      v10 = v6 % *&v8;
    }
  }

  else
  {
    v10 = (*&v8 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_43:
    operator new();
  }

  v13 = v2[23];
  if (v13 >= 0)
  {
    v14 = v2[23];
  }

  else
  {
    v14 = *(v2 + 1);
  }

  if (v13 < 0)
  {
    v2 = *v2;
  }

  if (v9.u32[0] < 2uLL)
  {
    while (1)
    {
      v19 = v12[1];
      if (v19 == v7)
      {
        v20 = *(v12 + 39);
        v21 = v20;
        if (v20 < 0)
        {
          v20 = v12[3];
        }

        if (v20 == v14)
        {
          v22 = v21 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v22, v2, v14))
          {
            return v12;
          }
        }
      }

      else if ((v19 & (*&v8 - 1)) != v10)
      {
        goto LABEL_43;
      }

      v12 = *v12;
      if (!v12)
      {
        goto LABEL_43;
      }
    }
  }

  while (1)
  {
    v15 = v12[1];
    if (v15 == v7)
    {
      break;
    }

    if (v15 >= *&v8)
    {
      v15 %= *&v8;
    }

    if (v15 != v10)
    {
      goto LABEL_43;
    }

LABEL_20:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_43;
    }
  }

  v16 = *(v12 + 39);
  v17 = v16;
  if (v16 < 0)
  {
    v16 = v12[3];
  }

  if (v16 != v14)
  {
    goto LABEL_20;
  }

  v18 = v17 >= 0 ? (v12 + 2) : v12[2];
  if (memcmp(v18, v2, v14))
  {
    goto LABEL_20;
  }

  return v12;
}

void sub_41AFF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

void sub_41B00C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_41B024(void *a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v5 = v4;
  }

  v6 = sub_AAD8(&v25, a2, v5);
  v7 = a1[1];
  if (!*&v7)
  {
    return 0;
  }

  v8 = v6;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  if (v9.u32[0] > 1uLL)
  {
    v10 = v6;
    if (v6 >= *&v7)
    {
      v10 = v6 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v6;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    v13 = v2[23];
    if (v13 >= 0)
    {
      v14 = v2[23];
    }

    else
    {
      v14 = *(v2 + 1);
    }

    if (v13 < 0)
    {
      v2 = *v2;
    }

    if (v9.u32[0] < 2uLL)
    {
      v15 = *&v7 - 1;
      while (1)
      {
        v20 = v12[1];
        if (v8 == v20)
        {
          v21 = *(v12 + 39);
          v22 = v21;
          if (v21 < 0)
          {
            v21 = v12[3];
          }

          if (v21 == v14)
          {
            v23 = v22 >= 0 ? (v12 + 2) : v12[2];
            if (!memcmp(v23, v2, v14))
            {
              return v12;
            }
          }
        }

        else if ((v20 & v15) != v10)
        {
          return 0;
        }

        v12 = *v12;
        if (!v12)
        {
          return v12;
        }
      }
    }

    do
    {
      v16 = v12[1];
      if (v8 == v16)
      {
        v17 = *(v12 + 39);
        v18 = v17;
        if (v17 < 0)
        {
          v17 = v12[3];
        }

        if (v17 == v14)
        {
          v19 = v18 >= 0 ? (v12 + 2) : v12[2];
          if (!memcmp(v19, v2, v14))
          {
            return v12;
          }
        }
      }

      else
      {
        if (v16 >= *&v7)
        {
          v16 %= *&v7;
        }

        if (v16 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t sub_41B1DC(uint64_t a1, void *a2)
{
  *a1 = a2;
  *(a1 + 8) = sub_3B1AF0(a2);
  *(a1 + 16) = sub_3AF6B4(*a1);
  HIBYTE(v13[2]) = 19;
  strcpy(v13, "TrajectoryAnalytics");
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v4 = sub_3AEC94(a2, v13, &v10);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 40) = 0x7FFFFFFF;
  v15 = 7;
  strcpy(__p, "enabled");
  *(a1 + 24) = sub_5F9D0(v4, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = v10;
  if (v10)
  {
    v6 = v11;
    v7 = v10;
    if (v11 != v10)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = v10;
    }

    v11 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v13[2]) < 0)
  {
    operator delete(v13[0]);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_41B324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a10);
    if ((a18 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a13);
  _Unwind_Resume(a1);
}

uint64_t sub_41B38C(uint64_t a1, uint64_t a2, void *a3)
{
  *a1 = a3;
  *(a1 + 8) = sub_3B1AF0(a3);
  *(a1 + 16) = sub_3AF6B4(*a1);
  HIBYTE(v15[2]) = 19;
  strcpy(v15, "TrajectoryAnalytics");
  __p = 0;
  v13 = 0;
  v14 = 0;
  v6 = sub_3AEC94(a3, v15, &__p);
  sub_41C88C(a1 + 24, v6, a2);
  v7 = __p;
  if (__p)
  {
    v8 = v13;
    v9 = __p;
    if (v13 != __p)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = __p;
    }

    v13 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v15[2]) < 0)
  {
    operator delete(v15[0]);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_41B494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_41B4BC@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(result + 24) == 1)
  {
    v5 = result;
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    result = sub_41CA4C(a3, (a2[1] - *a2) >> 7);
    v6 = *a2;
    v7 = a2[1];
    while (v6 != v7)
    {
      sub_41B5DC(v5, v6, v10);
      v9 = a3[1];
      if (v9 >= a3[2])
      {
        v8 = sub_41CC6C(a3, v10);
      }

      else
      {
        sub_41CBD8(a3, a3[1], v10);
        v8 = v9 + 64;
      }

      a3[1] = v8;
      result = sub_12D8D7C(v10);
      v6 += 128;
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  return result;
}

void sub_41B5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_12D8D7C(&a9);
  sub_41CE00(v9);
  _Unwind_Resume(a1);
}

void sub_41B5DC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a3;
  sub_12D8CC8(a3, 0, 0);
  v6 = sub_4C5154(a2);
  *(v5 + 16) |= 1u;
  *(v5 + 48) = v6;
  v7 = sub_4C4C40(a2);
  *(v5 + 16) |= 4u;
  *(v5 + 56) = v7;
  if (sub_4C4AC8(a2) == 4)
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_4C4AC8(a2);
  }

  v9 = sub_ECA8CC(v8);
  *(v5 + 16) |= 2u;
  *(v5 + 52) = v9;
  v10 = sub_58BBC(a2);
  v95 = *v10;
  v89 = v10[1];
  if (*v10 != v89)
  {
    v94 = 0;
    v11 = 0;
    v93 = a1;
    v90 = v5;
    while (1)
    {
      if (sub_4D3738(v95))
      {
        v12 = sub_3CF22C(v95);
        v13 = sub_5FC64(v95);
        v14 = sub_445EF4(v95);
        if (v13 != v14)
        {
          while ((*(v13 + 4) & 0x80000000) != 0)
          {
            v13 += 56;
            if (v13 == v14)
            {
              v13 = v14;
              break;
            }
          }
        }

        sub_4C35E0(v95);
        v16 = v15;
        sub_4C35EC(v95);
        v18 = v17;
        while (v16 != v17)
        {
          v19 = v16 - 56;
          v20 = *(v16 - 52);
          v16 -= 56;
          if ((v20 & 0x80000000) == 0)
          {
            v18 = v19 + 56;
            break;
          }
        }

        v21 = sub_5FC64(v95);
        v22 = sub_5FC64(v95);
        v23 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v21) >> 3);
        v24 = 0x6DB6DB6DB6DB6DB7 * ((v18 - v22) >> 3);
        v25 = v23 <= v24 ? 0x6DB6DB6DB6DB6DB7 * ((v18 - v22) >> 3) : 0x6DB6DB6DB6DB6DB7 * ((v13 - v21) >> 3);
        v92 = v25;
        if (v23 < v24)
        {
          break;
        }
      }

LABEL_6:
      v95 += 1096;
      if (v95 == v89)
      {
        return;
      }
    }

    v26 = 0;
    v91 = v24 - 1;
    while (1)
    {
      if (*(a1 + 25) == 1 && v11 > *(a1 + 32) && v94 > *(a1 + 40))
      {
        return;
      }

      if (!v26)
      {
        v29 = *(v5 + 40);
        if (v29 && (v30 = *(v5 + 32), v30 < *v29))
        {
          *(v5 + 32) = v30 + 1;
          v26 = *&v29[2 * v30 + 2];
        }

        else
        {
          v31 = sub_12E1F80(*(v5 + 24));
          v26 = sub_19593CC(v5 + 24, v31);
        }
      }

      v32 = sub_5FC64(v95);
      v33 = v32;
      v34 = *(v26 + 32);
      if (v34 && (v35 = *(v26 + 24), v35 < *v34))
      {
        *(v26 + 24) = v35 + 1;
        v36 = *&v34[2 * v35 + 2];
        v37 = v32 + 56 * v23;
        v38 = *v37;
        if ((*v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }
      }

      else
      {
        sub_12E2024(*(v26 + 16));
        v36 = sub_19593CC(v26 + 16, v39);
        v37 = v33 + 56 * v23;
        v38 = *v37;
        if ((*v37 & 0x8000000000000000) != 0)
        {
          goto LABEL_51;
        }
      }

      v40 = *(a1 + 8);
      v98 = 1;
      v99 = v38;
      *&v96[0] = &v98;
      *(&v96[0] + 1) = &v99;
      v41 = *(v40 + 3872) + 1;
      *(v40 + 3872) = v41;
      v42 = *(v40 + 16);
      if (!v42)
      {
        goto LABEL_54;
      }

      if (*(v40 + 2144) == v38)
      {
        ++*(v40 + 3880);
        *(v40 + 2152) = v41;
        v43 = *(v40 + 2160);
        if (!v43)
        {
          goto LABEL_54;
        }
      }

      else if (*(v40 + 2168) == v38)
      {
        ++*(v40 + 3880);
        *(v40 + 2176) = v41;
        v43 = *(v40 + 2184);
        if (!v43)
        {
          goto LABEL_54;
        }
      }

      else if (*(v40 + 2192) == v38)
      {
        ++*(v40 + 3880);
        *(v40 + 2200) = v41;
        v43 = *(v40 + 2208);
        if (!v43)
        {
          goto LABEL_54;
        }
      }

      else if (*(v40 + 2216) == v38)
      {
        ++*(v40 + 3880);
        *(v40 + 2224) = v41;
        v43 = *(v40 + 2232);
        if (!v43)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v86 = *(v40 + 2176);
        v78 = *(v40 + 2152);
        v87 = *(v40 + 2224);
        v88 = *(v40 + 2200);
        v43 = sub_2D52A4(v42, 22, v38, 1);
        if (v78 >= v41)
        {
          v79 = v41;
        }

        else
        {
          v79 = v78;
        }

        v80 = 88;
        if (v78 >= v41)
        {
          v80 = 0;
        }

        if (v86 < v79)
        {
          v79 = v86;
          v80 = 89;
        }

        if (v88 < v79)
        {
          v80 = 90;
          v79 = v88;
        }

        v81 = v87 >= v79;
        v82 = 91;
        if (v81)
        {
          v82 = v80;
        }

        v83 = v40 + 32 + 24 * v82;
        *v83 = v99;
        *(v83 + 8) = *(v40 + 3872);
        *(v83 + 16) = v43;
        if (!v43)
        {
LABEL_54:
          sub_31DB68(v96);
LABEL_55:
          v54 = 0x7FFFFFFFFFFFFFFFLL;
          a1 = v93;
          goto LABEL_56;
        }
      }

      v44 = (v43 + *v43);
      v45 = (v44 - *v44);
      if (*v45 < 5u)
      {
        goto LABEL_55;
      }

      if (!v45[2])
      {
        goto LABEL_55;
      }

      v46 = (v44 + v45[2] + *(v44 + v45[2]));
      if (*v46 <= (HIDWORD(v38) & 0x3FFFFFFFu))
      {
        goto LABEL_55;
      }

      v47 = (&v46[(HIDWORD(v38) & 0x3FFFFFFF) + 1] + v46[(HIDWORD(v38) & 0x3FFFFFFF) + 1]);
      v48 = (v47 - *v47);
      v49 = *v48;
      if (v49 < 0xB)
      {
        goto LABEL_90;
      }

      if (!v48[5])
      {
        goto LABEL_91;
      }

      v50 = *(v40 + 3889);
      if (v50 == 254)
      {
        goto LABEL_91;
      }

      v51 = (v47 + v48[5] + *(v47 + v48[5]));
      v52 = *v51;
      a1 = v93;
      if (v52)
      {
        v53 = (v51 + 1);
        while (v50 != *v53)
        {
          ++v53;
          v54 = 0x7FFFFFFFFFFFFFFFLL;
          --v52;
          a1 = v93;
          if (!v52)
          {
            goto LABEL_56;
          }
        }

LABEL_90:
        if (v49 >= 7)
        {
LABEL_91:
          v84 = v48[3];
          if (v84)
          {
            v85 = *(v47 + v84);
            goto LABEL_94;
          }
        }

        v85 = 0;
LABEL_94:
        a1 = v93;
        if (v38 >> 62)
        {
          v54 = v85;
        }

        else
        {
          v54 = -v85;
        }

        goto LABEL_56;
      }

LABEL_51:
      v54 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_56:
      v55 = *(v36 + 16);
      *(v36 + 40) = v54;
      v56 = *(v37 + 48);
      *(v36 + 16) = v55 | 0x44;
      *(v36 + 60) = v56;
      v57 = *v37;
      v58 = *(v37 + 16);
      v59 = *(v37 + 32);
      v97 = *(v37 + 48);
      v96[1] = v58;
      v96[2] = v59;
      v96[0] = v57;
      sub_41BE08(a1, v95, v96, v36);
      v60 = *(v12[11] + 4 * v23);
      v61 = *(v12[14] + 4 * v23);
      v62 = *(v12[17] + 4 * v23);
      v63 = *(v12[20] + 4 * v23);
      *(v36 + 16) |= 2u;
      v64 = *(v36 + 32);
      if (!v64)
      {
        v65 = *(v36 + 8);
        v66 = (v65 & 0xFFFFFFFFFFFFFFFCLL);
        if (v65)
        {
          v66 = *v66;
        }

        sub_12E1E68(v66);
        *(v36 + 32) = v64;
      }

      v67 = v64[4];
      v64[7] = v62;
      v64[8] = v61;
      v64[4] = v67 | 7;
      v64[6] = v60;
      if (v63 != 0x7FFFFFFF)
      {
        v64[4] = v67 | 0x27;
        v64[11] = v63;
      }

      v68 = *(v37 + 40);
      if (v23 != v91)
      {
        v69 = *(v26 + 56);
        if (v69 && (v70 = *(v26 + 48), v70 < *v69))
        {
          *(v26 + 48) = v70 + 1;
          v71 = *&v69[2 * v70 + 2];
        }

        else
        {
          v72 = sub_12E20A4(*(v26 + 40));
          v71 = sub_19593CC(v26 + 40, v72);
        }

        v73 = *(v12[23] + 4 * v23);
        v74 = *(v12[26] + 4 * v23);
        v75 = *(v12[29] + 4 * v23);
        *(v71 + 16) |= 2u;
        v27 = *(v71 + 32);
        if (!v27)
        {
          v76 = *(v71 + 8);
          v77 = (v76 & 0xFFFFFFFFFFFFFFFCLL);
          if (v76)
          {
            v77 = *v77;
          }

          sub_12E1E68(v77);
          *(v71 + 32) = v27;
        }

        v28 = v27[4];
        v27[7] = v75;
        v27[8] = v74;
        v27[4] = v28 | 7;
        v27[6] = v73;
      }

      v11 += v68;
      v94 += v61;
      ++v23;
      a1 = v93;
      v5 = v90;
      if (v23 == v92)
      {
        goto LABEL_6;
      }
    }
  }
}

int *sub_41BE08(uint64_t a1, uint64_t a2, unint64_t *a3, _DWORD *a4)
{
  result = sub_351010(*(a1 + 8), *a3, (a1 + 48));
  v9 = *(a1 + 56) - *(a1 + 48);
  if (!v9)
  {
    v30 = a3[5];
    a4[4] |= 8u;
    a4[12] = v30;
    return result;
  }

  v32 = a2;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = v9 >> 3;
  do
  {
    v14 = *(*(a1 + 48) + 8 * v12);
    result = sub_2B51D8(*(a1 + 16), v14 & 0xFFFFFFFFFFFFLL);
    v15 = (result - *result);
    if (*v15 >= 9u && (v16 = v15[4]) != 0)
    {
      v17 = *(result + v16);
      if (v12 < a3[1])
      {
        goto LABEL_3;
      }
    }

    else
    {
      v17 = 0;
      if (v12 < a3[1])
      {
LABEL_3:
        v10 += v17;
        goto LABEL_4;
      }
    }

    if (v12 >= a3[2])
    {
      v11 += v17;
      goto LABEL_4;
    }

    v18 = *(sub_45AC50(v32) + 32);
    if (v14 == v18 && WORD2(v14) == WORD2(v18) && BYTE6(v14) == BYTE6(v18))
    {
      result = sub_4D2138(v32);
      v24 = (1000000000 - result) / 1000000000.0 * v17;
      if (v24 >= 0.0)
      {
        if (v24 < 4.50359963e15)
        {
          v25 = (v24 + v24) + 1;
          goto LABEL_35;
        }
      }

      else if (v24 > -4.50359963e15)
      {
        v25 = (v24 + v24) - 1 + (((v24 + v24) - 1) >> 63);
LABEL_35:
        v24 = (v25 >> 1);
      }

      v10 += v24;
      goto LABEL_4;
    }

    result = sub_4D1F60(v32);
    v21 = *(result + 4);
    if (v14 == v21 && WORD2(v14) == WORD2(v21) && BYTE6(v14) == BYTE6(v21))
    {
      result = sub_4D2140(v32);
      v26 = (1000000000 - result) / 1000000000.0 * v17;
      if (v26 >= 0.0)
      {
        if (v26 < 4.50359963e15)
        {
          v27 = (v26 + v26) + 1;
LABEL_39:
          v26 = (v27 >> 1);
        }
      }

      else if (v26 > -4.50359963e15)
      {
        v27 = (v26 + v26) - 1 + (((v26 + v26) - 1) >> 63);
        goto LABEL_39;
      }

      v11 += v26;
    }

LABEL_4:
    ++v12;
  }

  while (v13 != v12);
  if (v10)
  {
    v28 = a4[4] | 0x10;
    a4[13] = v10;
    v29 = a3[5];
    a4[4] = v28 | 8;
    a4[12] = v29;
    if (v11)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v28 = a4[4];
    v31 = a3[5];
    a4[4] = v28 | 8;
    a4[12] = v31;
    if (v11)
    {
LABEL_43:
      a4[4] = v28 | 0x28;
      a4[14] = v11;
    }
  }

  return result;
}

void sub_41C108(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a3;
  sub_12DFC3C(a3, 0, 0);
  v5 = sub_4C4BD8(a2);
  v6 = sub_5FC64(a2);
  v7 = sub_445EF4(a2);
  v8 = sub_4E494C(v6, v7, 0, 6);
  sub_4C35D4(a2, &v70);
  v10 = v70;
  v9 = v71;
  if (v70 == v71)
  {
    v11 = 0;
  }

  else
  {
    v11 = 0;
    do
    {
      v12 = sub_3CF22C(v10);
      v11 += *(v12 + 256) + *(sub_3CF22C(v10) + 260);
      v10 += 274;
    }

    while (v10 != v9);
  }

  v13 = sub_58BBC(a2);
  v14 = *v13;
  v66 = v13[1];
  if (*v13 != v66)
  {
    v15 = v8 - v11;
    v68 = v4;
    while (1)
    {
      v16 = v4[4];
      if (v16 && (v17 = *(v4 + 6), v17 < *v16))
      {
        *(v4 + 6) = v17 + 1;
        v18 = *&v16[2 * v17 + 2];
      }

      else
      {
        v19 = sub_12E2548(v4[2]);
        v18 = sub_19593CC((v4 + 2), v19);
      }

      v20 = sub_4D26A4(v14);
      v21 = sub_4D2130(v14);
      if (v20 == 0x7FFFFFFF)
      {
        v22 = 0;
      }

      else
      {
        v22 = v20;
      }

      v23 = *v21;
      if (*v21 == 0x7FFFFFFF)
      {
        v23 = 0;
      }

      v24 = v23 + v22;
      v25 = *(v4 + 10);
      if (v25 == *(v4 + 11))
      {
        v26 = v25 + 1;
        sub_1958E5C(v4 + 10, v25 + 1);
        *(v4[6] + 4 * v25) = v24;
      }

      else
      {
        *(v4[6] + 4 * v25) = v24;
        v26 = v25 + 1;
      }

      *(v4 + 10) = v26;
      v69 = sub_3CF22C(v14);
      v27 = sub_4D3738(v14);
      v15 -= v24;
      if (v27)
      {
        break;
      }

LABEL_8:
      v14 += 1096;
      if (v14 == v66)
      {
        return;
      }
    }

    v28 = 0;
    while (1)
    {
      v30 = v14;
      v31 = (sub_5FC64(v14) + 56 * v28);
      v32 = *v31;
      if ((*v31 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      v33 = *(a1 + 8);
      v73 = *v31;
      v72 = 1;
      v70 = &v72;
      v71 = &v73;
      v34 = *(v33 + 3872) + 1;
      *(v33 + 3872) = v34;
      v35 = *(v33 + 16);
      if (!v35)
      {
        goto LABEL_75;
      }

      if (*(v33 + 2144) == v32)
      {
        ++*(v33 + 3880);
        *(v33 + 2152) = v34;
        v36 = *(v33 + 2160);
        if (!v36)
        {
          goto LABEL_75;
        }
      }

      else if (*(v33 + 2168) == v32)
      {
        ++*(v33 + 3880);
        *(v33 + 2176) = v34;
        v36 = *(v33 + 2184);
        if (!v36)
        {
          goto LABEL_75;
        }
      }

      else if (*(v33 + 2192) == v32)
      {
        ++*(v33 + 3880);
        *(v33 + 2200) = v34;
        v36 = *(v33 + 2208);
        if (!v36)
        {
          goto LABEL_75;
        }
      }

      else if (*(v33 + 2216) == v32)
      {
        ++*(v33 + 3880);
        *(v33 + 2224) = v34;
        v36 = *(v33 + 2232);
        if (!v36)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v62 = *(v33 + 2152);
        v63 = *(v33 + 2176);
        v64 = *(v33 + 2224);
        v65 = *(v33 + 2200);
        v36 = sub_2D52A4(v35, 22, v32, 1);
        v37 = v62;
        if (v62 >= v34)
        {
          v37 = v34;
        }

        v38 = 88;
        if (v62 >= v34)
        {
          v38 = 0;
        }

        if (v63 < v37)
        {
          v37 = v63;
          v38 = 89;
        }

        if (v65 < v37)
        {
          v38 = 90;
          v37 = v65;
        }

        v39 = v64 >= v37;
        v40 = 91;
        if (v39)
        {
          v40 = v38;
        }

        v41 = v33 + 32 + 24 * v40;
        *v41 = v73;
        *(v41 + 8) = *(v33 + 3872);
        *(v41 + 16) = v36;
        if (!v36)
        {
          sub_31DB68(&v70);
LABEL_75:
          v52 = 0x7FFFFFFFFFFFFFFFLL;
          v55 = *(v18 + 64);
          if (v55 == *(v18 + 68))
          {
            goto LABEL_71;
          }

          goto LABEL_76;
        }
      }

      v42 = (v36 + *v36);
      v43 = (v42 - *v42);
      if (*v43 < 5u)
      {
        goto LABEL_75;
      }

      if (!v43[2])
      {
        goto LABEL_75;
      }

      v44 = (v42 + v43[2] + *(v42 + v43[2]));
      if (*v44 <= (HIDWORD(v32) & 0x3FFFFFFFu))
      {
        goto LABEL_75;
      }

      v45 = (&v44[(HIDWORD(v32) & 0x3FFFFFFF) + 1] + v44[(HIDWORD(v32) & 0x3FFFFFFF) + 1]);
      v46 = (v45 - *v45);
      v47 = *v46;
      if (v47 < 0xB)
      {
        goto LABEL_63;
      }

      if (v46[5])
      {
        v48 = *(v33 + 3889);
        if (v48 != 254)
        {
          break;
        }
      }

LABEL_64:
      v53 = v46[3];
      if (v53)
      {
        v54 = *(v45 + v53);
        goto LABEL_67;
      }

LABEL_66:
      v54 = 0;
LABEL_67:
      if (v32 >> 62)
      {
        v52 = v54;
      }

      else
      {
        v52 = -v54;
      }

LABEL_70:
      v55 = *(v18 + 64);
      if (v55 == *(v18 + 68))
      {
LABEL_71:
        sub_1959094((v18 + 64), v55 + 1);
        *(*(v18 + 72) + 8 * v55) = v52;
        *(v18 + 64) = v55 + 1;
        v56 = *(v18 + 16);
        if (v56 != *(v18 + 20))
        {
          goto LABEL_72;
        }

        goto LABEL_77;
      }

LABEL_76:
      *(*(v18 + 72) + 8 * v55) = v52;
      *(v18 + 64) = v55 + 1;
      v56 = *(v18 + 16);
      if (v56 != *(v18 + 20))
      {
LABEL_72:
        *(*(v18 + 24) + 4 * v56) = v5;
        *(v18 + 16) = v56 + 1;
        v57 = *(v18 + 40);
        if (v57 != *(v18 + 44))
        {
          goto LABEL_78;
        }

        goto LABEL_73;
      }

LABEL_77:
      sub_1958E5C((v18 + 16), v56 + 1);
      *(*(v18 + 24) + 4 * v56) = v5;
      *(v18 + 16) = v56 + 1;
      v57 = *(v18 + 40);
      if (v57 != *(v18 + 44))
      {
LABEL_78:
        *(*(v18 + 48) + 4 * v57) = v15;
        v58 = v57 + 1;
        goto LABEL_79;
      }

LABEL_73:
      v58 = v57 + 1;
      sub_1958E5C((v18 + 40), v57 + 1);
      *(*(v18 + 48) + 4 * v57) = v15;
LABEL_79:
      *(v18 + 40) = v58;
      v59 = v31[5];
      v14 = v30;
      v5 -= v59;
      v15 -= *(*(v69 + 88) + 4 * v28);
      if (v28 == sub_4D3738(v30) - 1 || !*(*(v69 + 184) + 4 * v28))
      {
        goto LABEL_25;
      }

      v60 = *(v18 + 16);
      if (v60 == *(v18 + 20))
      {
        sub_1958E5C((v18 + 16), v60 + 1);
        *(*(v18 + 24) + 4 * v60) = v5;
        *(v18 + 16) = v60 + 1;
        v61 = *(v18 + 40);
        if (v61 == *(v18 + 44))
        {
          goto LABEL_85;
        }
      }

      else
      {
        *(*(v18 + 24) + 4 * v60) = v5;
        *(v18 + 16) = v60 + 1;
        v61 = *(v18 + 40);
        if (v61 == *(v18 + 44))
        {
LABEL_85:
          v29 = v61 + 1;
          sub_1958E5C((v18 + 40), v61 + 1);
          *(*(v18 + 48) + 4 * v61) = v15;
          goto LABEL_24;
        }
      }

      *(*(v18 + 48) + 4 * v61) = v15;
      v29 = v61 + 1;
LABEL_24:
      *(v18 + 40) = v29;
      v15 -= *(*(v69 + 184) + 4 * v28);
LABEL_25:
      ++v28;
      v4 = v68;
      if (v28 == v27)
      {
        goto LABEL_8;
      }
    }

    v49 = (v45 + v46[5] + *(v45 + v46[5]));
    v50 = *v49;
    if (!v50)
    {
      goto LABEL_75;
    }

    v51 = (v49 + 1);
    while (v48 != *v51)
    {
      ++v51;
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      if (!--v50)
      {
        goto LABEL_70;
      }
    }

LABEL_63:
    if (v47 < 7)
    {
      goto LABEL_66;
    }

    goto LABEL_64;
  }
}

uint64_t sub_41C88C(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 8) = 0x7FFFFFFFFFFFFFFFLL;
  v6 = (a1 + 8);
  *a1 = 0;
  *(a1 + 16) = 0x7FFFFFFF;
  v7 = (a1 + 16);
  v13 = 7;
  strcpy(__p, "enabled");
  *a1 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 14;
  strcpy(__p, "configurations");
  v8 = sub_5F5AC(a2, __p);
  v9 = sub_5F5AC(v8, a3);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 16;
  strcpy(__p, "maximum_length_m");
  sub_63EC4(v9, __p, v6);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  v13 = 14;
  strcpy(__p, "maximum_time_s");
  sub_65118(v9, __p, v7);
  if (v13 < 0)
  {
    operator delete(*__p);
    if (*v7)
    {
      goto LABEL_9;
    }

LABEL_11:
    v10 = *v6 != 0;
    goto LABEL_12;
  }

  if (!*v7)
  {
    goto LABEL_11;
  }

LABEL_9:
  v10 = 1;
LABEL_12:
  *(a1 + 1) = v10;
  return a1;
}

void sub_41CA24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_41CA4C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

uint64_t sub_41CB84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_12D8D7C(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_41CBD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_12D8CC8(a2, 0, 0);
  if (v4 != a3)
  {
    v6 = *(v4 + 8);
    if ((v6 & 2) != 0)
    {
      v6 = 0;
    }

    else if (v6)
    {
      v6 = *(v6 & 0xFFFFFFFFFFFFFFFCLL);
    }

    v7 = *(a3 + 8);
    if ((v7 & 2) != 0)
    {
      v7 = 0;
    }

    else if (v7)
    {
      v7 = *(v7 & 0xFFFFFFFFFFFFFFFCLL);
    }

    if (v6 == v7)
    {
      *&result = sub_12D952C(v4, a3).n128_u64[0];
    }

    else
    {
      sub_12D94D8(v4, a3);
    }
  }

  return result;
}

uint64_t sub_41CC6C(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 6;
  v3 = v2 + 1;
  if ((v2 + 1) >> 58)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 5 > v3)
  {
    v3 = v5 >> 5;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFC0)
  {
    v6 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 58))
    {
      operator new();
    }

    sub_1808();
  }

  v16 = v2 << 6;
  sub_41CBD8(a1, v2 << 6, a2);
  v7 = (v2 << 6) + 64;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = v16 + v10;
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v16 + v10;
    do
    {
      sub_41CBD8(a1, v14, v13);
      v13 += 64;
      v14 += 64;
      v12 -= 64;
    }

    while (v13 != v9);
    do
    {
      sub_12D8D7C(v8);
      v8 += 64;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v11;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_41CDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_41CB84(va);
  _Unwind_Resume(a1);
}

void sub_41CDD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = v2 - 64;
    do
    {
      v5 = sub_12D8D7C(v5) - 64;
      v3 += 64;
    }

    while (v3);
  }

  sub_41CB84(va);
  _Unwind_Resume(a1);
}

void **sub_41CE00(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_12D8D7C(v3 - 64);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_41CE5C()
{
  v1 = 7;
  strcpy(v0, "UNKNOWN");
  v2 = 0;
  v4 = 14;
  strcpy(v3, "ROUTES_THROUGH");
  v5 = 1;
  v7 = 9;
  strcpy(__p, "ROUTES_TO");
  v8 = 3;
  v10 = 11;
  strcpy(v9, "ROUTES_FROM");
  v11 = 2;
  xmmword_278F648 = 0u;
  unk_278F658 = 0u;
  dword_278F668 = 1065353216;
  sub_3A9A34(&xmmword_278F648, v0);
  sub_3A9A34(&xmmword_278F648, v3);
  sub_3A9A34(&xmmword_278F648, __p);
  sub_3A9A34(&xmmword_278F648, v9);
  if (v10 < 0)
  {
    operator delete(v9[0]);
    if ((v7 & 0x80000000) == 0)
    {
LABEL_3:
      if ((v4 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if ((v4 & 0x80000000) == 0)
  {
LABEL_4:
    if ((v1 & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(v0[0]);
    return;
  }

LABEL_8:
  operator delete(v3[0]);
  if (v1 < 0)
  {
    goto LABEL_9;
  }
}

void sub_41D02C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  sub_23D9C(&xmmword_278F648);
  if (a36 < 0)
  {
    operator delete(__p);
    if ((a29 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a22 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a29 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a24);
  if ((a22 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a17);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void sub_41D218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_1A104(&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void sub_41D298(int *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*a3 != a3[1])
  {
    v6 = a2;
    v7 = (a4 + 8);
    v8 = 0x8E38E38E38E38E39 * ((*(a4 + 16) - *(a4 + 8)) >> 3);
    if (v8 < sub_4C35B0(a2))
    {
      v9 = sub_4C35B0(v6);
      v10 = *(a4 + 8);
      v11 = *(a4 + 16);
      v12 = 0x8E38E38E38E38E39 * ((v11 - v10) >> 3);
      if (v9 <= v12)
      {
        if (v9 < v12)
        {
          v13 = v10 + 72 * v9;
          while (v11 != v13)
          {
            v11 -= 72;
            sub_3E4690(v11);
          }

          *(a4 + 16) = v13;
        }
      }

      else
      {
        sub_3E4818(v7, v9 - v12);
      }
    }

    v15 = *a3;
    v14 = a3[1];
    if (*a3 != v14)
    {
      v16 = &off_2772380;
      v43 = v14;
      do
      {
        if (*(v15 + 148) == 1)
        {
          v19 = *(v15 + 112);
          if (!v19)
          {
            v19 = v16;
          }

          v20 = *(v19 + 8);
          if (*a1 < 0)
          {
            v21 = -5;
          }

          else
          {
            v21 = 5;
          }

          if (v20 > *a1 / 10 + (((103 * (v21 + *a1 % 10)) >> 15) & 1) + ((103 * (v21 + *a1 % 10)) >> 10))
          {
            return;
          }

          v22 = sub_4C49C0(v6, *(v15 + 8));
          v23 = sub_4D1F50(v22, *(v15 + 24) - 1);
          v24 = (*v23 - **v23);
          if (*v24 >= 0x1Du && (v25 = v24[14]) != 0)
          {
            v26 = *(*v23 + v25);
          }

          else
          {
            v26 = 0;
          }

          if (*(v23 + 38))
          {
            v27 = -v26;
          }

          else
          {
            v27 = v26;
          }

          v28 = &(*v7)[72 * *(v15 + 8)];
          v29 = *(v15 + 136);
          v30 = *(v28 + 4);
          v31 = *(v28 + 5);
          if (v30 < v31)
          {
            v17 = *(v15 + 40);
            *v30 = *v15;
            *(v30 + 8) = v29;
            *(v30 + 16) = v27;
            *(v30 + 24) = v17;
            v18 = v30 + 32;
          }

          else
          {
            v32 = v7;
            v33 = v6;
            v34 = v16;
            v35 = *(v28 + 3);
            v36 = v30 - v35;
            v37 = (v30 - v35) >> 5;
            v38 = v37 + 1;
            if ((v37 + 1) >> 59)
            {
              sub_1794();
            }

            v39 = v31 - v35;
            if (v39 >> 4 > v38)
            {
              v38 = v39 >> 4;
            }

            if (v39 >= 0x7FFFFFFFFFFFFFE0)
            {
              v40 = 0x7FFFFFFFFFFFFFFLL;
            }

            else
            {
              v40 = v38;
            }

            if (v40)
            {
              if (!(v40 >> 59))
              {
                operator new();
              }

              sub_1808();
            }

            v41 = *(v15 + 40);
            v42 = 32 * v37;
            *v42 = *v15;
            *(v42 + 8) = v29;
            *(v42 + 16) = v27;
            *(v42 + 24) = v41;
            v18 = 32 * v37 + 32;
            memcpy(0, v35, v36);
            *(v28 + 3) = 0;
            *(v28 + 4) = v18;
            *(v28 + 5) = 0;
            if (v35)
            {
              operator delete(v35);
            }

            v16 = v34;
            v6 = v33;
            v7 = v32;
            v14 = v43;
          }

          *(v28 + 4) = v18;
        }

        v15 += 176;
      }

      while (v15 != v14);
    }
  }
}

void sub_41D598(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5F5AC(a1, "cycling");
  v5 = sub_5F5AC(a1, "any_mode");
  v6 = sub_5ADDC(a2, v5);
  sub_5FC7C(v6, v4);
}

void sub_41D60C(void *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a2 > 3)
  {
    v7 = &unk_2295EE0;
  }

  else
  {
    v7 = (&off_2669E58)[a2];
  }

  v8 = sub_5F5AC(a1, v7);
  v9 = sub_5F5AC(a1, "any_mode");
  v10 = sub_5ADDC(a4, v9);
  sub_5FC7C(v10, v8);
  if (a3)
  {
    sub_443B88(a3, v18);
    sub_5F328(v16);
    v11 = sub_5FAAC(a1, v18, v16);
    sub_5FC7C(a4, v11);
    v12 = __p;
    if (__p)
    {
      do
      {
        v13 = *v12;
        v14 = *(v12 + 12);
        if (v14 != -1)
        {
          (off_2669E10[v14])(&v20, v12 + 5);
        }

        *(v12 + 12) = -1;
        if (*(v12 + 39) < 0)
        {
          operator delete(v12[2]);
        }

        operator delete(v12);
        v12 = v13;
      }

      while (v13);
    }

    v15 = v16[0];
    v16[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    if (v19 < 0)
    {
      operator delete(v18[0]);
    }
  }
}

void sub_41D75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_5C010(v20);
  _Unwind_Resume(a1);
}

void sub_41D7AC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5F5AC(a1, "driving");
  v5 = sub_5F5AC(a1, "any_mode");
  v6 = sub_5ADDC(a2, v5);
  sub_5FC7C(v6, v4);
}

void sub_41D820(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_5F5AC(a1, "walking");
  v5 = sub_5F5AC(a1, "any_mode");
  v6 = sub_5ADDC(a2, v5);
  sub_5FC7C(v6, v4);
}

void sub_41DA9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (!v15)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v15);
  _Unwind_Resume(exception_object);
}

uint64_t sub_41DAF8(int **a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, char a6)
{
  v109 = 0;
  v110 = 640;
  v6 = *a1;
  if (*(a1 + 8))
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    if (!sub_7E7E4(3u))
    {
      return v110;
    }

    sub_19594F8(&v98);
    sub_4A5C(&v98, "The from_segment is invalid. Returning early without valid crossing information.", 80);
    if ((v108 & 0x10) != 0)
    {
      v31 = v107;
      if (v107 < v104)
      {
        v107 = v104;
        v31 = v104;
      }

      v32 = v103;
      v8 = v31 - v103;
      if ((v31 - v103) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if ((v108 & 8) == 0)
      {
        v8 = 0;
        HIBYTE(v88) = 0;
LABEL_82:
        *(__dst + v8) = 0;
        sub_7E854(__dst, 3u);
        if (SHIBYTE(v88) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v106 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v100);
        std::ostream::~ostream();
        std::ios::~ios();
        return v110;
      }

      v32 = v101[0];
      v8 = v102 - v101[0];
      if (v102 - v101[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_65:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v88) = v8;
    if (!v8)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v9 = *a2;
  if (*(a2 + 32))
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (!sub_7E7E4(3u))
    {
      return v110;
    }

    sub_19594F8(&v98);
    sub_4A5C(&v98, "The to_segment is invalid. Returning early without valid crossing information.", 78);
    if ((v108 & 0x10) != 0)
    {
      v36 = v107;
      if (v107 < v104)
      {
        v107 = v104;
        v36 = v104;
      }

      v32 = v103;
      v8 = v36 - v103;
      if ((v36 - v103) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_89;
      }
    }

    else
    {
      if ((v108 & 8) == 0)
      {
        v8 = 0;
        HIBYTE(v88) = 0;
        goto LABEL_82;
      }

      v32 = v101[0];
      v8 = v102 - v101[0];
      if (v102 - v101[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_89:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v88) = v8;
    if (!v8)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v11 = a1[4];
  v97 = a5 == 1;
  if (a5 == 1)
  {
    v12 = *(a2 + 32);
    v13 = v12 & 0xFFFFFFFFFFFFLL | (((v12 & 0xFF000000000000) == 0) << 48);
    v14 = v11;
    v15 = (v6 - *v6);
    v16 = *v15;
    if (v16 < 0x1B)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL | (((v11 & 0xFF000000000000) == 0) << 48);
    v12 = *(a2 + 32);
    v13 = v12;
    v15 = (v6 - *v6);
    v16 = *v15;
    if (v16 < 0x1B)
    {
      goto LABEL_27;
    }
  }

  if (v15[13])
  {
    v17 = *(v6 + v15[13]);
    v96 = v17;
    v18 = (v9 - *v9);
    v19 = *v18;
    if (v19 >= 0x1B)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

LABEL_27:
  v17 = 0;
  v96 = 0;
  v18 = (v9 - *v9);
  v19 = *v18;
  if (v19 >= 0x1B)
  {
LABEL_28:
    v23 = v18[13];
    if (v18[13])
    {
      LODWORD(v23) = *(v9 + v23);
    }

    if (v23 < v17)
    {
      LOBYTE(v17) = v23;
    }

    v20 = (v17 & 0xF) << 6;
    LOWORD(v110) = (v17 & 0xF) << 6;
    v21 = *a3;
    if (a6)
    {
      goto LABEL_33;
    }

    goto LABEL_26;
  }

LABEL_25:
  v20 = 0;
  LOWORD(v110) = 0;
  v21 = *a3;
  if (a6)
  {
LABEL_33:
    v22 = a3[1];
    if (v21 != v22)
    {
      v24 = v21;
      do
      {
        v26 = (*v24 - **v24);
        if (*v26 >= 0x1Bu && (v27 = v26[13]) != 0)
        {
          v25 = *(*v24 + v27);
        }

        else
        {
          v25 = 0;
        }

        if (v25 >= ((v20 >> 6) & 0xF))
        {
          v25 = (v20 >> 6) & 0xF;
        }

        v20 = v20 & 0xFFFFFC3F | (v25 << 6);
        LOWORD(v110) = v20;
        v24 += 5;
      }

      while (v24 != v22);
    }

    goto LABEL_42;
  }

LABEL_26:
  v22 = a3[1];
LABEL_42:
  if (v21 == v22)
  {
    goto LABEL_60;
  }

  v28 = v14 & 0xFFFFFFFFFFFFFFLL;
  v29 = v13 & 0xFFFFFFFFFFFFFFLL;
  v30 = v21;
  while ((*(v30 + 32) & 0xFFFFFFFFFFFFFFLL) != v28)
  {
    v30 += 40;
    if (v30 == v22)
    {
      goto LABEL_60;
    }
  }

  v95 = v30;
  if (v30 == v22)
  {
LABEL_60:
    if (!sub_7E7E4(3u))
    {
      return v110;
    }

    sub_19594F8(&v98);
    v35 = sub_4A5C(&v98, "The from_segment (", 18);
    std::ostream::operator<<();
    sub_4A5C(v35, ") could not be found in the sorted junction segments.", 53);
    if ((v108 & 0x10) != 0)
    {
      v37 = v107;
      if (v107 < v104)
      {
        v107 = v104;
        v37 = v104;
      }

      v32 = v103;
      v8 = v37 - v103;
      if ((v37 - v103) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_152;
      }
    }

    else
    {
      if ((v108 & 8) == 0)
      {
        v8 = 0;
        HIBYTE(v88) = 0;
        goto LABEL_82;
      }

      v32 = v101[0];
      v8 = v102 - v101[0];
      if (v102 - v101[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_152:
        sub_3244();
      }
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v88) = v8;
    if (!v8)
    {
      goto LABEL_82;
    }

LABEL_81:
    memmove(__dst, v32, v8);
    goto LABEL_82;
  }

  v33 = v21;
  while ((*(v33 + 32) & 0xFFFFFFFFFFFFFFLL) != v29)
  {
    v33 += 40;
    if (v33 == v22)
    {
      goto LABEL_92;
    }
  }

  v94 = v33;
  if (v33 == v22)
  {
LABEL_92:
    if (!sub_7E7E4(3u))
    {
      return v110;
    }

    sub_19594F8(&v98);
    v41 = sub_4A5C(&v98, "The to_segment (", 16);
    std::ostream::operator<<();
    sub_4A5C(v41, ") could not be found in the sorted junction segments.", 53);
    if ((v108 & 0x10) != 0)
    {
      v60 = v107;
      if (v107 < v104)
      {
        v107 = v104;
        v60 = v104;
      }

      v61 = &v103;
    }

    else
    {
      if ((v108 & 8) == 0)
      {
        v8 = 0;
        HIBYTE(v88) = 0;
        goto LABEL_82;
      }

      v61 = v101;
      v60 = v102;
    }

    v32 = *v61;
    v8 = v60 - *v61;
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v88) = v60 - *v61;
    if (!v8)
    {
      goto LABEL_82;
    }

    goto LABEL_81;
  }

  v39 = v20 | 0x800;
  LOWORD(v110) = v20 | 0x800;
  v40 = (v21 + 8);
  while (1)
  {
    v42 = v40 - 1;
    v43 = *(v40 - 1);
    v44 = *(v40 + 30);
    v45 = (v43 - *v43);
    v46 = *v45;
    if (a5 != 1)
    {
      break;
    }

    if (*(v40 + 30))
    {
      if (v46 >= 0x4D)
      {
        v47 = v45[38];
        if (!v45[38])
        {
          goto LABEL_115;
        }

LABEL_110:
        v48 = 8;
        goto LABEL_111;
      }

LABEL_114:
      if (v46 < 0x1B)
      {
        goto LABEL_122;
      }

      goto LABEL_115;
    }

    if (v46 < 0x4D)
    {
      goto LABEL_113;
    }

    v47 = v45[38];
    if (v45[38])
    {
      goto LABEL_107;
    }

LABEL_121:
    v44 = 0;
    v49 = v45[13];
    if (v45[13])
    {
LABEL_116:
      if (*(v43 + v49) > 5u || (v39 & 0x800) == 0)
      {
        goto LABEL_95;
      }

      goto LABEL_123;
    }

LABEL_122:
    if ((v39 & 0x800) == 0)
    {
      goto LABEL_95;
    }

LABEL_123:
    if (a5 == 1)
    {
      v51 = v46 >= 0x9B;
      if (!v44)
      {
        goto LABEL_130;
      }
    }

    else
    {
      v51 = v46 >= 0x9B;
      if (v44)
      {
LABEL_130:
        if (!v51)
        {
          goto LABEL_95;
        }

        v52 = v45[77];
        if (!v45[77])
        {
          goto LABEL_95;
        }

        v53 = 1;
        goto LABEL_134;
      }
    }

    if (!v51)
    {
      goto LABEL_95;
    }

    v52 = v45[77];
    if (!v45[77])
    {
      goto LABEL_95;
    }

    v53 = 2;
LABEL_134:
    v54 = *(v43 + v52);
    if ((v54 & v53) == 0)
    {
      goto LABEL_95;
    }

    v55 = *v40;
    if (*v40 && (v56 = (v55 - *v55), *v56 >= 0x11u) && (v57 = v56[8]) != 0)
    {
      if ((*(v55 + v57) & 4) != 0 || (v54 & 0x4010000) != 0)
      {
        goto LABEL_95;
      }
    }

    else if ((v54 & 0x4010000) != 0)
    {
      goto LABEL_95;
    }

    v58 = v45[38];
    if (a5 == 1)
    {
      if (!v58)
      {
        goto LABEL_150;
      }

      if (v44)
      {
        v59 = 2;
      }

      else
      {
        v59 = 1;
      }
    }

    else
    {
      if (!v58)
      {
        goto LABEL_150;
      }

      if (v44)
      {
        v59 = 1;
      }

      else
      {
        v59 = 2;
      }
    }

    if ((*(v43 + v58) & v59) == 0)
    {
LABEL_150:
      v39 &= ~0x800u;
      LOWORD(v110) = v39;
    }

LABEL_95:
    v40 += 5;
    if (v42 + 5 == v22)
    {
      goto LABEL_166;
    }
  }

  if (!*(v40 + 30))
  {
    if (v46 < 0x4D)
    {
LABEL_113:
      v44 = 0;
      goto LABEL_114;
    }

    v47 = v45[38];
    if (v45[38])
    {
      goto LABEL_110;
    }

    goto LABEL_121;
  }

  if (v46 < 0x4D)
  {
    goto LABEL_114;
  }

  v47 = v45[38];
  if (!v45[38])
  {
LABEL_115:
    v49 = v45[13];
    if (v45[13])
    {
      goto LABEL_116;
    }

    goto LABEL_122;
  }

LABEL_107:
  v48 = 4;
LABEL_111:
  if ((*(v43 + v47) & v48) == 0)
  {
    goto LABEL_115;
  }

  v39 |= 0x800u;
LABEL_166:
  v62 = v39 | 0x7000;
  LOWORD(v110) = v39 | 0x7000;
  v63 = a4;
  if ((v11 & 0xFF000000000000) != 0)
  {
    if (v16 >= 0x9B)
    {
      v65 = v15[77];
      if (v15[77])
      {
        v66 = 2;
        goto LABEL_173;
      }
    }
  }

  else if (v16 >= 0x9B)
  {
    v65 = v15[77];
    if (v15[77])
    {
      v66 = 1;
LABEL_173:
      v67 = *(v6 + v65);
      if ((v67 & v66) != 0)
      {
        if ((v12 & 0xFF000000000000) != 0)
        {
          if (v19 < 0x9B)
          {
            goto LABEL_196;
          }

          v68 = v18[77];
          if (!v18[77])
          {
            goto LABEL_196;
          }

          v69 = 2;
        }

        else
        {
          if (v19 < 0x9B)
          {
            goto LABEL_196;
          }

          v68 = v18[77];
          if (!v18[77])
          {
            goto LABEL_196;
          }

          v69 = 1;
        }

        if ((*(v9 + v68) & v69) != 0)
        {
          v93 = (v67 & 0x8000) != 0;
          if (v33 >= v30)
          {
            v70 = v30;
          }

          else
          {
            v70 = v33;
          }

          if (v30 >= v33)
          {
            v71 = v30;
          }

          else
          {
            v71 = v33;
          }

          v91 = v71;
          v92 = v70;
          __dst[0] = &v95;
          __dst[1] = &v94;
          v88 = &v93;
          v89 = &v92;
          v90 = &v91;
          v72 = a1;
          v73 = sub_41F048(a1) || sub_41F0AC(v72);
          v86 = v73;
          v74 = (*v72 - **v72);
          if (*v74 >= 0x1Fu && (v75 = v74[15]) != 0)
          {
            v76 = *(*v72 + v75);
          }

          else
          {
            v76 = -1;
          }

          v85 = v76;
          v98 = a2;
          v99 = &v97;
          v100.__locale_ = __dst;
          v101[0] = &v85;
          v101[1] = &v86;
          v102 = &v96;
          v103 = &v110;
          v104 = &v109;
          sub_41E824(v72, a2, a3, &v98);
          a1 = v72;
          v62 = v110;
          a4 = v63;
        }
      }
    }
  }

LABEL_196:
  if ((v62 & 0x3F) == 0)
  {
    LOWORD(v110) = v62 & 0xBFC0;
  }

  if (*(a4 + 8) == 1 && (v77 = a1, v78 = sub_2BC10C(*a4, a1[4] & 0xFFFFFFFFFFFFFFLL, 0), a4 = v63, v79 = v78, a1 = v77, (v80 & 1) != 0))
  {
    v81 = v79;
  }

  else
  {
    v81 = sub_30F8F8(a4, a1);
    a4 = v63;
  }

  if ((v81 - 1) <= 1)
  {
    if (*(a4 + 8) != 1 || (v82 = sub_2BC10C(*a4, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL, 0), a4 = v63, (v83 & 1) == 0))
    {
      v82 = sub_30F8F8(a4, a2);
      a4 = v63;
    }

    if (v82 - 1 <= 1)
    {
      if (sub_41EF4C(*a3, a3[1], a4, v95, v94))
      {
        if (sub_41EF4C(*a3, a3[1], v63, v94, v95))
        {
          v84 = 1024;
        }

        else
        {
          v84 = 0;
        }
      }

      else
      {
        v84 = 0;
      }

      LOWORD(v110) = v110 & 0xFBFF | v84;
    }
  }

  return v110;
}

void sub_41E754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (a16 < 0)
  {
    operator delete(__p);
    sub_1959728(&a25);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a25);
  _Unwind_Resume(a1);
}

BOOL sub_41E824(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  result = sub_32041C(a1, a2, a3, 0);
  v9 = *a3;
  v10 = a3[1];
  if (*a3 != v10)
  {
    v11 = *(a1 + 36);
    v12 = *(a1 + 32);
    v13 = *(a2 + 36);
    v14 = *(a2 + 32);
    while (1)
    {
      v17 = *(v9 + 18);
      v18 = *(v9 + 8);
      v19 = v18 == v14 && v17 == v13;
      v20 = v19;
      v21 = *v9;
      v22 = *(v9 + 38);
      v23 = (*v9 - **v9);
      v24 = *v23;
      if (!v19)
      {
        break;
      }

      if (!*(v9 + 38))
      {
        if (v24 < 0x9B)
        {
          goto LABEL_39;
        }

        v25 = v23[77];
        if (!v23[77])
        {
          v22 = 0;
          goto LABEL_40;
        }

        v25 = *(v21 + v25);
        if ((v25 & 1) == 0)
        {
LABEL_39:
          v22 = 0;
          LODWORD(v25) = 0;
          goto LABEL_40;
        }

        v26 = 2;
LABEL_33:
        LODWORD(v25) = (v25 & v26) != 0;
        goto LABEL_40;
      }

      if (v24 < 0x9B)
      {
        goto LABEL_27;
      }

      v25 = v23[77];
      if (v23[77])
      {
        v25 = *(v21 + v25);
        v26 = 1;
        if ((v25 & 2) != 0)
        {
          goto LABEL_33;
        }

LABEL_27:
        LODWORD(v25) = 0;
      }

LABEL_28:
      v22 = 1;
LABEL_40:
      if (!v25)
      {
        goto LABEL_8;
      }

      v28 = v17 == v11 && v18 == v12;
      if (v28 || result && v20)
      {
        goto LABEL_8;
      }

      v30 = v18 == *(*a4 + 32) && v17 == *(*a4 + 36);
      v31 = *v23;
      if (**(a4 + 8) == 1)
      {
        v32 = v31 >= 0x9B;
        if (v22)
        {
          if (v31 >= 0x9B)
          {
            v33 = v23[77];
            if (v23[77])
            {
              goto LABEL_64;
            }
          }

          goto LABEL_68;
        }

LABEL_58:
        if (v32)
        {
          v33 = v23[77];
          if (v23[77])
          {
            v34 = 1;
            goto LABEL_65;
          }
        }

        goto LABEL_68;
      }

      v32 = v31 >= 0x9B;
      if (v22)
      {
        goto LABEL_58;
      }

      if (v31 >= 0x9B)
      {
        v33 = v23[77];
        if (v23[77])
        {
LABEL_64:
          v34 = 2;
LABEL_65:
          v35 = (*(v21 + v33) & v34) != 0;
          v36 = *(a4 + 16);
          v37 = **v36;
          v38 = **(v36 + 8);
          v39 = v37 >= v38;
          if (v37 == v38)
          {
            goto LABEL_66;
          }

          goto LABEL_69;
        }
      }

LABEL_68:
      v35 = 0;
      v36 = *(a4 + 16);
      v37 = **v36;
      v41 = **(v36 + 8);
      v39 = v37 >= v41;
      if (v37 == v41)
      {
LABEL_66:
        v40 = v9 != v37;
        if (v31 < 0x1B)
        {
          goto LABEL_89;
        }

        goto LABEL_82;
      }

LABEL_69:
      v42 = !v39;
      if (**(v36 + 16) == v42)
      {
        if (**(v36 + 32) >= v9)
        {
          v40 = **(v36 + 24) > v9;
          if (v31 < 0x1B)
          {
            goto LABEL_89;
          }
        }

        else
        {
          v40 = 1;
          if (v31 < 0x1B)
          {
            goto LABEL_89;
          }
        }
      }

      else if (**(v36 + 24) >= v9)
      {
        v40 = 0;
        if (v31 < 0x1B)
        {
          goto LABEL_89;
        }
      }

      else
      {
        v40 = **(v36 + 32) > v9;
        if (v31 < 0x1B)
        {
          goto LABEL_89;
        }
      }

LABEL_82:
      if (v23[13])
      {
        v43 = *(v21 + v23[13]);
        v44 = v31 >= 0x4D;
        if (!**(a4 + 8))
        {
          goto LABEL_84;
        }

        goto LABEL_90;
      }

LABEL_89:
      v43 = 0;
      v44 = v31 >= 0x4D;
      if (!**(a4 + 8))
      {
LABEL_84:
        if (v22)
        {
          goto LABEL_95;
        }

        if (v44)
        {
          v45 = v23[38];
          if (!v23[38])
          {
            goto LABEL_105;
          }

LABEL_94:
          v46 = 8;
          v47 = 2;
LABEL_99:
          v45 = *(v21 + v45);
          v48 = (v45 & v47) != 0;
          LOBYTE(v45) = (v45 & v46) != 0;
          v49 = v23[15];
          if (v49)
          {
            goto LABEL_103;
          }

          goto LABEL_106;
        }

        goto LABEL_101;
      }

LABEL_90:
      if (!v22)
      {
LABEL_95:
        if (v44)
        {
          v45 = v23[38];
          if (!v23[38])
          {
LABEL_105:
            v48 = 0;
            v49 = v23[15];
            if (v49)
            {
LABEL_103:
              v50 = *(v21 + v49);
              goto LABEL_107;
            }

            goto LABEL_106;
          }

          v46 = 4;
          v47 = 1;
          goto LABEL_99;
        }

        goto LABEL_101;
      }

      if (v44)
      {
        v45 = v23[38];
        if (!v23[38])
        {
          goto LABEL_105;
        }

        goto LABEL_94;
      }

LABEL_101:
      LOBYTE(v45) = 0;
      if (v31 <= 0x1E)
      {
        v50 = -1;
        v48 = 0;
        goto LABEL_107;
      }

      v48 = 0;
      v49 = v23[15];
      if (v49)
      {
        goto LABEL_103;
      }

LABEL_106:
      v50 = -1;
LABEL_107:
      v51 = **(a4 + 24);
      v53 = v51 != -1 && v51 == v50;
      v54 = (**(a4 + 32) | v45) ^ 1;
      if (((**(a4 + 32) | v45) & 1) == 0 && !v48)
      {
        v54 = v43 > **(a4 + 40) + 1;
      }

      v15 = v53 && !v40;
      if (v35 && (v54 & 1) == 0 && (v15 & 1) == 0)
      {
        if (**(a4 + 8))
        {
          if (v22)
          {
            v55 = 3;
          }

          else
          {
            v55 = 2;
          }

          v56 = v9[v55];
          if (!v56)
          {
LABEL_133:
            *(*(a4 + 48) + 2) += v56;
            goto LABEL_134;
          }
        }

        else
        {
          if (v22)
          {
            v57 = 2;
          }

          else
          {
            v57 = 3;
          }

          v56 = v9[v57];
          if (!v56)
          {
            goto LABEL_133;
          }
        }

        v58 = (v56 - *v56);
        if (*v58 < 7u || (v59 = v58[3]) == 0 || (LOWORD(v56) = *(v56 + v59), v56 == 0xFFFF))
        {
          LOWORD(v56) = 0;
        }

        goto LABEL_133;
      }

LABEL_134:
      if (v43 > **(a4 + 40))
      {
        goto LABEL_8;
      }

      if (v40)
      {
        v60 = *(a4 + 48);
        v61 = *v60;
        v62 = (v61 >> 6) & 0xF;
        if (v62 >= v43)
        {
          LOWORD(v62) = v43;
        }

        *v60 = v61 & 0xFC3F | (v62 << 6);
        v63 = *(a4 + 48);
        v64 = *v63;
        if (v43 + 1 < **(a4 + 40))
        {
          v65 = *v63;
        }

        else
        {
          v65 = v64 + 1;
        }

        *v63 = v64 & 0xFFF8 | v65 & 7;
        v66 = 8 * (v43 + 1 < **(a4 + 40));
      }

      else
      {
        v66 = 0;
      }

      **(a4 + 48) = (**(a4 + 48) + v66) & 0x38 | **(a4 + 48) & 0xFFC7;
      if (v30)
      {
LABEL_144:
        **(a4 + 48) = **(a4 + 48);
        if (v35)
        {
          goto LABEL_153;
        }

        goto LABEL_8;
      }

      v67 = (*v9 - **v9);
      if (*v67 < 0x2Fu)
      {
        goto LABEL_152;
      }

      v68 = v67[23];
      if (v68)
      {
        v69 = *(*v9 + v68);
        if (v69 <= 0x36 && ((1 << v69) & 0x44000000000008) != 0)
        {
          goto LABEL_144;
        }

LABEL_152:
        **(a4 + 48) &= ~0x4000u;
        if (v35)
        {
          goto LABEL_153;
        }

        goto LABEL_8;
      }

      **(a4 + 48) &= ~0x4000u;
      if (v35)
      {
LABEL_153:
        v70 = *v9;
        v71 = (*v9 - **v9);
        v72 = *v71;
        if (*(v9 + 38))
        {
          if (v72 < 0x39)
          {
            goto LABEL_165;
          }

          if (!v71[28])
          {
            goto LABEL_165;
          }

          v73 = *(v70 + v71[28]);
          if ((v73 & 2) == 0 && (v73 & 1) == 0)
          {
            goto LABEL_165;
          }

LABEL_164:
          v75 = *(a4 + 48);
          v76 = *v75;
LABEL_182:
          *v75 = v76;
          v81 = *v9;
          v82 = v9[1];
          if (!v82)
          {
LABEL_188:
            v86 = (v81 - *v81);
            if (*v86 >= 0x9Bu)
            {
              v87 = v86[77];
              if (v87)
              {
                v88 = *(v81 + v87);
                if ((v88 & 0x10000) == 0)
                {
                  v15 |= (v88 >> 26) & 1;
                  goto LABEL_4;
                }

LABEL_3:
                LOBYTE(v15) = 1;
              }
            }

LABEL_4:
            if ((v15 | (v48 | v45)))
            {
              v16 = -1;
            }

            else
            {
              v16 = -8193;
            }

            **(a4 + 48) &= v16;
            goto LABEL_8;
          }

LABEL_185:
          v84 = (v82 - *v82);
          if (*v84 < 0x11u)
          {
            goto LABEL_188;
          }

          v85 = v84[8];
          if (!v85 || (*(v82 + v85) & 4) == 0)
          {
            goto LABEL_188;
          }

          goto LABEL_3;
        }

        if (v72 >= 0x39)
        {
          if (v71[28])
          {
            v74 = *(v70 + v71[28]);
            if ((v74 & 1) != 0 || (v74 & 2) != 0)
            {
              goto LABEL_164;
            }
          }
        }

LABEL_165:
        if (**(a4 + 8) == 1)
        {
          v77 = v72 >= 0x39;
          if (*(v9 + 38))
          {
            if (v72 < 0x39)
            {
              goto LABEL_184;
            }

            v78 = v71[28];
            if (!v78)
            {
              goto LABEL_184;
            }

LABEL_181:
            v83 = *(v70 + v78);
            v75 = *(a4 + 48);
            v76 = *v75;
            if ((v83 & 0x2000) != 0)
            {
              goto LABEL_182;
            }

LABEL_175:
            *v75 = v76 & 0xEFFF;
            v81 = *v9;
            v82 = v9[1];
            if (!v82)
            {
              goto LABEL_188;
            }

            goto LABEL_185;
          }

LABEL_171:
          if (v77)
          {
            v79 = v71[28];
            if (v79)
            {
              v80 = *(v70 + v79);
              v75 = *(a4 + 48);
              v76 = *v75;
              if ((v80 & 0x4000) != 0)
              {
                goto LABEL_182;
              }

              goto LABEL_175;
            }
          }
        }

        else
        {
          v77 = v72 >= 0x39;
          if (*(v9 + 38))
          {
            goto LABEL_171;
          }

          if (v72 >= 0x39)
          {
            v78 = v71[28];
            if (v78)
            {
              goto LABEL_181;
            }
          }
        }

LABEL_184:
        **(a4 + 48) &= ~0x1000u;
        v81 = *v9;
        v82 = v9[1];
        if (!v82)
        {
          goto LABEL_188;
        }

        goto LABEL_185;
      }

LABEL_8:
      v9 += 5;
      if (v9 == v10)
      {
        return result;
      }
    }

    if (!*(v9 + 38))
    {
      if (v24 < 0x9B)
      {
        goto LABEL_39;
      }

      v27 = v23[77];
      if (!v23[77])
      {
        goto LABEL_39;
      }

      if (*(v21 + v23[77]))
      {
        v22 = 0;
        LODWORD(v25) = 1;
        goto LABEL_40;
      }

      v25 = 2;
LABEL_38:
      LODWORD(v25) = (*(v21 + v27) & v25) != 0;
      goto LABEL_40;
    }

    if (v24 >= 0x9B)
    {
      v27 = v23[77];
      if (v23[77])
      {
        v25 = 1;
        if ((*(v21 + v23[77]) & 2) == 0)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    goto LABEL_27;
  }

  return result;
}

uint64_t sub_41EF4C(int **a1, uint64_t a2, uint64_t a3, int **a4, int **a5)
{
  if (a4 == a5)
  {
    return 0;
  }

  v7 = a4;
  v10 = (a2 - 40);
  do
  {
    if (*(a3 + 8) != 1 || (v11 = sub_2BC10C(*a3, v7[4] & 0xFFFFFFFFFFFFFFLL, 0), (v12 & 1) == 0))
    {
      v11 = sub_30F8F8(a3, v7);
    }

    if (!v11)
    {
      v13 = (*v7 - **v7);
      if (*v13 < 0x2Fu)
      {
        return 1;
      }

      v14 = v13[23];
      if (!v14)
      {
        return 1;
      }

      v15 = *(*v7 + v14);
      v16 = v15 > 0x2A;
      v17 = (1 << v15) & 0x50426810004;
      if (v16 || v17 == 0)
      {
        return 1;
      }
    }

    if (v7 == v10)
    {
      v7 = a1;
    }

    else
    {
      v7 += 5;
    }
  }

  while (v7 != a5);
  return 0;
}

BOOL sub_41F048(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x4D)
    {
      v4 = v2[38];
      if (v4)
      {
        return (*&v1[v4] & 8) != 0;
      }
    }
  }

  else if (v3 >= 0x4D)
  {
    v6 = v2[38];
    if (v6)
    {
      return (*&v1[v6] & 4) != 0;
    }
  }

  return 0;
}

BOOL sub_41F0AC(int **a1)
{
  v1 = *a1;
  v2 = (*a1 - **a1);
  v3 = *v2;
  if (*(a1 + 38))
  {
    if (v3 >= 0x4D)
    {
      v4 = v2[38];
      if (v4)
      {
        return (*&v1[v4] & 2) != 0;
      }
    }
  }

  else if (v3 >= 0x4D)
  {
    v6 = v2[38];
    if (v6)
    {
      return (*&v1[v6] & 1) != 0;
    }
  }

  return 0;
}

void sub_41F110(void *a1)
{
  sub_5F328(&v19);
  *(v18 + 3) = 0;
  v18[0] = 0;
  *(v17 + 3) = 0;
  v17[0] = 0;
  if (*sub_3AF114(a1))
  {
    v2 = sub_3AF114(a1);
    v3 = sub_73EBC(*v2);
    v4 = v3;
    if (*v3 != v3[1])
    {
      sub_82894((*v3 + 48), &v12);
      if (SHIBYTE(v13) < 0)
      {
        sub_325C(&v15, v12, *(&v12 + 1));
      }

      else
      {
        v15 = v12;
        v16 = v13;
      }

      v18[0] = v16;
      *(v18 + 3) = *(&v16 + 3);
      v16 = 0;
      v15 = 0uLL;
      v5 = sub_420344(v4);
      std::to_string(&v14, v5);
      v17[0] = v14.__r_.__value_.__r.__words[2];
      *(v17 + 3) = *(&v14.__r_.__value_.__r.__words[2] + 3);
      memset(&v14, 0, sizeof(v14));
      if (SHIBYTE(v13) < 0)
      {
        operator delete(v12);
      }
    }
  }

  sub_5F328(&v12);
  v11 = 13;
  strcpy(__p, "build_version");
  v9[0] = __p;
  v7 = sub_A1D1C(v6, __p);
  v8 = *(v7 + 12);
  if (v8 != -1)
  {
    (off_2669E78[v8])(v9, v7 + 5);
  }

  *(v7 + 12) = -1;
  operator new();
}

void sub_41FFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, int a12, int a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, void *a54, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (*(v59 - 233) < 0)
  {
    operator delete(*(v59 - 256));
  }

  sub_5C010(v59 - 152);
  _Unwind_Resume(a1);
}

uint64_t sub_420344(void *a1)
{
  if (*a1 != a1[1])
  {
    v1 = sub_57478(*a1 + 48);
    v4 = *(v1 + 24);
    v2 = (v1 + 24);
    v3 = v4;
    v5 = v2->u64[1];
    if (v2[1].i8[7] >= 0)
    {
      v6 = v2[1].u8[7];
    }

    else
    {
      v2 = v3;
      v6 = v5;
    }

    sub_22174(v2, v6, 0x5Fu, &__p);
  }

  return 0;
}

void sub_4204AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_4204C0(void *a1)
{
  v1 = ((a1[1] - *a1) >> 4) + 1;
  if (!(v1 >> 60))
  {
    v2 = a1[2] - *a1;
    if (v2 >> 3 > v1)
    {
      v1 = v2 >> 3;
    }

    if (v2 >= 0x7FFFFFFFFFFFFFF0)
    {
      v3 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v3 = v1;
    }

    if (v3)
    {
      if (!(v3 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    operator new();
  }

  sub_1794();
}

void sub_4206A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_4206BC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4206BC(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 16;
      *(a1 + 16) = v3 - 16;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_2669E78[v5])(&v7);
        v4 = *(a1 + 16);
      }

      *(v3 - 8) = -1;
      v3 = v4;
    }

    while (v4 != v2);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_42075C(uint64_t a1, void *a2)
{
  *a1 = 0;
  *(a1 + 4) = 0;
  v6 = 20;
  strcpy(__p, "transition_max_angle");
  v3 = sub_62A70(a2, __p);
  if (v3)
  {
    v4 = *(v3 + 12);
    if (v4 == 4 || v4 == 3)
    {
      *a1 = *(v3 + 20);
      if ((v6 & 0x80000000) == 0)
      {
LABEL_9:
        operator new();
      }

LABEL_8:
      operator delete(*__p);
      goto LABEL_9;
    }

    if (v4 == 2)
    {
      *a1 = *(v3 + 5);
      if ((v6 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  *a1 = *a1;
  if ((v6 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

void sub_4209A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_420AE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_420B0C(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  sub_2B365C(*a1, *a2, 0, (*a1 + 7800));
  v3 = *(v2 + 7800);
  v4 = *(v2 + 7808);
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 0;
}

uint64_t sub_4211D0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 1:
      a2[23] = 11;
      strcpy(a2, "TestOrDebug");
      break;
    case 2:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 65;
      a2[3] = 0;
      break;
    case 3:
      a2[23] = 8;
      strcpy(a2, "QuickETA");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1953853266;
      a2[4] = 101;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 7;
      strcpy(a2, "Reroute");
      break;
    case 6:
      a2[23] = 11;
      strcpy(a2, "RouteGenius");
      break;
    case 7:
      a2[23] = 16;
      strcpy(a2, "SearchAlongRoute");
      break;
    case 8:
      a2[23] = 22;
      strcpy(a2, "DodgeballOutsideOfMaps");
      break;
    case 9:
      a2[23] = 11;
      strcpy(a2, "TimeToLeave");
      break;
    case 10:
      a2[23] = 11;
      strcpy(a2, "LaunchAndGo");
      break;
    case 11:
      a2[23] = 21;
      strcpy(a2, "TransitionFromDriving");
      break;
    case 12:
      operator new();
    case 13:
      operator new();
    case 14:
      operator new();
    case 15:
      a2[23] = 6;
      strcpy(a2, "Widget");
      break;
    default:
      a2[23] = 14;
      strcpy(a2, "UnknownPurpose");
      break;
  }

  return result;
}

uint64_t sub_4215B8@<X0>(uint64_t *a1@<X0>, const char *a2@<X1>, const char *a3@<X3>, const char *a4@<X4>, const char *a5@<X5>, _BYTE *a6@<X8>)
{
  sub_D7B0(v25);
  v12 = sub_30E900(&v26, *a1);
  v13 = strlen(a2);
  sub_4A5C(v12, a2, v13);
  v14 = std::ostream::operator<<();
  v15 = strlen(a3);
  v16 = sub_4A5C(v14, a3, v15);
  v17 = strlen(a4);
  v18 = sub_4A5C(v16, a4, v17);
  v19 = strlen(a5);
  sub_4A5C(v18, a5, v19);
  if ((v36 & 0x10) != 0)
  {
    v21 = v35;
    if (v35 < v32)
    {
      v35 = v32;
      v21 = v32;
    }

    v22 = v31;
    v20 = v21 - v31;
    if (v21 - v31 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v36 & 8) == 0)
    {
      v20 = 0;
      a6[23] = 0;
      goto LABEL_12;
    }

    v22 = v29;
    v20 = v30 - v29;
    if ((v30 - v29) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v20 >= 0x17)
  {
    operator new();
  }

  a6[23] = v20;
  if (v20)
  {
    memmove(a6, v22, v20);
  }

LABEL_12:
  a6[v20] = 0;
  v26 = v23;
  if (v34 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_4218A4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_4218B8(unint64_t *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *a1;
  v7 = HIDWORD(*a1);
  v8 = ~(*a1 << 47);
  WORD2(v17) = WORD1(*a1);
  LODWORD(v17) = v7;
  BYTE6(v17) = BYTE6(v8) & 1;
  v16 = v6 >> 2;
  if (v6)
  {
    v9 = "y";
  }

  else
  {
    v9 = "n";
  }

  sub_4215B8(&v17, "(+", ",r=", v9, ")", __p);
  v10 = *a1;
  v11 = sub_2B51D8(a2, HIDWORD(v10) & 0xFFFF0000FFFFFFFFLL | (WORD1(v10) << 32));
  v12 = (v11 - *v11);
  if (*v12 < 0x1Du)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12[14];
    if (v13)
    {
      v13 = *(v11 + v13);
    }
  }

  if ((v10 & 2) == 0)
  {
    v13 = -v13;
  }

  v17 = v13;
  sub_421A08(__p, "(geo_id: ", ")", a3);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_4219EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_421A08@<X0>(uint64_t a1@<X0>, const char *a2@<X1>, const char *a3@<X3>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = *(a1 + 23);
  if (v8 >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (v8 >= 0)
  {
    v10 = *(a1 + 23);
  }

  else
  {
    v10 = *(a1 + 8);
  }

  v11 = sub_4A5C(&v21, v9, v10);
  v12 = strlen(a2);
  v13 = sub_4A5C(v11, a2, v12);
  std::ostream::operator<<();
  v14 = strlen(a3);
  sub_4A5C(v13, a3, v14);
  if ((v31 & 0x10) != 0)
  {
    v16 = v30;
    if (v30 < v27)
    {
      v30 = v27;
      v16 = v27;
    }

    v17 = v26;
    v15 = v16 - v26;
    if (v16 - v26 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v31 & 8) == 0)
    {
      v15 = 0;
      a4[23] = 0;
      goto LABEL_18;
    }

    v17 = v24;
    v15 = v25 - v24;
    if ((v25 - v24) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  a4[23] = v15;
  if (v15)
  {
    memmove(a4, v17, v15);
  }

LABEL_18:
  a4[v15] = 0;
  v21 = v18;
  if (v29 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_421CC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void *sub_421CD4(void *a1, unint64_t a2)
{
  LODWORD(v10) = HIDWORD(a2);
  WORD2(v10) = WORD1(a2);
  BYTE6(v10) = ((HIDWORD(a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((a2 >> 1) & 1) << 48)) ^ 0x1000000000000) >> 48;
  v9 = a2 >> 2;
  if (a2)
  {
    v3 = "y";
  }

  else
  {
    v3 = "n";
  }

  sub_4215B8(&v10, "(+", ",r=", v3, ")", __p);
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  sub_4A5C(a1, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_421DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_421DD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 0:
      *(a2 + 23) = 7;
      strcpy(a2, "Success");
      return result;
    case 1:
      v2 = "InvalidRequest";
      goto LABEL_44;
    case 2:
      *(a2 + 23) = 16;
      strcpy(a2, "EVInvalidRequest");
      return result;
    case 3:
      v3 = "InvalidResponse";
      goto LABEL_31;
    case 4:
      *(a2 + 23) = 18;
      strcpy(a2, "UnsupportedRequest");
      return result;
    case 5:
      *(a2 + 23) = 20;
      strcpy(a2, "EVUnsupportedRequest");
      return result;
    case 6:
      *(a2 + 23) = 19;
      strcpy(a2, "MissingSessionState");
      return result;
    case 7:
      *(a2 + 23) = 19;
      strcpy(a2, "InvalidSessionState");
      return result;
    case 8:
      operator new();
    case 9:
      *(a2 + 23) = 19;
      strcpy(a2, "AnchorLimitExceeded");
      return result;
    case 10:
      *(a2 + 23) = 17;
      strcpy(a2, "TimeLimitExceeded");
      return result;
    case 11:
      *(a2 + 23) = 7;
      strcpy(a2, "NoRoute");
      return result;
    case 12:
      *(a2 + 23) = 19;
      strcpy(a2, "PathDecodingFailure");
      return result;
    case 13:
      *(a2 + 23) = 12;
      strcpy(a2, "BlockedRoads");
      return result;
    case 14:
      v5 = "WalkingTooFar";
      goto LABEL_35;
    case 15:
      *(a2 + 23) = 12;
      strcpy(a2, "EVOutOfRange");
      return result;
    case 16:
      *(a2 + 23) = 19;
      strcpy(a2, "MaxDistanceExceeded");
      return result;
    case 17:
      v5 = "OutOfCoverage";
LABEL_35:
      *(a2 + 23) = 13;
      *a2 = *v5;
      *(a2 + 5) = *(v5 + 5);
      *(a2 + 13) = 0;
      return result;
    case 18:
      *(a2 + 23) = 19;
      strcpy(a2, "FarFromTransitStops");
      return result;
    case 19:
      *(a2 + 23) = 20;
      strcpy(a2, "OutOfTransitCoverage");
      return result;
    case 20:
      v3 = "EVOutOfCoverage";
LABEL_31:
      *(a2 + 23) = 15;
      *a2 = *v3;
      *(a2 + 7) = *(v3 + 7);
      *(a2 + 15) = 0;
      return result;
    case 21:
      *(a2 + 23) = 17;
      strcpy(a2, "RoadsNonNavigable");
      return result;
    case 22:
      *(a2 + 23) = 11;
      strcpy(a2, "AcrossWater");
      return result;
    case 23:
      *(a2 + 23) = 12;
      strcpy(a2, "FarFromRoads");
      return result;
    case 24:
      operator new();
    case 25:
      *(a2 + 23) = 18;
      strcpy(a2, "OriginFarFromRoads");
      return result;
    case 26:
      *(a2 + 23) = 19;
      strcpy(a2, "OriginOutOfCoverage");
      return result;
    case 27:
      v4 = "OriginEVOutOfCoverage";
      goto LABEL_47;
    case 28:
      operator new();
    case 29:
      operator new();
    case 30:
      operator new();
    case 31:
      *(a2 + 23) = 17;
      strcpy(a2, "OriginAcrossWater");
      return result;
    case 32:
      operator new();
    case 33:
      operator new();
    case 34:
      operator new();
    case 35:
      operator new();
    case 36:
      operator new();
    case 37:
      operator new();
    case 38:
      *(a2 + 23) = 22;
      strcpy(a2, "DestinationAcrossWater");
      return result;
    case 39:
      v4 = "IncorrectNumSolutions";
LABEL_47:
      *(a2 + 23) = 21;
      *a2 = *v4;
      *(a2 + 13) = *(v4 + 13);
      *(a2 + 21) = 0;
      return result;
    case 40:
      *(a2 + 23) = 19;
      strcpy(a2, "OutOfValidityPeriod");
      return result;
    case 41:
      v2 = "NoTransitRoute";
      goto LABEL_44;
    case 42:
      v2 = "BlockedTransit";
LABEL_44:
      *(a2 + 23) = 14;
      *a2 = *v2;
      *(a2 + 6) = *(v2 + 6);
      *(a2 + 14) = 0;
      break;
    case 43:
      operator new();
    default:
      *(a2 + 23) = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

uint64_t *sub_422814@<X0>(uint64_t *result@<X0>, double *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  if (*result == v3)
  {
    goto LABEL_11;
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = (v3 - v2) >> 3;
  v9 = 0.0;
  v10 = 0.0;
  do
  {
    v10 = v10 + *(v2 + 8 * v7);
    if (v10 > v9)
    {
      v5 = v6;
      v4 = v7;
      v9 = v10;
    }

    if (v10 < 0.0)
    {
      v6 = v7 + 1;
    }

    v11 = v7 + 1;
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }

    ++v7;
  }

  while (v8 != v11);
  if (v9 == 0.0)
  {
LABEL_11:
    *a2 = 0.0;
    a2[1] = 0.0;
    a2[2] = 0.0;
  }

  else
  {
    *a2 = v5;
    *(a2 + 1) = v4 + 1;
    a2[2] = v9;
  }

  return result;
}

uint64_t sub_42289C(uint64_t a1, uint64_t a2, int a3, unsigned int a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 24) = a3;
  v7.f64[0] = NAN;
  v7.f64[1] = NAN;
  *(a1 + 32) = vnegq_f64(v7);
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*a1 == v8)
  {
    goto LABEL_34;
  }

  v10 = v9 + 32;
  do
  {
    if (v10 == v8)
    {
      goto LABEL_34;
    }

    v11 = *(v10 - 8);
    v12 = *(v10 + 24);
    v10 += 32;
    v13 = v11 == 0x7FFFFFFF || v12 == 0x7FFFFFFF;
  }

  while (!v13 && v11 <= v12);
  if (sub_7E7E4(3u))
  {
    sub_19594F8(v44);
    sub_4A5C(v44, "Discovered inconsistent timestamps in recent location history.", 62);
    if ((v51 & 0x10) != 0)
    {
      v16 = v50;
      if (v50 < v47)
      {
        v50 = v47;
        v16 = v47;
      }

      v17 = v46;
      v15 = v16 - v46;
      if (v16 - v46 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_48;
      }
    }

    else
    {
      if ((v51 & 8) == 0)
      {
        v15 = 0;
        v43 = 0;
LABEL_23:
        *(&__dst + v15) = 0;
        sub_7E854(&__dst, 3u);
        if (v43 < 0)
        {
          operator delete(__dst);
        }

        if (v49 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v44[16]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_28;
      }

      v17 = *&v44[24];
      v15 = v45 - *&v44[24];
      if ((v45 - *&v44[24]) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_48:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v43 = v15;
    if (v15)
    {
      memmove(&__dst, v17, v15);
    }

    goto LABEL_23;
  }

LABEL_28:
  v9 = *a1;
  v8 = *(a1 + 8);
  if (*a1 != v8)
  {
    v18 = v8 - v9 - 32;
    v19 = *a1;
    if (v18 < 0x20)
    {
      goto LABEL_51;
    }

    v20 = (v18 >> 5) + 1;
    v19 = v9 + 32 * (v20 & 0xFFFFFFFFFFFFFFELL);
    v21 = (v9 + 56);
    HIDWORD(v4) = 0;
    v22 = v20 & 0xFFFFFFFFFFFFFFELL;
    do
    {
      *(v21 - 8) = 0x7FFFFFFF;
      *v21 = 0x7FFFFFFF;
      v21 += 16;
      v22 -= 2;
    }

    while (v22);
    if (v20 != (v20 & 0xFFFFFFFFFFFFFFELL))
    {
LABEL_51:
      do
      {
        *(v19 + 24) = 0x7FFFFFFF;
        v19 += 32;
      }

      while (v19 != v8);
    }
  }

LABEL_34:
  if (a4 != 1000000000 && v8 - v9 != 32)
  {
    v23 = (v8 - v9) >> 5;
    v24 = v23 - 1;
    v13 = v23 == 1;
    v25 = (v23 - 1);
    v26 = vcvtpd_u64_f64(a4 / 1000000000.0 * v25);
    if (v13)
    {
      v30 = 0;
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      LODWORD(v4) = vcvtpd_u64_f64(v25 / v26);
      do
      {
        v31 = (*a1 + v27);
        v32 = (*a1 + v28);
        *v44 = *v31;
        v33 = *v44;
        *&v44[16] = v31[1];
        v34 = *(v32 + 12);
        *v31 = *v32;
        *(v31 + 12) = v34;
        *v32 = v33;
        *(v32 + 12) = *&v44[12];
        ++v30;
        v29 += v4;
        v28 += 32 * v4;
        v27 += 32;
      }

      while (v29 < v24);
      v9 = *a1;
      v8 = *(a1 + 8);
    }

    v35 = (v9 + 32 * v30);
    v36 = v35[1];
    *v44 = *v35;
    *&v44[16] = v36;
    v37 = *(v8 - 32);
    *(v35 + 12) = *(v8 - 20);
    *v35 = v37;
    v38 = *v44;
    *(v8 - 20) = *&v44[12];
    *(v8 - 32) = v38;
    v39 = v26 + 1;
    v40 = (*(a1 + 8) - *a1) >> 5;
    if (v39 <= v40)
    {
      if (v39 < v40)
      {
        *(a1 + 8) = *a1 + 32 * v39;
      }
    }

    else
    {
      sub_4241C8(a1, v39 - v40);
    }

    sub_422D54(a1);
  }

  return a1;
}

void sub_422CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  v18 = *v16;
  if (*v16)
  {
    *(v16 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(a1);
}

void sub_422D54(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    v6 = v4 >> 5;
    if (v1 != v2)
    {
      if (!(v6 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v7 = 32 * v6;
      v8 = *(a1 + 8) - v2;
      v9 = v7 - v8;
      memcpy((v7 - v8), v2, v8);
      *a1 = v9;
      *(a1 + 8) = v7;
      *(a1 + 16) = v7;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void *sub_422E4C@<X0>(void *result@<X0>, int a2@<W1>, unsigned int a3@<W2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0x7FFFFFFF;
  v7 = a5 + 24;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  *(a5 + 32) = vnegq_f64(v8);
  v9 = *result;
  v10 = result[1];
  if (*result == v10)
  {
LABEL_7:
    sub_42289C(v12, result, a2, a3);
    *a5 = *v12;
    *(a5 + 8) = *&v12[8];
    *v7 = v13;
    *(v7 + 16) = v14;
    v12[23] = 8;
    strcpy(v12, "snapping");
    sub_5F5AC(a4, v12);
    operator new();
  }

  while (*v9 != -1 || v9[1] != -1)
  {
    v9 += 8;
    if (v9 == v10)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void sub_423334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if (!v24)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v24)
  {
    goto LABEL_3;
  }

  *(v23 + 8) = v24;
  operator delete(v24);
  _Unwind_Resume(exception_object);
}

__n128 sub_4233E4@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1->n128_u64[0];
  v4 = a1->n128_u64[1];
  result = a1[2];
  a2[1] = result;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[2].n128_u64[0] = 0;
  v6 = (v4 - v3) >> 5;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v6;
  if (v4 != v3)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4234B4(uint64_t a1)
{
  v3[23] = 11;
  strcpy(v3, "RoadSnapper");
  memset(v2, 0, sizeof(v2));
  v1 = sub_3AEC94(a1, v3, v2);
  sub_41D60C(v1, 0, 0, &v4);
  operator new();
}

void sub_423664(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_6BB60(&a24);
  sub_1A104(&a15);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

void sub_4236D4(void *a1, unsigned int *a2, unsigned int *a3)
{
  v3 = a1[5];
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v8 = i >> 6;
      v9 = 1 << i;
      if ((*(a1[4] + 8 * (i >> 6)) & (1 << i)) == 0)
      {
        v21[0] = sub_3514C((*a1 + 32 * i), a1 + 2);
        v21[1] = v10;
        if (sub_32A18(v21, a2) & 1) != 0 || (sub_32A18(v21, a3))
        {
          *(a1[4] + 8 * v8) |= v9;
        }

        else
        {
          sub_345A0(v21, &__p);
          v11 = sub_3BDD4(a2, a3, &__p);
          v12 = a1[4];
          if (v11)
          {
            *(v12 + 8 * v8) |= v9;
            v13 = __p;
            if (__p)
            {
              goto LABEL_12;
            }
          }

          else
          {
            *(v12 + 8 * v8) &= ~v9;
            v13 = __p;
            if (__p)
            {
LABEL_12:
              v14 = v20;
              v15 = v13;
              if (v20 != v13)
              {
                v16 = v20;
                do
                {
                  v18 = *(v16 - 3);
                  v16 -= 24;
                  v17 = v18;
                  if (v18)
                  {
                    *(v14 - 2) = v17;
                    operator delete(v17);
                  }

                  v14 = v16;
                }

                while (v16 != v13);
                v15 = __p;
              }

              v20 = v13;
              operator delete(v15);
            }
          }
        }
      }
    }
  }
}

void sub_423830(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

BOOL sub_423844(void *a1, unsigned int *a2, unsigned int *a3, uint64_t *a4)
{
  v21.n128_u64[0] = sub_3514C((*a1 + 32 * a1[1] - 32), a1 + 3);
  v21.n128_u64[1] = v8;
  v20.n128_u64[0] = sub_3514C(a4, a1 + 3);
  v20.n128_u64[1] = v9;
  sub_32114(&v21, &v20);
  v19 = v21;
  if (sub_423974(&v19, a2, a3))
  {
    return 1;
  }

  v11 = *a1;
  v12 = a1[1];
  v13 = *a1 + 32 * v12;
  if (v12)
  {
    v14 = 32 * v12 - 32;
    while (v14)
    {
      v15 = v11 + 4;
      v21.n128_u64[0] = sub_3514C(v11, a1 + 3);
      v21.n128_u64[1] = v16;
      v20.n128_u64[0] = sub_3514C(v15, a1 + 3);
      v20.n128_u64[1] = v17;
      sub_32114(&v21, &v20);
      v18 = sub_423974(&v21, a2, a3);
      v14 -= 32;
      v11 = v15;
      if (v18)
      {
        v13 = (v15 - 4);
        break;
      }
    }

    v11 = *a1;
    v12 = a1[1];
  }

  return v13 != &v11[4 * v12];
}

uint64_t sub_423974(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v7 = *a2;
  v6 = a2[1];
  v9 = *a3;
  v8 = a3[1];
  if (*a2 <= *a3)
  {
    v10 = *a3;
  }

  else
  {
    v10 = *a2;
  }

  if (v6 >= v8)
  {
    v11 = a3[1];
  }

  else
  {
    v11 = a2[1];
  }

  if (v6 <= v8)
  {
    v12 = a3[1];
  }

  else
  {
    v12 = a2[1];
  }

  if (v10 < sub_32DBC(a1))
  {
    return 0;
  }

  if (v7 >= v9)
  {
    v7 = v9;
  }

  if (v7 > sub_32DA0(a1) || v12 < sub_32DA0(a1) >> 32 || v11 > sub_32DBC(a1) >> 32)
  {
    return 0;
  }

  if (sub_32A18(a1, a2) & 1) != 0 || (sub_32A18(a1, a3))
  {
    return 1;
  }

  sub_345A0(a1, &__p);
  result = sub_3BDD4(a2, a3, &__p);
  v14 = __p;
  if (__p)
  {
    v15 = result;
    v16 = v22;
    v17 = __p;
    if (v22 != __p)
    {
      v18 = v22;
      do
      {
        v20 = *(v18 - 3);
        v18 -= 24;
        v19 = v20;
        if (v20)
        {
          *(v16 - 2) = v19;
          operator delete(v19);
        }

        v16 = v18;
      }

      while (v18 != v14);
      v17 = __p;
    }

    v22 = v14;
    operator delete(v17);
    return v15;
  }

  return result;
}

void sub_423AC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_423AD8(unint64_t *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = v1 - 64;
  if (v1 < 0x40)
  {
    v4 = 0;
    v5 = a1[4];
    goto LABEL_9;
  }

  if (v3 < 0xC0)
  {
    v4 = 0;
    v5 = a1[4];
    do
    {
LABEL_8:
      v11 = *v5++;
      v12 = vcnt_s8(v11);
      v12.i16[0] = vaddlv_u8(v12);
      v4 += v12.u32[0];
      v1 -= 64;
    }

    while (v1 > 0x3F);
    goto LABEL_9;
  }

  v6 = (v3 >> 6) + 1;
  v5 = v2 + (v6 & 0x7FFFFFFFFFFFFFCLL);
  v1 -= (v6 & 0x7FFFFFFFFFFFFFCLL) << 6;
  v7 = v2 + 1;
  v8 = 0uLL;
  v9 = v6 & 0x7FFFFFFFFFFFFFCLL;
  v10 = 0uLL;
  do
  {
    v8 = vpadalq_u32(v8, vpaddlq_u16(vpaddlq_u8(vcntq_s8(v7[-1]))));
    v10 = vpadalq_u32(v10, vpaddlq_u16(vpaddlq_u8(vcntq_s8(*v7))));
    v7 += 2;
    v9 -= 4;
  }

  while (v9);
  v4 = vaddvq_s64(vaddq_s64(v10, v8));
  if (v6 != (v6 & 0x7FFFFFFFFFFFFFCLL))
  {
    goto LABEL_8;
  }

LABEL_9:
  if (v1)
  {
    v13 = vcnt_s8((*v5 & (0xFFFFFFFFFFFFFFFFLL >> -v1)));
    v13.i16[0] = vaddlv_u8(v13);
    v4 += v13.u32[0];
  }

  v14 = v4 / a1[1] * 1000000000.0;
  if (v14 >= 0.0)
  {
    if (v14 < 4.50359963e15)
    {
      v15 = (v14 + v14) + 1;
      return (v15 >> 1);
    }
  }

  else if (v14 > -4.50359963e15)
  {
    v15 = (v14 + v14) - 1 + (((v14 + v14) - 1) >> 63);
    return (v15 >> 1);
  }

  return v14;
}

uint64_t sub_423C30(uint64_t **a1, unsigned int *a2, unsigned int *a3)
{
  v4.i64[0] = *a2;
  v4.i64[1] = HIDWORD(*a2);
  v5 = vcvtq_f64_u64(v4);
  v4.i64[0] = *a3;
  v4.i64[1] = HIDWORD(*a3);
  v6 = vsubq_f64(vcvtq_f64_u64(v4), v5);
  v7 = vmulq_f64(v6, v6);
  v8 = vaddvq_f64(v7);
  if (v8 == 0.0)
  {
    goto LABEL_5;
  }

  if (v8 <= 0.0)
  {
    v8 = -v8;
  }

  if (v8 < 2.22044605e-16)
  {
LABEL_5:
    v9 = 0.0;
  }

  else
  {
    v35 = **a1;
    v36.i64[0] = v35;
    v36.i64[1] = HIDWORD(v35);
    v37 = vmulq_f64(v6, vsubq_f64(vcvtq_f64_u64(v36), v5));
    *&v9 = *&vdivq_f64(vaddq_f64(v37, vdupq_laneq_s64(v37, 1)), vaddq_f64(v7, vdupq_laneq_s64(v7, 1)));
  }

  if (v9 <= 1.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0;
  }

  v11 = v9 < 0.0;
  v12 = 0.0;
  if (!v11)
  {
    v12 = v10;
  }

  v13 = sub_6EFC0(a2, a3, v12);
  v14 = v13;
  v15 = *a1;
  v16 = exp(3.14159265 - HIDWORD(v13) * 6.28318531 / 4294967300.0);
  *&v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795;
  LODWORD(v18) = v14;
  HIDWORD(v18) = *v15;
  v38 = v18;
  v19 = *&v17 * 0.0174532925;
  LODWORD(v17) = *(v15 + 1);
  v20 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
  v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
  v22.i64[0] = v38;
  v22.i64[1] = HIDWORD(v38);
  v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v39 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
  v24 = sin((v19 - v21) * 0.5);
  v25 = v24 * v24;
  v26 = cos(v19);
  v27 = v26 * cos(v21);
  v28 = sin(0.5 * v39);
  v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
  v30 = (v29 + v29) * 6372797.56 * 100.0;
  if (v30 >= 0.0)
  {
    v31 = v30;
    if (v30 >= 4.50359963e15)
    {
      goto LABEL_17;
    }

    v32 = (v30 + v30) + 1;
  }

  else
  {
    v31 = v30;
    if (v30 <= -4.50359963e15)
    {
      goto LABEL_17;
    }

    v32 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
  }

  v31 = (v32 >> 1);
LABEL_17:
  if (v31 >= 9.22337204e18)
  {
    return 0x7FFFFFFFFFFFFFFELL;
  }

  if (v30 >= 0.0)
  {
    if (v30 < 4.50359963e15)
    {
      v33 = (v30 + v30) + 1;
      return (v33 >> 1);
    }
  }

  else if (v30 > -4.50359963e15)
  {
    v33 = (v30 + v30) - 1 + (((v30 + v30) - 1) >> 63);
    return (v33 >> 1);
  }

  return v30;
}

uint64_t sub_423F4C(uint64_t a1, _DWORD *a2, double a3)
{
  v4 = *a1;
  LODWORD(a3) = *(*a1 + 4);
  v5 = exp(3.14159265 - *&a3 * 6.28318531 / 4294967300.0);
  *&v6 = atan((v5 - 1.0 / v5) * 0.5) * 57.2957795;
  LODWORD(v7) = *v4;
  HIDWORD(v7) = *a2;
  v24 = v7;
  v8 = *&v6 * 0.0174532925;
  LODWORD(v6) = a2[1];
  v9 = exp(3.14159265 - v6 * 6.28318531 / 4294967300.0);
  v10 = atan((v9 - 1.0 / v9) * 0.5) * 57.2957795 * 0.0174532925;
  v11.i64[0] = v24;
  v11.i64[1] = HIDWORD(v24);
  v12 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v11), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v25 = vsubq_f64(v12, vdupq_laneq_s64(v12, 1)).f64[0];
  v13 = sin((v8 - v10) * 0.5);
  v14 = v13 * v13;
  v15 = cos(v8);
  v16 = v15 * cos(v10);
  v17 = sin(0.5 * v25);
  v18 = atan2(sqrt(v17 * v17 * v16 + v14), sqrt(1.0 - (v17 * v17 * v16 + v14)));
  v19 = (v18 + v18) * 6372797.56 * 100.0;
  if (v19 >= 0.0)
  {
    v20 = v19;
    if (v19 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v21 = (v19 + v19) + 1;
  }

  else
  {
    v20 = v19;
    if (v19 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v21 = (v19 + v19) - 1 + (((v19 + v19) - 1) >> 63);
  }

  v20 = (v21 >> 1);
LABEL_7:
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

void sub_4241C8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 5)
  {
    if (a2)
    {
      v9 = (v4 + 16);
      v10 = 32 * a2;
      v4 += 32 * a2;
      do
      {
        *v9 = 0x7FFFFFFFFFFFFFFFLL;
        v9[1] = 0;
        *(v9 - 2) = -1;
        *(v9 - 1) = 0;
        *(v9 - 2) = 0x7FFFFFFF;
        *(v9 + 2) = 0x7FFFFFFF;
        v9 += 4;
        v10 -= 32;
      }

      while (v10);
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 5;
    if ((v5 + a2) >> 59)
    {
      sub_1794();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 4;
    if (v6 >> 4 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFE0)
    {
      v8 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 59))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = 32 * v5;
    v12 = 32 * a2;
    v13 = 32 * v5 + 32 * a2;
    v14 = (32 * v5 + 16);
    do
    {
      *v14 = 0x7FFFFFFFFFFFFFFFLL;
      v14[1] = 0;
      *(v14 - 2) = -1;
      *(v14 - 1) = 0;
      *(v14 - 2) = 0x7FFFFFFF;
      *(v14 + 2) = 0x7FFFFFFF;
      v14 += 4;
      v12 -= 32;
    }

    while (v12);
    v15 = *a1;
    v16 = *(a1 + 8) - *a1;
    v17 = v11 - v16;
    memcpy((v11 - v16), *a1, v16);
    *a1 = v17;
    *(a1 + 8) = v13;
    *(a1 + 16) = 0;
    if (v15)
    {

      operator delete(v15);
    }
  }
}

void sub_42434C(uint64_t a1, uint64_t a2)
{
  v5[23] = 19;
  strcpy(v5, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_EE90(a1, v3);
}

void sub_424504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 + 519) < 0)
  {
    operator delete(*(v18 + 496));
  }

  sub_321B00(v18);
  _Unwind_Resume(a1);
}

void sub_424570(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v10 = &v11;
  v11 = v12;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_45AC50(a2);
  v5 = *(a1 + 456);
  v6 = sub_45AC50(a2);
  sub_320EC8(v5, *(v6 + 32) | (*(v6 + 36) << 32), v9);
  v7 = sub_3CF22C(a2);
  sub_386C(v8, *v7);
}

void sub_425170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, void *a33, uint64_t a34)
{
  sub_1A104(&a21);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  sub_3874(v34 - 208);
  sub_25F00((v34 - 160));
  v36 = *a11;
  if (*a11)
  {
    *(a11 + 8) = v36;
    operator delete(v36);
  }

  sub_252664(v34 - 136, *(v34 - 128));
  _Unwind_Resume(a1);
}

void sub_4252B8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v5 = a3;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (!sub_F695B8(a2))
  {
    v6 = sub_F69D2C(v3);
    if (v6)
    {
      v118 = 0;
      v119 = v3;
      v7 = 0;
      v120 = v5;
      v116 = a1;
      v117 = v6;
      do
      {
        v8 = sub_F69DE0(v3, v7);
        v9 = *(v8 + 32);
        v10 = *(a1 + 456);
        v11 = sub_2B51D8(v10, v9 & 0xFFFFFFFFFFFFLL);
        v12 = (v11 - *v11);
        if (*v12 >= 0x41u && v12[32])
        {
          v13 = sub_2B51D8(v10, v9 & 0xFFFFFFFFFFFFLL);
          v14 = (v13 - *v13);
          if (*v14 >= 0x41u && (v15 = v14[32]) != 0)
          {
            v16 = (v13 + v15 + *(v13 + v15));
          }

          else
          {
            v16 = 0;
          }

          sub_40C268(v16, BYTE6(v9), 5, &v130);
          v17 = v130;
          v18 = v131;
          if (v130)
          {
            v19 = v130;
            if (v130 != v131)
            {
              v20 = v131;
              do
              {
                v21 = *(v20 - 1);
                v20 -= 3;
                if (v21 < 0)
                {
                  operator delete(*v20);
                }
              }

              while (v20 != v17);
              v19 = v130;
              a1 = v116;
            }

            v131 = v17;
            operator delete(v19);
          }

          if (v17 != v18)
          {
            v23 = *(v5 + 8);
            v22 = *(v5 + 16);
            if (v23 >= v22)
            {
              v25 = *v5;
              v26 = v23 - *v5;
              v27 = (v26 >> 3) + 1;
              if (v27 >> 61)
              {
                sub_1794();
              }

              v28 = v22 - v25;
              if (v28 >> 2 > v27)
              {
                v27 = v28 >> 2;
              }

              if (v28 >= 0x7FFFFFFFFFFFFFF8)
              {
                v29 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v27;
              }

              if (v29)
              {
                if (!(v29 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v30 = (8 * (v26 >> 3));
              *v30 = v9 & 0xFFFFFFFFFFFFFFLL;
              v24 = v30 + 1;
              memcpy(0, v25, v26);
              *v5 = 0;
              *(v5 + 8) = v24;
              *(v5 + 16) = 0;
              if (v25)
              {
                operator delete(v25);
              }
            }

            else
            {
              *v23 = v9 & 0xFFFFFFFFFFFFFFLL;
              v24 = v23 + 1;
            }

            *(v5 + 8) = v24;
          }
        }

        v31 = v117;
        if (v7 == sub_F69D2C(v3) - 1)
        {
          return;
        }

        v32 = *(a1 + 456);
        v124 = (*(v8 + 32) & 0xFFFFFFFFFFFFFFLL);
        v131 = 0;
        v132 = 0;
        v130 = 0;
        __p = v32;
        v128 = &v124;
        sub_32140C(v32, v124, &v130, &__p);
        v33 = v130;
        v123 = v131;
        if (v130 == v131)
        {
          goto LABEL_151;
        }

        v115 = 0;
        v121 = v7;
        v122 = 0;
        v114 = 88 * v7;
        do
        {
          v34 = *(a1 + 456);
          v35 = *v33;
          v128 = 0;
          v129 = 0;
          __p = 0;
          v36 = sub_30CC30(v34, v35);
          v37 = (v36 - *v36);
          if (*v37 >= 7u)
          {
            v38 = v37[3];
            if (v38)
            {
              if (*(v36 + v38 + *(v36 + v38)))
              {
                operator new();
              }
            }
          }

          v39 = __p;
          if (__p == v128)
          {
            v52 = 5;
            if (__p)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v40 = sub_30CC30(*(a1 + 456), *v33);
            v41 = (v40 - *v40);
            if (*v41 >= 0xFu && v41[7] && (*(v40 + v41[7]) & 4) != 0 && (!v41[2] || !*(v40 + v41[2])) && v41[4])
            {
              v42 = sub_5FC64(v3);
              v43 = sub_445EF4(v3);
              v124 = (v42 + v114);
              v125 = v43;
              if (sub_426548(a1, &__p, &v124))
              {
                v44 = v128 - __p;
                if (v128 - __p == 16)
                {
                  v45 = sub_F695B0(v3, v7);
                  v47 = *(v5 + 32);
                  v46 = *(v5 + 40);
                  if (v47 >= v46)
                  {
                    v74 = *(v5 + 24);
                    v75 = 0x2E8BA2E8BA2E8BA3 * ((v47 - v74) >> 3) + 1;
                    if (v75 > 0x2E8BA2E8BA2E8BALL)
                    {
                      sub_1794();
                    }

                    v76 = 0x2E8BA2E8BA2E8BA3 * ((v46 - v74) >> 3);
                    if (2 * v76 > v75)
                    {
                      v75 = 2 * v76;
                    }

                    if (v76 >= 0x1745D1745D1745DLL)
                    {
                      v77 = 0x2E8BA2E8BA2E8BALL;
                    }

                    else
                    {
                      v77 = v75;
                    }

                    if (v77)
                    {
                      if (v77 <= 0x2E8BA2E8BA2E8BALL)
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v89 = 8 * ((v47 - v74) >> 3);
                    v90 = *(v45 + 16);
                    *v89 = *v45;
                    *(v89 + 16) = v90;
                    v91 = *(v45 + 32);
                    v92 = *(v45 + 48);
                    v93 = *(v45 + 64);
                    *(v89 + 80) = *(v45 + 80);
                    *(v89 + 48) = v92;
                    *(v89 + 64) = v93;
                    *(v89 + 32) = v91;
                    v94 = v89 + 88;
                    v95 = (v89 - (v47 - v74));
                    memcpy(v95, v74, v47 - v74);
                    *(v5 + 24) = v95;
                    *(v5 + 32) = v94;
                    *(v5 + 40) = 0;
                    if (v74)
                    {
                      operator delete(v74);
                    }

                    *(v5 + 32) = v94;
                    v52 = 4;
                    v39 = __p;
                    if (__p)
                    {
                      goto LABEL_66;
                    }
                  }

                  else
                  {
                    v48 = *(v45 + 16);
                    *v47 = *v45;
                    *(v47 + 16) = v48;
                    v49 = *(v45 + 32);
                    v50 = *(v45 + 48);
                    v51 = *(v45 + 64);
                    *(v47 + 80) = *(v45 + 80);
                    *(v47 + 48) = v50;
                    *(v47 + 64) = v51;
                    *(v47 + 32) = v49;
                    *(v5 + 32) = v47 + 88;
                    v52 = 4;
                    v39 = __p;
                    if (__p)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                else
                {
                  v59 = v44 >> 3;
                  if ((v44 >> 3) >= 3)
                  {
                    v124 = 0;
                    v125 = 0;
                    v60 = v7;
                    v126 = 0;
                    do
                    {
                      while (1)
                      {
                        v61 = *(sub_F69DE0(v3, v60) + 32);
                        v62 = v125;
                        if (v125 >= v126)
                        {
                          break;
                        }

                        *v125 = v61 & 0xFFFFFFFFFFFFFFLL;
                        v125 = v62 + 8;
                        ++v60;
                        if (!--v59)
                        {
                          goto LABEL_90;
                        }
                      }

                      v63 = v124;
                      v64 = v125 - v124;
                      v65 = (v125 - v124) >> 3;
                      v66 = v65 + 1;
                      if ((v65 + 1) >> 61)
                      {
                        sub_1794();
                      }

                      v67 = v126 - v124;
                      if ((v126 - v124) >> 2 > v66)
                      {
                        v66 = v67 >> 2;
                      }

                      if (v67 >= 0x7FFFFFFFFFFFFFF8)
                      {
                        v68 = 0x1FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v68 = v66;
                      }

                      if (v68)
                      {
                        if (!(v68 >> 61))
                        {
                          operator new();
                        }

                        sub_1808();
                      }

                      v69 = (8 * v65);
                      v70 = &v69[-((v125 - v124) >> 3)];
                      *v69 = v61 & 0xFFFFFFFFFFFFFFLL;
                      v71 = (v69 + 1);
                      memcpy(v70, v63, v64);
                      v124 = v70;
                      v125 = v71;
                      v126 = 0;
                      if (v63)
                      {
                        operator delete(v63);
                      }

                      v3 = v119;
                      v5 = v120;
                      v7 = v121;
                      v125 = v71;
                      ++v60;
                      --v59;
                    }

                    while (v59);
LABEL_90:
                    v72 = *(v5 + 56);
                    if (v72 >= *(v5 + 64))
                    {
                      v73 = sub_42F6C8((v5 + 48), &v124);
                      a1 = v116;
                    }

                    else
                    {
                      *v72 = 0;
                      v72[1] = 0;
                      v72[2] = 0;
                      a1 = v116;
                      if (v125 != v124)
                      {
                        if (((v125 - v124) & 0x8000000000000000) == 0)
                        {
                          operator new();
                        }

                        sub_1794();
                      }

                      v73 = (v72 + 3);
                      v3 = v119;
                      v5 = v120;
                      v7 = v121;
                    }

                    *(v5 + 56) = v73;
                    if (v124)
                    {
                      v125 = v124;
                      operator delete(v124);
                    }
                  }

                  v52 = 4;
                  v39 = __p;
                  if (__p)
                  {
                    goto LABEL_66;
                  }
                }
              }

              else
              {
                v52 = 5;
                v39 = __p;
                if (__p)
                {
                  goto LABEL_66;
                }
              }
            }

            else
            {
              v53 = sub_30CC30(*(a1 + 456), *v33);
              v54 = (v53 - *v53);
              if (*v54 < 0xFu || !v54[7] || (*(v53 + v54[7]) & 4) == 0 || !v54[2] || *(v53 + v54[2]) != 1 || !v54[4])
              {
                v52 = 0;
                v39 = __p;
                if (!__p)
                {
                  goto LABEL_67;
                }

LABEL_66:
                v128 = v39;
                operator delete(v39);
                goto LABEL_67;
              }

              if ((v115 & 1) != 0 || (v56 = __p, v55 = v128, sub_F69D08(v3) - v7 + 1 < (v55 - v56) >> 3) || (v57 = sub_5FC64(v3), v58 = sub_445EF4(v3), v124 = (v57 + v114), v125 = v58, sub_426548(a1, &__p, &v124)))
              {
                v52 = 5;
                v115 = 1;
                v39 = __p;
                if (__p)
                {
                  goto LABEL_66;
                }
              }

              else
              {
                if (v128 - __p != 16 && (v78 = sub_5FC64(v3), v79 = sub_445EF4(v3), v80 = *(v78 + v114 + 32), __PAIR64__(*(__p + 2), *__p) == __PAIR64__(WORD2(v80), v80)) && *(__p + 6) == BYTE6(v80))
                {
                  v81 = (v128 - __p) >> 3;
                  if (v81 == 1)
                  {
                    v87 = 2;
                  }

                  else
                  {
                    v82 = 0;
                    v83 = v118 + v78;
                    v84 = __p + 14;
                    v85 = 1;
                    while (1)
                    {
                      if (v85 - 0x2E8BA2E8BA2E8BA3 * ((v79 - (v78 + v114)) >> 3) == 1)
                      {
                        v82 = 0;
                        goto LABEL_131;
                      }

                      ++v82;
                      v86 = *(v83 + 72);
                      if (__PAIR64__(*(v84 - 1), *(v84 - 6)) != __PAIR64__(WORD2(v86), v86))
                      {
                        goto LABEL_131;
                      }

                      if (*v84 != BYTE6(v86))
                      {
                        break;
                      }

                      v83 += 88;
                      ++v85;
                      v84 += 8;
                      if (v81 == v85)
                      {
                        v82 = (v128 - __p) >> 3;
                        goto LABEL_131;
                      }
                    }

                    v82 = v85;
LABEL_131:
                    v87 = v82 + 1;
                  }
                }

                else
                {
                  v87 = 1;
                }

                v115 = 0;
                v52 = 0;
                v88 = v122;
                if (v122 <= v87)
                {
                  v88 = v87;
                }

                v122 = v88;
                v39 = __p;
                if (__p)
                {
                  goto LABEL_66;
                }
              }
            }
          }

LABEL_67:
          if (v52 != 5 && v52)
          {
            break;
          }

          ++v33;
        }

        while (v33 != v123);
        v31 = v117;
        if (!(v115 & 1 | (v122 == 0)))
        {
          if (v122 != 1)
          {
            __p = 0;
            v128 = 0;
            v129 = 0;
            if (!(v122 >> 61))
            {
              operator new();
            }

            sub_1794();
          }

          v96 = sub_F695B0(v3, v7);
          v98 = *(v5 + 32);
          v97 = *(v5 + 40);
          if (v98 >= v97)
          {
            v104 = *(v5 + 24);
            v105 = 0x2E8BA2E8BA2E8BA3 * ((v98 - v104) >> 3) + 1;
            if (v105 > 0x2E8BA2E8BA2E8BALL)
            {
              sub_1794();
            }

            v106 = 0x2E8BA2E8BA2E8BA3 * ((v97 - v104) >> 3);
            if (2 * v106 > v105)
            {
              v105 = 2 * v106;
            }

            if (v106 >= 0x1745D1745D1745DLL)
            {
              v107 = 0x2E8BA2E8BA2E8BALL;
            }

            else
            {
              v107 = v105;
            }

            if (v107)
            {
              if (v107 <= 0x2E8BA2E8BA2E8BALL)
              {
                operator new();
              }

              sub_1808();
            }

            v108 = 8 * ((v98 - v104) >> 3);
            v109 = *(v96 + 16);
            *v108 = *v96;
            *(v108 + 16) = v109;
            v110 = *(v96 + 32);
            v111 = *(v96 + 48);
            v112 = *(v96 + 64);
            *(v108 + 80) = *(v96 + 80);
            *(v108 + 48) = v111;
            *(v108 + 64) = v112;
            *(v108 + 32) = v110;
            v103 = v108 + 88;
            v113 = (v108 - (v98 - v104));
            memcpy(v113, v104, v98 - v104);
            *(v5 + 24) = v113;
            *(v5 + 32) = v103;
            *(v5 + 40) = 0;
            if (v104)
            {
              operator delete(v104);
            }
          }

          else
          {
            v99 = *(v96 + 16);
            *v98 = *v96;
            *(v98 + 16) = v99;
            v100 = *(v96 + 32);
            v101 = *(v96 + 48);
            v102 = *(v96 + 64);
            *(v98 + 80) = *(v96 + 80);
            *(v98 + 48) = v101;
            *(v98 + 64) = v102;
            *(v98 + 32) = v100;
            v103 = v98 + 88;
          }

          *(v5 + 32) = v103;
          v31 = v117;
        }

        v33 = v130;
LABEL_151:
        if (v33)
        {
          v131 = v33;
          operator delete(v33);
        }

        ++v7;
        v118 += 88;
      }

      while (v7 != v31);
    }
  }
}

void sub_42605C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  v27 = *v24;
  if (*v24)
  {
    *(v24 + 8) = v27;
    operator delete(v27);
  }

  *(a15 + 56) = v24;
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  v28 = *(v25 - 112);
  if (v28)
  {
    *(v25 - 104) = v28;
    operator delete(v28);
    sub_4266B8(a15);
    _Unwind_Resume(a1);
  }

  sub_4266B8(a15);
  _Unwind_Resume(a1);
}

BOOL sub_42620C(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v6 = BYTE6(a2);
  v7 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v8 = (v7 - *v7);
  if (*v8 < 0x41u)
  {
    return 0;
  }

  v9 = v8[32];
  if (!v9)
  {
    return 0;
  }

  sub_40C268((v7 + v9 + *(v7 + v9)), v6, 2, &__p);
  v10 = __p;
  v11 = v16;
  result = __p != v16;
  if (__p)
  {
    v12 = __p != v16;
    v13 = __p;
    if (__p != v16)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 3;
        if (v14 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v13 = __p;
    }

    v16 = v10;
    operator delete(v13);
    return v12;
  }

  return result;
}

BOOL sub_426320(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v6 = BYTE6(a2);
  v7 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v8 = (v7 - *v7);
  if (*v8 < 0x41u)
  {
    return 0;
  }

  v9 = v8[32];
  if (!v9)
  {
    return 0;
  }

  sub_40C268((v7 + v9 + *(v7 + v9)), v6, 4, &__p);
  v10 = __p;
  v11 = v16;
  result = __p != v16;
  if (__p)
  {
    v12 = __p != v16;
    v13 = __p;
    if (__p != v16)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 3;
        if (v14 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v13 = __p;
    }

    v16 = v10;
    operator delete(v13);
    return v12;
  }

  return result;
}

BOOL sub_426434(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0;
  }

  v17 = v3;
  v18 = v4;
  v6 = BYTE6(a2);
  v7 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
  v8 = (v7 - *v7);
  if (*v8 < 0x41u)
  {
    return 0;
  }

  v9 = v8[32];
  if (!v9)
  {
    return 0;
  }

  sub_40C268((v7 + v9 + *(v7 + v9)), v6, 3, &__p);
  v10 = __p;
  v11 = v16;
  result = __p != v16;
  if (__p)
  {
    v12 = __p != v16;
    v13 = __p;
    if (__p != v16)
    {
      do
      {
        v14 = *(v11 - 1);
        v11 -= 3;
        if (v14 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v10);
      v13 = __p;
    }

    v16 = v10;
    operator delete(v13);
    return v12;
  }

  return result;
}

BOOL sub_426548(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *a3;
  v5 = a3[1];
  if (0x2E8BA2E8BA2E8BA3 * ((v5 - *a3) >> 3) + 1 < (v3 - *a2))
  {
    return 0;
  }

  if (v6 != v5)
  {
    while (v4 != a2[1])
    {
      v10 = *(v6 + 32);
      if (v10 == *v4 && (HIDWORD(v10) & 0xFFFFFF) == (HIDWORD(*v4) & 0xFFFFFF))
      {
        ++v4;
        v6 += 88;
        if (v6 == v5)
        {
          break;
        }
      }

      else
      {
        v12 = sub_2B51D8(*(a1 + 456), v10 & 0xFFFFFFFFFFFFLL);
        v13 = (v12 - *v12);
        if (*v13 < 0x9Bu)
        {
          break;
        }

        v14 = v13[77];
        if (!v14)
        {
          break;
        }

        if ((*(v12 + v14 + 2) & 1) == 0)
        {
          break;
        }

        v5 = a3[1];
        v6 += 88;
        if (v6 == v5)
        {
          break;
        }
      }
    }

    v3 = a2[1];
  }

  if (v4 != v3)
  {
    if (v4 == v3 - 1)
    {
      v15 = *(a3[1] - 16);
      v16 = *v4;
      if (v15 == *v4 && WORD2(v15) == WORD2(v16))
      {
        return BYTE6(v15) == BYTE6(v16);
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_4266B8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 56);
    v4 = *(a1 + 48);
    if (v3 != v2)
    {
      v5 = *(a1 + 56);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 48);
    }

    *(a1 + 56) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 24);
  if (v8)
  {
    *(a1 + 32) = v8;
    operator delete(v8);
  }

  v9 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v9;
    operator delete(v9);
  }

  return a1;
}

BOOL sub_426750@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  result = sub_F695B8(a2);
  if (!result)
  {
    sub_F69654(a2);
    v8 = *(a1 + 456);
    v9 = sub_F69654(a2);
    sub_320EC8(v8, *(v9 + 32) | (*(v9 + 36) << 32), v11);
    sub_386C(v10, a3);
  }

  return result;
}

void sub_4278C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, void **a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void **a35)
{
  v38 = *v35;
  if (*v35)
  {
    *(v35 + 8) = v38;
    operator delete(v38);
  }

  *(a14 + 56) = v35;
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A104(&a26);
  if (a29)
  {
    a30 = a29;
    operator delete(a29);
  }

  if (a32)
  {
    a33 = a32;
    operator delete(a32);
  }

  sub_1A104(&a35);
  sub_1A104((v36 - 184));
  sub_3874(v36 - 152);
  sub_25F00((v36 - 104));
  sub_4266B8(a14);
  _Unwind_Resume(a1);
}

uint64_t sub_427AA0(_OWORD *a1, unsigned int *a2, uint64_t *a3, int a4)
{
  v12 = a4;
  if (*a3 == a3[1])
  {
    return 0;
  }

  if (sub_11790(a1, a2, a3))
  {
    return 1;
  }

  result = 0;
  if (a4 && a4 != 0x7FFFFFFF)
  {
    sub_48DC(a2, &v12, v11);
    if (sub_11790(a1, v11, a3))
    {
      v9 = 1;
    }

    else
    {
      sub_4784(a2, &v12, v10);
      v9 = sub_11790(a1, v10, a3);
      sub_3874(v10);
    }

    sub_3874(v11);
    return v9;
  }

  return result;
}

void sub_427B9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  sub_3874(va);
  sub_3874(va1);
  _Unwind_Resume(a1);
}

void sub_427BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_3874(va);
  _Unwind_Resume(a1);
}

void sub_427BCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_3874(va);
  _Unwind_Resume(a1);
}

int *sub_427BE0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_30CC30(a1, a2);
  v5 = (result - *result);
  if (*v5 >= 9u && (v6 = v5[4]) != 0)
  {
    v7 = *(result + v6);
    v10 = 0uLL;
    v11 = 0;
    if (*(result + v6 + v7))
    {
      operator new();
    }

    result = sub_3219E8((result + v6 + v7), &v10);
    v8 = v10;
    v9 = v11;
  }

  else
  {
    v9 = 0;
    v8 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  return result;
}

void sub_427EB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_427EE0(uint64_t a1, void **a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *a3;
  v8 = *(a3 + 8);
  if (*a3)
  {
LABEL_4:
    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v11 = sub_4D1DC0(v7);
    if (v10)
    {
LABEL_5:
      v12 = sub_4D1DC0(v10);
      if (v8 >= v11 || v9 >= v12)
      {
        if (v8 < v11 != v9 < v12)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v13 = sub_4D1F50(v7, v8);
        if (v13 != sub_4D1F50(v10, v9))
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      while (v8 < v11)
      {
LABEL_12:
        if (v6 == a2[1])
        {
          return v6 == a2[1];
        }

        v14 = *(sub_4D1F50(v7, v8) + 32);
        v16 = v14 == *v6;
        v15 = HIDWORD(v14) & 0xFFFFFF;
        v16 = v16 && v15 == (HIDWORD(*v6) & 0xFFFFFF);
        if (v16)
        {
          ++v6;
          ++v8;
          goto LABEL_4;
        }

        v17 = *(a1 + 456);
        v18 = sub_4D1F50(v7, v8);
        v19 = sub_2B51D8(v17, *(v18 + 32) | (*(v18 + 36) << 32));
        v20 = (v19 - *v19);
        if (*v20 < 0x9Bu)
        {
          return v6 == a2[1];
        }

        v21 = v20[77];
        if (!v21 || (*(v19 + v21 + 2) & 1) == 0)
        {
          return v6 == a2[1];
        }

        ++v8;
        v10 = *(a3 + 16);
        v9 = *(a3 + 24);
        v11 = sub_4D1DC0(v7);
        if (v10)
        {
          goto LABEL_5;
        }
      }
    }
  }

  else
  {
    while (1)
    {
      v22 = *(a3 + 16);
      if (!v22)
      {
        break;
      }

      v23 = *(a3 + 24);
      if (v23 >= sub_4D1DC0(v22) || v6 == a2[1])
      {
        break;
      }

      v24 = *(sub_4D1F50(0, v8) + 32);
      v16 = v24 == *v6;
      v25 = HIDWORD(v24) & 0xFFFFFF;
      if (v16 && v25 == (HIDWORD(*v6) & 0xFFFFFF))
      {
        ++v6;
      }

      else
      {
        v27 = *(a1 + 456);
        v28 = sub_4D1F50(0, v8);
        v29 = sub_2B51D8(v27, *(v28 + 32) | (*(v28 + 36) << 32));
        v30 = (v29 - *v29);
        if (*v30 < 0x9Bu)
        {
          return v6 == a2[1];
        }

        v31 = v30[77];
        if (!v31 || (*(v29 + v31 + 2) & 1) == 0)
        {
          return v6 == a2[1];
        }
      }

      ++v8;
    }
  }

  return v6 == a2[1];
}

void sub_428100(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4)
  {
    v5 = a2[1];
    *v3 = *a2;
    v3[1] = v5;
    v6 = (v3 + 2);
LABEL_3:
    *(a1 + 8) = v6;
    return;
  }

  v7 = *a1;
  v8 = v3 - *a1;
  v9 = v8 >> 5;
  v10 = (v8 >> 5) + 1;
  if (v10 >> 59)
  {
    sub_1794();
  }

  v11 = v4 - v7;
  if (v11 >> 4 > v10)
  {
    v10 = v11 >> 4;
  }

  if (v11 >= 0x7FFFFFFFFFFFFFE0)
  {
    v12 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    if (!(v12 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v13 = (32 * v9);
  v14 = a2[1];
  *v13 = *a2;
  v13[1] = v14;
  v6 = 32 * v9 + 32;
  memcpy(0, v7, v8);
  *a1 = 0;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  *(a1 + 8) = v6;
}

void sub_428220(uint64_t a1, uint64_t a2)
{
  v5[23] = 19;
  strcpy(v5, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_EE90(a1, v3);
}

void sub_4283D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 + 519) < 0)
  {
    operator delete(*(v18 + 496));
  }

  sub_321B00(v18);
  _Unwind_Resume(a1);
}

void sub_428444(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v10 = &v11;
  v11 = v12;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_45AC50(a2);
  v5 = *(a1 + 456);
  v6 = sub_45AC50(a2);
  sub_320EC8(v5, *(v6 + 32) | (*(v6 + 36) << 32), v9);
  v7 = sub_3CF22C(a2);
  sub_386C(v8, *v7);
}

void sub_429768(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  sub_3874(v40 - 208);
  sub_25F00((v40 - 160));
  v42 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v42;
    operator delete(v42);
  }

  sub_252664(v40 - 136, *(v40 - 128));
  _Unwind_Resume(a1);
}

void sub_4298E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  *(a3 + 64) = 0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (!sub_F695B8(a2))
  {
    v148 = sub_F6D024(v3);
    if (v148)
    {
      v150 = 0;
      v151 = 0;
      v5 = 0;
      v146 = 1;
      v147 = 0;
      v155 = a1;
      v156 = v3;
      do
      {
        v154 = v5;
        v6 = sub_F6D17C(v3, v5);
        v7 = *(v6 + 32);
        v8 = *(a1 + 456);
        v9 = sub_2B51D8(v8, v7 & 0xFFFFFFFFFFFFLL);
        v10 = v7 & 0xFFFFFFFFFFFFFFLL;
        v11 = (v9 - *v9);
        if (*v11 >= 0x41u && v11[32])
        {
          v12 = sub_2B51D8(v8, v7 & 0xFFFFFFFFFFFFLL);
          v13 = (v12 - *v12);
          if (*v13 >= 0x41u && (v14 = v13[32]) != 0)
          {
            v15 = (v12 + v14 + *(v12 + v14));
          }

          else
          {
            v15 = 0;
          }

          sub_40C268(v15, BYTE6(v7), 1, &v165);
          v16 = v165;
          v17 = v166;
          if (v165)
          {
            v18 = v165;
            if (v165 != v166)
            {
              v19 = v166;
              do
              {
                v20 = *(v19 - 1);
                v19 -= 3;
                if (v20 < 0)
                {
                  operator delete(*v19);
                }
              }

              while (v19 != v16);
              v18 = v165;
              a1 = v155;
            }

            v166 = v16;
            operator delete(v18);
          }

          if (v16 != v17)
          {
            goto LABEL_22;
          }
        }

        if (v154 && sub_42620C(*(a1 + 456), v7 & 0xFFFFFFFFFFFFFFLL, 0))
        {
LABEL_22:
          v22 = *(a3 + 8);
          v21 = *(a3 + 16);
          if (v22 >= v21)
          {
            v24 = *a3;
            v25 = v22 - *a3;
            v26 = (v25 >> 3) + 1;
            if (v26 >> 61)
            {
              sub_1794();
            }

            v27 = v21 - v24;
            if (v27 >> 2 > v26)
            {
              v26 = v27 >> 2;
            }

            if (v27 >= 0x7FFFFFFFFFFFFFF8)
            {
              v28 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v28 = v26;
            }

            if (v28)
            {
              if (!(v28 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v29 = (8 * (v25 >> 3));
            *v29 = v10;
            v23 = v29 + 1;
            memcpy(0, v24, v25);
            *a3 = 0;
            *(a3 + 8) = v23;
            *(a3 + 16) = 0;
            if (v24)
            {
              operator delete(v24);
            }

            a1 = v155;
            v3 = v156;
          }

          else
          {
            *v22 = v10;
            v23 = v22 + 1;
          }

          *(a3 + 8) = v23;
        }

        if (sub_426320(*(a1 + 456), v7 & 0xFFFFFFFFFFFFFFLL, 0))
        {
          if (!v151)
          {
            v151 = v7;
            v146 = BYTE6(v7);
            v147 = WORD2(v7);
          }
        }

        else if (v151)
        {
          v30 = *(sub_F6D17C(v3, 0) + 32);
          if (v151 != v30 || v147 != WORD2(v30) || v146 != BYTE6(v30))
          {
            v32 = *(a3 + 8);
            v31 = *(a3 + 16);
            if (v32 >= v31)
            {
              v34 = *a3;
              v35 = v32 - *a3;
              v36 = (v35 >> 3) + 1;
              if (v36 >> 61)
              {
                goto LABEL_229;
              }

              v37 = v31 - v34;
              if (v37 >> 2 > v36)
              {
                v36 = v37 >> 2;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFF8)
              {
                v38 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 61))
                {
                  operator new();
                }

LABEL_231:
                sub_1808();
              }

              v39 = (8 * (v35 >> 3));
              *v39 = (v146 << 48) | (v147 << 32) | v151;
              v33 = v39 + 1;
              memcpy(0, v34, v35);
              *a3 = 0;
              *(a3 + 8) = v33;
              *(a3 + 16) = 0;
              if (v34)
              {
                operator delete(v34);
              }

              v3 = v156;
            }

            else
            {
              *v32 = (v146 << 48) | (v147 << 32) | v151;
              v33 = v32 + 1;
            }

            *(a3 + 8) = v33;
            v40 = *(sub_F6D17C(v3, v154 - 1) + 32);
            v42 = *(a3 + 8);
            v41 = *(a3 + 16);
            if (v42 >= v41)
            {
              v44 = *a3;
              v45 = v42 - *a3;
              v46 = (v45 >> 3) + 1;
              if (v46 >> 61)
              {
                sub_1794();
              }

              v47 = v41 - v44;
              if (v47 >> 2 > v46)
              {
                v46 = v47 >> 2;
              }

              if (v47 >= 0x7FFFFFFFFFFFFFF8)
              {
                v48 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v48 = v46;
              }

              if (v48)
              {
                if (!(v48 >> 61))
                {
                  operator new();
                }

                sub_1808();
              }

              v49 = (8 * (v45 >> 3));
              *v49 = v40 & 0xFFFFFFFFFFFFFFLL;
              v43 = v49 + 1;
              memcpy(0, v44, v45);
              *a3 = 0;
              *(a3 + 8) = v43;
              *(a3 + 16) = 0;
              if (v44)
              {
                operator delete(v44);
              }

              v3 = v156;
            }

            else
            {
              *v42 = v40 & 0xFFFFFFFFFFFFFFLL;
              v43 = v42 + 1;
            }

            a1 = v155;
            v151 = 0;
            *(a3 + 8) = v43;
            v146 = 1;
            v147 = 0;
          }
        }

        else
        {
          v151 = 0;
        }

        if (v154 == sub_F6D024(v3) - 1)
        {
          return;
        }

        if (sub_426434(*(a1 + 456), v10, 0))
        {
          v51 = *(a3 + 8);
          v50 = *(a3 + 16);
          if (v51 >= v50)
          {
            v53 = *a3;
            v54 = v51 - *a3;
            v55 = (v54 >> 3) + 1;
            if (v55 >> 61)
            {
LABEL_229:
              sub_1794();
            }

            v56 = v50 - v53;
            if (v56 >> 2 > v55)
            {
              v55 = v56 >> 2;
            }

            if (v56 >= 0x7FFFFFFFFFFFFFF8)
            {
              v57 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v57 = v55;
            }

            if (v57)
            {
              if (!(v57 >> 61))
              {
                operator new();
              }

              goto LABEL_231;
            }

            v58 = (8 * (v54 >> 3));
            *v58 = v10;
            v52 = v58 + 1;
            memcpy(0, v53, v54);
            *a3 = 0;
            *(a3 + 8) = v52;
            *(a3 + 16) = 0;
            if (v53)
            {
              operator delete(v53);
            }

            v3 = v156;
          }

          else
          {
            *v51 = v10;
            v52 = v51 + 1;
          }

          *(a3 + 8) = v52;
        }

        v59 = *(a1 + 456);
        v159 = (*(v6 + 32) & 0xFFFFFFFFFFFFFFLL);
        v166 = 0;
        v167 = 0;
        v165 = 0;
        __p = v59;
        v163 = &v159;
        sub_32140C(v59, v159, &v165, &__p);
        v60 = v165;
        v157 = v166;
        if (v165 == v166)
        {
          goto LABEL_224;
        }

        v153 = 0;
        v149 = 0;
        v152 = 96 * v154;
        do
        {
          v61 = *(a1 + 456);
          v62 = *v60;
          v163 = 0;
          v164 = 0;
          __p = 0;
          v63 = sub_30CC30(v61, v62);
          v64 = (v63 - *v63);
          if (*v64 >= 7u)
          {
            v65 = v64[3];
            if (v65)
            {
              if (*(v63 + v65 + *(v63 + v65)))
              {
                operator new();
              }
            }
          }

          v66 = __p;
          if (__p == v163)
          {
            v71 = 5;
            v67 = a3;
            if (__p)
            {
              goto LABEL_137;
            }

            goto LABEL_138;
          }

          v67 = a3;
          v68 = sub_30CC30(*(a1 + 456), *v60);
          v69 = (v68 - *v68);
          v70 = *v69;
          if (v70 < 0xF)
          {
            if (v70 < 5)
            {
              goto LABEL_120;
            }
          }

          else if (v69[7] && (*(v68 + v69[7]) & 1) == 0)
          {
            goto LABEL_120;
          }

          if (v69[2])
          {
            if (v70 < 9 || *(v68 + v69[2]) != 0)
            {
              goto LABEL_120;
            }
          }

          else if (v70 < 9)
          {
            goto LABEL_120;
          }

          if (v69[4])
          {
            v73 = sub_5FC64(v3);
            v74 = sub_445EF4(v156);
            v159 = (v73 + v152);
            v160 = v74;
            if (sub_42AC2C(a1, &__p, &v159))
            {
              v75 = v163 - __p;
              v3 = v156;
              if (v163 - __p == 16)
              {
                v76 = sub_F6C648(v156, v154);
                v78 = *(a3 + 32);
                v77 = *(a3 + 40);
                if (v78 >= v77)
                {
                  v106 = *(a3 + 24);
                  v107 = 0xAAAAAAAAAAAAAAABLL * ((v78 - v106) >> 5) + 1;
                  if (v107 > 0x2AAAAAAAAAAAAAALL)
                  {
                    sub_1794();
                  }

                  v108 = 0xAAAAAAAAAAAAAAABLL * ((v77 - v106) >> 5);
                  if (2 * v108 > v107)
                  {
                    v107 = 2 * v108;
                  }

                  if (v108 >= 0x155555555555555)
                  {
                    v109 = 0x2AAAAAAAAAAAAAALL;
                  }

                  else
                  {
                    v109 = v107;
                  }

                  if (v109)
                  {
                    if (v109 <= 0x2AAAAAAAAAAAAAALL)
                    {
                      operator new();
                    }

                    sub_1808();
                  }

                  v121 = (32 * ((v78 - v106) >> 5));
                  v122 = v76[1];
                  *v121 = *v76;
                  v121[1] = v122;
                  v123 = v76[2];
                  v124 = v76[3];
                  v125 = v76[5];
                  v121[4] = v76[4];
                  v121[5] = v125;
                  v121[2] = v123;
                  v121[3] = v124;
                  v126 = v121 + 6;
                  v127 = v121 - (v78 - v106);
                  memcpy(v127, v106, v78 - v106);
                  *(a3 + 24) = v127;
                  *(a3 + 32) = v126;
                  *(a3 + 40) = 0;
                  if (v106)
                  {
                    operator delete(v106);
                  }

                  v3 = v156;
                  *(a3 + 32) = v126;
                  v71 = 4;
                  v66 = __p;
                  if (__p)
                  {
                    goto LABEL_137;
                  }
                }

                else
                {
                  v79 = v76[1];
                  *v78 = *v76;
                  *(v78 + 1) = v79;
                  v80 = v76[2];
                  v81 = v76[3];
                  v82 = v76[5];
                  *(v78 + 4) = v76[4];
                  *(v78 + 5) = v82;
                  *(v78 + 2) = v80;
                  *(v78 + 3) = v81;
                  *(a3 + 32) = v78 + 96;
                  v71 = 4;
                  v66 = __p;
                  if (__p)
                  {
                    goto LABEL_137;
                  }
                }
              }

              else
              {
                v89 = v75 >> 3;
                if ((v75 >> 3) >= 3)
                {
                  v159 = 0;
                  v160 = 0;
                  v90 = v154;
                  v161 = 0;
                  do
                  {
                    while (1)
                    {
                      v91 = *(sub_F6D17C(v3, v90) + 32);
                      v92 = v160;
                      if (v160 >= v161)
                      {
                        break;
                      }

                      *v160 = v91 & 0xFFFFFFFFFFFFFFLL;
                      a1 = v155;
                      v160 = v92 + 8;
                      ++v90;
                      if (!--v89)
                      {
                        goto LABEL_159;
                      }
                    }

                    v93 = v159;
                    v94 = v160 - v159;
                    v95 = (v160 - v159) >> 3;
                    v96 = v95 + 1;
                    if ((v95 + 1) >> 61)
                    {
                      sub_1794();
                    }

                    v97 = v161 - v159;
                    if ((v161 - v159) >> 2 > v96)
                    {
                      v96 = v97 >> 2;
                    }

                    if (v97 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v98 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v98 = v96;
                    }

                    if (v98)
                    {
                      if (!(v98 >> 61))
                      {
                        operator new();
                      }

                      sub_1808();
                    }

                    v99 = (8 * v95);
                    v100 = &v99[-((v160 - v159) >> 3)];
                    *v99 = v91 & 0xFFFFFFFFFFFFFFLL;
                    v101 = (v99 + 1);
                    memcpy(v100, v93, v94);
                    v159 = v100;
                    v160 = v101;
                    v161 = 0;
                    if (v93)
                    {
                      operator delete(v93);
                    }

                    a1 = v155;
                    v3 = v156;
                    v160 = v101;
                    ++v90;
                    --v89;
                  }

                  while (v89);
LABEL_159:
                  v102 = *(a3 + 56);
                  if (v102 >= *(a3 + 64))
                  {
                    v103 = sub_42F6C8((a3 + 48), &v159);
                  }

                  else
                  {
                    *v102 = 0;
                    v102[1] = 0;
                    v102[2] = 0;
                    if (v160 != v159)
                    {
                      if (((v160 - v159) & 0x8000000000000000) == 0)
                      {
                        operator new();
                      }

                      sub_1794();
                    }

                    v103 = (v102 + 3);
                    v3 = v156;
                  }

                  *(a3 + 56) = v103;
                  if (v159)
                  {
                    v160 = v159;
                    operator delete(v159);
                  }
                }

                v71 = 4;
                v66 = __p;
                if (__p)
                {
                  goto LABEL_137;
                }
              }
            }

            else
            {
              v71 = 5;
              v3 = v156;
              v66 = __p;
              if (__p)
              {
                goto LABEL_137;
              }
            }

            goto LABEL_138;
          }

LABEL_120:
          v83 = sub_30CC30(*(a1 + 456), *v60);
          v84 = (v83 - *v83);
          v85 = *v84;
          if (v85 < 0xF)
          {
            if (v85 < 5)
            {
              goto LABEL_136;
            }
          }

          else if (v84[7] && (*(v83 + v84[7]) & 1) == 0)
          {
            goto LABEL_136;
          }

          if (!v84[2] || (v85 >= 9 ? (v86 = *(v83 + v84[2]) == 1) : (v86 = 0), !v86 || !v84[4]))
          {
LABEL_136:
            v71 = 0;
            v66 = __p;
            if (!__p)
            {
              goto LABEL_138;
            }

LABEL_137:
            v163 = v66;
            operator delete(v66);
            goto LABEL_138;
          }

          if ((v153 & 1) != 0 || (v88 = __p, v87 = v163, sub_F6D008(v3) - v154 + 1 < (v87 - v88) >> 3))
          {
            v71 = 5;
            v153 = 1;
            v66 = __p;
            if (__p)
            {
              goto LABEL_137;
            }
          }

          else
          {
            v104 = sub_5FC64(v3);
            v105 = sub_445EF4(v156);
            v159 = (v104 + v152);
            v160 = v105;
            if (sub_42AC2C(a1, &__p, &v159))
            {
              v71 = 5;
              v153 = 1;
              v3 = v156;
              v66 = __p;
              if (__p)
              {
                goto LABEL_137;
              }
            }

            else
            {
              v3 = v156;
              if (v163 - __p != 16 && (v110 = sub_5FC64(v156), v111 = sub_445EF4(v156), v112 = *(v110 + v152 + 32), __PAIR64__(*(__p + 2), *__p) == __PAIR64__(WORD2(v112), v112)) && *(__p + 6) == BYTE6(v112))
              {
                v113 = (v163 - __p) >> 3;
                if (v113 == 1)
                {
                  v119 = 2;
                }

                else
                {
                  v114 = 0;
                  v115 = v150 + v110;
                  v116 = __p + 14;
                  v117 = 1;
                  while (1)
                  {
                    if (0x5555555555555555 * ((v111 - (v110 + v152)) >> 5) + v117 == 1)
                    {
                      v114 = 0;
                      goto LABEL_203;
                    }

                    ++v114;
                    v118 = *(v115 + 72);
                    if (__PAIR64__(*(v116 - 1), *(v116 - 6)) != __PAIR64__(WORD2(v118), v118))
                    {
                      goto LABEL_203;
                    }

                    if (*v116 != BYTE6(v118))
                    {
                      break;
                    }

                    v115 += 96;
                    ++v117;
                    v116 += 8;
                    if (v113 == v117)
                    {
                      v114 = (v163 - __p) >> 3;
                      goto LABEL_203;
                    }
                  }

                  v114 = v117;
LABEL_203:
                  v119 = v114 + 1;
                }
              }

              else
              {
                v119 = 1;
              }

              v153 = 0;
              v71 = 0;
              v120 = v149;
              if (v149 <= v119)
              {
                v120 = v119;
              }

              v149 = v120;
              v66 = __p;
              if (__p)
              {
                goto LABEL_137;
              }
            }
          }

LABEL_138:
          if (v71 != 5 && v71)
          {
            break;
          }

          ++v60;
        }

        while (v60 != v157);
        if (!(v153 & 1 | (v149 == 0)))
        {
          if (v149 != 1)
          {
            __p = 0;
            v163 = 0;
            v164 = 0;
            if (!(v149 >> 61))
            {
              operator new();
            }

            sub_1794();
          }

          v128 = sub_F6C648(v3, v154);
          v130 = v67[4];
          v129 = v67[5];
          if (v130 >= v129)
          {
            v136 = v67[3];
            v137 = 0xAAAAAAAAAAAAAAABLL * ((v130 - v136) >> 5) + 1;
            if (v137 > 0x2AAAAAAAAAAAAAALL)
            {
              sub_1794();
            }

            v138 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v136) >> 5);
            if (2 * v138 > v137)
            {
              v137 = 2 * v138;
            }

            if (v138 >= 0x155555555555555)
            {
              v139 = 0x2AAAAAAAAAAAAAALL;
            }

            else
            {
              v139 = v137;
            }

            if (v139)
            {
              if (v139 <= 0x2AAAAAAAAAAAAAALL)
              {
                operator new();
              }

              sub_1808();
            }

            v140 = (32 * ((v130 - v136) >> 5));
            v141 = v128[1];
            *v140 = *v128;
            v140[1] = v141;
            v142 = v128[2];
            v143 = v128[3];
            v144 = v128[5];
            v140[4] = v128[4];
            v140[5] = v144;
            v140[2] = v142;
            v140[3] = v143;
            v135 = v140 + 6;
            v145 = v140 - (v130 - v136);
            memcpy(v145, v136, v130 - v136);
            v67[3] = v145;
            v67[4] = v135;
            v67[5] = 0;
            if (v136)
            {
              operator delete(v136);
            }

            v3 = v156;
          }

          else
          {
            v131 = v128[1];
            *v130 = *v128;
            *(v130 + 1) = v131;
            v132 = v128[2];
            v133 = v128[3];
            v134 = v128[5];
            *(v130 + 4) = v128[4];
            *(v130 + 5) = v134;
            *(v130 + 2) = v132;
            *(v130 + 3) = v133;
            v135 = v130 + 96;
          }

          v67[4] = v135;
        }

        v60 = v165;
LABEL_224:
        if (v60)
        {
          v166 = v60;
          operator delete(v60);
        }

        v5 = v154 + 1;
        v150 += 96;
      }

      while (v154 + 1 != v148);
    }
  }
}

void sub_42A9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28)
{
  v31 = *v28;
  if (*v28)
  {
    *(v28 + 8) = v31;
    operator delete(v31);
  }

  *(a22 + 56) = v28;
  if (__p)
  {
    operator delete(__p);
  }

  v32 = *(v29 - 112);
  if (v32)
  {
    *(v29 - 104) = v32;
    operator delete(v32);
    sub_4266B8(a22);
    _Unwind_Resume(a1);
  }

  sub_4266B8(a22);
  _Unwind_Resume(a1);
}

BOOL sub_42AC2C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = *a3;
  v5 = a3[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - *a3) >> 5) + 1 < v3 - *a2)
  {
    return 0;
  }

  if (v6 != v5)
  {
    while (v4 != a2[1])
    {
      v10 = *(v6 + 32);
      if (v10 == *v4 && (HIDWORD(v10) & 0xFFFFFF) == (HIDWORD(*v4) & 0xFFFFFF))
      {
        ++v4;
        v6 += 96;
        if (v6 == v5)
        {
          break;
        }
      }

      else
      {
        v12 = sub_2B51D8(*(a1 + 456), v10 & 0xFFFFFFFFFFFFLL);
        v13 = (v12 - *v12);
        if (*v13 < 0x9Bu)
        {
          break;
        }

        v14 = v13[77];
        if (!v14)
        {
          break;
        }

        if ((*(v12 + v14 + 2) & 1) == 0)
        {
          break;
        }

        v5 = a3[1];
        v6 += 96;
        if (v6 == v5)
        {
          break;
        }
      }
    }

    v3 = a2[1];
  }

  if (v4 != v3)
  {
    if (v4 == v3 - 1)
    {
      v15 = *(a3[1] - 24);
      v16 = *v4;
      if (v15 == *v4 && WORD2(v15) == WORD2(v16))
      {
        return BYTE6(v15) == BYTE6(v16);
      }
    }

    return 0;
  }

  return 1;
}

BOOL sub_42AD94@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W3>, uint64_t a4@<X8>)
{
  *(a4 + 64) = 0;
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  result = sub_F695B8(a2);
  if (!result)
  {
    sub_F69654(a2);
    v8 = *(a1 + 456);
    v9 = sub_F69654(a2);
    sub_320EC8(v8, *(v9 + 32) | (*(v9 + 36) << 32), v11);
    sub_386C(v10, a3);
  }

  return result;
}

void sub_42C618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, void **a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38)
{
  v41 = *v38;
  if (*v38)
  {
    *(v38 + 8) = v41;
    operator delete(v41);
  }

  *(a22 + 56) = v38;
  if (__p)
  {
    operator delete(__p);
  }

  sub_1A104(&a30);
  if (a33)
  {
    a34 = a33;
    operator delete(a33);
  }

  if (a37)
  {
    a38 = a37;
    operator delete(a37);
  }

  sub_1A104((v39 - 208));
  sub_1A104((v39 - 184));
  sub_3874(v39 - 152);
  sub_25F00((v39 - 104));
  sub_4266B8(a22);
  _Unwind_Resume(a1);
}

void sub_42C878(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a1 + 528) != 1)
  {
    return;
  }

  sub_4D1E00(a2, __p);
  sub_4D1E24(a2, &v32);
  sub_42CC9C(__p, &v32, &v34);
  sub_4D1E24(a2, __p);
  v6 = v35;
  v7 = v36;
  v8 = v30;
  if (!v35)
  {
    if (!v30)
    {
      return;
    }

    v10 = 0;
LABEL_8:
    v11 = sub_4D1DC0(v8);
    if (*(&v8 + 1) < v11 && v10)
    {
      v13 = sub_4D1F50(v6, v7);
      if (v13 == sub_4D1F50(v8, *(&v8 + 1)))
      {
        return;
      }
    }

    else if (((v10 ^ (*(&v8 + 1) < v11)) & 1) == 0)
    {
      return;
    }

    goto LABEL_15;
  }

  v9 = sub_4D1DC0(v35);
  v10 = v7 < v9;
  if (v8)
  {
    goto LABEL_8;
  }

  if (v7 >= v9)
  {
    return;
  }

LABEL_15:
  v14 = v36;
  sub_4D1E24(a2, __p);
  v15 = *(&v30 + 1);
  v16 = v14 - *(&v30 + 1);
  v17 = 0uLL;
  *__p = 0u;
  v30 = 0u;
  v31 = 1065353216;
  v18 = v14 - v15;
  if (v14 == v15)
  {
    v19 = 0;
  }

  else
  {
    v20 = 0;
    do
    {
      v21 = sub_4D1F50(a2, v20);
      sub_31361C(v21, &v32);
      v22 = v32;
      v23 = v33;
      if (v32 != v33)
      {
        do
        {
          sub_430BC8(__p, v22++)[4] = v20;
        }

        while (v22 != v23);
        v22 = v32;
      }

      if (v22)
      {
        v33 = v22;
        operator delete(v22);
      }

      ++v20;
    }

    while (v20 != v18);
    v19 = v30;
    v32 = a1;
    v33 = a2;
    if (v30)
    {
      sub_432754(&v32, (v30 + 16));
    }
  }

  if (*(&v30 + 1))
  {
    for (; v19; v19 = *v19)
    {
      sub_42CDE8(a1, (v19 + 2), a2, v16 - 1, a3);
    }

    v24 = a3[1];
    v25 = 126 - 2 * __clz((v24 - *a3) >> 5);
    if (v24 == *a3)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    sub_430F40(*a3, v24, &v32, v26, 1, v17);
    v19 = v30;
  }

  if (v19)
  {
    do
    {
      v27 = *v19;
      operator delete(v19);
      v19 = v27;
    }

    while (v27);
  }

  v28 = __p[0];
  __p[0] = 0;
  if (v28)
  {
    operator delete(v28);
  }
}

void sub_42CC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  sub_11BD8(&a11);
  v20 = *v18;
  if (!*v18)
  {
    _Unwind_Resume(a1);
  }

  *(v18 + 8) = v20;
  operator delete(v20);
  _Unwind_Resume(a1);
}

__n128 sub_42CC9C@<Q0>(__n128 *a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  for (i = a1[1].n128_u64[1]; ; a1[1].n128_u64[1] = i)
  {
    v7 = a1[1].n128_u64[0];
    v9 = *(a2 + 16);
    v8 = *(a2 + 24);
    if (!v7)
    {
      break;
    }

    v10 = sub_4D1DC0(a1[1].n128_u64[0]);
    v11 = v10;
    if (v9)
    {
      v12 = sub_4D1DC0(v9);
      if (i >= v11 || v8 >= v12)
      {
        if (i < v11 == v8 < v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v14 = sub_4D1F50(v7, i);
        if (v14 == sub_4D1F50(v9, v8))
        {
          goto LABEL_26;
        }
      }
    }

    else if (i >= v10)
    {
      goto LABEL_26;
    }

LABEL_19:
    v15 = sub_4D1F50(a1[1].n128_u64[0], a1[1].n128_u64[1] - 1);
    v16 = (*v15 - **v15);
    v17 = *v16;
    if (*(v15 + 38))
    {
      if (v17 < 0x9B)
      {
        goto LABEL_3;
      }

      v18 = v16[77];
      if (!v18)
      {
        goto LABEL_3;
      }

      v19 = 2;
    }

    else
    {
      if (v17 < 0x9B)
      {
        goto LABEL_3;
      }

      v18 = v16[77];
      if (!v18)
      {
        goto LABEL_3;
      }

      v19 = 1;
    }

    if ((*(*v15 + v18) & v19) != 0)
    {
      goto LABEL_26;
    }

LABEL_3:
    i = a1[1].n128_u64[1] - 1;
  }

  if (v9 && v8 < sub_4D1DC0(*(a2 + 16)))
  {
    goto LABEL_19;
  }

LABEL_26:
  result = *a1;
  v21 = a1[1];
  *a3 = *a1;
  a3[1] = v21;
  return result;
}

void sub_42CDE8(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a4;
  v9 = *a2;
  v10 = sub_42F924(a1[58], *a2);
  v11 = (v10 - *v10);
  if (*v11 < 7u)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v12 = v11[3];
    LOBYTE(v11) = 1;
    if (v12)
    {
      v13 = *(v10 + v12);
      LODWORD(v11) = 1u >> v13;
      if (v13 > 4)
      {
        LOBYTE(v11) = 0;
      }
    }
  }

  *&v53 = v9;
  BYTE8(v53) = v11;
  v54 = -1;
  v55 = 0;
  v14 = a1[57];
  v15 = sub_45AC50(a3);
  sub_2B7A20(v14, *(v15 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  sub_31BF20(__p, &v51);
  if (__p[0].i64[1])
  {
    __p[1].i64[0] = __p[0].i64[1];
    operator delete(__p[0].i64[1]);
  }

  v16 = sub_4D2138(a3);
  sub_2F4C8(&v51, 0, __p, v16 / -1000000000.0 + 1.0, 1.0);
  if (v51.i64[0])
  {
    v51.i64[1] = v51.i64[0];
    operator delete(v51.i64[0]);
  }

  v17 = __p[0].i64[0];
  v51 = __p[0];
  v52 = __p[1].i64[0];
  v18 = a1[58];
  v47[0] = *a2;
  __p[0].i64[0] = v18;
  __p[0].i64[1] = v47;
  v19 = sub_42FD60(v18 + 3888, v17);
  LOBYTE(v55) = v19;
  if (v19)
  {
    v54 = 0;
  }

  v20 = a1[57];
  v21 = sub_4D1F50(a3, v56);
  sub_2B7A20(v20, *(v21 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
  sub_31BF20(__p, &v48);
  if (__p[0].i64[1])
  {
    __p[1].i64[0] = __p[0].i64[1];
    operator delete(__p[0].i64[1]);
  }

  v22 = v56;
  if (v22 + 1 == sub_4D1DC0(a3))
  {
    v23 = sub_4D2140(a3);
    sub_2F4C8(&v48, 0, __p, 0.0, v23 / 1000000000.0);
    if (v48)
    {
      *&v49 = v48;
      operator delete(v48);
    }

    v48 = __p[0].i64[0];
    v49 = *(__p + 8);
    v24 = __p[0].i64[1];
  }

  else
  {
    v24 = v49;
  }

  v25 = a1[58];
  v47[0] = *a2;
  __p[0].i64[0] = v25;
  __p[0].i64[1] = v47;
  v40 = a5;
  HIBYTE(v55) = sub_42FD60(v25 + 3888, (v24 - 12));
  v47[0] = a1;
  v47[1] = &v56;
  v47[2] = a2;
  v47[3] = a3;
  v26 = v56;
  if (v56 != -1)
  {
    v27 = 0;
    v28 = 0;
    do
    {
      v29 = sub_4D1F50(a3, v28);
      sub_3132D4(v29, &v45);
      sub_313478(v29, &v43);
      v31 = v45;
      if (v45 != v46)
      {
        while (*v31 != *a2 || v31[1] != *(a2 + 4))
        {
          v31 += 2;
          if (v31 == v46)
          {
            goto LABEL_39;
          }
        }
      }

      if (v31 != v46 && v54 == -1)
      {
        sub_2B7A20(a1[57], *(v29 + 32) & 0xFFFFFFFFFFFFFFLL, __p);
        sub_31BF20(__p, &v41);
        if (__p[0].i64[1])
        {
          __p[1].i64[0] = __p[0].i64[1];
          operator delete(__p[0].i64[1]);
        }

        v32 = a1[58];
        if (v28 == v56)
        {
          v33 = &v49;
        }

        else
        {
          v33 = &v42;
        }

        v34 = *v33 - 12;
        v57 = *a2;
        __p[0].i64[0] = v32;
        __p[0].i64[1] = &v57;
        if (sub_42FD60(v32 + 3888, v34))
        {
          v54 = v28;
        }

        if (v41)
        {
          v42 = v41;
          operator delete(v41);
        }
      }

LABEL_39:
      v35 = v43;
      if (v43 != v44)
      {
        while (*v35 != *a2 || v35[1] != *(a2 + 4))
        {
          v35 += 2;
          if (v35 == v44)
          {
            goto LABEL_46;
          }
        }
      }

      if (v35 != v44 && (v27 += sub_4D23F8(a3, v28, v30), v54 == -1))
      {
        v54 = v28;
        if (v53)
        {
          v38 = DWORD1(v53) == -1;
        }

        else
        {
          v38 = 1;
        }

        if (v38 || v28 == -1)
        {
          goto LABEL_57;
        }
      }

      else
      {
LABEL_46:
        if (v53)
        {
          v36 = DWORD1(v53) == -1;
        }

        else
        {
          v36 = 1;
        }

        if (v36 || v54 == -1)
        {
          goto LABEL_57;
        }
      }

      if (v27 >= a1[67] || (BYTE8(v53) & 1) != 0 || (v55 & 1) != 0 || HIBYTE(v55) == 1)
      {
        if ((sub_42D634(v47, &v53) & 1) == 0)
        {
          if (v55 == 1)
          {
            __p[1].i8[7] = 21;
            strcpy(__p[0].i8, "37.746591,-119.584465");
            sub_35418(__p);
          }

          sub_428100(v40, &v53);
        }

        if (v43)
        {
          v44 = v43;
          operator delete(v43);
        }

        if (v45)
        {
          v46 = v45;
          operator delete(v45);
        }

        break;
      }

LABEL_57:
      if (v43)
      {
        v44 = v43;
        operator delete(v43);
      }

      if (v45)
      {
        v46 = v45;
        operator delete(v45);
      }

      v36 = v28++ == v26;
    }

    while (!v36);
  }

  if (v48)
  {
    *&v49 = v48;
    operator delete(v48);
  }

  if (v51.i64[0])
  {
    v51.i64[1] = v51.i64[0];
    operator delete(v51.i64[0]);
  }
}

void sub_42D324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, void *a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
    v34 = a17;
    if (!a17)
    {
LABEL_5:
      v35 = a24;
      if (!a24)
      {
LABEL_10:
        v36 = *(v32 - 176);
        if (v36)
        {
          *(v32 - 168) = v36;
          operator delete(v36);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_9:
      operator delete(v35);
      goto LABEL_10;
    }
  }

  else
  {
    v34 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  operator delete(v34);
  v35 = a24;
  if (!a24)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_42D60C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_42D634(uint64_t a1, _BYTE *a2)
{
  if (a2[8] == 1 && a2[24] == 1 && a2[25] == 1)
  {
    v4 = 20;
    strcpy(__p, "40.756125,-73.986566");
    sub_35418(__p);
  }

  return 0;
}

void sub_42D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_42D7CC(uint64_t a1, uint64_t a2)
{
  v5[23] = 19;
  strcpy(v5, "GDFTimeDomainParser");
  memset(__p, 0, sizeof(__p));
  v3 = sub_3AEC94(a2, v5, __p);
  sub_EE90(a1, v3);
}

void sub_42D984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1A104(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (*(v18 + 519) < 0)
  {
    operator delete(*(v18 + 496));
  }

  sub_321B00(v18);
  _Unwind_Resume(a1);
}

void sub_42DBBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_42DBE4(uint64_t result, unint64_t a2, unsigned int a3)
{
  v3 = *(*result + 8);
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  v4 = *(*result + 8);
  while (1)
  {
    while (1)
    {
      v5 = v4;
      v6 = v4[4];
      if (v6 <= a2)
      {
        break;
      }

      v4 = *v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    if (v6 >= a2)
    {
      break;
    }

    v4 = v5[1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v7 = *(v5 + 40);
  while (1)
  {
    while (1)
    {
      v8 = v3;
      v9 = v3[4];
      if (v9 <= a2)
      {
        break;
      }

      v3 = *v8;
      if (!*v8)
      {
        goto LABEL_13;
      }
    }

    if (v9 >= a2)
    {
      break;
    }

    v3 = v8[1];
    if (!v3)
    {
LABEL_13:
      operator new();
    }
  }

  if (v7 <= a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = v7;
  }

  *(v8 + 40) = v10;
  return result;
}

uint64_t sub_42DD74(uint64_t *a1, char *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  if (v3 < v4)
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    v5 = (v3 + 40);
LABEL_3:
    a1[1] = v5;
    return v5 - 40;
  }

  v7 = *a1;
  v8 = &v3[-*a1];
  v9 = 0xCCCCCCCCCCCCCCCDLL * (v8 >> 3) + 1;
  if (v9 > 0x666666666666666)
  {
    sub_1794();
  }

  v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x333333333333333)
  {
    v11 = 0x666666666666666;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v12 = 8 * (v8 >> 3);
  *v12 = *a2;
  *(v12 + 8) = *(a2 + 8);
  *(v12 + 24) = *(a2 + 24);
  v5 = v12 + 40;
  v13 = v12 - v8;
  if (v7 != v3)
  {
    v14 = v13;
    do
    {
      *v14 = *v7;
      *(v14 + 8) = *(v7 + 8);
      *(v14 + 24) = *(v7 + 24);
      v7 += 40;
      v14 += 40;
    }

    while (v7 != v3);
    v7 = *a1;
  }

  *a1 = v13;
  a1[1] = v5;
  a1[2] = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  operator delete(v7);
  a1[1] = v5;
  return v5 - 40;
}

void sub_42DEF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12[0] = 0;
  v12[1] = 0;
  v10 = &v11;
  v11 = v12;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  sub_45AC50(a2);
  v5 = *(a1 + 456);
  v6 = sub_45AC50(a2);
  sub_320EC8(v5, *(v6 + 32) | (*(v6 + 36) << 32), v9);
  v7 = sub_3CF22C(a2);
  sub_386C(v8, *v7);
}

void sub_42F21C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40)
{
  sub_3874(v40 - 208);
  sub_25F00((v40 - 160));
  v42 = *a14;
  if (*a14)
  {
    *(a14 + 8) = v42;
    operator delete(v42);
  }

  sub_252664(v40 - 136, *(v40 - 128));
  _Unwind_Resume(a1);
}

void sub_42F394(uint64_t *a1, void *a2)
{
  *a1 = sub_3AF998(a2);
  a1[1] = sub_3AF144(a2);
  operator new();
}

void sub_42F4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_42F67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

void **sub_42F6C8(void ***a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * (a1[2] - *a1) > v2)
  {
    v2 = 0x5555555555555556 * (a1[2] - *a1);
  }

  if (0xAAAAAAAAAAAAAAABLL * (a1[2] - *a1) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = (8 * (a1[1] - *a1));
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  v6 = a2[1] - *a2;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = (v5 + 3);
  v8 = *a1;
  v9 = a1[1];
  v10 = (v5 + *a1 - v9);
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v10;
    do
    {
      *v12 = 0;
      v12[1] = 0;
      v12[2] = 0;
      *v12 = *v11;
      v12[2] = v11[2];
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      v11 += 3;
      v12 += 3;
    }

    while (v11 != v9);
    do
    {
      v13 = *v8;
      if (*v8)
      {
        v8[1] = v13;
        operator delete(v13);
      }

      v8 += 3;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_42F890(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_42F8B4(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v5 = v2 - 24;
        v4 = *(v2 - 24);
        *(a1 + 16) = v2 - 24;
        if (!v4)
        {
          break;
        }

        *(v2 - 16) = v4;
        operator delete(v4);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 24;
    }

    while (v5 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_42F924(uint64_t a1, unint64_t a2)
{
  v3 = sub_42FA60(a1 + 16, a2, 1);
  if (!v3 || (v4 = &v3[-*v3], *v4 < 5u) || (v5 = *(v4 + 2)) == 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v12, a2);
    sub_23E08("Special travel zone access could not find quad node ", &v12, &v13);
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = &v13;
    }

    else
    {
      v9 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v11 = sub_2D390(exception, v9, size);
  }

  v6 = &v3[4 * HIDWORD(a2) + v5 + *&v3[v5]];
  return v6 + 4 + *(v6 + 4);
}