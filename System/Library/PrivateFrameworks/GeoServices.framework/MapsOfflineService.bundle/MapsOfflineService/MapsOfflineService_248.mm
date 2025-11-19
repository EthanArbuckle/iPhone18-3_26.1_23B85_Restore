void **sub_F4C850(void **a1)
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

        v6 = v3 - 120;
        v7 = *(v3 - 15);
        if (v7)
        {
          *(v3 - 14) = v7;
          operator delete(v7);
        }

        v3 -= 120;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_F4C8D8(uint64_t a1)
{
  v2 = *(a1 + 112);
  if (v2)
  {
    *(a1 + 120) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void *sub_F4C91C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t sub_F4CC58(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_F4CCBC(a1, i))
    {
      i -= 13;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_F4CCBC(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    v4 = a2[11];
    v5 = a2[10];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 64);
        if (v6)
        {
          *(v4 - 56) = v6;
          operator delete(v6);
        }

        v4 -= 96;
      }

      while (v4 != v3);
      v5 = a2[10];
    }

    a2[11] = v3;
    operator delete(v5);
  }

  v7 = a2[7];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a2[5];
  a2[5] = 0;
  if (v9)
  {

    operator delete(v9);
  }
}

uint64_t sub_F4CD70(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_F4CDB4(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_F4CE18(a1, i))
    {
      i -= 13;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

void sub_F4CE18(uint64_t a1, void *a2)
{
  v3 = a2[10];
  if (v3)
  {
    v4 = a2[11];
    v5 = a2[10];
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 64);
        if (v6)
        {
          *(v4 - 56) = v6;
          operator delete(v6);
        }

        v4 -= 80;
      }

      while (v4 != v3);
      v5 = a2[10];
    }

    a2[11] = v3;
    operator delete(v5);
  }

  v7 = a2[7];
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = a2[5];
  a2[5] = 0;
  if (v9)
  {

    operator delete(v9);
  }
}

void *sub_F4CECC(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_F4D208()
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
  xmmword_27BF638 = 0u;
  unk_27BF648 = 0u;
  dword_27BF658 = 1065353216;
  sub_3A9A34(&xmmword_27BF638, v0);
  sub_3A9A34(&xmmword_27BF638, v3);
  sub_3A9A34(&xmmword_27BF638, __p);
  sub_3A9A34(&xmmword_27BF638, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF610 = 0;
    qword_27BF618 = 0;
    qword_27BF608 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F4D450(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF620)
  {
    qword_27BF628 = qword_27BF620;
    operator delete(qword_27BF620);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4D678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F4DE3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4DE94(double *a1, int a2, uint64_t *a3, double a4)
{
  if (sub_F53860(a3) >= 2)
  {
    if (!sub_F54EF8(a3))
    {
      sub_F54EA8(a3, *(a1 + 7), *(a1 + 8));
    }

    v8 = a1[2];
    v9 = sub_F53860(a3);
    v10 = nullsub_1(a3);
    v11 = *(a1 + 10) / 100.0;
    v12 = a1[4];

    sub_732584(a2, v9, v10, a4, v8, v11, v12);
  }
}

void sub_F4DF64(uint64_t *a1@<X0>, void *a2@<X1>, void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  sub_F4E174(a2, v22);
  v6 = __p;
  if (__p)
  {
    v7 = 0;
    do
    {
      v21 = v6[2];
      if (sub_F4E2A4(a1, a2, &v21, v22))
      {
        v8 = sub_3177A0(*a1, v21);
        v10 = a3[2];
        if (v7 < v10)
        {
          *v7 = v8;
          *(v7 + 8) = v9;
          v7 += 12;
        }

        else
        {
          v11 = *a3;
          v12 = v7 - *a3;
          v13 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 2) + 1;
          if (v13 > 0x1555555555555555)
          {
            sub_1794();
          }

          v14 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 2);
          if (2 * v14 > v13)
          {
            v13 = 2 * v14;
          }

          if (v14 >= 0xAAAAAAAAAAAAAAALL)
          {
            v15 = 0x1555555555555555;
          }

          else
          {
            v15 = v13;
          }

          if (v15)
          {
            if (v15 <= 0x1555555555555555)
            {
              operator new();
            }

            sub_1808();
          }

          v16 = 4 * (v12 >> 2);
          *v16 = v8;
          *(v16 + 8) = v9;
          v7 = v16 + 12;
          v17 = v16 - v12;
          memcpy((v16 - v12), v11, v12);
          *a3 = v17;
          a3[1] = v7;
          a3[2] = 0;
          if (v11)
          {
            operator delete(v11);
          }
        }

        a3[1] = v7;
      }

      v6 = *v6;
    }

    while (v6);
    v18 = __p;
    if (__p)
    {
      do
      {
        v19 = *v18;
        operator delete(v18);
        v18 = v19;
      }

      while (v19);
    }
  }

  v20 = v22[0];
  v22[0] = 0;
  if (v20)
  {
    operator delete(v20);
  }
}

void sub_F4E148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_11BD8(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

unint64_t sub_F4E174@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  result = sub_4D1DC0(a1);
  if (result != 1)
  {
    v4 = sub_4D1F50(a1, 0);
    sub_3116D0(v4);
    operator new();
  }

  return result;
}

void sub_F4E288(_Unwind_Exception *a1)
{
  operator delete(v2);
  sub_11BD8(v1);
  _Unwind_Resume(a1);
}

uint64_t *sub_F4E2A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = sub_3A8760(a4, a3);
  if (result)
  {
    v6 = result;
    do
    {
      v6 = *v6;
      if (!v6)
      {
        break;
      }
    }

    while (*(v6 + 4) == *a3 && *(v6 + 5) == *(a3 + 4));
    if (result != v6)
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_F4E4F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4E514(uint64_t *a1, void *a2, void *a3)
{
  sub_F4E174(a2, &v37);
  sub_F4E838(a1, a2, a3, a1[5], &v35);
  __p = 0;
  v33 = 0;
  v34 = 0;
  v6 = v35;
  v7 = v36;
  if (v35 != v36)
  {
    v8 = 0;
    do
    {
      v11 = *(v6 + 4);
      v12 = *(v6 + 5);
      if (sub_F539BC(a3) > v11)
      {
        v13 = sub_F539D8(a3, v11);
        if (v12 == sub_F53860(v13))
        {
          do
          {
            if (++v11 >= sub_F539BC(a3))
            {
              break;
            }

            v14 = sub_F539D8(a3, v11);
          }

          while (!sub_F53860(v14));
          v12 = 0;
        }
      }

      v15 = sub_F539D8(a3, v11);
      v16 = sub_F53284(v15, v12);
      v17 = *(v6 + 6);
      *(v16 + 8) = *(v6 + 14);
      *v16 = v17;
      if (v8 < v34)
      {
        v9 = *v6;
        *(v8 + 16) = *(v6 + 2);
        *v8 = v9;
        v10 = *(v6 + 24);
        *(v8 + 40) = *(v6 + 5);
        *(v8 + 24) = v10;
        v8 += 48;
      }

      else
      {
        v18 = __p;
        v19 = v8 - __p;
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 4) + 1;
        if (v20 > 0x555555555555555)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v34 - __p) >> 4) > v20)
        {
          v20 = 0x5555555555555556 * ((v34 - __p) >> 4);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v34 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v21 = 0x555555555555555;
        }

        else
        {
          v21 = v20;
        }

        if (v21)
        {
          if (v21 <= 0x555555555555555)
          {
            operator new();
          }

          sub_1808();
        }

        v22 = 16 * ((v8 - __p) >> 4);
        v23 = *v6;
        *(v22 + 16) = *(v6 + 2);
        *v22 = v23;
        v24 = *(v6 + 24);
        *(v22 + 40) = *(v6 + 5);
        *(v22 + 24) = v24;
        if (v18 != v8)
        {
          v25 = v18;
          v26 = (v22 - v19);
          do
          {
            v27 = *v25;
            v28 = v25[2];
            v26[1] = v25[1];
            v26[2] = v28;
            *v26 = v27;
            v26 += 3;
            v25 += 3;
          }

          while (v25 != v8);
        }

        v8 = v22 + 48;
        __p = (v22 - v19);
        v33 = v22 + 48;
        v34 = 0;
        if (v18)
        {
          operator delete(v18);
        }
      }

      v33 = v8;
      v6 += 64;
    }

    while (v6 != v7);
  }

  sub_F53D0C(a3, &__p);
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  v29 = v38;
  if (v38)
  {
    do
    {
      v30 = *v29;
      operator delete(v29);
      v29 = v30;
    }

    while (v30);
  }

  v31 = v37;
  v37 = 0;
  if (v31)
  {
    operator delete(v31);
  }
}

void sub_F4E7C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    operator delete(__p);
    v17 = a13;
    if (!a13)
    {
LABEL_3:
      sub_11BD8(&a16);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v17 = a13;
    if (!a13)
    {
      goto LABEL_3;
    }
  }

  operator delete(v17);
  sub_11BD8(&a16);
  _Unwind_Resume(a1);
}

