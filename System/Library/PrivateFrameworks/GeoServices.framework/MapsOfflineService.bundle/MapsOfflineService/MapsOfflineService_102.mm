void sub_68C770(_Unwind_Exception *a1)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_68C794(uint64_t *a1)
{
  sub_68C5EC(a1, &v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return (v2 - v1) >> 3;
}

uint64_t sub_68C7DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += sub_4D1DB8(v1);
    v1 += 12656;
  }

  while (v1 != v2);
  return v3;
}

BOOL sub_68C864(unsigned int **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 3164;
  do
  {
    v4 = sub_4D26B4(v1, 0);
    v5 = v4 == 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
    if (v5)
    {
      break;
    }

    v1 += 3164;
    v5 = v3 == v2;
    v3 += 3164;
  }

  while (!v5);
  return result;
}

BOOL sub_68C900(unsigned int **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 3164;
  do
  {
    v4 = sub_4D26B4(v1, 1);
    v5 = v4 == 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
    if (v5)
    {
      break;
    }

    v1 += 3164;
    v5 = v3 == v2;
    v3 += 3164;
  }

  while (!v5);
  return result;
}

BOOL sub_68C99C(unsigned int **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 3164;
  do
  {
    v4 = sub_4D26B4(v1, 2);
    v5 = v4 == 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
    if (v5)
    {
      break;
    }

    v1 += 3164;
    v5 = v3 == v2;
    v3 += 3164;
  }

  while (!v5);
  return result;
}

BOOL sub_68CA38(unsigned int **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 3164;
  do
  {
    v4 = sub_4D26B4(v1, 4);
    v5 = v4 == 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
    if (v5)
    {
      break;
    }

    v1 += 3164;
    v5 = v3 == v2;
    v3 += 3164;
  }

  while (!v5);
  return result;
}

BOOL sub_68CAD4(unsigned int **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 3164;
  do
  {
    v4 = sub_4D26B4(v1, 5);
    v5 = v4 == 0x7FFFFFFF;
    result = v4 != 0x7FFFFFFF;
    if (v5)
    {
      break;
    }

    v1 += 3164;
    v5 = v3 == v2;
    v3 += 3164;
  }

  while (!v5);
  return result;
}

_DWORD *sub_68CB5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4) - 1;
  result = sub_69CCC0((*a1 + 12656 * v4));
  if (result)
  {
    v6 = (*a1 + 12656 * v4);

    return sub_69AC34(v6, a2);
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0x7FFFFFFF;
    *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  }

  return result;
}

void sub_68CC00(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    while (sub_69CCC0(v4))
    {
      v4 += 12656;
      if (v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        goto LABEL_5;
      }
    }

    goto LABEL_11;
  }

