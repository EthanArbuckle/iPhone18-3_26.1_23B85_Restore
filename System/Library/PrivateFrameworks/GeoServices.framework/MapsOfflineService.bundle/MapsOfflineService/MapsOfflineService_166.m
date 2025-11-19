uint64_t sub_A264C8(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v6 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v6;
  *(a2 + 71) = 0;
  *(a2 + 48) = 0;
  *(a1 + 72) = *(a2 + 18);
  return a1;
}

void sub_A26570(uint64_t a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  v3 = *(a1 + 56);
  if (v3 == -1)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    if (v3 >= (a2[1] - *a2) >> 5)
    {
      sub_6FAB4();
    }

    if ((0x4EC4EC4EC4EC4EC5 * ((*(*a2 + 32 * v3 + 8) - *(*a2 + 32 * v3)) >> 3)) <= 1)
    {
      operator new();
    }

    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_A267DC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_A26804(char **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    goto LABEL_12;
  }

  v3 = v2 - v1;
  if (v2 - v1 == 104)
  {
    v4 = 0;
  }

  else
  {
    v5 = 0;
    v6 = *a1;
    while (*v6)
    {
      v6 += 104;
      v5 -= 104;
      if (v6 == v2)
      {
        v7 = v2 - v1;
        goto LABEL_9;
      }
    }

    v7 = -v5;
LABEL_9:
    v4 = 0x4EC4EC4EC4EC4EC5 * (v7 >> 3);
  }

  if (0x4EC4EC4EC4EC4EC5 * (v3 >> 3) <= v4)
  {
LABEL_12:
    sub_6FAB4();
  }

  return &v1[104 * v4];
}

void sub_A26898(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 8);
  }

  if (v4)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      operator new();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
}

void sub_A26B2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_A26B5C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v7 = a2[11];
  if (v7 >= a2[12])
  {
    v8 = sub_A26F64(a2 + 10, a3, a4);
    a2[11] = v8;
    if (*a5 == a5[1])
    {
      return;
    }
  }

  else
  {
    if (*(a3 + 23) < 0)
    {
      v9 = a4;
      sub_325C(&v19, *a3, *(a3 + 8));
      a4 = v9;
    }

    else
    {
      v19 = *a3;
      v20 = *(a3 + 16);
    }

    if (*(a4 + 23) < 0)
    {
      sub_325C(&v17, *a4, *(a4 + 8));
    }

    else
    {
      v17 = *a4;
      v18 = *(a4 + 16);
    }

    v10 = v19;
    *(v7 + 16) = v20;
    *v7 = v10;
    *(v7 + 24) = v17;
    *(v7 + 40) = v18;
    *(v7 + 48) = 0;
    *(v7 + 56) = 0;
    *(v7 + 64) = 0;
    v8 = v7 + 72;
    a2[11] = v8;
    a2[11] = v8;
    if (*a5 == a5[1])
    {
      return;
    }
  }

  v11 = *(v8 - 16);
  if (v11 >= *(v8 - 8))
  {
    v12 = sub_A27220(v8 - 24);
    *(v8 - 16) = v12;
    v13 = *a5;
    v14 = a5[1];
    if (*a5 == v14)
    {
      return;
    }
  }

  else
  {
    *v11 = 0;
    v11[1] = 0;
    v12 = v11 + 3;
    v11[2] = 0;
    *(v8 - 16) = v11 + 3;
    v13 = *a5;
    v14 = a5[1];
    if (*a5 == v14)
    {
      return;
    }
  }

  v15 = *(v12 - 2);
  do
  {
    while (1)
    {
      v16 = *v13;
      *&v19 = *v13;
      if (v15 < *(v12 - 1))
      {
        break;
      }

      v15 = sub_A273B8((v12 - 3), &v19);
      *(v12 - 2) = v15;
      if (++v13 == v14)
      {
        return;
      }
    }

    *v15 = v16;
    v15[1] = 0;
    v15[2] = 0;
    v15[3] = 0;
    v15 += 4;
    *(v12 - 2) = v15;
    ++v13;
  }

  while (v13 != v14);
}

void sub_A26CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    *(v18 + 88) = v19;
    _Unwind_Resume(exception_object);
  }

  *(v18 + 88) = v19;
  _Unwind_Resume(exception_object);
}

int *sub_A26D28@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = a2[9];
  if (0x66FD0EB66FD0EB67 * ((a2[10] - v5) >> 3) <= a3)
  {
    sub_6FAB4();
  }

  v6 = v5 + 696 * a3;
  v7 = *(v6 + 64);
  v8 = a2[12];
  if (0x4EC4EC4EC4EC4EC5 * ((a2[13] - v8) >> 4) <= v7)
  {
    sub_6FAB4();
  }

  v10 = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v11 = (v10 - *v10);
  if (*v11 < 0x55u || !v11[42])
  {
    result = sub_93E04C(*a1, *(v8 + 208 * v7 + 56), 0, "system");
    v18 = (result - *result);
    if (*v18 >= 0x17u)
    {
      v19 = v18[11];
      if (v19)
      {
        v15 = (result + v19 + *(result + v19));
        v20 = (v15 - *v15);
        if (*v20 <= 4u)
        {
          goto LABEL_18;
        }

        v17 = v20[2];
        if (!v17)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }
    }

LABEL_17:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    return result;
  }

  result = sub_92FC60(a1[1], *(v6 + 56), 0, "line");
  v13 = (result - *result);
  if (*v13 < 0x55u)
  {
    goto LABEL_17;
  }

  v14 = v13[42];
  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = (result + v14 + *(result + v14));
  v16 = (v15 - *v15);
  if (*v16 <= 4u || (v17 = v16[2]) == 0)
  {
LABEL_18:
    *(a4 + 23) = 0;
    *a4 = 0;
    return result;
  }

LABEL_14:
  v21 = (v15 + v17);
  v22 = *v21;
  v23 = *(v21 + v22);
  if (v23 >= 0x17)
  {
    operator new();
  }

  *(a4 + 23) = v23;
  if (v23)
  {
    result = memcpy(a4, v21 + v22 + 4, v23);
  }

  *(a4 + v23) = 0;
  return result;
}

uint64_t sub_A26F64(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v3 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 3) + 1;
  if (v3 > 0x38E38E38E38E38ELL)
  {
    sub_1794();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
  {
    v6 = 0x38E38E38E38E38ELL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x38E38E38E38E38ELL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * ((a1[1] - *a1) >> 3);
  if (*(a2 + 23) < 0)
  {
    sub_325C(&v18, *a2, *(a2 + 1));
  }

  else
  {
    v18 = *a2;
    v19 = *(a2 + 2);
  }

  if (*(a3 + 23) < 0)
  {
    sub_325C(&v16, *a3, *(a3 + 1));
  }

  else
  {
    v16 = *a3;
    v17 = *(a3 + 2);
  }

  *v7 = v18;
  *(v7 + 16) = v19;
  *(v7 + 24) = v16;
  *(v7 + 40) = v17;
  *(v7 + 48) = 0;
  v8 = *a1;
  v9 = a1[1];
  v10 = v7 + *a1 - v9;
  *(v7 + 56) = 0;
  *(v7 + 64) = 0;
  if (v9 != v8)
  {
    v11 = v8;
    v12 = v10;
    do
    {
      v13 = *v11;
      *(v12 + 16) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 40) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      *(v12 + 48) = *(v11 + 3);
      *(v12 + 64) = *(v11 + 8);
      *(v11 + 6) = 0;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      v11 += 72;
      v12 += 72;
    }

    while (v11 != v9);
    do
    {
      sub_9D2428(v8);
      v8 += 72;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v7 + 72;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7 + 72;
}

void sub_A27194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    sub_A271CC(&a10);
    _Unwind_Resume(a1);
  }

  sub_A271CC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_A271CC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    sub_9D2428(i - 72);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_A27220(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3) + 1;
  if (v4 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x5555555555555556 * ((*(a1 + 16) - v1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - v1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = (8 * (v3 >> 3));
  *v7 = 0;
  v7[1] = 0;
  v7[2] = 0;
  v8 = v7 + 3;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      *v11 = *v10;
      *(v11 + 2) = v10[2];
      *v10 = 0;
      v10[1] = 0;
      v10[2] = 0;
      v10 += 3;
      v11 += 24;
    }

    while (v10 != v2);
    do
    {
      v13 = *v1;
      if (*v1)
      {
        v14 = v1[1];
        v12 = *v1;
        if (v14 != v13)
        {
          do
          {
            v15 = *(v14 - 3);
            if (v15)
            {
              *(v14 - 2) = v15;
              operator delete(v15);
            }

            v14 -= 32;
          }

          while (v14 != v13);
          v12 = *v1;
        }

        v1[1] = v13;
        operator delete(v12);
      }

      v1 += 3;
    }

    while (v1 != v2);
    v1 = *a1;
  }

  *a1 = v9;
  *(a1 + 8) = v8;
  *(a1 + 16) = 0;
  if (v1)
  {
    operator delete(v1);
  }

  return v8;
}

uint64_t sub_A273B8(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = (32 * v4);
  *v10 = *a2;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = v2;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v3);
    do
    {
      v14 = v2[1];
      if (v14)
      {
        v2[2] = v14;
        operator delete(v14);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 32 * v4 + 32;
}

void sub_A2750C()
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
  xmmword_27B3CD0 = 0u;
  unk_27B3CE0 = 0u;
  dword_27B3CF0 = 1065353216;
  sub_3A9A34(&xmmword_27B3CD0, v0);
  sub_3A9A34(&xmmword_27B3CD0, v3);
  sub_3A9A34(&xmmword_27B3CD0, __p);
  sub_3A9A34(&xmmword_27B3CD0, v9);
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
    qword_27B3CA8 = 0;
    qword_27B3CB0 = 0;
    qword_27B3CA0 = 0;
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

void sub_A27754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3CB8)
  {
    qword_27B3CC0 = qword_27B3CB8;
    operator delete(qword_27B3CB8);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A27834(void *result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v5 = result;
    do
    {
      result = sub_A2788C(v5, v2, a2 + 24, a2 + 288);
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A2788C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_A21C90(v11, a2);
  while (1)
  {
    sub_A21CE8(v11, __p);
    v7 = sub_A21B4C(v11, __p);
    sub_98ED24(__p);
    if (!v7)
    {
      break;
    }

    if (*sub_A21CB8(v11) == 2)
    {
      v8 = sub_A21CB8(v11);
      if (sub_A27B50(v8, v8))
      {
        sub_A21834(v11, 0xFFFFFFFFFFFFFFFFLL, __p);
        *(v8 + 1008) = sub_A279DC(a1, v8, __p, a3, a4);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }

    sub_A21708(v11);
  }

  return sub_98ED24(v11);
}

void sub_A2797C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
    sub_98ED24(&a28);
    _Unwind_Resume(a1);
  }

  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

uint64_t sub_A279DC(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a4 + 72) + 696 * *(a2 + 752) + 554);
  v7 = *(a2 + 116);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v7 == 0x7FFFFFFF)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }

LABEL_10:
    if (sub_B6E0((a2 + 144)))
    {
      if (sub_9CE360(*(a5 + 4), a2, *a1, (a1 + 8)))
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    return 1;
  }

  if (v6 != 3)
  {
    if (v6 == 4)
    {
      return 5;
    }

    if (v6 != 5)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (v7 == 0x7FFFFFFF)
  {
    return 2;
  }

  if (*(a2 + 440) == *(a2 + 448) || *(*a1 + 1177) < 9u || !sub_B6E0((a2 + 144)))
  {
    return 1;
  }

  v12 = *a3;
  result = 3;
  while (v12 != a3[1])
  {
    v13 = *v12;
    if (**v12 == 2 && *(v13 + 792) == 1 && (v13[186] & 1) != 0)
    {
      return 1;
    }

    ++v12;
  }

  return result;
}

BOOL sub_A27B50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 1008);
  v3 = 1;
  if (v2 > 2)
  {
    if (v2 != 3)
    {
      if (v2 != 4)
      {
        return v2 != 5;
      }

      if (*(a2 + 488) != *(a2 + 496))
      {
        if (!sub_7E7E4(1u))
        {
          return v3;
        }

        sub_19594F8(&v17);
        sub_4A5C(&v17, "Encoded time display type of countdown in route handle but step has no upcoming departures", 90);
        if ((v27 & 0x10) != 0)
        {
          v7 = v26;
          if (v26 < v23)
          {
            v26 = v23;
            v7 = v23;
          }

          v8 = &v22;
        }

        else
        {
          if ((v27 & 8) == 0)
          {
            v4 = 0;
            v16 = 0;
            goto LABEL_69;
          }

          v8 = v20;
          v7 = v21;
        }

        v13 = *v8;
        v4 = v7 - *v8;
        if (v4 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v4 >= 0x17)
        {
          operator new();
        }

        v16 = v7 - *v8;
        if (!v4)
        {
          goto LABEL_69;
        }

LABEL_68:
        memmove(&__p, v13, v4);
        goto LABEL_69;
      }

      return 0;
    }

    if (*(a2 + 116) != 0x7FFFFFFF && *(a2 + 440) != *(a2 + 448))
    {
      return 0;
    }

    if (!sub_7E7E4(1u))
    {
      return v3;
    }

    sub_19594F8(&v17);
    sub_4A5C(&v17, "Encoded time display type of multiple departures in route handle but step has no future departures", 98);
    if ((v27 & 0x10) != 0)
    {
      v5 = v26;
      if (v26 < v23)
      {
        v26 = v23;
        v5 = v23;
      }

      v6 = &v22;
    }

    else
    {
      if ((v27 & 8) == 0)
      {
        v4 = 0;
        v16 = 0;
        goto LABEL_69;
      }

      v6 = v20;
      v5 = v21;
    }

    v13 = *v6;
    v4 = v5 - *v6;
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v16 = v5 - *v6;
    if (!v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if (v2 == 1)
  {
    if (*(a2 + 116) == 0x7FFFFFFF)
    {
      if (!sub_7E7E4(1u))
      {
        return v3;
      }

      sub_19594F8(&v17);
      sub_4A5C(&v17, "Encoded time display type of single departure but step is missing a departure time", 82);
      if ((v27 & 0x10) != 0)
      {
        v9 = v26;
        if (v26 < v23)
        {
          v26 = v23;
          v9 = v23;
        }

        v10 = &v22;
      }

      else
      {
        if ((v27 & 8) == 0)
        {
          v4 = 0;
          v16 = 0;
          goto LABEL_69;
        }

        v10 = v20;
        v9 = v21;
      }

      v13 = *v10;
      v4 = v9 - *v10;
      if (v4 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v4 >= 0x17)
      {
        operator new();
      }

      v16 = v9 - *v10;
      if (!v4)
      {
        goto LABEL_69;
      }

      goto LABEL_68;
    }

    return 0;
  }

  if (v2 != 2)
  {
    return v3;
  }

  if (sub_B6E0((a2 + 144)))
  {
    return 0;
  }

  if (!sub_7E7E4(1u))
  {
    return v3;
  }

  sub_19594F8(&v17);
  sub_4A5C(&v17, "Encoded time display type of frequency in route handle but step does not have a frequency", 89);
  if ((v27 & 0x10) != 0)
  {
    v11 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v11 = v23;
    }

    v12 = &v22;
LABEL_63:
    v13 = *v12;
    v4 = v11 - *v12;
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v16 = v11 - *v12;
    if (!v4)
    {
      goto LABEL_69;
    }

    goto LABEL_68;
  }

  if ((v27 & 8) != 0)
  {
    v12 = v20;
    v11 = v21;
    goto LABEL_63;
  }

  v4 = 0;
  v16 = 0;
LABEL_69:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 1u);
  if (v16 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::locale::~locale(&v19);
  std::ostream::~ostream();
  std::ios::~ios();
  return 1;
}

void sub_A28138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_A284D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3D40)
  {
    qword_27B3D48 = qword_27B3D40;
    operator delete(qword_27B3D40);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A28584(void *result, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*a2 != v3)
  {
    v4 = result;
    do
    {
      result = sub_A285D0(v4, v2);
      v2 += 412;
    }

    while (v2 != v3);
  }

  return result;
}

void *sub_A285D0(uint64_t a1, void *a2)
{
  sub_A21C90(v6, a2);
  while (1)
  {
    sub_A21CE8(v6, v5);
    v2 = sub_A21B4C(v6, v5);
    sub_98ED24(v5);
    if (!v2)
    {
      break;
    }

    if (*sub_A21CB8(v6) == 2)
    {
      v3 = sub_A21CB8(v6);
      sub_A286A4(v3, v3);
    }

    sub_A21708(v6);
  }

  return sub_98ED24(v6);
}

void sub_A28674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a9);
  sub_98ED24(&a28);
  _Unwind_Resume(a1);
}

void sub_A286A4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 784) == 1)
  {
    v3 = *(a2 + 1008);
    if ((v3 - 2) >= 3)
    {
      if (v3 == 1 && *(a2 + 116) != 0x7FFFFFFF)
      {
        v17 = *(a2 + 116 + 4 * (*(a2 + 120) != 0x7FFFFFFF));
        v18 = *(a2 + 2160);
        v19 = *(a2 + 2168);
        if (v18 >= v19)
        {
          v21 = *(a2 + 2152);
          v22 = 0xAAAAAAAAAAAAAAABLL * ((v18 - v21) >> 2) + 1;
          if (v22 > 0x1555555555555555)
          {
LABEL_37:
            sub_1794();
          }

          v23 = 0xAAAAAAAAAAAAAAABLL * ((v19 - v21) >> 2);
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0xAAAAAAAAAAAAAAALL)
          {
            v24 = 0x1555555555555555;
          }

          else
          {
            v24 = v22;
          }

          if (v24)
          {
            if (v24 <= 0x1555555555555555)
            {
              operator new();
            }

            goto LABEL_38;
          }

          v25 = 4 * ((v18 - v21) >> 2);
          *v25 = *(a2 + 128);
          *(v25 + 8) = v17;
          v20 = v25 + 12;
          v26 = (v25 - (v18 - v21));
          memcpy(v26, v21, v18 - v21);
          *(a2 + 2152) = v26;
          *(a2 + 2160) = v20;
          *(a2 + 2168) = 0;
          if (v21)
          {
            operator delete(v21);
          }
        }

        else
        {
          *v18 = *(a2 + 128);
          *(v18 + 8) = v17;
          v20 = v18 + 12;
        }

        *(a2 + 2160) = v20;
      }
    }

    else
    {
      v4 = *(a2 + 488);
      v5 = *(a2 + 496);
      if (v4 != v5)
      {
        v6 = *(a2 + 2160);
        while (1)
        {
          while (1)
          {
            v7 = *(v4 + 4);
            v8 = *(a2 + 2168);
            if (v6 >= v8)
            {
              break;
            }

            *v6 = *(v4 + 12);
            *(v6 + 8) = v7;
            v6 += 12;
            *(a2 + 2160) = v6;
            v4 += 28;
            if (v4 == v5)
            {
              return;
            }
          }

          v9 = *(a2 + 2152);
          v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v9) >> 2);
          v11 = v10 + 1;
          if (v10 + 1 > 0x1555555555555555)
          {
            goto LABEL_37;
          }

          v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2);
          if (2 * v12 > v11)
          {
            v11 = 2 * v12;
          }

          v13 = v12 >= 0xAAAAAAAAAAAAAAALL ? 0x1555555555555555 : v11;
          if (v13)
          {
            break;
          }

          v14 = v6;
          v15 = 4 * ((v6 - v9) >> 2);
          *v15 = *(v4 + 12);
          *(v15 + 8) = v7;
          v6 = v15 + 12;
          v16 = (12 * v10 - (v14 - v9));
          memcpy(v16, v9, v14 - v9);
          *(a2 + 2152) = v16;
          *(a2 + 2160) = v6;
          *(a2 + 2168) = 0;
          if (v9)
          {
            operator delete(v9);
          }

          *(a2 + 2160) = v6;
          v4 += 28;
          if (v4 == v5)
          {
            return;
          }
        }

        if (v13 <= 0x1555555555555555)
        {
          operator new();
        }