void sub_F4E838(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char **a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_F4DF64(a1, a2, &__p);
  sub_F4F260(a3, &v100);
  v6 = 0;
  v7 = 0;
  v90 = a3;
  while (1)
  {
    sub_F4F2F4(a3, v99);
    v10 = v101;
    if (v101 == *&v99[8])
    {
      v11 = v102;
      if (v102 == *&v99[16])
      {
        break;
      }
    }

    else
    {
      v11 = v102;
    }

    v12 = v100;
    if (v10 < sub_F539BC(v100))
    {
      v13 = sub_F539D8(v12, v10);
      v14 = sub_F53860(v13);
      v15 = v11 + 1;
      if (v11 + 1 < v14)
      {
        goto LABEL_23;
      }

      ++v10;
      if (v11 - v14 <= 0x7FFFFFFFFFFFFFFELL)
      {
        v15 = v11 - v14 + 1;
        do
        {
          if (v10 >= sub_F539BC(v12))
          {
            break;
          }

          v16 = sub_F539D8(v12, v10);
          v17 = sub_F53860(v16);
          v18 = v15 - v17;
          if (v15 < v17)
          {
            goto LABEL_23;
          }

          ++v10;
          v15 -= v17;
        }

        while (v18 > 0);
      }

      v11 = 0;
    }

    if (v10 < sub_F539BC(v12) && (v19 = sub_F539D8(v12, v10), v11 == sub_F53860(v19)))
    {
      do
      {
        if (++v10 >= sub_F539BC(v12))
        {
          break;
        }

        v20 = sub_F539D8(v12, v10);
      }

      while (!sub_F53860(v20));
      v15 = 0;
    }

    else
    {
      v15 = v11;
    }

LABEL_23:
    sub_F4F2F4(a3, v99);
    if (__PAIR128__(v15, v10) == *&v99[8])
    {
      break;
    }

    v93 = v15;
    v94 = v10;
    if (a4 < 1)
    {
      goto LABEL_102;
    }

    v21 = 0;
    do
    {
LABEL_27:
      v22 = v10;
      v23 = v15;
      if (v10 >= sub_F539BC(v12))
      {
        goto LABEL_35;
      }

      v24 = sub_F539D8(v12, v10);
      v25 = sub_F53860(v24);
      v22 = v10;
      v23 = v15 + 1;
      if (v15 + 1 >= v25)
      {
        v22 = v10 + 1;
        if (v15 - v25 <= 0x7FFFFFFFFFFFFFFELL)
        {
          v23 = v15 - v25 + 1;
          do
          {
            if (v22 >= sub_F539BC(v12))
            {
              break;
            }

            v26 = sub_F539D8(v12, v22);
            v27 = sub_F53860(v26);
            v28 = v23 - v27;
            if (v23 < v27)
            {
              goto LABEL_40;
            }

            ++v22;
            v23 -= v27;
          }

          while (v28 > 0);
        }

        v23 = 0;
LABEL_35:
        if (v22 < sub_F539BC(v12))
        {
          v29 = sub_F539D8(v12, v22);
          if (v23 == sub_F53860(v29))
          {
            do
            {
              if (++v22 >= sub_F539BC(v12))
              {
                break;
              }

              v30 = sub_F539D8(v12, v22);
            }

            while (!sub_F53860(v30));
            v23 = 0;
          }
        }
      }

LABEL_40:
      v31 = sub_F539BC(a3);
      if (sub_F539BC(a3) > v31)
      {
        v32 = sub_F539D8(a3, v31);
        if (!sub_F53860(v32))
        {
          do
          {
            if (++v31 >= sub_F539BC(a3))
            {
              break;
            }

            v57 = sub_F539D8(a3, v31);
          }

          while (!sub_F53860(v57));
        }
      }

      if (v22 == v31 && !v23)
      {
        break;
      }

      v95 = v15;
      v96 = v10;
      *v99 = -1;
      *&v99[8] = 0x7FFFFFFF;
      v33 = sub_F539D8(v100, v101);
      v34 = sub_F53284(v33, v102);
      v35 = sub_F539D8(v12, v94);
      v36 = sub_F53284(v35, v93);
      v37 = sub_F539D8(v12, v10);
      v38 = sub_F53284(v37, v15);
      v39 = sub_F539D8(v12, v22);
      v40 = sub_F53284(v39, v23);
      if (!sub_F4F36C(v34, v36, v38, v40, v99))
      {
        goto LABEL_64;
      }

      v87 = v21;
      v88 = v6;
      v89 = v7;
      v41 = __p;
      v42 = v104;
      if (__p == v104)
      {
LABEL_65:
        v55 = v88;
        v7 = v89;
        v54 = v95;
        if (v89 != v88 && *(v88 - 7) == v94 && *(v88 - 6) == v93)
        {
          v55 = v88 - 64;
          a5[1] = v88 - 64;
        }

        v97 = *v99;
        v98 = *&v99[8];
        v56 = a5[2];
        if (v55 >= v56)
        {
          v58 = (v55 - v89) >> 6;
          v59 = v58 + 1;
          if ((v58 + 1) >> 58)
          {
            *a5 = v89;
            sub_1794();
          }

          v60 = v56 - v89;
          if (v60 >> 5 > v59)
          {
            v59 = v60 >> 5;
          }

          if (v60 >= 0x7FFFFFFFFFFFFFC0)
          {
            v61 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v61 = v59;
          }

          if (v61)
          {
            if (!(v61 >> 58))
            {
              operator new();
            }

            *a5 = v89;
            sub_1808();
          }

          v62 = v58 << 6;
          *v62 = v12;
          *(v62 + 8) = v94;
          *(v62 + 16) = v93;
          *(v62 + 24) = v12;
          *(v62 + 32) = v96;
          *(v62 + 40) = v95;
          *(v62 + 48) = v97;
          *(v62 + 56) = v98;
          if (v89 != v55)
          {
            v63 = v89;
            v64 = 0;
            do
            {
              v65 = *v63;
              v66 = v63[1];
              v67 = v63[3];
              v64[2] = v63[2];
              v64[3] = v67;
              *v64 = v65;
              v64[1] = v66;
              v64 += 4;
              v63 += 4;
            }

            while (v63 != v55);
          }

          v6 = v62 + 64;
          a5[1] = (v62 + 64);
          a5[2] = 0;
          v7 = 0;
        }

        else
        {
          *v55 = v12;
          *(v55 + 1) = v94;
          *(v55 + 2) = v93;
          *(v55 + 3) = v12;
          *(v55 + 4) = v96;
          *(v55 + 5) = v95;
          *(v55 + 6) = v97;
          *(v55 + 14) = v98;
          v6 = (v55 + 64);
        }

        v21 = v87;
        a5[1] = v6;
        goto LABEL_88;
      }

      v43 = *v99;
      v44 = *&v99[4];
      v45 = *&v99[4] >> 1;
      v46 = a1[16];
      while (1)
      {
        v47 = v41[1];
        v48 = exp((v45 + (v47 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
        v49 = atan((v48 + -1.0 / v48) * 0.5);
        v50 = sqrt(((v47 - v44) * (v47 - v44) + (*v41 - v43) * (*v41 - v43))) / 100.0 * 100.0 * (cos(v49 * 57.2957795 / 180.0 * 3.14159265) * 0.00932288077) * 100.0;
        if (v50 >= 0.0)
        {
          v51 = v50;
          if (v50 >= 4.50359963e15)
          {
            goto LABEL_55;
          }

          v52 = (v50 + v50) + 1;
        }

        else
        {
          v51 = v50;
          if (v50 <= -4.50359963e15)
          {
            goto LABEL_55;
          }

          v52 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
        }

        v51 = (v52 >> 1);
LABEL_55:
        if (v51 < 9.22337204e18)
        {
          break;
        }

        if (v46 == 0x7FFFFFFFFFFFFFFFLL)
        {
          goto LABEL_63;
        }

LABEL_48:
        v41 += 3;
        if (v41 == v42)
        {
          goto LABEL_65;
        }
      }

      if (v50 >= 0.0)
      {
        if (v50 < 4.50359963e15)
        {
          v53 = (v50 + v50) + 1;
LABEL_61:
          v50 = (v53 >> 1);
        }
      }

      else if (v50 > -4.50359963e15)
      {
        v53 = (v50 + v50) - 1 + (((v50 + v50) - 1) >> 63);
        goto LABEL_61;
      }

      if (v50 >= v46)
      {
        goto LABEL_48;
      }

LABEL_63:
      v6 = v88;
      v7 = v89;
      v21 = v87;
LABEL_64:
      v54 = v95;
LABEL_88:
      v68 = sub_F539D8(v12, v96);
      v69 = sub_F53284(v68, v54);
      v70 = sub_F539D8(v12, v22);
      v71 = sub_F53284(v70, v23);
      v72 = v21;
      v73 = v6;
      v74 = v69[1];
      v75 = v71[1];
      v76 = exp(((v75 >> 1) + (v74 >> 1)) * -6.28318531 / 4294967300.0 + 3.14159265);
      v77 = atan((v76 + -1.0 / v76) * 0.5);
      v78 = cos(v77 * 57.2957795 / 180.0 * 3.14159265);
      v79 = *v69 - *v71;
      v80 = sqrt(((v74 - v75) * (v74 - v75) + v79 * v79)) / 100.0 * 100.0 * (v78 * 0.00932288077) * 100.0;
      if (v80 >= 0.0)
      {
        v81 = v80;
        a3 = v90;
        v82 = v72;
        if (v80 < 4.50359963e15)
        {
          v83 = (v80 + v80) + 1;
LABEL_93:
          v81 = (v83 >> 1);
        }
      }

      else
      {
        v81 = v80;
        a3 = v90;
        v82 = v72;
        if (v80 > -4.50359963e15)
        {
          v83 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
          goto LABEL_93;
        }
      }

      v6 = v73;
      if (v81 >= 9.22337204e18)
      {
        v21 = v82 + 0x7FFFFFFFFFFFFFFELL;
        v15 = v23;
        v10 = v22;
        if (v21 >= a4)
        {
          break;
        }

        goto LABEL_27;
      }

      if (v80 >= 0.0)
      {
        if (v80 < 4.50359963e15)
        {
          v84 = (v80 + v80) + 1;
LABEL_100:
          v80 = (v84 >> 1);
        }
      }

      else if (v80 > -4.50359963e15)
      {
        v84 = (v80 + v80) - 1 + (((v80 + v80) - 1) >> 63);
        goto LABEL_100;
      }

      v21 = v80 + v82;
      v15 = v23;
      v10 = v22;
    }

    while (v21 < a4);
LABEL_102:
    *a5 = v7;
    if (v7 == v6)
    {
      v9 = v93;
      v8 = v94;
    }

    else
    {
      v9 = v93;
      v8 = v94;
      if (*(v6 - 56) == v94 && *(v6 - 48) == v93)
      {
        v85 = *(v6 - 40);
        *&v99[16] = *(v6 - 24);
        *v99 = v85;
        sub_F52444(v99, 1);
        v8 = *&v99[8];
        v9 = *&v99[16];
      }
    }

    v101 = v8;
    v102 = v9;
  }

  if (__p)
  {
    v104 = __p;
    operator delete(__p);
  }
}

void sub_F4F1A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F4F260@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  result = sub_F539BC(a1);
  if (result)
  {
    v5 = sub_F539D8(a1, 0);
    result = sub_F53860(v5);
    v6 = 0;
    if (!result)
    {
      result = sub_F539BC(a1);
      v6 = 1;
      if (result >= 2)
      {
        do
        {
          v7 = sub_F539D8(a1, v6);
          result = sub_F53860(v7);
          if (result)
          {
            break;
          }

          ++v6;
          result = sub_F539BC(a1);
        }

        while (v6 < result);
      }
    }

    a2[1] = v6;
    a2[2] = 0;
  }

  return result;
}

unint64_t sub_F4F2F4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_F539BC(a1);
  *a2 = a1;
  a2[1] = v4;
  a2[2] = 0;
  result = sub_F539BC(a1);
  if (result > v4)
  {
    do
    {
      v6 = sub_F539D8(a1, v4);
      result = sub_F53860(v6);
      if (result)
      {
        break;
      }

      ++v4;
      result = sub_F539BC(a1);
    }

    while (v4 < result);
    a2[1] = v4;
    a2[2] = 0;
  }

  return result;
}

uint64_t sub_F4F36C(unsigned int *a1, unsigned int *a2, uint64_t a3, void *a4, _DWORD *a5)
{
  result = sub_3B988(a1, a2, a3, a4, a5);
  if (result)
  {
    if (*a2 != *a3 || ((v9 = a2[1], v9 == *(a3 + 4)) ? (v10 = *a2 == *a5) : (v10 = 0), v10 ? (v11 = v9 == a5[1]) : (v11 = 0), !v11))
    {
      operator new();
    }

    return 0;
  }

  return result;
}

void sub_F4F7BC(uint64_t a1, char **a2)
{
  if (*(a1 + 88) > 0.0)
  {
    sub_F539E8(a2, &v28);
    v4 = v28;
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 2);
    if (v5 >= 2)
    {
      v6 = *(a1 + 88);
      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_41DB4(&v28, v5, 1, 1, &__p, &v26, v6);
      if (__p)
      {
        operator delete(__p);
      }

      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_F4F260(a2, v22);
      sub_F4F260(a2, v21);
      v7 = v27;
      if (v27 >= 2)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          sub_F52444(v21, 1);
          v11 = *(v26 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v9);
          if ((*(v26 + (((v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 1)))
          {
            if (!v11)
            {
              *&v22[8] = *&v21[8];
            }
          }

          else if (v11)
          {
            if (v8 < v25)
            {
              v10 = *v22;
              *(v8 + 16) = *&v22[16];
              *v8 = v10;
              *(v8 + 24) = *v21;
              *(v8 + 40) = *&v21[16];
              v8 += 48;
            }

            else
            {
              v12 = __p;
              v13 = v8 - __p;
              v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 4) + 1;
              if (v14 > 0x555555555555555)
              {
                sub_1794();
              }

              if (0x5555555555555556 * ((v25 - __p) >> 4) > v14)
              {
                v14 = 0x5555555555555556 * ((v25 - __p) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v15 = 0x555555555555555;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                if (v15 <= 0x555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v16 = 16 * ((v8 - __p) >> 4);
              *v16 = *v22;
              *(v16 + 16) = *&v22[16];
              *(v16 + 24) = *v21;
              *(v16 + 40) = *&v21[16];
              if (v12 != v8)
              {
                v17 = v12;
                v18 = (v16 - v13);
                do
                {
                  v19 = *v17;
                  v20 = v17[2];
                  v18[1] = v17[1];
                  v18[2] = v20;
                  *v18 = v19;
                  v18 += 3;
                  v17 += 3;
                }

                while (v17 != v8);
              }

              v8 = v16 + 48;
              __p = (v16 - v13);
              v24 = v16 + 48;
              v25 = 0;
              if (v12)
              {
                operator delete(v12);
              }
            }

            v24 = v8;
          }

          ++v9;
        }

        while (v7 != v9);
      }

      sub_F53D0C(a2, &__p);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        operator delete(v26);
      }

      v4 = v28;
    }

    if (v4)
    {
      v29 = v4;
      operator delete(v4);
    }
  }
}

void sub_F4FA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_F4FADC(uint64_t a1, int8x8_t *a2, void *a3)
{
  v6 = sub_F539BC(a3);
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v77 = v6;
    do
    {
      v9 = sub_F539D8(a3, v8);
      v10 = sub_F53274(v9);
      if (v10 == 3)
      {
        goto LABEL_3;
      }

      v11 = v10;
      if (v8)
      {
        v12 = sub_F539D8(a3, v8 - 1);
        v13 = sub_F53274(v12);
        if (v11 != 1 || v13 == 1)
        {
          v14 = v11 == 4 && v13 == 4;
          v15 = sub_F539BC(a3);
          v16 = 0;
          if (v11 != 1)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v14 = 1;
          v15 = sub_F539BC(a3);
          v16 = 0;
        }
      }

      else
      {
        v14 = 0;
        v15 = sub_F539BC(a3);
        v16 = 0;
        if (v11 != 1)
        {
          goto LABEL_20;
        }
      }

      if (v8 != v15 - 1)
      {
        v18 = sub_F539D8(a3, v8 + 1);
        v16 = sub_F53274(v18) != 1;
      }

LABEL_20:
      if (!v14 && !v16)
      {
        goto LABEL_3;
      }

      v19 = *(a1 + 104) / 100.0;
      v20 = v19 / (sub_5FC64(v9) / 100.0);
      v21 = nullsub_1(v9);
      if (v20 <= 0.25)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0.25;
      }

      if (!v14)
      {
        v22 = 0.0;
      }

      v23 = 1.0 - v20;
      if (1.0 - v20 < 0.75)
      {
        v23 = 0.75;
      }

      if (!v16)
      {
        v23 = 1.0;
      }

      sub_2F4C8(v21, 0, v87, v22, v23);
      sub_F54F0C(v9);
      sub_F54E4C(v9, v87);
      v24 = sub_5FC64(v9);
      if (!v16 || !v14)
      {
LABEL_45:
        v7 = v77;
        if (!v16)
        {
          goto LABEL_107;
        }

        sub_F50674(*(a1 + 112), 0, v9, &v85);
        v39 = *(a1 + 112);
        v40 = sub_F539D8(a3, v8 + 1);
        sub_F50674(v39, 1, v40, &v83);
        sub_318AE8(&v85, v86, v83, v84, 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 2));
        sub_45324(&v85, (*(a1 + 112) / 100.0), &__p, 1.0, *(a1 + 120), 0.1);
        v41 = nullsub_1(v9);
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v42 = v41[1];
        if (v42 != *v41)
        {
          if (0xAAAAAAAAAAAAAAABLL * ((v42 - *v41) >> 2) <= 0x1555555555555555)
          {
            operator new();
          }

          sub_1794();
        }

        sub_318AE8(&v78, 0, __p, __dst, 0xAAAAAAAAAAAAAAABLL * ((__dst - __p) >> 2));
        v7 = v77;
        sub_F54F0C(v9);
        sub_F54E4C(v9, &v78);
        v51 = sub_9B6E08(v9);
        v52 = sub_F5327C(v9);
        if (v51 <= v52)
        {
          v53 = v52;
        }

        else
        {
          v53 = v51;
        }

        if (v51 >= v52)
        {
          goto LABEL_99;
        }

LABEL_78:
        while (2)
        {
          v54 = a2[9];
          if (!*&v54)
          {
            goto LABEL_98;
          }

          v55 = vcnt_s8(v54);
          v55.i16[0] = vaddlv_u8(v55);
          if (v55.u32[0] > 1uLL)
          {
            v56 = v51;
            if (*&v54 <= v51)
            {
              v56 = v51 % *&v54;
            }
          }

          else
          {
            v56 = (*&v54 - 1) & v51;
          }

          v57 = *(*&a2[8] + 8 * v56);
          if (!v57 || (v58 = *v57) == 0)
          {
LABEL_98:
            v88 = v51;
            v89 = 2;
            sub_F4C91C(&a2[8], &v88);
            if (++v51 != v53)
            {
              continue;
            }

            goto LABEL_99;
          }

          break;
        }

        if (v55.u32[0] < 2uLL)
        {
          v59 = *&v54 - 1;
          while (1)
          {
            v60 = v58[1];
            if (v60 == v51)
            {
              if (v58[2] == v51)
              {
                goto LABEL_77;
              }
            }

            else if ((v60 & v59) != v56)
            {
              goto LABEL_98;
            }

            v58 = *v58;
            if (!v58)
            {
              goto LABEL_98;
            }
          }
        }

        while (1)
        {
          v61 = v58[1];
          if (v61 == v51)
          {
            if (v58[2] == v51)
            {
LABEL_77:
              *(v58 + 6) |= 2u;
              if (++v51 != v53)
              {
                goto LABEL_78;
              }

LABEL_99:
              if (v78)
              {
                v79 = v78;
                operator delete(v78);
              }

              if (__p)
              {
                __dst = __p;
                operator delete(__p);
              }

              if (v83)
              {
                v84 = v83;
                operator delete(v83);
              }

              if (v85)
              {
                v86 = v85;
                operator delete(v85);
              }

LABEL_107:
              if (!v14)
              {
                goto LABEL_144;
              }

              v62 = *(a1 + 112);
              v63 = sub_F539D8(a3, v8 - 1);
              sub_F50674(v62, 0, v63, &v85);
              sub_F50674(*(a1 + 112), 1, v9, &v83);
              sub_318AE8(&v85, v86, v83, v84, 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 2));
              sub_45324(&v85, (*(a1 + 112) / 100.0), &__p, 1.0, *(a1 + 120), 0.1);
              v64 = nullsub_1(v9);
              v65 = v64[1];
              if (v65 != *v64)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((v65 - *v64) >> 2) <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_1794();
              }

              sub_4798C(&__p, __dst, 0, 0, 0);
              sub_F54F0C(v9);
              sub_F54E4C(v9, &__p);
              v66 = sub_9B6E08(v9);
              v67 = sub_F5327C(v9);
              if (v66 <= v67)
              {
                v68 = v67;
              }

              else
              {
                v68 = v66;
              }

              if (v66 >= v67)
              {
                goto LABEL_138;
              }

LABEL_117:
              while (2)
              {
                v69 = a2[9];
                if (v69)
                {
                  v70 = vcnt_s8(v69);
                  v70.i16[0] = vaddlv_u8(v70);
                  if (v70.u32[0] > 1uLL)
                  {
                    v71 = v66;
                    if (*&v69 <= v66)
                    {
                      v71 = v66 % *&v69;
                    }
                  }

                  else
                  {
                    v71 = (*&v69 - 1) & v66;
                  }

                  v72 = *(*&a2[8] + 8 * v71);
                  if (v72)
                  {
                    v73 = *v72;
                    if (v73)
                    {
                      if (v70.u32[0] < 2uLL)
                      {
                        v74 = *&v69 - 1;
                        while (1)
                        {
                          v76 = v73[1];
                          if (v76 == v66)
                          {
                            if (v73[2] == v66)
                            {
                              goto LABEL_116;
                            }
                          }

                          else if ((v76 & v74) != v71)
                          {
                            goto LABEL_137;
                          }

                          v73 = *v73;
                          if (!v73)
                          {
                            goto LABEL_137;
                          }
                        }
                      }

                      do
                      {
                        v75 = v73[1];
                        if (v75 == v66)
                        {
                          if (v73[2] == v66)
                          {
LABEL_116:
                            *(v73 + 6) |= 2u;
                            if (++v66 != v68)
                            {
                              goto LABEL_117;
                            }

LABEL_138:
                            v7 = v77;
                            if (__p)
                            {
                              __dst = __p;
                              operator delete(__p);
                            }

                            goto LABEL_140;
                          }
                        }

                        else
                        {
                          if (v75 >= *&v69)
                          {
                            v75 %= *&v69;
                          }

                          if (v75 != v71)
                          {
                            break;
                          }
                        }

                        v73 = *v73;
                      }

                      while (v73);
                    }
                  }
                }

LABEL_137:
                v78 = v66;
                LODWORD(v79) = 2;
                sub_F4C91C(&a2[8], &v78);
                if (++v66 != v68)
                {
                  continue;
                }

                goto LABEL_138;
              }
            }
          }

          else
          {
            if (v61 >= *&v54)
            {
              v61 %= *&v54;
            }

            if (v61 != v56)
            {
              goto LABEL_98;
            }
          }

          v58 = *v58;
          if (!v58)
          {
            goto LABEL_98;
          }
        }
      }

      v25 = v24;
      v26 = sub_5FC64(v9);
      v27 = *(a1 + 112);
      v28 = v27 * 3.0;
      if (v28 >= 0.0)
      {
        if (v28 < 4.50359963e15)
        {
          v29 = (v28 + v28) + 1;
          goto LABEL_36;
        }
      }

      else if (v28 > -4.50359963e15)
      {
        v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_36:
        v28 = (v29 >> 1);
      }

      if (v26 >= v28)
      {
        goto LABEL_45;
      }

      v30 = sub_F539D8(a3, v8 - 1);
      sub_F50674(v27, 0, v30, &v85);
      v31 = v86;
      v32 = *nullsub_1(v9);
      v33 = nullsub_1(v9);
      sub_4798C(&v85, v31, v32, *(v33 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v33 + 8) - v32) >> 2));
      v34 = *(a1 + 112);
      v35 = sub_F539D8(a3, v8 + 1);
      sub_F50674(v34, 1, v35, &v83);
      sub_318AE8(&v85, v86, v83, v84, 0xAAAAAAAAAAAAAAABLL * ((v84 - v83) >> 2));
      v7 = v77;
      sub_F54F0C(v9);
      sub_45324(&v85, (v25 / 100.0 + *(a1 + 112) / 100.0), &__p, 1.0, *(a1 + 120), 0.1);
      sub_F54E4C(v9, &__p);
      if (__p)
      {
        __dst = __p;
        operator delete(__p);
      }

      v36 = sub_9B6E08(v9);
      v37 = sub_F5327C(v9);
      if (v36 <= v37)
      {
        v38 = v37;
      }

      else
      {
        v38 = v36;
      }

      if (v36 >= v37)
      {
        goto LABEL_140;
      }

      while (2)
      {
        while (2)
        {
          v43 = a2[9];
          if (!*&v43)
          {
            goto LABEL_70;
          }

          v44 = vcnt_s8(v43);
          v44.i16[0] = vaddlv_u8(v44);
          if (v44.u32[0] > 1uLL)
          {
            v45 = v36;
            if (*&v43 <= v36)
            {
              v45 = v36 % *&v43;
            }
          }

          else
          {
            v45 = (*&v43 - 1) & v36;
          }

          v46 = *(*&a2[8] + 8 * v45);
          if (!v46 || (v47 = *v46) == 0)
          {
LABEL_70:
            __p = v36;
            LODWORD(__dst) = 2;
            sub_F4C91C(&a2[8], &__p);
            if (++v36 != v38)
            {
              continue;
            }

            goto LABEL_140;
          }

          break;
        }

        if (v44.u32[0] < 2uLL)
        {
          v48 = *&v43 - 1;
          while (1)
          {
            v50 = v47[1];
            if (v50 == v36)
            {
              if (v47[2] == v36)
              {
                goto LABEL_49;
              }
            }

            else if ((v50 & v48) != v45)
            {
              goto LABEL_70;
            }

            v47 = *v47;
            if (!v47)
            {
              goto LABEL_70;
            }
          }
        }

        while (1)
        {
          v49 = v47[1];
          if (v49 == v36)
          {
            break;
          }

          if (v49 >= *&v43)
          {
            v49 %= *&v43;
          }

          if (v49 != v45)
          {
            goto LABEL_70;
          }

LABEL_60:
          v47 = *v47;
          if (!v47)
          {
            goto LABEL_70;
          }
        }

        if (v47[2] != v36)
        {
          goto LABEL_60;
        }

LABEL_49:
        *(v47 + 6) |= 2u;
        if (++v36 != v38)
        {
          continue;
        }

        break;
      }

LABEL_140:
      if (v83)
      {
        v84 = v83;
        operator delete(v83);
      }

      if (v85)
      {
        v86 = v85;
        operator delete(v85);
      }

LABEL_144:
      if (v87[0])
      {
        v87[1] = v87[0];
        operator delete(v87[0]);
      }

LABEL_3:
      ++v8;
    }

    while (v8 != v7);
  }
}

void sub_F5051C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
    v25 = a17;
    if (!a17)
    {
LABEL_5:
      v26 = a20;
      if (!a20)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v25 = a17;
    if (!a17)
    {
      goto LABEL_5;
    }
  }

  operator delete(v25);
  v26 = a20;
  if (!a20)
  {
LABEL_6:
    v27 = a23;
    if (!a23)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(v26);
  v27 = a23;
  if (!a23)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_11:
  operator delete(v27);
  _Unwind_Resume(exception_object);
}

void sub_F50674(uint64_t a1@<X1>, int a2@<W2>, char **a3@<X3>, void *a4@<X8>)
{
  v8 = nullsub_1(a3);
  v9 = fmin(a1 / 100.0 / (sub_5FC64(a3) / 100.0), 0.5);
  if (a2)
  {
    v10 = v9;
  }

  else
  {
    v10 = 1.0 - v9;
  }

  LOBYTE(v88) = 0;
  v11 = *v8;
  v12 = v8[1];
  v64 = v10;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - *v8) >> 2) > 1)
  {
    v77 = 0;
    *v80 = 0u;
    *__p = 0u;
    v82 = 0u;
    v91 = 0;
    v13 = v11 + 3;
    v14 = v11 == v12 || v13 == v12;
    v15 = v14;
    v16 = 0.0;
    if (!v14)
    {
      v71 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v67 = vdupq_n_s64(0xC066800000000000);
      v69 = vdupq_n_s64(0x4076800000000000uLL);
      v65 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      HIDWORD(v17) = 1096306543;
      do
      {
        LODWORD(v17) = *(v13 - 2);
        v18 = exp(3.14159265 - *&v17 * 6.28318531 / 4294967300.0);
        *&v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795;
        LODWORD(v20) = *(v13 - 3);
        HIDWORD(v20) = *v13;
        v73 = v20;
        v21 = *&v19 * 0.0174532925;
        LODWORD(v19) = v13[1];
        v22 = exp(3.14159265 - v19 * 6.28318531 / 4294967300.0);
        v23 = atan((v22 - 1.0 / v22) * 0.5) * 57.2957795 * 0.0174532925;
        v24.i64[0] = v73;
        v24.i64[1] = HIDWORD(v73);
        v25 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v24), v69), v71), v67), v65);
        v74 = vsubq_f64(v25, vdupq_laneq_s64(v25, 1)).f64[0];
        v26 = sin((v21 - v23) * 0.5);
        v27 = v26 * v26;
        v28 = cos(v21);
        v29 = v28 * cos(v23);
        v30 = sin(0.5 * v74);
        v31 = atan2(sqrt(v30 * v30 * v29 + v27), sqrt(1.0 - (v30 * v30 * v29 + v27)));
        v17 = (v31 + v31) * 6372797.56;
        v16 = v16 + v17;
        v13 += 3;
      }

      while (v13 != v12);
    }

    v32 = v64 * v16;
    v90 = v64 * v16;
    v83 = &v91;
    v84 = v80;
    v85 = &v88;
    v86 = &v77;
    v87 = &v90;
    if ((v15 & 1) == 0)
    {
      do
      {
        sub_316F0(&v83, v11, v11 + 3, v32);
        v33 = v11 + 6;
        v11 += 3;
      }

      while (v33 != v12);
    }
  }

  else
  {
    sub_313A4(v80, v8, v8);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (a2)
  {
    v34 = v80[0];
  }

  else
  {
    v34 = __p[1];
  }

  v35 = &v82;
  if (a2)
  {
    v35 = &v80[1];
  }

  v36 = *v35;
  if (v36 != v34)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v36 - v34) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (__p[1])
  {
    *&v82 = __p[1];
    operator delete(__p[1]);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }

  v91 = 0;
  v37 = *v8;
  v38 = v8[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v38 - *v8) >> 2) > 1)
  {
    v90 = 0.0;
    *v80 = 0u;
    *__p = 0u;
    v82 = 0u;
    v89 = 0;
    v39 = v37 + 3;
    v40 = v37 == v38 || v39 == v38;
    v41 = v40;
    v42 = 0.0;
    if (!v40)
    {
      v72 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
      v68 = vdupq_n_s64(0xC066800000000000);
      v70 = vdupq_n_s64(0x4076800000000000uLL);
      v66 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
      HIDWORD(v43) = 1096306543;
      do
      {
        LODWORD(v43) = *(v39 - 2);
        v44 = exp(3.14159265 - *&v43 * 6.28318531 / 4294967300.0);
        *&v45 = atan((v44 - 1.0 / v44) * 0.5) * 57.2957795;
        LODWORD(v46) = *(v39 - 3);
        HIDWORD(v46) = *v39;
        v75 = v46;
        v47 = *&v45 * 0.0174532925;
        LODWORD(v45) = v39[1];
        v48 = exp(3.14159265 - v45 * 6.28318531 / 4294967300.0);
        v49 = atan((v48 - 1.0 / v48) * 0.5) * 57.2957795 * 0.0174532925;
        v50.i64[0] = v75;
        v50.i64[1] = HIDWORD(v75);
        v51 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v50), v70), v72), v68), v66);
        v76 = vsubq_f64(v51, vdupq_laneq_s64(v51, 1)).f64[0];
        v52 = sin((v47 - v49) * 0.5);
        v53 = v52 * v52;
        v54 = cos(v47);
        v55 = v54 * cos(v49);
        v56 = sin(0.5 * v76);
        v57 = atan2(sqrt(v56 * v56 * v55 + v53), sqrt(1.0 - (v56 * v56 * v55 + v53)));
        v43 = (v57 + v57) * 6372797.56;
        v42 = v42 + v43;
        v39 += 3;
      }

      while (v39 != v38);
    }

    v58 = v64 * v42;
    v88 = v64 * v42;
    v83 = &v89;
    v84 = v80;
    v85 = &v91;
    v86 = &v90;
    v87 = &v88;
    if ((v41 & 1) == 0)
    {
      do
      {
        sub_316F0(&v83, v37, v37 + 3, v58);
        v59 = v37 + 6;
        v37 += 3;
      }

      while (v59 != v38);
    }
  }

  else
  {
    sub_313A4(v80, v8, v8);
  }

  v78 = 0;
  v79 = 0;
  v77 = 0;
  v60 = a2 == 0;
  if (a2)
  {
    v61 = __p[1];
  }

  else
  {
    v61 = v80[0];
  }

  v62 = &v82;
  if (v60)
  {
    v62 = &v80[1];
  }

  v63 = *v62;
  if (v63 != v61)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v63 - v61) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  if (__p[1])
  {
    *&v82 = __p[1];
    operator delete(__p[1]);
  }

  if (v80[0])
  {
    v80[1] = v80[0];
    operator delete(v80[0]);
  }

  sub_F54F0C(a3);
  sub_F54E4C(a3, &v77);
  if (v77)
  {
    v78 = v77;
    operator delete(v77);
  }
}