LABEL_5:
  if (v4 != v5)
  {
    v6 = v4 + 12656;
    do
    {
      v7 = sub_4D20C0(v4, 8);
      if (v7)
      {
        break;
      }

      v4 += 12656;
      v8 = v6 == v5;
      v6 += 12656;
    }

    while (!v8);
    if (v7)
    {
LABEL_11:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0x7FFFFFFF;
      *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      return;
    }

    v4 = *a1;
    v5 = a1[1];
  }

  v9 = 0x5DDB1ADCB91F64A7 * ((v5 - v4) >> 4) - 1;
  if (sub_69CCC0(&v4[12656 * v9]))
  {
    sub_69AC34((*a1 + 12656 * v9), &v42);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v42 = 0x7FFFFFFF;
    v43 = 0x7FFFFFFF7FFFFFFFLL;
  }

  v41 = 0;
  sub_68D0C4(a1, &v36);
  sub_68D32C(a1, &v31);
  v19 = v36;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (v38 != v37)
  {
    if (((v38 - v37) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v40 != v39)
  {
    if (((v40 - v39) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v31;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (v33 != v32)
  {
    if (((v33 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  if (v35 != v34)
  {
    if (((v35 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_68D538(&v19, &v12, &v26);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v10 = *v26;
  v11 = sub_588E0(&v42);
  sub_446DA0(a2, v10, v11);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_68CF9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  sub_334D18(&a33);
  sub_334D18((v33 - 160));
  _Unwind_Resume(a1);
}

BOOL sub_68D058(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 1582;
  do
  {
    result = sub_69CCC0(v1);
    if (!result)
    {
      break;
    }

    v1 += 1582;
    v5 = v3 == v2;
    v3 += 1582;
  }

  while (!v5);
  return result;
}

uint64_t sub_68D0C4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0uLL;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v18 = &v14;
  v5 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  *(a2 + 16) = v16;
  v7 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  v15 = 0;
  v14 = 0uLL;
  if (v6 != v7)
  {
    v8 = v7 - v6;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v6 == *v5.i64[0])
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v6[v10 + 1];
          v13 = *(v5.i64[0] + 8 + 8 * v10++);
          if (v12 != v13)
          {
            goto LABEL_14;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      *(a2 + 8) = v10;
    }

    *a2 = v6[v10];
  }

  return result;
}

void sub_68D2F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_68D32C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = 0uLL;
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v10 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v8;
  *(a2 + 16) = v8;
  v6 = v9;
  *(a2 + 24) = v9;
  v8 = 0;
  v9 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3 - v2;
  memset(v7, 0, sizeof(v7));
  if (v5 != v6)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_68D500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_68D538(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v19 = *a1;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (v4 != v5)
  {
    if (((v4 - v5) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = *a2;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  v9 = *(a2 + 2);
  v8 = *(a2 + 3);
  if (v8 != v9)
  {
    if (((v8 - v9) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  v11 = *(a2 + 5);
  v10 = *(a2 + 6);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_6927B4(&v19, &v12, a3);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }
}

void sub_68D76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_68D788(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (v17)
  {
    operator delete(v17);
    sub_334D18(&a17);
    _Unwind_Resume(a1);
  }

  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_68D7C0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_68D828(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = v2 + 12656;
  do
  {
    result = sub_4D20B0(v2, a2);
    if (result)
    {
      break;
    }

    v2 += 12656;
    v7 = v5 == v3;
    v5 += 12656;
  }

  while (!v7);
  return result;
}

uint64_t sub_68D8A8(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    return 0;
  }

  v5 = v2 + 12656;
  do
  {
    result = sub_4D20C0(v2, a2);
    if (result)
    {
      break;
    }

    v2 += 12656;
    v7 = v5 == v3;
    v5 += 12656;
  }

  while (!v7);
  return result;
}

void sub_68D960(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v2 - v1 < 1)
  {
    v7 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4);
    while (1)
    {
      v4 = operator new(1168 * v3, &std::nothrow);
      if (v4)
      {
        break;
      }

      v5 = v3 >> 1;
      v6 = v3 > 1;
      v3 >>= 1;
      if (!v6)
      {
        v7 = 0;
        v3 = v5;
        goto LABEL_8;
      }
    }

    v7 = v4;
  }

LABEL_8:
  sub_694C88(v1, v2, &v8, 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4), v7, v3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_68DA30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_68DA48(uint64_t *a1, uint64_t a2)
{
  v3 = a1[18];
  if (v3 >= a1[19])
  {
    result = sub_692CB8(a1 + 17, a2);
    a1[18] = result;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = 0;
    *(v3 + 1136) = 0;
    if (*(a2 + 1136) == 1)
    {
      v4 = a2;
      sub_52B7D8(v3 + 16, a2 + 16);
      *(v3 + 1136) = 1;
      a2 = v4;
    }

    v5 = *(a2 + 1144);
    *(v3 + 1159) = *(a2 + 1159);
    *(v3 + 1144) = v5;
    result = v3 + 1168;
    a1[18] = v3 + 1168;
    a1[18] = v3 + 1168;
  }

  return result;
}

void sub_68DB00(_Unwind_Exception *exception_object)
{
  if (*(v3 + 1136) == 1)
  {
    sub_3A9518(v2);
  }

  *(v1 + 144) = v3;
  _Unwind_Resume(exception_object);
}

__n128 sub_68DB3C(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 72) = a2[1].n128_u64[0];
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_68DB50(uint64_t *a1, uint64_t a2, int a3)
{
  sub_64E914(a1 + 22, a2, a3);
  v6 = a1[23];
  if (v6 >= a1[24])
  {
    v8 = sub_1CEE8((a1 + 22), a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[23], *a2, *(a2 + 8));
    }

    else
    {
      v7 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *v6 = v7;
    }

    v8 = v6 + 24;
    a1[23] = v6 + 24;
  }

  a1[23] = v8;
  sub_64E914((*a1 + 9456), a2, a3);
  v9 = *a1;
  v10 = *(*a1 + 9464);
  if (v10 >= *(v9 + 9472))
  {
    result = sub_1CEE8(v9 + 9456, a2);
    *(v9 + 9464) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(v10, *a2, *(a2 + 8));
    }

    else
    {
      v11 = *a2;
      *(v10 + 16) = *(a2 + 16);
      *v10 = v11;
    }

    result = v10 + 24;
    *(v9 + 9464) = v10 + 24;
    *(v9 + 9464) = v10 + 24;
  }

  return result;
}

uint64_t sub_68DC78(void *a1, uint64_t a2)
{
  sub_594568((a1 + 42), a2);
  v4 = *a1 + 9296;

  return sub_594568(v4, a2);
}

uint64_t sub_68DCCC(void *a1, uint64_t a2)
{
  sub_594568((a1 + 62), a2);
  v4 = *a1 + 9616;

  return sub_594568(v4, a2);
}

uint64_t sub_68DD20(void *a1, uint64_t a2)
{
  sub_594568((a1 + 82), a2);
  v4 = *a1 + 9936;

  return sub_594568(v4, a2);
}

uint64_t sub_68DD74(void *a1, uint64_t a2)
{
  sub_594568((a1 + 102), a2);
  v4 = *a1 + 9776;

  return sub_594568(v4, a2);
}

void sub_68DDC8(uint64_t *a1, const void ***a2)
{
  v4 = a1 + 122;
  if (v4 != a2)
  {
    sub_74300(v4, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * (a2[1] - *a2));
  }

  v5 = (*a1 + 7208);
  if (v5 != a2)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = 0xAAAAAAAAAAAAAAABLL * (v7 - *a2);

    sub_74300(v5, v6, v7, v8);
  }
}

uint64_t sub_68DE64(void *a1, uint64_t a2)
{
  sub_594568((a1 + 125), a2);
  v4 = *a1 + 7232;

  return sub_594568(v4, a2);
}

uint64_t *sub_68DEC8(uint64_t *a1, uint64_t a2)
{
  sub_5EDA08(a1 + 161, a2);
  v3 = (*a1 + 1320);

  return sub_5EDA08(v3, (a1 + 161));
}

char *sub_68DF18(char **a1, char **a2)
{
  v4 = a1 + 897;
  if (v4 != a2)
  {
    sub_602DCC(v4, *a2, a2[1], (a2[1] - *a2) >> 5);
  }

  result = *a1 + 11952;
  if (result != a2)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = (v7 - *a2) >> 5;

    return sub_602DCC(result, v6, v7, v8);
  }

  return result;
}

_DWORD *sub_68DFA4(_DWORD *result, int *a2)
{
  v2 = *a2;
  result[1800] = *a2;
  *(*result + 11976) = v2;
  return result;
}

_DWORD *sub_68DFC4(_DWORD *result, int *a2)
{
  v2 = *a2;
  result[1801] = *a2;
  *(*result + 11980) = v2;
  return result;
}

uint64_t sub_68DFF0(char **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 12656;
  if (v3 >> 4 < 0x317)
  {
    result = 0;
    v5 = v2;
    do
    {
LABEL_8:
      result -= 0x30C30C30C30C30C3 * ((*(v5 + 1486) - *(v5 + 1485)) >> 3);
      v5 += 12656;
    }

    while (v5 != v1);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = v3 / 0x3170 + 1;
  v5 = &v2[12656 * (v8 & 0xFFFFFFFFFFFFELL)];
  v9 = v8 & 0xFFFFFFFFFFFFELL;
  do
  {
    v6 -= 0x30C30C30C30C30C3 * ((*(v2 + 1486) - *(v2 + 1485)) >> 3);
    v7 -= 0x30C30C30C30C30C3 * ((*(v2 + 3068) - *(v2 + 3067)) >> 3);
    v2 += 25312;
    v9 -= 2;
  }

  while (v9);
  result = v7 + v6;
  if (v8 != (v8 & 0xFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_68E0D8@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11880), *(v2 + 11888), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11888) - *(v2 + 11880)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_68E170(char **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 12656;
  if (v3 >> 4 < 0x317)
  {
    result = 0;
    v5 = v2;
    do
    {
LABEL_8:
      result -= 0x30C30C30C30C30C3 * ((*(v5 + 1483) - *(v5 + 1482)) >> 3);
      v5 += 12656;
    }

    while (v5 != v1);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = v3 / 0x3170 + 1;
  v5 = &v2[12656 * (v8 & 0xFFFFFFFFFFFFELL)];
  v9 = v8 & 0xFFFFFFFFFFFFELL;
  do
  {
    v6 -= 0x30C30C30C30C30C3 * ((*(v2 + 1483) - *(v2 + 1482)) >> 3);
    v7 -= 0x30C30C30C30C30C3 * ((*(v2 + 3065) - *(v2 + 3064)) >> 3);
    v2 += 25312;
    v9 -= 2;
  }

  while (v9);
  result = v7 + v6;
  if (v8 != (v8 & 0xFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_68E258@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11856), *(v2 + 11864), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11864) - *(v2 + 11856)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_68E2F0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11928), *(v2 + 11936), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11936) - *(v2 + 11928)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_68E388(char **a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 12656;
  if (v3 >> 4 < 0x317)
  {
    result = 0;
    v5 = v2;
    do
    {
LABEL_8:
      result -= 0x30C30C30C30C30C3 * ((*(v5 + 1489) - *(v5 + 1488)) >> 3);
      v5 += 12656;
    }

    while (v5 != v1);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = v3 / 0x3170 + 1;
  v5 = &v2[12656 * (v8 & 0xFFFFFFFFFFFFELL)];
  v9 = v8 & 0xFFFFFFFFFFFFELL;
  do
  {
    v6 -= 0x30C30C30C30C30C3 * ((*(v2 + 1489) - *(v2 + 1488)) >> 3);
    v7 -= 0x30C30C30C30C30C3 * ((*(v2 + 3071) - *(v2 + 3070)) >> 3);
    v2 += 25312;
    v9 -= 2;
  }

  while (v9);
  result = v7 + v6;
  if (v8 != (v8 & 0xFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t *sub_68E470@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11904), *(v2 + 11912), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11912) - *(v2 + 11904)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

size_t *sub_68E514(char *a1, size_t *a2)
{
  v2 = a2;
  v4 = (a1 + 7216);
  if (v4 == a2)
  {
    goto LABEL_10;
  }

  if (a1[7239] < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    sub_13B38(v4, a2, v8);
LABEL_10:
    v6 = *a1;
    result = (*a1 + 1272);
    if (result == v2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v4, *a2, a2[1]);
    v6 = *a1;
    result = (*a1 + 1272);
    if (result == v2)
    {
      return result;
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = a2[2];
    *v4 = v5;
    v6 = *a1;
    result = (*a1 + 1272);
    if (result == a2)
    {
      return result;
    }
  }

LABEL_11:
  v9 = *(v6 + 1295);
  v10 = *(v2 + 23);
  if (v9 < 0)
  {
    if (v10 >= 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = *v2;
    }

    if (v10 >= 0)
    {
      v13 = *(v2 + 23);
    }

    else
    {
      v13 = v2[1];
    }

    return sub_13B38(result, v12, v13);
  }

  else if ((*(v2 + 23) & 0x80) != 0)
  {
    v14 = *v2;
    v15 = v2[1];

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *v2;
    result[2] = v2[2];
    *result = v11;
  }

  return result;
}

size_t *sub_68E640(char *a1, size_t *a2)
{
  v2 = a2;
  v4 = (a1 + 7240);
  if (v4 == a2)
  {
    goto LABEL_10;
  }

  if (a1[7263] < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    sub_13B38(v4, a2, v8);
LABEL_10:
    v6 = *a1;
    result = (*a1 + 1296);
    if (result == v2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v4, *a2, a2[1]);
    v6 = *a1;
    result = (*a1 + 1296);
    if (result == v2)
    {
      return result;
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = a2[2];
    *v4 = v5;
    v6 = *a1;
    result = (*a1 + 1296);
    if (result == a2)
    {
      return result;
    }
  }

LABEL_11:
  v9 = *(v6 + 1319);
  v10 = *(v2 + 23);
  if (v9 < 0)
  {
    if (v10 >= 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = *v2;
    }

    if (v10 >= 0)
    {
      v13 = *(v2 + 23);
    }

    else
    {
      v13 = v2[1];
    }

    return sub_13B38(result, v12, v13);
  }

  else if ((*(v2 + 23) & 0x80) != 0)
  {
    v14 = *v2;
    v15 = v2[1];

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *v2;
    result[2] = v2[2];
    *result = v11;
  }

  return result;
}

uint64_t sub_68E778(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (1)
  {
    v3 = v1[1272];
    v4 = v1[1273];
    if (v3 != v4)
    {
      break;
    }

LABEL_5:
    v5 = v1[924];
    v6 = v1[925];
    if (v5 != v6)
    {
      while ((*(v5 + 16) & 0xFFFFFFFE) != 2)
      {
        v5 += 24;
        if (v5 == v6)
        {
          goto LABEL_8;
        }
      }

      return 1;
    }

LABEL_8:
    v1 += 1582;
    if (v1 == v2)
    {
      return 0;
    }
  }

  while (!sub_685B80(v3))
  {
    v3 += 616;
    if (v3 == v4)
    {
      goto LABEL_5;
    }
  }

  return 1;
}

uint64_t *sub_68E83C(uint64_t a1, uint64_t *a2)
{
  result = (a1 + 7376);
  if (result != a2)
  {
    return sub_6038B8(result, *a2, a2[1], 0xFAFAFAFAFAFAFAFBLL * ((a2[1] - *a2) >> 4));
  }

  return result;
}

uint64_t *sub_68E878(uint64_t *result, char a2)
{
  *(result + 168) = a2;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    v4 = v3 - v2 - 12656;
    if (v4 >> 4 <= 0x316)
    {
      goto LABEL_9;
    }

    v5 = (v2 + 22777);
    v6 = (v2 + 10121);
    v7 = v4 / 0x3170 + 1;
    v2 += 12656 * (v7 & 0xFFFFFFFFFFFFELL);
    v8 = v7 & 0xFFFFFFFFFFFFELL;
    do
    {
      *v6 = a2;
      *v5 = a2;
      v5 += 25312;
      v6 += 25312;
      v8 -= 2;
    }

    while (v8);
    if (v7 != (v7 & 0xFFFFFFFFFFFFELL))
    {
LABEL_9:
      do
      {
        *(v2 + 10121) = a2;
        v2 += 12656;
      }

      while (v2 != v3);
    }
  }

  return result;
}

size_t *sub_68E928(char *a1, size_t *a2)
{
  v2 = a2;
  v4 = (a1 + 7448);
  if (v4 == a2)
  {
    goto LABEL_10;
  }

  if (a1[7471] < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    sub_13B38(v4, a2, v8);
LABEL_10:
    v6 = *a1;
    result = (*a1 + 10224);
    if (result == v2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v4, *a2, a2[1]);
    v6 = *a1;
    result = (*a1 + 10224);
    if (result == v2)
    {
      return result;
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = a2[2];
    *v4 = v5;
    v6 = *a1;
    result = (*a1 + 10224);
    if (result == a2)
    {
      return result;
    }
  }

LABEL_11:
  v9 = *(v6 + 10247);
  v10 = *(v2 + 23);
  if (v9 < 0)
  {
    if (v10 >= 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = *v2;
    }

    if (v10 >= 0)
    {
      v13 = *(v2 + 23);
    }

    else
    {
      v13 = v2[1];
    }

    return sub_13B38(result, v12, v13);
  }

  else if ((*(v2 + 23) & 0x80) != 0)
  {
    v14 = *v2;
    v15 = v2[1];

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *v2;
    result[2] = v2[2];
    *result = v11;
  }

  return result;
}

size_t *sub_68EA64(char *a1, size_t *a2)
{
  v2 = a2;
  v4 = (a1 + 7424);
  if (v4 == a2)
  {
    goto LABEL_10;
  }

  if (a1[7447] < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    sub_13B38(v4, a2, v8);
LABEL_10:
    v6 = *a1;
    result = (*a1 + 12320);
    if (result == v2)
    {
      return result;
    }

    goto LABEL_11;
  }

  if ((*(a2 + 23) & 0x80) != 0)
  {
    sub_13A68(v4, *a2, a2[1]);
    v6 = *a1;
    result = (*a1 + 12320);
    if (result == v2)
    {
      return result;
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = a2[2];
    *v4 = v5;
    v6 = *a1;
    result = (*a1 + 12320);
    if (result == a2)
    {
      return result;
    }
  }

LABEL_11:
  v9 = *(v6 + 12343);
  v10 = *(v2 + 23);
  if (v9 < 0)
  {
    if (v10 >= 0)
    {
      v12 = v2;
    }

    else
    {
      v12 = *v2;
    }

    if (v10 >= 0)
    {
      v13 = *(v2 + 23);
    }

    else
    {
      v13 = v2[1];
    }

    return sub_13B38(result, v12, v13);
  }

  else if ((*(v2 + 23) & 0x80) != 0)
  {
    v14 = *v2;
    v15 = v2[1];

    return sub_13A68(result, v14, v15);
  }

  else
  {
    v11 = *v2;
    result[2] = v2[2];
    *result = v11;
  }

  return result;
}

void sub_68EBA0(void **a1, uint64_t a2)
{
  v4 = a1 + 925;
  if (v4 != a2)
  {
    sub_52EE18(v4, *a2, *(a2 + 8), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 8) - *a2) >> 3));
  }

  v5 = (*a1 + 12296);
  if (v5 != a2)
  {
    v6 = *a2;
    v7 = *(a2 + 8);
    v8 = 0xCCCCCCCCCCCCCCCDLL * (&v7[-*a2] >> 3);

    sub_52EE18(v5, v6, v7, v8);
  }
}

uint64_t sub_68EC38(void *a1, unsigned int a2)
{
  v2 = a1[1];
  if (v2 - *a1 == 12656)
  {
    a2 = 1;
  }

  if (*a1 == v2)
  {
    return 0;
  }

  else
  {
    return a2;
  }
}

void *sub_68EC68(uint64_t a1)
{
  if (*(a1 + 24) == *(a1 + 32))
  {
    return &unk_229DE78;
  }

  else
  {
    return *(a1 + 24);
  }
}

uint64_t sub_68EC80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 24);
  if (result != *(a1 + 32))
  {
    return sub_734D90();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

void sub_68ECA4(void **a1, uint64_t *a2)
{
  v4 = a1 + 3;
  if (v4 != a2)
  {
    sub_601A50(v4, *a2, a2[1], 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 4));
  }

  v5 = (*a1 + 1176);
  if (v5 != a2)
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = 0x2E8BA2E8BA2E8BA3 * ((v7 - *a2) >> 4);

    sub_601A50(v5, v6, v7, v8);
  }
}

void *sub_68ED40(void *a1, uint64_t a2)
{
  sub_68ED88((a1 + 3), a2);
  v4 = *a1 + 1176;

  return sub_68ED88(v4, a2);
}

void *sub_68ED88(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_692F88(a1, a2);
    *(a1 + 8) = result;
  }

  else
  {
    sub_5139E8(*(a1 + 8), a2);
    v3[19] = 0;
    v3[20] = 0;
    v3[21] = 0;
    v5 = a2;
    v6 = *(a2 + 152);
    v7 = *(v5 + 160);
    if (v7 != v6)
    {
      if (((v7 - v6) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    result = v3 + 22;
    *(a1 + 8) = v3 + 22;
    *(a1 + 8) = v3 + 22;
  }

  return result;
}

void sub_68EE64(_Unwind_Exception *a1)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 160) = v5;
    operator delete(v5);
  }

  sub_3E5388(v2);
  *(v1 + 8) = v2;
  _Unwind_Resume(a1);
}

void sub_68EE8C(void *a1)
{
  v3 = a1[3];
  for (i = a1[4]; i != v3; sub_5C17B4(i))
  {
    i -= 176;
  }

  a1[4] = v3;
  v4 = *a1;
  v5 = *(*a1 + 1184);
  v6 = *(v4 + 1176);
  while (v5 != v6)
  {
    v5 -= 176;
    sub_5C17B4(v5);
  }

  *(v4 + 1184) = v6;
}

uint64_t sub_68EF04(void *a1)
{
  if (*a1 == a1[1])
  {
    return 2;
  }

  else
  {
    return *(*a1 + 1097);
  }
}

uint64_t sub_68EF20(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *(v1 + 1104);
    v4 = *(v1 + 1112);
    if (v3 != v4)
    {
      goto LABEL_5;
    }

LABEL_3:
    while (1)
    {
      v1 += 12656;
      if (v1 == v2)
      {
        break;
      }

      v3 = *(v1 + 1104);
      v4 = *(v1 + 1112);
      if (v3 != v4)
      {
LABEL_5:
        while (*(v3 + 640) == -1)
        {
          v3 += 2616;
          if (v3 == v4)
          {
            goto LABEL_3;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_68EF88(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *(v1 + 1104);
    v4 = *(v1 + 1112);
    if (v3 != v4)
    {
      goto LABEL_5;
    }

LABEL_3:
    while (1)
    {
      v1 += 12656;
      if (v1 == v2)
      {
        break;
      }

      v3 = *(v1 + 1104);
      v4 = *(v1 + 1112);
      if (v3 != v4)
      {
LABEL_5:
        while (*(v3 + 624) == -1)
        {
          v3 += 2616;
          if (v3 == v4)
          {
            goto LABEL_3;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_68EFF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  for (i = v1 + 12008; (*(i + 257) & 1) == 0; i += 12656)
  {
    v4 = *(i + 16) == *(i + 24) || *i == 0x7FFFFFFFFFFFFFFFLL;
    v5 = v4 || *(i + 8) == 0x7FFFFFFFFFFFFFFFLL;
    if (v5 && *(i + 232) == *(i + 240) && !*(i + 256))
    {
      break;
    }

    v1 += 12656;
    if (v1 == v2)
    {
      return 1;
    }
  }

  return 0;
}

BOOL sub_68F064(uint64_t *a1)
{
  v1 = a1[1];
  if (*a1 != v1)
  {
    v2 = *a1;
    while ((*(v2 + 12265) & 1) == 0)
    {
      v3 = *(v2 + 12024) == *(v2 + 12032) || *(v2 + 12008) == 0x7FFFFFFFFFFFFFFFLL;
      v4 = v3 || *(v2 + 12016) == 0x7FFFFFFFFFFFFFFFLL;
      if (v4 && *(v2 + 12240) == *(v2 + 12248) && !*(v2 + 12264))
      {
        break;
      }

      v2 += 12656;
      if (v2 == v1)
      {
        v6 = *a1 + 12656;
        do
        {
          v7 = *(v6 - 392) - 6;
          result = v7 < 0xFFFFFFFB;
          v8 = v7 < 0xFFFFFFFB || v6 == v1;
          v6 += 12656;
        }

        while (!v8);
        return result;
      }
    }
  }

  return 0;
}

uint64_t sub_68F104(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  v3 = v1 - v2 - 12656;
  if (v3 >> 4 < 0x317)
  {
    result = 0;
    v5 = v2;
    do
    {
LABEL_8:
      result += *(v5 + 12368);
      v5 += 12656;
    }

    while (v5 != v1);
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = v3 / 0x3170 + 1;
  v5 = v2 + 12656 * (v8 & 0xFFFFFFFFFFFFELL);
  v9 = v8 & 0xFFFFFFFFFFFFELL;
  do
  {
    v6 += *(v2 + 12368);
    v7 += *(v2 + 25024);
    v2 += 25312;
    v9 -= 2;
  }

  while (v9);
  result = v7 + v6;
  if (v8 != (v8 & 0xFFFFFFFFFFFFELL))
  {
    goto LABEL_8;
  }

  return result;
}

uint64_t sub_68F1B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (!sub_4D20B0(v1, 6))
  {
    v1 += 12656;
    if (v1 == v2)
    {
      return 0;
    }
  }

  v4 = *a1;
  v5 = a1[1];
  if (*a1 == v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v6 += sub_4D1DC0(v4);
    v4 += 1582;
  }

  while (v4 != v5);
  if (!v6)
  {
    return 0;
  }

  v7 = *a1;
  v8 = a1[1];
  if (v7 == v8)
  {
    return 1;
  }

  v9 = 0;
  v10 = 0;
  do
  {
    v11 = nullsub_1(v7);
    for (i = *v11; i != *(v11 + 8); i += 5)
    {
      v14 = (*i - **i);
      if (*v14 >= 0x9Bu && (v15 = v14[77]) != 0)
      {
        v9 |= (*(*i + v15) & 0x80000208) == 8;
        v13 = (*(*i + v15) >> 9) & 1;
      }

      else
      {
        LOBYTE(v13) = 0;
      }

      v10 |= v13;
    }

    v7 += 12656;
  }

  while (v7 != v8);
  if (v9)
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  if ((v10 & 1) == 0)
  {
    return 1;
  }

  return v17;
}

uint64_t *sub_68F334(uint64_t a1, uint64_t *a2)
{
  result = (a1 + 7520);
  if (result != a2)
  {
    return sub_5D8C78(result, *a2, a2[1], 0xAF8AF8AF8AF8AF8BLL * ((a2[1] - *a2) >> 5));
  }

  return result;
}

uint64_t sub_68F37C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 7576);
  if (v3 >= *(a1 + 7584))
  {
    result = sub_69329C((a1 + 7568), a2);
    *(a1 + 7576) = result;
  }

  else
  {
    *v3 = 0;
    *(v3 + 1120) = -1;
    v4 = *(a2 + 1120);
    if (v4 != -1)
    {
      v6 = v3;
      (off_266C0A0[v4])(&v6);
      *(v3 + 1120) = v4;
    }

    result = v3 + 1128;
    *(a1 + 7576) = v3 + 1128;
    *(a1 + 7576) = v3 + 1128;
  }

  return result;
}

void sub_68F420(_Unwind_Exception *a1)
{
  sub_5EBFA8(v2);
  *(v1 + 7576) = v2;
  _Unwind_Resume(a1);
}

uint64_t sub_68F444(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 7600);
  if (v3 >= *(a1 + 7608))
  {
    result = sub_69329C((a1 + 7592), a2);
    *(a1 + 7600) = result;
  }

  else
  {
    *v3 = 0;
    *(v3 + 1120) = -1;
    v4 = *(a2 + 1120);
    if (v4 != -1)
    {
      v6 = v3;
      (off_266C0A0[v4])(&v6);
      *(v3 + 1120) = v4;
    }

    result = v3 + 1128;
    *(a1 + 7600) = v3 + 1128;
    *(a1 + 7600) = v3 + 1128;
  }

  return result;
}

void sub_68F4E8(_Unwind_Exception *a1)
{
  sub_5EBFA8(v2);
  *(v1 + 7600) = v2;
  _Unwind_Resume(a1);
}

uint64_t *sub_68F500(uint64_t a1, uint64_t *a2)
{
  result = (a1 + 7544);
  if (result != a2)
  {
    return sub_5D8C78(result, *a2, a2[1], 0xAF8AF8AF8AF8AF8BLL * ((a2[1] - *a2) >> 5));
  }

  return result;
}

uint64_t sub_68F53C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  while (1)
  {
    if (sub_69AE68(v1))
    {
      v3 = sub_73F54(v1);
      v4 = *(v3 + 64);
      v5 = *(v3 + 72);
      if (v4 == v5)
      {
        break;
      }

      do
      {
        v6 = sub_96E04(v4);
        if (v6)
        {
          break;
        }

        v4 += 16;
      }

      while (v4 != v5);
      if (!v6)
      {
        break;
      }
    }

    v1 += 12656;
    if (v1 == v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_68F5E4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] - 12656;
  if (v2 == *a1)
  {
    return 0;
  }

  while (1)
  {
    v4 = sub_73F54(v1);
    if (*v4 == 0x7FFFFFFF || v4[9] == 0x7FFFFFFF)
    {
      goto LABEL_5;
    }

    v6 = v4;
    if (!sub_4566B4(v4 + 2))
    {
      goto LABEL_5;
    }

    v7 = v6[28];
    switch(v7)
    {
      case 0:
        goto LABEL_5;
      case 2:
        v8 = *(v6 + 13);
        if (v8 > 0xFFFFFFFEFFFFFFFFLL || !v8)
        {
          goto LABEL_5;
        }

        break;
      case 1:
        if (*(v6 + 13) == -1)
        {
          goto LABEL_5;
        }

        break;
      default:
        sub_5AF20();
    }

    if ((sub_69AFC8(v1) & 1) == 0)
    {
      return 1;
    }

LABEL_5:
    v1 += 12656;
    if (v1 == v2)
    {
      return 0;
    }
  }
}

unsigned __int8 *sub_68F6E4(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 7472);
  if (result != a2)
  {
    if (*(a1 + 7495) < 0)
    {
      v5 = *(a2 + 1);
      if ((a2[23] & 0x80u) == 0)
      {
        v6 = a2[23];
      }

      else
      {
        a2 = *a2;
        v6 = v5;
      }

      return sub_13B38(result, a2, v6);
    }

    else if ((a2[23] & 0x80) != 0)
    {
      return sub_13A68(result, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(result + 2) = *(a2 + 2);
      *result = v4;
    }
  }

  return result;
}

void sub_68F750(uint64_t *a1)
{
  v3 = *a1;
  if (*a1 != a1[1])
  {
    v7 = v1;
    v8 = v2;
    v5 = *(v3 + 7536);
    if (v5 != *(v3 + 7544))
    {
      if (sub_682E18(v5))
      {
        v6 = 1;
        sub_DD38((a1 + 937), &v6);
      }
    }
  }
}

uint64_t *sub_68F80C(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 7624;
  result = sub_594568(a1 + 7624, a2);
  if (v4 != a2)
  {
    v6 = *(a2 + 160);
    v7 = *(a2 + 168);

    return sub_5F9F30((a1 + 7784), v6, v7, 0xCCCCCCCCCCCCCCCDLL * ((v7 - v6) >> 5));
  }

  return result;
}

void **sub_68F8B4(void **a1)
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
        v3 = sub_693598(v3 - 12656);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_68F91C(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 3;
  *(a1 + 56) = 0x8000000080000000;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0x7FFFFFFF;
  sub_4C5AD0(a2, v22);
  v4 = v22[3];
  *(a1 + 88) = v22[6];
  if (v4)
  {
    v22[4] = v4;
    operator delete(v4);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  v5 = sub_73EC4(a2);
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  *(a1 + 136) = 0;
  *(a1 + 128) = v8;
  *(a1 + 112) = v7;
  *(a1 + 96) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  sub_64B998(a1 + 176);
  sub_64B998(a1 + 336);
  sub_64B998(a1 + 496);
  sub_64B998(a1 + 656);
  sub_64B998(a1 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_64B998(a1 + 1000);
  *(a1 + 1160) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = -1;
  *(a1 + 1211) = -1;
  *(a1 + 1223) = 0;
  *(a1 + 1231) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 1239) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  sub_559C9C(a1 + 1288);
  sub_60AEEC(a1 + 2376);
  *(a1 + 7296) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0u;
  *(a1 + 7216) = 0u;
  *(a1 + 7232) = 0u;
  *(a1 + 7248) = 0u;
  *(a1 + 7304) = -1;
  *(a1 + 7307) = -1;
  *(a1 + 7319) = 0;
  *(a1 + 7327) = 0;
  *(a1 + 7311) = 0;
  *(a1 + 7335) = 0;
  *(a1 + 7344) = 0;
  *(a1 + 7360) = 0;
  *(a1 + 7352) = 0;
  *(a1 + 7368) = 0;
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0;
  sub_64B998(a1 + 7624);
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 164) = sub_4C5154(a2);
  v9 = sub_58BBC(a2);
  v10 = v9[1] - *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v10 >> 3);
    do
    {
      v14 = *sub_58BBC(a2);
      v15 = *(a1 + 8);
      if (*a1 == v15)
      {
        *(a1 + 80) = *sub_3CF22C(v14 + v11);
        v15 = *(a1 + 8);
        if (v15 >= *(a1 + 16))
        {
LABEL_11:
          v16 = sub_693F6C(a1, v14 + v11);
          goto LABEL_12;
        }
      }

      else if (v15 >= *(a1 + 16))
      {
        goto LABEL_11;
      }

      sub_69A180(v15, v14 + v11, 0);
      v16 = v15 + 12656;
      *(a1 + 8) = v15 + 12656;
LABEL_12:
      *(a1 + 8) = v16;
      v17 = sub_68C210((a2 + 128), v12);
      v18 = *(a1 + 8) - 2528;
      if (v18 != v17)
      {
        sub_5FED44(v18, *v17, v17[1], 0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3));
      }

      v19 = sub_68C210((a2 + 128), v12);
      v20 = *(a1 + 8);
      if (v20 - 112 != v19 + 24)
      {
        *(v20 - 80) = *(v19 + 56);
        sub_601264(v20 - 112, *(v19 + 40), 0);
        *(v20 - 40) = *(v19 + 96);
        sub_601910(v20 - 72, *(v19 + 80), 0);
      }

      *(*(a1 + 8) - 2536) = *(sub_68C210((a2 + 128), v12++) + 104);
      v11 += 1096;
    }

    while (v13 != v12);
  }

  return a1;
}

void sub_68FCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  sub_58CF24(v10 + 7624);
  sub_5EBE9C((v10 + 7592));
  sub_5EBE9C((v10 + 7568));
  sub_5706DC((v10 + 7544));
  sub_5706DC((v10 + 7520));
  v13 = *(v10 + 7496);
  if (v13)
  {
    *(v10 + 7504) = v13;
    operator delete(v13);
    if (*(v10 + 7495) < 0)
    {
LABEL_3:
      operator delete(*(v10 + 7472));
      if ((*(v10 + 7471) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if (*(v10 + 7495) < 0)
  {
    goto LABEL_3;
  }

  if ((*(v10 + 7471) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v10 + 7447) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  operator delete(*(v10 + 7448));
  if ((*(v10 + 7447) & 0x80000000) == 0)
  {
LABEL_6:
    sub_528FAC((v10 + 7400));
    sub_5D9FE8(a9);
    sub_53E440(v10 + 7264);
    if (*(v10 + 7263) < 0)
    {
      operator delete(*(v10 + 7240));
      if ((*(v10 + 7239) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((*(v10 + 7239) & 0x80000000) == 0)
    {
LABEL_8:
      v14 = *a10;
      if (!*a10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    operator delete(*(v10 + 7216));
    v14 = *a10;
    if (!*a10)
    {
LABEL_10:
      sub_5C1688(v10 + 2376);
      sub_559E70((v10 + 1288));
      sub_53E440(v10 + 1168);
      sub_53A868(v10 + 1000);
      sub_1A104((v10 + 976));
      sub_53A868(v10 + 816);
      sub_53A868(v10 + 656);
      sub_53A868(v10 + 496);
      sub_53A868(v10 + 336);
      sub_53A868((v11 + 5));
      sub_68B6E8(v11);
      sub_5EBF44((v10 + 24));
      sub_68F8B4(v10);
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v10 + 7184) = v14;
    operator delete(v14);
    goto LABEL_10;
  }

LABEL_5:
  operator delete(*(v10 + 7424));
  goto LABEL_6;
}

void sub_68FED0(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 1104);
      v6 = *(v3 + 1112);
      if (v5 != v6)
      {
        v7 = *(v3 + 1104);
        do
        {
          while (1)
          {
            v8 = a2[2];
            if (v4 >= v8)
            {
              break;
            }

            *v4 = v5;
            v4 += 8;
            a2[1] = v4;
            v7 += 2616;
            v5 += 2616;
            if (v7 == v6)
            {
              goto LABEL_3;
            }
          }

          v9 = v4;
          v10 = v4 >> 3;
          v11 = v10 + 1;
          if ((v10 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v8 >> 2 > v11)
          {
            v11 = v8 >> 2;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v13 = (8 * v10);
          *v13 = v5;
          v4 = (v13 + 1);
          memcpy(0, 0, v9);
          a2[1] = v4;
          a2[2] = 0;
          a2[1] = v4;
          v7 += 2616;
          v5 += 2616;
        }

        while (v7 != v6);
      }

LABEL_3:
      *a2 = 0;
      v3 += 12656;
    }

    while (v3 != v14);
  }
}

void sub_690054(_Unwind_Exception *a1)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_690078(uint64_t *a1)
{
  sub_68FED0(a1, &v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return (v2 - v1) >> 3;
}

uint64_t sub_6900C0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4) - 1;
  result = sub_394BD0();
  if (result)
  {
    v6 = (*a1 + 12656 * v4);

    return sub_69AC34(v6, a2);
  }

  else
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0x7FFFFFFF;
    *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  }

  return result;
}

void sub_690164(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    while ((sub_394BD0() & 1) != 0)
    {
      v4 += 12656;
      if (v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        goto LABEL_5;
      }
    }

    goto LABEL_11;
  }

LABEL_5:
  if (v4 != v5)
  {
    v6 = v4 + 12656;
    do
    {
      v7 = sub_4D20C0(v4, 8);
      if (v7)
      {
        break;
      }

      v4 += 12656;
      v8 = v6 == v5;
      v6 += 12656;
    }

    while (!v8);
    if (v7)
    {
LABEL_11:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0x7FFFFFFF;
      *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      return;
    }

    v4 = *a1;
    v5 = a1[1];
  }

  v9 = 0x5DDB1ADCB91F64A7 * ((v5 - v4) >> 4) - 1;
  if (sub_394BD0())
  {
    sub_69AC34((*a1 + 12656 * v9), &v42);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v42 = 0x7FFFFFFF;
    v43 = 0x7FFFFFFF7FFFFFFFLL;
  }

  v41 = 0;
  sub_690628(a1, &v36);
  sub_690890(a1, &v31);
  v19 = v36;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (v38 != v37)
  {
    if (((v38 - v37) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v40 != v39)
  {
    if (((v40 - v39) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v31;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (v33 != v32)
  {
    if (((v33 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  if (v35 != v34)
  {
    if (((v35 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_68D538(&v19, &v12, &v26);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v10 = *v26;
  v11 = sub_588E0(&v42);
  sub_446DA0(a2, v10, v11);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_690500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  sub_334D18(&a33);
  sub_334D18((v33 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_6905BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 1;
  }

  v3 = v1 + 12656;
  do
  {
    result = sub_394BD0();
    if (!result)
    {
      break;
    }

    v1 += 12656;
    v5 = v3 == v2;
    v3 += 12656;
  }

  while (!v5);
  return result;
}

uint64_t sub_690628@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0uLL;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v18 = &v14;
  v5 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  *(a2 + 16) = v16;
  v7 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  v15 = 0;
  v14 = 0uLL;
  if (v6 != v7)
  {
    v8 = v7 - v6;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v6 == *v5.i64[0])
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v6[v10 + 1];
          v13 = *(v5.i64[0] + 8 + 8 * v10++);
          if (v12 != v13)
          {
            goto LABEL_14;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      *(a2 + 8) = v10;
    }

    *a2 = v6[v10];
  }

  return result;
}

void sub_690858(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_690890@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = 0uLL;
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v10 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v8;
  *(a2 + 16) = v8;
  v6 = v9;
  *(a2 + 24) = v9;
  v8 = 0;
  v9 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3 - v2;
  memset(v7, 0, sizeof(v7));
  if (v5 != v6)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_690A64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_690A9C(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v2 - v1 < 1)
  {
    v7 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4);
    while (1)
    {
      v4 = operator new(1168 * v3, &std::nothrow);
      if (v4)
      {
        break;
      }

      v5 = v3 >> 1;
      v6 = v3 > 1;
      v3 >>= 1;
      if (!v6)
      {
        v7 = 0;
        v3 = v5;
        goto LABEL_8;
      }
    }

    v7 = v4;
  }

LABEL_8:
  sub_69694C(v1, v2, &v8, 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4), v7, v3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_690B6C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_690B84(uint64_t *a1, uint64_t a2)
{
  v3 = a1[18];
  if (v3 >= a1[19])
  {
    result = sub_692CB8(a1 + 17, a2);
    a1[18] = result;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = 0;
    *(v3 + 1136) = 0;
    if (*(a2 + 1136) == 1)
    {
      v4 = a2;
      sub_52B7D8(v3 + 16, a2 + 16);
      *(v3 + 1136) = 1;
      a2 = v4;
    }

    v5 = *(a2 + 1144);
    *(v3 + 1159) = *(a2 + 1159);
    *(v3 + 1144) = v5;
    result = v3 + 1168;
    a1[18] = v3 + 1168;
    a1[18] = v3 + 1168;
  }

  return result;
}

void sub_690C3C(_Unwind_Exception *exception_object)
{
  if (*(v3 + 1136) == 1)
  {
    sub_3A9518(v2);
  }

  *(v1 + 144) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_690C60(uint64_t *a1, uint64_t a2, int a3)
{
  sub_64E914(a1 + 22, a2, a3);
  v6 = a1[23];
  if (v6 >= a1[24])
  {
    v8 = sub_1CEE8((a1 + 22), a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[23], *a2, *(a2 + 8));
    }

    else
    {
      v7 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *v6 = v7;
    }

    v8 = v6 + 24;
    a1[23] = v6 + 24;
  }

  a1[23] = v8;
  sub_64E914((*a1 + 9456), a2, a3);
  v9 = *a1;
  v10 = *(*a1 + 9464);
  if (v10 >= *(v9 + 9472))
  {
    result = sub_1CEE8(v9 + 9456, a2);
    *(v9 + 9464) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(v10, *a2, *(a2 + 8));
    }

    else
    {
      v11 = *a2;
      *(v10 + 16) = *(a2 + 16);
      *v10 = v11;
    }

    result = v10 + 24;
    *(v9 + 9464) = v10 + 24;
    *(v9 + 9464) = v10 + 24;
  }

  return result;
}

uint64_t *sub_690D80@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11880), *(v2 + 11888), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11888) - *(v2 + 11880)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_690E18@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11856), *(v2 + 11864), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11864) - *(v2 + 11856)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_690EB0@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11928), *(v2 + 11936), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11936) - *(v2 + 11928)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_690F48@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11904), *(v2 + 11912), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11912) - *(v2 + 11904)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t sub_690FE0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[923];
  if (v3 >= a1[924])
  {
    result = sub_5DABE4(a1 + 922, a2);
    a1[923] = result;
  }

  else
  {
    sub_5DAD70(a1[923], a2);
    result = v3 + 816;
    a1[923] = v3 + 816;
    a1[923] = v3 + 816;
  }

  return result;
}

uint64_t sub_691048(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    v3 = *(v1 + 1104);
    v4 = *(v1 + 1112);
    if (v3 != v4)
    {
      goto LABEL_5;
    }

LABEL_3:
    while (1)
    {
      v1 += 12656;
      if (v1 == v2)
      {
        break;
      }

      v3 = *(v1 + 1104);
      v4 = *(v1 + 1112);
      if (v3 != v4)
      {
LABEL_5:
        while (*(v3 + 384) != 2)
        {
          v3 += 2616;
          if (v3 == v4)
          {
            goto LABEL_3;
          }
        }

        return 1;
      }
    }
  }

  return 0;
}

void **sub_6910B8(void **a1)
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
        v3 = sub_694110(v3 - 12656);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_691120(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = 2;
  *(a1 + 56) = 0x8000000080000000;
  *(a1 + 64) = 0x7FFFFFFF;
  *(a1 + 72) = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 80) = 0x7FFFFFFF;
  sub_4C6750(a2, v22);
  v4 = v22[3];
  *(a1 + 88) = v22[6];
  if (v4)
  {
    v22[4] = v4;
    operator delete(v4);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }

  v5 = sub_73EC4(a2);
  v6 = *v5;
  v7 = *(v5 + 16);
  v8 = *(v5 + 32);
  *(a1 + 136) = 0;
  *(a1 + 128) = v8;
  *(a1 + 112) = v7;
  *(a1 + 96) = v6;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 164) = -1;
  *(a1 + 168) = 0;
  sub_64B998(a1 + 176);
  sub_64B998(a1 + 336);
  sub_64B998(a1 + 496);
  sub_64B998(a1 + 656);
  sub_64B998(a1 + 816);
  *(a1 + 992) = 0;
  *(a1 + 976) = 0u;
  sub_64B998(a1 + 1000);
  *(a1 + 1160) = 0;
  *(a1 + 1200) = 0;
  *(a1 + 1208) = -1;
  *(a1 + 1211) = -1;
  *(a1 + 1223) = 0;
  *(a1 + 1231) = 0;
  *(a1 + 1215) = 0;
  *(a1 + 1239) = 0;
  *(a1 + 1248) = 0;
  *(a1 + 1264) = 0;
  *(a1 + 1256) = 0;
  *(a1 + 1272) = 0;
  *(a1 + 1280) = 0;
  sub_559C9C(a1 + 1288);
  sub_60AEEC(a1 + 2376);
  *(a1 + 7296) = 0;
  *(a1 + 7208) = 0;
  *(a1 + 7176) = 0u;
  *(a1 + 7192) = 0u;
  *(a1 + 7216) = 0u;
  *(a1 + 7232) = 0u;
  *(a1 + 7248) = 0u;
  *(a1 + 7304) = -1;
  *(a1 + 7307) = -1;
  *(a1 + 7319) = 0;
  *(a1 + 7327) = 0;
  *(a1 + 7311) = 0;
  *(a1 + 7335) = 0;
  *(a1 + 7344) = 0;
  *(a1 + 7360) = 0;
  *(a1 + 7352) = 0;
  *(a1 + 7368) = 0;
  *(a1 + 7376) = 0u;
  *(a1 + 7392) = 0u;
  *(a1 + 7408) = 0u;
  *(a1 + 7424) = 0u;
  *(a1 + 7440) = 0u;
  *(a1 + 7456) = 0u;
  *(a1 + 7472) = 0u;
  *(a1 + 7488) = 0u;
  *(a1 + 7504) = 0u;
  *(a1 + 7520) = 0u;
  *(a1 + 7536) = 0u;
  *(a1 + 7552) = 0u;
  *(a1 + 7568) = 0u;
  *(a1 + 7584) = 0u;
  *(a1 + 7600) = 0u;
  *(a1 + 7616) = 0;
  sub_64B998(a1 + 7624);
  *(a1 + 7784) = 0u;
  *(a1 + 7800) = 0;
  *(a1 + 164) = sub_4C5154(a2);
  v9 = sub_58BBC(a2);
  v10 = v9[1] - *v9;
  if (v10)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0xE21A291C077975B9 * (v10 >> 3);
    do
    {
      v14 = *sub_58BBC(a2);
      v15 = *(a1 + 8);
      if (*a1 == v15)
      {
        *(a1 + 80) = *sub_3CF22C(v14 + v11);
        v15 = *(a1 + 8);
        if (v15 >= *(a1 + 16))
        {
LABEL_11:
          v16 = sub_694AE4(a1, v14 + v11);
          goto LABEL_12;
        }
      }

      else if (v15 >= *(a1 + 16))
      {
        goto LABEL_11;
      }

      sub_69DE24(v15, v14 + v11, 0);
      v16 = v15 + 12656;
      *(a1 + 8) = v15 + 12656;
LABEL_12:
      *(a1 + 8) = v16;
      v17 = sub_68C210((a2 + 128), v12);
      v18 = *(a1 + 8) - 2528;
      if (v18 != v17)
      {
        sub_5FED44(v18, *v17, v17[1], 0xCCCCCCCCCCCCCCCDLL * ((v17[1] - *v17) >> 3));
      }

      v19 = sub_68C210((a2 + 128), v12);
      v20 = *(a1 + 8);
      if (v20 - 112 != v19 + 24)
      {
        *(v20 - 80) = *(v19 + 56);
        sub_601264(v20 - 112, *(v19 + 40), 0);
        *(v20 - 40) = *(v19 + 96);
        sub_601910(v20 - 72, *(v19 + 80), 0);
      }

      *(*(a1 + 8) - 2536) = *(sub_68C210((a2 + 128), v12++) + 104);
      v11 += 1096;
    }

    while (v13 != v12);
  }

  return a1;
}

void sub_6914CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  sub_58CF24(v10 + 7624);
  sub_5EBE9C((v10 + 7592));
  sub_5EBE9C((v10 + 7568));
  sub_5706DC((v10 + 7544));
  sub_5706DC((v10 + 7520));
  v13 = *(v10 + 7496);
  if (v13)
  {
    *(v10 + 7504) = v13;
    operator delete(v13);
    if (*(v10 + 7495) < 0)
    {
LABEL_3:
      operator delete(*(v10 + 7472));
      if ((*(v10 + 7471) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if (*(v10 + 7495) < 0)
  {
    goto LABEL_3;
  }

  if ((*(v10 + 7471) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v10 + 7447) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  operator delete(*(v10 + 7448));
  if ((*(v10 + 7447) & 0x80000000) == 0)
  {
LABEL_6:
    sub_528FAC((v10 + 7400));
    sub_5D9FE8(a9);
    sub_53E440(v10 + 7264);
    if (*(v10 + 7263) < 0)
    {
      operator delete(*(v10 + 7240));
      if ((*(v10 + 7239) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }
    }

    else if ((*(v10 + 7239) & 0x80000000) == 0)
    {
LABEL_8:
      v14 = *a10;
      if (!*a10)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    operator delete(*(v10 + 7216));
    v14 = *a10;
    if (!*a10)
    {
LABEL_10:
      sub_5C1688(v10 + 2376);
      sub_559E70((v10 + 1288));
      sub_53E440(v10 + 1168);
      sub_53A868(v10 + 1000);
      sub_1A104((v10 + 976));
      sub_53A868(v10 + 816);
      sub_53A868(v10 + 656);
      sub_53A868(v10 + 496);
      sub_53A868(v10 + 336);
      sub_53A868((v11 + 5));
      sub_68B6E8(v11);
      sub_5EBF44((v10 + 24));
      sub_6910B8(v10);
      _Unwind_Resume(a1);
    }

LABEL_9:
    *(v10 + 7184) = v14;
    operator delete(v14);
    goto LABEL_10;
  }

LABEL_5:
  operator delete(*(v10 + 7424));
  goto LABEL_6;
}

void sub_6916D4(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v14 = a1[1];
  if (*a1 != v14)
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 1104);
      v6 = *(v3 + 1112);
      if (v5 != v6)
      {
        v7 = *(v3 + 1104);
        do
        {
          while (1)
          {
            v8 = a2[2];
            if (v4 >= v8)
            {
              break;
            }

            *v4 = v5;
            v4 += 8;
            a2[1] = v4;
            v7 += 2616;
            v5 += 2616;
            if (v7 == v6)
            {
              goto LABEL_3;
            }
          }

          v9 = v4;
          v10 = v4 >> 3;
          v11 = v10 + 1;
          if ((v10 + 1) >> 61)
          {
            *a2 = 0;
            sub_1794();
          }

          if (v8 >> 2 > v11)
          {
            v11 = v8 >> 2;
          }

          if (v8 >= 0x7FFFFFFFFFFFFFF8)
          {
            v12 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          if (v12)
          {
            if (!(v12 >> 61))
            {
              operator new();
            }

            *a2 = 0;
            sub_1808();
          }

          v13 = (8 * v10);
          *v13 = v5;
          v4 = (v13 + 1);
          memcpy(0, 0, v9);
          a2[1] = v4;
          a2[2] = 0;
          a2[1] = v4;
          v7 += 2616;
          v5 += 2616;
        }

        while (v7 != v6);
      }

LABEL_3:
      *a2 = 0;
      v3 += 12656;
    }

    while (v3 != v14);
  }
}

void sub_691858(_Unwind_Exception *a1)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
  }

  _Unwind_Resume(a1);
}

uint64_t sub_69187C(uint64_t *a1)
{
  sub_6916D4(a1, &v4);
  v1 = v4;
  v2 = v5;
  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return (v2 - v1) >> 3;
}

void sub_6918C4(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1 != v5)
  {
    while ((sub_394BD0() & 1) != 0)
    {
      v4 += 12656;
      if (v4 == v5)
      {
        v4 = *a1;
        v5 = a1[1];
        goto LABEL_5;
      }
    }

    goto LABEL_11;
  }

LABEL_5:
  if (v4 != v5)
  {
    v6 = v4 + 12656;
    do
    {
      v7 = sub_4D20C0(v4, 8);
      if (v7)
      {
        break;
      }

      v4 += 12656;
      v8 = v6 == v5;
      v6 += 12656;
    }

    while (!v8);
    if (v7)
    {
LABEL_11:
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *a2 = 0x7FFFFFFF;
      *(a2 + 4) = 0x7FFFFFFF7FFFFFFFLL;
      return;
    }

    v4 = *a1;
    v5 = a1[1];
  }

  v9 = 0x5DDB1ADCB91F64A7 * ((v5 - v4) >> 4) - 1;
  if (sub_394BD0())
  {
    sub_69AC34((*a1 + 12656 * v9), &v42);
  }

  else
  {
    v44 = 0;
    v45 = 0;
    v42 = 0x7FFFFFFF;
    v43 = 0x7FFFFFFF7FFFFFFFLL;
  }

  v41 = 0;
  sub_691D1C(a1, &v36);
  sub_691F84(a1, &v31);
  v19 = v36;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if (v38 != v37)
  {
    if (((v38 - v37) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v23 = 0;
  v24 = 0;
  v25 = 0;
  if (v40 != v39)
  {
    if (((v40 - v39) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v12 = v31;
  v14 = 0;
  v15 = 0;
  v13 = 0;
  if (v33 != v32)
  {
    if (((v33 - v32) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  __p = 0;
  v17 = 0;
  v18 = 0;
  if (v35 != v34)
  {
    if (((v35 - v34) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_68D538(&v19, &v12, &v26);
  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  if (v20)
  {
    v21 = v20;
    operator delete(v20);
  }

  v10 = *v26;
  v11 = sub_588E0(&v42);
  sub_446DA0(a2, v10, v11);
  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v34)
  {
    v35 = v34;
    operator delete(v34);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }
}

void sub_691C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  sub_334D18(&a33);
  sub_334D18((v33 - 160));
  _Unwind_Resume(a1);
}

uint64_t sub_691D1C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = 0;
  v17 = 0uLL;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v18 = &v14;
  v5 = vdupq_n_s64(0);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  *(a2 + 16) = v16;
  v7 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  *(a2 + 40) = v5;
  *(a2 + 56) = 0;
  v15 = 0;
  v14 = 0uLL;
  if (v6 != v7)
  {
    v8 = v7 - v6;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v6 == *v5.i64[0])
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v6[v10 + 1];
          v13 = *(v5.i64[0] + 8 + 8 * v10++);
          if (v12 != v13)
          {
            goto LABEL_14;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_14:
      *(a2 + 8) = v10;
    }

    *a2 = v6[v10];
  }

  return result;
}

void sub_691F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_691F84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  v9 = 0uLL;
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    if (!((0x5DDB1ADCB91F64A7 * ((v3 - *a1) >> 4)) >> 61))
    {
      operator new();
    }

    sub_1794();
  }

  result = 0;
  v10 = v7;
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v8;
  *(a2 + 16) = v8;
  v6 = v9;
  *(a2 + 24) = v9;
  v8 = 0;
  v9 = 0uLL;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = v3 - v2;
  memset(v7, 0, sizeof(v7));
  if (v5 != v6)
  {
    *(a2 + 8) = -1;
    *a2 = MEMORY[0xFFFFFFFFFFFFFFF8];
  }

  return result;
}

void sub_692158(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_692190(uint64_t a1)
{
  v1 = *(a1 + 136);
  v2 = *(a1 + 144);
  if (v2 - v1 < 1)
  {
    v7 = 0;
    v3 = 0;
  }

  else
  {
    v3 = 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4);
    while (1)
    {
      v4 = operator new(1168 * v3, &std::nothrow);
      if (v4)
      {
        break;
      }

      v5 = v3 >> 1;
      v6 = v3 > 1;
      v3 >>= 1;
      if (!v6)
      {
        v7 = 0;
        v3 = v5;
        goto LABEL_8;
      }
    }

    v7 = v4;
  }

LABEL_8:
  sub_697D50(v1, v2, &v8, 0x7E3F1F8FC7E3F1F9 * ((v2 - v1) >> 4), v7, v3);
  if (v7)
  {
    operator delete(v7);
  }
}

void sub_692260(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_692278(uint64_t *a1, uint64_t a2)
{
  v3 = a1[18];
  if (v3 >= a1[19])
  {
    result = sub_692CB8(a1 + 17, a2);
    a1[18] = result;
  }

  else
  {
    *v3 = *a2;
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 16) = 0;
    *(v3 + 1136) = 0;
    if (*(a2 + 1136) == 1)
    {
      v4 = a2;
      sub_52B7D8(v3 + 16, a2 + 16);
      *(v3 + 1136) = 1;
      a2 = v4;
    }

    v5 = *(a2 + 1144);
    *(v3 + 1159) = *(a2 + 1159);
    *(v3 + 1144) = v5;
    result = v3 + 1168;
    a1[18] = v3 + 1168;
    a1[18] = v3 + 1168;
  }

  return result;
}

void sub_692330(_Unwind_Exception *exception_object)
{
  if (*(v3 + 1136) == 1)
  {
    sub_3A9518(v2);
  }

  *(v1 + 144) = v3;
  _Unwind_Resume(exception_object);
}

uint64_t sub_692354(uint64_t *a1, uint64_t a2, int a3)
{
  sub_64E914(a1 + 22, a2, a3);
  v6 = a1[23];
  if (v6 >= a1[24])
  {
    v8 = sub_1CEE8((a1 + 22), a2);
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(a1[23], *a2, *(a2 + 8));
    }

    else
    {
      v7 = *a2;
      *(v6 + 16) = *(a2 + 16);
      *v6 = v7;
    }

    v8 = v6 + 24;
    a1[23] = v6 + 24;
  }

  a1[23] = v8;
  sub_64E914((*a1 + 9456), a2, a3);
  v9 = *a1;
  v10 = *(*a1 + 9464);
  if (v10 >= *(v9 + 9472))
  {
    result = sub_1CEE8(v9 + 9456, a2);
    *(v9 + 9464) = result;
  }

  else
  {
    if (*(a2 + 23) < 0)
    {
      sub_325C(v10, *a2, *(a2 + 8));
    }

    else
    {
      v11 = *a2;
      *(v10 + 16) = *(a2 + 16);
      *v10 = v11;
    }

    result = v10 + 24;
    *(v9 + 9464) = v10 + 24;
    *(v9 + 9464) = v10 + 24;
  }

  return result;
}

uint64_t *sub_692474@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11880), *(v2 + 11888), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11888) - *(v2 + 11880)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_69250C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11856), *(v2 + 11864), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11864) - *(v2 + 11856)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_6925A4@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11928), *(v2 + 11936), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11936) - *(v2 + 11928)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

uint64_t *sub_69263C@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v2 = *result;
  v3 = result[1];
  if (*result != v3)
  {
    do
    {
      result = sub_530314(a2, a2[1], *(v2 + 11904), *(v2 + 11912), 0xCF3CF3CF3CF3CF3DLL * ((*(v2 + 11912) - *(v2 + 11904)) >> 3));
      v2 += 12656;
    }

    while (v2 != v3);
  }

  return result;
}

void ***sub_6926D4(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_17:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 4));
        if ((*(v3 - 41) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 65) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v3 - 41) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 8));
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v3 - 105) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_14;
      }

LABEL_13:
      operator delete(*(v3 - 11));
      if ((*(v3 - 105) & 0x80000000) == 0)
      {
LABEL_9:
        v5 = v3 - 20;
        if (*(v3 - 137) < 0)
        {
          goto LABEL_15;
        }

        goto LABEL_4;
      }

LABEL_14:
      operator delete(*(v3 - 16));
      v5 = v3 - 20;
      if (*(v3 - 137) < 0)
      {
LABEL_15:
        operator delete(*v5);
      }

LABEL_4:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_17;
      }
    }
  }

  return a1;
}

void sub_6927B4(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[1];
  v10 = *a1;
  *v11 = v3;
  v12 = *(a1 + 4);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *v13 = *(a1 + 40);
  v14 = *(a1 + 7);
  *(a1 + 4) = 0;
  *(a1 + 5) = 0;
  *(a1 + 6) = 0;
  *(a1 + 7) = 0;
  v4 = *(a2 + 16);
  v5 = *a2;
  *v6 = v4;
  v7 = *(a2 + 32);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *__p = *(a2 + 40);
  v9 = *(a2 + 56);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  sub_69289C(&v10, &v5, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_692880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_69289C(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v15 = 0;
  v3 = *(a1 + 16);
  v10 = *a1;
  *v11 = v3;
  v12 = *(a1 + 32);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *v13 = *(a1 + 40);
  v14 = *(a1 + 56);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = a2[1];
  v5 = *a2;
  *v6 = v4;
  v7 = *(a2 + 4);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *__p = *(a2 + 40);
  v9 = *(a2 + 7);
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 7) = 0;
  sub_692988(&v10, &v5, a3);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v6[0])
  {
    v6[1] = v6[0];
    operator delete(v6[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v11[0])
  {
    v11[1] = v11[0];
    operator delete(v11[0]);
  }
}

void sub_69296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  sub_334D18(&a9);
  sub_334D18(&a17);
  _Unwind_Resume(a1);
}

void sub_692988(__int128 *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *(a1 + 5);
  v6 = *(a1 + 6);
  v7 = a1 + 40;
  v9 = a2[5];
  v10 = a2[6];
  if (v8 == v6 || v9 == v10)
  {
    if ((v8 == v6) != (v9 == v10))
    {
      goto LABEL_10;
    }

LABEL_15:
    v15 = a1[1];
    *a3 = *a1;
    *(a3 + 16) = v15;
    v16 = *(a1 + 4);
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *(a3 + 32) = v16;
    *(a3 + 40) = v8;
    v17 = *(a1 + 7);
    *(a3 + 48) = v6;
    *(a3 + 56) = v17;
    *v7 = 0;
    *(a1 + 6) = 0;
    *(a1 + 7) = 0;
    return;
  }

  if (*(a1 + 1) == a2[1] && *a1 == *a2)
  {
    goto LABEL_15;
  }

LABEL_10:
  v12 = a1 + 1;
  v13 = *(a1 + 2);
  v29 = *a1;
  v31 = 0;
  v32 = 0;
  __p = 0;
  v14 = *(a1 + 3);
  if (v14 != v13)
  {
    if (((v14 - v13) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (v6 != v8)
  {
    if (((v6 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v18 = 0;
  v19 = 0;
LABEL_18:
  v20 = ((v19 - v18) >> 3) - 1;
  v21 = *(&v29 + 1);
  v22 = v29;
  v23 = __p + 8;
  while (1)
  {
    *&v29 = ++v22;
    if (v21 < v20)
    {
      while (v22 == *&v18[8 * v21])
      {
        v22 = *&v23[8 * v21];
        v24 = v21 + 1;
        *&v29 = v22;
        *(&v29 + 1) = v24;
        ++v21;
        if (v20 == v24)
        {
          v21 = v24;
          v25 = ((v19 - v18) >> 3) - 1;
          v26 = a2[5];
          v27 = a2[6];
          if (v18 != v19)
          {
            goto LABEL_25;
          }

          goto LABEL_29;
        }
      }
    }

    v25 = v21;
    v26 = a2[5];
    v27 = a2[6];
    if (v18 == v19)
    {
LABEL_29:
      if ((v18 == v19) == (v26 == v27))
      {
        break;
      }

      goto LABEL_30;
    }

LABEL_25:
    if (v26 == v27)
    {
      goto LABEL_29;
    }

    if (v25 == a2[1] && v22 == *a2)
    {
      break;
    }

LABEL_30:
    if (*v22 < **a1)
    {
      *a1 = v29;
      if (&v29 != a1)
      {
        sub_61532C(a1 + 2, __p, v31, (v31 - __p) >> 3);
        sub_61532C(v7, v33, v34, (v34 - v33) >> 3);
        v18 = v33;
        v19 = v34;
        goto LABEL_18;
      }
    }
  }

  v28 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v28;
  *(a3 + 32) = *(a1 + 4);
  *(a1 + 3) = 0;
  *(a1 + 4) = 0;
  *v12 = 0;
  *(a3 + 40) = *(a1 + 40);
  *(a3 + 56) = *(a1 + 7);
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  *v7 = 0;
  if (v18)
  {
    v34 = v18;
    operator delete(v18);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

void sub_692C8C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_692CB8(uint64_t *a1, uint64_t a2)
{
  v2 = 0x7E3F1F8FC7E3F1F9 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x381C0E070381C0)
  {
    sub_1794();
  }

  if (0xFC7E3F1F8FC7E3F2 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xFC7E3F1F8FC7E3F2 * ((a1[2] - *a1) >> 4);
  }

  if ((0x7E3F1F8FC7E3F1F9 * ((a1[2] - *a1) >> 4)) >= 0x1C0E070381C0E0)
  {
    v6 = 0x381C0E070381C0;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 <= 0x381C0E070381C0)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 16 * ((a1[1] - *a1) >> 4);
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  v8 = 1168 * v2;
  *(v8 + 16) = 0;
  v9 = v8 + 16;
  *(v7 + 1136) = 0;
  if (*(a2 + 1136) == 1)
  {
    sub_52B7D8(v9, a2 + 16);
    *(v7 + 1136) = 1;
  }

  *(v7 + 1144) = *(a2 + 1144);
  *(v7 + 1159) = *(a2 + 1159);
  v10 = v7 + 1168;
  v19 = v7 + 1168;
  v11 = *a1;
  v12 = a1[1];
  v13 = v7 + *a1 - v12;
  if (*a1 != v12)
  {
    v14 = 0;
    do
    {
      v16 = &v11[v14];
      v17 = v13 + v14;
      *v17 = *&v11[v14];
      *(v17 + 8) = *&v11[v14 + 8];
      *(v13 + v14 + 16) = 0;
      *(v17 + 1136) = 0;
      if (v11[v14 + 1136] == 1)
      {
        sub_529850(v13 + v14 + 16, (v16 + 16));
        *(v17 + 1136) = 1;
      }

      v15 = *(v16 + 1144);
      *(v17 + 1159) = *(v16 + 1159);
      *(v17 + 1144) = v15;
      v14 += 1168;
    }

    while (v16 + 1168 != v12);
    do
    {
      if (v11[1136] == 1)
      {
        sub_3A9518((v11 + 16));
      }

      v11 += 1168;
    }

    while (v11 != v12);
    v11 = *a1;
    v10 = v19;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

void sub_692EF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v3 + 1136) == 1)
  {
    sub_3A9518(v2);
  }

  sub_692F1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_692F1C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 1168;
      *(a1 + 16) = v2 - 1168;
      if (*(v2 - 32) == 1)
      {
        sub_3A9518(v2 - 1152);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_692F88(void **a1, uint64_t a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v5 = 0x1745D1745D1745DLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v19 = (16 * ((a1[1] - *a1) >> 4));
  sub_5139E8(v19, a2);
  v19[19] = 0;
  v19[20] = 0;
  v19[21] = 0;
  v7 = *(a2 + 152);
  v6 = *(a2 + 160);
  if (v6 != v7)
  {
    if (((v6 - v7) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = *a1;
  v9 = a1[1];
  v10 = v19 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v19 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      *(v12 + 3) = *(v11 + 3);
      v14 = *(v11 + 2);
      *(v12 + 6) = *(v11 + 6);
      *(v12 + 2) = v14;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *(v11 + 4) = 0;
      *(v12 + 7) = *(v11 + 7);
      *(v12 + 16) = *(v11 + 16);
      v15 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v12 + 72) = v15;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      *(v11 + 9) = 0;
      v16 = *(v11 + 6);
      *(v12 + 14) = *(v11 + 14);
      *(v12 + 6) = v16;
      *(v11 + 13) = 0;
      *(v11 + 14) = 0;
      *(v11 + 12) = 0;
      *(v12 + 30) = *(v11 + 30);
      v17 = *(v11 + 8);
      *(v12 + 18) = *(v11 + 18);
      *(v12 + 8) = v17;
      *(v11 + 17) = 0;
      *(v11 + 18) = 0;
      *(v11 + 16) = 0;
      *(v12 + 19) = 0;
      *(v12 + 20) = 0;
      *(v12 + 21) = 0;
      *(v12 + 152) = *(v11 + 152);
      *(v12 + 21) = *(v11 + 21);
      *(v11 + 19) = 0;
      *(v11 + 20) = 0;
      *(v11 + 21) = 0;
      v11 += 176;
      v12 += 176;
    }

    while (v11 != v9);
    do
    {
      sub_5C17B4(v8);
      v8 += 176;
    }

    while (v8 != v9);
    v8 = *a1;
  }

  *a1 = v10;
  a1[1] = v19 + 22;
  a1[2] = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v19 + 22;
}

void sub_693208(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_693248(va);
  _Unwind_Resume(a1);
}

void sub_69321C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 160) = v5;
    operator delete(v5);
  }

  sub_3E5388(v2);
  sub_693248(va);
  _Unwind_Resume(a1);
}

uint64_t sub_693248(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    sub_5C17B4(i - 176);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_69329C(unsigned int **a1, uint64_t a2)
{
  v2 = 0x70913F8BCD29C245 * ((a1[1] - *a1) >> 3) + 1;
  if (v2 > 0x3A196B1EDD80E8)
  {
    sub_1794();
  }

  if (0xE1227F179A53848ALL * ((a1[2] - *a1) >> 3) > v2)
  {
    v2 = 0xE1227F179A53848ALL * ((a1[2] - *a1) >> 3);
  }

  if ((0x70913F8BCD29C245 * ((a1[2] - *a1) >> 3)) >= 0x1D0CB58F6EC074)
  {
    v4 = 0x3A196B1EDD80E8;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0x3A196B1EDD80E8)
    {
      operator new();
    }

    sub_1808();
  }

  v5 = 8 * ((a1[1] - *a1) >> 3);
  *v5 = 0;
  *(v5 + 1120) = -1;
  v6 = *(a2 + 1120);
  if (v6 != -1)
  {
    v17 = v5;
    (off_266C0A0[v6])(&v17, a2);
    *(v5 + 1120) = v6;
  }

  v7 = v5 + 1128;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = (v5 + v10);
  if (*a1 != v9)
  {
    v12 = v5 + v10;
    v13 = *a1;
    do
    {
      *v12 = 0;
      *(v12 + 1120) = -1;
      v14 = v13[280];
      if (v14 != -1)
      {
        v17 = v12;
        (off_266C0B0[v14])(&v17, v13);
        *(v12 + 1120) = v14;
      }

      v13 += 282;
      v12 += 1128;
    }

    while (v13 != v9);
    do
    {
      v15 = v8[280];
      if (v15 != -1)
      {
        (off_266C068[v15])(&v17, v8);
      }

      v8[280] = -1;
      v8 += 282;
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

void sub_6934B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_5EBFA8(v3);
  sub_6934F8(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_6934E0(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = *a2;
  *(v2 + 8) = *(a2 + 2);
  *v2 = v3;
  return result;
}

uint64_t sub_6934F8(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 != v2)
  {
    do
    {
      v4 = v3 - 1128;
      *(a1 + 16) = v3 - 1128;
      v5 = *(v3 - 8);
      if (v5 != -1)
      {
        (off_266C068[v5])(&v7);
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

uint64_t sub_693598(uint64_t a1)
{
  v2 = *(a1 + 12624);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 12600);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 12584);
  *(a1 + 12584) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = (a1 + 11791);
  v7 = *(a1 + 12560);
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

  v9 = *(a1 + 12544);
  *(a1 + 12544) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *(a1 + 12504) = off_26696C8;
  if (*(a1 + 12535) < 0)
  {
    operator delete(*(a1 + 12512));
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
LABEL_13:
      v10 = *(a1 + 12440);
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 12472));
  v10 = *(a1 + 12440);
  if (!v10)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_23:
    v15 = *v10;
    v16 = v10[4];
    if (v16)
    {
      v10[5] = v16;
      operator delete(v16);
    }

    operator delete(v10);
    v10 = v15;
  }

  while (v15);
LABEL_17:
  v11 = *(a1 + 12424);
  *(a1 + 12424) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 12400);
  if (v12)
  {
    v13 = *(a1 + 12408);
    v14 = *(a1 + 12400);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 40);
        if (v17)
        {
          *(v13 - 32) = v17;
          operator delete(v17);
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a1 + 12400);
    }

    *(a1 + 12408) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 12376);
  if (v18)
  {
    *(a1 + 12384) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 12344);
  if (v19)
  {
    *(a1 + 12352) = v19;
    operator delete(v19);
  }

  if (*(a1 + 12343) < 0)
  {
    operator delete(*(a1 + 12320));
  }

  v20 = *(a1 + 12296);
  if (v20)
  {
    v21 = *(a1 + 12304);
    v22 = *(a1 + 12296);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(a1 + 12296);
    }

    *(a1 + 12304) = v20;
    operator delete(v22);
  }

  v23 = *(a1 + 12272);
  if (v23)
  {
    v24 = *(a1 + 12280);
    v25 = *(a1 + 12272);
    if (v24 != v23)
    {
      do
      {
        v24 -= 616;
        sub_5C2320(v24);
      }

      while (v24 != v23);
      v25 = *(a1 + 12272);
    }

    *(a1 + 12280) = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 12240);
  if (v26)
  {
    *(a1 + 12248) = v26;
    operator delete(v26);
  }

  sub_53A868(a1 + 12080);
  v27 = *(a1 + 12056);
  if (v27)
  {
    v28 = *(a1 + 12064);
    v29 = *(a1 + 12056);
    if (v28 != v27)
    {
      do
      {
        v30 = v28 - 176;
        sub_53A868(v28 - 160);
        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(a1 + 12056);
    }

    *(a1 + 12064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 12024);
  if (v31)
  {
    *(a1 + 12032) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 11984);
  if (v32)
  {
    *(a1 + 11992) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 11952);
  if (v33)
  {
    *(a1 + 11960) = v33;
    operator delete(v33);
  }

  sub_5C23C8((a1 + 11856));
  v34 = *(a1 + 11832);
  if (v34)
  {
    *(a1 + 11840) = v34;
    operator delete(v34);
  }

  if ((*(a1 + 11823) & 0x80000000) == 0)
  {
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(*(a1 + 11768));
    v35 = *(a1 + 11752);
    if (v35 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  operator delete(*(a1 + 11800));
  if (*v6 < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v35 = *(a1 + 11752);
  if (v35 != -1)
  {
LABEL_70:
    (off_266C078[v35])(&v102, a1 + 11720);
  }

LABEL_71:
  v36 = (a1 + 7463);
  *(a1 + 11752) = -1;
  sub_53A868(a1 + 11560);
  v37 = *(a1 + 11528);
  if (v37)
  {
    *(a1 + 11536) = v37;
    operator delete(v37);
  }

  sub_44FDEC(a1 + 11088);
  if ((*(a1 + 11079) & 0x80000000) == 0)
  {
    if ((*(a1 + 11047) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(*(a1 + 11024));
    v38 = *(a1 + 11008);
    if (v38 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  operator delete(*(a1 + 11056));
  if (*(a1 + 11047) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  v38 = *(a1 + 11008);
  if (v38 != -1)
  {
LABEL_79:
    (off_266C078[v38])(&v103, a1 + 10976);
  }

LABEL_80:
  *(a1 + 11008) = -1;
  sub_53A868(a1 + 10816);
  v39 = *(a1 + 10784);
  if (v39)
  {
    *(a1 + 10792) = v39;
    operator delete(v39);
  }

  sub_44FDEC(a1 + 10344);
  v40 = *(a1 + 10320);
  if (v40)
  {
    v41 = *(a1 + 10328);
    v42 = *(a1 + 10320);
    if (v41 != v40)
    {
      do
      {
        v41 -= 104;
        sub_5C24CC(v41);
      }

      while (v41 != v40);
      v42 = *(a1 + 10320);
    }

    *(a1 + 10328) = v40;
    operator delete(v42);
  }

  v43 = *(a1 + 10288);
  if (v43)
  {
    v44 = *(a1 + 10296);
    v45 = *(a1 + 10288);
    if (v44 != v43)
    {
      do
      {
        v47 = *(v44 - 48);
        if (v47)
        {
          v48 = *(v44 - 40);
          v46 = *(v44 - 48);
          if (v48 != v47)
          {
            v49 = *(v44 - 40);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v48 - 16) = v50;
                operator delete(v50);
              }

              v48 = v49;
            }

            while (v49 != v47);
            v46 = *(v44 - 48);
          }

          *(v44 - 40) = v47;
          operator delete(v46);
        }

        v44 -= 64;
      }

      while (v44 != v43);
      v45 = *(a1 + 10288);
    }

    *(a1 + 10296) = v43;
    operator delete(v45);
  }

  v52 = *(a1 + 10264);
  if (v52)
  {
    *(a1 + 10272) = v52;
    operator delete(v52);
  }

  if (*(a1 + 10247) < 0)
  {
    operator delete(*(a1 + 10224));
  }

  sub_5EC548(a1 + 10200);
  sub_5EC548(a1 + 10176);
  sub_5EC548(a1 + 10152);
  v53 = *(a1 + 10128);
  if (v53)
  {
    v54 = *(a1 + 10136);
    v55 = *(a1 + 10128);
    if (v54 != v53)
    {
      v56 = *(a1 + 10136);
      do
      {
        v58 = *(v56 - 40);
        v56 -= 40;
        v57 = v58;
        if (v58)
        {
          *(v54 - 32) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = *(a1 + 10128);
    }

    *(a1 + 10136) = v53;
    operator delete(v55);
  }

  v59 = *(a1 + 10096);
  if (v59)
  {
    v60 = *(a1 + 10104);
    v61 = *(a1 + 10096);
    if (v60 != v59)
    {
      do
      {
        v62 = *(v60 - 208);
        if (v62)
        {
          *(v60 - 200) = v62;
          operator delete(v62);
        }

        v63 = v60 - 248;
        v64 = *(v60 - 248);
        if (v64)
        {
          *(v60 - 240) = v64;
          operator delete(v64);
        }

        v60 -= 248;
      }

      while (v63 != v59);
      v61 = *(a1 + 10096);
    }

    *(a1 + 10104) = v59;
    operator delete(v61);
  }

  sub_53A868(a1 + 9936);
  sub_53A868(a1 + 9776);
  sub_53A868(a1 + 9616);
  sub_53A868(a1 + 9456);
  sub_53A868(a1 + 9296);
  sub_5936E4((a1 + 8440));
  sub_5936E4((a1 + 7584));
  v65 = *(a1 + 7560);
  if (v65)
  {
    v66 = *(a1 + 7568);
    v67 = *(a1 + 7560);
    if (v66 != v65)
    {
      do
      {
        v66 = sub_5936E4(v66 - 107);
      }

      while (v66 != v65);
      v67 = *(a1 + 7560);
    }

    *(a1 + 7568) = v65;
    operator delete(v67);
  }

  v68 = *(a1 + 7536);
  if (v68)
  {
    v69 = *(a1 + 7544);
    v70 = *(a1 + 7536);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 6);
        if (v71)
        {
          *(v69 - 5) = v71;
          operator delete(v71);
        }

        v69 -= 56;
        sub_55D550(v69);
      }

      while (v69 != v68);
      v70 = *(a1 + 7536);
    }

    *(a1 + 7544) = v68;
    operator delete(v70);
  }

  v72 = *(a1 + 7512);
  if (v72)
  {
    v73 = *(a1 + 7520);
    v74 = *(a1 + 7512);
    if (v73 != v72)
    {
      do
      {
        v73 = sub_5938B0((v73 - 140));
      }

      while (v73 != v72);
      v74 = *(a1 + 7512);
    }

    *(a1 + 7520) = v72;
    operator delete(v74);
  }

  v75 = *(a1 + 7488);
  if (v75)
  {
    v76 = *(a1 + 7496);
    v77 = *(a1 + 7488);
    if (v76 != v75)
    {
      do
      {
        v78 = *(v76 - 1);
        v76 -= 3;
        if (v78 < 0)
        {
          operator delete(*v76);
        }
      }

      while (v76 != v75);
      v77 = *(a1 + 7488);
    }

    *(a1 + 7496) = v75;
    operator delete(v77);
  }

  if (*(a1 + 7487) < 0)
  {
    operator delete(*(a1 + 7464));
    if ((*v36 & 0x80000000) == 0)
    {
LABEL_151:
      v79 = *(a1 + 7416);
      if (!v79)
      {
        goto LABEL_152;
      }

      goto LABEL_191;
    }
  }

  else if ((*v36 & 0x80000000) == 0)
  {
    goto LABEL_151;
  }

  operator delete(*(a1 + 7440));
  v79 = *(a1 + 7416);
  if (!v79)
  {
LABEL_152:
    v80 = *(a1 + 7392);
    if (!v80)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_191:
  v100 = *(a1 + 7424);
  v101 = v79;
  if (v100 != v79)
  {
    do
    {
      v100 = sub_3A9518(v100 - 1120);
    }

    while (v100 != v79);
    v101 = *(a1 + 7416);
  }

  *(a1 + 7424) = v79;
  operator delete(v101);
  v80 = *(a1 + 7392);
  if (v80)
  {
LABEL_153:
    *(a1 + 7400) = v80;
    operator delete(v80);
  }

LABEL_154:
  sub_53A868(a1 + 7232);
  v81 = *(a1 + 7208);
  if (v81)
  {
    v82 = *(a1 + 7216);
    v83 = *(a1 + 7208);
    if (v82 != v81)
    {
      do
      {
        v84 = *(v82 - 1);
        v82 -= 3;
        if (v84 < 0)
        {
          operator delete(*v82);
        }
      }

      while (v82 != v81);
      v83 = *(a1 + 7208);
    }

    *(a1 + 7216) = v81;
    operator delete(v83);
  }

  sub_5C1688(a1 + 2408);
  sub_559E70((a1 + 1320));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
    if ((*(a1 + 1295) & 0x80000000) == 0)
    {
LABEL_164:
      sub_6926D4((a1 + 1248));
      v85 = *(a1 + 1224);
      if (!v85)
      {
        goto LABEL_166;
      }

      goto LABEL_165;
    }
  }

  else if ((*(a1 + 1295) & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

  operator delete(*(a1 + 1272));
  sub_6926D4((a1 + 1248));
  v85 = *(a1 + 1224);
  if (v85)
  {
LABEL_165:
    *(a1 + 1232) = v85;
    operator delete(v85);
  }

LABEL_166:
  v86 = *(a1 + 1200);
  if (v86)
  {
    *(a1 + 1208) = v86;
    operator delete(v86);
  }

  v87 = *(a1 + 1176);
  if (v87)
  {
    v88 = *(a1 + 1184);
    v89 = *(a1 + 1176);
    if (v88 != v87)
    {
      do
      {
        v88 -= 176;
        sub_5C17B4(v88);
      }

      while (v88 != v87);
      v89 = *(a1 + 1176);
    }

    *(a1 + 1184) = v87;
    operator delete(v89);
  }

  v90 = *(a1 + 1152);
  if (v90)
  {
    v91 = *(a1 + 1160);
    v92 = *(a1 + 1152);
    if (v91 != v90)
    {
      do
      {
        v91 -= 176;
        sub_5C17B4(v91);
      }

      while (v91 != v90);
      v92 = *(a1 + 1152);
    }

    *(a1 + 1160) = v90;
    operator delete(v92);
  }

  v93 = *(a1 + 1128);
  if (v93)
  {
    v94 = *(a1 + 1136);
    v95 = *(a1 + 1128);
    if (v94 != v93)
    {
      do
      {
        v94 = sub_5C25A8(v94 - 2616);
      }

      while (v94 != v93);
      v95 = *(a1 + 1128);
    }

    *(a1 + 1136) = v93;
    operator delete(v95);
  }

  v96 = *(a1 + 1104);
  if (v96)
  {
    v97 = *(a1 + 1112);
    v98 = *(a1 + 1104);
    if (v97 != v96)
    {
      do
      {
        v97 = sub_5C25A8(v97 - 2616);
      }

      while (v97 != v96);
      v98 = *(a1 + 1104);
    }

    *(a1 + 1112) = v96;
    operator delete(v98);
  }

  return sub_3EEA68(a1);
}

uint64_t sub_693F0C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 12656;
    sub_693598(i - 12656);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_693F6C(uint64_t *a1, uint64_t a2)
{
  v2 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x52DA224E52346)
  {
    sub_1794();
  }

  if (0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4)) >= 0x296D1127291A3)
  {
    v5 = 0x52DA224E52346;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x52DA224E52346)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_69A180(v15, a2, 0);
  v6 = 12656 * v2 + 12656;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_60F014(v12, v11);
      v11 += 12656;
      v12 = v13 + 12656;
    }

    while (v11 != v8);
    do
    {
      sub_693598(v7);
      v7 += 12656;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_6940FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_693F0C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_694110(uint64_t a1)
{
  v2 = *(a1 + 12624);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 12600);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 12584);
  *(a1 + 12584) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = (a1 + 11791);
  v7 = *(a1 + 12560);
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

  v9 = *(a1 + 12544);
  *(a1 + 12544) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  *(a1 + 12504) = off_26696C8;
  if (*(a1 + 12535) < 0)
  {
    operator delete(*(a1 + 12512));
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
LABEL_13:
      v10 = *(a1 + 12440);
      if (!v10)
      {
        goto LABEL_17;
      }

      goto LABEL_23;
    }
  }

  else
  {
    *(a1 + 12464) = off_26696C8;
    if ((*(a1 + 12495) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  operator delete(*(a1 + 12472));
  v10 = *(a1 + 12440);
  if (!v10)
  {
    goto LABEL_17;
  }

  do
  {
LABEL_23:
    v15 = *v10;
    v16 = v10[4];
    if (v16)
    {
      v10[5] = v16;
      operator delete(v16);
    }

    operator delete(v10);
    v10 = v15;
  }

  while (v15);
LABEL_17:
  v11 = *(a1 + 12424);
  *(a1 + 12424) = 0;
  if (v11)
  {
    operator delete(v11);
  }

  v12 = *(a1 + 12400);
  if (v12)
  {
    v13 = *(a1 + 12408);
    v14 = *(a1 + 12400);
    if (v13 != v12)
    {
      do
      {
        v17 = *(v13 - 40);
        if (v17)
        {
          *(v13 - 32) = v17;
          operator delete(v17);
        }

        v13 -= 48;
      }

      while (v13 != v12);
      v14 = *(a1 + 12400);
    }

    *(a1 + 12408) = v12;
    operator delete(v14);
  }

  v18 = *(a1 + 12376);
  if (v18)
  {
    *(a1 + 12384) = v18;
    operator delete(v18);
  }

  v19 = *(a1 + 12344);
  if (v19)
  {
    *(a1 + 12352) = v19;
    operator delete(v19);
  }

  if (*(a1 + 12343) < 0)
  {
    operator delete(*(a1 + 12320));
  }

  v20 = *(a1 + 12296);
  if (v20)
  {
    v21 = *(a1 + 12304);
    v22 = *(a1 + 12296);
    if (v21 != v20)
    {
      do
      {
        if (*(v21 - 1) < 0)
        {
          operator delete(*(v21 - 24));
        }

        v21 -= 40;
      }

      while (v21 != v20);
      v22 = *(a1 + 12296);
    }

    *(a1 + 12304) = v20;
    operator delete(v22);
  }

  v23 = *(a1 + 12272);
  if (v23)
  {
    v24 = *(a1 + 12280);
    v25 = *(a1 + 12272);
    if (v24 != v23)
    {
      do
      {
        v24 -= 616;
        sub_5C2320(v24);
      }

      while (v24 != v23);
      v25 = *(a1 + 12272);
    }

    *(a1 + 12280) = v23;
    operator delete(v25);
  }

  v26 = *(a1 + 12240);
  if (v26)
  {
    *(a1 + 12248) = v26;
    operator delete(v26);
  }

  sub_53A868(a1 + 12080);
  v27 = *(a1 + 12056);
  if (v27)
  {
    v28 = *(a1 + 12064);
    v29 = *(a1 + 12056);
    if (v28 != v27)
    {
      do
      {
        v30 = v28 - 176;
        sub_53A868(v28 - 160);
        v28 = v30;
      }

      while (v30 != v27);
      v29 = *(a1 + 12056);
    }

    *(a1 + 12064) = v27;
    operator delete(v29);
  }

  v31 = *(a1 + 12024);
  if (v31)
  {
    *(a1 + 12032) = v31;
    operator delete(v31);
  }

  v32 = *(a1 + 11984);
  if (v32)
  {
    *(a1 + 11992) = v32;
    operator delete(v32);
  }

  v33 = *(a1 + 11952);
  if (v33)
  {
    *(a1 + 11960) = v33;
    operator delete(v33);
  }

  sub_5C23C8((a1 + 11856));
  v34 = *(a1 + 11832);
  if (v34)
  {
    *(a1 + 11840) = v34;
    operator delete(v34);
  }

  if ((*(a1 + 11823) & 0x80000000) == 0)
  {
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_66;
    }

LABEL_69:
    operator delete(*(a1 + 11768));
    v35 = *(a1 + 11752);
    if (v35 == -1)
    {
      goto LABEL_71;
    }

    goto LABEL_70;
  }

  operator delete(*(a1 + 11800));
  if (*v6 < 0)
  {
    goto LABEL_69;
  }

LABEL_66:
  v35 = *(a1 + 11752);
  if (v35 != -1)
  {
LABEL_70:
    (off_266C078[v35])(&v102, a1 + 11720);
  }

LABEL_71:
  v36 = (a1 + 7463);
  *(a1 + 11752) = -1;
  sub_53A868(a1 + 11560);
  v37 = *(a1 + 11528);
  if (v37)
  {
    *(a1 + 11536) = v37;
    operator delete(v37);
  }

  sub_44FDEC(a1 + 11088);
  if ((*(a1 + 11079) & 0x80000000) == 0)
  {
    if ((*(a1 + 11047) & 0x80000000) == 0)
    {
      goto LABEL_75;
    }

LABEL_78:
    operator delete(*(a1 + 11024));
    v38 = *(a1 + 11008);
    if (v38 == -1)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  operator delete(*(a1 + 11056));
  if (*(a1 + 11047) < 0)
  {
    goto LABEL_78;
  }

LABEL_75:
  v38 = *(a1 + 11008);
  if (v38 != -1)
  {
LABEL_79:
    (off_266C078[v38])(&v103, a1 + 10976);
  }

LABEL_80:
  *(a1 + 11008) = -1;
  sub_53A868(a1 + 10816);
  v39 = *(a1 + 10784);
  if (v39)
  {
    *(a1 + 10792) = v39;
    operator delete(v39);
  }

  sub_44FDEC(a1 + 10344);
  v40 = *(a1 + 10320);
  if (v40)
  {
    v41 = *(a1 + 10328);
    v42 = *(a1 + 10320);
    if (v41 != v40)
    {
      do
      {
        v41 -= 104;
        sub_5C24CC(v41);
      }

      while (v41 != v40);
      v42 = *(a1 + 10320);
    }

    *(a1 + 10328) = v40;
    operator delete(v42);
  }

  v43 = *(a1 + 10288);
  if (v43)
  {
    v44 = *(a1 + 10296);
    v45 = *(a1 + 10288);
    if (v44 != v43)
    {
      do
      {
        v47 = *(v44 - 48);
        if (v47)
        {
          v48 = *(v44 - 40);
          v46 = *(v44 - 48);
          if (v48 != v47)
          {
            v49 = *(v44 - 40);
            do
            {
              v51 = *(v49 - 24);
              v49 -= 24;
              v50 = v51;
              if (v51)
              {
                *(v48 - 16) = v50;
                operator delete(v50);
              }

              v48 = v49;
            }

            while (v49 != v47);
            v46 = *(v44 - 48);
          }

          *(v44 - 40) = v47;
          operator delete(v46);
        }

        v44 -= 64;
      }

      while (v44 != v43);
      v45 = *(a1 + 10288);
    }

    *(a1 + 10296) = v43;
    operator delete(v45);
  }

  v52 = *(a1 + 10264);
  if (v52)
  {
    *(a1 + 10272) = v52;
    operator delete(v52);
  }

  if (*(a1 + 10247) < 0)
  {
    operator delete(*(a1 + 10224));
  }

  sub_5EC548(a1 + 10200);
  sub_5EC548(a1 + 10176);
  sub_5EC548(a1 + 10152);
  v53 = *(a1 + 10128);
  if (v53)
  {
    v54 = *(a1 + 10136);
    v55 = *(a1 + 10128);
    if (v54 != v53)
    {
      v56 = *(a1 + 10136);
      do
      {
        v58 = *(v56 - 40);
        v56 -= 40;
        v57 = v58;
        if (v58)
        {
          *(v54 - 32) = v57;
          operator delete(v57);
        }

        v54 = v56;
      }

      while (v56 != v53);
      v55 = *(a1 + 10128);
    }

    *(a1 + 10136) = v53;
    operator delete(v55);
  }

  v59 = *(a1 + 10096);
  if (v59)
  {
    v60 = *(a1 + 10104);
    v61 = *(a1 + 10096);
    if (v60 != v59)
    {
      do
      {
        v62 = *(v60 - 208);
        if (v62)
        {
          *(v60 - 200) = v62;
          operator delete(v62);
        }

        v63 = v60 - 248;
        v64 = *(v60 - 248);
        if (v64)
        {
          *(v60 - 240) = v64;
          operator delete(v64);
        }

        v60 -= 248;
      }

      while (v63 != v59);
      v61 = *(a1 + 10096);
    }

    *(a1 + 10104) = v59;
    operator delete(v61);
  }

  sub_53A868(a1 + 9936);
  sub_53A868(a1 + 9776);
  sub_53A868(a1 + 9616);
  sub_53A868(a1 + 9456);
  sub_53A868(a1 + 9296);
  sub_5936E4((a1 + 8440));
  sub_5936E4((a1 + 7584));
  v65 = *(a1 + 7560);
  if (v65)
  {
    v66 = *(a1 + 7568);
    v67 = *(a1 + 7560);
    if (v66 != v65)
    {
      do
      {
        v66 = sub_5936E4(v66 - 107);
      }

      while (v66 != v65);
      v67 = *(a1 + 7560);
    }

    *(a1 + 7568) = v65;
    operator delete(v67);
  }

  v68 = *(a1 + 7536);
  if (v68)
  {
    v69 = *(a1 + 7544);
    v70 = *(a1 + 7536);
    if (v69 != v68)
    {
      do
      {
        v71 = *(v69 - 6);
        if (v71)
        {
          *(v69 - 5) = v71;
          operator delete(v71);
        }

        v69 -= 56;
        sub_55D550(v69);
      }

      while (v69 != v68);
      v70 = *(a1 + 7536);
    }

    *(a1 + 7544) = v68;
    operator delete(v70);
  }

  v72 = *(a1 + 7512);
  if (v72)
  {
    v73 = *(a1 + 7520);
    v74 = *(a1 + 7512);
    if (v73 != v72)
    {
      do
      {
        v73 = sub_5938B0((v73 - 140));
      }

      while (v73 != v72);
      v74 = *(a1 + 7512);
    }

    *(a1 + 7520) = v72;
    operator delete(v74);
  }

  v75 = *(a1 + 7488);
  if (v75)
  {
    v76 = *(a1 + 7496);
    v77 = *(a1 + 7488);
    if (v76 != v75)
    {
      do
      {
        v78 = *(v76 - 1);
        v76 -= 3;
        if (v78 < 0)
        {
          operator delete(*v76);
        }
      }

      while (v76 != v75);
      v77 = *(a1 + 7488);
    }

    *(a1 + 7496) = v75;
    operator delete(v77);
  }

  if (*(a1 + 7487) < 0)
  {
    operator delete(*(a1 + 7464));
    if ((*v36 & 0x80000000) == 0)
    {
LABEL_151:
      v79 = *(a1 + 7416);
      if (!v79)
      {
        goto LABEL_152;
      }

      goto LABEL_191;
    }
  }

  else if ((*v36 & 0x80000000) == 0)
  {
    goto LABEL_151;
  }

  operator delete(*(a1 + 7440));
  v79 = *(a1 + 7416);
  if (!v79)
  {
LABEL_152:
    v80 = *(a1 + 7392);
    if (!v80)
    {
      goto LABEL_154;
    }

    goto LABEL_153;
  }

LABEL_191:
  v100 = *(a1 + 7424);
  v101 = v79;
  if (v100 != v79)
  {
    do
    {
      v100 = sub_3A9518(v100 - 1120);
    }

    while (v100 != v79);
    v101 = *(a1 + 7416);
  }

  *(a1 + 7424) = v79;
  operator delete(v101);
  v80 = *(a1 + 7392);
  if (v80)
  {
LABEL_153:
    *(a1 + 7400) = v80;
    operator delete(v80);
  }

LABEL_154:
  sub_53A868(a1 + 7232);
  v81 = *(a1 + 7208);
  if (v81)
  {
    v82 = *(a1 + 7216);
    v83 = *(a1 + 7208);
    if (v82 != v81)
    {
      do
      {
        v84 = *(v82 - 1);
        v82 -= 3;
        if (v84 < 0)
        {
          operator delete(*v82);
        }
      }

      while (v82 != v81);
      v83 = *(a1 + 7208);
    }

    *(a1 + 7216) = v81;
    operator delete(v83);
  }

  sub_5C1688(a1 + 2408);
  sub_559E70((a1 + 1320));
  if (*(a1 + 1319) < 0)
  {
    operator delete(*(a1 + 1296));
    if ((*(a1 + 1295) & 0x80000000) == 0)
    {
LABEL_164:
      sub_6926D4((a1 + 1248));
      v85 = *(a1 + 1224);
      if (!v85)
      {
        goto LABEL_166;
      }

      goto LABEL_165;
    }
  }

  else if ((*(a1 + 1295) & 0x80000000) == 0)
  {
    goto LABEL_164;
  }

  operator delete(*(a1 + 1272));
  sub_6926D4((a1 + 1248));
  v85 = *(a1 + 1224);
  if (v85)
  {
LABEL_165:
    *(a1 + 1232) = v85;
    operator delete(v85);
  }

LABEL_166:
  v86 = *(a1 + 1200);
  if (v86)
  {
    *(a1 + 1208) = v86;
    operator delete(v86);
  }

  v87 = *(a1 + 1176);
  if (v87)
  {
    v88 = *(a1 + 1184);
    v89 = *(a1 + 1176);
    if (v88 != v87)
    {
      do
      {
        v88 -= 176;
        sub_5C17B4(v88);
      }

      while (v88 != v87);
      v89 = *(a1 + 1176);
    }

    *(a1 + 1184) = v87;
    operator delete(v89);
  }

  v90 = *(a1 + 1152);
  if (v90)
  {
    v91 = *(a1 + 1160);
    v92 = *(a1 + 1152);
    if (v91 != v90)
    {
      do
      {
        v91 -= 176;
        sub_5C17B4(v91);
      }

      while (v91 != v90);
      v92 = *(a1 + 1152);
    }

    *(a1 + 1160) = v90;
    operator delete(v92);
  }

  v93 = *(a1 + 1128);
  if (v93)
  {
    v94 = *(a1 + 1136);
    v95 = *(a1 + 1128);
    if (v94 != v93)
    {
      do
      {
        v94 = sub_5C25A8(v94 - 2616);
      }

      while (v94 != v93);
      v95 = *(a1 + 1128);
    }

    *(a1 + 1136) = v93;
    operator delete(v95);
  }

  v96 = *(a1 + 1104);
  if (v96)
  {
    v97 = *(a1 + 1112);
    v98 = *(a1 + 1104);
    if (v97 != v96)
    {
      do
      {
        v97 = sub_5C25A8(v97 - 2616);
      }

      while (v97 != v96);
      v98 = *(a1 + 1104);
    }

    *(a1 + 1112) = v96;
    operator delete(v98);
  }

  return sub_3EEA68(a1);
}

uint64_t sub_694A84(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 12656;
    sub_694110(i - 12656);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_694AE4(uint64_t *a1, uint64_t a2)
{
  v2 = 0x5DDB1ADCB91F64A7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x52DA224E52346)
  {
    sub_1794();
  }

  if (0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xBBB635B9723EC94ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x5DDB1ADCB91F64A7 * ((a1[2] - *a1) >> 4)) >= 0x296D1127291A3)
  {
    v5 = 0x52DA224E52346;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x52DA224E52346)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 16 * ((a1[1] - *a1) >> 4);
  sub_69DE24(v15, a2, 0);
  v6 = 12656 * v2 + 12656;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (v8 != *a1)
  {
    v11 = *a1;
    v12 = v15 + v9;
    do
    {
      v13 = sub_60F014(v12, v11);
      v11 += 12656;
      v12 = v13 + 12656;
    }

    while (v11 != v8);
    do
    {
      sub_694110(v7);
      v7 += 12656;
    }

    while (v7 != v8);
    v7 = *a1;
  }

  *a1 = v10;
  a1[1] = v6;
  a1[2] = 0;
  if (v7)
  {
    operator delete(v7);
  }

  return v6;
}

void sub_694C74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_694A84(va);
  _Unwind_Resume(a1);
}

void sub_694C88(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 292);
      v8 = sub_7FD764(a2 - 292);
      if (v8 > sub_7FD764(a1))
      {

        sub_695B8C(a1, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_694ECC(a1, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &a1[292 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_69511C(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = &a5[292 * v10];
        sub_69511C(v11, a2, a3, v19, v20);
        sub_69541C(a5, v20, v20, &a5[292 * a4], a1);
        if (a5)
        {
          v21 = a4;
          v22 = 0;
          v23 = a5 + 284;
          do
          {
            if (*v23 == 1)
            {
              sub_3A9518((v23 - 1120));
              v21 = a4;
            }

            ++v22;
            v23 += 1168;
          }

          while (v22 < v21);
        }
      }

      else
      {
        sub_694C88(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_694C88(v11, a2, a3, v16, a5, a6);

        sub_69573C(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_694EB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_694ECC(uint64_t result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 1168);
    if ((result + 1168) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = sub_7FD764(v4);
        result = sub_7FD764(v6);
        if (v8 > result)
        {
          v9 = *(v6 + 1176);
          v21 = *v7;
          v22 = v9;
          v23[0] = 0;
          v24 = 0;
          if (*(v6 + 2304) == 1)
          {
            result = sub_529850(v23, v6 + 1184);
            v24 = 1;
          }

          v25[0] = *(v6 + 2312);
          *(v25 + 15) = *(v6 + 2327);
          v10 = v5;
          while (1)
          {
            v11 = v3 + v10;
            *(v11 + 1168) = *(v3 + v10);
            *(v11 + 1176) = *(v3 + v10 + 8);
            if (*(v3 + v10 + 2304) == *(v3 + v10 + 1136))
            {
              if (*(v3 + v10 + 2304))
              {
                result = sub_52BE74(v11 + 1184, v11 + 16);
              }
            }

            else
            {
              v12 = v11 + 1184;
              if (*(v3 + v10 + 2304))
              {
                result = sub_3A9518(v12);
                *(v11 + 2304) = 0;
              }

              else
              {
                result = sub_529850(v12, v11 + 16);
                *(v11 + 2304) = 1;
              }
            }

            v13 = v3 + v10;
            v14 = v3 + v10 + 2312;
            v15 = v3 + v10 + 1144;
            *v14 = *v15;
            *(v14 + 15) = *(v3 + v10 + 1159);
            if (!v10)
            {
              break;
            }

            v16 = sub_7FD764(&v21);
            result = sub_7FD764((v13 - 1168));
            v10 -= 1168;
            if (v16 <= result)
            {
              v17 = v3 + v10 + 1168;
              goto LABEL_19;
            }
          }

          v17 = v3;
LABEL_19:
          v18 = v22;
          *v17 = v21;
          *(v17 + 8) = v18;
          if (*(v17 + 1136) == v24)
          {
            if (*(v17 + 1136))
            {
              result = sub_52BE74(v13 + 16, v23);
            }
          }

          else
          {
            v19 = v13 + 16;
            if (*(v17 + 1136))
            {
              result = sub_3A9518(v19);
              *(v17 + 1136) = 0;
            }

            else
            {
              result = sub_529850(v19, v23);
              *(v17 + 1136) = 1;
            }
          }

          v20 = v25[0];
          *(v15 + 15) = *(v25 + 15);
          *v15 = v20;
          if (v24 == 1)
          {
            result = sub_3A9518(v23);
          }
        }

        v4 = v7 + 292;
        v5 += 1168;
        v6 = v7;
      }

      while (v7 + 292 != a2);
    }
  }

  return result;
}

void sub_69511C(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = a2 - 292;
      v10 = sub_7FD764(a2 - 292);
      if (v10 <= sub_7FD764(a1))
      {
        *a5 = *a1;
        *(a5 + 8) = *(a1 + 8);
        *(a5 + 16) = 0;
        *(a5 + 1136) = 0;
        if (*(a1 + 1136) == 1)
        {
          sub_529850(a5 + 16, a1 + 16);
          *(a5 + 1136) = 1;
        }

        v18 = *(a1 + 1144);
        *(a5 + 1159) = *(a1 + 1159);
        *(a5 + 1144) = v18;
        *(a5 + 1168) = *v9;
        *(a5 + 1176) = *(a2 - 290);
        *(a5 + 1184) = 0;
        *(a5 + 2304) = 0;
        if (*(a2 - 32) == 1)
        {
          sub_529850(a5 + 1184, (a2 - 288));
          *(a5 + 2304) = 1;
        }

        v8 = a5 + 2312;
        v12 = *(a2 - 6);
        v13 = *(a2 - 9);
        goto LABEL_26;
      }

      *a5 = *v9;
      *(a5 + 8) = *(a2 - 290);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a2 - 32) == 1)
      {
        sub_529850(a5 + 16, (a2 - 288));
        *(a5 + 1136) = 1;
      }

      v11 = *(a2 - 6);
      *(a5 + 1159) = *(a2 - 9);
      *(a5 + 1144) = v11;
      *(a5 + 1168) = *a1;
      *(a5 + 1176) = *(a1 + 8);
      *(a5 + 1184) = 0;
      *(a5 + 2304) = 0;
      if (*(a1 + 1136) == 1)
      {
        sub_529850(a5 + 1184, a1 + 16);
        *(a5 + 2304) = 1;
      }

      v8 = a5 + 2312;
LABEL_13:
      v12 = *(a1 + 1144);
      v13 = *(a1 + 1159);
LABEL_26:
      *(v8 + 15) = v13;
      *v8 = v12;
      return;
    }

    if (a4 == 1)
    {
      *a5 = *a1;
      *(a5 + 8) = *(a1 + 8);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a1 + 1136) == 1)
      {
        sub_529850(a5 + 16, a1 + 16);
        *(a5 + 1136) = 1;
      }

      v8 = a5 + 1144;
      goto LABEL_13;
    }

    if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 1168 * (a4 >> 1);
      sub_694C88(a1, v15 + a1, a3, v14, a5, v14);
      sub_694C88(v15 + a1, a2, a3, a4 - v14, a5 + v15, a4 - v14);

      sub_696034(a1, v15 + a1, v15 + a1, a2, a5);
    }

    else
    {

      sub_695D04(a1, a2, a5);
    }
  }
}

void sub_695408(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_69541C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a2)
  {
LABEL_19:
    if (a3 != a4)
    {
      v14 = a3 + 16;
      do
      {
        v15 = v14 - 16;
        *a5 = *(v14 - 16);
        *(a5 + 8) = *(v14 - 8);
        if (*(a5 + 1136) == *(v14 + 1120))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v14);
          }
        }

        else
        {
          v16 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v16);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v16, v14);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v14 + 1128);
        *(a5 + 1159) = *(v14 + 1143);
        *(a5 + 1144) = result;
        a5 += 1168;
        v14 += 1168;
      }

      while (v15 + 1168 != a4);
    }
  }

  else
  {
    v9 = a1;
    while (a3 != a4)
    {
      v11 = sub_7FD764(a3);
      if (v11 <= sub_7FD764(v9))
      {
        *a5 = *v9;
        *(a5 + 8) = *(v9 + 8);
        if (*(a5 + 1136) == *(v9 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v9 + 16);
          }
        }

        else
        {
          v13 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v13);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v13, v9 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v9 + 1144);
        *(a5 + 1159) = *(v9 + 1159);
        *(a5 + 1144) = result;
        v9 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          goto LABEL_19;
        }
      }

      else
      {
        *a5 = *a3;
        *(a5 + 8) = *(a3 + 8);
        if (*(a5 + 1136) == *(a3 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, a3 + 16);
          }
        }

        else
        {
          v12 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v12);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v12, a3 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(a3 + 1144);
        *(a5 + 1159) = *(a3 + 1159);
        *(a5 + 1144) = result;
        a3 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          goto LABEL_19;
        }
      }
    }

    if (v9 != a2)
    {
      v17 = v9 + 16;
      do
      {
        v18 = v17 - 16;
        *a5 = *(v17 - 16);
        *(a5 + 8) = *(v17 - 8);
        if (*(a5 + 1136) == *(v17 + 1120))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v17);
          }
        }

        else
        {
          v19 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v19);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, v17);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v17 + 1128);
        *(a5 + 1159) = *(v17 + 1143);
        *(a5 + 1144) = result;
        a5 += 1168;
        v17 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

uint64_t *sub_6956C0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 1136);
      do
      {
        if (*v6 == 1)
        {
          sub_3A9518((v6 - 1120));
          v4 = *v3;
        }

        ++v5;
        v6 += 1168;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

void sub_69573C(char *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v49 = a6;
  if (!a6)
  {
    return;
  }

  while (v49 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = &a1[v13];
      v16 = sub_7FD764(a2);
      if (v16 > sub_7FD764(&a1[v13]))
      {
        break;
      }

      v13 += 1168;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v18 = -v14;
    v19 = v49;
    v46 = a8;
    v47 = a3;
    if (-v14 >= v49)
    {
      if (v14 == -1)
      {

        sub_695B8C(&a1[v13], a2);
        return;
      }

      v25 = v18 / 2;
      v22 = &a1[1168 * (v18 / 2) + v13];
      v27 = a3;
      v21 = a2;
      if (a2 != v27)
      {
        v42 = v25;
        v44 = a7;
        v28 = 0x7E3F1F8FC7E3F1F9 * ((v47 - a2) >> 4);
        v21 = a2;
        do
        {
          v29 = &v21[292 * (v28 >> 1)];
          v30 = sub_7FD764(v29);
          v31 = sub_7FD764(v22);
          if (v30 <= v31)
          {
            v28 >>= 1;
          }

          else
          {
            v28 += ~(v28 >> 1);
          }

          if (v30 > v31)
          {
            v21 = v29 + 292;
          }
        }

        while (v28);
        v25 = v42;
        a7 = v44;
        v19 = v49;
      }

      v20 = 0x7E3F1F8FC7E3F1F9 * ((v21 - a2) >> 4);
      v26 = v21;
      if (a2 != v22)
      {
LABEL_31:
        v26 = v22;
        if (a2 != v21)
        {
          v45 = v20;
          v43 = v25;
          sub_695B8C(v22, a2);
          v26 = (v22 + 292);
          for (i = (a2 + 292); i != v21; i += 1168)
          {
            if (v26 == a2)
            {
              a2 = i;
            }

            sub_695B8C(v26, i);
            v26 += 1168;
          }

          if (v26 != a2)
          {
            v33 = v26;
            v34 = a2;
            while (1)
            {
              sub_695B8C(v33, v34);
              v34 += 1168;
              v35 = v33 + 1168 == a2;
              if (v34 == v21)
              {
                if ((v33 + 1168) == a2)
                {
                  break;
                }

                v34 = (a2 + 292);
                v33 += 2336;
                while (1)
                {
                  sub_695B8C(v33 - 1168, a2);
                  v35 = v33 == a2;
                  if (v34 != v21)
                  {
                    break;
                  }

                  v36 = v33 == a2;
                  v33 += 1168;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v33 += 1168;
              }

              if (v35)
              {
                a2 = v34;
              }
            }
          }

LABEL_48:
          v19 = v49;
          v25 = v43;
          v20 = v45;
        }
      }
    }

    else
    {
      v20 = v49 / 2;
      v21 = &a2[292 * (v49 / 2)];
      v22 = a2;
      if (a2 - a1 != v13)
      {
        v23 = 0x7E3F1F8FC7E3F1F9 * ((a2 - a1 - v13) >> 4);
        v22 = &a1[v13];
        do
        {
          v24 = sub_7FD764(v21);
          if (v24 > sub_7FD764(&v22[292 * (v23 >> 1)]))
          {
            v23 >>= 1;
          }

          else
          {
            v22 += 292 * (v23 >> 1) + 292;
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v20 = v49 / 2;
        v19 = v49;
      }

      v25 = 0x7E3F1F8FC7E3F1F9 * ((v22 - a1 - v13) >> 4);
      v26 = &a2[292 * (v49 / 2)];
      if (a2 != v22)
      {
        goto LABEL_31;
      }
    }

    a5 = -(v25 + v14);
    v37 = v19 - v20;
    if (v25 + v20 >= v19 - (v25 + v20) - v14)
    {
      v39 = v25;
      v40 = -(v25 + v14);
      v41 = v20;
      sub_69573C(v26, v21, v47, a4, v40, v19 - v20, a7, v46);
      a2 = v22;
      a8 = v46;
      a5 = v39;
      a3 = v26;
      v49 = v41;
      a1 = v15;
      if (!v41)
      {
        return;
      }
    }

    else
    {
      v38 = v22;
      a8 = v46;
      sub_69573C(&a1[v13], v38, v26, a4, v25, v20, a7, v46);
      a2 = v21;
      a3 = v47;
      v49 = v37;
      a1 = v26;
      if (!v37)
      {
        return;
      }
    }
  }

  sub_6962CC(a1, a2, a3, a4, a5, v49, a7);
}

uint64_t sub_695B8C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v8 = *result;
  v9 = *(result + 8);
  v10[0] = 0;
  v11 = 0;
  v4 = *(result + 1136);
  if (v4 == 1)
  {
    result = sub_529850(v10, result + 16);
    v11 = 1;
    v4 = *(v3 + 1136);
  }

  *v12 = *(v3 + 1144);
  *&v12[15] = *(v3 + 1159);
  *v3 = *a2;
  *(v3 + 8) = *(a2 + 8);
  if (v4 == *(a2 + 1136))
  {
    if (v4)
    {
      result = sub_52BE74(v3 + 16, a2 + 16);
    }
  }

  else
  {
    v5 = v3 + 16;
    if (v4)
    {
      result = sub_3A9518(v5);
      *(v3 + 1136) = 0;
    }

    else
    {
      result = sub_529850(v5, a2 + 16);
      *(v3 + 1136) = 1;
    }
  }

  v6 = *(a2 + 1144);
  *(v3 + 1159) = *(a2 + 1159);
  *(v3 + 1144) = v6;
  *a2 = v8;
  *(a2 + 8) = v9;
  if (*(a2 + 1136) == v11)
  {
    if (*(a2 + 1136))
    {
      result = sub_52BE74(a2 + 16, v10);
    }
  }

  else
  {
    v7 = a2 + 16;
    if (*(a2 + 1136))
    {
      result = sub_3A9518(v7);
      *(a2 + 1136) = 0;
    }

    else
    {
      result = sub_529850(v7, v10);
      *(a2 + 1136) = 1;
    }
  }

  *(a2 + 1144) = *v12;
  *(a2 + 1159) = *&v12[15];
  if (v11 == 1)
  {
    return sub_3A9518(v10);
  }

  return result;
}

__n128 sub_695D04(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    *a3 = *a1;
    *(a3 + 8) = *(a1 + 8);
    *(a3 + 16) = 0;
    *(a3 + 1136) = 0;
    if (*(a1 + 1136) == 1)
    {
      sub_529850(a3 + 16, a1 + 16);
      *(a3 + 1136) = 1;
    }

    result = *(v5 + 286);
    *(a3 + 1159) = *(v5 + 1159);
    *(a3 + 1144) = result;
    v20 = 1;
    v7 = v5 + 292;
    if (v5 + 292 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v11 = sub_7FD764(v7);
          if (v11 > sub_7FD764(v9))
          {
            break;
          }

          *(v9 + 1168) = *v10;
          *(v9 + 1176) = v5[294];
          *(v9 + 1184) = 0;
          *(v9 + 2304) = 0;
          if (*(v5 + 2304) == 1)
          {
            sub_529850(v9 + 1184, (v5 + 296));
            *(v9 + 2304) = 1;
          }

          result = *(v5 + 578);
          *(v9 + 2327) = *(v5 + 2327);
          *(v9 + 2312) = result;
          ++v20;
          v9 += 1168;
          v7 = v10 + 292;
          v8 += 1168;
          v5 = v10;
          if (v10 + 292 == a2)
          {
            return result;
          }
        }

        *(v9 + 1168) = *v9;
        *(v9 + 1176) = *(v9 + 8);
        *(v9 + 1184) = 0;
        *(v9 + 2304) = 0;
        if (*(v9 + 1136) == 1)
        {
          sub_529850(v9 + 1184, v9 + 16);
          *(v9 + 2304) = 1;
        }

        *(v9 + 2312) = *(v9 + 1144);
        *(v9 + 2327) = *(v9 + 1159);
        ++v20;
        v12 = a3;
        if (v9 != a3)
        {
          v13 = v8;
          do
          {
            v15 = sub_7FD764(v10);
            if (v15 <= sub_7FD764((a3 + v13 - 1168)))
            {
              v12 = a3 + v13;
              goto LABEL_24;
            }

            v16 = a3 + v13;
            *v16 = *(a3 + v13 - 1168);
            *(v16 + 8) = *(a3 + v13 - 1160);
            v17 = a3 + v13 - 1152;
            if (*(a3 + v13 + 1136) == *(a3 + v13 - 32))
            {
              if (*(a3 + v13 + 1136))
              {
                sub_52BE74(v16 + 16, v17);
              }
            }

            else
            {
              v18 = v16 + 16;
              if (*(a3 + v13 + 1136))
              {
                sub_3A9518(v18);
                *(v16 + 1136) = 0;
              }

              else
              {
                sub_529850(v18, v17);
                *(v16 + 1136) = 1;
              }
            }

            v14 = a3 + v13 + 1144;
            *v14 = *(a3 + v13 - 24);
            *(v14 + 15) = *(a3 + v13 - 9);
            v13 -= 1168;
          }

          while (v13);
          v12 = a3;
        }

LABEL_24:
        *v12 = *v10;
        *(v12 + 8) = v5[294];
        if (*(v12 + 1136) == *(v5 + 2304))
        {
          if (*(v12 + 1136))
          {
            sub_52BE74(v12 + 16, (v5 + 296));
          }
        }

        else
        {
          v19 = v12 + 16;
          if (*(v12 + 1136))
          {
            sub_3A9518(v19);
            *(v12 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, (v5 + 296));
            *(v12 + 1136) = 1;
          }
        }

        result = *(v5 + 578);
        *(v12 + 1159) = *(v5 + 2327);
        *(v12 + 1144) = result;
        v9 += 1168;
        v7 = v10 + 292;
        v8 += 1168;
        v5 = v10;
      }

      while (v10 + 292 != a2);
    }
  }

  return result;
}

void sub_69600C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_696020(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_696034(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v19 = 0;
  if (a1 == a2)
  {
    v8 = 0;
LABEL_3:
    if (v7 != a4)
    {
      v9 = 0;
      do
      {
        v11 = a5 + v9;
        v12 = v7 + v9;
        *v11 = *(v7 + v9);
        *(v11 + 8) = *(v7 + v9 + 8);
        *(a5 + v9 + 16) = 0;
        *(v11 + 1136) = 0;
        if (*(v7 + v9 + 1136) == 1)
        {
          sub_529850(a5 + v9 + 16, v12 + 16);
          *(v11 + 1136) = 1;
          v8 = v19;
        }

        result = *(v12 + 1144);
        *(v11 + 1159) = *(v12 + 1159);
        *(v11 + 1144) = result;
        v19 = ++v8;
        v9 += 1168;
      }

      while (v12 + 1168 != a4);
    }
  }

  else
  {
    v14 = a1;
    if (a3 != a4)
    {
      while (1)
      {
        v15 = sub_7FD764(v7);
        if (v15 <= sub_7FD764(v14))
        {
          *a5 = *v14;
          *(a5 + 8) = *(v14 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v14 + 1136) == 1)
          {
            sub_529850(a5 + 16, v14 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v14 + 1144);
          *(a5 + 1159) = *(v14 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v14 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *a5 = *v7;
          *(a5 + 8) = *(v7 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v7 + 1136) == 1)
          {
            sub_529850(a5 + 16, v7 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v7 + 1144);
          *(a5 + 1159) = *(v7 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v7 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        if (v7 == a4)
        {
          goto LABEL_19;
        }
      }
    }

    v8 = 0;
LABEL_19:
    if (v14 != a2)
    {
      v16 = 0;
      do
      {
        v17 = a5 + v16;
        v18 = v14 + v16;
        *v17 = *(v14 + v16);
        *(v17 + 8) = *(v14 + v16 + 8);
        *(a5 + v16 + 16) = 0;
        *(v17 + 1136) = 0;
        if (*(v14 + v16 + 1136) == 1)
        {
          sub_529850(a5 + v16 + 16, v18 + 16);
          *(v17 + 1136) = 1;
          v8 = v19;
        }

        result = *(v18 + 1144);
        *(v17 + 1159) = *(v18 + 1159);
        *(v17 + 1144) = result;
        v19 = ++v8;
        v16 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

void sub_6962B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_6962CC(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v27 = 0;
  if (a5 <= a6)
  {
    v17 = a7;
    if (a1 != a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v21 = &a7[v18];
        v22 = &a1[v18];
        *v21 = a1[v18];
        v21[2] = a1[v18 + 2];
        LOBYTE(a7[v18 + 4]) = 0;
        *(v21 + 1136) = 0;
        if (LOBYTE(a1[v18 + 284]) == 1)
        {
          sub_529850(&a7[v18 + 4], (v22 + 4));
          *(v21 + 1136) = 1;
          v19 = v27;
        }

        v20 = *(v22 + 286);
        *(v21 + 1159) = *(v22 + 1159);
        *(v21 + 286) = v20;
        v27 = ++v19;
        v18 += 292;
      }

      while (v22 + 292 != a2);
      v17 = &a7[v18];
    }

    sub_696524(a7, v17, a2, a3, a1);
  }

  else
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v15 = &a7[v12];
        v16 = &a2[v12];
        *v15 = a2[v12];
        v15[2] = a2[v12 + 2];
        LOBYTE(a7[v12 + 4]) = 0;
        *(v15 + 1136) = 0;
        if (LOBYTE(a2[v12 + 284]) == 1)
        {
          sub_529850(&a7[v12 + 4], (v16 + 4));
          *(v15 + 1136) = 1;
          v13 = v27;
        }

        v14 = *(v16 + 286);
        *(v15 + 1159) = *(v16 + 1159);
        *(v15 + 286) = v14;
        v27 = ++v13;
        v12 += 292;
      }

      while (v16 + 292 != a3);
      v11 = &a7[v12];
    }

    sub_69672C(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    v23 = v27;
    if (v27)
    {
      v24 = 0;
      v25 = a7 + 284;
      do
      {
        if (*v25 == 1)
        {
          sub_3A9518((v25 - 1120));
          v23 = v27;
        }

        ++v24;
        v25 += 1168;
      }

      while (v24 < v23);
    }
  }
}

void sub_6964FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_696510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_696524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 != a2)
  {
    v9 = a1;
    while (a3 != a4)
    {
      v11 = sub_7FD764(a3);
      if (v11 <= sub_7FD764(v9))
      {
        *a5 = *v9;
        *(a5 + 8) = *(v9 + 8);
        if (*(a5 + 1136) == *(v9 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, v9 + 16);
          }
        }

        else
        {
          v13 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v13);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v13, v9 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(v9 + 1144);
        *(a5 + 1159) = *(v9 + 1159);
        *(a5 + 1144) = result;
        v9 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          return result;
        }
      }

      else
      {
        *a5 = *a3;
        *(a5 + 8) = *(a3 + 8);
        if (*(a5 + 1136) == *(a3 + 1136))
        {
          if (*(a5 + 1136))
          {
            sub_52BE74(a5 + 16, a3 + 16);
          }
        }

        else
        {
          v12 = a5 + 16;
          if (*(a5 + 1136))
          {
            sub_3A9518(v12);
            *(a5 + 1136) = 0;
          }

          else
          {
            sub_529850(v12, a3 + 16);
            *(a5 + 1136) = 1;
          }
        }

        result = *(a3 + 1144);
        *(a5 + 1159) = *(a3 + 1159);
        *(a5 + 1144) = result;
        a3 += 1168;
        a5 += 1168;
        if (v9 == a2)
        {
          return result;
        }
      }
    }

    v14 = v9 + 16;
    do
    {
      v15 = v14 - 16;
      *a5 = *(v14 - 16);
      *(a5 + 8) = *(v14 - 8);
      if (*(a5 + 1136) == *(v14 + 1120))
      {
        if (*(a5 + 1136))
        {
          sub_52BE74(a5 + 16, v14);
        }
      }

      else
      {
        v16 = a5 + 16;
        if (*(a5 + 1136))
        {
          sub_3A9518(v16);
          *(a5 + 1136) = 0;
        }

        else
        {
          sub_529850(v16, v14);
          *(a5 + 1136) = 1;
        }
      }

      result = *(v14 + 1128);
      *(a5 + 1159) = *(v14 + 1143);
      *(a5 + 1144) = result;
      a5 += 1168;
      v14 += 1168;
    }

    while (v15 + 1168 != a2);
  }

  return result;
}

void sub_69672C(uint64_t a1, _DWORD *a2, uint64_t a3, _DWORD *a4, uint64_t a5, _DWORD *a6, uint64_t a7, _DWORD *a8, uint64_t a9, uint64_t a10)
{
  if (a2 != a4)
  {
    v13 = a2;
    v14 = (a10 - 32);
    while (a6 != a8)
    {
      v16 = a6 - 292;
      v18 = sub_7FD764(v13 - 292);
      v19 = sub_7FD764(a6 - 292);
      v20 = v14 - 1136;
      v21 = v14 - 1128;
      v22 = (v14 - 1120);
      if (v18 <= v19)
      {
        *v20 = *(v13 - 292);
        *v21 = *(v13 - 290);
        v24 = (v13 - 288);
        if (*v14 == *(v13 - 32))
        {
          if (*v14)
          {
            sub_52BE74(v22, v24);
          }
        }

        else if (*v14)
        {
          sub_3A9518(v22);
          *v14 = 0;
        }

        else
        {
          sub_529850(v22, v24);
          *v14 = 1;
        }

        v15 = v13;
        v16 = a6;
        v13 -= 292;
      }

      else
      {
        *v20 = *v16;
        *v21 = *(a6 - 290);
        v23 = (a6 - 288);
        if (*v14 == *(a6 - 32))
        {
          if (*v14)
          {
            sub_52BE74(v22, v23);
          }

          v15 = a6;
        }

        else
        {
          if (*v14)
          {
            sub_3A9518(v22);
            *v14 = 0;
          }

          else
          {
            sub_529850(v22, v23);
            *v14 = 1;
          }

          v15 = a6;
        }
      }

      v17 = *(v15 - 6);
      *(v14 + 23) = *(v15 - 9);
      *(v14 + 8) = v17;
      v14 -= 1168;
      a6 = v16;
      if (v13 == a4)
      {
        return;
      }
    }

    if (a4 != v13)
    {
      v25 = 0;
      do
      {
        v28 = &v14[v25 * 4];
        *&v14[v25 * 4 - 1136] = v13[v25 - 292];
        *&v14[v25 * 4 - 1128] = v13[v25 - 290];
        v29 = &v14[v25 * 4 - 1120];
        v30 = &v13[v25 - 288];
        if (v14[v25 * 4] == LOBYTE(v13[v25 - 8]))
        {
          if (v14[v25 * 4])
          {
            sub_52BE74(v29, v30);
          }
        }

        else if (v14[v25 * 4])
        {
          sub_3A9518(v29);
          *v28 = 0;
        }

        else
        {
          sub_529850(v29, v30);
          *v28 = 1;
        }

        v26 = &v14[v25 * 4];
        v27 = *&v13[v25 - 6];
        *(v26 + 23) = *(&v13[v25 - 2] - 1);
        *(v26 + 8) = v27;
        v25 -= 292;
      }

      while (&v13[v25] != a4);
    }
  }
}

void sub_69694C(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 292);
      v8 = sub_7FD764(a2 - 292);
      if (v8 > sub_7FD764(a1))
      {

        sub_695B8C(a1, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_696B90(a1, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &a1[292 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_696DE0(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = &a5[292 * v10];
        sub_696DE0(v11, a2, a3, v19, v20);
        sub_69541C(a5, v20, v20, &a5[292 * a4], a1);
        if (a5)
        {
          v21 = a4;
          v22 = 0;
          v23 = a5 + 284;
          do
          {
            if (*v23 == 1)
            {
              sub_3A9518((v23 - 1120));
              v21 = a4;
            }

            ++v22;
            v23 += 1168;
          }

          while (v22 < v21);
        }
      }

      else
      {
        sub_69694C(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_69694C(v11, a2, a3, v16, a5, a6);

        sub_6970E0(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}

void sub_696B7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_696B90(uint64_t result, unsigned int *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = (result + 1168);
    if ((result + 1168) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v4;
        v8 = sub_7FD764(v4);
        result = sub_7FD764(v6);
        if (v8 > result)
        {
          v9 = *(v6 + 1176);
          v21 = *v7;
          v22 = v9;
          v23[0] = 0;
          v24 = 0;
          if (*(v6 + 2304) == 1)
          {
            result = sub_529850(v23, v6 + 1184);
            v24 = 1;
          }

          v25[0] = *(v6 + 2312);
          *(v25 + 15) = *(v6 + 2327);
          v10 = v5;
          while (1)
          {
            v11 = v3 + v10;
            *(v11 + 1168) = *(v3 + v10);
            *(v11 + 1176) = *(v3 + v10 + 8);
            if (*(v3 + v10 + 2304) == *(v3 + v10 + 1136))
            {
              if (*(v3 + v10 + 2304))
              {
                result = sub_52BE74(v11 + 1184, v11 + 16);
              }
            }

            else
            {
              v12 = v11 + 1184;
              if (*(v3 + v10 + 2304))
              {
                result = sub_3A9518(v12);
                *(v11 + 2304) = 0;
              }

              else
              {
                result = sub_529850(v12, v11 + 16);
                *(v11 + 2304) = 1;
              }
            }

            v13 = v3 + v10;
            v14 = v3 + v10 + 2312;
            v15 = v3 + v10 + 1144;
            *v14 = *v15;
            *(v14 + 15) = *(v3 + v10 + 1159);
            if (!v10)
            {
              break;
            }

            v16 = sub_7FD764(&v21);
            result = sub_7FD764((v13 - 1168));
            v10 -= 1168;
            if (v16 <= result)
            {
              v17 = v3 + v10 + 1168;
              goto LABEL_19;
            }
          }

          v17 = v3;
LABEL_19:
          v18 = v22;
          *v17 = v21;
          *(v17 + 8) = v18;
          if (*(v17 + 1136) == v24)
          {
            if (*(v17 + 1136))
            {
              result = sub_52BE74(v13 + 16, v23);
            }
          }

          else
          {
            v19 = v13 + 16;
            if (*(v17 + 1136))
            {
              result = sub_3A9518(v19);
              *(v17 + 1136) = 0;
            }

            else
            {
              result = sub_529850(v19, v23);
              *(v17 + 1136) = 1;
            }
          }

          v20 = v25[0];
          *(v15 + 15) = *(v25 + 15);
          *v15 = v20;
          if (v24 == 1)
          {
            result = sub_3A9518(v23);
          }
        }

        v4 = v7 + 292;
        v5 += 1168;
        v6 = v7;
      }

      while (v7 + 292 != a2);
    }
  }

  return result;
}

void sub_696DE0(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    if (a4 == 2)
    {
      v9 = a2 - 292;
      v10 = sub_7FD764(a2 - 292);
      if (v10 <= sub_7FD764(a1))
      {
        *a5 = *a1;
        *(a5 + 8) = *(a1 + 8);
        *(a5 + 16) = 0;
        *(a5 + 1136) = 0;
        if (*(a1 + 1136) == 1)
        {
          sub_529850(a5 + 16, a1 + 16);
          *(a5 + 1136) = 1;
        }

        v18 = *(a1 + 1144);
        *(a5 + 1159) = *(a1 + 1159);
        *(a5 + 1144) = v18;
        *(a5 + 1168) = *v9;
        *(a5 + 1176) = *(a2 - 290);
        *(a5 + 1184) = 0;
        *(a5 + 2304) = 0;
        if (*(a2 - 32) == 1)
        {
          sub_529850(a5 + 1184, (a2 - 288));
          *(a5 + 2304) = 1;
        }

        v8 = a5 + 2312;
        v12 = *(a2 - 6);
        v13 = *(a2 - 9);
        goto LABEL_26;
      }

      *a5 = *v9;
      *(a5 + 8) = *(a2 - 290);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a2 - 32) == 1)
      {
        sub_529850(a5 + 16, (a2 - 288));
        *(a5 + 1136) = 1;
      }

      v11 = *(a2 - 6);
      *(a5 + 1159) = *(a2 - 9);
      *(a5 + 1144) = v11;
      *(a5 + 1168) = *a1;
      *(a5 + 1176) = *(a1 + 8);
      *(a5 + 1184) = 0;
      *(a5 + 2304) = 0;
      if (*(a1 + 1136) == 1)
      {
        sub_529850(a5 + 1184, a1 + 16);
        *(a5 + 2304) = 1;
      }

      v8 = a5 + 2312;
LABEL_13:
      v12 = *(a1 + 1144);
      v13 = *(a1 + 1159);
LABEL_26:
      *(v8 + 15) = v13;
      *v8 = v12;
      return;
    }

    if (a4 == 1)
    {
      *a5 = *a1;
      *(a5 + 8) = *(a1 + 8);
      *(a5 + 16) = 0;
      *(a5 + 1136) = 0;
      if (*(a1 + 1136) == 1)
      {
        sub_529850(a5 + 16, a1 + 16);
        *(a5 + 1136) = 1;
      }

      v8 = a5 + 1144;
      goto LABEL_13;
    }

    if (a4 > 8)
    {
      v14 = a4 >> 1;
      v15 = 1168 * (a4 >> 1);
      sub_69694C(a1, v15 + a1, a3, v14, a5, v14);
      sub_69694C(v15 + a1, a2, a3, a4 - v14, a5 + v15, a4 - v14);

      sub_697860(a1, v15 + a1, v15 + a1, a2, a5);
    }

    else
    {

      sub_697530(a1, a2, a5);
    }
  }
}

void sub_6970CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_6970E0(char *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7, uint64_t a8)
{
  v49 = a6;
  if (!a6)
  {
    return;
  }

  while (v49 > a8 && a5 > a8)
  {
    if (!a5)
    {
      return;
    }

    v13 = 0;
    v14 = -a5;
    while (1)
    {
      v15 = &a1[v13];
      v16 = sub_7FD764(a2);
      if (v16 > sub_7FD764(&a1[v13]))
      {
        break;
      }

      v13 += 1168;
      if (__CFADD__(v14++, 1))
      {
        return;
      }
    }

    v18 = -v14;
    v19 = v49;
    v46 = a8;
    v47 = a3;
    if (-v14 >= v49)
    {
      if (v14 == -1)
      {

        sub_695B8C(&a1[v13], a2);
        return;
      }

      v25 = v18 / 2;
      v22 = &a1[1168 * (v18 / 2) + v13];
      v27 = a3;
      v21 = a2;
      if (a2 != v27)
      {
        v42 = v25;
        v44 = a7;
        v28 = 0x7E3F1F8FC7E3F1F9 * ((v47 - a2) >> 4);
        v21 = a2;
        do
        {
          v29 = &v21[292 * (v28 >> 1)];
          v30 = sub_7FD764(v29);
          v31 = sub_7FD764(v22);
          if (v30 <= v31)
          {
            v28 >>= 1;
          }

          else
          {
            v28 += ~(v28 >> 1);
          }

          if (v30 > v31)
          {
            v21 = v29 + 292;
          }
        }

        while (v28);
        v25 = v42;
        a7 = v44;
        v19 = v49;
      }

      v20 = 0x7E3F1F8FC7E3F1F9 * ((v21 - a2) >> 4);
      v26 = v21;
      if (a2 != v22)
      {
LABEL_31:
        v26 = v22;
        if (a2 != v21)
        {
          v45 = v20;
          v43 = v25;
          sub_695B8C(v22, a2);
          v26 = (v22 + 292);
          for (i = (a2 + 292); i != v21; i += 1168)
          {
            if (v26 == a2)
            {
              a2 = i;
            }

            sub_695B8C(v26, i);
            v26 += 1168;
          }

          if (v26 != a2)
          {
            v33 = v26;
            v34 = a2;
            while (1)
            {
              sub_695B8C(v33, v34);
              v34 += 1168;
              v35 = v33 + 1168 == a2;
              if (v34 == v21)
              {
                if ((v33 + 1168) == a2)
                {
                  break;
                }

                v34 = (a2 + 292);
                v33 += 2336;
                while (1)
                {
                  sub_695B8C(v33 - 1168, a2);
                  v35 = v33 == a2;
                  if (v34 != v21)
                  {
                    break;
                  }

                  v36 = v33 == a2;
                  v33 += 1168;
                  if (v36)
                  {
                    goto LABEL_48;
                  }
                }
              }

              else
              {
                v33 += 1168;
              }

              if (v35)
              {
                a2 = v34;
              }
            }
          }

LABEL_48:
          v19 = v49;
          v25 = v43;
          v20 = v45;
        }
      }
    }

    else
    {
      v20 = v49 / 2;
      v21 = &a2[292 * (v49 / 2)];
      v22 = a2;
      if (a2 - a1 != v13)
      {
        v23 = 0x7E3F1F8FC7E3F1F9 * ((a2 - a1 - v13) >> 4);
        v22 = &a1[v13];
        do
        {
          v24 = sub_7FD764(v21);
          if (v24 > sub_7FD764(&v22[292 * (v23 >> 1)]))
          {
            v23 >>= 1;
          }

          else
          {
            v22 += 292 * (v23 >> 1) + 292;
            v23 += ~(v23 >> 1);
          }
        }

        while (v23);
        v20 = v49 / 2;
        v19 = v49;
      }

      v25 = 0x7E3F1F8FC7E3F1F9 * ((v22 - a1 - v13) >> 4);
      v26 = &a2[292 * (v49 / 2)];
      if (a2 != v22)
      {
        goto LABEL_31;
      }
    }

    a5 = -(v25 + v14);
    v37 = v19 - v20;
    if (v25 + v20 >= v19 - (v25 + v20) - v14)
    {
      v39 = v25;
      v40 = -(v25 + v14);
      v41 = v20;
      sub_6970E0(v26, v21, v47, a4, v40, v19 - v20, a7, v46);
      a2 = v22;
      a8 = v46;
      a5 = v39;
      a3 = v26;
      v49 = v41;
      a1 = v15;
      if (!v41)
      {
        return;
      }
    }

    else
    {
      v38 = v22;
      a8 = v46;
      sub_6970E0(&a1[v13], v38, v26, a4, v25, v20, a7, v46);
      a2 = v21;
      a3 = v47;
      v49 = v37;
      a1 = v26;
      if (!v37)
      {
        return;
      }
    }
  }

  sub_697AF8(a1, a2, a3, a4, a5, v49, a7);
}

__n128 sub_697530(uint64_t a1, unsigned int *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    *a3 = *a1;
    *(a3 + 8) = *(a1 + 8);
    *(a3 + 16) = 0;
    *(a3 + 1136) = 0;
    if (*(a1 + 1136) == 1)
    {
      sub_529850(a3 + 16, a1 + 16);
      *(a3 + 1136) = 1;
    }

    result = *(v5 + 286);
    *(a3 + 1159) = *(v5 + 1159);
    *(a3 + 1144) = result;
    v20 = 1;
    v7 = v5 + 292;
    if (v5 + 292 != a2)
    {
      v8 = 0;
      v9 = a3;
      do
      {
        while (1)
        {
          v10 = v7;
          v11 = sub_7FD764(v7);
          if (v11 > sub_7FD764(v9))
          {
            break;
          }

          *(v9 + 1168) = *v10;
          *(v9 + 1176) = v5[294];
          *(v9 + 1184) = 0;
          *(v9 + 2304) = 0;
          if (*(v5 + 2304) == 1)
          {
            sub_529850(v9 + 1184, (v5 + 296));
            *(v9 + 2304) = 1;
          }

          result = *(v5 + 578);
          *(v9 + 2327) = *(v5 + 2327);
          *(v9 + 2312) = result;
          ++v20;
          v9 += 1168;
          v7 = v10 + 292;
          v8 += 1168;
          v5 = v10;
          if (v10 + 292 == a2)
          {
            return result;
          }
        }

        *(v9 + 1168) = *v9;
        *(v9 + 1176) = *(v9 + 8);
        *(v9 + 1184) = 0;
        *(v9 + 2304) = 0;
        if (*(v9 + 1136) == 1)
        {
          sub_529850(v9 + 1184, v9 + 16);
          *(v9 + 2304) = 1;
        }

        *(v9 + 2312) = *(v9 + 1144);
        *(v9 + 2327) = *(v9 + 1159);
        ++v20;
        v12 = a3;
        if (v9 != a3)
        {
          v13 = v8;
          do
          {
            v15 = sub_7FD764(v10);
            if (v15 <= sub_7FD764((a3 + v13 - 1168)))
            {
              v12 = a3 + v13;
              goto LABEL_24;
            }

            v16 = a3 + v13;
            *v16 = *(a3 + v13 - 1168);
            *(v16 + 8) = *(a3 + v13 - 1160);
            v17 = a3 + v13 - 1152;
            if (*(a3 + v13 + 1136) == *(a3 + v13 - 32))
            {
              if (*(a3 + v13 + 1136))
              {
                sub_52BE74(v16 + 16, v17);
              }
            }

            else
            {
              v18 = v16 + 16;
              if (*(a3 + v13 + 1136))
              {
                sub_3A9518(v18);
                *(v16 + 1136) = 0;
              }

              else
              {
                sub_529850(v18, v17);
                *(v16 + 1136) = 1;
              }
            }

            v14 = a3 + v13 + 1144;
            *v14 = *(a3 + v13 - 24);
            *(v14 + 15) = *(a3 + v13 - 9);
            v13 -= 1168;
          }

          while (v13);
          v12 = a3;
        }

LABEL_24:
        *v12 = *v10;
        *(v12 + 8) = v5[294];
        if (*(v12 + 1136) == *(v5 + 2304))
        {
          if (*(v12 + 1136))
          {
            sub_52BE74(v12 + 16, (v5 + 296));
          }
        }

        else
        {
          v19 = v12 + 16;
          if (*(v12 + 1136))
          {
            sub_3A9518(v19);
            *(v12 + 1136) = 0;
          }

          else
          {
            sub_529850(v19, (v5 + 296));
            *(v12 + 1136) = 1;
          }
        }

        result = *(v5 + 578);
        *(v12 + 1159) = *(v5 + 2327);
        *(v12 + 1144) = result;
        v9 += 1168;
        v7 = v10 + 292;
        v8 += 1168;
        v5 = v10;
      }

      while (v10 + 292 != a2);
    }
  }

  return result;
}

void sub_697838(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_69784C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

__n128 sub_697860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v19 = 0;
  if (a1 == a2)
  {
    v8 = 0;
LABEL_3:
    if (v7 != a4)
    {
      v9 = 0;
      do
      {
        v11 = a5 + v9;
        v12 = v7 + v9;
        *v11 = *(v7 + v9);
        *(v11 + 8) = *(v7 + v9 + 8);
        *(a5 + v9 + 16) = 0;
        *(v11 + 1136) = 0;
        if (*(v7 + v9 + 1136) == 1)
        {
          sub_529850(a5 + v9 + 16, v12 + 16);
          *(v11 + 1136) = 1;
          v8 = v19;
        }

        result = *(v12 + 1144);
        *(v11 + 1159) = *(v12 + 1159);
        *(v11 + 1144) = result;
        v19 = ++v8;
        v9 += 1168;
      }

      while (v12 + 1168 != a4);
    }
  }

  else
  {
    v14 = a1;
    if (a3 != a4)
    {
      while (1)
      {
        v15 = sub_7FD764(v7);
        if (v15 <= sub_7FD764(v14))
        {
          *a5 = *v14;
          *(a5 + 8) = *(v14 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v14 + 1136) == 1)
          {
            sub_529850(a5 + 16, v14 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v14 + 1144);
          *(a5 + 1159) = *(v14 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v14 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          *a5 = *v7;
          *(a5 + 8) = *(v7 + 8);
          *(a5 + 16) = 0;
          *(a5 + 1136) = 0;
          if (*(v7 + 1136) == 1)
          {
            sub_529850(a5 + 16, v7 + 16);
            *(a5 + 1136) = 1;
          }

          result = *(v7 + 1144);
          *(a5 + 1159) = *(v7 + 1159);
          *(a5 + 1144) = result;
          v8 = ++v19;
          v7 += 1168;
          a5 += 1168;
          if (v14 == a2)
          {
            goto LABEL_3;
          }
        }

        if (v7 == a4)
        {
          goto LABEL_19;
        }
      }
    }

    v8 = 0;
LABEL_19:
    if (v14 != a2)
    {
      v16 = 0;
      do
      {
        v17 = a5 + v16;
        v18 = v14 + v16;
        *v17 = *(v14 + v16);
        *(v17 + 8) = *(v14 + v16 + 8);
        *(a5 + v16 + 16) = 0;
        *(v17 + 1136) = 0;
        if (*(v14 + v16 + 1136) == 1)
        {
          sub_529850(a5 + v16 + 16, v18 + 16);
          *(v17 + 1136) = 1;
          v8 = v19;
        }

        result = *(v18 + 1144);
        *(v17 + 1159) = *(v18 + 1159);
        *(v17 + 1144) = result;
        v19 = ++v8;
        v16 += 1168;
      }

      while (v18 + 1168 != a2);
    }
  }

  return result;
}

void sub_697AE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_697AF8(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _DWORD *a7)
{
  v27 = 0;
  if (a5 <= a6)
  {
    v17 = a7;
    if (a1 != a2)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        v21 = &a7[v18];
        v22 = &a1[v18];
        *v21 = a1[v18];
        v21[2] = a1[v18 + 2];
        LOBYTE(a7[v18 + 4]) = 0;
        *(v21 + 1136) = 0;
        if (LOBYTE(a1[v18 + 284]) == 1)
        {
          sub_529850(&a7[v18 + 4], (v22 + 4));
          *(v21 + 1136) = 1;
          v19 = v27;
        }

        v20 = *(v22 + 286);
        *(v21 + 1159) = *(v22 + 1159);
        *(v21 + 286) = v20;
        v27 = ++v19;
        v18 += 292;
      }

      while (v22 + 292 != a2);
      v17 = &a7[v18];
    }

    sub_696524(a7, v17, a2, a3, a1);
  }

  else
  {
    v11 = a7;
    if (a2 != a3)
    {
      v12 = 0;
      v13 = 0;
      do
      {
        v15 = &a7[v12];
        v16 = &a2[v12];
        *v15 = a2[v12];
        v15[2] = a2[v12 + 2];
        LOBYTE(a7[v12 + 4]) = 0;
        *(v15 + 1136) = 0;
        if (LOBYTE(a2[v12 + 284]) == 1)
        {
          sub_529850(&a7[v12 + 4], (v16 + 4));
          *(v15 + 1136) = 1;
          v13 = v27;
        }

        v14 = *(v16 + 286);
        *(v15 + 1159) = *(v16 + 1159);
        *(v15 + 286) = v14;
        v27 = ++v13;
        v12 += 292;
      }

      while (v16 + 292 != a3);
      v11 = &a7[v12];
    }

    sub_69672C(v11, v11, a7, a7, a2, a2, a1, a1, a3, a3);
  }

  if (a7)
  {
    v23 = v27;
    if (v27)
    {
      v24 = 0;
      v25 = a7 + 284;
      do
      {
        if (*v25 == 1)
        {
          sub_3A9518((v25 - 1120));
          v23 = v27;
        }

        ++v24;
        v25 += 1168;
      }

      while (v24 < v23);
    }
  }
}

void sub_697D28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_697D3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_6956C0(va);
  _Unwind_Resume(a1);
}