LABEL_38:
        sub_1808();
      }
    }
  }
}

void sub_A28968()
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
  xmmword_27B3DB0 = 0u;
  unk_27B3DC0 = 0u;
  dword_27B3DD0 = 1065353216;
  sub_3A9A34(&xmmword_27B3DB0, v0);
  sub_3A9A34(&xmmword_27B3DB0, v3);
  sub_3A9A34(&xmmword_27B3DB0, __p);
  sub_3A9A34(&xmmword_27B3DB0, v9);
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
    qword_27B3D88 = 0;
    qword_27B3D90 = 0;
    qword_27B3D80 = 0;
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

void sub_A28BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3D98)
  {
    qword_27B3DA0 = qword_27B3D98;
    operator delete(qword_27B3D98);
  }

  _Unwind_Resume(exception_object);
}

void *sub_A28C5C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &off_266FFF8;
  result[1] = a2;
  result[2] = a3;
  result[3] = a4;
  return result;
}

void sub_A28C80(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      v7 = *(v3 + 16);
      v8 = 0uLL;
      if (v7 > 2)
      {
        if (v7 == 3)
        {
          sub_990E44(*(a1 + 16), *(v3 + 8), &v33);
        }

        else
        {
          if (v7 != 4)
          {
            goto LABEL_14;
          }

          sub_991DCC(*(a1 + 24), *(v3 + 8), &v33);
        }

        v8 = v33;
      }

      else
      {
        if (v7 == 1)
        {
          sub_99161C();
        }

        if (v7 == 2)
        {
          sub_990680(&v33);
        }
      }

LABEL_14:
      v10 = *(&v8 + 1);
      v9 = v8;
      v11 = 126 - 2 * __clz((*(&v8 + 1) - v8) >> 3);
      if (*(&v8 + 1) == v8)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11;
      }

      sub_A29308(v8, *(&v8 + 1), &v33, v12, 1);
      if (v10 != v9)
      {
        v13 = v9;
        while (1)
        {
          v14 = v13 + 8;
          if (v13 + 8 == v10)
          {
            break;
          }

          LODWORD(v15) = *v13;
          v16 = *(v13 + 1);
          v18 = *(v13 + 2);
          v17 = *(v13 + 3);
          v19 = v15 == v18 && v16 == v17;
          v13 = v14;
          if (v19)
          {
            v20 = v14 + 8;
            v21 = v14 - 8;
            while (v20 != v10)
            {
              if (v15 != *v20 || *(v21 + 1) != *(v20 + 1))
              {
                v15 = *v20;
                *(v21 + 1) = *v20;
                v21 += 8;
              }

              v20 += 8;
            }

            if (v21 + 8 != v10)
            {
              v10 = v21 + 8;
            }

            break;
          }
        }
      }

      v23 = a3[1];
      if (v23 >= a3[2])
      {
        v24 = sub_A291B4(a3, v3);
      }

      else
      {
        *v23 = *v3;
        v23[1] = 0;
        v23[2] = 0;
        v23[3] = 0;
        v24 = (v23 + 4);
      }

      a3[1] = v24;
      if (v9 == v10)
      {
        if (sub_7E7E4(3u))
        {
          sub_19594F8(&v33);
          sub_4A5C(&v33, "No style attributes for entity id: ", 35);
          std::ostream::operator<<();
          if ((v41 & 0x10) != 0)
          {
            v26 = v40;
            v27 = &v36;
            if (v40 < v37)
            {
              v40 = v37;
              v26 = v37;
              v27 = &v36;
            }
          }

          else
          {
            if ((v41 & 8) == 0)
            {
              v25 = 0;
              v32 = 0;
LABEL_53:
              *(&__dst + v25) = 0;
              sub_7E854(&__dst, 3u);
              if (v32 < 0)
              {
                operator delete(__dst);
              }

              *&v33 = v30;
              *(&v33 + *(v30 - 24)) = v29;
              if (v39 < 0)
              {
                operator delete(__p);
              }

              std::locale::~locale(&v34);
              std::ostream::~ostream();
              std::ios::~ios();
              goto LABEL_58;
            }

            v26 = v35[2];
            v27 = v35;
          }

          v28 = *v27;
          v25 = v26 - *v27;
          if (v25 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }

          if (v25 >= 0x17)
          {
            operator new();
          }

          v32 = v26 - *v27;
          if (v25)
          {
            memmove(&__dst, v28, v25);
          }

          goto LABEL_53;
        }
      }

      else
      {
        sub_2CE7AC(v24 - 24, *(v24 - 16), v9, v10, (v10 - v9) >> 3);
      }

LABEL_58:
      if (v9)
      {
        operator delete(v9);
      }

      v3 += 32;
    }

    while (v3 != v4);
  }
}

void sub_A290F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::ios::~ios();
  if (v21)
  {
    operator delete(v21);
  }

  sub_37484(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_A291B4(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = (v3 - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - v2;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = (v3 - *a1) >> 5;
  v10 = (32 * v4);
  *v10 = *a2;
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = 0;
  v11 = 32 * v4 - 32 * v9;
  if (v2 != v3)
  {
    v12 = v2;
    v13 = v11;
    do
    {
      *v13 = *v12;
      *(v13 + 16) = 0;
      *(v13 + 24) = 0;
      *(v13 + 8) = *(v12 + 1);
      *(v13 + 24) = v12[3];
      v12[1] = 0;
      v12[2] = 0;
      v12[3] = 0;
      v12 += 4;
      v13 += 32;
    }

    while (v12 != v3);
    do
    {
      v14 = v2[1];
      if (v14)
      {
        v2[2] = v14;
        operator delete(v14);
      }

      v2 += 4;
    }

    while (v2 != v3);
    v2 = *a1;
  }

  *a1 = v11;
  *(a1 + 8) = 32 * v4 + 32;
  *(a1 + 16) = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return 32 * v4 + 32;
}

uint32x2_t *sub_A29308(uint32x2_t *result, uint32x2_t *a2, uint64_t a3, uint64_t a4, char a5)
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
      break;
    }

    switch(v11)
    {
      case 3:
        v139 = v10->u32[2];
        v140 = v10->u32[3];
        v141 = v139 < v10->i32[0];
        if (v139 == v10->i32[0])
        {
          v141 = v140 < v10->i32[1];
        }

        v142 = a2[-1].u32[0];
        v143 = a2[-1].i32[1] < v140;
        v146 = v142 == v139;
        v144 = v142 < v139;
        if (v146)
        {
          v144 = v143;
        }

        if (v141)
        {
          v138 = v10->i64[0];
          if (v144)
          {
            goto LABEL_169;
          }

          v10->i64[0] = v10->i64[1];
          v10->i64[1] = v138;
          v180 = a2[-1].u32[0];
          v181 = a2[-1].i32[1] < HIDWORD(v138);
          v146 = v180 == v138;
          v182 = v180 < v138;
          if (!v146)
          {
            v181 = v182;
          }

          if (v181)
          {
            v10->u64[1] = a2[-1];
            a2[-1] = v138;
          }
        }

        else if (v144)
        {
          v164 = v10->i64[1];
          v10->u64[1] = a2[-1];
          a2[-1] = v164;
          v165 = v10->u32[2];
          v166 = v165 < v10->i32[0];
          if (v165 == v10->i32[0])
          {
            v166 = v10->i32[3] < v10->i32[1];
          }

          if (v166)
          {
            *v10 = vextq_s8(*v10, *v10, 8uLL);
          }
        }

        return result;
      case 4:

        return sub_A29DA0(v10, &v10->u32[2], &v10[1], &a2[-1]);
      case 5:
        result = sub_A29DA0(v10, &v10->u32[2], &v10[1], &v10[1].u32[2]);
        v123 = v10[1].u32[2];
        v124 = a2[-1].u32[0];
        v146 = v124 == v123;
        v125 = v124 < v123;
        if (v146)
        {
          v125 = a2[-1].i32[1] < v10[1].i32[3];
        }

        if (v125)
        {
          v126 = v10[1].i64[1];
          v10[1].u64[1] = a2[-1];
          a2[-1] = v126;
          LODWORD(v126) = v10[1].i32[0];
          v127 = v10[1].u32[2];
          v146 = v127 == v126;
          v128 = v127 < v126;
          if (v146)
          {
            v128 = v10[1].i32[3] < v10[1].i32[1];
          }

          if (v128)
          {
            v130 = v10[1].i64[0];
            v129 = v10[1].i64[1];
            v10[1].i64[0] = v129;
            v10[1].i64[1] = v130;
            v131 = v10->u32[2];
            v146 = v131 == v129;
            v132 = v131 > v129;
            if (v146)
            {
              v132 = v10->i32[3] > HIDWORD(v129);
            }

            if (v132)
            {
              v133 = v10->i64[1];
              v10->i64[1] = v129;
              v10[1].i64[0] = v133;
              v134 = v10->i32[1] > HIDWORD(v129);
              if (v10->i32[0] != v129)
              {
                v134 = v10->i32[0] > v129;
              }

              if (v134)
              {
                v135 = v10->i64[0];
                v10->i64[0] = v129;
                v10->i64[1] = v135;
              }
            }
          }
        }

        return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v145 = &v10->u64[1];
      v146 = v10 == a2 || v145 == a2;
      v147 = v146;
      if (a5)
      {
        if ((v147 & 1) == 0)
        {
          v148 = 0;
          v149 = v10;
          do
          {
            v151 = v149->i32[0];
            v152 = v149->u32[1];
            v153 = v149->u32[2];
            v154 = v149->u32[3];
            v149 = v145;
            v155 = v154 < v152;
            v146 = v153 == v151;
            v156 = v153 < v151;
            if (!v146)
            {
              v155 = v156;
            }

            if (v155)
            {
              v157 = v149->i64[0];
              v158 = HIDWORD(v149->i64[0]);
              v159 = v148;
              do
              {
                v160 = &v10->i8[v159];
                *(&v10->i64[1] + v159) = *(v10->i64 + v159);
                if (!v159)
                {
                  v150 = v10;
                  goto LABEL_184;
                }

                v161 = *(v160 - 2);
                v162 = *(v160 - 1) > v158;
                v146 = v161 == v157;
                v163 = v161 > v157;
                if (!v146)
                {
                  v162 = v163;
                }

                v159 -= 8;
              }

              while (v162);
              v150 = (&v10->i64[1] + v159);
LABEL_184:
              *v150 = v157;
            }

            v145 = &v149->u64[1];
            v148 += 8;
          }

          while (&v149->u64[1] != a2);
        }
      }

      else if ((v147 & 1) == 0)
      {
        do
        {
          v167 = v9->i32[0];
          v168 = v9->u32[1];
          v169 = v9->u32[2];
          v170 = v9->u32[3];
          v9 = v145;
          v171 = v170 < v168;
          v146 = v169 == v167;
          v172 = v169 < v167;
          if (v146)
          {
            v172 = v171;
          }

          if (v172)
          {
            v173 = *v145;
            v174 = HIDWORD(*v145);
            do
            {
              v175 = v145;
              v176 = v145[-1];
              --v145;
              *v175 = v176;
              v177 = v175[-2].u32[0];
              v178 = v175[-2].i32[1] > v174;
              v146 = v177 == v173.i32[0];
              v179 = v177 > v173.i32[0];
              if (!v146)
              {
                v178 = v179;
              }
            }

            while (v178);
            *v145 = v173;
          }

          v145 = &v9->u64[1];
        }

        while (&v9->u64[1] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {

        return sub_A2A450(v10, a2, a2, a3);
      }

      return result;
    }

    v12 = &v10->i32[2 * (v11 >> 1)];
    v13 = a2[-1].u32[0];
    v14 = a2[-1].u32[1];
    if (v11 < 0x81)
    {
      v21 = v10->i32[0];
      v22 = v10->u32[1];
      v23 = v10->i32[0] < *v12;
      if (v10->i32[0] == *v12)
      {
        v23 = v22 < v12[1];
      }

      v24 = v14 < v22;
      v146 = v13 == v21;
      v25 = v13 < v21;
      if (v146)
      {
        v25 = v24;
      }

      if (v23)
      {
        v26 = *v12;
        if (v25)
        {
          *v12 = a2[-1];
          goto LABEL_60;
        }

        *v12 = v10->i64[0];
        v10->i64[0] = v26;
        v50 = a2[-1].u32[0];
        v51 = a2[-1].i32[1] < HIDWORD(v26);
        v146 = v50 == v26;
        v52 = v50 < v26;
        if (!v146)
        {
          v51 = v52;
        }

        if (v51)
        {
          *v10->i8 = a2[-1];
LABEL_60:
          a2[-1] = v26;
        }
      }

      else if (v25)
      {
        v30 = v10->i64[0];
        *v10->i8 = a2[-1];
        a2[-1] = v30;
        v31 = v10->i32[0] < *v12;
        if (v10->i32[0] == *v12)
        {
          v31 = v10->i32[1] < v12[1];
        }

        if (v31)
        {
          v32 = *v12;
          *v12 = v10->i64[0];
          v10->i64[0] = v32;
          --a4;
          if (a5)
          {
            goto LABEL_109;
          }

          goto LABEL_106;
        }
      }

      --a4;
      if (a5)
      {
        goto LABEL_109;
      }

      goto LABEL_106;
    }

    v15 = *v12;
    v16 = v12[1];
    v17 = *v12 < v10->i32[0];
    if (*v12 == v10->i32[0])
    {
      v17 = v16 < v10->i32[1];
    }

    v18 = v14 < v16;
    v146 = v13 == v15;
    v19 = v13 < v15;
    if (v146)
    {
      v19 = v18;
    }

    if (v17)
    {
      v20 = v10->i64[0];
      if (v19)
      {
        *v10->i8 = a2[-1];
LABEL_42:
        a2[-1] = v20;
        goto LABEL_43;
      }

      v10->i64[0] = *v12;
      *v12 = v20;
      v33 = a2[-1].u32[0];
      v34 = a2[-1].i32[1] < HIDWORD(v20);
      v146 = v33 == v20;
      v35 = v33 < v20;
      if (!v146)
      {
        v34 = v35;
      }

      if (v34)
      {
        *v12 = a2[-1];
        goto LABEL_42;
      }
    }

    else if (v19)
    {
      v27 = *v12;
      *v12 = a2[-1];
      a2[-1] = v27;
      v28 = *v12 < v10->i32[0];
      if (*v12 == v10->i32[0])
      {
        v28 = v12[1] < v10->i32[1];
      }

      if (v28)
      {
        v29 = v10->i64[0];
        v10->i64[0] = *v12;
        *v12 = v29;
      }
    }

LABEL_43:
    v37 = *(v12 - 2);
    v38 = *(v12 - 1);
    v36 = (v12 - 2);
    v39 = v10->u32[2];
    v40 = v38 < v10->i32[3];
    v146 = v37 == v39;
    v41 = v37 < v39;
    if (!v146)
    {
      v40 = v41;
    }

    v42 = a2[-2].u32[0];
    v43 = a2[-2].i32[1] < v38;
    v146 = v42 == v37;
    v44 = v42 < v37;
    if (v146)
    {
      v45 = v43;
    }

    else
    {
      v45 = v44;
    }

    if (v40)
    {
      v46 = v10->i64[1];
      if (v45)
      {
        v10->u64[1] = a2[-2];
LABEL_67:
        a2[-2] = v46;
        goto LABEL_68;
      }

      v10->i64[1] = *v36;
      *v36 = v46;
      v53 = a2[-2].u32[0];
      v54 = a2[-2].i32[1] < HIDWORD(v46);
      v146 = v53 == v46;
      v55 = v53 < v46;
      if (!v146)
      {
        v54 = v55;
      }

      if (v54)
      {
        *v36 = a2[-2];
        goto LABEL_67;
      }
    }

    else if (v45)
    {
      v47 = *v36;
      *v36 = a2[-2];
      a2[-2] = v47;
      v47.i32[0] = v10->i32[2];
      v146 = *v36 == v47.i32[0];
      v48 = *v36 < v47.i32[0];
      if (v146)
      {
        v48 = *(v12 - 1) < v10->i32[3];
      }

      if (v48)
      {
        v49 = v10->i64[1];
        v10->i64[1] = *v36;
        *v36 = v49;
      }
    }

LABEL_68:
    v57 = v12[2];
    v58 = v12[3];
    v56 = (v12 + 2);
    v59 = v10[1].u32[0];
    v60 = v58 < v10[1].i32[1];
    v146 = v57 == v59;
    v61 = v57 < v59;
    if (!v146)
    {
      v60 = v61;
    }

    v62 = a2[-3].u32[0];
    v63 = a2[-3].i32[1] < v58;
    v146 = v62 == v57;
    v64 = v62 < v57;
    if (v146)
    {
      v65 = v63;
    }

    else
    {
      v65 = v64;
    }

    if (v60)
    {
      v66 = v10[1].i64[0];
      if (v65)
      {
        *v10[1].i8 = a2[-3];
LABEL_85:
        a2[-3] = v66;
        goto LABEL_86;
      }

      v10[1].i64[0] = *v56;
      *v56 = v66;
      v70 = a2[-3].u32[0];
      v71 = a2[-3].i32[1] < HIDWORD(v66);
      v146 = v70 == v66;
      v72 = v70 < v66;
      if (!v146)
      {
        v71 = v72;
      }

      if (v71)
      {
        *v56 = a2[-3];
        goto LABEL_85;
      }
    }

    else if (v65)
    {
      v67 = *v56;
      *v56 = a2[-3];
      a2[-3] = v67;
      v67.i32[0] = v10[1].i32[0];
      v146 = *v56 == v67.i32[0];
      v68 = *v56 < v67.i32[0];
      if (v146)
      {
        v68 = v12[3] < v10[1].i32[1];
      }

      if (v68)
      {
        v69 = v10[1].i64[0];
        v10[1].i64[0] = *v56;
        *v56 = v69;
      }
    }

LABEL_86:
    v73 = *v36;
    v74 = *(v12 - 1);
    v75 = *v12;
    v76 = v12[1];
    if (*v12 == *v36)
    {
      v77 = v76 < v74;
    }

    else
    {
      v77 = *v12 < *v36;
    }

    v78 = *v56;
    v79 = v12[3];
    v80 = v79 < v76;
    v146 = *v56 == v75;
    v81 = *v56 < v75;
    if (!v146)
    {
      v80 = v81;
    }

    if (v77)
    {
      v82 = *v36;
      if (!v80)
      {
        *v36 = *v12;
        *v12 = v82;
        v88 = v79 < HIDWORD(v82);
        if (v78 != v82)
        {
          v88 = v78 < v82;
        }

        if (v88)
        {
          v89 = *v56;
          *v12 = *v56;
          *v56 = v82;
          v82 = v89;
        }

LABEL_105:
        v90 = v10->i64[0];
        v10->i64[0] = v82;
        *v12 = v90;
        --a4;
        if (a5)
        {
          goto LABEL_109;
        }

        goto LABEL_106;
      }

      *v36 = *v56;
      *v56 = v82;
      v83 = v10->i64[0];
      v10->i64[0] = *v12;
      *v12 = v83;
      --a4;
      if (a5)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v82 = *v12;
      if (!v80)
      {
        goto LABEL_105;
      }

      v84 = *v56;
      *v12 = *v56;
      *v56 = v82;
      v85 = v74 > HIDWORD(v84);
      if (v73 != v84)
      {
        v85 = v73 > v84;
      }

      if (v85)
      {
        v86 = *v36;
        *v36 = v84;
        *v12 = v86;
        v87 = v10->i64[0];
        v10->i64[0] = v86;
        *v12 = v87;
        --a4;
        if (a5)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v122 = v10->i64[0];
        v10->i64[0] = v84;
        *v12 = v122;
        --a4;
        if (a5)
        {
          goto LABEL_109;
        }
      }
    }

LABEL_106:
    v91 = v10[-1].u32[2];
    v92 = v91 < v10->i32[0];
    if (v91 == v10->i32[0])
    {
      v92 = v10[-1].i32[3] < v10->i32[1];
    }

    if (v92)
    {
LABEL_109:
      v93 = 0;
      v94 = v10->i64[0];
      v95 = HIDWORD(v10->i64[0]);
      do
      {
        v96 = v10->u32[v93 + 2];
        v97 = v10->i32[v93 + 3] < v95;
        v146 = v96 == v94;
        v98 = v96 < v94;
        if (!v146)
        {
          v97 = v98;
        }

        v93 += 2;
      }

      while (v97);
      v99 = &v10->i8[v93 * 4];
      v100 = a2;
      if (v93 == 2)
      {
        v100 = a2;
        do
        {
          if (v99 >= v100)
          {
            break;
          }

          v105 = v100[-1].u32[0];
          v106 = v100[-1].u32[1];
          --v100;
          v107 = v106 < v95;
          v146 = v105 == v94;
          v108 = v105 < v94;
          if (v146)
          {
            v108 = v107;
          }
        }

        while (!v108);
      }

      else
      {
        do
        {
          v101 = v100[-1].u32[0];
          v102 = v100[-1].u32[1];
          --v100;
          v103 = v102 < v95;
          v146 = v101 == v94;
          v104 = v101 < v94;
          if (v146)
          {
            v104 = v103;
          }
        }

        while (!v104);
      }

      if (v99 >= v100)
      {
        v120 = v99 - 8;
        if (v99 - 8 == v10)
        {
          goto LABEL_137;
        }

LABEL_136:
        v10->i64[0] = *v120;
        goto LABEL_137;
      }

      v109 = v99;
      v110 = v100;
      do
      {
        v111 = *v109;
        *v109 = *v110;
        *v110 = v111;
        do
        {
          v112 = *(v109 + 8);
          v113 = *(v109 + 12);
          v109 += 8;
          v114 = v113 < v95;
          v146 = v112 == v94;
          v115 = v112 < v94;
          if (v146)
          {
            v115 = v114;
          }
        }

        while (v115);
        do
        {
          v116 = v110[-1].u32[0];
          v117 = v110[-1].u32[1];
          --v110;
          v118 = v117 < v95;
          v146 = v116 == v94;
          v119 = v116 < v94;
          if (v146)
          {
            v119 = v118;
          }
        }

        while (!v119);
      }

      while (v109 < v110);
      v120 = (v109 - 8);
      if ((v109 - 8) != v10)
      {
        goto LABEL_136;
      }

LABEL_137:
      *v120 = v94;
      if (v99 < v100)
      {
        goto LABEL_140;
      }

      v121 = sub_A2A044(v10, v120);
      v10 = (v120 + 8);
      result = sub_A2A044((v120 + 8), a2);
      if (result)
      {
        a2 = v120;
        if (!v121)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v121)
      {
LABEL_140:
        result = sub_A29308(v9, v120, a3, a4, a5 & 1);
        a5 = 0;
        v10 = (v120 + 8);
      }
    }

    else
    {
      result = sub_A29F2C(v10, a2);
      v10 = result;
      a5 = 0;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_10;
  }

  v136 = a2[-1].u32[0];
  v137 = v136 < v10->i32[0];
  if (v136 == v10->i32[0])
  {
    v137 = a2[-1].i32[1] < v10->i32[1];
  }

  if (v137)
  {
    v138 = v10->i64[0];
LABEL_169:
    *v10->i8 = a2[-1];
    a2[-1] = v138;
  }

  return result;
}

unsigned int *sub_A29DA0(unsigned int *result, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = v5 < result[1];
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  LODWORD(v7) = a3[1];
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (v9)
  {
    v10 = v8;
  }

  if (v6)
  {
    v11 = *result;
    if (v10)
    {
      *result = *a3;
      *a3 = v11;
      v7 = HIDWORD(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      LODWORD(v7) = a3[1];
      v14 = *a3 < v11;
      if (*a3 == v11)
      {
        v14 = v7 < HIDWORD(v11);
      }

      if (v14)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = HIDWORD(v11);
      }
    }
  }

  else if (v10)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = a2[1] < result[1];
    }

    if (v13)
    {
      v7 = *result;
      *result = *a2;
      *a2 = v7;
      LODWORD(v7) = a3[1];
    }

    else
    {
      v7 = HIDWORD(v12);
    }
  }

  v15 = a4[1] < v7;
  if (*a4 != *a3)
  {
    v15 = *a4 < *a3;
  }

  if (v15)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v17 = a3[1] < a2[1];
    }

    if (v17)
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = *a2 < *result;
      if (*a2 == *result)
      {
        v19 = a2[1] < result[1];
      }

      if (v19)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
      }
    }
  }

  return result;
}