void sub_F50DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, char a33)
{
  if (v34)
  {
    *(v33 + 8) = v34;
    operator delete(v34);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F50E00(void *result, unint64_t a2, int a3)
{
  v3 = result[6];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(result[5] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    v11 = a2;
    v12 = a3;
    return sub_F4C91C(result + 5, &v11);
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v3 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (v7[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *(v7 + 6) |= a3;
  return result;
}

void sub_F51094(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F51858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_F518B0@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = a1;
  result = sub_F540B8(a1);
  if (result)
  {
    v5 = sub_F540D4(a1, 0);
    result = sub_F53860(v5);
    v6 = 0;
    if (!result)
    {
      result = sub_F540B8(a1);
      v6 = 1;
      if (result >= 2)
      {
        do
        {
          v7 = sub_F540D4(a1, v6);
          result = sub_F53860(v7);
          if (result)
          {
            break;
          }

          ++v6;
          result = sub_F540B8(a1);
        }

        while (v6 < result);
      }
    }

    a2[1] = v6;
    a2[2] = 0;
  }

  return result;
}

void sub_F51944(uint64_t a1, char *a2)
{
  if (*(a1 + 88) > 0.0)
  {
    sub_F540E4(a2, &v28);
    v4 = v28;
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 2);
    if (v5 >= 2)
    {
      v6 = *(a1 + 88);
      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_41DB4(&v28, v5, 1, 1, &__p, &v26, v6);
      if (__p)
      {
        operator delete(__p);
      }

      __p = 0;
      v24 = 0;
      v25 = 0;
      sub_F518B0(a2, v22);
      sub_F518B0(a2, v21);
      v7 = v27;
      if (v27 >= 2)
      {
        v8 = 0;
        v9 = 1;
        do
        {
          sub_F52570(v21, 1);
          v11 = *(v26 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v9);
          if ((*(v26 + (((v9 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v9 - 1)))
          {
            if (!v11)
            {
              *&v22[8] = *&v21[8];
            }
          }

          else if (v11)
          {
            if (v8 < v25)
            {
              v10 = *v22;
              *(v8 + 16) = *&v22[16];
              *v8 = v10;
              *(v8 + 24) = *v21;
              *(v8 + 40) = *&v21[16];
              v8 += 48;
            }

            else
            {
              v12 = __p;
              v13 = v8 - __p;
              v14 = 0xAAAAAAAAAAAAAAABLL * ((v8 - __p) >> 4) + 1;
              if (v14 > 0x555555555555555)
              {
                sub_1794();
              }

              if (0x5555555555555556 * ((v25 - __p) >> 4) > v14)
              {
                v14 = 0x5555555555555556 * ((v25 - __p) >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v25 - __p) >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v15 = 0x555555555555555;
              }

              else
              {
                v15 = v14;
              }

              if (v15)
              {
                if (v15 <= 0x555555555555555)
                {
                  operator new();
                }

                sub_1808();
              }

              v16 = 16 * ((v8 - __p) >> 4);
              *v16 = *v22;
              *(v16 + 16) = *&v22[16];
              *(v16 + 24) = *v21;
              *(v16 + 40) = *&v21[16];
              if (v12 != v8)
              {
                v17 = v12;
                v18 = (v16 - v13);
                do
                {
                  v19 = *v17;
                  v20 = v17[2];
                  v18[1] = v17[1];
                  v18[2] = v20;
                  *v18 = v19;
                  v18 += 3;
                  v17 += 3;
                }

                while (v17 != v8);
              }

              v8 = v16 + 48;
              __p = (v16 - v13);
              v24 = v16 + 48;
              v25 = 0;
              if (v12)
              {
                operator delete(v12);
              }
            }

            v24 = v8;
          }

          ++v9;
        }

        while (v7 != v9);
      }

      sub_F54264(a2, &__p);
      if (__p)
      {
        v24 = __p;
        operator delete(__p);
      }

      if (v26)
      {
        operator delete(v26);
      }

      v4 = v28;
    }

    if (v4)
    {
      v29 = v4;
      operator delete(v4);
    }
  }
}

void sub_F51C0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_F51C64(uint64_t a1, void *a2, int8x8_t *a3, char **a4)
{
  if (*(a1 + 8) == 1)
  {
    sub_F4F260(a4, v65);
    sub_F4F2F4(a4, v64);
    if (v65[1] != v64[1] || v65[2] != v64[2])
    {
      v60 = sub_F539BC(a4);
      if (v60 >= 2)
      {
        v17 = 1;
        v18 = -6.28318531;
        v19 = 1.0;
        do
        {
          v20 = sub_F539D8(a4, v17 - 1);
          if (sub_F53860(v20) >= 2)
          {
            v21 = sub_F539D8(a4, v17);
            v22 = nullsub_1(v20);
            v23 = v22[1];
            v24 = -2 - 0x5555555555555555 * ((v23 - *v22) >> 2);
            for (i = sub_41224(v22, v24); v24; i = sub_41224(v22, v24--))
            {
              v26 = *(v23 - 8) - i[1];
              if (sqrt(((*(v23 - 12) - *i) * (*(v23 - 12) - *i) + v26 * v26)) / 100.0 >= *(a1 + 80) / 100.0)
              {
                break;
              }
            }

            v27 = nullsub_1(v20);
            v28 = sub_41224(v27, v24);
            v56 = v28[1];
            v57 = *v28;
            v29 = *(nullsub_1(v20) + 8);
            v63 = *(v29 - 12);
            v62 = *(v29 - 8);
            v58 = *(v29 - 4);
            v30 = nullsub_1(v21);
            v61 = **v30;
            v31 = (*v30)[2];
            v59 = (*v30)[1];
            v32 = nullsub_1(v21);
            v33 = *v32;
            v34 = sub_41224(v32, 1uLL);
            v35 = 1;
            if ((-3 - 0x5555555555555555 * (v32[1] - *v32)) <= 0xFFFFFFFFFFFFFFFDLL)
            {
              v35 = 1;
              do
              {
                v36 = v33[1] - v34[1];
                if (sqrt(((*v33 - *v34) * (*v33 - *v34) + v36 * v36)) / 100.0 >= *(a1 + 80) / 100.0)
                {
                  break;
                }

                v34 = sub_41224(v32, v35++);
              }

              while (v35 < -1 - 0x5555555555555555 * (v32[1] - *v32));
            }

            v37 = nullsub_1(v21);
            v38 = sub_41224(v37, v35);
            v40 = *v38;
            v39 = v38[1];
            if (v63 != v61 || v62 != v59 || v58 != v31)
            {
              v41 = ((v56 - v62) * (v61 - v63) - (v57 - v63) * (v59 - v62)) / sqrt((v57 - v63) * (v57 - v63) + (v56 - v62) * (v56 - v62));
              v42 = v59 >= 0xFFFFFFFE ? -2 : v59;
              v43 = exp(v42 * v18 / 4294967300.0 + 3.14159265);
              v44 = atan((v43 - v19 / v43) * 0.5);
              v45 = fabs(v41 * (0.00932288077 / (v19 / cos(v44 * 57.2957795 / 180.0 * 3.14159265))));
              if (v45 >= *(a1 + 48) && sqrt(((v63 - v61) * (v63 - v61) + (v62 - v59) * (v62 - v59))) / 100.0 - v45 < *(a1 + 72) / 100.0)
              {
                v46 = v18;
                if (v63 != v57 || (j = 0.0, v56 != v62))
                {
                  v48 = -(v57 - v63);
                  if (v63 - v57 < v57 - v63)
                  {
                    v48 = (v63 - v57);
                  }

                    ;
                  }

                  while (j < -180.0)
                  {
                    j = j + 360.0;
                  }
                }

                if (v40 != v61 || (k = 0.0, v59 != v39))
                {
                  v50 = -(v61 - v40);
                  if (v40 - v61 < (v61 - v40))
                  {
                    v50 = (v40 - v61);
                  }

                    ;
                  }

                  while (k < -180.0)
                  {
                    k = k + 360.0;
                  }
                }

                sub_455D0(j, k);
                v18 = v46;
                v19 = 1.0;
                if (v51 < *(a1 + 32))
                {
                  v52 = sub_F539D8(a4, v17 - 1);
                  v53 = nullsub_1(v52);
                  v54 = v53[1];
                  if (v54 != *v53)
                  {
                    if (0xAAAAAAAAAAAAAAABLL * ((v54 - *v53) >> 2) < 0x1555555555555556)
                    {
                      operator new();
                    }

                    sub_1794();
                  }
                }
              }
            }
          }

          ++v17;
        }

        while (v60 != v17);
      }

      if (*(a1 + 96))
      {
        sub_F4FADC(a1, a3, a4);
      }

      v7 = sub_F539BC(a4);
      if (v7)
      {
        v8 = v7;
        for (m = 0; m != v8; ++m)
        {
          v10 = sub_F539D8(a4, m);
          v11 = sub_9B6E08(v10);
          v12 = sub_F539D8(a4, m);
          v13 = sub_F5327C(v12);
          if (v11 <= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v11;
          }

          if (v11 < v13)
          {
            do
            {
              v15 = sub_F539D8(a4, m);
              v16 = sub_F53274(v15);
              v64[0] = v11;
              v65[0] = v64;
              *(sub_F5269C(&a3[3], v64) + 6) = v16;
              ++v11;
            }

            while (v14 != v11);
          }
        }
      }

      if (*(a1 + 24))
      {
        sub_F4E514(a1, a2, a4);
      }

      sub_F4F7BC(a1, a4);
    }
  }
}

void sub_F5241C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void **sub_F52444(void **a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v14 = -a2;
    v15 = a1[2];
    while (v15 < v14)
    {
      v14 -= v15;
      v16 = *a1;
      v17 = a1[1] - 1;
      a1[1] = v17;
      v18 = sub_F539D8(v16, v17);
      v15 = sub_F53860(v18);
      a1[2] = v15;
      if (v14 <= 0)
      {
        return a1;
      }
    }

    a1[2] = (v15 - v14);
    return a1;
  }

  else
  {
    if (a2)
    {
      v4 = a1[1];
      while (v4 < sub_F539BC(*a1))
      {
        v5 = sub_F539D8(*a1, a1[1]);
        v6 = sub_F53860(v5);
        v7 = a1[2];
        if (v7 + v2 < v6)
        {
          a1[2] = (v7 + v2);
          return a1;
        }

        v4 = a1[1] + 1;
        v2 = v7 + v2 - v6;
        a1[1] = v4;
        a1[2] = 0;
        if (v2 <= 0)
        {
          break;
        }
      }
    }

    v8 = a1[1];
    if (v8 < sub_F539BC(*a1))
    {
      do
      {
        v9 = a1[2];
        v10 = sub_F539D8(*a1, a1[1]);
        if (v9 != sub_F53860(v10))
        {
          break;
        }

        v11 = *a1;
        v12 = a1[1] + 1;
        a1[1] = v12;
        a1[2] = 0;
      }

      while (v12 < sub_F539BC(v11));
    }

    return a1;
  }
}

void **sub_F52570(void **a1, uint64_t a2)
{
  v2 = a2;
  if (a2 < 0)
  {
    v14 = -a2;
    v15 = a1[2];
    while (v15 < v14)
    {
      v14 -= v15;
      v16 = *a1;
      v17 = a1[1] - 1;
      a1[1] = v17;
      v18 = sub_F540D4(v16, v17);
      v15 = sub_F53860(v18);
      a1[2] = v15;
      if (v14 <= 0)
      {
        return a1;
      }
    }

    a1[2] = (v15 - v14);
    return a1;
  }

  else
  {
    if (a2)
    {
      v4 = a1[1];
      while (v4 < sub_F540B8(*a1))
      {
        v5 = sub_F540D4(*a1, a1[1]);
        v6 = sub_F53860(v5);
        v7 = a1[2];
        if (v7 + v2 < v6)
        {
          a1[2] = (v7 + v2);
          return a1;
        }

        v4 = a1[1] + 1;
        v2 = v7 + v2 - v6;
        a1[1] = v4;
        a1[2] = 0;
        if (v2 <= 0)
        {
          break;
        }
      }
    }

    v8 = a1[1];
    if (v8 < sub_F540B8(*a1))
    {
      do
      {
        v9 = a1[2];
        v10 = sub_F540D4(*a1, a1[1]);
        if (v9 != sub_F53860(v10))
        {
          break;
        }

        v11 = *a1;
        v12 = a1[1] + 1;
        a1[1] = v12;
        a1[2] = 0;
      }

      while (v12 < sub_F540B8(v11));
    }

    return a1;
  }
}

void *sub_F5269C(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

uint64_t *sub_F529D8(uint64_t *a1, uint64_t *a2)
{
  v4 = a2 + 2;
  v5 = __ROR8__(a2[2], 32);
  v6 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v5 ^ (v5 >> 33))) >> 33));
  v7 = v6 ^ (v6 >> 33);
  *(v4 - 1) = v7;
  v8 = sub_F52B34(a1, v7, v4);
  v9 = a1[1];
  v10 = *(v4 - 1);
  v11 = vcnt_s8(v9);
  v11.i16[0] = vaddlv_u8(v11);
  if (v10 >= *&v9)
  {
    v12 = v10 % *&v9;
  }

  else
  {
    v12 = *(v4 - 1);
  }

  v13 = *&v9 - 1;
  v14 = (*&v9 - 1) & v10;
  if (v11.u32[0] > 1uLL)
  {
    v14 = v12;
  }

  if (v8)
  {
    *a2 = *v8;
    *v8 = a2;
    if (*a2)
    {
      v15 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v15 >= *&v9)
        {
          v15 %= *&v9;
        }
      }

      else
      {
        v15 &= v13;
      }

      if (v15 != v14)
      {
        v18 = (*a1 + 8 * v15);
LABEL_20:
        *v18 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v16 = *a1;
    *(*a1 + 8 * v14) = a1 + 2;
    if (*a2)
    {
      v17 = *(*a2 + 8);
      if (v11.u32[0] > 1uLL)
      {
        if (v17 >= *&v9)
        {
          v17 %= *&v9;
        }
      }

      else
      {
        v17 &= v13;
      }

      v18 = (v16 + 8 * v17);
      goto LABEL_20;
    }
  }

  ++a1[3];
  return a2;
}

uint64_t *sub_F52B34(uint64_t a1, unint64_t a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (v6 && (v8 * v6) >= v7)
  {
    v9 = v6 - 1;
    if ((v6 & (v6 - 1)) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_44;
  }

  v18 = 1;
  if (v6 >= 3)
  {
    v18 = (v6 & (v6 - 1)) != 0;
  }

  v19 = v18 | (2 * v6);
  v20 = vcvtps_u32_f32(v7 / v8);
  if (v19 <= v20)
  {
    prime = v20;
  }

  else
  {
    prime = v19;
  }

  if (prime == 1)
  {
    prime = 2;
  }

  else if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v6 = *(a1 + 8);
  }

  if (prime > v6)
  {
    goto LABEL_27;
  }

  if (prime < v6)
  {
    v22 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (v6 < 3 || (v23 = vcnt_s8(v6), v23.i16[0] = vaddlv_u8(v23), v23.u32[0] > 1uLL))
    {
      v25 = prime;
      v26 = std::__next_prime(v22);
      if (v25 <= v26)
      {
        prime = v26;
      }

      else
      {
        prime = v25;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v24 = 1 << -__clz(v22 - 1);
      if (v22 >= 2)
      {
        v22 = v24;
      }

      if (prime <= v22)
      {
        prime = v22;
      }

      if (prime >= v6)
      {
        goto LABEL_43;
      }
    }

LABEL_27:
    sub_F52DBC(a1, prime);
  }

LABEL_43:
  v6 = *(a1 + 8);
  v9 = v6 - 1;
  if ((v6 & (v6 - 1)) == 0)
  {
LABEL_4:
    v10 = *(*a1 + 8 * (v9 & a2));
    if (!v10)
    {
      return 0;
    }

    v11 = 0;
    do
    {
      result = v10;
      v10 = *v10;
      if (!v10)
      {
        break;
      }

      v17 = v10[1];
      if ((v17 & v9) != (v9 & a2))
      {
        break;
      }

      if (v17 == a2)
      {
        v12 = *(v10 + 4) == *a3 && *(v10 + 5) == a3[1];
        v13 = v12;
      }

      else
      {
        v13 = 0;
      }

      v14 = v13 != (v11 & 1);
      v15 = v11 & v14;
      v11 |= v14;
    }

    while ((v15 & 1) == 0);
    return result;
  }

LABEL_44:
  v27 = a2;
  if (v6 <= a2)
  {
    v27 = a2 % v6;
  }

  v28 = *(*a1 + 8 * v27);
  if (!v28)
  {
    return 0;
  }

  v29 = 0;
  do
  {
    result = v28;
    v28 = *v28;
    if (!v28)
    {
      break;
    }

    v34 = v28[1];
    v35 = v34;
    if (v34 >= v6)
    {
      v35 = v34 % v6;
    }

    if (v35 != v27)
    {
      break;
    }

    if (v34 == a2)
    {
      v30 = *(v28 + 4) == *a3 && *(v28 + 5) == a3[1];
      v31 = v30;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31 != (v29 & 1);
    v33 = v29 & v32;
    v29 |= v32;
  }

  while (v33 != 1);
  return result;
}

void sub_F52DBC(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_F52F80()
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
  xmmword_27BF690 = 0u;
  unk_27BF6A0 = 0u;
  dword_27BF6B0 = 1065353216;
  sub_3A9A34(&xmmword_27BF690, v0);
  sub_3A9A34(&xmmword_27BF690, v3);
  sub_3A9A34(&xmmword_27BF690, __p);
  sub_3A9A34(&xmmword_27BF690, v9);
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
      goto LABEL_5;
    }

LABEL_9:
    operator delete(v0[0]);
LABEL_5:
    qword_27BF668 = 0;
    qword_27BF670 = 0;
    qword_27BF660 = 0;
    operator new();
  }

LABEL_8:
  operator delete(v3[0]);
  if ((v1 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  goto LABEL_9;
}

void sub_F531C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27BF678)
  {
    qword_27BF680 = qword_27BF678;
    operator delete(qword_27BF678);
  }

  _Unwind_Resume(exception_object);
}

void *sub_F532B4(void *result, unint64_t a2, int a3)
{
  v3 = result[6];
  if (!*&v3)
  {
    goto LABEL_21;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(result[5] + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_21:
    v11 = a2;
    v12 = a3;
    return sub_F55F28(result + 5, &v11);
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v3 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == a2)
      {
        if (v7[2] == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_21;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v10 = v7[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= *&v3)
    {
      v10 %= *&v3;
    }

    if (v10 != v5)
    {
      goto LABEL_21;
    }

LABEL_16:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_21;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  *(v7 + 6) |= a3;
  return result;
}

uint64_t sub_F533D4(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[6];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*&a1[5] + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  v6 = *v5;
  if (!v6)
  {
    return 0;
  }

  if (v3.u32[0] < 2uLL)
  {
    v7 = *&v2 - 1;
    while (1)
    {
      v8 = v6[1];
      if (v8 == a2)
      {
        if (v6[2] == a2)
        {
          return *(v6 + 6);
        }
      }

      else if ((v8 & v7) != v4)
      {
        return 0;
      }

      v6 = *v6;
      if (!v6)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v9 = v6[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= *&v2)
    {
      v9 %= *&v2;
    }

    if (v9 != v4)
    {
      return 0;
    }

LABEL_16:
    v6 = *v6;
    if (!v6)
    {
      return 0;
    }
  }

  if (v6[2] != a2)
  {
    goto LABEL_16;
  }

  return *(v6 + 6);
}

uint64_t sub_F534B0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[11];
  if (v3 >= a1[12])
  {
    result = sub_F54F1C(a1 + 10, a2);
    a1[11] = result;
  }

  else
  {
    v4 = *a2;
    v5 = *(a2 + 16);
    *(v3 + 32) = 0;
    *v3 = v4;
    *(v3 + 16) = v5;
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
    v7 = *(a2 + 32);
    v6 = *(a2 + 40);
    if (v6 != v7)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v8 = *(a2 + 56);
    v9 = *(a2 + 72);
    *(v3 + 87) = *(a2 + 87);
    *(v3 + 72) = v9;
    *(v3 + 56) = v8;
    result = v3 + 96;
    a1[11] = v3 + 96;
    a1[11] = v3 + 96;
  }

  return result;
}

void sub_F535B8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  *(v1 + 88) = v2;
  _Unwind_Resume(exception_object);
}

void sub_F535D8(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 5) > a2)
  {
    v5 = v2 + 96 * a2;
    while (v3 != v5)
    {
      v6 = *(v3 - 64);
      if (v6)
      {
        *(v3 - 56) = v6;
        operator delete(v6);
      }

      v3 -= 96;
    }

    *(a1 + 88) = v5;
  }
}

unint64_t sub_F53650(unint64_t *a1, uint64_t a2)
{
  v3 = a1[11];
  if (v3 >= a1[12])
  {
    result = sub_F551E0(a1 + 10, a2);
    a1[11] = result;
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = 0;
    *v3 = v4;
    *(v3 + 24) = 0;
    *(v3 + 32) = 0;
    v6 = *(a2 + 16);
    v5 = *(a2 + 24);
    if (v5 != v6)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    *(v3 + 71) = *(a2 + 71);
    *(v3 + 56) = v8;
    *(v3 + 40) = v7;
    result = v3 + 80;
    a1[11] = v3 + 80;
    a1[11] = v3 + 80;
  }

  return result;
}

void sub_F53758(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  *(v1 + 88) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_F53778(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = a2[2];
  v7 = a2[10];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 + 32 != a1)
  {
    sub_35354C(a1, *(v7 + 32), *(v7 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 40) - *(v7 + 32)) >> 2));
  }

  sub_F545B0(a1);
  *(a1 + 40) = v4;
  *&v8 = 0xFFFFFFFF00000000;
  *(&v8 + 1) = 0xFFFFFFFF00000000;
  *(a1 + 44) = v8;
  *(a1 + 60) = v8;
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 96) = a2[1];
  *(a1 + 104) = a2[3];
  v9 = a2[10];
  v10 = *v9;
  *(a1 + 60) = v9[1];
  *(a1 + 44) = v10;
  return a1;
}