void sub_697D50(unsigned int *a1, unsigned int *a2, uint64_t a3, unint64_t a4, _DWORD *a5, uint64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v7 = (a2 - 292);
      v8 = sub_7FD764(a2 - 292);
      if (v8 > sub_7FD764(a1))
      {

        sub_695B8C(a1, v7);
      }
    }

    else if (a4 <= 0)
    {

      sub_697F94(a1, a2);
    }

    else
    {
      v10 = a4 >> 1;
      v11 = &a1[292 * (a4 >> 1)];
      if (a4 <= a6)
      {
        sub_6981E4(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5);
        v19 = a4 - v10;
        v20 = &a5[292 * v10];
        sub_6981E4(v11, a2, a3, v19, v20);
        sub_69541C(a5, v20, v20, &a5[292 * a4], a1);
        if (a5)
        {
          v21 = a4;
          v22 = 0;
          v23 = a5 + 284;
          do
          {
            if (*v23 == 1)
            {
              sub_3A9518((v23 - 1120));
              v21 = a4;
            }

            ++v22;
            v23 += 1168;
          }

          while (v22 < v21);
        }
      }

      else
      {
        sub_697D50(a1, &a1[292 * (a4 >> 1)], a3, a4 >> 1, a5, a6);
        v16 = a4 - v10;
        sub_697D50(v11, a2, a3, v16, a5, a6);

        sub_6984E4(a1, v11, a2, a3, v10, v16, a5, a6);
      }
    }
  }
}