unsigned int *sub_A29F2C(unsigned int *a1, unsigned int *a2)
{
  v2 = *a1;
  v3 = HIDWORD(*a1);
  v4 = *(a2 - 2);
  v5 = v4 == *a1;
  v6 = v4 > *a1;
  if (v5)
  {
    v6 = *(a2 - 1) > v3;
  }

  if (v6)
  {
    v7 = a1;
    do
    {
      v8 = v7[2];
      v9 = v7[3];
      v7 += 2;
      v10 = v9 > v3;
      v5 = v8 == v2;
      v11 = v8 > v2;
      if (v5)
      {
        v11 = v10;
      }
    }

    while (!v11);
  }

  else
  {
    v12 = a1 + 2;
    do
    {
      v7 = v12;
      if (v12 >= a2)
      {
        break;
      }

      v13 = *v12;
      v14 = v7[1] > v3;
      v5 = v13 == v2;
      v15 = v13 > v2;
      if (!v5)
      {
        v14 = v15;
      }

      v12 = v7 + 2;
    }

    while (!v14);
  }

  if (v7 < a2)
  {
    do
    {
      v16 = *(a2 - 2);
      v17 = *(a2 - 1);
      a2 -= 2;
      v18 = v17 > v3;
      v5 = v16 == v2;
      v19 = v16 > v2;
      if (v5)
      {
        v19 = v18;
      }
    }

    while (v19);
  }

  while (v7 < a2)
  {
    v20 = *v7;
    *v7 = *a2;
    *a2 = v20;
    do
    {
      v21 = v7[2];
      v22 = v7[3];
      v7 += 2;
      v23 = v22 > v3;
      v5 = v21 == v2;
      v24 = v21 > v2;
      if (v5)
      {
        v24 = v23;
      }
    }

    while (!v24);
    do
    {
      v25 = *(a2 - 2);
      v26 = *(a2 - 1);
      a2 -= 2;
      v27 = v26 > v3;
      v5 = v25 == v2;
      v28 = v25 > v2;
      if (v5)
      {
        v28 = v27;
      }
    }

    while (v28);
  }

  if (v7 - 2 != a1)
  {
    *a1 = *(v7 - 1);
  }

  *(v7 - 1) = v2;
  return v7;
}

BOOL sub_A2A044(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v24 = a1->u32[2];
        v25 = a1->u32[3];
        v26 = v24 < a1->i32[0];
        if (v24 == a1->i32[0])
        {
          v26 = v25 < a1->i32[1];
        }

        v27 = a2[-1].u32[2];
        v28 = a2[-1].i32[3] < v25;
        v10 = v27 == v24;
        v29 = v27 < v24;
        if (v10)
        {
          v29 = v28;
        }

        if (v26)
        {
          v5 = a1->i64[0];
          if (v29)
          {
            goto LABEL_30;
          }

          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v5;
          v49 = a2[-1].u32[2];
          v50 = a2[-1].i32[3] < HIDWORD(v5);
          v10 = v49 == v5;
          v51 = v49 < v5;
          if (!v10)
          {
            v50 = v51;
          }

          if (v50)
          {
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v5;
            return 1;
          }
        }

        else if (v29)
        {
          v41 = a1->i64[1];
          a1->i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v41;
          v42 = a1->u32[2];
          v43 = v42 < a1->i32[0];
          if (v42 == a1->i32[0])
          {
            v43 = a1->i32[3] < a1->i32[1];
          }

          if (v43)
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
            return 1;
          }
        }

        return 1;
      case 4:
        sub_A29DA0(a1, &a1->u32[2], &a1[1], &a2[-1].u32[2]);
        return 1;
      case 5:
        sub_A29DA0(a1, &a1->u32[2], &a1[1], &a1[1].u32[2]);
        v8 = a1[1].u32[2];
        v9 = a2[-1].u32[2];
        v10 = v9 == v8;
        v11 = v9 < v8;
        if (v10)
        {
          v11 = a2[-1].i32[3] < a1[1].i32[3];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          v13 = a1[1].u32[0];
          v14 = a1[1].u32[2];
          v10 = v14 == v13;
          v15 = v14 < v13;
          if (v10)
          {
            v15 = a1[1].i32[3] < a1[1].i32[1];
          }

          if (v15)
          {
            v17 = a1[1].i64[0];
            v16 = a1[1].i64[1];
            a1[1].i64[0] = v16;
            a1[1].i64[1] = v17;
            v18 = a1->u32[2];
            v10 = v18 == v16;
            v19 = v18 > v16;
            if (v10)
            {
              v19 = a1->i32[3] > HIDWORD(v16);
            }

            if (v19)
            {
              v20 = a1->i64[1];
              a1->i64[1] = v16;
              a1[1].i64[0] = v20;
              v21 = a1->i32[1] > HIDWORD(v16);
              if (a1->i32[0] != v16)
              {
                v21 = a1->i32[0] > v16;
              }

              if (v21)
              {
                v22 = a1->i64[0];
                a1->i64[0] = v16;
                a1->i64[1] = v22;
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
      v3 = a2[-1].u32[2];
      v4 = v3 < a1->i32[0];
      if (v3 == a1->i32[0])
      {
        v4 = a2[-1].i32[3] < a1->i32[1];
      }

      if (v4)
      {
        v5 = a1->i64[0];
LABEL_30:
        a1->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v5;
        return 1;
      }

      return 1;
    }
  }

  v30 = a1 + 1;
  v31 = a1[1].u32[0];
  v32 = a1->i32[0];
  v33 = a1->u32[1];
  v34 = a1->u32[2];
  v35 = a1->u32[3];
  v36 = v34 < a1->i32[0];
  if (v34 == a1->i32[0])
  {
    v36 = v35 < v33;
  }

  v37 = a1[1].u32[1];
  v38 = v37 < v35;
  v10 = v31 == v34;
  v39 = v31 < v34;
  if (v10)
  {
    v39 = v38;
  }

  if (v36)
  {
    v40 = a1->i64[0];
    if (v39)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_57:
      a1[1].i64[0] = v40;
      goto LABEL_58;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v40;
    v10 = v31 == v40;
    v52 = v31 < v40;
    if (v10)
    {
      v52 = v37 < HIDWORD(v40);
    }

    if (v52)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_57;
    }
  }

  else if (v39)
  {
    v45 = a1->i64[1];
    v44 = a1[1].i64[0];
    a1->i64[1] = v44;
    a1[1].i64[0] = v45;
    v46 = v33 > HIDWORD(v44);
    v10 = v32 == v44;
    v47 = v32 > v44;
    if (v10)
    {
      v47 = v46;
    }

    if (v47)
    {
      v48 = a1->i64[0];
      a1->i64[0] = v44;
      a1->i64[1] = v48;
    }
  }

LABEL_58:
  v53 = &a1[1].i32[2];
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v56 = v30->i32[0];
    v57 = v53[1] < v30->i32[1];
    v10 = *v53 == v56;
    v58 = *v53 < v56;
    if (!v10)
    {
      v57 = v58;
    }

    if (v57)
    {
      break;
    }

LABEL_71:
    v30 = v53;
    v54 += 8;
    v53 += 2;
    if (v53 == a2)
    {
      return 1;
    }
  }

  v59 = *v53;
  v60 = HIDWORD(*v53);
  v61 = v54;
  do
  {
    v62 = &a1->i8[v61];
    *(&a1[1].i64[1] + v61) = *(a1[1].i64 + v61);
    if (v61 == -16)
    {
      a1->i64[0] = v59;
      if (++v55 != 8)
      {
        goto LABEL_71;
      }

      return v53 + 2 == a2;
    }

    v63 = *(v62 + 2);
    v64 = *(v62 + 3) > v60;
    v10 = v63 == v59;
    v65 = v63 > v59;
    if (!v10)
    {
      v64 = v65;
    }

    v61 -= 8;
  }

  while (v64);
  *(&a1[1].i64[1] + v61) = v59;
  if (++v55 != 8)
  {
    goto LABEL_71;
  }

  return v53 + 2 == a2;
}

uint32x2_t *sub_A2A450(uint32x2_t *a1, uint32x2_t *a2, uint32x2_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v5 = a2;
    v7 = a2 - a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v10 = (v8 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[v10];
      do
      {
        sub_A2A7F4(a1, a4, v8, v12--);
        --v11;
      }

      while (v11);
    }

    v13 = v5;
    if (v5 != a3)
    {
      if (v8 >= 2)
      {
        v13 = v5;
        do
        {
          v17 = v13->i32[0] < a1->i32[0];
          if (v13->i32[0] == a1->i32[0])
          {
            v17 = v13->i32[1] < a1->i32[1];
          }

          if (v17)
          {
            v18 = *v13;
            *v13 = *a1;
            *a1 = v18;
            v19 = a1[1].u32[0];
            if (v7 == 16)
            {
              v20 = a1 + 1;
              v21 = 1;
            }

            else
            {
              v22 = a1[2].u32[0];
              v23 = a1[1].i32[1] < a1[2].i32[1];
              if (v19 != v22)
              {
                v23 = v19 < v22;
              }

              v24 = !v23;
              if (v23)
              {
                v19 = a1[2].u32[0];
                v20 = a1 + 2;
              }

              else
              {
                v20 = a1 + 1;
              }

              if (v24)
              {
                v21 = 1;
              }

              else
              {
                v21 = 2;
              }
            }

            v24 = v19 == v18.i32[0];
            v25 = v19 < v18.i32[0];
            if (v24)
            {
              v25 = v20->i32[1] < v18.i32[1];
            }

            if (!v25)
            {
              v26 = a1;
              do
              {
                v33 = v26;
                v26 = v20;
                *v33 = *v20;
                if (((v8 - 2) >> 1) < v21)
                {
                  break;
                }

                v34 = (2 * v21) | 1;
                v20 = &a1[v34];
                v21 = 2 * v21 + 2;
                if (v21 < v8)
                {
                  v27 = v20[1];
                  v28 = vcgt_u32(v27, *v20);
                  v29 = *v20;
                  v30 = v28.i8[4];
                  if (v29 != v27.i32[0])
                  {
                    v30 = v28.i8[0];
                  }

                  if (v30)
                  {
                    v29 = v20[1];
                    ++v20;
                  }

                  else
                  {
                    v21 = v34;
                  }
                }

                else
                {
                  v29 = v20->i32[0];
                  v21 = v34;
                }

                v31 = v20->i32[1] < v18.i32[1];
                v24 = v29 == v18.i32[0];
                v32 = v29 < v18.i32[0];
                if (!v24)
                {
                  v31 = v32;
                }
              }

              while (!v31);
              *v26 = v18;
            }
          }

          ++v13;
        }

        while (v13 != a3);
      }

      else
      {
        v14.i32[0] = a1->i32[0];
        LODWORD(v15) = a1->i32[1];
        v13 = v5;
        do
        {
          v16 = v13->i32[0] < v14.i32[0];
          if (v13->i32[0] == v14.i32[0])
          {
            v16 = v13->i32[1] < v15;
          }

          if (v16)
          {
            v14 = *v13;
            *v13 = *a1;
            *a1 = v14;
            v15 = HIDWORD(*&v14);
          }

          ++v13;
        }

        while (v13 != a3);
      }
    }

    if (v8 >= 2)
    {
      do
      {
        v37 = 0;
        v38 = *a1;
        v39 = (v8 - 2) >> 1;
        v40 = a1;
        do
        {
          while (1)
          {
            v48 = &v40[v37];
            v47 = v48 + 1;
            v49 = (2 * v37) | 1;
            v37 = 2 * v37 + 2;
            if (v37 < v8)
            {
              break;
            }

            v37 = v49;
            *v40 = *v47;
            v40 = v48 + 1;
            if (v49 > v39)
            {
              goto LABEL_58;
            }
          }

          v42 = v48[2].u32[0];
          v43 = v48[2].u32[1];
          v41 = v48 + 2;
          v44 = v41[-1].u32[0];
          v45 = v41[-1].i32[1] < v43;
          v24 = v44 == v42;
          v46 = v44 < v42;
          if (v24)
          {
            v46 = v45;
          }

          if (v46)
          {
            v47 = v41;
          }

          else
          {
            v37 = v49;
          }

          *v40 = *v47;
          v40 = v47;
        }

        while (v37 <= v39);
LABEL_58:
        if (v47 == --v5)
        {
          *v47 = v38;
        }

        else
        {
          *v47 = *v5;
          *v5 = v38;
          v50 = (v47 - a1 + 8) >> 3;
          v36 = v50 < 2;
          v51 = v50 - 2;
          if (!v36)
          {
            v52 = v51 >> 1;
            v53 = &a1[v52];
            v54 = vcgt_u32(*v47, *v53);
            v55 = (vceq_s32(*v53, *v47).u8[0] & 1) != 0 ? v54.i8[4] : v54.i8[0];
            if (v55)
            {
              v56 = *v47;
              v57 = HIDWORD(*v47);
              do
              {
                v58 = v47;
                v47 = v53;
                *v58 = *v53;
                if (!v52)
                {
                  break;
                }

                v52 = (v52 - 1) >> 1;
                v53 = &a1[v52];
                v59 = v53->i32[0] < v56.i32[0];
                if (v53->i32[0] == v56.i32[0])
                {
                  v59 = v53->i32[1] < v57;
                }
              }

              while (v59);
              *v47 = v56;
            }
          }
        }

        v36 = v8-- <= 2;
      }

      while (!v36);
    }

    return v13;
  }

  return a3;
}