void sub_F53844(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F5387C(uint64_t a1, uint64_t *a2)
{
  v4 = *(a2 + 8);
  v5 = *a2;
  v6 = a2[2];
  v7 = a2[10];
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (v7 + 16 != a1)
  {
    sub_35354C(a1, *(v7 + 16), *(v7 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 24) - *(v7 + 16)) >> 2));
  }

  sub_F545B0(a1);
  *(a1 + 40) = v4;
  *&v8 = 0xFFFFFFFF00000000;
  *(&v8 + 1) = 0xFFFFFFFF00000000;
  *(a1 + 44) = v8;
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 80) = a2[1];
  *(a1 + 88) = a2[3];
  *(a1 + 44) = *a2[10];
  return a1;
}

void sub_F53940(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F5395C(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_F554A4(a1, a2);
    a1[1] = result;
  }

  else
  {
    sub_F55608(a1[1], a2);
    result = v3 + 136;
    a1[1] = v3 + 136;
    a1[1] = v3 + 136;
  }

  return result;
}

char **sub_F539E8@<X0>(char **result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *result;
  v4 = result[1];
  if (*result == v4)
  {
    goto LABEL_11;
  }

  v5 = v4 - v3 - 136;
  if (v5 < 0x88)
  {
    v6 = 0;
    v7 = *result;
    do
    {
LABEL_7:
      v17 = *v7;
      v16 = *(v7 + 1);
      v7 += 136;
      v6 -= 1431655765 * ((v16 - v17) >> 2);
    }

    while (v7 != v4);
    goto LABEL_8;
  }

  v8 = 0;
  v9 = 0;
  v10 = v5 / 0x88 + 1;
  v7 = &v3[136 * (v10 & 0x3FFFFFFFFFFFFFELL)];
  v11 = (v3 + 136);
  v12 = v10 & 0x3FFFFFFFFFFFFFELL;
  do
  {
    v14 = *(v11 - 17);
    v13 = *(v11 - 16);
    v15 = *v11;
    result = v11[1];
    v11 += 34;
    v8 -= 1431655765 * ((v13 - v14) >> 2);
    v9 -= 1431655765 * ((result - v15) >> 2);
    v12 -= 2;
  }

  while (v12);
  v6 = v9 + v8;
  if (v10 != (v10 & 0x3FFFFFFFFFFFFFELL))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_11:
  while (v3 != v4)
  {
    result = sub_318AE8(a2, *(a2 + 8), *v3, *(v3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 1) - *v3) >> 2));
    v3 += 136;
  }

  return result;
}

void sub_F53B48(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F53B64(uint64_t a1, void *a2)
{
  memset(__p, 0, 24);
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p[5] = __p;
}

void sub_F53CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F53D0C(void *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v4 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_F56264(&v36, v4);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    v5 = *a2;
    v33 = a2[1];
    if (*a2 != v33)
    {
      while (1)
      {
        v6 = v5[1];
        v7 = v5[4];
        v8 = v6 <= v7 + 1 ? v7 + 1 : v5[1];
        if (v6 < v7 + 1)
        {
          break;
        }

LABEL_6:
        v5 += 6;
        if (v5 == v33)
        {
          goto LABEL_34;
        }
      }

      v9 = 136 * v6;
      v10 = 24 * v6;
      v34 = v8;
      v35 = v5;
      while (1)
      {
        if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3))
        {
          goto LABEL_14;
        }

        if (v6 == v5[1])
        {
          v12 = v5[2];
          if (v6 != v5[4])
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
          if (v6 != v5[4])
          {
LABEL_18:
            v13 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + v9 + 8) - *(*a1 + v9)) >> 2);
            v14 = v36 + v10;
            v16 = *(v36 + v10 + 8);
            v15 = *(v36 + v10 + 16);
            if (v16 >= v15)
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        v13 = v5[5];
        v14 = v36 + v10;
        v16 = *(v36 + v10 + 8);
        v15 = *(v36 + v10 + 16);
        if (v16 >= v15)
        {
LABEL_22:
          v17 = *v14;
          v18 = v16 - *v14;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            sub_1794();
          }

          v21 = v15 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            if (!(v22 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v23 = (16 * v19);
          *v23 = v12;
          v23[1] = v13;
          v11 = 16 * v19 + 16;
          memcpy(0, v17, v18);
          *v14 = 0;
          *(v14 + 1) = v11;
          *(v14 + 2) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v8 = v34;
          v5 = v35;
          goto LABEL_13;
        }

LABEL_12:
        *v16 = v12;
        v16[1] = v13;
        v11 = (v16 + 2);
LABEL_13:
        *(v14 + 1) = v11;
LABEL_14:
        ++v6;
        v9 += 136;
        v10 += 24;
        if (v8 == v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_34:
    v24 = v36;
    if (v37 != v36)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3);
      do
      {
        sub_F53B64(*a1 + v26, v36 + v25);
        v26 += 136;
        v25 += 24;
        --v27;
      }

      while (v27);
      v24 = v36;
    }

    if (v24)
    {
      v28 = v37;
      v29 = v24;
      if (v37 != v24)
      {
        v30 = v37;
        do
        {
          v32 = *(v30 - 3);
          v30 -= 24;
          v31 = v32;
          if (v32)
          {
            *(v28 - 2) = v31;
            operator delete(v31);
          }

          v28 = v30;
        }

        while (v30 != v24);
        v29 = v36;
      }

      v37 = v24;
      operator delete(v29);
    }
  }
}

void sub_F54000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5401C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F54030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F54044(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F54058(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_F55954(a1, a2);
    a1[1] = result;
  }

  else
  {
    sub_F55AB8(a1[1], a2);
    result = v3 + 120;
    a1[1] = v3 + 120;
    a1[1] = v3 + 120;
  }

  return result;
}

char *sub_F540E4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v3 = *result;
  v4 = *(result + 1);
  if (*result == v4)
  {
    goto LABEL_11;
  }

  v5 = v4 - v3 - 120;
  if (v5 < 0x78)
  {
    v6 = 0;
    v7 = *result;
    do
    {
LABEL_7:
      v14 = *v7;
      v13 = *(v7 + 1);
      v7 += 120;
      v6 -= 1431655765 * ((v13 - v14) >> 2);
    }

    while (v7 != v4);
    goto LABEL_8;
  }

  v8 = 0;
  v9 = 0;
  v10 = v5 / 0x78 + 1;
  v7 = &v3[120 * (v10 & 0x7FFFFFFFFFFFFFELL)];
  v11 = (v3 + 128);
  v12 = v10 & 0x7FFFFFFFFFFFFFELL;
  do
  {
    result = *v11;
    v8 -= 1431655765 * ((*(v11 - 15) - *(v11 - 16)) >> 2);
    v9 -= 1431655765 * ((*v11 - *(v11 - 1)) >> 2);
    v11 += 30;
    v12 -= 2;
  }

  while (v12);
  v6 = v9 + v8;
  if (v10 != (v10 & 0x7FFFFFFFFFFFFFELL))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

LABEL_11:
  while (v3 != v4)
  {
    result = sub_318AE8(a2, *(a2 + 8), *v3, *(v3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 1) - *v3) >> 2));
    v3 += 120;
  }

  return result;
}

void sub_F54248(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F54264(void *a1, void *a2)
{
  if (*a2 != a2[1])
  {
    v4 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
    __p = 0;
    v39 = 0;
    v40 = 0;
    sub_F56264(&v36, v4);
    if (__p)
    {
      v39 = __p;
      operator delete(__p);
    }

    v5 = *a2;
    v33 = a2[1];
    if (*a2 != v33)
    {
      while (1)
      {
        v6 = v5[1];
        v7 = v5[4];
        v8 = v6 <= v7 + 1 ? v7 + 1 : v5[1];
        if (v6 < v7 + 1)
        {
          break;
        }

LABEL_6:
        v5 += 6;
        if (v5 == v33)
        {
          goto LABEL_34;
        }
      }

      v9 = 120 * v6;
      v10 = 24 * v6;
      v34 = v8;
      v35 = v5;
      while (1)
      {
        if (v6 >= 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3))
        {
          goto LABEL_14;
        }

        if (v6 == v5[1])
        {
          v12 = v5[2];
          if (v6 != v5[4])
          {
            goto LABEL_18;
          }
        }

        else
        {
          v12 = 0;
          if (v6 != v5[4])
          {
LABEL_18:
            v13 = 0xAAAAAAAAAAAAAAABLL * ((*(*a1 + v9 + 8) - *(*a1 + v9)) >> 2);
            v14 = v36 + v10;
            v16 = *(v36 + v10 + 8);
            v15 = *(v36 + v10 + 16);
            if (v16 >= v15)
            {
              goto LABEL_22;
            }

            goto LABEL_12;
          }
        }

        v13 = v5[5];
        v14 = v36 + v10;
        v16 = *(v36 + v10 + 8);
        v15 = *(v36 + v10 + 16);
        if (v16 >= v15)
        {
LABEL_22:
          v17 = *v14;
          v18 = v16 - *v14;
          v19 = v18 >> 4;
          v20 = (v18 >> 4) + 1;
          if (v20 >> 60)
          {
            sub_1794();
          }

          v21 = v15 - v17;
          if (v21 >> 3 > v20)
          {
            v20 = v21 >> 3;
          }

          if (v21 >= 0x7FFFFFFFFFFFFFF0)
          {
            v22 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            if (!(v22 >> 60))
            {
              operator new();
            }

            sub_1808();
          }

          v23 = (16 * v19);
          *v23 = v12;
          v23[1] = v13;
          v11 = 16 * v19 + 16;
          memcpy(0, v17, v18);
          *v14 = 0;
          *(v14 + 1) = v11;
          *(v14 + 2) = 0;
          if (v17)
          {
            operator delete(v17);
          }

          v8 = v34;
          v5 = v35;
          goto LABEL_13;
        }

LABEL_12:
        *v16 = v12;
        v16[1] = v13;
        v11 = (v16 + 2);
LABEL_13:
        *(v14 + 1) = v11;
LABEL_14:
        ++v6;
        v9 += 120;
        v10 += 24;
        if (v8 == v6)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_34:
    v24 = v36;
    if (v37 != v36)
    {
      v25 = 0;
      v26 = 0;
      v27 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3);
      do
      {
        sub_F53B64(*a1 + v26, v36 + v25);
        v26 += 120;
        v25 += 24;
        --v27;
      }

      while (v27);
      v24 = v36;
    }

    if (v24)
    {
      v28 = v37;
      v29 = v24;
      if (v37 != v24)
      {
        v30 = v37;
        do
        {
          v32 = *(v30 - 3);
          v30 -= 24;
          v31 = v32;
          if (v32)
          {
            *(v28 - 2) = v31;
            operator delete(v31);
          }

          v28 = v30;
        }

        while (v30 != v24);
        v29 = v36;
      }

      v37 = v24;
      operator delete(v29);
    }
  }
}

void sub_F54558(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F54574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F54588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F5459C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_F545B0(void *a1)
{
  v2 = a1[1];
  v3 = (*a1 + 12);
  v4 = 0;
  if (*a1 != v2 && v3 != v2)
  {
    v31 = vdupq_n_s64(0x41EFFFFFFFE00000uLL);
    v32 = vdupq_n_s64(0x4076800000000000uLL);
    v29 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v30 = vdupq_n_s64(0xC066800000000000);
    do
    {
      v8 = *(v3 - 3);
      v7 = *(v3 - 2);
      v9 = v8 == -1 && v7 == -1;
      if (v9 || ((v11 = *v3, v10 = v3[1], *v3 == -1) ? (v12 = v10 == -1) : (v12 = 0), v12))
      {
        v6 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_8;
      }

      v13 = exp(3.14159265 - v7 * 6.28318531 / 4294967300.0);
      v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
      v15.i64[0] = v8;
      v15.i64[1] = v11;
      v16 = exp(3.14159265 - v10 * 6.28318531 / 4294967300.0);
      v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795 * 0.0174532925;
      v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), v32), v31), v30), v29);
      v33 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
      v19 = sin((v14 - v17) * 0.5);
      v20 = v19 * v19;
      v21 = cos(v14);
      v22 = v21 * cos(v17);
      v23 = sin(0.5 * v33);
      v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
      v25 = (v24 + v24) * 6372797.56 * 100.0;
      if (v25 >= 0.0)
      {
        v26 = v25;
        if (v25 < 4.50359963e15)
        {
          v27 = (v25 + v25) + 1;
          goto LABEL_22;
        }
      }

      else
      {
        v26 = v25;
        if (v25 > -4.50359963e15)
        {
          v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
LABEL_22:
          v26 = (v27 >> 1);
        }
      }

      if (v26 < 9.22337204e18)
      {
        if (v25 >= 0.0)
        {
          if (v25 < 4.50359963e15)
          {
            v28 = (v25 + v25) + 1;
LABEL_30:
            v25 = (v28 >> 1);
          }
        }

        else if (v25 > -4.50359963e15)
        {
          v28 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
          goto LABEL_30;
        }

        v6 = v25;
        goto LABEL_8;
      }

      v6 = 0x7FFFFFFFFFFFFFFELL;
LABEL_8:
      v4 += v6;
      v3 += 3;
    }

    while (v3 != v2);
  }

  a1[3] = v4;
}