uint64_t sub_A2A7F4(uint64_t result, uint64_t a2, uint64_t a3, uint32x2_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v12 = v8->i32[0];
      }

      else
      {
        v10 = v8[1];
        v11 = vcgt_u32(v10, *v8);
        v12 = *v8;
        v13 = v11.i8[4];
        if (v12 != v10.i32[0])
        {
          v13 = v11.i8[0];
        }

        if (v13)
        {
          v12 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v14 = v12 < a4->i32[0];
      if (v12 == a4->i32[0])
      {
        v14 = v8->i32[1] < a4->i32[1];
      }

      if (!v14)
      {
        v15 = *a4;
        v16 = HIDWORD(*a4);
        do
        {
          v24 = a4;
          a4 = v8;
          *v24 = *v8;
          if (v5 < v7)
          {
            break;
          }

          v25 = (2 * v7) | 1;
          v8 = (result + 8 * v25);
          v7 = 2 * v7 + 2;
          if (v7 < a3)
          {
            v17 = v8[1];
            v18 = vcgt_u32(v17, *v8);
            v19 = *v8;
            v20 = v18.i8[4];
            if (v19 != v17.i32[0])
            {
              v20 = v18.i8[0];
            }

            if (v20)
            {
              v19 = v8[1];
              ++v8;
            }

            else
            {
              v7 = v25;
            }
          }

          else
          {
            v19 = v8->i32[0];
            v7 = v25;
          }

          v21 = v8->i32[1] < v16;
          v22 = v19 == v15.i32[0];
          v23 = v19 < v15.i32[0];
          if (!v22)
          {
            v21 = v23;
          }
        }

        while (!v21);
        *a4 = v15;
      }
    }
  }

  return result;
}

void sub_A2A960(uint64_t a1, uint64_t a2)
{
  v3 = 0uLL;
  v47 = 0u;
  v48 = 0u;
  v49 = 1065353216;
  memset(v50, 0, 24);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (*a2 == v5)
  {
    goto LABEL_47;
  }

  while (2)
  {
    sub_A21C90(v46, v4);
    while (1)
    {
      sub_A21CE8(v46, &v35);
      v7 = sub_A21B4C(v46, &v35);
      v8 = v42;
      v9 = v43;
      if (v43 == v42)
      {
        v9 = v42;
        v45 = 0;
        v14 = 0;
        goto LABEL_10;
      }

      v10 = &v42[v44 >> 7];
      v11 = *v10;
      v12 = *v10 + 32 * (v44 & 0x7F);
      v13 = *(v42 + (((v45 + v44) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v45 + v44) & 0x7F);
      if (v12 == v13)
      {
        v45 = 0;
        v14 = v43 - v42;
        if (v14 < 3)
        {
          goto LABEL_10;
        }

        do
        {
LABEL_9:
          operator delete(*v8);
          v9 = v43;
          v8 = v42 + 1;
          v42 = v8;
          v14 = v43 - v8;
        }

        while (v14 > 2);
        goto LABEL_10;
      }

      do
      {
        v16 = *v12;
        if (*v12)
        {
          *(v12 + 8) = v16;
          operator delete(v16);
          v11 = *v10;
        }

        v12 += 32;
        if (v12 - v11 == 4096)
        {
          v17 = v10[1];
          ++v10;
          v11 = v17;
          v12 = v17;
        }
      }

      while (v12 != v13);
      v8 = v42;
      v9 = v43;
      v45 = 0;
      v14 = v43 - v42;
      if (v14 >= 3)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (v14 == 1)
      {
        v15 = 64;
        goto LABEL_22;
      }

      if (v14 == 2)
      {
        v15 = 128;
LABEL_22:
        v44 = v15;
      }

      if (v8 != v9)
      {
        do
        {
          v18 = *v8++;
          operator delete(v18);
        }

        while (v8 != v9);
        if (v43 != v42)
        {
          v43 = (v43 + ((v42 - v43 + 7) & 0xFFFFFFFFFFFFFFF8));
        }
      }

      if (__p)
      {
        operator delete(__p);
      }

      v19 = v40;
      if (v40)
      {
        do
        {
          v20 = *v19;
          operator delete(v19);
          v19 = v20;
        }

        while (v20);
      }

      v21 = v39;
      v39 = 0;
      if (v21)
      {
        operator delete(v21);
      }

      if (v37)
      {
        v38 = v37;
        operator delete(v37);
      }

      if (!v7)
      {
        break;
      }

      if (*sub_A21CB8(v46) == 6)
      {
        sub_A21730(v46, &v35);
        v22 = v35;
        if (v35 == v36 || **(v36 - 1) == 5)
        {
          goto LABEL_44;
        }

        v23 = sub_A21CB8(v46);
        sub_A2ADD0(a1, v23, *(v36 - 1), (a2 + 24), &v47);
        goto LABEL_43;
      }

      if (*sub_A21CB8(v46) != 7)
      {
        goto LABEL_5;
      }

      sub_A21834(v46, 0xFFFFFFFFFFFFFFFFLL, &v35);
      v22 = v35;
      if (v35 != v36)
      {
        v24 = sub_A21CB8(v46);
        sub_A2ADD0(a1, v24, *v35, (a2 + 24), &v47);
LABEL_43:
        v22 = v35;
      }

LABEL_44:
      if (v22)
      {
        v36 = v22;
        operator delete(v22);
      }

LABEL_5:
      sub_A21708(v46);
    }

    sub_98ED24(v46);
    v4 += 412;
    if (v4 != v5)
    {
      continue;
    }

    break;
  }

  v3 = v50[0];
LABEL_47:
  sub_A2B4C0((a2 + 264), *(a2 + 272), v3, *(&v3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(&v3 + 1) - v3) >> 3));
  v25 = *&v50[0];
  if (*&v50[0])
  {
    v26 = *(&v50[0] + 1);
    v27 = *&v50[0];
    if (*(&v50[0] + 1) != *&v50[0])
    {
      v28 = *(&v50[0] + 1);
      do
      {
        v30 = *(v28 - 24);
        v28 -= 24;
        v29 = v30;
        if (v30)
        {
          *(v26 - 16) = v29;
          operator delete(v29);
        }

        v26 = v28;
      }

      while (v28 != v25);
      v27 = *&v50[0];
    }

    *(&v50[0] + 1) = v25;
    operator delete(v27);
  }

  v31 = v48;
  if (v48)
  {
    do
    {
      v33 = *v31;
      v34 = v31[2];
      if (v34)
      {
        v31[3] = v34;
        operator delete(v34);
      }

      operator delete(v31);
      v31 = v33;
    }

    while (v33);
  }

  v32 = v47;
  *&v47 = 0;
  if (v32)
  {
    operator delete(v32);
  }
}

void sub_A2AD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_98ED24(&a28);
  sub_A2B988(v28 - 160);
  _Unwind_Resume(a1);
}

void sub_A2ADD0(uint64_t a1, int *a2, uint64_t a3, void *a4, uint64_t a5)
{
  if (*(a2 + 952) == 1 && *(a2 + 107) != -1 && *a3 == 1)
  {
    v7 = *(a3 + 64);
    if (v7 != -1)
    {
      v8 = a4[21];
      if (0x4FBCDA3AC10C9715 * ((a4[22] - v8) >> 7) <= v7)
      {
        sub_6FAB4();
      }

      v11 = sub_68C454((v8 + 7808 * v7), 0);
      v12 = *a2;
      v13 = sub_A2B140(v11, v11, *a2 == 7);
      v15 = v14;
      v16 = (a4[15] + 304 * *(a2 + 107));
      LODWORD(v17) = v16[1];
      v18 = exp(3.14159265 - v17 * 6.28318531 / 4294967300.0);
      v19 = atan((v18 - 1.0 / v18) * 0.5) * 57.2957795 * 0.0174532925;
      v20 = exp(3.14159265 - HIDWORD(v13) * 6.28318531 / 4294967300.0);
      v21 = atan((v20 - 1.0 / v20) * 0.5) * 57.2957795 * 0.0174532925;
      v22.i64[0] = *v16;
      v22.i64[1] = v13;
      v23 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v22), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
      v36 = vsubq_f64(v23, vdupq_laneq_s64(v23, 1)).f64[0];
      v24 = sin((v19 - v21) * 0.5);
      v25 = v24 * v24;
      v26 = cos(v19);
      v27 = v26 * cos(v21);
      v28 = sin(0.5 * v36);
      v29 = atan2(sqrt(v28 * v28 * v27 + v25), sqrt(1.0 - (v28 * v28 * v27 + v25)));
      if ((v29 + v29) * 6372797.56 <= 20.0)
      {
        v30 = a4;
        v31 = a4[31];
        v32 = v30[30];
        if (v12 == 7)
        {
          v33 = *v16;
          v39 = v16[2];
          v38 = v33;
          v40 = v13;
          v41 = v15;
        }

        else
        {
          v38 = v13;
          v39 = v15;
          v34 = *v16;
          v41 = v16[2];
          v40 = v34;
        }

        sub_A2B3DC(__p, &v38, 2uLL);
        v35 = sub_A2B28C(a5, __p);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        *(a2 + 238) = v35 - 0x5555555555555555 * ((v31 - v32) >> 3);
      }
    }
  }
}

void sub_A2B114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_A2B140(uint64_t a1, void *a2, int a3)
{
  if (!a3)
  {
    v8 = sub_4D1DC0(a2);
    v9 = sub_69E8D8(a2, v8 - 1);
    v10 = sub_4D2140(a2);
    sub_2F4C8(v9, 0, &v14, 0.0, v10 / 1000000000.0);
    v11 = v14;
    v12 = v15;
    if (v14 == v15)
    {
      v6 = 0;
      if (!v14)
      {
LABEL_7:
        v7 = v6;
        if (v11 != v12)
        {
          return v6 & 0xFFFFFFFF00000000 | v7;
        }

LABEL_11:
        v6 = 0xFFFFFFFF00000000;
        v7 = -1;
        return v6 & 0xFFFFFFFF00000000 | v7;
      }
    }

    else
    {
      v6 = *(v15 - 12);
      if (!v14)
      {
        goto LABEL_7;
      }
    }

    v15 = v14;
    operator delete(v14);
    goto LABEL_7;
  }

  v4 = sub_69E8D8(a2, 0);
  v5 = sub_4D2138(a2);
  sub_2F4C8(v4, 0, &v14, (1000000000 - v5) / 1000000000.0, 1.0);
  if (v14 == v15)
  {
    if (v14)
    {
      v15 = v14;
      operator delete(v14);
    }

    goto LABEL_11;
  }

  v6 = *v14;
  v15 = v14;
  operator delete(v14);
  v7 = v6;
  return v6 & 0xFFFFFFFF00000000 | v7;
}

unint64_t sub_A2B28C(uint64_t a1, void *a2)
{
  v4 = sub_9BAF1C(a1, a2);
  if (v4)
  {
    return v4[5];
  }

  v6 = *(a1 + 48);
  v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *(a1 + 40)) >> 3);
  if (v6 >= *(a1 + 56))
  {
    v8 = sub_9B8AFC((a1 + 40), a2);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v6[2] = 0;
    v7 = a2[1];
    if (v7 != *a2)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v8 = (v6 + 3);
    *(a1 + 48) = v6 + 3;
  }

  *(a1 + 48) = v8;
  sub_A2BA40(a1, a2);
  return v9;
}

void sub_A2B3BC(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 48) = v2;
  _Unwind_Resume(exception_object);
}

void *sub_A2B3DC(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_A2B4A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A2B4C0(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = a1[1];
  v9 = a1[2];
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) >= a5)
  {
    v15 = v10 - a2;
    if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) < a5)
    {
      v16 = v15 + a3;
      v17 = sub_47C4C(a1, (v15 + a3), a4, a1[1]);
      v18 = v17;
      a1[1] = v17;
      if (v15 >= 1)
      {
        v19 = (v5 + 24 * a5);
        v20 = &v17[-3 * a5];
        for (i = v17; v20 < v10; i += 3)
        {
          *i = 0;
          i[1] = 0;
          i[2] = 0;
          *i = *v20;
          i[2] = v20[2];
          *v20 = 0;
          v20[1] = 0;
          v20[2] = 0;
          v20 += 3;
        }

        a1[1] = i;
        if (v17 != v19)
        {
          v22 = 0;
          v23 = -3 * a5;
          do
          {
            v25 = &v18[v22];
            v27 = &v18[v22 - 3];
            v26 = *v27;
            if (*v27)
            {
              *(v25 - 2) = v26;
              operator delete(v26);
              *v27 = 0;
              v18[v22 - 2] = 0;
              v18[v22 - 1] = 0;
            }

            v24 = &v18[v23 - 3];
            *v27 = *v24;
            *(v25 - 1) = v18[v23 - 1];
            *v24 = 0;
            *(v24 + 8) = 0;
            *(v24 + 16) = 0;
            v22 -= 3;
            v19 += 3;
            v23 -= 3;
          }

          while (v18 != v19);
        }

        v39 = v5;
        do
        {
          if (v7 != v39)
          {
            sub_35354C(v39, *v7, *(v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 2));
          }

          v7 += 24;
          v39 += 3;
        }

        while (v7 != v16);
      }

      return v5;
    }

    v28 = a2 + 24 * a5;
    v29 = v10 - 24 * a5;
    if (v29 >= v10)
    {
      a1[1] = v10;
      if (v10 == v28)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v30 = v10 - 24 * a5;
      v31 = a1[1];
      do
      {
        *v31 = 0;
        v31[1] = 0;
        v31[2] = 0;
        *v31 = *v30;
        v31[2] = *(v30 + 16);
        *v30 = 0;
        *(v30 + 8) = 0;
        *(v30 + 16) = 0;
        v30 += 24;
        v31 += 3;
      }

      while (v30 < v10);
      a1[1] = v31;
      if (v10 == v28)
      {
LABEL_49:
        v46 = v7 + 24 * a5;
        v47 = v5;
        do
        {
          if (v7 != v47)
          {
            sub_35354C(v47, *v7, *(v7 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v7 + 8) - *v7) >> 2));
          }

          v7 += 24;
          v47 += 3;
        }

        while (v7 != v46);
        return v5;
      }
    }

    v40 = 0;
    v41 = a2 + 24 * a5 - v10;
    do
    {
      v43 = v10 + v40;
      v45 = (v10 + v40 - 24);
      v44 = *v45;
      if (*v45)
      {
        *(v43 - 16) = v44;
        operator delete(v44);
        *v45 = 0;
        *(v10 + v40 - 16) = 0;
        *(v10 + v40 - 8) = 0;
      }

      v42 = v29 + v40 - 24;
      *v45 = *v42;
      *(v43 - 8) = *(v29 + v40 - 8);
      *v42 = 0;
      *(v42 + 8) = 0;
      *(v42 + 16) = 0;
      v40 -= 24;
    }

    while (v41 != v40);
    goto LABEL_49;
  }

  v11 = *a1;
  v12 = a5 - 0x5555555555555555 * ((v10 - *a1) >> 3);
  if (v12 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
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

  v53 = a1;
  if (v14)
  {
    if (v14 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  __p = 0;
  v32 = (8 * ((a2 - v11) >> 3));
  v50 = v32;
  v51 = v32;
  v52 = 0;
  v33 = 24 * a5;
  v48 = &v32[3 * a5];
  do
  {
    *v32 = 0;
    v32[1] = 0;
    v32[2] = 0;
    v34 = *(v7 + 8);
    if (v34 != *v7)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v34 - *v7) >> 2) < 0x1555555555555556)
      {
        operator new();
      }

      sub_1794();
    }

    v32 += 3;
    v7 += 24;
    v33 -= 24;
  }

  while (v33);
  v51 = v48;
  v5 = sub_6B95AC(a1, &__p, a2);
  v35 = v50;
LABEL_36:
  for (j = v51; j != v35; j -= 3)
  {
    v36 = *(j - 3);
    v51 = j - 3;
    if (v36)
    {
      *(j - 2) = v36;
      operator delete(v36);
      goto LABEL_36;
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v5;
}

void sub_A2B948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_42F8B4(va);
  _Unwind_Resume(a1);
}

void sub_A2B95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14)
{
  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  a14 = v14;
  sub_42F8B4(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_A2B988(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      v5 = *(a1 + 48);
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
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    do
    {
      v11 = *v8;
      v12 = v8[2];
      if (v12)
      {
        v8[3] = v12;
        operator delete(v12);
      }

      operator delete(v8);
      v8 = v11;
    }

    while (v11);
  }

  v9 = *a1;
  *a1 = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void *sub_A2BA40(void *a1, uint64_t a2)
{
  v4 = sub_3B4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_35;
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
  if (!v9 || (result = *v9) == 0)
  {
LABEL_35:
    sub_A2BE18();
  }

  v11 = *(a2 + 8) - *a2;
  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v16 = result[1];
      if (v16 == v5)
      {
        v18 = result[2];
        v17 = result[3];
        if (v17 - v18 == v11)
        {
          if (v18 == v17)
          {
            return result;
          }

          for (i = *a2; *v18 == *i && *(v18 + 1) == i[1] && *(v18 + 2) == i[2]; i += 3)
          {
            v18 += 12;
            if (v18 == v17)
            {
              return result;
            }
          }
        }
      }

      else if ((v16 & (*&v6 - 1)) != v8)
      {
        goto LABEL_35;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_35;
      }
    }
  }

  while (1)
  {
    v12 = result[1];
    if (v12 == v5)
    {
      break;
    }

    if (v12 >= *&v6)
    {
      v12 %= *&v6;
    }

    if (v12 != v8)
    {
      goto LABEL_35;
    }

LABEL_12:
    result = *result;
    if (!result)
    {
      goto LABEL_35;
    }
  }

  v14 = result[2];
  v13 = result[3];
  if (v13 - v14 != v11)
  {
    goto LABEL_12;
  }

  if (v14 != v13)
  {
    for (j = *a2; *v14 == *j && *(v14 + 1) == j[1] && *(v14 + 2) == j[2]; j += 3)
    {
      v14 += 12;
      if (v14 == v13)
      {
        return result;
      }
    }

    goto LABEL_12;
  }

  return result;
}

void sub_A2BE04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_9BB5DC(va);
  _Unwind_Resume(a1);
}

void sub_A2BF08(_Unwind_Exception *a1)
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

void sub_A2BF2C()
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
  xmmword_27B3E08 = 0u;
  unk_27B3E18 = 0u;
  dword_27B3E28 = 1065353216;
  sub_3A9A34(&xmmword_27B3E08, v0);
  sub_3A9A34(&xmmword_27B3E08, v3);
  sub_3A9A34(&xmmword_27B3E08, __p);
  sub_3A9A34(&xmmword_27B3E08, v9);
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
    qword_27B3DE0 = 0;
    qword_27B3DE8 = 0;
    qword_27B3DD8 = 0;
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

void sub_A2C174(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B3DF0)
  {
    qword_27B3DF8 = qword_27B3DF0;
    operator delete(qword_27B3DF0);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2C414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_506524((v9 + 24));
  sub_3B889C(&a9);
  sub_1F1A8(v10 - 64);
  sub_1F1A8(v9);
  _Unwind_Resume(a1);
}

void sub_A2C464(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_A2C494@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_7E9A4(v88);
  if (!sub_C7C6B0(*(a1 + 16), a2))
  {
    result = sub_7E7E4(3u);
    if (!result)
    {
LABEL_25:
      *a3 = 0;
      *(a3 + 8) = 1;
      *(a3 + 16) = &off_2669FE0;
      return result;
    }

    sub_19594F8(&v37);
    sub_4A5C(&v37, "Inconsistent request provided to journey planner; failing request.", 66);
    if ((v44 & 0x10) != 0)
    {
      v32 = *(&v43 + 1);
      if (*(&v43 + 1) < v41)
      {
        *(&v43 + 1) = v41;
        v32 = v41;
      }

      v33 = v40;
      v9 = v32 - v40;
      if ((v32 - v40) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if ((v44 & 8) == 0)
      {
        v8 = a3;
        v9 = 0;
        HIBYTE(v36) = 0;
LABEL_20:
        *(v35 + v9) = 0;
        sub_7E854(v35, 3u);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(v35[0]);
        }

        if (SBYTE7(v43) < 0)
        {
          operator delete(v42);
        }

        std::locale::~locale(&v38);
        std::ostream::~ostream();
        result = std::ios::~ios();
        a3 = v8;
        goto LABEL_25;
      }

      v33 = *(&v38 + 1);
      v9 = *(&v39 + 1) - *(&v38 + 1);
      if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_27:
        sub_3244();
      }
    }

    v8 = a3;
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v36) = v9;
    if (v9)
    {
      memmove(v35, v33, v9);
    }

    goto LABEL_20;
  }

  sub_CC3658(&v37);
  v87 = 0;
  *v86 = 0u;
  v6 = a2[8] - a2[7];
  if (v6)
  {
    v34 = 0;
    do
    {
      if (a2[11] != a2[10])
      {
        sub_A2DA54(a1);
      }

      ++v34;
    }

    while (v34 != 0x8E38E38E38E38E39 * (v6 >> 5));
  }

  v10 = sub_7EA60(v88);
  *a3 = 1;
  v11 = v56;
  *(a3 + 56) = v40;
  v12 = v54;
  *&v37 = v10;
  v13 = v37;
  *(a3 + 24) = v38;
  *(a3 + 8) = v13;
  *(a3 + 40) = v39;
  v14 = v52;
  *(a3 + 224) = v51;
  *(a3 + 240) = v14;
  *(a3 + 256) = v53;
  *(a3 + 272) = v12;
  v15 = v48;
  *(a3 + 160) = v47;
  *(a3 + 176) = v15;
  v16 = v50;
  *(a3 + 192) = v49;
  *(a3 + 208) = v16;
  v17 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v17;
  v18 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v18;
  v19 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v19;
  *(a3 + 288) = v55;
  *(a3 + 304) = v11;
  v20 = v62;
  *(a3 + 376) = v61;
  *(a3 + 392) = v20;
  v21 = v64;
  *(a3 + 408) = v63;
  *(a3 + 424) = v21;
  v22 = v58;
  *(a3 + 312) = v57;
  *(a3 + 328) = v22;
  v23 = v60;
  *(a3 + 344) = v59;
  *(a3 + 360) = v23;
  v24 = v66;
  *(a3 + 440) = v65;
  *(a3 + 456) = v24;
  v25 = v69;
  *(a3 + 472) = v67;
  *(a3 + 480) = v68;
  *(a3 + 496) = v25;
  v26 = v75;
  *(a3 + 568) = v74;
  *(a3 + 584) = v26;
  v27 = v77;
  *(a3 + 600) = v76;
  *(a3 + 616) = v27;
  v28 = v71;
  *(a3 + 504) = v70;
  *(a3 + 520) = v28;
  v29 = v73;
  *(a3 + 536) = v72;
  *(a3 + 552) = v29;
  result = memcpy((a3 + 632), v78, 0x220uLL);
  *(a3 + 1176) = v79;
  v30 = v81;
  *(a3 + 1216) = v82;
  v31 = v84;
  *(a3 + 1232) = v83;
  *(a3 + 1248) = v31;
  *(a3 + 1192) = v80;
  *(a3 + 1264) = v85;
  *(a3 + 1200) = v30;
  *(a3 + 1272) = *v86;
  *(a3 + 1288) = v87;
  return result;
}

void sub_A2D870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
    sub_1959728(&STACK[0x260]);
    _Unwind_Resume(a1);
  }

  sub_1959728(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D8BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_1959728(&a34);
  sub_A30CBC(&a67);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_A31C48(&a34);
  sub_A30CBC(&a67);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x758] = v67;
  sub_A30CBC(&a67);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D9AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a40)
  {
    operator delete(a40);
  }

  sub_A3091C(a20);
  sub_A30CBC(&a67);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2D9F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_A30CBC(&a67);
  sub_A31C9C(&STACK[0x260]);
  _Unwind_Resume(a1);
}