uint64_t sub_F548B4(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != a2)
  {
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void sub_F54924(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

char **sub_F54940(char **result, uint64_t a2)
{
  if (result != a2)
  {
    v2 = result;
    sub_35354C(result, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    result = v2;
    v2[3] = *(a2 + 24);
    v2[4] = *(a2 + 32);
  }

  return result;
}

void sub_F549A4(uint64_t a1, unsigned int *a2, int a3)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  if (*a1 == v6)
  {
    v28 = *(a1 + 16);
    if (v5 >= v28)
    {
      v29 = 0xAAAAAAAAAAAAAAABLL * ((v28 - v5) >> 2);
      v30 = 2 * v29;
      if (2 * v29 <= 1)
      {
        v30 = 1;
      }

      if (v29 >= 0xAAAAAAAAAAAAAAALL)
      {
        v31 = 0x1555555555555555;
      }

      else
      {
        v31 = v30;
      }

      if (v31 <= 0x1555555555555555)
      {
        operator new();
      }

LABEL_52:
      sub_1808();
    }

    goto LABEL_25;
  }

  v7 = *a2;
  v9 = *(v6 - 12);
  v8 = *(v6 - 8);
  if (v9 != *a2 || !a3 || v8 != a2[1])
  {
    v10 = v9 == -1 && v8 == -1;
    if (v10 || ((v11 = a2[1], v7 == -1) ? (v12 = v11 == -1) : (v12 = 0), v12))
    {
      v32 = *(a1 + 16);
      *(a1 + 24) += 0x7FFFFFFFFFFFFFFFLL;
      if (v6 >= v32)
      {
LABEL_39:
        v36 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 2) + 1;
        if (v36 > 0x1555555555555555)
        {
          sub_1794();
        }

        v37 = 0xAAAAAAAAAAAAAAABLL * ((v32 - v5) >> 2);
        if (2 * v37 > v36)
        {
          v36 = 2 * v37;
        }

        if (v37 >= 0xAAAAAAAAAAAAAAALL)
        {
          v38 = 0x1555555555555555;
        }

        else
        {
          v38 = v36;
        }

        if (v38)
        {
          if (v38 <= 0x1555555555555555)
          {
            operator new();
          }

          goto LABEL_52;
        }

        v39 = 4 * ((v6 - v5) >> 2);
        *v39 = *a2;
        *(v39 + 8) = a2[2];
        v34 = v39 + 12;
        v40 = (v39 - (v6 - v5));
        memcpy(v40, v5, v6 - v5);
        *a1 = v40;
        *(a1 + 8) = v34;
        *(a1 + 16) = 0;
        if (v5)
        {
          operator delete(v5);
        }

        goto LABEL_50;
      }

LABEL_25:
      v33 = *a2;
      *(v6 + 8) = a2[2];
      *v6 = v33;
      v34 = v6 + 12;
LABEL_50:
      *(a1 + 8) = v34;
      return;
    }

    v13 = exp(3.14159265 - v8 * 6.28318531 / 4294967300.0);
    v14 = atan((v13 - 1.0 / v13) * 0.5) * 57.2957795 * 0.0174532925;
    v15.i64[0] = v9;
    v15.i64[1] = v7;
    v16 = exp(3.14159265 - v11 * 6.28318531 / 4294967300.0);
    v17 = atan((v16 - 1.0 / v16) * 0.5) * 57.2957795 * 0.0174532925;
    v18 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v15), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v41 = vsubq_f64(v18, vdupq_laneq_s64(v18, 1)).f64[0];
    v19 = sin((v14 - v17) * 0.5);
    v20 = v19 * v19;
    v21 = cos(v14);
    v22 = v21 * cos(v17);
    v23 = sin(0.5 * v41);
    v24 = atan2(sqrt(v23 * v23 * v22 + v20), sqrt(1.0 - (v23 * v23 * v22 + v20)));
    v25 = (v24 + v24) * 6372797.56 * 100.0;
    if (v25 >= 0.0)
    {
      v26 = v25;
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_29;
      }

      v27 = (v25 + v25) + 1;
    }

    else
    {
      v26 = v25;
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_29;
      }

      v27 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v26 = (v27 >> 1);
LABEL_29:
    if (v26 >= 9.22337204e18)
    {
      v32 = *(a1 + 16);
      *(a1 + 24) += 0x7FFFFFFFFFFFFFFELL;
      if (v6 >= v32)
      {
        goto LABEL_39;
      }

      goto LABEL_25;
    }

    if (v25 >= 0.0)
    {
      if (v25 >= 4.50359963e15)
      {
        goto LABEL_38;
      }

      v35 = (v25 + v25) + 1;
    }

    else
    {
      if (v25 <= -4.50359963e15)
      {
        goto LABEL_38;
      }

      v35 = (v25 + v25) - 1 + (((v25 + v25) - 1) >> 63);
    }

    v25 = (v35 >> 1);
LABEL_38:
    v32 = *(a1 + 16);
    *(a1 + 24) += v25;
    if (v6 >= v32)
    {
      goto LABEL_39;
    }

    goto LABEL_25;
  }
}

void sub_F54E4C(char **a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
    a1 = v3;
  }

  sub_F545B0(a1);
}

void sub_F54EA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[4];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 > a3)
  {
    sub_45884(a2, a3, a1);
    a1[4] = a3;
  }
}

void *sub_F54F0C(void *result)
{
  result[1] = *result;
  result[3] = 0;
  return result;
}

uint64_t sub_F54F1C(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5) + 1;
  if (v2 > 0x2AAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v2)
  {
    v2 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v4 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 32 * ((a1[1] - *a1) >> 5);
  v6 = *a2;
  v7 = a2[1];
  *(&stru_20.cmd + v5) = 0;
  *v5 = v6;
  *(v5 + 16) = v7;
  *(v5 + 40) = 0;
  *(v5 + 48) = 0;
  v9 = *(a2 + 4);
  v8 = *(a2 + 5);
  if (v8 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(v5 + 56) = *(a2 + 56);
  *(v5 + 72) = *(a2 + 72);
  *(v5 + 87) = *(a2 + 87);
  v10 = *a1;
  v11 = a1[1];
  v12 = v5 + *a1 - v11;
  if (*a1 != v11)
  {
    v13 = *a1;
    v14 = v5 + *a1 - v11;
    do
    {
      v15 = *(v13 + 1);
      *v14 = *v13;
      *(v14 + 16) = v15;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 32) = 0;
      *(v14 + 32) = *(v13 + 2);
      *(v14 + 48) = v13[6];
      v13[4] = 0;
      v13[5] = 0;
      v13[6] = 0;
      v16 = *(v13 + 7);
      v17 = *(v13 + 9);
      *(v14 + 87) = *(v13 + 87);
      *(v14 + 72) = v17;
      *(v14 + 56) = v16;
      v13 += 12;
      v14 += 96;
    }

    while (v13 != v11);
    do
    {
      v18 = v10[4];
      if (v18)
      {
        v10[5] = v18;
        operator delete(v18);
      }

      v10 += 12;
    }

    while (v10 != v11);
    v10 = *a1;
  }

  *a1 = v12;
  a1[1] = v5 + 96;
  a1[2] = 0;
  if (v10)
  {
    operator delete(v10);
  }

  return v5 + 96;
}

void sub_F5514C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 40) = v5;
    operator delete(v5);
  }

  sub_F55170(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55170(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 96;
        *(a1 + 16) = v2 - 96;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 96;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

unint64_t sub_F551E0(unint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x333333333333333)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v4 = 0x333333333333333;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x333333333333333)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 16 * ((a1[1] - *a1) >> 4);
  v6 = *a2;
  *&dword_10[v5 / 4] = 0;
  *v5 = v6;
  *(v5 + 24) = 0;
  *(v5 + 32) = 0;
  v8 = *(a2 + 2);
  v7 = *(a2 + 3);
  if (v7 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  *(v5 + 40) = *(a2 + 40);
  *(v5 + 56) = *(a2 + 56);
  *(v5 + 71) = *(a2 + 71);
  v9 = *a1;
  v10 = a1[1];
  v11 = v5 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v5 + *a1 - v10;
    do
    {
      *v13 = *v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 16) = 0;
      *(v13 + 16) = *(v12 + 1);
      *(v13 + 32) = v12[4];
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = 0;
      v14 = *(v12 + 5);
      v15 = *(v12 + 7);
      *(v13 + 71) = *(v12 + 71);
      *(v13 + 56) = v15;
      *(v13 + 40) = v14;
      v12 += 10;
      v13 += 80;
    }

    while (v12 != v10);
    do
    {
      v16 = v9[2];
      if (v16)
      {
        v9[3] = v16;
        operator delete(v16);
      }

      v9 += 10;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v11;
  a1[1] = v5 + 80;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v5 + 80;
}

void sub_F55410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 24) = v5;
    operator delete(v5);
  }

  sub_F55434(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55434(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      while (1)
      {
        v4 = v2 - 80;
        *(a1 + 16) = v2 - 80;
        v5 = *(v2 - 64);
        if (!v5)
        {
          break;
        }

        *(v2 - 56) = v5;
        operator delete(v5);
        v2 = *(a1 + 16);
        if (v2 == v3)
        {
          goto LABEL_6;
        }
      }

      v2 -= 80;
    }

    while (v4 != v3);
  }

LABEL_6:
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_F554A4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1E1E1E1E1E1E1E1)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 3);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 3) >= 0xF0F0F0F0F0F0F0)
  {
    v5 = 0x1E1E1E1E1E1E1E1;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x1E1E1E1E1E1E1E1)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 136 * v2;
  v16 = 0;
  sub_F55608(136 * v2, a2);
  v15 = 136 * v2 + 136;
  sub_F55748(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 136);
    v15 -= 136;
    v10 = *(v8 - 24);
    if (v10)
    {
      *(v8 - 16) = v10;
      operator delete(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 128) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F555F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F558DC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55608(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != a2)
  {
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  v7 = *(a2 + 104);
  v8 = *(a2 + 40);
  *(a1 + 112) = 0;
  *(a1 + 40) = v8;
  *(a1 + 104) = v7;
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v10 = *(a2 + 112);
  v9 = *(a2 + 120);
  if (v9 != v10)
  {
    if (((v9 - v10) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F55714(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F55748(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v15 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = v6;
    do
    {
      sub_F55608(v8, v9);
      v9 += 136;
      v8 = v15 + 136;
      v15 += 136;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 112);
      if (v10)
      {
        *(v6 + 120) = v10;
        operator delete(v10);
      }

      v11 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v11;
        operator delete(v11);
      }

      v6 += 136;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v12 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_F55860(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 24);
        if (v7)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v8 = v4 - 136;
        v9 = *(v4 - 136);
        if (v9)
        {
          *(v4 - 128) = v9;
          operator delete(v9);
        }

        v4 -= 136;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

uint64_t sub_F558DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 136);
    *(a1 + 16) = i - 136;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 128) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_F55954(uint64_t *a1, uint64_t a2)
{
  v2 = 0xEEEEEEEEEEEEEEEFLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x222222222222222)
  {
    sub_1794();
  }

  if (0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDDDDDDDDDDDDDDDELL * ((a1[2] - *a1) >> 3);
  }

  if (0xEEEEEEEEEEEEEEEFLL * ((a1[2] - *a1) >> 3) >= 0x111111111111111)
  {
    v5 = 0x222222222222222;
  }

  else
  {
    v5 = v3;
  }

  v17 = a1;
  if (v5)
  {
    if (v5 <= 0x222222222222222)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v14 = 120 * v2;
  v16 = 0;
  sub_F55AB8(120 * v2, a2);
  v15 = 120 * v2 + 120;
  sub_F55BF0(a1, &__p);
  v6 = a1[1];
  v7 = v14;
  while (1)
  {
    v8 = v15;
    if (v15 == v7)
    {
      break;
    }

    v9 = (v15 - 120);
    v15 -= 120;
    v10 = *(v8 - 24);
    if (v10)
    {
      *(v8 - 16) = v10;
      operator delete(v10);
    }

    v11 = *v9;
    if (*v9)
    {
      *(v8 - 112) = v11;
      operator delete(v11);
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v6;
}

void sub_F55AA4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_F55D84(va);
  _Unwind_Resume(a1);
}

uint64_t sub_F55AB8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0x7FFFFFFFFFFFFFFFLL;
  if (a1 != a2)
  {
    sub_35354C(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 2));
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 40);
  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 96) = 0;
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  *(a1 + 40) = v4;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v9 = *(a2 + 96);
  v8 = *(a2 + 104);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_F55BBC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_F55BF0(uint64_t *a1, void *a2)
{
  v4 = a2[1];
  v6 = *a1;
  v5 = a1[1];
  v7 = v4 + *a1 - v5;
  v15 = v7;
  if (*a1 != v5)
  {
    v8 = v4 + v6 - v5;
    v9 = v6;
    do
    {
      sub_F55AB8(v8, v9);
      v9 += 120;
      v8 = v15 + 120;
      v15 += 120;
    }

    while (v9 != v5);
    do
    {
      v10 = *(v6 + 96);
      if (v10)
      {
        *(v6 + 104) = v10;
        operator delete(v10);
      }

      v11 = *v6;
      if (*v6)
      {
        *(v6 + 8) = v11;
        operator delete(v11);
      }

      v6 += 120;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v12 = *a1;
  a1[1] = *a1;
  *a1 = a2[1];
  a2[1] = v12;
  v13 = a1[1];
  a1[1] = a2[2];
  a2[2] = v13;
  v14 = a1[2];
  a1[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t sub_F55D08(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        v7 = *(v4 - 24);
        if (v7)
        {
          *(v4 - 16) = v7;
          operator delete(v7);
        }

        v8 = v4 - 120;
        v9 = *(v4 - 120);
        if (v9)
        {
          *(v4 - 112) = v9;
          operator delete(v9);
        }

        v4 -= 120;
      }

      while (v8 != v5);
    }
  }

  return a1;
}

uint64_t sub_F55D84(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 120);
    *(a1 + 16) = i - 120;
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *v4;
    if (*v4)
    {
      *(i - 112) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *sub_F55DFC(uint64_t *result, _OWORD *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 4;
    v8 = (v6 >> 4) + 1;
    if (v8 >> 60)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 60))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(16 * v7) = *a2;
    v12 = 16 * v7 + 16;
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

void *sub_F55F28(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_23;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v7[1];
      if (v9 == v2)
      {
        if (v7[2] == v2)
        {
          return v7;
        }
      }

      else if ((v9 & (*&v3 - 1)) != v5)
      {
        goto LABEL_23;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }

    if (v8 != v5)
    {
      goto LABEL_23;
    }

LABEL_12:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void *sub_F56264(void *result, unint64_t a2)
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

void sub_F563E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
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

void *sub_F5640C(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_F56554(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_4E6B1C(va1);
  sub_4E6B8C(va);
  _Unwind_Resume(a1);
}

void *sub_F56570@<X0>(void *result@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = result[1];
  if (v2 != *result)
  {
    if (!((0xAAAAAAAAAAAAAAABLL * ((v2 - *result) >> 2)) >> 60))
    {
      operator new();
    }

    sub_1794();
  }

  v3 = a2;
  return result;
}

void sub_F56634(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_F56650(void *a1, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3));
    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v13;
    }

    else
    {
      v6 = v13.__r_.__value_.__r.__words[0];
    }

    if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v13.__r_.__value_.__l.__size_;
    }

    v8 = std::string::append(&v16, v6, size);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v18 = v8->__r_.__value_.__r.__words[2];
    v17 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if (v18 >= 0)
    {
      v11 = HIBYTE(v18);
    }

    else
    {
      v11 = *(&v17 + 1);
    }

    v12 = sub_2D390(exception, v10, v11);
  }

  return *a1 + 40 * a2;
}

void sub_F5678C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 41) < 0)
  {
    operator delete(*(v32 - 64));
  }

  if (a14 < 0)
  {
    operator delete(a9);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_F5686C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 24);
    if (v3 != v2)
    {
      v5 = *(a1 + 32);
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
      v4 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v4);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_F56A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F56A44(uint64_t *a1, void *a2, float32x2_t **a3, uint64_t *a4, uint64_t a5)
{
  sub_7E9A4(v10);
  sub_F56B98(a1, a2, a4);
  sub_F56C8C(a1, a2, a3, a4, a5);
}

void sub_F56B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F56B98(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_4D1DC0(a2);
  sub_F5640C(a3, v5);
  *__p = 0u;
  v9 = 0u;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = a3[1];
    do
    {
      while (v7 >= a3[2])
      {
        v7 = sub_87B970(a3, __p);
        a3[1] = v7;
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      sub_F548B4(v7, __p);
      v7 += 40;
      a3[1] = v7;
      a3[1] = v7;
      --v6;
    }

    while (v6);
LABEL_6:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_F56C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F56C8C(uint64_t *a1, void *a2, float32x2_t **a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v8 = &v7[-2] + 1;
    do
    {
      if (v8 + 6 == v6)
      {
        goto LABEL_11;
      }

      v9 = v8[3];
      v10 = v8[4];
      v8 += 3;
    }

    while (v9 != v8[3] || v10 != v8[4]);
    v12 = (v8 + 6);
    if (v8 + 6 == v6)
    {
      v13 = (v8 + 3);
      if (v8 + 3 == v6)
      {
        goto LABEL_11;
      }

LABEL_20:
      v6 = v13;
      a3[1] = v13;
      v14 = v13 - v7;
      v59 = a2;
      if (v13 - v7 != 12)
      {
        goto LABEL_30;
      }

LABEL_21:
      v17 = a3[2];
      if (v6 >= v17)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v7) >> 2);
        if (2 * v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = 2 * v20;
        }

        if (v20 >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        if (v21 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = *v7;
      v6[1].i32[0] = v7[1].i32[0];
      *v6 = v18;
      a3[1] = (v6 + 12);
LABEL_30:
      sub_F56570(a3, &v79);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v22 = sub_4D1DC0(v5);
      if (v22)
      {
        if (!(v22 >> 59))
        {
          operator new();
        }

        sub_1794();
      }

      v23 = sub_4D1DC0(v5);
      if (v23)
      {
        if (!(v23 >> 61))
        {
          operator new();
        }

        sub_1794();
      }

      v24 = 0;
      v25 = sub_4D1DC0(v5);
      if (v25)
      {
        v26 = 0;
        v58 = v25;
        do
        {
          v27 = *a1;
          v28 = sub_4D1F50(v5, v26);
          sub_2B7A20(v27, *(v28 + 32) & 0xFFFFFFFFFFFFFFLL, &v61);
          sub_31BF20(&v61, &v68);
          if (__p)
          {
            v63 = __p;
            operator delete(__p);
          }

          v29 = v68;
          v30 = v69;
          if (v68 != v69)
          {
            v31 = v68 + 12;
            if (v68 + 12 != v69)
            {
              do
              {
                v32 = v77;
                if (v77 >= v78)
                {
                  v36 = v76;
                  v37 = v77 - v76;
                  v38 = (v77 - v76) >> 5;
                  v39 = v38 + 1;
                  if ((v38 + 1) >> 59)
                  {
                    sub_1794();
                  }

                  v40 = v78 - v76;
                  if ((v78 - v76) >> 4 > v39)
                  {
                    v39 = v40 >> 4;
                  }

                  if (v40 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v41 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v41)
                  {
                    if (!(v41 >> 59))
                    {
                      operator new();
                    }

LABEL_74:
                    sub_1808();
                  }

                  v42 = (32 * v38);
                  v43 = *(v31 - 12);
                  v44.i64[0] = v43;
                  v44.i64[1] = HIDWORD(v43);
                  *v42 = vcvtq_f64_u64(v44);
                  v44.i64[0] = *v31;
                  v44.i64[1] = HIDWORD(*v31);
                  v42[1] = vcvtq_f64_u64(v44);
                  v35 = 32 * v38 + 32;
                  memcpy(0, v36, v37);
                  v76 = 0;
                  v77 = v35;
                  v78 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  v33 = *(v31 - 12);
                  v34.i64[0] = v33;
                  v34.i64[1] = HIDWORD(v33);
                  *v77 = vcvtq_f64_u64(v34);
                  v34.i64[0] = *v31;
                  v34.i64[1] = HIDWORD(*v31);
                  v32[1] = vcvtq_f64_u64(v34);
                  v35 = &v32[2];
                }

                v77 = v35;
                v45 = v24;
                v46 = v24 >> 3;
                if (((v24 >> 3) + 1) >> 61)
                {
                  sub_1794();
                }

                if (v24 >> 3 != -1)
                {
                  if (!(((v24 >> 3) + 1) >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_74;
                }

                *(8 * v46) = v26;
                v24 = 8 * v46 + 8;
                memcpy(0, 0, v45);
                v31 = (v31 + 12);
              }

              while (v31 != v30);
              v29 = v68;
            }

            v5 = v59;
          }

          if (v29)
          {
            v69 = v29;
            operator delete(v29);
          }

          ++v26;
        }

        while (v26 != v58);
      }

      v47 = sub_321E4(v75, a3);
      v48 = a1[2];
      v49 = sub_34490(v47);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v61 = 0;
      __p = 0;
      v63 = 0;
      sub_C0A400(&v71, 0x2000uLL);
      if (v61)
      {
        __p = v61;
        operator delete(v61);
      }

      sub_7E9A4(v67);
      sub_43268(&v68, &v79, &v76, &v72, v48 / 100.0 / v49);
      v50 = sub_7EA60(v67);
      v51 = v72;
      v52 = v73;
      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v73 - v72));
      *(a5 + 16) = (v50 + *(a5 + 16));
      if (v52 == v51)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      sub_F61244(v51, v52, &v61, v54, 1);
      v55 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
      v65 = 0;
      v66 = 0;
      v64 = 0;
      if (!(v55 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    do
    {
      if (*v8 != v12->i32[0] || v8[1] != v12->i32[1])
      {
        v16 = v12[1].i32[0];
        *(v8 + 3) = *v12;
        v8 += 3;
        v8[2] = v16;
      }

      v12 = (v12 + 12);
    }

    while (v12 != v6);
    v7 = *a3;
    v6 = a3[1];
    v13 = (v8 + 3);
    if (v8 + 3 != v6)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  v14 = v6 - v7;
  v59 = a2;
  if (v6 - v7 != 12)
  {
    goto LABEL_30;
  }

  goto LABEL_21;
}

void sub_F5823C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F5686C(&a66);
  v69 = *(v67 - 248);
  if (v69)
  {
    *(v67 - 240) = v69;
    operator delete(v69);
  }

  if (v66)
  {
    operator delete(v66);
    v70 = *(v67 - 208);
    if (!v70)
    {
LABEL_7:
      v71 = *(v67 - 184);
      if (!v71)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v70 = *(v67 - 208);
    if (!v70)
    {
      goto LABEL_7;
    }
  }

  *(v67 - 200) = v70;
  operator delete(v70);
  v71 = *(v67 - 184);
  if (!v71)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v67 - 176) = v71;
  operator delete(v71);
  _Unwind_Resume(a1);
}

void sub_F59628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_5C010(&a31);
  sub_3DB9A4(v31 - 184);
  _Unwind_Resume(a1);
}

void sub_F5969C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  sub_1959728(&a31);
  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  if (a72 < 0)
  {
    operator delete(a70);
    if ((*(v72 - 217) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v72 - 217) & 0x80000000) == 0)
  {
LABEL_7:
    v74 = *(v72 - 208);
    if (!v74)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(*(v72 - 240));
  v74 = *(v72 - 208);
  if (!v74)
  {
LABEL_9:
    sub_3DB9A4(v72 - 184);
    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v72 - 200) = v74;
  operator delete(v74);
  goto LABEL_9;
}

uint64_t *sub_F598E4(uint64_t *result, uint64_t **a2)
{
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[5];
  v7 = *result == result[4] && v3 == v6;
  if (!v7 || v4 != result[6])
  {
    v8 = v3 + 1;
    while (v4 != v8)
    {
      v9 = *(*v5 + 8 * v8++);
      if (v9 != -1)
      {
        v10 = v8 - 1;
        v11 = v8 - 1 == v6 && *result == result[4];
        if (v11 && v4 == result[6])
        {
          return result;
        }

        goto LABEL_19;
      }
    }

    v10 = result[2];
    v12 = v4 == v6 && *result == result[4];
    if (v12 && v4 == result[6])
    {
      return result;
    }

LABEL_19:
    if (v4 != result[6] || *result != result[4])
    {
      while (1)
      {
        if (v3 + 1 == v10)
        {
          goto LABEL_25;
        }

LABEL_23:
        v13 = **a2;
        v14 = *(v13 + 8 * v3);
        v15 = *(v13 + 8 * v10);
        if (v14 != v15)
        {
          sub_F5A420(a2[1], a2[2], a2[3], v14, v15 + 1);
        }

LABEL_25:
        v16 = v10 + 1;
        do
        {
          if (v4 == v16)
          {
            v10 = v4;
            goto LABEL_30;
          }

          v17 = *(*v5 + 8 * v16++);
        }

        while (v17 == -1);
        v10 = v16 - 1;
LABEL_30:
        v18 = v3 + 1;
        while (v4 != v18)
        {
          v19 = *(*v5 + 8 * v18++);
          if (v19 != -1)
          {
            v3 = v18 - 1;
            if (v18 == v10)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        v3 = v4;
      }
    }

    do
    {
LABEL_36:
      if (v3 + 1 != v10)
      {
        v20 = **a2;
        v21 = *(v20 + 8 * v3);
        v22 = *(v20 + 8 * v10);
        if (v21 != v22)
        {
          result = sub_F5A420(a2[1], a2[2], a2[3], v21, v22 + 1);
        }
      }

      v23 = v10 + 1;
      while (v4 != v23)
      {
        v24 = *(*v5 + 8 * v23++);
        if (v24 != -1)
        {
          v10 = v23 - 1;
          goto LABEL_44;
        }
      }

      v10 = v4;
LABEL_44:
      v25 = v3 + 1;
      do
      {
        if (v4 == v25)
        {
          v3 = v4;
          if (v10 == v6)
          {
            return result;
          }

          goto LABEL_36;
        }

        v26 = *(*v5 + 8 * v25++);
      }

      while (v26 == -1);
      v3 = v25 - 1;
    }

    while (v10 != v6);
  }

  return result;
}

void sub_F59AC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 2) >= 2)
  {
    v5 = v4[2];
    if (v4 == v3)
    {
LABEL_11:
      v9 = a3[1] - *a3;
      if (v9)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
        v11 = 8;
        do
        {
          *(*a3 + v11) = v5;
          v11 += 12;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = *(v3 - 1);
      v7 = *a2;
      while (v7[2] != 0x7FFFFFFF)
      {
        v7 += 3;
        if (v7 == v3)
        {
          v8 = *a2;
          do
          {
            if (*v8 != *v4 || v8[1] != v4[1] || v8[2] != v5)
            {
              operator new();
            }

            v8 += 3;
          }

          while (v8 != v3);
          goto LABEL_11;
        }
      }

      *(*a3 + 8) = v5;
      if (v5 == 0x7FFFFFFF)
      {
        v12 = v6;
      }

      else
      {
        v12 = v5;
      }

      v13 = a3[1];
      v14 = (v13 - *a3) >> 2;
      v15 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      }

      if (v15 >= 2)
      {
        v17 = v16 - 1;
        v18 = 20;
        do
        {
          *(*a3 + v18) = v12;
          v18 += 12;
          --v17;
        }

        while (v17);
        v13 = a3[1];
      }

      *(v13 - 4) = v6;
    }
  }
}

void sub_F5A39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F5A420(uint64_t *result, void *a2, void *a3, unint64_t a4, unint64_t a5)
{
  v164 = result;
  if (a4 != a5)
  {
    v6 = a4;
    v8 = sub_F56650(a3, a4);
    nullsub_1(v8);
    v9 = sub_F56650(a3, a5 - 1);
    nullsub_1(v9);
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v182[0] = 0;
    v182[1] = 0;
    v183 = 0;
    if (v6 <= a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = v6;
    }

    v163 = v10;
    if (v6 >= a5)
    {
      goto LABEL_204;
    }

    v166 = a3;
    while (1)
    {
      v11 = *v164;
      v12 = sub_4D1F50(a2, v6);
      sub_2B7A20(v11, *(v12 + 32) & 0xFFFFFFFFFFFFFFLL, &v178);
      sub_31C60C(&v178, &v168);
      if (v181)
      {
        if (__p == v180)
        {
          v13 = 0;
        }

        else
        {
          v13 = -1;
        }

        LODWORD(v14) = v13;
        v15 = v176;
        v167 = v13;
        if (v175 != v13 || v176 != v13)
        {
          break;
        }

        goto LABEL_168;
      }

      if (__p != v180)
      {
        v17 = *(v180 - 1);
        v18 = sub_2B4D24(v178, v17, 0);
        v19 = &v18[*&v18[-*v18 + 4]];
        v20 = &v19[4 * HIDWORD(v17) + *v19];
        v21 = (v20 + 4 + *(v20 + 4));
        v14 = (v180 - __p) >> 3;
        v22 = (v21 + *(v21 - *v21 + 6));
        v15 = v176;
        v167 = *(v22 + *v22);
        if (v175 != v14 || v176 != *(v22 + *v22))
        {
          break;
        }

        goto LABEL_168;
      }

      LODWORD(v14) = 0;
      v15 = v176;
      v167 = 0;
      if (v175 || v176 != 0)
      {
        break;
      }

LABEL_168:
      v120 = sub_F56650(v166, v6);
      v121 = nullsub_1(v120);
      v122 = *v121;
      v123 = *(v121 + 8);
      if (*v121 != v123)
      {
        v124 = v182[1];
        do
        {
          v125.i64[0] = *v122;
          v125.i64[1] = HIDWORD(*v122);
          v126 = vcvtq_f64_u64(v125);
          if (v124 < v183)
          {
            *v124++ = v126;
          }

          else
          {
            v127 = v182[0];
            v128 = v124 - v182[0];
            v129 = (v124 - v182[0]) >> 4;
            v130 = v129 + 1;
            if ((v129 + 1) >> 60)
            {
              sub_1794();
            }

            v131 = v183 - v182[0];
            if ((v183 - v182[0]) >> 3 > v130)
            {
              v130 = v131 >> 3;
            }

            if (v131 >= 0x7FFFFFFFFFFFFFF0)
            {
              v132 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v132 = v130;
            }

            if (v132)
            {
              if (!(v132 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v133 = (v124 - v182[0]) >> 4;
            v134 = (16 * v129);
            v135 = (16 * v129 - 16 * v133);
            *v134 = v126;
            v124 = v134 + 1;
            memcpy(v135, v127, v128);
            v182[0] = v135;
            v182[1] = v124;
            v183 = 0;
            if (v127)
            {
              operator delete(v127);
            }
          }

          v182[1] = v124;
          v122 = (v122 + 12);
        }

        while (v122 != v123);
      }

      v136 = sub_F56650(v166, v6);
      sub_F54F0C(v136);
      if (__p)
      {
        v180 = __p;
        operator delete(__p);
      }

      if (++v6 == v163)
      {
        v137 = v182[1];
        if (v182[0] != v182[1])
        {
          v138 = (v182[0] - 16);
          do
          {
            if (v138 + 4 == v182[1])
            {
              goto LABEL_204;
            }

            v139 = v138[2];
            v138 += 2;
          }

          while (v139 != v138[2] || v138[1] != v138[3]);
          for (i = v138 + 4; i != v137; i += 2)
          {
            if (*v138 != *i || v138[1] != i[1])
            {
              *(v138 + 1) = *i;
              v138 += 2;
            }
          }

          if (v138 + 2 != v137)
          {
            v182[1] = v138 + 2;
          }
        }

LABEL_204:
        sub_3C188(&v168, &v187);
      }
    }

    v25 = v171;
    while (1)
    {
      v26 = &v25[2 * v15];
      v27 = v26[2];
      v28 = v26[3];
      v29 = sub_57A90(v173);
      v30 = v173 & ~(-1 << (v29 & 0xFE));
      v31 = sub_581D8(v30);
      v32 = sub_581D8(v30 >> 1);
      v33 = 1 << -(v29 >> 1);
      if (v29 < 2)
      {
        v33 = -2;
      }

      if ((v32 * v33 + 4 * v28) >= 0xFFFFFFFE)
      {
        v34 = -2;
      }

      else
      {
        v34 = v32 * v33 + 4 * v28;
      }

      v35 = v31 * v33 + 4 * v27;
      v36 = v188;
      if (v188 >= v189)
      {
        v45 = v187;
        v46 = v188 - v187;
        v47 = (v188 - v187) >> 4;
        v48 = v47 + 1;
        if ((v47 + 1) >> 60)
        {
          sub_1794();
        }

        v49 = v189 - v187;
        if ((v189 - v187) >> 3 > v48)
        {
          v48 = v49 >> 3;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          if (!(v50 >> 60))
          {
            operator new();
          }

LABEL_235:
          sub_1808();
        }

        v79 = (16 * v47);
        *v79 = v35;
        v79[1] = v34;
        memcpy(0, v45, v46);
        v187 = 0;
        v188 = (16 * v47 + 16);
        v189 = 0;
        if (v45)
        {
          operator delete(v45);
        }

        v188 = (16 * v47 + 16);
        v38 = v185;
        v37 = v186;
        if (v185 >= v186)
        {
LABEL_103:
          v80 = v184;
          v81 = v38 - v184;
          v82 = (v38 - v184) >> 3;
          v83 = v82 + 1;
          if ((v82 + 1) >> 61)
          {
            sub_1794();
          }

          v84 = v37 - v184;
          if (v84 >> 2 > v83)
          {
            v83 = v84 >> 2;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFF8)
          {
            v85 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            if (!(v85 >> 61))
            {
              operator new();
            }

            goto LABEL_235;
          }

          v86 = (v38 - v184) >> 3;
          v87 = (8 * v82);
          v88 = (8 * v82 - 8 * v86);
          *v87 = v6;
          v89 = v87 + 1;
          memcpy(v88, v80, v81);
          v184 = v88;
          v185 = v89;
          v186 = 0;
          if (v80)
          {
            operator delete(v80);
          }

          v185 = v89;
          v39 = v176;
          if (v177)
          {
LABEL_40:
            v15 = v39 - 1;
            v176 = v39 - 1;
            v25 = v171;
            if ((v39 - 1) < *v171)
            {
              v40 = (v171 + 4 * v39 + 4);
              v41 = (v171 + 4 * v15 + 4);
              if (*v40 != *v41)
              {
                goto LABEL_30;
              }

              if (v40[1] != v41[1])
              {
                goto LABEL_30;
              }

              v42 = *v169;
              v43 = v169[1] - *v169;
              if (*v171 == 2 && v43 == 8)
              {
                goto LABEL_30;
              }

              v15 = v39 - 2;
              v44 = --v175;
              v176 = v15;
              if (v175 >= (v43 >> 3))
              {
                goto LABEL_30;
              }

LABEL_57:
              while (2)
              {
                v52 = *(v42 + 8 * v44);
                v173 = v52;
                v53 = v168;
                v192 = 0;
                v193 = v52;
                v190 = &v192;
                v191 = &v193;
                v54 = *(v168 + 482) + 1;
                *(v168 + 482) = v54;
                if (!*v53)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v196 = *v191;
                  v194 = sub_7FCF0(1u);
                  v195 = v144;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
                  if ((v199 & 0x80u) == 0)
                  {
                    v145 = &v197;
                  }

                  else
                  {
                    v145 = v197;
                  }

                  if ((v199 & 0x80u) == 0)
                  {
                    v146 = v199;
                  }

                  else
                  {
                    v146 = v198;
                  }

                  v147 = sub_2D390(exception, v145, v146);
                }

                if (*(v53 + 28) == v52)
                {
                  ++v53[483];
                  v53[15] = v54;
                  v55 = v53[16];
                  if (!v55)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                v56 = (v53 + 17);
                if (*(v53 + 34) == v52)
                {
LABEL_62:
                  ++v53[483];
                  *(v56 + 1) = v54;
                  v55 = *(v56 + 2);
                  if (!v55)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                if (*(v53 + 40) == v52)
                {
                  ++v53[483];
                  v53[21] = v54;
                  v55 = v53[22];
                  if (!v55)
                  {
LABEL_213:
                    v148 = __cxa_allocate_exception(0x40uLL);
                    v196 = *v191;
                    v194 = sub_7FCF0(1u);
                    v195 = v149;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
                    if ((v199 & 0x80u) == 0)
                    {
                      v150 = &v197;
                    }

                    else
                    {
                      v150 = v197;
                    }

                    if ((v199 & 0x80u) == 0)
                    {
                      v151 = v199;
                    }

                    else
                    {
                      v151 = v198;
                    }

                    v152 = sub_2D390(v148, v150, v151);
                  }

LABEL_80:
                  v65 = (v55 + *v55);
                  v66 = (v65 - *v65);
                  if (*v66 >= 7u)
                  {
LABEL_81:
                    v67 = v66[3];
                    if (v67)
                    {
                      LODWORD(v67) = *(v65 + v67);
                    }

                    v174 = v67;
                    v68 = (v65 - *v65);
                    if (*v68 >= 5u)
                    {
LABEL_87:
                      v69 = v68[2];
                      if (v69)
                      {
                        v70 = v65 + v69 + *(v65 + v69);
                        goto LABEL_90;
                      }
                    }

LABEL_89:
                    v70 = 0;
LABEL_90:
                    v71 = &v70[4 * HIDWORD(v52) + 4 + *&v70[4 * HIDWORD(v52) + 4]];
                    v170 = v71;
                    v72 = &v71[-*v71];
                    v73 = *v72;
                    v25 = *(v72 + 3);
                    if (*(v72 + 3))
                    {
                      v25 = (v25 + v71 + *(v25 + v71));
                    }

                    v171 = v25;
                    if (v73 >= 0xB && (v74 = *(v72 + 5)) != 0)
                    {
                      v75 = &v71[v74 + *&v71[v74]];
                    }

                    else
                    {
                      v75 = 0;
                    }

                    v172 = v75;
                    v76 = *v25;
                    v15 = *v25 - 2;
                    v176 = v15;
                    v77 = &v25[2 * (v76 - 1) + 2];
                    v78 = &v25[2 * v15 + 2];
                    if (*v77 != *v78)
                    {
                      goto LABEL_30;
                    }

                    if (v77[1] != v78[1])
                    {
                      goto LABEL_30;
                    }

                    v15 = v76 - 3;
                    v44 = --v175;
                    v176 = v15;
                    v42 = *v169;
                    if (v175 >= ((v169[1] - *v169) >> 3))
                    {
                      goto LABEL_30;
                    }

                    continue;
                  }
                }

                else
                {
                  v56 = (v53 + 23);
                  if (*(v53 + 46) == v52)
                  {
                    goto LABEL_62;
                  }

                  v57 = v53[21];
                  v58 = v53[18];
                  v59 = v53[15];
                  v60 = v53[24];
                  v55 = sub_2D52A4(*v53, 1, v52, 1);
                  if (v59 >= v54)
                  {
                    v61 = v54;
                  }

                  else
                  {
                    v61 = v59;
                  }

                  v62 = v58 >= v61;
                  if (v58 < v61)
                  {
                    v61 = v58;
                  }

                  v63 = 4 * (v59 < v54);
                  if (!v62)
                  {
                    v63 = 5;
                  }

                  if (v57 < v61)
                  {
                    v63 = 6;
                    v61 = v57;
                  }

                  if (v60 < v61)
                  {
                    v63 = 7;
                  }

                  v64 = &v53[3 * v63 + 2];
                  *v64 = v193;
                  *(v64 + 8) = v53[482];
                  *(v64 + 16) = v55;
                  if (v55)
                  {
                    goto LABEL_80;
                  }

                  sub_2B572C(&v190);
                  v65 = 0;
                  v66 = (&loc_1120530 + 1);
                  if (*(&loc_1120530 + 1) >= 7u)
                  {
                    goto LABEL_81;
                  }
                }

                break;
              }

              v174 = 0;
              v68 = (v65 - *v65);
              if (*v68 >= 5u)
              {
                goto LABEL_87;
              }

              goto LABEL_89;
            }

            v42 = *v169;
            v51 = v169[1] - *v169;
            v44 = --v175;
            if (v175 < (v51 >> 3))
            {
              goto LABEL_57;
            }

LABEL_30:
            if (v175 != v14)
            {
              continue;
            }

            goto LABEL_31;
          }

          goto LABEL_115;
        }
      }

      else
      {
        *v188 = v35;
        v36[1] = v34;
        v188 = v36 + 2;
        v38 = v185;
        v37 = v186;
        if (v185 >= v186)
        {
          goto LABEL_103;
        }
      }

      *v38 = v6;
      v185 = v38 + 1;
      v39 = v176;
      if (v177)
      {
        goto LABEL_40;
      }

LABEL_115:
      v15 = v39 + 1;
      v176 = v39 + 1;
      v25 = v171;
      if ((v39 + 1) >= *v171)
      {
        v92 = *v169;
        v95 = v169[1] - *v169;
        v94 = ++v175;
        if (v175 < (v95 >> 3))
        {
          goto LABEL_123;
        }

        goto LABEL_30;
      }

      v90 = (v171 + 4 * v39 + 4);
      v91 = (v171 + 4 * v15 + 4);
      if (*v90 != *v91)
      {
        goto LABEL_30;
      }

      if (v90[1] != v91[1])
      {
        goto LABEL_30;
      }

      v92 = *v169;
      v93 = v169[1] - *v169;
      if (*v171 == 2 && v93 == 8)
      {
        goto LABEL_30;
      }

      v15 = v39 + 2;
      v94 = ++v175;
      v176 = v15;
      if (v175 >= (v93 >> 3))
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_123:
        v96 = *(v92 + 8 * v94);
        v173 = v96;
        v97 = v168;
        v192 = 0;
        v193 = v96;
        v190 = &v192;
        v191 = &v193;
        v98 = *(v168 + 482) + 1;
        *(v168 + 482) = v98;
        if (!*v97)
        {
          v153 = __cxa_allocate_exception(0x40uLL);
          v196 = *v191;
          v194 = sub_7FCF0(1u);
          v195 = v154;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
          if ((v199 & 0x80u) == 0)
          {
            v155 = &v197;
          }

          else
          {
            v155 = v197;
          }

          if ((v199 & 0x80u) == 0)
          {
            v156 = v199;
          }

          else
          {
            v156 = v198;
          }

          v157 = sub_2D390(v153, v155, v156);
        }

        if (*(v97 + 28) == v96)
        {
          ++v97[483];
          v97[15] = v98;
          v99 = v97[16];
          if (!v99)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v100 = (v97 + 17);
        if (*(v97 + 34) == v96)
        {
          goto LABEL_128;
        }

        if (*(v97 + 40) == v96)
        {
          ++v97[483];
          v97[21] = v98;
          v99 = v97[22];
          if (!v99)
          {
LABEL_227:
            v158 = __cxa_allocate_exception(0x40uLL);
            v196 = *v191;
            v194 = sub_7FCF0(1u);
            v195 = v159;
            sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
            if ((v199 & 0x80u) == 0)
            {
              v160 = &v197;
            }

            else
            {
              v160 = v197;
            }

            if ((v199 & 0x80u) == 0)
            {
              v161 = v199;
            }

            else
            {
              v161 = v198;
            }

            v162 = sub_2D390(v158, v160, v161);
          }

LABEL_146:
          v109 = (v99 + *v99);
          v110 = (v109 - *v109);
          if (*v110 < 7u)
          {
            goto LABEL_152;
          }

          goto LABEL_147;
        }

        v100 = (v97 + 23);
        if (*(v97 + 46) == v96)
        {
LABEL_128:
          ++v97[483];
          *(v100 + 1) = v98;
          v99 = *(v100 + 2);
          if (!v99)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v101 = v97[21];
        v102 = v97[18];
        v103 = v97[15];
        v104 = v97[24];
        v99 = sub_2D52A4(*v97, 1, v96, 1);
        if (v103 >= v98)
        {
          v105 = v98;
        }

        else
        {
          v105 = v103;
        }

        v106 = v102 >= v105;
        if (v102 < v105)
        {
          v105 = v102;
        }

        v107 = 4 * (v103 < v98);
        if (!v106)
        {
          v107 = 5;
        }

        if (v101 < v105)
        {
          v107 = 6;
          v105 = v101;
        }

        if (v104 < v105)
        {
          v107 = 7;
        }

        v108 = &v97[3 * v107 + 2];
        *v108 = v193;
        *(v108 + 8) = v97[482];
        *(v108 + 16) = v99;
        if (v99)
        {
          goto LABEL_146;
        }

        sub_2B572C(&v190);
        v109 = 0;
        v110 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 7u)
        {
LABEL_152:
          v174 = 0;
          v112 = (v109 - *v109);
          if (*v112 < 5u)
          {
            goto LABEL_155;
          }

          goto LABEL_153;
        }

LABEL_147:
        v111 = v110[3];
        if (v111)
        {
          LODWORD(v111) = *(v109 + v111);
        }

        v174 = v111;
        v112 = (v109 - *v109);
        if (*v112 < 5u)
        {
          goto LABEL_155;
        }

LABEL_153:
        v113 = v112[2];
        if (v113)
        {
          v114 = v109 + v113 + *(v109 + v113);
          goto LABEL_156;
        }

LABEL_155:
        v114 = 0;
LABEL_156:
        v115 = &v114[4 * HIDWORD(v96) + 4 + *&v114[4 * HIDWORD(v96) + 4]];
        v170 = v115;
        v116 = &v115[-*v115];
        v117 = *v116;
        v25 = *(v116 + 3);
        if (*(v116 + 3))
        {
          v25 = (v25 + v115 + *(v25 + v115));
        }

        v171 = v25;
        if (v117 >= 0xB && (v118 = *(v116 + 5)) != 0)
        {
          v119 = &v115[v118 + *&v115[v118]];
        }

        else
        {
          v119 = 0;
        }

        v172 = v119;
        v15 = 1;
        v176 = 1;
        if (v25[2] != v25[4])
        {
          goto LABEL_30;
        }

        if (v25[3] != v25[5])
        {
          break;
        }

        v15 = 2;
        v94 = ++v175;
        v176 = 2;
        v92 = *v169;
        if (v175 >= ((v169[1] - *v169) >> 3))
        {
          goto LABEL_30;
        }
      }

      v15 = 1;
      if (v175 != v14)
      {
        continue;
      }

LABEL_31:
      if (v15 == v167)
      {
        goto LABEL_168;
      }
    }
  }

  return result;
}

void sub_F5B460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  sub_3C214(&a15);
  if (__p)
  {
    a38 = __p;
    operator delete(__p);
    v40 = *(v38 - 208);
    if (!v40)
    {
LABEL_3:
      v41 = *(v38 - 184);
      if (!v41)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v40 = *(v38 - 208);
    if (!v40)
    {
      goto LABEL_3;
    }
  }

  *(v38 - 200) = v40;
  operator delete(v40);
  v41 = *(v38 - 184);
  if (!v41)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  *(v38 - 176) = v41;
  operator delete(v41);
  _Unwind_Resume(a1);
}

void sub_F5B594(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (!a1)
  {
    a2[23] = 0;
    *a2 = 0;
    return;
  }

  v3 = a1;
  sub_19594F8(&v7);
  v18 = 40;
  sub_4A5C(&v7, &v18, 1);
  if (v3)
  {
    sub_4A5C(&v7, " Shifted", 8);
  }

  if ((v3 & 2) != 0)
  {
    sub_4A5C(&v7, " Bezier Curve", 13);
  }

  v18 = 41;
  sub_4A5C(&v7, &v18, 1);
  if ((v17 & 0x10) != 0)
  {
    v5 = v16;
    if (v16 < v13)
    {
      v16 = v13;
      v5 = v13;
    }

    v6 = __src;
    v4 = v5 - __src;
    if (v5 - __src >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }

LABEL_13:
    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      memmove(a2, v6, v4);
    }

    goto LABEL_18;
  }

  if ((v17 & 8) != 0)
  {
    v6 = v10;
    v4 = v11 - v10;
    if ((v11 - v10) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  v4 = 0;
  a2[23] = 0;
LABEL_18:
  a2[v4] = 0;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v9);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_F5B998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5BAE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_F5BB0C(uint64_t *a1, void *a2, float32x2_t **a3, uint64_t *a4, uint64_t a5)
{
  sub_7E9A4(v10);
  sub_F5BC60(a1, a2, a4);
  sub_F5BD54(a1, a2, a3, a4, a5);
}

void sub_F5BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5BC60(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = sub_4D1DC0(a2);
  sub_F5640C(a3, v5);
  *__p = 0u;
  v9 = 0u;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  v6 = sub_4D1DC0(a2);
  if (v6)
  {
    v7 = a3[1];
    do
    {
      while (v7 >= a3[2])
      {
        v7 = sub_87B970(a3, __p);
        a3[1] = v7;
        if (!--v6)
        {
          goto LABEL_6;
        }
      }

      sub_F548B4(v7, __p);
      v7 += 40;
      a3[1] = v7;
      a3[1] = v7;
      --v6;
    }

    while (v6);
LABEL_6:
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_F5BD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_F5BD54(uint64_t *a1, void *a2, float32x2_t **a3, uint64_t a4, uint64_t a5)
{
  v5 = a2;
  v7 = *a3;
  v6 = a3[1];
  if (*a3 != v6)
  {
    v8 = &v7[-2] + 1;
    do
    {
      if (v8 + 6 == v6)
      {
        goto LABEL_11;
      }

      v9 = v8[3];
      v10 = v8[4];
      v8 += 3;
    }

    while (v9 != v8[3] || v10 != v8[4]);
    v12 = (v8 + 6);
    if (v8 + 6 == v6)
    {
      v13 = (v8 + 3);
      if (v8 + 3 == v6)
      {
        goto LABEL_11;
      }

LABEL_20:
      v6 = v13;
      a3[1] = v13;
      v14 = v13 - v7;
      v59 = a2;
      if (v13 - v7 != 12)
      {
        goto LABEL_30;
      }

LABEL_21:
      v17 = a3[2];
      if (v6 >= v17)
      {
        v19 = 0xAAAAAAAAAAAAAAABLL * (v14 >> 2);
        v20 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v7) >> 2);
        if (2 * v20 <= v19 + 1)
        {
          v21 = v19 + 1;
        }

        else
        {
          v21 = 2 * v20;
        }

        if (v20 >= 0xAAAAAAAAAAAAAAALL)
        {
          v21 = 0x1555555555555555;
        }

        if (v21 <= 0x1555555555555555)
        {
          operator new();
        }

        sub_1808();
      }

      v18 = *v7;
      v6[1].i32[0] = v7[1].i32[0];
      *v6 = v18;
      a3[1] = (v6 + 12);
LABEL_30:
      sub_F56570(a3, &v79);
      v76 = 0;
      v77 = 0;
      v78 = 0;
      v22 = sub_4D1DC0(v5);
      if (v22)
      {
        if (!(v22 >> 59))
        {
          operator new();
        }

        sub_1794();
      }

      v23 = sub_4D1DC0(v5);
      if (v23)
      {
        if (!(v23 >> 61))
        {
          operator new();
        }

        sub_1794();
      }

      v24 = 0;
      v25 = sub_4D1DC0(v5);
      if (v25)
      {
        v26 = 0;
        v58 = v25;
        do
        {
          v27 = *a1;
          v28 = sub_4D1F50(v5, v26);
          sub_2B7A20(v27, (((*(v28 + 36) & 0x20000000) << 19) | (*(v28 + 36) << 32) | *(v28 + 32)) ^ 0x1000000000000, &v61);
          sub_31BF20(&v61, &v68);
          if (__p)
          {
            v63 = __p;
            operator delete(__p);
          }

          v29 = v68;
          v30 = v69;
          if (v68 != v69)
          {
            v31 = v68 + 12;
            if (v68 + 12 != v69)
            {
              do
              {
                v32 = v77;
                if (v77 >= v78)
                {
                  v36 = v76;
                  v37 = v77 - v76;
                  v38 = (v77 - v76) >> 5;
                  v39 = v38 + 1;
                  if ((v38 + 1) >> 59)
                  {
                    sub_1794();
                  }

                  v40 = v78 - v76;
                  if ((v78 - v76) >> 4 > v39)
                  {
                    v39 = v40 >> 4;
                  }

                  if (v40 >= 0x7FFFFFFFFFFFFFE0)
                  {
                    v41 = 0x7FFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v41 = v39;
                  }

                  if (v41)
                  {
                    if (!(v41 >> 59))
                    {
                      operator new();
                    }

LABEL_74:
                    sub_1808();
                  }

                  v42 = (32 * v38);
                  v43 = *(v31 - 12);
                  v44.i64[0] = v43;
                  v44.i64[1] = HIDWORD(v43);
                  *v42 = vcvtq_f64_u64(v44);
                  v44.i64[0] = *v31;
                  v44.i64[1] = HIDWORD(*v31);
                  v42[1] = vcvtq_f64_u64(v44);
                  v35 = 32 * v38 + 32;
                  memcpy(0, v36, v37);
                  v76 = 0;
                  v77 = v35;
                  v78 = 0;
                  if (v36)
                  {
                    operator delete(v36);
                  }
                }

                else
                {
                  v33 = *(v31 - 12);
                  v34.i64[0] = v33;
                  v34.i64[1] = HIDWORD(v33);
                  *v77 = vcvtq_f64_u64(v34);
                  v34.i64[0] = *v31;
                  v34.i64[1] = HIDWORD(*v31);
                  v32[1] = vcvtq_f64_u64(v34);
                  v35 = &v32[2];
                }

                v77 = v35;
                v45 = v24;
                v46 = v24 >> 3;
                if (((v24 >> 3) + 1) >> 61)
                {
                  sub_1794();
                }

                if (v24 >> 3 != -1)
                {
                  if (!(((v24 >> 3) + 1) >> 61))
                  {
                    operator new();
                  }

                  goto LABEL_74;
                }

                *(8 * v46) = v26;
                v24 = 8 * v46 + 8;
                memcpy(0, 0, v45);
                v31 = (v31 + 12);
              }

              while (v31 != v30);
              v29 = v68;
            }

            v5 = v59;
          }

          if (v29)
          {
            v69 = v29;
            operator delete(v29);
          }

          ++v26;
        }

        while (v26 != v58);
      }

      v47 = sub_321E4(v75, a3);
      v48 = a1[2];
      v49 = sub_34490(v47);
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v61 = 0;
      __p = 0;
      v63 = 0;
      sub_C0A400(&v71, 0x2000uLL);
      if (v61)
      {
        __p = v61;
        operator delete(v61);
      }

      sub_7E9A4(v67);
      sub_43268(&v68, &v79, &v76, &v72, v48 / 100.0 / v49);
      v50 = sub_7EA60(v67);
      v51 = v72;
      v52 = v73;
      v53 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * (v73 - v72));
      *(a5 + 16) = (v50 + *(a5 + 16));
      if (v52 == v51)
      {
        v54 = 0;
      }

      else
      {
        v54 = v53;
      }

      sub_F61244(v51, v52, &v61, v54, 1);
      v55 = 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 2);
      v65 = 0;
      v66 = 0;
      v64 = 0;
      if (!(v55 >> 61))
      {
        operator new();
      }

      sub_1794();
    }

    do
    {
      if (*v8 != v12->i32[0] || v8[1] != v12->i32[1])
      {
        v16 = v12[1].i32[0];
        *(v8 + 3) = *v12;
        v8 += 3;
        v8[2] = v16;
      }

      v12 = (v12 + 12);
    }

    while (v12 != v6);
    v7 = *a3;
    v6 = a3[1];
    v13 = (v8 + 3);
    if (v8 + 3 != v6)
    {
      goto LABEL_20;
    }
  }

LABEL_11:
  v14 = v6 - v7;
  v59 = a2;
  if (v6 - v7 != 12)
  {
    goto LABEL_30;
  }

  goto LABEL_21;
}

void sub_F5D32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_F5686C(&a66);
  v69 = *(v67 - 248);
  if (v69)
  {
    *(v67 - 240) = v69;
    operator delete(v69);
  }

  if (v66)
  {
    operator delete(v66);
    v70 = *(v67 - 208);
    if (!v70)
    {
LABEL_7:
      v71 = *(v67 - 184);
      if (!v71)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v70 = *(v67 - 208);
    if (!v70)
    {
      goto LABEL_7;
    }
  }

  *(v67 - 200) = v70;
  operator delete(v70);
  v71 = *(v67 - 184);
  if (!v71)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_11:
  *(v67 - 176) = v71;
  operator delete(v71);
  _Unwind_Resume(a1);
}

void sub_F5E788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_5C010(&a31);
  sub_3DB9A4(v31 - 184);
  _Unwind_Resume(a1);
}

void sub_F5E7FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a65 = __p;
    operator delete(__p);
  }

  sub_1959728(&a31);
  if (a67)
  {
    a68 = a67;
    operator delete(a67);
  }

  if (a72 < 0)
  {
    operator delete(a70);
    if ((*(v72 - 217) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((*(v72 - 217) & 0x80000000) == 0)
  {
LABEL_7:
    v74 = *(v72 - 208);
    if (!v74)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  operator delete(*(v72 - 240));
  v74 = *(v72 - 208);
  if (!v74)
  {
LABEL_9:
    sub_3DB9A4(v72 - 184);
    _Unwind_Resume(a1);
  }

LABEL_8:
  *(v72 - 200) = v74;
  operator delete(v74);
  goto LABEL_9;
}

uint64_t *sub_F5EA44(uint64_t *result, uint64_t **a2)
{
  v3 = result[1];
  v4 = result[2];
  v5 = result[3];
  v6 = result[5];
  v7 = *result == result[4] && v3 == v6;
  if (!v7 || v4 != result[6])
  {
    v8 = v3 + 1;
    while (v4 != v8)
    {
      v9 = *(*v5 + 8 * v8++);
      if (v9 != -1)
      {
        v10 = v8 - 1;
        v11 = v8 - 1 == v6 && *result == result[4];
        if (v11 && v4 == result[6])
        {
          return result;
        }

        goto LABEL_19;
      }
    }

    v10 = result[2];
    v12 = v4 == v6 && *result == result[4];
    if (v12 && v4 == result[6])
    {
      return result;
    }

LABEL_19:
    if (v4 != result[6] || *result != result[4])
    {
      while (1)
      {
        if (v3 + 1 == v10)
        {
          goto LABEL_25;
        }

LABEL_23:
        v13 = **a2;
        v14 = *(v13 + 8 * v3);
        v15 = *(v13 + 8 * v10);
        if (v14 != v15)
        {
          sub_F5F580(a2[1], a2[2], a2[3], v14, v15 + 1);
        }

LABEL_25:
        v16 = v10 + 1;
        do
        {
          if (v4 == v16)
          {
            v10 = v4;
            goto LABEL_30;
          }

          v17 = *(*v5 + 8 * v16++);
        }

        while (v17 == -1);
        v10 = v16 - 1;
LABEL_30:
        v18 = v3 + 1;
        while (v4 != v18)
        {
          v19 = *(*v5 + 8 * v18++);
          if (v19 != -1)
          {
            v3 = v18 - 1;
            if (v18 == v10)
            {
              goto LABEL_25;
            }

            goto LABEL_23;
          }
        }

        v3 = v4;
      }
    }

    do
    {
LABEL_36:
      if (v3 + 1 != v10)
      {
        v20 = **a2;
        v21 = *(v20 + 8 * v3);
        v22 = *(v20 + 8 * v10);
        if (v21 != v22)
        {
          result = sub_F5F580(a2[1], a2[2], a2[3], v21, v22 + 1);
        }
      }

      v23 = v10 + 1;
      while (v4 != v23)
      {
        v24 = *(*v5 + 8 * v23++);
        if (v24 != -1)
        {
          v10 = v23 - 1;
          goto LABEL_44;
        }
      }

      v10 = v4;
LABEL_44:
      v25 = v3 + 1;
      do
      {
        if (v4 == v25)
        {
          v3 = v4;
          if (v10 == v6)
          {
            return result;
          }

          goto LABEL_36;
        }

        v26 = *(*v5 + 8 * v25++);
      }

      while (v26 == -1);
      v3 = v25 - 1;
    }

    while (v10 != v6);
  }

  return result;
}

void sub_F5EC28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - *a2) >> 2) >= 2)
  {
    v5 = v4[2];
    if (v4 == v3)
    {
LABEL_11:
      v9 = a3[1] - *a3;
      if (v9)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 2);
        v11 = 8;
        do
        {
          *(*a3 + v11) = v5;
          v11 += 12;
          --v10;
        }

        while (v10);
      }
    }

    else
    {
      v6 = *(v3 - 1);
      v7 = *a2;
      while (v7[2] != 0x7FFFFFFF)
      {
        v7 += 3;
        if (v7 == v3)
        {
          v8 = *a2;
          do
          {
            if (*v8 != *v4 || v8[1] != v4[1] || v8[2] != v5)
            {
              operator new();
            }

            v8 += 3;
          }

          while (v8 != v3);
          goto LABEL_11;
        }
      }

      *(*a3 + 8) = v5;
      if (v5 == 0x7FFFFFFF)
      {
        v12 = v6;
      }

      else
      {
        v12 = v5;
      }

      v13 = a3[1];
      v14 = (v13 - *a3) >> 2;
      v15 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = 0xAAAAAAAAAAAAAAABLL * v14 - 1;
      }

      if (v15 >= 2)
      {
        v17 = v16 - 1;
        v18 = 20;
        do
        {
          *(*a3 + v18) = v12;
          v18 += 12;
          --v17;
        }

        while (v17);
        v13 = a3[1];
      }

      *(v13 - 4) = v6;
    }
  }
}