void sub_A2DA54(uint64_t a1)
{
  sub_CC3658(v21);
  v2 = v21[1];
  *(a1 + 4280) = v21[0];
  *(a1 + 4296) = v2;
  v3 = (a1 + 4312);
  if (*(a1 + 4335) < 0)
  {
    operator delete(*v3);
  }

  *v3 = v22;
  *(a1 + 4328) = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22) = 0;
  *(a1 + 4496) = v34;
  *(a1 + 4512) = v35;
  *(a1 + 4528) = v36;
  *(a1 + 4432) = v30;
  *(a1 + 4448) = v31;
  *(a1 + 4464) = v32;
  *(a1 + 4480) = v33;
  *(a1 + 4368) = v26;
  *(a1 + 4384) = v27;
  *(a1 + 4400) = v28;
  *(a1 + 4416) = v29;
  *(a1 + 4336) = v24;
  *(a1 + 4352) = v25;
  *(a1 + 4544) = v37;
  v4 = (a1 + 4560);
  if (*(a1 + 4583) < 0)
  {
    operator delete(*v4);
  }

  *v4 = v38;
  *(a1 + 4576) = v39;
  HIBYTE(v39) = 0;
  LOBYTE(v38) = 0;
  v5 = v45;
  *(a1 + 4648) = v44;
  *(a1 + 4664) = v5;
  v6 = v47;
  *(a1 + 4680) = v46;
  *(a1 + 4696) = v6;
  v7 = v41;
  *(a1 + 4584) = v40;
  *(a1 + 4600) = v7;
  v8 = v43;
  *(a1 + 4616) = v42;
  *(a1 + 4632) = v8;
  v9 = v49;
  *(a1 + 4712) = v48;
  *(a1 + 4728) = v9;
  *(a1 + 4744) = v50;
  v10 = (a1 + 4752);
  if (*(a1 + 4775) < 0)
  {
    operator delete(*v10);
  }

  *(a1 + 4768) = v52;
  *v10 = v51;
  HIBYTE(v52) = 0;
  LOBYTE(v51) = 0;
  v11 = v58;
  *(a1 + 4840) = v57;
  *(a1 + 4856) = v11;
  v12 = v60;
  *(a1 + 4872) = v59;
  *(a1 + 4888) = v12;
  v13 = v54;
  *(a1 + 4776) = v53;
  *(a1 + 4792) = v13;
  v14 = v56;
  *(a1 + 4808) = v55;
  *(a1 + 4824) = v14;
  memcpy((a1 + 4904), v61, 0x220uLL);
  v15 = (a1 + 5448);
  if (*(a1 + 5471) < 0)
  {
    operator delete(*(a1 + 5448));
    *v15 = v62;
    v18 = v64;
    *(a1 + 5488) = v65;
    v19 = v67;
    *(a1 + 5504) = v66;
    *(a1 + 5520) = v19;
    v20 = SHIBYTE(v52);
    *(a1 + 5464) = v63;
    HIBYTE(v63) = 0;
    LOBYTE(v62) = 0;
    *(a1 + 5536) = v68;
    *(a1 + 5472) = v18;
    if (v20 < 0)
    {
      operator delete(v51);
      if (SHIBYTE(v39) < 0)
      {
        goto LABEL_15;
      }
    }

    else if (SHIBYTE(v39) < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    *v15 = v62;
    v16 = v64;
    *(a1 + 5488) = v65;
    v17 = v67;
    *(a1 + 5504) = v66;
    *(a1 + 5520) = v17;
    *(a1 + 5464) = v63;
    HIBYTE(v63) = 0;
    LOBYTE(v62) = 0;
    *(a1 + 5536) = v68;
    *(a1 + 5472) = v16;
    if (SHIBYTE(v39) < 0)
    {
LABEL_15:
      operator delete(v38);
      if ((SHIBYTE(v23) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }
  }

  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_16:
  operator delete(v22);
LABEL_13:
  sub_C9E4D8(a1 + 3920);
  operator new();
}

void sub_A2EA74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, char a58)
{
  if (SLOBYTE(STACK[0x967]) < 0)
  {
    operator delete(STACK[0x950]);
  }

  sub_A300F8(&a15);
  if (a48)
  {
    a49 = a48;
    operator delete(a48);
    sub_A324A8(&a58);
    _Unwind_Resume(a1);
  }

  sub_A324A8(&a58);
  _Unwind_Resume(a1);
}

void sub_A2EBFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 > 27)
  {
    if ((v2 - 28) >= 2)
    {
      if ((v2 - 35) >= 2)
      {
        if (v2 != 40 || !sub_7E7E4(1u))
        {
          return;
        }

        sub_19594F8(&v16);
        sub_4A5C(&v16, "Transit journey planner solution aborted for the time point being out of the validity period of the data", 104);
        if ((v26 & 0x10) != 0)
        {
          v11 = v25;
          if (v25 < v22)
          {
            v25 = v22;
            v11 = v22;
          }

          v12 = &v21;
        }

        else
        {
          if ((v26 & 8) == 0)
          {
            v3 = 0;
            v15 = 0;
            goto LABEL_78;
          }

          v12 = v19;
          v11 = v20;
        }

        v6 = *v12;
        v3 = v11 - *v12;
        if (v3 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v15 = v11 - *v12;
        if (!v3)
        {
          goto LABEL_78;
        }
      }

      else
      {
        if (!sub_7E7E4(1u))
        {
          return;
        }

        sub_19594F8(&v16);
        sub_4A5C(&v16, "Transit journey planner solution aborted for the destination being out of transit coverage", 90);
        if ((v26 & 0x10) != 0)
        {
          v8 = v25;
          if (v25 < v22)
          {
            v25 = v22;
            v8 = v22;
          }

          v6 = v21;
          v3 = v8 - v21;
          if (v8 - v21 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_62;
          }
        }

        else
        {
          if ((v26 & 8) == 0)
          {
            v3 = 0;
            v15 = 0;
LABEL_78:
            *(&__p + v3) = 0;
            sub_7E854(&__p, 1u);
            goto LABEL_79;
          }

          v6 = v19[0];
          v3 = v20 - v19[0];
          if (v20 - v19[0] > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_62:
            sub_3244();
          }
        }

        if (v3 >= 0x17)
        {
          operator new();
        }

        v15 = v3;
        if (!v3)
        {
          goto LABEL_78;
        }
      }

LABEL_77:
      memmove(&__p, v6, v3);
      goto LABEL_78;
    }

    if (!sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v16);
    sub_4A5C(&v16, "Transit journey planner solution aborted for the origin being out of transit coverage", 85);
    if ((v26 & 0x10) != 0)
    {
      v5 = v25;
      if (v25 < v22)
      {
        v25 = v22;
        v5 = v22;
      }

      v6 = v21;
      v3 = v5 - v21;
      if (v5 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_55;
      }
    }

    else
    {
      if ((v26 & 8) == 0)
      {
        v3 = 0;
        v15 = 0;
        goto LABEL_78;
      }

      v6 = v19[0];
      v3 = v20 - v19[0];
      if (v20 - v19[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_55:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v15 = v3;
    if (!v3)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if ((v2 - 18) < 2)
  {
    if (!sub_7E7E4(1u))
    {
      return;
    }

    sub_19594F8(&v16);
    sub_4A5C(&v16, "Transit journey planner solution aborted for being out of transit coverage", 74);
    if ((v26 & 0x10) != 0)
    {
      v7 = v25;
      if (v25 < v22)
      {
        v25 = v22;
        v7 = v22;
      }

      v6 = v21;
      v3 = v7 - v21;
      if (v7 - v21 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_57;
      }
    }

    else
    {
      if ((v26 & 8) == 0)
      {
        v3 = 0;
        v15 = 0;
        goto LABEL_78;
      }

      v6 = v19[0];
      v3 = v20 - v19[0];
      if (v20 - v19[0] > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_57:
        sub_3244();
      }
    }

    if (v3 >= 0x17)
    {
      operator new();
    }

    v15 = v3;
    if (!v3)
    {
      goto LABEL_78;
    }

    goto LABEL_77;
  }

  if (v2 != 3 || !sub_7E7E4(3u))
  {
    return;
  }

  sub_19594F8(&v16);
  sub_4A5C(&v16, "Transit journey planner produced an inconsistent solution", 57);
  if ((v26 & 0x10) != 0)
  {
    v9 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v9 = v22;
    }

    v10 = &v21;
    goto LABEL_64;
  }

  if ((v26 & 8) != 0)
  {
    v10 = v19;
    v9 = v20;
LABEL_64:
    v13 = *v10;
    v4 = v9 - *v10;
    if (v4 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    v15 = v9 - *v10;
    if (v4)
    {
      memmove(&__p, v13, v4);
    }

    goto LABEL_70;
  }

  v4 = 0;
  v15 = 0;
LABEL_70:
  *(&__p + v4) = 0;
  sub_7E854(&__p, 3u);
LABEL_79:
  if (v15 < 0)
  {
    operator delete(__p);
  }

  if (v24 < 0)
  {
    operator delete(v23);
  }

  std::locale::~locale(&v18);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_A2F2E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  _Unwind_Resume(a1);
}

void sub_A2F4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A2F4F0(uint64_t a1)
{
  if (*(*a1 + 25) == 1)
  {
    sub_7E974(a1 + 4256);
    operator new();
  }

  return 0;
}

void sub_A2F620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_A2F63C()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v6 = *v0;
  v7 = *(*v0 + 27) & *(v3 + 188);
  if (v7)
  {
    v8 = *(v6 + 28);
    if (*(v6 + 29) != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = 0;
    if (*(v6 + 29) != 1)
    {
LABEL_3:
      v9 = 0;
      if ((v8 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_C9E54C(v5 + 3920, 0);
      sub_A35B68();
    }
  }

  if (*(v6 + 13))
  {
    v9 = 0;
    if (!sub_3B68A0(v0[2]))
    {
      if (v8)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (v9)
      {
        v10 = 2;
      }

      else
      {
        v10 = v7 & 1;
      }

      sub_C9E54C(v5 + 3920, v10);
      sub_A36188(v5, v4, v2);
    }

    if (*(v4 + 184) == 1)
    {
      v9 = 1;
      if ((v8 | *(*v5 + 57)))
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  else
  {
    v9 = 0;
  }

  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_A2F874(_Unwind_Exception *a1)
{
  sub_A30180(&STACK[0x5F8]);
  sub_A30180(&STACK[0xBF0]);
  sub_A35904((v1 - 88));
  _Unwind_Resume(a1);
}

void sub_A2F908(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12 = 0;
  v15 = 0;
  v13 = 0;
  v14 = 0;
  v11 = 0;
  LOBYTE(__p) = 0;
  sub_CC9264(&v16, &__p);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  v17 = 0;
  *v18 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0;
  v6 = *a1;
  if (*(*a1 + 27) == 1 && *(a2 + 188) == 1)
  {
    v7 = *(v6 + 28) ^ 1;
    if (*(a2 + 184) != 1)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v7 = 0;
    if (*(a2 + 184) != 1)
    {
      goto LABEL_12;
    }
  }

  if (*(v6 + 29) == 1)
  {
    v8 = v7;
    v9 = sub_3B68A0(a1[2]);
    v7 = v8;
    if (v9)
    {
      if (*(*a1 + 13) == 2)
      {
        v7 = 2;
      }
    }
  }

LABEL_12:
  sub_C9E54C((a1 + 490), v7);
  sub_A36188(a1, a2, a3);
}

void sub_A2FE48(_Unwind_Exception *a1)
{
  sub_A30180(&STACK[0x5F8]);
  sub_A300F8(&STACK[0xBF0]);
  _Unwind_Resume(a1);
}

uint64_t sub_A2FF04(uint64_t result)
{
  if (*(*result + 124) == 1)
  {
    sub_7E974(result + 4256);
    operator new();
  }

  return result;
}

void sub_A300BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  *(v21 + 248) = v22;
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_A300F8(uint64_t a1)
{
  v6 = (a1 + 240);
  sub_A31F30(&v6);
  v2 = *(a1 + 216);
  if (v2)
  {
    *(a1 + 224) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_A32000(a1 + 8, v4);
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_A30180(uint64_t a1)
{
  if (*(a1 + 1455) < 0)
  {
    operator delete(*(a1 + 1432));
    if ((*(a1 + 759) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 567) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((*(a1 + 759) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 736));
  if ((*(a1 + 567) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 319) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 544));
  if ((*(a1 + 319) & 0x80000000) == 0)
  {
LABEL_5:
    v6 = (a1 + 240);
    sub_A31F30(&v6);
    v2 = *(a1 + 216);
    if (!v2)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_17:
  operator delete(*(a1 + 296));
  v6 = (a1 + 240);
  sub_A31F30(&v6);
  v2 = *(a1 + 216);
  if (v2)
  {
LABEL_6:
    *(a1 + 224) = v2;
    operator delete(v2);
  }

LABEL_7:
  v3 = *(a1 + 192);
  if (v3)
  {
    *(a1 + 200) = v3;
    operator delete(v3);
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    sub_A32000(a1 + 8, v4);
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_A3027C(uint64_t result, uint64_t a2)
{
  v3 = result;
  *result = *a2;
  if (result == a2)
  {
    v6 = *(a2 + 56);
    v7 = *(a2 + 72);
    v8 = *(a2 + 88);
    *(result + 104) = *(a2 + 104);
    *(result + 88) = v8;
    *(result + 72) = v7;
    *(result + 56) = v6;
    v9 = *(a2 + 120);
    v10 = *(a2 + 136);
    v11 = *(a2 + 152);
    *(result + 168) = *(a2 + 168);
    *(result + 152) = v11;
    *(result + 136) = v10;
    *(result + 120) = v9;
    *(result + 184) = *(a2 + 184);
  }

  else
  {
    sub_A33A78((result + 8), *(a2 + 8), *(a2 + 16), 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
    v4 = *(a2 + 55);
    if (*(v3 + 55) < 0)
    {
      if (v4 >= 0)
      {
        v12 = (a2 + 32);
      }

      else
      {
        v12 = *(a2 + 32);
      }

      if (v4 >= 0)
      {
        v13 = *(a2 + 55);
      }

      else
      {
        v13 = *(a2 + 40);
      }

      sub_13B38(v3 + 32, v12, v13);
    }

    else if ((*(a2 + 55) & 0x80) != 0)
    {
      sub_13A68((v3 + 32), *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v5 = *(a2 + 32);
      *(v3 + 48) = *(a2 + 48);
      *(v3 + 32) = v5;
    }

    v14 = *(a2 + 56);
    v15 = *(a2 + 72);
    v16 = *(a2 + 88);
    *(v3 + 104) = *(a2 + 104);
    *(v3 + 88) = v16;
    *(v3 + 72) = v15;
    *(v3 + 56) = v14;
    v17 = *(a2 + 120);
    v18 = *(a2 + 136);
    v19 = *(a2 + 152);
    *(v3 + 168) = *(a2 + 168);
    *(v3 + 152) = v19;
    *(v3 + 136) = v18;
    *(v3 + 120) = v17;
    *(v3 + 184) = *(a2 + 184);
    sub_A34DB4((v3 + 192), *(a2 + 192), *(a2 + 200), (*(a2 + 200) - *(a2 + 192)) >> 3);
    sub_31F64((v3 + 216), *(a2 + 216), *(a2 + 224), (*(a2 + 224) - *(a2 + 216)) >> 3);
    sub_A34F14(v3 + 240, *(a2 + 240), *(a2 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 248) - *(a2 + 240)) >> 5));
    return v3;
  }

  return result;
}

void sub_A30418(uint64_t *a1, __int128 *a2, char a3, __int128 *a4)
{
  v13 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *a4;
  v5 = a4[1];
  *a4 = 0;
  *(a4 + 1) = 0;
  v8 = v4;
  v9 = v5;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  v6 = a4[2];
  v7 = a4[3];
  *(a4 + 4) = 0;
  *(a4 + 5) = 0;
  v10 = v6;
  v11 = v7;
  *(a4 + 6) = 0;
  *(a4 + 7) = 0;
  v12 = a4[4];
  *(a4 + 8) = 0;
  *(a4 + 9) = 0;
  sub_A30554(a1, &v13, a3);
}

void sub_A30538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3B889C(&a9);
  sub_1F1A8(v9 - 32);
  _Unwind_Resume(a1);
}

void sub_A30554(uint64_t *a1, uint64_t a2, char a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a1 + 16) = sub_2D5658(*a1);
  *(a1 + 17) = a3;
  v6 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  a1[3] = v6;
  a1[4] = v5;
  do
  {
    v8 = &a1[v7];
    *(v8 + 10) = 0;
    *(v8 + 16) = 0;
    v8[6] = 0;
    v8[9] = 0;
    v7 += 6;
  }

  while (v7 != 480);
  *(a1 + 485) = 0u;
  sub_C9E2C0((a1 + 487));
}

void sub_A306C0(_Unwind_Exception *a1)
{
  sub_1F1A8(v1 + 24);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_A306F0(_Unwind_Exception *a1)
{
  sub_3B889C(v2);
  sub_A3071C(v1 + 3896);
  sub_1F1A8(v1 + 24);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_A3071C(uint64_t result)
{
  v1 = *(result + 24);
  *(result + 24) = 0;
  if (v1)
  {
    v2 = v1[2];
    if (v2)
    {
      do
      {
        v3 = *v2;
        sub_A307A8(v1, v2 + 2);
        operator delete(v2);
        v2 = v3;
      }

      while (v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      operator delete(v4);
    }

    operator delete();
  }

  return result;
}

void sub_A307A8(uint64_t a1, void *a2)
{
  v3 = a2[11];
  a2[11] = 0;
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      *(v3 + 8) = v4;
      operator delete(v4);
    }

    operator delete();
  }

  v5 = a2[8];
  if (v5)
  {
    a2[9] = v5;
    operator delete(v5);
  }

  v6 = a2[5];
  if (v6)
  {
    a2[6] = v6;
    operator delete(v6);
  }

  v7 = a2[2];
  if (v7)
  {
    a2[3] = v7;

    operator delete(v7);
  }
}

void *sub_A30844(void *a1)
{
  v2 = a1[529];
  if (v2)
  {
    v3 = a1[530];
    v4 = a1[529];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[529];
    }

    a1[530] = v2;
    operator delete(v4);
  }

  sub_506524(a1 + 3);
  v6 = a1[1];
  if (!v6 || atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  return a1;
}

void **sub_A3091C(void **a1)
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
        v3 = sub_A30978(v3 - 232);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A30978(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = *(a1 + 216);
    v4 = *(a1 + 208);
    if (v3 != v2)
    {
      do
      {
        v3 -= 80;
        sub_3ED230(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 208);
    }

    *(a1 + 216) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 168);
  if (v5)
  {
    *(a1 + 176) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 120);
  if (v6)
  {
    *(a1 + 128) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 96);
  if (v7)
  {
    *(a1 + 104) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    *(a1 + 80) = v8;
    operator delete(v8);
  }

  v10 = (a1 + 48);
  sub_A30A34(&v10);
  return a1;
}

void sub_A30A34(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      v20 = a1;
      v21 = v1;
      do
      {
        v7 = *(v4 - 5);
        if (v7)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        v8 = v4 - 8;
        v9 = *(v4 - 8);
        if (v9)
        {
          v10 = *(v4 - 7);
          v6 = *(v4 - 8);
          if (v10 != v9)
          {
            do
            {
              v12 = *(v10 - 5);
              if (v12)
              {
                *(v10 - 4) = v12;
                operator delete(v12);
              }

              v13 = *(v10 - 8);
              if (v13)
              {
                *(v10 - 7) = v13;
                operator delete(v13);
              }

              v14 = *(v10 - 11);
              if (v14)
              {
                *(v10 - 10) = v14;
                operator delete(v14);
              }

              v15 = *(v10 - 14);
              if (v15)
              {
                *(v10 - 13) = v15;
                operator delete(v15);
              }

              v16 = *(v10 - 17);
              if (v16)
              {
                v17 = *(v10 - 16);
                v11 = *(v10 - 17);
                if (v17 != v16)
                {
                  do
                  {
                    v18 = v17 - 1136;
                    v19 = *(v17 - 8);
                    if (v19 != -1)
                    {
                      (off_2670058[v19])(&v22, v17 - 1136);
                    }

                    *(v17 - 8) = -1;
                    v17 -= 1136;
                  }

                  while (v18 != v16);
                  v11 = *(v10 - 17);
                }

                *(v10 - 16) = v16;
                operator delete(v11);
              }

              v10 -= 144;
            }

            while (v10 != v9);
            v6 = *v8;
          }

          *(v4 - 7) = v9;
          operator delete(v6);
        }

        v4 -= 8;
      }

      while (v8 != v2);
      v5 = **v20;
      v1 = v21;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void **sub_A30BB8(void **a1)
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
        v3 = sub_9FFEB4(v3 - 18);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void **sub_A30C14(void **a1)
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
        v5 = v3 - 1136;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670058[v6])(&v8, v3 - 1136);
        }

        *(v3 - 2) = -1;
        v3 -= 1136;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_A30CBC(void *a1)
{
  v2 = a1[14];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2670080[v4])(&v12, v2 + 5);
      }

      *(v2 + 12) = -1;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = a1[12];
  a1[12] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    a1[10] = v6;
    operator delete(v6);
  }

  v7 = a1[6];
  if (v7)
  {
    a1[7] = v7;
    operator delete(v7);
  }

  v8 = a1[3];
  if (v8)
  {
    v9 = a1[4];
    v10 = a1[3];
    if (v9 != v8)
    {
      do
      {
        v9 = sub_A30978(v9 - 232);
      }

      while (v9 != v8);
      v10 = a1[3];
    }

    a1[4] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_A30DC4(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_A30F68(a1 + 24, *(a2 + 3), *(a2 + 4), 0x34F72C234F72C235 * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  v6 = *(a2 + 6);
  v5 = *(a2 + 7);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v8 = *(a2 + 9);
  v7 = *(a2 + 10);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_5ADDC(a1 + 96, (a2 + 6));
  return a1;
}

void sub_A30F08(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 80) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      sub_A3091C(v1);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 56) = v7;
  operator delete(v7);
  sub_A3091C(v1);
  _Unwind_Resume(a1);
}

void sub_A30F68(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x11A7B9611A7B962)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A31050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = v11 - 232;
    v15 = -v12;
    do
    {
      v14 = sub_A30978(v14) - 232;
      v15 += 232;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_A31BD0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A31084(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[1];
  *(a1 + 30) = *(a2 + 30);
  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_A313B0(a1 + 48, *(a2 + 6), *(a2 + 7), (*(a2 + 7) - *(a2 + 6)) >> 6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v7 = *(a2 + 9);
  v6 = *(a2 + 10);
  if (v6 != v7)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v6 - v7) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v9 = *(a2 + 12);
  v8 = *(a2 + 13);
  if (v8 != v9)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) <= 0x1555555555555555)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = a2[9];
  v13 = *(a2 + 157);
  *(a1 + 168) = 0;
  *(a1 + 157) = v13;
  *(a1 + 144) = v12;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  v15 = *(a2 + 21);
  v14 = *(a2 + 22);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v16 = a2[12];
  *(a1 + 208) = 0;
  *(a1 + 192) = v16;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  sub_3ECFD8(a1 + 208, *(a2 + 26), *(a2 + 27), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 27) - *(a2 + 26)) >> 4));
  return a1;
}

void sub_A312F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v8 = *v6;
  if (*v6)
  {
    v2[22] = v8;
    operator delete(v8);
    v9 = *v5;
    if (!*v5)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v9 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v2[16] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_4:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v2[13] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_5:
    sub_A30A34(va);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v2[10] = v11;
  operator delete(v11);
  sub_A30A34(va);
  _Unwind_Resume(a1);
}

void sub_A313B0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 58))
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A3149C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_A31A40(&a11);
  *(v11 + 8) = v12;
  sub_A30A34(&a9);
  _Unwind_Resume(a1);
}

void *sub_A314BC(void *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_A315D0(a1, *a2, a2[1], 0x8E38E38E38E38E39 * ((a2[1] - *a2) >> 4));
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v5 = a2[3];
  v4 = a2[4];
  if (v4 != v5)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a2[6];
  *(a1 + 54) = *(a2 + 54);
  a1[6] = v6;
  return a1;
}

void sub_A315AC(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  sub_A30BB8(v1);
  _Unwind_Resume(a1);
}

void sub_A315D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1C71C71C71C71C8)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A316B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v12)
  {
    v14 = (v11 - 144);
    v15 = -v12;
    do
    {
      v14 = sub_9FFEB4(v14) - 18;
      v15 += 144;
    }

    while (v15);
  }

  *(v9 + 8) = v10;
  sub_A319C8(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A316EC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_93BED8((a1 + 8), (a2 + 8));
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v5 = *(a2 + 32);
  v4 = *(a2 + 40);
  if (v4 != v5)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v4 - v5) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v7 = *(a2 + 56);
  v6 = *(a2 + 64);
  if (v6 != v7)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  if (v8 != v9)
  {
    if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v9) >> 2)) <= 0x924924924924924)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v11 = *(a2 + 104);
  v10 = *(a2 + 112);
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *(a2 + 128);
  *(a1 + 133) = *(a2 + 133);
  *(a1 + 128) = v12;
  return a1;
}