void sub_F5F4FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_F5F580(uint64_t *result, void *a2, void *a3, unint64_t a4, unint64_t a5)
{
  v164 = result;
  if (a4 != a5)
  {
    v6 = a4;
    v8 = sub_F56650(a3, a4);
    nullsub_1(v8);
    v9 = sub_F56650(a3, a5 - 1);
    nullsub_1(v9);
    v187 = 0;
    v188 = 0;
    v189 = 0;
    v184 = 0;
    v185 = 0;
    v186 = 0;
    v182[0] = 0;
    v182[1] = 0;
    v183 = 0;
    if (v6 <= a5)
    {
      v10 = a5;
    }

    else
    {
      v10 = v6;
    }

    v163 = v10;
    if (v6 >= a5)
    {
      goto LABEL_204;
    }

    v166 = a3;
    while (1)
    {
      v11 = *v164;
      v12 = sub_4D1F50(a2, v6);
      sub_2B7A20(v11, (((*(v12 + 36) & 0x20000000) << 19) | (*(v12 + 36) << 32) | *(v12 + 32)) ^ 0x1000000000000, &v178);
      sub_31C60C(&v178, &v168);
      if (v181)
      {
        if (__p == v180)
        {
          v13 = 0;
        }

        else
        {
          v13 = -1;
        }

        LODWORD(v14) = v13;
        v15 = v176;
        v167 = v13;
        if (v175 != v13 || v176 != v13)
        {
          break;
        }

        goto LABEL_168;
      }

      if (__p != v180)
      {
        v17 = *(v180 - 1);
        v18 = sub_2B4D24(v178, v17, 0);
        v19 = &v18[*&v18[-*v18 + 4]];
        v20 = &v19[4 * HIDWORD(v17) + *v19];
        v21 = (v20 + 4 + *(v20 + 4));
        v14 = (v180 - __p) >> 3;
        v22 = (v21 + *(v21 - *v21 + 6));
        v15 = v176;
        v167 = *(v22 + *v22);
        if (v175 != v14 || v176 != *(v22 + *v22))
        {
          break;
        }

        goto LABEL_168;
      }

      LODWORD(v14) = 0;
      v15 = v176;
      v167 = 0;
      if (v175 || v176 != 0)
      {
        break;
      }

LABEL_168:
      v120 = sub_F56650(v166, v6);
      v121 = nullsub_1(v120);
      v122 = *v121;
      v123 = *(v121 + 8);
      if (*v121 != v123)
      {
        v124 = v182[1];
        do
        {
          v125.i64[0] = *v122;
          v125.i64[1] = HIDWORD(*v122);
          v126 = vcvtq_f64_u64(v125);
          if (v124 < v183)
          {
            *v124++ = v126;
          }

          else
          {
            v127 = v182[0];
            v128 = v124 - v182[0];
            v129 = (v124 - v182[0]) >> 4;
            v130 = v129 + 1;
            if ((v129 + 1) >> 60)
            {
              sub_1794();
            }

            v131 = v183 - v182[0];
            if ((v183 - v182[0]) >> 3 > v130)
            {
              v130 = v131 >> 3;
            }

            if (v131 >= 0x7FFFFFFFFFFFFFF0)
            {
              v132 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v132 = v130;
            }

            if (v132)
            {
              if (!(v132 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v133 = (v124 - v182[0]) >> 4;
            v134 = (16 * v129);
            v135 = (16 * v129 - 16 * v133);
            *v134 = v126;
            v124 = v134 + 1;
            memcpy(v135, v127, v128);
            v182[0] = v135;
            v182[1] = v124;
            v183 = 0;
            if (v127)
            {
              operator delete(v127);
            }
          }

          v182[1] = v124;
          v122 = (v122 + 12);
        }

        while (v122 != v123);
      }

      v136 = sub_F56650(v166, v6);
      sub_F54F0C(v136);
      if (__p)
      {
        v180 = __p;
        operator delete(__p);
      }

      if (++v6 == v163)
      {
        v137 = v182[1];
        if (v182[0] != v182[1])
        {
          v138 = (v182[0] - 16);
          do
          {
            if (v138 + 4 == v182[1])
            {
              goto LABEL_204;
            }

            v139 = v138[2];
            v138 += 2;
          }

          while (v139 != v138[2] || v138[1] != v138[3]);
          for (i = v138 + 4; i != v137; i += 2)
          {
            if (*v138 != *i || v138[1] != i[1])
            {
              *(v138 + 1) = *i;
              v138 += 2;
            }
          }

          if (v138 + 2 != v137)
          {
            v182[1] = v138 + 2;
          }
        }

LABEL_204:
        sub_3C188(&v168, &v187);
      }
    }

    v25 = v171;
    while (1)
    {
      v26 = &v25[2 * v15];
      v27 = v26[2];
      v28 = v26[3];
      v29 = sub_57A90(v173);
      v30 = v173 & ~(-1 << (v29 & 0xFE));
      v31 = sub_581D8(v30);
      v32 = sub_581D8(v30 >> 1);
      v33 = 1 << -(v29 >> 1);
      if (v29 < 2)
      {
        v33 = -2;
      }

      if ((v32 * v33 + 4 * v28) >= 0xFFFFFFFE)
      {
        v34 = -2;
      }

      else
      {
        v34 = v32 * v33 + 4 * v28;
      }

      v35 = v31 * v33 + 4 * v27;
      v36 = v188;
      if (v188 >= v189)
      {
        v45 = v187;
        v46 = v188 - v187;
        v47 = (v188 - v187) >> 4;
        v48 = v47 + 1;
        if ((v47 + 1) >> 60)
        {
          sub_1794();
        }

        v49 = v189 - v187;
        if ((v189 - v187) >> 3 > v48)
        {
          v48 = v49 >> 3;
        }

        if (v49 >= 0x7FFFFFFFFFFFFFF0)
        {
          v50 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v50 = v48;
        }

        if (v50)
        {
          if (!(v50 >> 60))
          {
            operator new();
          }

LABEL_235:
          sub_1808();
        }

        v79 = (16 * v47);
        *v79 = v35;
        v79[1] = v34;
        memcpy(0, v45, v46);
        v187 = 0;
        v188 = (16 * v47 + 16);
        v189 = 0;
        if (v45)
        {
          operator delete(v45);
        }

        v188 = (16 * v47 + 16);
        v38 = v185;
        v37 = v186;
        if (v185 >= v186)
        {
LABEL_103:
          v80 = v184;
          v81 = v38 - v184;
          v82 = (v38 - v184) >> 3;
          v83 = v82 + 1;
          if ((v82 + 1) >> 61)
          {
            sub_1794();
          }

          v84 = v37 - v184;
          if (v84 >> 2 > v83)
          {
            v83 = v84 >> 2;
          }

          if (v84 >= 0x7FFFFFFFFFFFFFF8)
          {
            v85 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v85 = v83;
          }

          if (v85)
          {
            if (!(v85 >> 61))
            {
              operator new();
            }

            goto LABEL_235;
          }

          v86 = (v38 - v184) >> 3;
          v87 = (8 * v82);
          v88 = (8 * v82 - 8 * v86);
          *v87 = v6;
          v89 = v87 + 1;
          memcpy(v88, v80, v81);
          v184 = v88;
          v185 = v89;
          v186 = 0;
          if (v80)
          {
            operator delete(v80);
          }

          v185 = v89;
          v39 = v176;
          if (v177)
          {
LABEL_40:
            v15 = v39 - 1;
            v176 = v39 - 1;
            v25 = v171;
            if ((v39 - 1) < *v171)
            {
              v40 = (v171 + 4 * v39 + 4);
              v41 = (v171 + 4 * v15 + 4);
              if (*v40 != *v41)
              {
                goto LABEL_30;
              }

              if (v40[1] != v41[1])
              {
                goto LABEL_30;
              }

              v42 = *v169;
              v43 = v169[1] - *v169;
              if (*v171 == 2 && v43 == 8)
              {
                goto LABEL_30;
              }

              v15 = v39 - 2;
              v44 = --v175;
              v176 = v15;
              if (v175 >= (v43 >> 3))
              {
                goto LABEL_30;
              }

LABEL_57:
              while (2)
              {
                v52 = *(v42 + 8 * v44);
                v173 = v52;
                v53 = v168;
                v192 = 0;
                v193 = v52;
                v190 = &v192;
                v191 = &v193;
                v54 = *(v168 + 482) + 1;
                *(v168 + 482) = v54;
                if (!*v53)
                {
                  exception = __cxa_allocate_exception(0x40uLL);
                  v196 = *v191;
                  v194 = sub_7FCF0(1u);
                  v195 = v144;
                  sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
                  if ((v199 & 0x80u) == 0)
                  {
                    v145 = &v197;
                  }

                  else
                  {
                    v145 = v197;
                  }

                  if ((v199 & 0x80u) == 0)
                  {
                    v146 = v199;
                  }

                  else
                  {
                    v146 = v198;
                  }

                  v147 = sub_2D390(exception, v145, v146);
                }

                if (*(v53 + 28) == v52)
                {
                  ++v53[483];
                  v53[15] = v54;
                  v55 = v53[16];
                  if (!v55)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                v56 = (v53 + 17);
                if (*(v53 + 34) == v52)
                {
LABEL_62:
                  ++v53[483];
                  *(v56 + 1) = v54;
                  v55 = *(v56 + 2);
                  if (!v55)
                  {
                    goto LABEL_213;
                  }

                  goto LABEL_80;
                }

                if (*(v53 + 40) == v52)
                {
                  ++v53[483];
                  v53[21] = v54;
                  v55 = v53[22];
                  if (!v55)
                  {
LABEL_213:
                    v148 = __cxa_allocate_exception(0x40uLL);
                    v196 = *v191;
                    v194 = sub_7FCF0(1u);
                    v195 = v149;
                    sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
                    if ((v199 & 0x80u) == 0)
                    {
                      v150 = &v197;
                    }

                    else
                    {
                      v150 = v197;
                    }

                    if ((v199 & 0x80u) == 0)
                    {
                      v151 = v199;
                    }

                    else
                    {
                      v151 = v198;
                    }

                    v152 = sub_2D390(v148, v150, v151);
                  }

LABEL_80:
                  v65 = (v55 + *v55);
                  v66 = (v65 - *v65);
                  if (*v66 >= 7u)
                  {
LABEL_81:
                    v67 = v66[3];
                    if (v67)
                    {
                      LODWORD(v67) = *(v65 + v67);
                    }

                    v174 = v67;
                    v68 = (v65 - *v65);
                    if (*v68 >= 5u)
                    {
LABEL_87:
                      v69 = v68[2];
                      if (v69)
                      {
                        v70 = v65 + v69 + *(v65 + v69);
                        goto LABEL_90;
                      }
                    }

LABEL_89:
                    v70 = 0;
LABEL_90:
                    v71 = &v70[4 * HIDWORD(v52) + 4 + *&v70[4 * HIDWORD(v52) + 4]];
                    v170 = v71;
                    v72 = &v71[-*v71];
                    v73 = *v72;
                    v25 = *(v72 + 3);
                    if (*(v72 + 3))
                    {
                      v25 = (v25 + v71 + *(v25 + v71));
                    }

                    v171 = v25;
                    if (v73 >= 0xB && (v74 = *(v72 + 5)) != 0)
                    {
                      v75 = &v71[v74 + *&v71[v74]];
                    }

                    else
                    {
                      v75 = 0;
                    }

                    v172 = v75;
                    v76 = *v25;
                    v15 = *v25 - 2;
                    v176 = v15;
                    v77 = &v25[2 * (v76 - 1) + 2];
                    v78 = &v25[2 * v15 + 2];
                    if (*v77 != *v78)
                    {
                      goto LABEL_30;
                    }

                    if (v77[1] != v78[1])
                    {
                      goto LABEL_30;
                    }

                    v15 = v76 - 3;
                    v44 = --v175;
                    v176 = v15;
                    v42 = *v169;
                    if (v175 >= ((v169[1] - *v169) >> 3))
                    {
                      goto LABEL_30;
                    }

                    continue;
                  }
                }

                else
                {
                  v56 = (v53 + 23);
                  if (*(v53 + 46) == v52)
                  {
                    goto LABEL_62;
                  }

                  v57 = v53[21];
                  v58 = v53[18];
                  v59 = v53[15];
                  v60 = v53[24];
                  v55 = sub_2D52A4(*v53, 1, v52, 1);
                  if (v59 >= v54)
                  {
                    v61 = v54;
                  }

                  else
                  {
                    v61 = v59;
                  }

                  v62 = v58 >= v61;
                  if (v58 < v61)
                  {
                    v61 = v58;
                  }

                  v63 = 4 * (v59 < v54);
                  if (!v62)
                  {
                    v63 = 5;
                  }

                  if (v57 < v61)
                  {
                    v63 = 6;
                    v61 = v57;
                  }

                  if (v60 < v61)
                  {
                    v63 = 7;
                  }

                  v64 = &v53[3 * v63 + 2];
                  *v64 = v193;
                  *(v64 + 8) = v53[482];
                  *(v64 + 16) = v55;
                  if (v55)
                  {
                    goto LABEL_80;
                  }

                  sub_2B572C(&v190);
                  v65 = 0;
                  v66 = (&loc_1120530 + 1);
                  if (*(&loc_1120530 + 1) >= 7u)
                  {
                    goto LABEL_81;
                  }
                }

                break;
              }

              v174 = 0;
              v68 = (v65 - *v65);
              if (*v68 >= 5u)
              {
                goto LABEL_87;
              }

              goto LABEL_89;
            }

            v42 = *v169;
            v51 = v169[1] - *v169;
            v44 = --v175;
            if (v175 < (v51 >> 3))
            {
              goto LABEL_57;
            }

LABEL_30:
            if (v175 != v14)
            {
              continue;
            }

            goto LABEL_31;
          }

          goto LABEL_115;
        }
      }

      else
      {
        *v188 = v35;
        v36[1] = v34;
        v188 = v36 + 2;
        v38 = v185;
        v37 = v186;
        if (v185 >= v186)
        {
          goto LABEL_103;
        }
      }

      *v38 = v6;
      v185 = v38 + 1;
      v39 = v176;
      if (v177)
      {
        goto LABEL_40;
      }

LABEL_115:
      v15 = v39 + 1;
      v176 = v39 + 1;
      v25 = v171;
      if ((v39 + 1) >= *v171)
      {
        v92 = *v169;
        v95 = v169[1] - *v169;
        v94 = ++v175;
        if (v175 < (v95 >> 3))
        {
          goto LABEL_123;
        }

        goto LABEL_30;
      }

      v90 = (v171 + 4 * v39 + 4);
      v91 = (v171 + 4 * v15 + 4);
      if (*v90 != *v91)
      {
        goto LABEL_30;
      }

      if (v90[1] != v91[1])
      {
        goto LABEL_30;
      }

      v92 = *v169;
      v93 = v169[1] - *v169;
      if (*v171 == 2 && v93 == 8)
      {
        goto LABEL_30;
      }

      v15 = v39 + 2;
      v94 = ++v175;
      v176 = v15;
      if (v175 >= (v93 >> 3))
      {
        goto LABEL_30;
      }

      while (1)
      {
LABEL_123:
        v96 = *(v92 + 8 * v94);
        v173 = v96;
        v97 = v168;
        v192 = 0;
        v193 = v96;
        v190 = &v192;
        v191 = &v193;
        v98 = *(v168 + 482) + 1;
        *(v168 + 482) = v98;
        if (!*v97)
        {
          v153 = __cxa_allocate_exception(0x40uLL);
          v196 = *v191;
          v194 = sub_7FCF0(1u);
          v195 = v154;
          sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
          if ((v199 & 0x80u) == 0)
          {
            v155 = &v197;
          }

          else
          {
            v155 = v197;
          }

          if ((v199 & 0x80u) == 0)
          {
            v156 = v199;
          }

          else
          {
            v156 = v198;
          }

          v157 = sub_2D390(v153, v155, v156);
        }

        if (*(v97 + 28) == v96)
        {
          ++v97[483];
          v97[15] = v98;
          v99 = v97[16];
          if (!v99)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v100 = (v97 + 17);
        if (*(v97 + 34) == v96)
        {
          goto LABEL_128;
        }

        if (*(v97 + 40) == v96)
        {
          ++v97[483];
          v97[21] = v98;
          v99 = v97[22];
          if (!v99)
          {
LABEL_227:
            v158 = __cxa_allocate_exception(0x40uLL);
            v196 = *v191;
            v194 = sub_7FCF0(1u);
            v195 = v159;
            sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", &v194, &v197);
            if ((v199 & 0x80u) == 0)
            {
              v160 = &v197;
            }

            else
            {
              v160 = v197;
            }

            if ((v199 & 0x80u) == 0)
            {
              v161 = v199;
            }

            else
            {
              v161 = v198;
            }

            v162 = sub_2D390(v158, v160, v161);
          }

LABEL_146:
          v109 = (v99 + *v99);
          v110 = (v109 - *v109);
          if (*v110 < 7u)
          {
            goto LABEL_152;
          }

          goto LABEL_147;
        }

        v100 = (v97 + 23);
        if (*(v97 + 46) == v96)
        {
LABEL_128:
          ++v97[483];
          *(v100 + 1) = v98;
          v99 = *(v100 + 2);
          if (!v99)
          {
            goto LABEL_227;
          }

          goto LABEL_146;
        }

        v101 = v97[21];
        v102 = v97[18];
        v103 = v97[15];
        v104 = v97[24];
        v99 = sub_2D52A4(*v97, 1, v96, 1);
        if (v103 >= v98)
        {
          v105 = v98;
        }

        else
        {
          v105 = v103;
        }

        v106 = v102 >= v105;
        if (v102 < v105)
        {
          v105 = v102;
        }

        v107 = 4 * (v103 < v98);
        if (!v106)
        {
          v107 = 5;
        }

        if (v101 < v105)
        {
          v107 = 6;
          v105 = v101;
        }

        if (v104 < v105)
        {
          v107 = 7;
        }

        v108 = &v97[3 * v107 + 2];
        *v108 = v193;
        *(v108 + 8) = v97[482];
        *(v108 + 16) = v99;
        if (v99)
        {
          goto LABEL_146;
        }

        sub_2B572C(&v190);
        v109 = 0;
        v110 = (&loc_1120530 + 1);
        if (*(&loc_1120530 + 1) < 7u)
        {
LABEL_152:
          v174 = 0;
          v112 = (v109 - *v109);
          if (*v112 < 5u)
          {
            goto LABEL_155;
          }

          goto LABEL_153;
        }

LABEL_147:
        v111 = v110[3];
        if (v111)
        {
          LODWORD(v111) = *(v109 + v111);
        }

        v174 = v111;
        v112 = (v109 - *v109);
        if (*v112 < 5u)
        {
          goto LABEL_155;
        }

LABEL_153:
        v113 = v112[2];
        if (v113)
        {
          v114 = v109 + v113 + *(v109 + v113);
          goto LABEL_156;
        }

LABEL_155:
        v114 = 0;
LABEL_156:
        v115 = &v114[4 * HIDWORD(v96) + 4 + *&v114[4 * HIDWORD(v96) + 4]];
        v170 = v115;
        v116 = &v115[-*v115];
        v117 = *v116;
        v25 = *(v116 + 3);
        if (*(v116 + 3))
        {
          v25 = (v25 + v115 + *(v25 + v115));
        }

        v171 = v25;
        if (v117 >= 0xB && (v118 = *(v116 + 5)) != 0)
        {
          v119 = &v115[v118 + *&v115[v118]];
        }

        else
        {
          v119 = 0;
        }

        v172 = v119;
        v15 = 1;
        v176 = 1;
        if (v25[2] != v25[4])
        {
          goto LABEL_30;
        }

        if (v25[3] != v25[5])
        {
          break;
        }

        v15 = 2;
        v94 = ++v175;
        v176 = 2;
        v92 = *v169;
        if (v175 >= ((v169[1] - *v169) >> 3))
        {
          goto LABEL_30;
        }
      }

      v15 = 1;
      if (v175 != v14)
      {
        continue;
      }

LABEL_31:
      if (v15 == v167)
      {
        goto LABEL_168;
      }
    }
  }

  return result;
}