void sub_A3191C(_Unwind_Exception *a1)
{
  v8 = *v5;
  if (*v5)
  {
    v1[14] = v8;
    operator delete(v8);
    v9 = *v6;
    if (!*v6)
    {
LABEL_3:
      v10 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v9 = *v6;
    if (!*v6)
    {
      goto LABEL_3;
    }
  }

  v1[11] = v9;
  operator delete(v9);
  v10 = *v4;
  if (!*v4)
  {
LABEL_4:
    v11 = *v3;
    if (!*v3)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  v1[8] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_5:
    sub_A30C14(v2);
    _Unwind_Resume(a1);
  }

LABEL_9:
  v1[5] = v11;
  operator delete(v11);
  sub_A30C14(v2);
  _Unwind_Resume(a1);
}

void ***sub_A319C8(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_9FFEB4(v4 - 18);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_A31A40(uint64_t result)
{
  if ((*(result + 24) & 1) == 0)
  {
    v1 = result;
    sub_A31A74(result);
    return v1;
  }

  return result;
}

void sub_A31A74(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    do
    {
      v6 = *(v3 - 5);
      if (v6)
      {
        *(v3 - 4) = v6;
        operator delete(v6);
      }

      v7 = v3 - 8;
      v8 = *(v3 - 8);
      if (v8)
      {
        v9 = *(v3 - 7);
        v5 = *(v3 - 8);
        if (v9 != v8)
        {
          do
          {
            v11 = *(v9 - 5);
            if (v11)
            {
              *(v9 - 4) = v11;
              operator delete(v11);
            }

            v12 = *(v9 - 8);
            if (v12)
            {
              *(v9 - 7) = v12;
              operator delete(v12);
            }

            v13 = *(v9 - 11);
            if (v13)
            {
              *(v9 - 10) = v13;
              operator delete(v13);
            }

            v14 = *(v9 - 14);
            if (v14)
            {
              *(v9 - 13) = v14;
              operator delete(v14);
            }

            v15 = *(v9 - 17);
            if (v15)
            {
              v16 = *(v9 - 16);
              v10 = *(v9 - 17);
              if (v16 != v15)
              {
                do
                {
                  v17 = v16 - 1136;
                  v18 = *(v16 - 8);
                  if (v18 != -1)
                  {
                    (off_2670058[v18])(&v19, v16 - 1136);
                  }

                  *(v16 - 8) = -1;
                  v16 -= 1136;
                }

                while (v17 != v15);
                v10 = *(v9 - 17);
              }

              *(v9 - 16) = v15;
              operator delete(v10);
            }

            v9 -= 144;
          }

          while (v9 != v8);
          v5 = *v7;
        }

        *(v3 - 7) = v8;
        operator delete(v5);
      }

      v3 -= 8;
    }

    while (v7 != v4);
  }
}

void ***sub_A31BD0(void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = v2;
      if (v4 != v2)
      {
        do
        {
          v4 = sub_A30978(v4 - 232);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

uint64_t sub_A31C48(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    sub_A30CBC((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_A31C9C(uint64_t a1)
{
  v2 = *(a1 + 1264);
  if (v2)
  {
    v3 = *(a1 + 1272);
    v4 = v2;
    if (v3 != v2)
    {
      do
      {
        v3 = sub_A30CBC(v3 - 17);
      }

      while (v3 != v2);
      v4 = *(a1 + 1264);
    }

    *(a1 + 1272) = v2;
    operator delete(v4);
  }

  if (*(a1 + 1191) < 0)
  {
    operator delete(*(a1 + 1168));
    if ((*(a1 + 495) & 0x80000000) == 0)
    {
LABEL_8:
      if ((*(a1 + 303) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

LABEL_13:
      operator delete(*(a1 + 280));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
        return a1;
      }

      goto LABEL_14;
    }
  }

  else if ((*(a1 + 495) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(a1 + 472));
  if (*(a1 + 303) < 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_14:
  operator delete(*(a1 + 32));
  return a1;
}

uint64_t sub_A31DF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3msl7routing16journey_planning16JourneyPredicate3anyEvEUlRKNS1_10SpaJourneyEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_A31E68(uint64_t a1)
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

uint64_t *sub_A31EF4(uint64_t *a1)
{
  if (*a1)
  {
    sub_A32000(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

void sub_A31F30(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_13;
  }

  v6 = v4 - 3;
  do
  {
    if (*v6)
    {
      sub_A32000(v6, *v6);
      operator delete(*v6);
    }

    if (*(v6 - 25) < 0)
    {
      operator delete(*(v6 - 6));
      if ((*(v6 - 49) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v6 - 49) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v6 - 9));
LABEL_4:
    v7 = v6 - 9;
    v6 -= 12;
  }

  while (v7 != v2);
  v5 = **a1;
LABEL_13:
  v1[1] = v2;

  operator delete(v5);
}

void sub_A32000(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 296)
  {
    v5 = *(i - 24);
    if (v5)
    {
      *(i - 16) = v5;
      operator delete(v5);
    }

    v6 = *(i - 48);
    if (v6)
    {
      *(i - 40) = v6;
      operator delete(v6);
    }

    v7 = *(i - 72);
    if (v7)
    {
      *(i - 64) = v7;
      operator delete(v7);
    }

    v8 = (i - 96);
    sub_A3212C(&v8);
    if (*(i - 161) < 0)
    {
      operator delete(*(i - 184));
    }
  }

  *(a1 + 8) = a2;
}

void sub_A320A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 272);
  if (v3)
  {
    *(a2 + 280) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 248);
  if (v4)
  {
    *(a2 + 256) = v4;
    operator delete(v4);
  }

  v5 = *(a2 + 224);
  if (v5)
  {
    *(a2 + 232) = v5;
    operator delete(v5);
  }

  v6 = (a2 + 200);
  sub_A3212C(&v6);
  if (*(a2 + 135) < 0)
  {
    operator delete(*(a2 + 112));
  }
}

void sub_A3212C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v7 = *(v4 - 5);
        if (v7)
        {
          *(v4 - 4) = v7;
          operator delete(v7);
        }

        v8 = v4 - 9;
        v9 = *(v4 - 9);
        if (v9)
        {
          v10 = *(v4 - 8);
          v6 = *(v4 - 9);
          if (v10 != v9)
          {
            do
            {
              v11 = v10 - 168;
              v12 = *(v10 - 2);
              if (v12 != -1)
              {
                (off_2670158[v12])(&v13, v10 - 168);
              }

              *(v10 - 2) = -1;
              v10 -= 168;
            }

            while (v11 != v9);
            v6 = *v8;
          }

          *(v4 - 8) = v9;
          operator delete(v6);
        }

        v4 -= 9;
      }

      while (v8 != v2);
      v5 = **a1;
    }

    v1[1] = v2;
    operator delete(v5);
  }
}

void sub_A32230(uint64_t a1, void **a2)
{
  v3 = a2[4];
  if (v3)
  {
    a2[5] = v3;
    operator delete(v3);
  }

  v4 = *a2;
  if (*a2)
  {
    v5 = a2[1];
    v6 = *a2;
    if (v5 != v4)
    {
      do
      {
        v7 = v5 - 168;
        v8 = *(v5 - 2);
        if (v8 != -1)
        {
          (off_2670158[v8])(&v9, v5 - 168);
        }

        *(v5 - 2) = -1;
        v5 -= 168;
      }

      while (v7 != v4);
      v6 = *a2;
    }

    a2[1] = v4;
    operator delete(v6);
  }
}

void **sub_A322E4(void **a1)
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
        v5 = v3 - 168;
        v6 = *(v3 - 2);
        if (v6 != -1)
        {
          (off_2670158[v6])(&v8, v3 - 168);
        }

        *(v3 - 2) = -1;
        v3 -= 168;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A3238C(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2 != -1)
  {
    (off_2670158[v2])(&v4, a1);
  }

  *(a1 + 160) = -1;
  return a1;
}

void sub_A323E8(uint64_t a1, void *a2)
{
  v3 = a2[15];
  if (v3)
  {
    a2[16] = v3;
    operator delete(v3);
  }

  v4 = a2[11];
  if (v4)
  {
    a2[12] = v4;
    operator delete(v4);
  }

  v5 = a2[8];
  if (v5)
  {
    a2[9] = v5;

    operator delete(v5);
  }
}

void *sub_A32454(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    a1[16] = v2;
    operator delete(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    a1[12] = v3;
    operator delete(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    a1[9] = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_A324A8(uint64_t a1)
{
  sub_A325C4(a1 + 1408);
  sub_A327E4((a1 + 1296));
  sub_A327E4((a1 + 1184));
  if (*(a1 + 1023) < 0)
  {
    operator delete(*(a1 + 1000));
    if ((*(a1 + 999) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 975) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(a1 + 999) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 976));
  if ((*(a1 + 975) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 951) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(*(a1 + 952));
  if ((*(a1 + 951) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 927) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*(a1 + 928));
  if ((*(a1 + 927) & 0x80000000) == 0)
  {
LABEL_6:
    if ((*(a1 + 735) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(*(a1 + 904));
  if ((*(a1 + 735) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 711) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(*(a1 + 712));
  if ((*(a1 + 711) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 383) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_18:
    operator delete(*(a1 + 360));
    if ((*(a1 + 359) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_19;
  }

LABEL_17:
  operator delete(*(a1 + 688));
  if (*(a1 + 383) < 0)
  {
    goto LABEL_18;
  }

LABEL_9:
  if ((*(a1 + 359) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_19:
  operator delete(*(a1 + 336));
  return a1;
}

uint64_t sub_A325C4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v4 = *v2;
      v5 = v2[4];
      if (v5)
      {
        v6 = v2[5];
        v3 = v2[4];
        if (v6 != v5)
        {
          do
          {
            v7 = *(v6 - 8);
            if (v7 != -1)
            {
              (off_2670168[v7])(&v10, v6 - 1632);
            }

            *(v6 - 8) = -1;
            v6 -= 1640;
          }

          while (v6 != v5);
          v3 = v2[4];
        }

        v2[5] = v5;
        operator delete(v3);
      }

      operator delete(v2);
      v2 = v4;
    }

    while (v4);
  }

  v8 = *a1;
  *a1 = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return a1;
}

void sub_A326A8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 520);
  if (v3)
  {
    *(a2 + 528) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 496);
  if (v4 != -1)
  {
    (off_2670188[v4])(&v6, a2 + 256);
  }

  *(a2 + 496) = -1;
  v5 = *(a2 + 240);
  if (v5 != -1)
  {
    (off_2670188[v5])(&v7, a2);
  }

  *(a2 + 240) = -1;
}

uint64_t sub_A32740(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 1608) == 1)
  {
    result = sub_3EEA68(a2 + 512);
  }

  v4 = *(a2 + 496);
  if (v4 != -1)
  {
    result = (off_2670188[v4])(&v6, a2 + 256);
  }

  *(a2 + 496) = -1;
  v5 = *(a2 + 240);
  if (v5 != -1)
  {
    result = (off_2670188[v5])(&v7, a2);
  }

  *(a2 + 240) = -1;
  return result;
}

void *sub_A327E4(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = a1[9];
  a1[9] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[6];
  if (v5)
  {
    do
    {
      v6 = *v5;
      operator delete(v5);
      v5 = v6;
    }

    while (v6);
  }

  v7 = a1[4];
  a1[4] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = a1[1];
  if (v8)
  {
    v9 = a1[2];
    v10 = a1[1];
    if (v9 != v8)
    {
      v11 = v9 - 1920;
      do
      {
        v13 = *(v11 + 1896);
        if (v13 != -1)
        {
          (off_2670168[v13])(&v16, v11 + 272);
        }

        *(v11 + 1896) = -1;
        v14 = *(v11 + 240);
        if (v14 != -1)
        {
          (off_2670188[v14])(&v17, v11);
        }

        *(v11 + 240) = -1;
        v12 = v11 == v8;
        v11 -= 1920;
      }

      while (!v12);
      v10 = a1[1];
    }

    a1[2] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_A3290C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_A32B60(a1 + 8, *(a2 + 8), *(a2 + 16), 0x14C1BACF914C1BADLL * ((*(a2 + 16) - *(a2 + 8)) >> 3));
  if (*(a2 + 55) < 0)
  {
    sub_325C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
  }

  v5 = *(a2 + 56);
  v6 = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v7;
  *(a1 + 72) = v6;
  *(a1 + 56) = v5;
  v8 = *(a2 + 120);
  v9 = *(a2 + 136);
  v10 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 152) = v10;
  *(a1 + 136) = v9;
  *(a1 + 120) = v8;
  v11 = *(a2 + 184);
  *(a1 + 192) = 0;
  *(a1 + 184) = v11;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  v13 = *(a2 + 192);
  v12 = *(a2 + 200);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  v15 = *(a2 + 216);
  v14 = *(a2 + 224);
  if (v14 != v15)
  {
    if (((v14 - v15) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  sub_A337A8(a1 + 240, *(a2 + 240), *(a2 + 248), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 248) - *(a2 + 240)) >> 5));
  return a1;
}

void sub_A32AE8(_Unwind_Exception *a1)
{
  v6 = *v4;
  if (*v4)
  {
    *(v2 + 224) = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  *(v2 + 200) = v7;
  operator delete(v7);
  if ((*(v2 + 55) & 0x80000000) == 0)
  {
LABEL_4:
    sub_A31EF4(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(*(v2 + 32));
  sub_A31EF4(v1);
  _Unwind_Resume(a1);
}

void sub_A32B60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xDD67C8A60DD67DLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A32C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, char a11)
{
  sub_A336F0(&a11);
  *(v11 + 8) = v12;
  sub_A33758(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A32C84(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  v5 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v7;
  *(a1 + 80) = v8;
  *(a1 + 48) = v6;
  *(a1 + 104) = *(a2 + 26);
  if (*(a2 + 135) < 0)
  {
    sub_325C((a1 + 112), *(a2 + 14), *(a2 + 15));
  }

  else
  {
    v9 = a2[7];
    *(a1 + 128) = *(a2 + 16);
    *(a1 + 112) = v9;
  }

  *(a1 + 136) = *(a2 + 34);
  v10 = a2[9];
  v11 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v11;
  *(a1 + 144) = v10;
  *&v10 = *(a2 + 24);
  *(a1 + 200) = 0;
  *(a1 + 192) = v10;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  sub_A32F30(a1 + 200, *(a2 + 25), *(a2 + 26), 0x8E38E38E38E38E39 * ((*(a2 + 26) - *(a2 + 25)) >> 3));
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v13 = *(a2 + 28);
  v12 = *(a2 + 29);
  if (v12 != v13)
  {
    if (((v12 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  v15 = *(a2 + 31);
  v14 = *(a2 + 32);
  if (v14 != v15)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v14 - v15) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  v17 = *(a2 + 34);
  v16 = *(a2 + 35);
  if (v16 != v17)
  {
    if (((v16 - v17) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_A32E9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 + 135) < 0)
  {
    operator delete(*(v10 + 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_A32F00()
{
  if (*v0)
  {
    JUMPOUT(0xA32F0CLL);
  }

  JUMPOUT(0xA32EB8);
}

void sub_A32F20()
{
  if (!*v0)
  {
    JUMPOUT(0xA32EC8);
  }

  JUMPOUT(0xA32EC0);
}

void sub_A32F30(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A33034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_A33688(&a11);
  *(v11 + 8) = v12;
  sub_A3212C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A33054(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_A33170(a1, *a2, *(a2 + 8), 0xCF3CF3CF3CF3CF3DLL * ((*(a2 + 8) - *a2) >> 3));
  v4 = *(a2 + 24);
  *(a1 + 32) = 0;
  *(a1 + 24) = v4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  if (v5 != v6)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = *(a2 + 56);
  *(a1 + 63) = *(a2 + 63);
  *(a1 + 56) = v7;
  return a1;
}

void sub_A3314C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 40) = v4;
    operator delete(v4);
  }

  sub_A322E4(v1);
  _Unwind_Resume(a1);
}

void sub_A33170(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x186186186186187)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A3329C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

void sub_A332B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v6 = va_arg(va1, void **);
  v8 = va_arg(va1, void);
  sub_A3238C(v4);
  sub_A33528(va1);
  *(v2 + 8) = v3;
  sub_A335C8(va);
  _Unwind_Resume(a1);
}

__n128 sub_A332E0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *a2;
  *(v2 + 12) = *(a2 + 12);
  *v2 = result;
  return result;
}

uint64_t sub_A332F8(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  *(result + 44) = *(a2 + 44);
  *(result + 16) = v3;
  *(result + 32) = v4;
  *(result + 64) = 0;
  *result = v2;
  *(result + 72) = 0;
  *(result + 80) = 0;
  v6 = *(a2 + 8);
  v5 = *(a2 + 9);
  if (v5 != v6)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v5 - v6) >> 2) <= 0x444444444444444)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  v8 = *(a2 + 11);
  v7 = *(a2 + 12);
  if (v7 != v8)
  {
    if (0xEEEEEEEEEEEEEEEFLL * ((v7 - v8) >> 2) <= 0x444444444444444)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a2 + 28);
  *(result + 120) = 0;
  *(result + 112) = v9;
  *(result + 128) = 0;
  *(result + 136) = 0;
  v11 = *(a2 + 15);
  v10 = *(a2 + 16);
  if (v10 != v11)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v10 - v11) >> 3) < 0x666666666666667)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 144) = a2[9];
  return result;
}

void sub_A334B8(_Unwind_Exception *exception_object)
{
  v6 = *v4;
  if (*v4)
  {
    v1[16] = v6;
    operator delete(v6);
    v7 = *v3;
    if (!*v3)
    {
LABEL_3:
      v8 = *v2;
      if (!*v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v7 = *v3;
    if (!*v3)
    {
      goto LABEL_3;
    }
  }

  v1[12] = v7;
  operator delete(v7);
  v8 = *v2;
  if (!*v2)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_4:
  v1[9] = v8;
  operator delete(v8);
  goto LABEL_5;
}

void sub_A33518()
{
  if (!*v0)
  {
    JUMPOUT(0xA334DCLL);
  }

  JUMPOUT(0xA334D4);
}

uint64_t sub_A33528(uint64_t a1)
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
        v6 = v4 - 168;
        v7 = *(v4 - 8);
        if (v7 != -1)
        {
          (off_2670158[v7])(&v9, v4 - 168);
        }

        *(v4 - 8) = -1;
        v4 -= 168;
      }

      while (v6 != v5);
    }
  }

  return a1;
}

void ***sub_A335C8(void ***a1)
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
          v6 = v4 - 168;
          v7 = *(v4 - 2);
          if (v7 != -1)
          {
            (off_2670158[v7])(&v9, v4 - 168);
          }

          *(v4 - 2) = -1;
          v4 -= 168;
        }

        while (v6 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t sub_A33688(uint64_t a1)
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
        v4 -= 9;
        sub_A32230(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t sub_A336F0(uint64_t a1)
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
        v4 -= 296;
        sub_A320A4(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

uint64_t **sub_A33758(uint64_t **result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = **result;
    if (v1)
    {
      v2 = result;
      sub_A32000(*result, v1);
      operator delete(**v2);
      return v2;
    }
  }

  return result;
}

void sub_A337A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x2AAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_A338A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_A338C8(&a11);
  *(v11 + 8) = v12;
  sub_A31F30(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_A338C8(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v2 = **(a1 + 16);
    v3 = **(a1 + 8);
    if (v2 != v3)
    {
      v4 = v2 - 3;
      do
      {
        if (*v4)
        {
          sub_A32000(v4, *v4);
          operator delete(*v4);
        }

        if (*(v4 - 25) < 0)
        {
          operator delete(*(v4 - 6));
          if (*(v4 - 49) < 0)
          {
LABEL_11:
            operator delete(*(v4 - 9));
          }
        }

        else if (*(v4 - 49) < 0)
        {
          goto LABEL_11;
        }

        v5 = v4 - 9;
        v4 -= 12;
      }

      while (v5 != v3);
    }
  }

  return a1;
}

uint64_t sub_A33970(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_325C((a1 + 24), *(a2 + 3), *(a2 + 4));
    goto LABEL_6;
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 47) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
LABEL_6:
  v6 = a2[3];
  v7 = *(a2 + 16);
  *(a1 + 72) = 0;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_A32B60(a1 + 72, *(a2 + 9), *(a2 + 10), 0x14C1BACF914C1BADLL * ((*(a2 + 10) - *(a2 + 9)) >> 3));
  return a1;
}

void sub_A33A2C(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void sub_A33A78(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  v8 = *a1;
  if (0x14C1BACF914C1BADLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_A32000(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0xDD67C8A60DD67CLL)
    {
      v10 = 0x14C1BACF914C1BADLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x6EB3E45306EB3ELL)
      {
        v12 = 0xDD67C8A60DD67CLL;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0xDD67C8A60DD67CLL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = a1[1];
  v14 = v13 - v8;
  if (0x14C1BACF914C1BADLL * ((v13 - v8) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      sub_A33D08(v8, v5);
      v5 = (v5 + 296);
      v8 += 296;
    }

    sub_A32000(a1, v8);
  }

  else
  {
    v15 = (a2 + v14);
    if (v13 != v8)
    {
      do
      {
        sub_A33D08(v8, v5);
        v5 = (v5 + 296);
        v8 += 296;
        v14 -= 296;
      }

      while (v14);
      v13 = a1[1];
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_A32C84(v16, v15);
        v15 = (v15 + 296);
        v16 = v17 + 296;
        v17 += 296;
      }

      while (v15 != a3);
    }

    a1[1] = v16;
  }
}

void sub_A33CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A336F0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_A33CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A336F0(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_A33D08(uint64_t result, __int128 *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = a2[2];
  *(result + 16) = a2[1];
  *(result + 32) = v5;
  *result = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(result + 96) = *(a2 + 12);
  *(result + 64) = v7;
  *(result + 80) = v8;
  *(result + 48) = v6;
  *(result + 104) = *(a2 + 26);
  if (result == a2)
  {
    *(result + 136) = *(a2 + 34);
    v11 = a2[9];
    v12 = a2[11];
    *(result + 160) = a2[10];
    *(result + 176) = v12;
    *(result + 144) = v11;
    *(result + 192) = *(a2 + 24);
  }

  else
  {
    v9 = *(a2 + 135);
    if (*(result + 135) < 0)
    {
      if (v9 >= 0)
      {
        v13 = a2 + 7;
      }

      else
      {
        v13 = *(a2 + 14);
      }

      if (v9 >= 0)
      {
        v14 = *(a2 + 135);
      }

      else
      {
        v14 = *(a2 + 15);
      }

      sub_13B38(result + 112, v13, v14);
    }

    else if ((*(a2 + 135) & 0x80) != 0)
    {
      sub_13A68((result + 112), *(a2 + 14), *(a2 + 15));
    }

    else
    {
      v10 = a2[7];
      *(result + 128) = *(a2 + 16);
      *(result + 112) = v10;
    }

    *(v3 + 136) = *(a2 + 34);
    v15 = a2[9];
    v16 = a2[11];
    *(v3 + 160) = a2[10];
    *(v3 + 176) = v16;
    *(v3 + 144) = v15;
    *(v3 + 192) = *(a2 + 24);
    sub_A33E7C((v3 + 200), *(a2 + 25), *(a2 + 26), 0x8E38E38E38E38E39 * ((*(a2 + 26) - *(a2 + 25)) >> 3));
    sub_A34C54((v3 + 224), *(a2 + 28), *(a2 + 29), (*(a2 + 29) - *(a2 + 28)) >> 4);
    sub_956400((v3 + 248), *(a2 + 31), *(a2 + 32), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 32) - *(a2 + 31)) >> 3));
    sub_31F64((v3 + 272), *(a2 + 34), *(a2 + 35), (*(a2 + 35) - *(a2 + 34)) >> 3);
    return v3;
  }

  return result;
}

void sub_A33E7C(void ***a1, void **a2, void **a3, unint64_t a4)
{
  v6 = a1;
  v7 = a1[2];
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v40 = a4;
      v9 = a1[1];
      v10 = *a1;
      if (v9 != v8)
      {
        do
        {
          v12 = *(v9 - 5);
          if (v12)
          {
            *(v9 - 4) = v12;
            operator delete(v12);
          }

          v13 = v9 - 9;
          v14 = *(v9 - 9);
          if (v14)
          {
            v15 = *(v9 - 8);
            v11 = *(v9 - 9);
            if (v15 != v14)
            {
              do
              {
                v16 = v15 - 168;
                v17 = *(v15 - 2);
                if (v17 != -1)
                {
                  (off_2670158[v17])(v42, v15 - 168);
                }

                *(v15 - 2) = -1;
                v15 -= 168;
              }

              while (v16 != v14);
              v11 = *v13;
            }

            *(v9 - 8) = v14;
            operator delete(v11);
          }

          v9 -= 9;
        }

        while (v13 != v8);
        v10 = *v6;
      }

      v6[1] = v8;
      operator delete(v10);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v40;
    }

    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v29 = 0x8E38E38E38E38E39 * (v7 >> 3);
      v30 = 2 * v29;
      if (2 * v29 <= a4)
      {
        v30 = a4;
      }

      if (v29 >= 0x1C71C71C71C71C7)
      {
        v31 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v31 = v30;
      }

      if (v31 <= 0x38E38E38E38E38ELL)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v18 = a1[1];
  v19 = v18 - v8;
  if (0x8E38E38E38E38E39 * ((v18 - v8) >> 3) >= a4)
  {
    if (a2 != a3)
    {
      v25 = 0;
      do
      {
        v28 = &v8[v25];
        if (a2 == v8)
        {
          *(v28 + 24) = a2[v25 + 3];
        }

        else
        {
          sub_A34348(&v8[v25], a2[v25], a2[v25 + 1], 0xCF3CF3CF3CF3CF3DLL * ((a2[v25 + 1] - a2[v25]) >> 3));
          *(v28 + 24) = a2[v25 + 3];
          sub_956400(v28 + 4, a2[v25 + 4], a2[v25 + 5], 0xCCCCCCCCCCCCCCCDLL * ((a2[v25 + 5] - a2[v25 + 4]) >> 3));
        }

        v26 = &v8[v25];
        v27 = a2[v25 + 7];
        *(v26 + 63) = *(&a2[v25 + 7] + 7);
        v26[7] = v27;
        v25 += 9;
      }

      while (&a2[v25] != a3);
      v18 = v6[1];
      v8 = (v8 + v25 * 8);
    }

    if (v18 != v8)
    {
      do
      {
        v34 = *(v18 - 40);
        if (v34)
        {
          *(v18 - 32) = v34;
          operator delete(v34);
        }

        v35 = (v18 - 72);
        v36 = *(v18 - 72);
        if (v36)
        {
          v37 = *(v18 - 64);
          v33 = *(v18 - 72);
          if (v37 != v36)
          {
            do
            {
              v38 = v37 - 168;
              v39 = *(v37 - 8);
              if (v39 != -1)
              {
                (off_2670158[v39])(v42, v37 - 168);
              }

              *(v37 - 8) = -1;
              v37 -= 168;
            }

            while (v38 != v36);
            v33 = *v35;
          }

          *(v18 - 64) = v36;
          operator delete(v33);
        }

        v18 -= 72;
      }

      while (v35 != v8);
    }

    v6[1] = v8;
  }

  else
  {
    v20 = a2 + v19;
    if (v18 != v8)
    {
      v21 = 0;
      do
      {
        v24 = &v8[v21 / 8];
        if (a2 == v8)
        {
          *(v24 + 24) = a2[v21 / 8 + 3];
        }

        else
        {
          sub_A34348(&v8[v21 / 8], a2[v21 / 8], a2[v21 / 8 + 1], 0xCF3CF3CF3CF3CF3DLL * ((a2[v21 / 8 + 1] - a2[v21 / 8]) >> 3));
          *(v24 + 24) = a2[v21 / 8 + 3];
          sub_956400(v24 + 4, a2[v21 / 8 + 4], a2[v21 / 8 + 5], 0xCCCCCCCCCCCCCCCDLL * ((a2[v21 / 8 + 5] - a2[v21 / 8 + 4]) >> 3));
        }

        v22 = &v8[v21 / 8];
        v23 = a2[v21 / 8 + 7];
        *(v22 + 63) = *(&a2[v21 / 8 + 7] + 7);
        v22[7] = v23;
        v21 += 72;
      }

      while (v19 != v21);
      v6 = a1;
      v18 = a1[1];
    }

    v44 = v18;
    v45 = v18;
    v42[0] = v6;
    v42[1] = &v44;
    v42[2] = &v45;
    v32 = v18;
    v43 = 0;
    if (v20 != a3)
    {
      v32 = v18;
      do
      {
        sub_A33054(v32, v20);
        v20 += 72;
        v32 = v45 + 72;
        v45 += 72;
      }

      while (v20 != a3);
    }

    v6[1] = v32;
  }
}

void sub_A34310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A33688(va);
  *(v4 + 8) = v3;
  _Unwind_Resume(a1);
}

void sub_A34328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_A33688(va);
  *(v4 + 8) = v3;
  _Unwind_Resume(a1);
}

void **sub_A34348(void **result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xCF3CF3CF3CF3CF3DLL * ((v7 - *result) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      v10 = result[1];
      v11 = *result;
      if (v10 != v8)
      {
        do
        {
          v12 = v10 - 42;
          v13 = *(v10 - 2);
          if (v13 != -1)
          {
            (off_2670158[v13])(v30, v10 - 42);
          }

          *(v10 - 2) = -1;
          v10 -= 42;
        }

        while (v12 != v8);
        v11 = *v6;
      }

      v6[1] = v8;
      operator delete(v11);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x186186186186186)
    {
      v27 = 0xCF3CF3CF3CF3CF3DLL * (v7 >> 3);
      v28 = 2 * v27;
      if (2 * v27 <= a4)
      {
        v28 = a4;
      }

      if (v27 >= 0xC30C30C30C30C3)
      {
        v29 = 0x186186186186186;
      }

      else
      {
        v29 = v28;
      }

      if (v29 <= 0x186186186186186)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v14 = result[1];
  v15 = v14 - v8;
  if (0xCF3CF3CF3CF3CF3DLL * ((v14 - v8) >> 3) >= a4)
  {
    if (a2 == a3)
    {
LABEL_32:
      if (v14 != v8)
      {
        do
        {
          v25 = v14 - 42;
          v26 = *(v14 - 2);
          if (v26 != -1)
          {
            result = (off_2670158[v26])(v30, v14 - 42);
          }

          *(v14 - 2) = -1;
          v14 -= 42;
        }

        while (v25 != v8);
      }

      v6[1] = v8;
      return result;
    }

    while (1)
    {
      while (1)
      {
        v23 = v8[40];
        v24 = *(v5 + 160);
        if (v23 != -1)
        {
          break;
        }

        if (v24 != -1)
        {
          goto LABEL_26;
        }

LABEL_27:
        v5 += 168;
        v8 += 42;
        if (v5 == a3)
        {
          goto LABEL_31;
        }
      }

      if (v24 != -1)
      {
LABEL_26:
        v30[0] = v8;
        result = (off_26701A8[v24])(v30, v8, v5);
        goto LABEL_27;
      }

      result = (off_2670158[v23])(v30, v8);
      v8[40] = -1;
      v5 += 168;
      v8 += 42;
      if (v5 == a3)
      {
LABEL_31:
        v14 = v6[1];
        goto LABEL_32;
      }
    }
  }

  if (v14 == v8)
  {
    goto LABEL_18;
  }

  v16 = v14 - v8;
  v17 = a2;
  do
  {
    while (1)
    {
      v18 = v8[40];
      v19 = *(v17 + 160);
      if (v18 != -1)
      {
        break;
      }

      if (v19 != -1)
      {
        goto LABEL_12;
      }

LABEL_13:
      v17 += 168;
      v8 += 42;
      v16 -= 168;
      if (!v16)
      {
        goto LABEL_17;
      }
    }

    if (v19 != -1)
    {
LABEL_12:
      v30[0] = v8;
      result = (off_26701A8[v19])(v30, v8, v17);
      goto LABEL_13;
    }

    result = (off_2670158[v18])(v30, v8);
    v8[40] = -1;
    v17 += 168;
    v8 += 42;
    v16 -= 168;
  }

  while (v16);
LABEL_17:
  v14 = v6[1];
LABEL_18:
  v20 = v5 + v15;
  v32 = v14;
  v33 = v14;
  v30[0] = v6;
  v30[1] = &v32;
  v30[2] = &v33;
  v21 = v14;
  v31 = 0;
  if (v20 != a3)
  {
    v21 = v14;
    do
    {
      *v21 = 0;
      v21[40] = -1;
      v22 = *(v20 + 160);
      if (v22 != -1)
      {
        v34 = v21;
        result = (off_2670198[v22])(&v34, v20);
        v21[40] = v22;
        v21 = v33;
      }

      v20 += 168;
      v21 += 42;
      v33 = v21;
    }

    while (v20 != a3);
  }

  v6[1] = v21;
  return result;
}

void sub_A3476C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A3238C(v3);
  sub_A33528(va);
  *(v2 + 8) = v4;
  _Unwind_Resume(a1);
}

void sub_A34790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_A3238C(v4);
  sub_A33528(va);
  *(v2 + 8) = v3;
  _Unwind_Resume(a1);
}

__n128 sub_A347B0(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (*(*a1 + 160))
  {
    v9[0] = *a1;
    v9[1] = a3;
    sub_A34954(v9);
  }

  else
  {
    v4 = *a3;
    v5 = a3[1];
    v6 = a3[2];
    *(a2 + 44) = *(a3 + 44);
    *(a2 + 16) = v5;
    *(a2 + 32) = v6;
    *a2 = v4;
    if (a2 == a3)
    {
      *(a2 + 112) = *(a3 + 28);
    }

    else
    {
      v7 = a2;
      v8 = a3;
      sub_A349D4((a2 + 64), *(a3 + 8), *(a3 + 9), 0xEEEEEEEEEEEEEEEFLL * ((*(a3 + 9) - *(a3 + 8)) >> 2));
      sub_A349D4((v7 + 88), v8[11], v8[12], 0xEEEEEEEEEEEEEEEFLL * ((v8[12] - v8[11]) >> 2));
      *(v7 + 112) = *(v8 + 28);
      sub_956400((v7 + 120), v8[15], v8[16], 0xCCCCCCCCCCCCCCCDLL * ((v8[16] - v8[15]) >> 3));
      a2 = v7;
      a3 = v8;
    }

    result = a3[9];
    *(a2 + 144) = result;
  }

  return result;
}

__n128 sub_A348B4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 160);
  if (v4 != -1)
  {
    if (v4 == 1)
    {
      result = *a3;
      *(a2 + 12) = *(a3 + 12);
      *a2 = result;
      return result;
    }

    v6 = a3;
    (off_2670158[v4])(&v7, v3);
    a3 = v6;
  }

  *(v3 + 160) = -1;
  result = *a3;
  *(v3 + 12) = *(a3 + 12);
  *v3 = result;
  *(v3 + 160) = 1;
  return result;
}

void sub_A34954(uint64_t a1)
{
  v1 = *a1;
  sub_A332F8(v2, *(a1 + 8));
  sub_A34B68(v1, v2);
  if (__p)
  {
    v8 = __p;
    operator delete(__p);
  }

  if (v5)
  {
    v6 = v5;
    operator delete(v5);
  }

  if (v3)
  {
    v4 = v3;
    operator delete(v3);
  }
}

char *sub_A349D4(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xEEEEEEEEEEEEEEEFLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x444444444444444)
    {
      v9 = 0xEEEEEEEEEEEEEEEFLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x222222222222222)
      {
        v11 = 0x444444444444444;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x444444444444444)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xEEEEEEEEEEEEEEEFLL * ((v12 - result) >> 2) >= a4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 3);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

uint64_t sub_A34B68(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 160);
  if (v4 != -1)
  {
    (off_2670158[v4])(&v9, a1);
  }

  *(a1 + 160) = -1;
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *a1 = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 64) = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 104) = *(a2 + 13);
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 11) = 0;
  *(a1 + 112) = *(a2 + 28);
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 120) = 0;
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 15) = 0;
  *(a1 + 144) = a2[9];
  *(a1 + 160) = 0;
  return a1;
}

char *sub_A34C54(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 4)
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

    if (!(a4 >> 60))
    {
      v9 = v6 >> 3;
      if (v6 >> 3 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF0;
      v11 = 0xFFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 60))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 4)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 3);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

char *sub_A34DB4(char **a1, char *a2, _BYTE *a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (a4 > (v6 - result) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v6 >> 2;
      if (v6 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v6 >= 0x7FFFFFFFFFFFFFF8;
      v11 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v10)
      {
        v11 = v9;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }
    }

    sub_1794();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (a4 <= (v12 - result) >> 3)
  {
    v16 = a3 - a2;
    if (a3 != a2)
    {
      v17 = result;
      memmove(result, a2, v16 - 3);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13 - 3);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15 - 3);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

void sub_A34F14(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) < a4)
  {
    if (!v8)
    {
      goto LABEL_37;
    }

    v9 = a4;
    v10 = *(a1 + 8);
    v11 = *a1;
    if (v10 == v8)
    {
      goto LABEL_36;
    }

    v12 = (v10 - 24);
    while (1)
    {
      if (*v12)
      {
        sub_A32000(v12, *v12);
        operator delete(*v12);
      }

      if (*(v12 - 25) < 0)
      {
        operator delete(*(v12 - 6));
        if (*(v12 - 49) < 0)
        {
LABEL_12:
          operator delete(*(v12 - 9));
        }
      }

      else if (*(v12 - 49) < 0)
      {
        goto LABEL_12;
      }

      v13 = (v12 - 9);
      v12 -= 12;
      if (v13 == v8)
      {
        v11 = *a1;
LABEL_36:
        *(a1 + 8) = v8;
        operator delete(v11);
        v7 = 0;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        a4 = v9;
LABEL_37:
        if (a4 <= 0x2AAAAAAAAAAAAAALL)
        {
          v20 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
          v21 = 2 * v20;
          if (2 * v20 <= a4)
          {
            v21 = a4;
          }

          if (v20 >= 0x155555555555555)
          {
            v22 = 0x2AAAAAAAAAAAAAALL;
          }

          else
          {
            v22 = v21;
          }

          if (v22 <= 0x2AAAAAAAAAAAAAALL)
          {
            operator new();
          }
        }

        sub_1794();
      }
    }
  }

  v14 = *(a1 + 8);
  v15 = v14 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v14 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        sub_A35240(v8, v5);
        v5 += 96;
        v8 += 96;
      }

      while (v5 != a3);
      v14 = *(a1 + 8);
    }

    if (v14 == v8)
    {
LABEL_34:
      *(a1 + 8) = v8;
      return;
    }

    v18 = (v14 - 24);
    while (1)
    {
      if (*v18)
      {
        sub_A32000(v18, *v18);
        operator delete(*v18);
      }

      if (*(v18 - 25) < 0)
      {
        operator delete(*(v18 - 6));
        if (*(v18 - 49) < 0)
        {
LABEL_33:
          operator delete(*(v18 - 9));
        }
      }

      else if (*(v18 - 49) < 0)
      {
        goto LABEL_33;
      }

      v19 = (v18 - 9);
      v18 -= 12;
      if (v19 == v8)
      {
        goto LABEL_34;
      }
    }
  }

  v16 = &a2[v15];
  if (v14 != v8)
  {
    do
    {
      sub_A35240(v8, v5);
      v5 += 96;
      v8 += 96;
      v15 -= 96;
    }

    while (v15);
    v14 = *(a1 + 8);
  }

  v23 = v14;
  v17 = v14;
  if (v16 != a3)
  {
    v17 = v14;
    do
    {
      sub_A33970(v17, v16);
      v16 += 6;
      v17 = (v23 + 96);
      v23 += 96;
    }

    while (v16 != a3);
  }

  *(a1 + 8) = v17;
}

void sub_A35210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_A338C8(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}