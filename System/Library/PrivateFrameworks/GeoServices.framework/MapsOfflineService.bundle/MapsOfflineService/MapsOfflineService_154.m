void sub_9840E8(char *a1, void *a2, uint64_t a3)
{
  v10 = 6;
  strcpy(__p, "enable");
  if (sub_5F9D0(a2, __p))
  {
    if (!*(a3 + 1444))
    {
      operator new();
    }

    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  if (v10 < 0)
  {
    operator delete(*__p);
  }

  *a1 = v6;
  v10 = 17;
  strcpy(__p, "same_alight_stops");
  v7 = sub_5F9D0(a2, __p);
  if (v10 < 0)
  {
    v8 = v7;
    operator delete(*__p);
    v7 = v8;
  }

  a1[1] = v7;
  operator new();
}

void sub_98435C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void sub_9843BC(char *a1, uint64_t a2, uint64_t a3)
{
  v10[23] = 19;
  strcpy(v10, "TransitRouteBuilder");
  memset(v9, 0, sizeof(v9));
  v5 = sub_3AEC94(a2, v10, v9);
  strcpy(__p, "lightweight_clustering");
  v8 = 22;
  v6 = sub_5F5AC(v5, __p);
  sub_9840E8(a1, v6, a3);
}

void sub_984500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_1A104(&a15);
  if ((a23 & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

void sub_984568(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(a2 + 48) != *(a2 + 56))
  {
    sub_984618(a1, a2, a3);
    v6 = *(a2 + 56) - *(a2 + 48);
    if (v6)
    {
      v7 = 0;
      v8 = v6 >> 6;
      do
      {
        sub_9848D4(a1, a2, v7++, a3);
      }

      while (v8 != v7);
    }
  }
}

void sub_984618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 8);
  if (v6 >= *(a3 + 16))
  {
    v7 = sub_985C2C(a3);
  }

  else
  {
    *v6 = 0;
    v6[1] = 0;
    v7 = v6 + 3;
    v6[2] = 0;
  }

  *(a3 + 8) = v7;
  v8 = *(a2 + 48);
  v9 = sub_984AD8(a1, v8);
  v11 = *v8;
  v10 = v8[1];
  if (v9)
  {
    v12 = v10 == v11;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    v13 = v10 - v11;
    if (!v13)
    {
      goto LABEL_15;
    }

    v14 = 0x8E38E38E38E38E39 * (v13 >> 4);
  }

  else
  {
    v14 = 1;
  }

  v15 = *(v7 - 2);
  do
  {
    while (v15 >= *(v7 - 1))
    {
      v15 = sub_985DC4((v7 - 3));
      *(v7 - 2) = v15;
      if (!--v14)
      {
        goto LABEL_15;
      }
    }

    *(v15 + 80) = 0;
    *(v15 + 48) = 0u;
    *(v15 + 64) = 0u;
    *(v15 + 16) = 0u;
    *(v15 + 32) = 0u;
    *v15 = 0u;
    v15 += 88;
    *(v7 - 2) = v15;
    --v14;
  }

  while (v14);
LABEL_15:
  v17 = *(a1 + 40);
  v16 = *(a1 + 48);
  if (v17 >= v16)
  {
    v19 = *(a1 + 32);
    v20 = v17 - v19;
    v21 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v19) >> 3);
    v22 = v21 + 1;
    if (v21 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1794();
    }

    v23 = 0xAAAAAAAAAAAAAAABLL * ((v16 - v19) >> 3);
    if (2 * v23 > v22)
    {
      v22 = 2 * v23;
    }

    if (v23 >= 0x555555555555555)
    {
      v24 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v24 = v22;
    }

    if (v24)
    {
      if (v24 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

LABEL_42:
      sub_1808();
    }

    v25 = 24 * v21;
    *v25 = 0;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    v18 = 24 * v21 + 24;
    v26 = 24 * v21 - v20;
    memcpy((v25 - v20), v19, v20);
    *(a1 + 32) = v26;
    *(a1 + 40) = v18;
    *(a1 + 48) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v17 = 0;
    *(v17 + 1) = 0;
    v18 = (v17 + 24);
    *(v17 + 2) = 0;
  }

  *(a1 + 40) = v18;
  v28 = *(v18 - 16);
  v27 = *(v18 - 8);
  if (v28 < v27)
  {
    *v28 = 0;
    v29 = v28 + 8;
LABEL_30:
    *(v18 - 16) = v29;
    return;
  }

  v30 = *(v18 - 24);
  v31 = v28 - v30;
  v32 = (v28 - v30) >> 3;
  v33 = v32 + 1;
  if ((v32 + 1) >> 61)
  {
    sub_1794();
  }

  v34 = v27 - v30;
  if (v34 >> 2 > v33)
  {
    v33 = v34 >> 2;
  }

  if (v34 >= 0x7FFFFFFFFFFFFFF8)
  {
    v35 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v35 = v33;
  }

  if (v35)
  {
    if (!(v35 >> 61))
    {
      operator new();
    }

    goto LABEL_42;
  }

  v36 = (v28 - v30) >> 3;
  v37 = (8 * v32);
  v38 = (8 * v32 - 8 * v36);
  *v37 = 0;
  v29 = v37 + 1;
  memcpy(v38, v30, v31);
  *(v18 - 24) = v38;
  *(v18 - 16) = v29;
  *(v18 - 8) = 0;
  if (!v30)
  {
    goto LABEL_30;
  }

  operator delete(v30);
  *(v18 - 16) = v29;
}

void sub_9848D4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *(a2 + 48);
  if (a3 + 1 >= ((*(a2 + 56) - v8) >> 6))
  {
    v10 = 0;
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v12 < v11)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = (v8 + ((a3 + 1) << 6));
    if (sub_984AD8(a1, v9))
    {
      v10 = 1;
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      if (v12 >= v11)
      {
        goto LABEL_8;
      }

LABEL_6:
      *v12 = 0;
      *(v12 + 1) = 0;
      v13 = (v12 + 24);
      *(v12 + 2) = 0;
      goto LABEL_19;
    }

    v10 = 0x8E38E38E38E38E39 * ((v9[1] - *v9) >> 4);
    v12 = *(a1 + 40);
    v11 = *(a1 + 48);
    if (v12 < v11)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  v14 = *(a1 + 32);
  v15 = v12 - v14;
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
  v17 = v16 + 1;
  if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1794();
  }

  v18 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
  if (2 * v18 > v17)
  {
    v17 = 2 * v18;
  }

  if (v18 >= 0x555555555555555)
  {
    v19 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v19 = v17;
  }

  if (v19)
  {
    if (v19 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1808();
  }

  v20 = 24 * v16;
  *v20 = 0;
  *(v20 + 8) = 0;
  *(v20 + 16) = 0;
  v13 = 24 * v16 + 24;
  v21 = 24 * v16 - v15;
  memcpy((v20 - v15), v14, v15);
  *(a1 + 32) = v21;
  *(a1 + 40) = v13;
  *(a1 + 48) = 0;
  if (v14)
  {
    operator delete(v14);
  }

LABEL_19:
  *(a1 + 40) = v13;
  v22 = (*(a2 + 48) + (a3 << 6));
  v23 = sub_984AD8(a1, v22);
  v24 = v22[1] - *v22;
  if (v24)
  {
    v25 = v23;
    v26 = 0;
    v27 = 0x8E38E38E38E38E39 * (v24 >> 4);
    do
    {
      sub_9853C8(a1, v22, a3, v26++, v10, v25, a4);
    }

    while (v27 != v26);
  }
}

uint64_t sub_984AD8(_BYTE *a1, void *a2)
{
  if (*a1 != 1)
  {
    return 0;
  }

  v2 = *a2;
  v3 = a2[1];
  if (0x8E38E38E38E38E39 * ((v3 - *a2) >> 4) < 2)
  {
    return 0;
  }

  if (a1[4] == 1 && *(a2 + 60) != 1)
  {
    return 0;
  }

  if (a1[2] == 1)
  {
    if (v3 == v2)
    {
      sub_6FAB4();
    }

    v6 = a2;
    v7 = sub_984EE0(a1, *(v2 + 8), *(v2 + 16));
    a2 = v6;
    v8 = v6[1];
    if (*v6 + 144 != v8)
    {
      v9 = v7;
      v10 = *v6 + 288;
      do
      {
        v11 = v9 ^ sub_984EE0(a1, *(v10 - 136), *(v10 - 128));
        if (v11)
        {
          break;
        }

        v12 = v10 == v8;
        v10 += 144;
      }

      while (!v12);
      a2 = v6;
      if (v11)
      {
        return 0;
      }
    }
  }

  if (a1[1] != 1 || (v13 = a2, result = sub_984C30(a1, a2), a2 = v13, result))
  {
    if (a1[3] != 1)
    {
      return 1;
    }

    result = sub_984D94(a1, a2);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_984C30(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 1;
  }

  v5 = 0;
  LODWORD(v6) = -1;
  do
  {
    v14 = *(v2 + 8);
    v15 = *(v2 + 16);
    while (v15 != v14)
    {
      v16 = v15 - 1136;
      v17 = *(v15 - 8);
      v15 -= 1136;
      if (!v17)
      {
        v14 = v16 + 1136;
        goto LABEL_25;
      }
    }

    if (*(v14 - 8))
    {
      sub_5AF20();
    }

LABEL_25:
    v18 = *(v14 - 1132);
    v19 = *(v14 - 1116);
    v20 = sub_3A231C(*(a1 + 16), *(v14 - 1128) | (v18 << 32), 0);
    v21 = &v20[-*v20];
    if (*v21 < 5u)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 2);
      if (*(v21 + 2))
      {
        v22 += &v20[*&v20[v22]];
      }
    }

    v23 = (v22 + 4 * v18 + 4 + *(v22 + 4 * v18 + 4));
    v24 = (v23 - *v23);
    if (*v24 >= 0xDu && (v25 = v24[6]) != 0)
    {
      v7 = *(v23 + v25);
    }

    else
    {
      v7 = -1;
    }

    v8 = *&v20[24 * (v7 + v19) + 4 + *(v21 + 3) + *&v20[*(v21 + 3)]];
    if (v5)
    {
      v9 = v6 == -1;
    }

    else
    {
      v9 = 1;
    }

    v10 = v9;
    if (v5 == v8 && v6 == HIDWORD(v8))
    {
      result = 1;
    }

    else
    {
      result = v10;
    }

    v2 += 144;
    v13 = result != 1 || v2 == v3;
    v6 = HIDWORD(v8);
    v5 = v8;
  }

  while (!v13);
  return result;
}

BOOL sub_984D94(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    sub_6FAB4();
  }

  v4 = __p;
  sub_985200(__p, a1, *(*a2 + 8), *(*a2 + 16));
  v5 = a2[1];
  if (*a2 + 144 != v5)
  {
    v7 = v16;
    if ((v16 & 0x80u) == 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = __p[1];
    }

    if ((v16 & 0x80u) != 0)
    {
      v4 = __p[0];
    }

    v10 = *a2 + 288;
    while (1)
    {
      sub_985200(v17, a1, *(v10 - 136), *(v10 - 128));
      v12 = v18;
      v13 = v18;
      if ((v18 & 0x80u) != 0)
      {
        v12 = v17[1];
      }

      if (v12 == v9)
      {
        break;
      }

      v6 = 0;
      if (v18 < 0)
      {
        goto LABEL_26;
      }

LABEL_13:
      v11 = v10 != v5 && v6;
      v10 += 144;
      if (!v11)
      {
        goto LABEL_4;
      }
    }

    if ((v18 & 0x80u) == 0)
    {
      v14 = v17;
    }

    else
    {
      v14 = v17[0];
    }

    v6 = memcmp(v14, v4, v9) == 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

LABEL_26:
    operator delete(v17[0]);
    goto LABEL_13;
  }

  v6 = 1;
  v7 = v16;
LABEL_4:
  if ((v7 & 0x80) != 0)
  {
    operator delete(__p[0]);
  }

  return v6;
}

void sub_984EC8(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_984EE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    while (*(a2 + 1128))
    {
      a2 += 1136;
      if (a2 == a3)
      {
        a2 = a3;
        break;
      }
    }
  }

  if (*(a2 + 1128))
  {
    sub_5AF20();
  }

  v4 = sub_3A25A8(*(a1 + 16), __ROR8__(*(a2 + 4), 32), 0, "trip");
  v5 = *(v4 + *(v4 - *v4 + 6));
  v6 = sub_92FC60(*(a1 + 16), v5, 0, "line");
  v7 = (v6 - *v6);
  if (*v7 >= 0x35u)
  {
    v8 = v7[26];
    if (v8)
    {
      if (*(v6 + v8))
      {
        return 1;
      }
    }
  }

  nullsub_1(&v30);
  v11 = sub_92FC60(*(a1 + 16), v5, 0, "line");
  v12 = (v11 - *v11);
  if (*v12 >= 0xFu && (v13 = v12[7]) != 0)
  {
    v14 = (v11 + v13 + *(v11 + v13));
    v33 = 0uLL;
    v34 = 0;
    sub_943AEC(&v33, *v14);
    v36 = v14 + 1;
    v35 = &v14[*v14 + 1];
    sub_943E24(&v36, &v35, &v33, sub_509164);
    v15 = v33;
    v16 = v34;
  }

  else
  {
    v16 = 0;
    v15 = 0uLL;
  }

  *__p = v15;
  v29 = v16;
  sub_9D6590(__p, *(a1 + 8) + 968, &v31);
  v17 = __p[0];
  if (__p[0])
  {
    v18 = __p[1];
    v19 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v20 = *(v18 - 3);
        if (v20)
        {
          v21 = *(v18 - 2);
          v22 = *(v18 - 3);
          if (v21 != v20)
          {
            do
            {
              if (*(v21 - 1) < 0)
              {
                operator delete(*(v21 - 24));
              }

              v21 -= 32;
            }

            while (v21 != v20);
            v22 = *(v18 - 3);
          }

          *(v18 - 2) = v20;
          operator delete(v22);
        }

        v23 = (v18 - 64);
        if (*(v18 - 41) < 0)
        {
          operator delete(*v23);
        }

        v18 -= 64;
      }

      while (v23 != v17);
      v19 = __p[0];
    }

    __p[1] = v17;
    operator delete(v19);
  }

  sub_9D4538(&v31, &v33);
  if (SHIBYTE(v34) < 0)
  {
    v9 = *(&v33 + 1) == 0;
    operator delete(v33);
    v24 = v31;
    if (!v31)
    {
      return v9;
    }
  }

  else
  {
    v9 = SHIBYTE(v34) == 0;
    v24 = v31;
    if (!v31)
    {
      return v9;
    }
  }

  v25 = v32;
  v26 = v24;
  if (v32 != v24)
  {
    while (1)
    {
      if (*(v25 - 1) < 0)
      {
        operator delete(*(v25 - 3));
        v27 = v25 - 7;
        if (*(v25 - 33) < 0)
        {
LABEL_42:
          operator delete(*v27);
        }
      }

      else
      {
        v27 = v25 - 7;
        if (*(v25 - 33) < 0)
        {
          goto LABEL_42;
        }
      }

      v25 = v27;
      if (v27 == v24)
      {
        v26 = v31;
        break;
      }
    }
  }

  v32 = v24;
  operator delete(v26);
  return v9;
}

void sub_9851C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_941AEC(va);
  _Unwind_Resume(a1);
}

void sub_9851D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_9354C4(va);
  _Unwind_Resume(a1);
}

void sub_985200(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a3;
  if (a3 != a4)
  {
    while (*(v4 + 1128))
    {
      v4 += 1136;
      if (v4 == a4)
      {
        v4 = a4;
        break;
      }
    }
  }

  if (*(v4 + 1128))
  {
    sub_5AF20();
  }

  v7 = *(v4 + 4);
  v8 = sub_3A25A8(*(a2 + 16), __ROR8__(v7, 32), 0, "trip");
  v9 = sub_92FC60(*(a2 + 16), *(v8 + *(v8 - *v8 + 6)), 0, "line");
  v10 = (v9 - *v9);
  if (*v10 >= 0x29u && (v11 = v10[20]) != 0 && *(v9 + v11))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v12 = *(a2 + 16);
    v17[0] = __PAIR64__(v7, HIDWORD(v7));
    sub_95858C(v12, v17, *(v4 + 16), v21);
    nullsub_1(&v16);
    sub_9D69F4(v21, v17);
    *a1 = *v17;
    a1[2] = v18;
    v17[1] = 0;
    v18 = 0;
    v17[0] = 0;
    if (v20 < 0)
    {
      operator delete(__p);
      if (SHIBYTE(v18) < 0)
      {
        operator delete(v17[0]);
      }
    }

    v13 = v23;
    if (v23)
    {
      v14 = v24;
      v15 = v23;
      if (v24 != v23)
      {
        do
        {
          if (*(v14 - 1) < 0)
          {
            operator delete(*(v14 - 3));
          }

          v14 -= 4;
        }

        while (v14 != v13);
        v15 = v23;
      }

      v24 = v13;
      operator delete(v15);
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }
  }
}

void sub_9853B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_395478(va);
  _Unwind_Resume(a1);
}

void sub_9853C8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, int a6, void *a7)
{
  v9 = *a2 + 144 * a4;
  v77 = a6;
  if (!a6 || !*v9)
  {
    v10 = *(a1 + 32);
    v11 = v10 + 24 * a3;
    v76 = *(v11 + 8);
    if (*v11 != v76)
    {
      v12 = *v11;
      if (a6)
      {
        v13 = 0;
      }

      else
      {
        v13 = a4;
      }

      v75 = v13;
      if (a5 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = a5;
      }

      v83 = v14;
      v80 = -1;
      while (1)
      {
        v79 = v12;
        v15 = *(*a7 + 24 * *v12) + 88 * v75;
        v16 = *(v9 + 8);
        v82 = v15;
        v17 = 0;
        if (*(v9 + 16) != v16)
        {
          v18 = 1128;
          do
          {
            if (*(v16 + v18))
            {
              break;
            }

            v20 = *(v15 + 16);
            v21 = *(v15 + 24);
            if (v20 < v21)
            {
              *v20 = a3;
              *(v20 + 1) = a4;
              v19 = v20 + 24;
              *(v20 + 2) = v17;
            }

            else
            {
              v22 = *(v15 + 8);
              v23 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v22) >> 3) + 1;
              if (v23 > 0xAAAAAAAAAAAAAAALL)
              {
LABEL_104:
                sub_1794();
              }

              v24 = 0xAAAAAAAAAAAAAAABLL * ((v21 - v22) >> 3);
              if (2 * v24 > v23)
              {
                v23 = 2 * v24;
              }

              if (v24 >= 0x555555555555555)
              {
                v25 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v25 = v23;
              }

              if (v25)
              {
                if (v25 <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                goto LABEL_105;
              }

              v26 = (8 * ((v20 - v22) >> 3));
              *v26 = a3;
              v26[1] = a4;
              v26[2] = v17;
              v19 = v26 + 3;
              v27 = v26 - (v20 - v22);
              memcpy(v27, v22, v20 - v22);
              v82[1] = v27;
              v82[2] = v19;
              v82[3] = 0;
              if (v22)
              {
                operator delete(v22);
              }

              v15 = v82;
            }

            *(v15 + 16) = v19;
            ++v17;
            v16 = *(v9 + 8);
            v18 += 1136;
          }

          while (v17 < 0x193D4BB7E327A977 * ((*(v9 + 16) - v16) >> 4));
        }

        if (*v9 <= 1u)
        {
          *v15 = *v9;
        }

        *(v15 + 80) = v77;
        if (v80 != -1)
        {
          if (v17)
          {
            goto LABEL_87;
          }

          goto LABEL_11;
        }

        v28 = a7[1];
        if (v17)
        {
          if (v28 >= a7[2])
          {
            v28 = sub_985C2C(a7);
          }

          else
          {
            *v28 = 0;
            v28[1] = 0;
            v28[2] = 0;
            v28 += 3;
          }

          a7[1] = v28;
        }

        v29 = 0;
        v80 = 0xAAAAAAAAAAAAAAABLL * ((v28 - *a7) >> 3) - 1;
        v81 = v17 - 1;
        v85 = v17;
        v84 = v28;
        do
        {
          v30 = *(v28 - 3);
          v31 = *(v28 - 2);
          v32 = 0x2E8BA2E8BA2E8BA3 * ((v31 - v30) >> 3);
          if (v32 > v29)
          {
            goto LABEL_69;
          }

          v33 = *(v28 - 1);
          if (v31 < v33)
          {
            *(v31 + 80) = 0;
            *(v31 + 48) = 0u;
            *(v31 + 64) = 0u;
            *(v31 + 16) = 0u;
            *(v31 + 32) = 0u;
            v34 = v31 + 88;
            *v31 = 0u;
            *(v28 - 2) = v31 + 88;
            if (!v17)
            {
              goto LABEL_69;
            }

LABEL_67:
            v48 = *(v34 - 16);
            *(v34 - 40) = a3;
            *(v34 - 32) = a4;
            *(v34 - 24) = v81;
            if ((v48 & 1) == 0)
            {
              *(v34 - 16) = 1;
            }

            goto LABEL_69;
          }

          v35 = v32 + 1;
          if (v32 + 1 > 0x2E8BA2E8BA2E8BALL)
          {
            sub_1794();
          }

          v36 = 0x2E8BA2E8BA2E8BA3 * ((v33 - v30) >> 3);
          if (2 * v36 > v35)
          {
            v35 = 2 * v36;
          }

          if (v36 >= 0x1745D1745D1745DLL)
          {
            v37 = 0x2E8BA2E8BA2E8BALL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            if (v37 <= 0x2E8BA2E8BA2E8BALL)
            {
              operator new();
            }

LABEL_105:
            sub_1808();
          }

          v38 = 8 * ((v31 - v30) >> 3);
          *(v38 + 80) = 0;
          *(v38 + 48) = 0u;
          *(v38 + 64) = 0u;
          *(v38 + 16) = 0u;
          *(v38 + 32) = 0u;
          *v38 = 0u;
          v39 = v38 - (v31 - v30);
          if (v30 == v31)
          {
            v46 = v84;
          }

          else
          {
            v40 = v30;
            v41 = v38 - (v31 - v30);
            do
            {
              *v41 = *v40;
              *(v41 + 16) = 0;
              *(v41 + 24) = 0;
              *(v41 + 8) = *(v40 + 1);
              *(v41 + 24) = v40[3];
              v40[1] = 0;
              v40[2] = 0;
              v40[3] = 0;
              v42 = *(v40 + 2);
              v43 = *(v40 + 3);
              v44 = *(v40 + 4);
              *(v41 + 80) = *(v40 + 80);
              *(v41 + 48) = v43;
              *(v41 + 64) = v44;
              *(v41 + 32) = v42;
              v40 += 11;
              v41 += 88;
            }

            while (v40 != v31);
            do
            {
              v45 = v30[1];
              if (v45)
              {
                v30[2] = v45;
                operator delete(v45);
              }

              v30 += 11;
            }

            while (v30 != v31);
            v46 = v84;
            v30 = *(v84 - 3);
          }

          v34 = v38 + 88;
          *(v46 - 3) = v39;
          *(v46 - 2) = v34;
          *(v46 - 1) = 0;
          v47 = v46;
          if (v30)
          {
            operator delete(v30);
          }

          v17 = v85;
          *(v47 - 2) = v34;
          if (v85)
          {
            goto LABEL_67;
          }

LABEL_69:
          if (v17 < 0x193D4BB7E327A977 * ((*(v9 + 16) - *(v9 + 8)) >> 4))
          {
            v49 = (*(v84 - 3) + 88 * v29);
            v50 = v49[2];
            for (i = v85; i < 0x193D4BB7E327A977 * ((*(v9 + 16) - *(v9 + 8)) >> 4); ++i)
            {
              v52 = v49[3];
              if (v50 < v52)
              {
                *v50 = a3;
                *(v50 + 1) = a4;
                *(v50 + 2) = i;
                v50 += 24;
              }

              else
              {
                v53 = v49[1];
                v54 = 0xAAAAAAAAAAAAAAABLL * ((v50 - v53) >> 3);
                v55 = v54 + 1;
                if (v54 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  goto LABEL_104;
                }

                v56 = 0xAAAAAAAAAAAAAAABLL * ((v52 - v53) >> 3);
                if (2 * v56 > v55)
                {
                  v55 = 2 * v56;
                }

                if (v56 >= 0x555555555555555)
                {
                  v57 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v57 = v55;
                }

                if (v57)
                {
                  if (v57 <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  goto LABEL_105;
                }

                v58 = v50;
                v59 = (8 * ((v50 - v53) >> 3));
                *v59 = a3;
                v59[1] = a4;
                v59[2] = i;
                v50 = (v59 + 3);
                v60 = 24 * v54 - (v58 - v53);
                memcpy(v59 - (v58 - v53), v53, v58 - v53);
                v49[1] = v60;
                v49[2] = v50;
                v49[3] = 0;
                if (v53)
                {
                  operator delete(v53);
                }
              }

              v49[2] = v50;
            }
          }

          ++v29;
          v28 = v84;
          v17 = v85;
        }

        while (v29 != v83);
        v15 = v82;
        if (v85)
        {
LABEL_87:
          *(v15 + 32) = v80;
          *(v15 + 40) = 1;
        }

LABEL_11:
        v12 = v79 + 1;
        if (v79 + 1 == v76)
        {
          v61 = (*(a1 + 32) + 24 * a3);
          v63 = v61[4];
          v62 = v61[5];
          if (v63 < v62)
          {
            goto LABEL_89;
          }

LABEL_91:
          v65 = v61[3];
          v66 = v63 - v65;
          v67 = (v63 - v65) >> 3;
          v68 = v67 + 1;
          if ((v67 + 1) >> 61)
          {
            sub_1794();
          }

          v69 = v62 - v65;
          if (v69 >> 2 > v68)
          {
            v68 = v69 >> 2;
          }

          if (v69 >= 0x7FFFFFFFFFFFFFF8)
          {
            v70 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v70 = v68;
          }

          if (v70)
          {
            if (!(v70 >> 61))
            {
              operator new();
            }

            goto LABEL_105;
          }

          v71 = (v63 - v65) >> 3;
          v72 = (8 * v67);
          v73 = (8 * v67 - 8 * v71);
          *v72 = v80;
          v64 = v72 + 1;
          memcpy(v73, v65, v66);
          v61[3] = v73;
          v61[4] = v64;
          v61[5] = 0;
          if (v65)
          {
            operator delete(v65);
          }

          goto LABEL_102;
        }
      }
    }

    v80 = -1;
    v61 = (v10 + 24 * a3);
    v63 = v61[4];
    v62 = v61[5];
    if (v63 >= v62)
    {
      goto LABEL_91;
    }

LABEL_89:
    *v63 = v80;
    v64 = v63 + 1;
LABEL_102:
    v61[4] = v64;
  }
}

void ***sub_985B78(void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v8 = *(v5 - 3);
        v5 -= 3;
        v7 = v8;
        if (v8)
        {
          v9 = *(v3 - 2);
          v6 = v7;
          if (v9 != v7)
          {
            do
            {
              v10 = *(v9 - 10);
              if (v10)
              {
                *(v9 - 9) = v10;
                operator delete(v10);
              }

              v9 -= 88;
            }

            while (v9 != v7);
            v6 = *v5;
          }

          *(v3 - 2) = v7;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void *sub_985C2C(uint64_t a1)
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
            v15 = *(v14 - 10);
            if (v15)
            {
              *(v14 - 9) = v15;
              operator delete(v15);
            }

            v14 -= 88;
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

uint64_t sub_985DC4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = v2 - *a1;
  v4 = 0x2E8BA2E8BA2E8BA3 * (v3 >> 3) + 1;
  if (v4 > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((*(a1 + 16) - v1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - v1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v6 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x2E8BA2E8BA2E8BALL)
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 8 * (v3 >> 3);
  *(v7 + 80) = 0;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *v7 = 0u;
  v8 = v7 + 88;
  v9 = v7 - v3;
  if (v1 != v2)
  {
    v10 = v1;
    v11 = v9;
    do
    {
      *v11 = *v10;
      *(v11 + 16) = 0;
      *(v11 + 24) = 0;
      *(v11 + 8) = *(v10 + 1);
      *(v11 + 24) = v10[3];
      v10[1] = 0;
      v10[2] = 0;
      v10[3] = 0;
      v12 = *(v10 + 2);
      v13 = *(v10 + 3);
      v14 = *(v10 + 4);
      *(v11 + 80) = *(v10 + 80);
      *(v11 + 48) = v13;
      *(v11 + 64) = v14;
      *(v11 + 32) = v12;
      v10 += 11;
      v11 += 88;
    }

    while (v10 != v2);
    do
    {
      v15 = v1[1];
      if (v15)
      {
        v1[2] = v15;
        operator delete(v15);
      }

      v1 += 11;
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

uint64_t sub_985F68(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v4 = sub_A06874(a1, a2, a3);
  *v4 = off_266EEA8;
  *(v4 + 208) = 0;
  v5 = v4 + 208;
  *(v4 + 216) = 0;
  *(v4 + 224) = 0;
  v6 = **(v4 + 8);
  if (*(*(v4 + 8) + 8) == v6)
  {
    sub_6FAB4();
  }

  v7 = *v6;
  v8 = v6[1];
  if (*v6 != v8)
  {
    v9 = *(v7 + 16);
    if (*(v7 + 8) != v9 && *(v9 - 5704) == 4)
    {
      do
      {
        v10 = *(v7 + 8);
        v11 = *(v7 + 16);
        if (v10 != v11)
        {
          while (*v10 != 2)
          {
            v10 += 1426;
            if (v10 == v11)
            {
              v10 = *(v7 + 16);
              break;
            }
          }
        }

        v13 = v10;
        sub_4C7358(v5, &v13);
        v7 += 104;
      }

      while (v7 != v8);
    }
  }

  return a1;
}

void sub_986058(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 216) = v4;
    operator delete(v4);
  }

  sub_978E88(v1);
  _Unwind_Resume(a1);
}

void sub_986084(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if ((*(a1 + 174) & 1) != 0 || (v3 = a2, v4 = sub_A07008(a1), a2 = v3, v4) || *(a1 + 173) == 1)
  {

    sub_A07928(a1, a2);
  }

  else
  {
    if (sub_A07228(a1))
    {
      v5 = *(a1 + 176);
      if (v5 && sub_9CE360(*(*(a1 + 40) + 4), v5, *(a1 + 32), *(a1 + 48)))
      {
        v6 = *(*(a1 + 176) + 752);
        v7 = *(*(a1 + 16) + 72);
        if (0x66FD0EB66FD0EB67 * ((*(*(a1 + 16) + 80) - v7) >> 3) <= v6)
        {
          sub_6FAB4();
        }

        if (*(v7 + 696 * v6 + 554) == 1)
        {

          sub_986230(a1, v3);
        }
      }

      sub_986A84(a1, v3);
    }

    if (!sub_A07080(a1))
    {
      sub_64B9EC(v3, (*(a1 + 32) + 1177), &xmmword_22A5508);
      v8 = sub_A07108(a1);
      sub_986F10(a1, v3, v8, a1 + 96, 1);
      sub_A08E84();
    }

    sub_986BE8(a1, v3);
  }
}

void sub_986230(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  (*(*a1 + 96))(__p);
  sub_64B9EC(a2, (v4 + 1177), __p);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v21 = 0;
  sub_986F10(a1, a2, 0x7FFFFFFF, __p, 1);
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_A07180(a1);
  if ((v5 & 0x10000) != 0)
  {
    sub_9CBE3C(v5, &v29);
    v6 = a1[1];
    if (v6[1] != *v6)
    {
      v7 = *(*v6 + 24);
      sub_986E24(a1, &v28);
      v26 = 0uLL;
      v27 = 0;
      v24 = 0uLL;
      v25 = 0;
      v22[0] = 0;
      v22[1] = 0;
      v23 = 0;
      if (v7)
      {
        if ((v31 & 0x80u) == 0)
        {
          v8 = v31;
        }

        else
        {
          v8 = v30;
        }

        if (v8 + 27 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v8 + 27 > 0x16)
        {
          operator new();
        }

        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        HIBYTE(v21) = v8 + 27;
        if ((v31 & 0x80u) == 0)
        {
          v10 = &v29;
        }

        else
        {
          v10 = v29;
        }

        memmove(__p, v10, v8);
        strcpy(__p + v8, " departs in {CountdownList}");
        v27 = v21;
        v26 = *__p;
        if ((v31 & 0x80u) == 0)
        {
          v11 = v31;
        }

        else
        {
          v11 = v30;
        }

        if (v11 + 29 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v11 + 29 > 0x16)
        {
          operator new();
        }

        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        HIBYTE(v21) = v11 + 29;
        if ((v31 & 0x80u) == 0)
        {
          v12 = &v29;
        }

        else
        {
          v12 = v29;
        }

        memmove(__p, v12, v11);
        strcpy(__p + v11, " departs now, {CountdownList}");
        v25 = v21;
        v24 = *__p;
        if ((v31 & 0x80u) == 0)
        {
          v13 = v31;
        }

        else
        {
          v13 = v30;
        }

        if (v13 + 12 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v13 + 12 >= 0x17)
        {
          operator new();
        }

        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        HIBYTE(v21) = v13 + 12;
        if (v13)
        {
          if ((v31 & 0x80u) == 0)
          {
            v14 = &v29;
          }

          else
          {
            v14 = v29;
          }

          memmove(__p, v14, v13);
        }

        strcpy(__p + v13, " departs now");
        v23 = v21;
        *v22 = *__p;
      }

      else
      {
        if ((v31 & 0x80u) == 0)
        {
          v9 = v31;
        }

        else
        {
          v9 = v30;
        }

        if (v9 + 29 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v9 + 29 > 0x16)
        {
          operator new();
        }

        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        HIBYTE(v21) = v9 + 29;
        if ((v31 & 0x80u) == 0)
        {
          v15 = &v29;
        }

        else
        {
          v15 = v29;
        }

        memmove(__p, v15, v9);
        strcpy(__p + v9, " scheduled in {CountdownList}");
        v27 = v21;
        v26 = *__p;
        if ((v31 & 0x80u) == 0)
        {
          v16 = v31;
        }

        else
        {
          v16 = v30;
        }

        if (v16 + 31 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v16 + 31 > 0x16)
        {
          operator new();
        }

        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        HIBYTE(v21) = v16 + 31;
        if ((v31 & 0x80u) == 0)
        {
          v17 = &v29;
        }

        else
        {
          v17 = v29;
        }

        memmove(__p, v17, v16);
        strcpy(__p + v16, " scheduled now, {CountdownList}");
        v25 = v21;
        v24 = *__p;
        if ((v31 & 0x80u) == 0)
        {
          v18 = v31;
        }

        else
        {
          v18 = v30;
        }

        if (v18 + 14 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v18 + 14 >= 0x17)
        {
          operator new();
        }

        __p[1] = 0;
        v21 = 0;
        __p[0] = 0;
        HIBYTE(v21) = v18 + 14;
        if (v18)
        {
          if ((v31 & 0x80u) == 0)
          {
            v19 = &v29;
          }

          else
          {
            v19 = v29;
          }

          memmove(__p, v19, v18);
        }

        strcpy(__p + v18, " scheduled now");
        *v22 = *__p;
        v23 = v21;
      }

      sub_986A84(a1, __p);
    }

    sub_6FAB4();
  }

  sub_4F0F0C();
}

void sub_986934(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (*(v40 - 169) < 0)
  {
    operator delete(*(v40 - 192));
    if ((*(v40 - 137) & 0x80000000) == 0)
    {
LABEL_3:
      v42 = *(v40 - 128);
      if (!v42)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v40 - 137) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v40 - 160));
  v42 = *(v40 - 128);
  if (!v42)
  {
LABEL_4:
    if ((*(v40 - 81) & 0x80000000) == 0)
    {
LABEL_10:
      sub_53A868(v39);
      _Unwind_Resume(a1);
    }

LABEL_9:
    operator delete(*(v40 - 104));
    goto LABEL_10;
  }

LABEL_8:
  *(v40 - 120) = v42;
  operator delete(v42);
  if ((*(v40 - 81) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void sub_986A84(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_64B9EC(a2, (*(a1 + 32) + 1177), &xmmword_22A5508);
  __p = 0;
  v5 = 0uLL;
  sub_986F10(a1, a2, 0x7FFFFFFF, &__p, 1);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p);
  }

  operator new();
}

uint64_t sub_986BE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  (*(*a1 + 96))(__p);
  sub_64B9EC(a2, (v4 + 1177), __p);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  v5 = sub_A0701C(a1);
  sub_986F10(a1, a2, v5, (a1 + 18), 1);
  sub_A0995C(a1, a2);
  return (*(*a1 + 80))(a1, a2);
}

void sub_986CC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_986CF0(uint64_t a1)
{
  if (sub_A07008(a1))
  {
    return 0;
  }

  if (*(a1 + 173))
  {
    return 0;
  }

  if (sub_A07228(a1))
  {
    v3 = *(a1 + 176);
    if (!v3)
    {
      return 0;
    }

    result = sub_9CE360(*(*(a1 + 40) + 4), v3, *(a1 + 32), *(a1 + 48));
    if (result)
    {
      v4 = *(*(a1 + 176) + 752);
      v5 = *(*(a1 + 16) + 72);
      if (0x66FD0EB66FD0EB67 * ((*(*(a1 + 16) + 80) - v5) >> 3) <= v4)
      {
        sub_6FAB4();
      }

      if (*(v5 + 696 * v4 + 554) != 1)
      {
        return 0;
      }

      v6 = *(a1 + 208);
      v7 = *(a1 + 216);
      if (v6 == v7)
      {
        return 0;
      }

      v8 = v6 + 8;
      do
      {
        result = sub_9BCF58((*(v8 - 8) + 488));
        if (result)
        {
          break;
        }

        v9 = v8 == v7;
        v8 += 8;
      }

      while (!v9);
    }
  }

  else
  {
    result = sub_A07080(a1);
    if (result)
    {
      sub_A07024(a1, v10);
      return v10[8] == 1;
    }
  }

  return result;
}

void sub_986E24(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 208);
  v3 = *(a1 + 216);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v2 != v3)
  {
    do
    {
      v5 = *(*v2 + 488);
      v6 = *(*v2 + 496);
      if (v5 != v6)
      {
        sub_9874FC(a2, *(a2 + 8), v5, v6, 0x6DB6DB6DB6DB6DB7 * ((v6 - v5) >> 2));
      }

      v2 += 8;
    }

    while (v2 != v3);
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * (&v8[-*a2] >> 2));
    if (v8 == *a2)
    {
      v10 = 0;
    }

    else
    {
      v10 = v9;
    }

    sub_9877CC(v7, v8, v10, 1);
  }
}

void sub_986EF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_986F10(uint64_t a1, uint64_t *a2, int a3, uint64_t a4, int a5)
{
  if (*(*(a1 + 32) + 1530) == 1 && *(*(a1 + 48) + 48) == 1)
  {
    LODWORD(__p.__r_.__value_.__l.__data_) = sub_A070A4(a1);
    sub_64E308(a2, "{ArrivalTime}", &__p, a1 + 120, 0);
    *(&__p.__r_.__value_.__s + 23) = 15;
    strcpy(&__p, "ArrivalTime_ETA");
    if (a3 == 0x7FFFFFFFLL)
    {
      goto LABEL_8;
    }

    v10 = *(a4 + 23);
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(a4 + 8);
    }

    if (!v10 || (v11 = sub_A070A4(a1), sub_42BC(a3, v11, a4)))
    {
LABEL_8:
      v15 = sub_A070A4(a1);
      sub_9CCC50(&v15, (a1 + 96), (a1 + 120), *(a1 + 32) + 1177, *(a1 + 40), &__p, a2, "Arrival");
    }

    v12 = sub_9274F4(*(a1 + 24), &__p);
    if (a5)
    {
      v13 = a2[7];
      if (v13 >= a2[8])
      {
        v14 = sub_1CEE8((a2 + 6), &xmmword_22A55B0);
      }

      else
      {
        *(v13 + 16) = 0x400000000000000;
        *v13 = xmmword_22A55B0;
        v14 = v13 + 24;
        a2[7] = v13 + 24;
      }

      a2[7] = v14;
    }

    sub_64C184(a2, v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_9870CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_9870F0(uint64_t a1, void **a2)
{
  memset(&__p, 0, sizeof(__p));
  sub_A07024(a1, &v14);
  if (v16)
  {
    if (v17 == 1)
    {
      v8 = sub_9BCE28(*(a1 + 16), *(*(a1 + 176) + 56));
      v9 = sub_9BCBDC(*(a1 + 16), *(*(a1 + 176) + 56));
      sub_9CC800(v9, v8, &v13);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p = v13;
      v4 = 2;
      v5 = 5;
      size = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      v7 = HIBYTE(v13.__r_.__value_.__r.__words[2]);
      if ((v13.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v13.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        goto LABEL_22;
      }
    }

    else
    {
      if (v17 == 2)
      {
        *(&__p.__r_.__value_.__s + 23) = 9;
        strcpy(&__p, "Cancelled");
        v4 = 2;
        v5 = 4;
LABEL_22:
        v12 = sub_9274F4(*(a1 + 24), &__p);
        v13.__r_.__value_.__s.__data_[0] = 0;
        sub_64C770(a2, v12, &unk_22A5568, v4, &v13);
        sub_9CE3F8(a2, v5);
        v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        goto LABEL_23;
      }

      if (v14 != 0x7FFFFFFF && !v17 && v16 == 1 && v15 != 0x7FFFFFFF && v14 / 60 == v15 / 60)
      {
        *(&__p.__r_.__value_.__s + 23) = 7;
        strcpy(&__p, "On-time");
        v5 = 1;
        v4 = 1;
        goto LABEL_22;
      }

      if (v15 <= v14)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      sub_195A048(&__p, "Now {LiveDepartureTime}", 0x17uLL);
      LODWORD(v13.__r_.__value_.__l.__data_) = v15;
      sub_64E308(a2, "{LiveDepartureTime}", &v13, a1 + 144, 0);
      v4 = 2;
      v11 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = __p.__r_.__value_.__l.__size_;
      }

      if (v11)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
    v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = __p.__r_.__value_.__l.__size_;
    }

    if (v6)
    {
      goto LABEL_22;
    }
  }

LABEL_23:
  if (v7 < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_987394(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_9873E0@<D0>(uint64_t a1@<X8>)
{
  *&result = 0xA0C2B7C220;
  *a1 = xmmword_22A5508;
  *(a1 + 16) = 0x500000000000000;
  return result;
}

uint64_t sub_9873FC(uint64_t a1)
{
  if (*(*(a1 + 32) + 1530) == 1)
  {
    return *(*(a1 + 48) + 48) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_987424(void *a1)
{
  *a1 = off_266EEA8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_978E88(a1);
}

void sub_987488(void *a1)
{
  *a1 = off_266EEA8;
  v2 = a1[26];
  if (v2)
  {
    a1[27] = v2;
    operator delete(v2);
  }

  sub_978E88(a1);

  operator delete();
}

void *sub_9874FC(uint64_t a1, char *__dst, _OWORD *__src, __int128 *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 2) < a5)
  {
    v8 = *a1;
    v9 = a5 + 0x6DB6DB6DB6DB6DB7 * (&v7[-*a1] >> 2);
    if (v9 > 0x924924924924924)
    {
      sub_1794();
    }

    v10 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v8) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x492492492492492)
    {
      v11 = 0x924924924924924;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x924924924924924)
      {
        operator new();
      }

      sub_1808();
    }

    v28 = 4 * ((__dst - v8) >> 2);
    v29 = 28 * a5;
    v30 = v28 + 28 * a5;
    v31 = v28;
    do
    {
      v32 = *__src;
      *(v31 + 12) = *(__src + 12);
      *v31 = v32;
      v31 = (v31 + 28);
      __src = (__src + 28);
      v29 -= 28;
    }

    while (v29);
    v33 = *(a1 + 8) - __dst;
    memcpy((v28 + 28 * a5), __dst, v33);
    v35 = v30 + v33;
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = v5 - *a1;
    v38 = v28 - v37;
    memcpy((v28 - v37), *a1, v37);
    *a1 = v38;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v28;
  }

  v12 = v7 - __dst;
  if (0x6DB6DB6DB6DB6DB7 * ((v7 - __dst) >> 2) >= a5)
  {
    v12 = 28 * a5;
    v23 = &__dst[28 * a5];
    v24 = &v7[-28 * a5];
    for (i = *(a1 + 8); v24 < v7; v24 += 28)
    {
      v26 = *v24;
      *(i + 12) = *(v24 + 12);
      *i = v26;
      i = (i + 28);
    }

    *(a1 + 8) = i;
    if (v7 == v23)
    {
      goto LABEL_25;
    }

    v21 = v7 - v23;
    v22 = &v7[-v21];
    goto LABEL_24;
  }

  v13 = (__src + v12);
  v14 = *(a1 + 8);
  for (j = v14; v13 != a4; v14 = (v14 + 28))
  {
    v16 = *v13;
    *(j + 12) = *(v13 + 12);
    *j = v16;
    j = (j + 28);
    v13 = (v13 + 28);
  }

  *(a1 + 8) = v14;
  if (v12 >= 1)
  {
    v17 = &__dst[28 * a5];
    v18 = (v14 - 28 * a5);
    for (k = v14; v18 < v7; v18 = (v18 + 28))
    {
      v20 = *v18;
      *(k + 12) = *(v18 + 12);
      *k = v20;
      k = (k + 28);
    }

    *(a1 + 8) = k;
    if (j == v17)
    {
      goto LABEL_25;
    }

    v21 = v14 - v17;
    v22 = &__dst[28 * a5];
LABEL_24:
    v27 = __src;
    memmove(v22, __dst, v21);
    __src = v27;
LABEL_25:
    memmove(v5, __src, v12);
  }

  return v5;
}

void sub_9877CC(uint64_t a1, char *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = (a2 - 28);
  v9 = (a2 - 56);
  v10 = (a2 - 84);
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = &a2[-v11];
    v13 = 0x6DB6DB6DB6DB6DB7 * (&a2[-v11] >> 2);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return;
    }

    if (v13 == 2)
    {
      if (*(a2 - 6) < *(v11 + 4))
      {
        *&v168[12] = *(v11 + 12);
        *v168 = *v11;
        v77 = *(a2 - 28);
        *(v11 + 12) = *(a2 - 1);
        *v11 = v77;
        *(a2 - 1) = *&v168[12];
        *(a2 - 28) = *v168;
      }

      return;
    }

LABEL_9:
    if (v12 <= 671)
    {
      v83 = (v11 + 28);
      v85 = v11 == a2 || v83 == a2;
      if (a4)
      {
        if (!v85)
        {
          v86 = 0;
          v87 = v11;
          do
          {
            v89 = v83;
            v90 = v87[8];
            if (v90 < v87[1])
            {
              v91 = *v89;
              v171 = *(v87 + 9);
              v183 = v87[13];
              v92 = v86;
              do
              {
                v93 = v11 + v92;
                *(v93 + 28) = *(v11 + v92);
                *(v93 + 40) = *(v11 + v92 + 12);
                if (!v92)
                {
                  v88 = v11;
                  goto LABEL_124;
                }

                v92 -= 28;
              }

              while (v90 < *(v93 - 24));
              v88 = v11 + v92 + 28;
LABEL_124:
              *v88 = v91;
              *(v88 + 4) = v90;
              *(v88 + 24) = v183;
              *(v88 + 8) = v171;
            }

            v83 = v89 + 28;
            v86 += 28;
            v87 = v89;
          }

          while (v89 + 28 != a2);
        }
      }

      else if (!v85)
      {
        do
        {
          v132 = v83;
          v133 = *(a1 + 32);
          if (v133 < *(a1 + 4))
          {
            v134 = *v83;
            v177 = *(a1 + 36);
            v185 = *(a1 + 52);
            v135 = v132;
            do
            {
              *v135 = *(v135 - 28);
              *(v135 + 12) = *(v135 - 1);
              v136 = *(v135 - 13);
              v135 -= 28;
            }

            while (v133 < v136);
            *v135 = v134;
            *(v135 + 1) = v133;
            *(v135 + 6) = v185;
            *(v135 + 8) = v177;
          }

          v83 = v132 + 28;
          a1 = v132;
        }

        while (v132 + 28 != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v94 = (v13 - 2) >> 1;
        v95 = v94;
        do
        {
          if (v94 >= v95)
          {
            v96 = (2 * (v95 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v97 = v11 + 28 * v96;
            if (2 * v95 + 2 < v13)
            {
              v98 = *(v97 + 4);
              v99 = *(v97 + 32);
              v100 = v98 < v99;
              v101 = v98 >= v99 ? 0 : 28;
              v97 += v101;
              if (v100)
              {
                v96 = 2 * v95 + 2;
              }
            }

            v102 = v11 + 28 * v95;
            v103 = *(v102 + 4);
            if (*(v97 + 4) >= v103)
            {
              v104 = *v102;
              v184 = *(v102 + 24);
              v172 = *(v102 + 8);
              do
              {
                v105 = v102;
                v102 = v97;
                v106 = *v97;
                *(v105 + 12) = *(v97 + 12);
                *v105 = v106;
                if (v94 < v96)
                {
                  break;
                }

                v107 = (2 * v96) | 1;
                v97 = v11 + 28 * v107;
                v108 = 2 * v96 + 2;
                if (v108 < v13)
                {
                  v109 = *(v97 + 4);
                  v110 = *(v97 + 32);
                  v111 = v109 < v110;
                  v112 = v109 >= v110 ? 0 : 28;
                  v97 += v112;
                  if (v111)
                  {
                    v107 = v108;
                  }
                }

                v96 = v107;
              }

              while (*(v97 + 4) >= v103);
              *v102 = v104;
              *(v102 + 4) = v103;
              *(v102 + 24) = v184;
              *(v102 + 8) = v172;
            }
          }

          v100 = v95-- <= 0;
        }

        while (!v100);
        v113 = 0x6DB6DB6DB6DB6DB7 * (v12 >> 2);
        do
        {
          v114 = 0;
          *&v173[12] = *(v11 + 12);
          *v173 = *v11;
          v115 = v11;
          do
          {
            v121 = v115 + 28 * v114;
            v119 = v121 + 28;
            v122 = (2 * v114) | 1;
            v114 = 2 * v114 + 2;
            if (v114 < v113)
            {
              v116 = *(v121 + 8);
              v117 = *(v121 + 15);
              v118 = v121 + 56;
              if (v116 >= v117)
              {
                v114 = v122;
              }

              else
              {
                v119 = v118;
              }
            }

            else
            {
              v114 = v122;
            }

            v120 = *v119;
            *(v115 + 12) = *(v119 + 12);
            *v115 = v120;
            v115 = v119;
          }

          while (v114 <= ((v113 - 2) >> 1));
          a2 -= 28;
          if (v119 == a2)
          {
            *(v119 + 12) = *&v173[12];
            *v119 = *v173;
          }

          else
          {
            v123 = *a2;
            *(v119 + 12) = *(a2 + 12);
            *v119 = v123;
            *(a2 + 12) = *&v173[12];
            *a2 = *v173;
            v124 = &v119[-v11 + 28];
            if (v124 >= 29)
            {
              v125 = (0x6DB6DB6DB6DB6DB7 * (v124 >> 2) - 2) >> 1;
              v126 = v11 + 28 * v125;
              v127 = *(v119 + 1);
              if (*(v126 + 4) < v127)
              {
                v128 = *v119;
                v141 = *(v119 + 8);
                v144 = *(v119 + 6);
                do
                {
                  v129 = v119;
                  v119 = v126;
                  v130 = *v126;
                  *(v129 + 12) = *(v126 + 12);
                  *v129 = v130;
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = v11 + 28 * v125;
                }

                while (*(v126 + 4) < v127);
                *v119 = v128;
                *(v119 + 1) = v127;
                *(v119 + 6) = v144;
                *(v119 + 8) = v141;
              }
            }
          }

          v100 = v113-- <= 2;
        }

        while (!v100);
      }

      return;
    }

    v14 = v13 >> 1;
    v15 = v11 + 28 * (v13 >> 1);
    v16 = *(a2 - 6);
    if (v12 < 0xE01)
    {
      v19 = *(v11 + 4);
      if (v19 < *(v15 + 4))
      {
        if (v16 < v19)
        {
          *&v146[12] = *(v15 + 12);
          *v146 = *v15;
          v20 = *v8;
          *(v15 + 12) = *(a2 - 1);
          *v15 = v20;
          goto LABEL_36;
        }

        *&v155[12] = *(v15 + 12);
        *v155 = *v15;
        v34 = *v11;
        *(v15 + 12) = *(v11 + 12);
        *v15 = v34;
        *(v11 + 12) = *&v155[12];
        *v11 = *v155;
        if (*(a2 - 6) < *(v11 + 4))
        {
          *&v146[12] = *(v11 + 12);
          *v146 = *v11;
          v35 = *v8;
          *(v11 + 12) = *(a2 - 1);
          *v11 = v35;
LABEL_36:
          *(a2 - 1) = *&v146[12];
          *v8 = *v146;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v16 >= v19)
      {
        goto LABEL_37;
      }

      *&v149[12] = *(v11 + 12);
      *v149 = *v11;
      v23 = *v8;
      *(v11 + 12) = *(a2 - 1);
      *v11 = v23;
      *(a2 - 1) = *&v149[12];
      *v8 = *v149;
      if (*(v11 + 4) >= *(v15 + 4))
      {
        goto LABEL_37;
      }

      *&v150[12] = *(v15 + 12);
      *v150 = *v15;
      v24 = *v11;
      *(v15 + 12) = *(v11 + 12);
      *v15 = v24;
      *(v11 + 12) = *&v150[12];
      *v11 = *v150;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v36 = *(v11 + 4);
      if (*(v11 - 24) < v36)
      {
        goto LABEL_62;
      }

      v65 = *v11;
      v140 = *(v11 + 8);
      v143 = *(v11 + 24);
      if (v36 >= *(a2 - 6))
      {
        v68 = v11 + 28;
        do
        {
          v11 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v69 = *(v68 + 4);
          v68 += 28;
        }

        while (v36 >= v69);
      }

      else
      {
        v66 = v11;
        do
        {
          v11 = v66 + 28;
          v67 = *(v66 + 32);
          v66 += 28;
        }

        while (v36 >= v67);
      }

      v70 = a2;
      if (v11 < a2)
      {
        v71 = a2;
        do
        {
          v70 = (v71 - 28);
          v72 = *(v71 - 6);
          v71 = (v71 - 28);
        }

        while (v36 < v72);
      }

      while (v11 < v70)
      {
        *&v167[12] = *(v11 + 12);
        *v167 = *v11;
        v73 = *v70;
        *(v11 + 12) = *(v70 + 12);
        *v11 = v73;
        *(v70 + 12) = *&v167[12];
        *v70 = *v167;
        do
        {
          v74 = *(v11 + 32);
          v11 += 28;
        }

        while (v36 >= v74);
        do
        {
          v75 = *(v70 - 6);
          v70 = (v70 - 28);
        }

        while (v36 < v75);
      }

      if (v11 - 28 != a1)
      {
        v76 = *(v11 - 28);
        *(a1 + 12) = *(v11 - 16);
        *a1 = v76;
      }

      a4 = 0;
      *(v11 - 28) = v65;
      *(v11 - 24) = v36;
      *(v11 - 4) = v143;
      *(v11 - 20) = v140;
    }

    else
    {
      v17 = *(v15 + 4);
      if (v17 >= *(v11 + 4))
      {
        if (v16 < v17)
        {
          *&v147[12] = *(v15 + 12);
          *v147 = *v15;
          v21 = *v8;
          *(v15 + 12) = *(a2 - 1);
          *v15 = v21;
          *(a2 - 1) = *&v147[12];
          *v8 = *v147;
          if (*(v15 + 4) < *(v11 + 4))
          {
            *&v148[12] = *(v11 + 12);
            *v148 = *v11;
            v22 = *v15;
            *(v11 + 12) = *(v15 + 12);
            *v11 = v22;
            *(v15 + 12) = *&v148[12];
            *v15 = *v148;
          }
        }
      }

      else
      {
        if (v16 >= v17)
        {
          *&v151[12] = *(v11 + 12);
          *v151 = *v11;
          v25 = *v15;
          *(v11 + 12) = *(v15 + 12);
          *v11 = v25;
          *(v15 + 12) = *&v151[12];
          *v15 = *v151;
          if (*(a2 - 6) >= *(v15 + 4))
          {
            goto LABEL_28;
          }

          *&v145[12] = *(v15 + 12);
          *v145 = *v15;
          v26 = *v8;
          *(v15 + 12) = *(a2 - 1);
          *v15 = v26;
        }

        else
        {
          *&v145[12] = *(v11 + 12);
          *v145 = *v11;
          v18 = *v8;
          *(v11 + 12) = *(a2 - 1);
          *v11 = v18;
        }

        *(a2 - 1) = *&v145[12];
        *v8 = *v145;
      }

LABEL_28:
      v27 = v11 + 28 * v14;
      v28 = v27 - 28;
      v29 = *(v27 - 24);
      v30 = *(a2 - 13);
      if (v29 >= *(v11 + 32))
      {
        if (v30 < v29)
        {
          *&v153[12] = *(v28 + 12);
          *v153 = *v28;
          v32 = *v9;
          *(v28 + 12) = *(a2 - 44);
          *v28 = v32;
          *(a2 - 44) = *&v153[12];
          *v9 = *v153;
          if (*(v28 + 4) < *(v11 + 32))
          {
            *v154 = *(v11 + 28);
            *&v154[12] = *(v11 + 40);
            v33 = *v28;
            *(v11 + 40) = *(v28 + 12);
            *(v11 + 28) = v33;
            *(v28 + 12) = *&v154[12];
            *v28 = *v154;
          }
        }
      }

      else
      {
        if (v30 >= v29)
        {
          *v156 = *(v11 + 28);
          *&v156[12] = *(v11 + 40);
          v37 = *v28;
          *(v11 + 40) = *(v28 + 12);
          *(v11 + 28) = v37;
          *(v28 + 12) = *&v156[12];
          *v28 = *v156;
          if (*(a2 - 13) >= *(v28 + 4))
          {
            goto LABEL_42;
          }

          *&v152[12] = *(v28 + 12);
          *v152 = *v28;
          v38 = *v9;
          *(v28 + 12) = *(a2 - 44);
          *v28 = v38;
        }

        else
        {
          *v152 = *(v11 + 28);
          *&v152[12] = *(v11 + 40);
          v31 = *v9;
          *(v11 + 40) = *(a2 - 44);
          *(v11 + 28) = v31;
        }

        *(a2 - 44) = *&v152[12];
        *v9 = *v152;
      }

LABEL_42:
      v39 = v11 + 28 * v14;
      v40 = *(v39 + 32);
      v41 = *(a2 - 20);
      if (v40 >= *(v11 + 60))
      {
        if (v41 < v40)
        {
          *&v158[12] = *(v39 + 40);
          *v158 = *(v39 + 28);
          v43 = *v10;
          *(v39 + 40) = *(a2 - 72);
          *(v39 + 28) = v43;
          *(a2 - 72) = *&v158[12];
          *v10 = *v158;
          if (*(v39 + 32) < *(v11 + 60))
          {
            *v159 = *(v11 + 56);
            *&v159[12] = *(v11 + 68);
            v44 = *(v39 + 28);
            *(v11 + 68) = *(v39 + 40);
            *(v11 + 56) = v44;
            *(v39 + 40) = *&v159[12];
            *(v39 + 28) = *v159;
          }
        }
      }

      else
      {
        if (v41 >= v40)
        {
          *v160 = *(v11 + 56);
          *&v160[12] = *(v11 + 68);
          v45 = *(v39 + 28);
          *(v11 + 68) = *(v39 + 40);
          *(v11 + 56) = v45;
          *(v39 + 40) = *&v160[12];
          *(v39 + 28) = *v160;
          if (*(a2 - 20) >= *(v39 + 32))
          {
            goto LABEL_51;
          }

          *&v157[12] = *(v39 + 40);
          *v157 = *(v39 + 28);
          v46 = *v10;
          *(v39 + 40) = *(a2 - 72);
          *(v39 + 28) = v46;
        }

        else
        {
          *v157 = *(v11 + 56);
          *&v157[12] = *(v11 + 68);
          v42 = *v10;
          *(v11 + 68) = *(a2 - 72);
          *(v11 + 56) = v42;
        }

        *(a2 - 72) = *&v157[12];
        *v10 = *v157;
      }

LABEL_51:
      v47 = *(v15 + 4);
      v48 = *(v39 + 32);
      if (v47 >= *(v28 + 4))
      {
        if (v48 < v47)
        {
          *&v162[12] = *(v15 + 12);
          *v162 = *v15;
          *v15 = *(v39 + 28);
          *(v15 + 12) = *(v39 + 40);
          *(v39 + 40) = *&v162[12];
          *(v39 + 28) = *v162;
          if (*(v15 + 4) < *(v28 + 4))
          {
            *&v163[12] = *(v28 + 12);
            *v163 = *v28;
            *v28 = *v15;
            *(v28 + 12) = *(v15 + 12);
            *(v15 + 12) = *&v163[12];
            *v15 = *v163;
          }
        }
      }

      else
      {
        if (v48 >= v47)
        {
          *&v164[12] = *(v28 + 12);
          *v164 = *v28;
          *v28 = *v15;
          *(v28 + 12) = *(v15 + 12);
          *(v15 + 12) = *&v164[12];
          *v15 = *v164;
          if (*(v39 + 32) >= *(v15 + 4))
          {
            goto LABEL_60;
          }

          *&v161[12] = *(v15 + 12);
          *v161 = *v15;
          *v15 = *(v39 + 28);
          *(v15 + 12) = *(v39 + 40);
        }

        else
        {
          *&v161[12] = *(v28 + 12);
          *v161 = *v28;
          *v28 = *(v39 + 28);
          *(v28 + 12) = *(v39 + 40);
        }

        *(v39 + 40) = *&v161[12];
        *(v39 + 28) = *v161;
      }

LABEL_60:
      *&v165[12] = *(v11 + 12);
      *v165 = *v11;
      v49 = *v15;
      *(v11 + 12) = *(v15 + 12);
      *v11 = v49;
      *(v15 + 12) = *&v165[12];
      *v15 = *v165;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v36 = *(v11 + 4);
LABEL_62:
      v50 = 0;
      v51 = *v11;
      v139 = *(v11 + 8);
      v142 = *(v11 + 24);
      do
      {
        v52 = *(v11 + v50 + 32);
        v50 += 28;
      }

      while (v52 < v36);
      v53 = v11 + v50;
      v54 = a2;
      if (v50 == 28)
      {
        v57 = a2;
        while (v53 < v57)
        {
          v55 = (v57 - 28);
          v58 = *(v57 - 6);
          v57 = (v57 - 28);
          if (v58 < v36)
          {
            goto LABEL_70;
          }
        }

        v55 = v57;
        v11 = v53;
      }

      else
      {
        do
        {
          v55 = (v54 - 28);
          v56 = *(v54 - 6);
          v54 = (v54 - 28);
        }

        while (v56 >= v36);
LABEL_70:
        v11 = v53;
        if (v53 < v55)
        {
          v59 = v55;
          do
          {
            *&v166[12] = *(v11 + 12);
            *v166 = *v11;
            v60 = *v59;
            *(v11 + 12) = *(v59 + 12);
            *v11 = v60;
            *(v59 + 12) = *&v166[12];
            *v59 = *v166;
            do
            {
              v61 = *(v11 + 32);
              v11 += 28;
            }

            while (v61 < v36);
            do
            {
              v62 = *(v59 - 6);
              v59 = (v59 - 28);
            }

            while (v62 >= v36);
          }

          while (v11 < v59);
        }
      }

      if (v11 - 28 != a1)
      {
        v63 = *(v11 - 28);
        *(a1 + 12) = *(v11 - 16);
        *a1 = v63;
      }

      *(v11 - 28) = v51;
      *(v11 - 24) = v36;
      *(v11 - 4) = v142;
      *(v11 - 20) = v139;
      if (v53 < v55)
      {
        goto LABEL_81;
      }

      v64 = sub_988BE0(a1, v11 - 28);
      if (sub_988BE0(v11, a2))
      {
        a2 = (v11 - 28);
        if (!v64)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v64)
      {
LABEL_81:
        sub_9877CC(a1, v11 - 28, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v13 != 3)
  {
    if (v13 == 4)
    {
      v81 = *(v11 + 32);
      v82 = *(v11 + 60);
      if (v81 >= *(v11 + 4))
      {
        if (v82 < v81)
        {
          *v175 = *(v11 + 28);
          *&v175[12] = *(v11 + 40);
          *(v11 + 28) = *(v11 + 56);
          *(v11 + 40) = *(v11 + 68);
          *(v11 + 56) = *v175;
          *(v11 + 68) = *&v175[12];
          if (*(v11 + 32) < *(v11 + 4))
          {
            *&v176[12] = *(v11 + 12);
            *v176 = *v11;
            *v11 = *(v11 + 28);
            *(v11 + 12) = *(v11 + 40);
            *(v11 + 28) = *v176;
            *(v11 + 40) = *&v176[12];
          }
        }
      }

      else
      {
        if (v82 < v81)
        {
          *&v170[12] = *(v11 + 12);
          *v170 = *v11;
          *v11 = *(v11 + 56);
          *(v11 + 12) = *(v11 + 68);
          goto LABEL_187;
        }

        *&v179[12] = *(v11 + 12);
        *v179 = *v11;
        *v11 = *(v11 + 28);
        *(v11 + 12) = *(v11 + 40);
        *(v11 + 28) = *v179;
        *(v11 + 40) = *&v179[12];
        if (*(v11 + 60) < *(v11 + 32))
        {
          *v170 = *(v11 + 28);
          *&v170[12] = *(v11 + 40);
          *(v11 + 28) = *(v11 + 56);
          *(v11 + 40) = *(v11 + 68);
LABEL_187:
          *(v11 + 56) = *v170;
          *(v11 + 68) = *&v170[12];
        }
      }

      if (*(a2 - 6) >= *(v11 + 60))
      {
        return;
      }

      *v180 = *(v11 + 56);
      *&v180[12] = *(v11 + 68);
      v138 = *v8;
      *(v11 + 68) = *(a2 - 1);
      *(v11 + 56) = v138;
      *(a2 - 1) = *&v180[12];
      *v8 = *v180;
      if (*(v11 + 60) >= *(v11 + 32))
      {
        return;
      }

      *v181 = *(v11 + 28);
      *&v181[12] = *(v11 + 40);
      *(v11 + 28) = *(v11 + 56);
      *(v11 + 40) = *(v11 + 68);
      *(v11 + 56) = *v181;
      *(v11 + 68) = *&v181[12];
LABEL_191:
      if (*(v11 + 32) < *(v11 + 4))
      {
        *&v182[12] = *(v11 + 12);
        *v182 = *v11;
        *v11 = *(v11 + 28);
        *(v11 + 12) = *(v11 + 40);
        *(v11 + 28) = *v182;
        *(v11 + 40) = *&v182[12];
      }

      return;
    }

    if (v13 == 5)
    {

      sub_9888E8(v11, v11 + 28, v11 + 56, v11 + 84, (a2 - 28));
      return;
    }

    goto LABEL_9;
  }

  v78 = *(v11 + 32);
  v79 = *(a2 - 6);
  if (v78 >= *(v11 + 4))
  {
    if (v79 >= v78)
    {
      return;
    }

    *v174 = *(v11 + 28);
    *&v174[12] = *(v11 + 40);
    v131 = *v8;
    *(v11 + 40) = *(a2 - 1);
    *(v11 + 28) = v131;
    *(a2 - 1) = *&v174[12];
    *v8 = *v174;
    goto LABEL_191;
  }

  if (v79 >= v78)
  {
    *&v178[12] = *(v11 + 12);
    *v178 = *v11;
    *v11 = *(v11 + 28);
    *(v11 + 12) = *(v11 + 40);
    *(v11 + 28) = *v178;
    *(v11 + 40) = *&v178[12];
    if (*(a2 - 6) >= *(v11 + 32))
    {
      return;
    }

    *v169 = *(v11 + 28);
    *&v169[12] = *(v11 + 40);
    v137 = *v8;
    *(v11 + 40) = *(a2 - 1);
    *(v11 + 28) = v137;
  }

  else
  {
    *&v169[12] = *(v11 + 12);
    *v169 = *v11;
    v80 = *v8;
    *(v11 + 12) = *(a2 - 1);
    *v11 = v80;
  }

  *(a2 - 1) = *&v169[12];
  *v8 = *v169;
}

__n128 sub_9888E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a2 + 4);
  v6 = *(a3 + 4);
  if (v5 >= *(a1 + 4))
  {
    if (v6 < v5)
    {
      *v21 = *a2;
      *&v21[12] = *(a2 + 12);
      v8 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v8;
      *(a3 + 12) = *&v21[12];
      result = *v21;
      *a3 = *v21;
      if (*(a2 + 4) < *(a1 + 4))
      {
        *v22 = *a1;
        *&v22[12] = *(a1 + 12);
        v10 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v10;
        *(a2 + 12) = *&v22[12];
        result = *v22;
        *a2 = *v22;
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      *v20 = *a1;
      *&v20[12] = *(a1 + 12);
      v7 = *(a3 + 12);
      *a1 = *a3;
      *(a1 + 12) = v7;
LABEL_9:
      *(a3 + 12) = *&v20[12];
      result = *v20;
      *a3 = *v20;
      goto LABEL_10;
    }

    *v23 = *a1;
    *&v23[12] = *(a1 + 12);
    v11 = *(a2 + 12);
    *a1 = *a2;
    *(a1 + 12) = v11;
    *(a2 + 12) = *&v23[12];
    result = *v23;
    *a2 = *v23;
    if (*(a3 + 4) < *(a2 + 4))
    {
      *v20 = *a2;
      *&v20[12] = *(a2 + 12);
      v12 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v12;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 4) < *(a3 + 4))
  {
    *v24 = *a3;
    *&v24[12] = *(a3 + 12);
    v13 = *(a4 + 12);
    *a3 = *a4;
    *(a3 + 12) = v13;
    *(a4 + 12) = *&v24[12];
    result = *v24;
    *a4 = *v24;
    if (*(a3 + 4) < *(a2 + 4))
    {
      *v25 = *a2;
      *&v25[12] = *(a2 + 12);
      v14 = *(a3 + 12);
      *a2 = *a3;
      *(a2 + 12) = v14;
      *(a3 + 12) = *&v25[12];
      result = *v25;
      *a3 = *v25;
      if (*(a2 + 4) < *(a1 + 4))
      {
        *v26 = *a1;
        *&v26[12] = *(a1 + 12);
        v15 = *(a2 + 12);
        *a1 = *a2;
        *(a1 + 12) = v15;
        *(a2 + 12) = *&v26[12];
        result = *v26;
        *a2 = *v26;
      }
    }
  }

  if (*(a5 + 4) < *(a4 + 4))
  {
    *v27 = *a4;
    *&v27[12] = *(a4 + 12);
    v16 = *(a5 + 12);
    *a4 = *a5;
    *(a4 + 12) = v16;
    *(a5 + 12) = *&v27[12];
    result = *v27;
    *a5 = *v27;
    if (*(a4 + 4) < *(a3 + 4))
    {
      *v28 = *a3;
      *&v28[12] = *(a3 + 12);
      v17 = *(a4 + 12);
      *a3 = *a4;
      *(a3 + 12) = v17;
      *(a4 + 12) = *&v28[12];
      result = *v28;
      *a4 = *v28;
      if (*(a3 + 4) < *(a2 + 4))
      {
        *v29 = *a2;
        *&v29[12] = *(a2 + 12);
        v18 = *(a3 + 12);
        *a2 = *a3;
        *(a2 + 12) = v18;
        *(a3 + 12) = *&v29[12];
        result = *v29;
        *a3 = *v29;
        if (*(a2 + 4) < *(a1 + 4))
        {
          *v30 = *a1;
          *&v30[12] = *(a1 + 12);
          v19 = *(a2 + 12);
          *a1 = *a2;
          *(a1 + 12) = v19;
          *(a2 + 12) = *&v30[12];
          result = *v30;
          *a2 = *v30;
        }
      }
    }
  }

  return result;
}

BOOL sub_988BE0(uint64_t a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 2);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v4 = (a2 - 28);
      v5 = *(a1 + 32);
      v6 = *(a2 - 24);
      if (v5 < *(a1 + 4))
      {
        if (v6 >= v5)
        {
          *v37 = *a1;
          *&v37[12] = *(a1 + 12);
          *a1 = *(a1 + 28);
          *(a1 + 12) = *(a1 + 40);
          *(a1 + 28) = *v37;
          *(a1 + 40) = *&v37[12];
          if (*(a2 - 24) >= *(a1 + 32))
          {
            return 1;
          }

          *v29 = *(a1 + 28);
          *&v29[12] = *(a1 + 40);
          v16 = *(a2 - 16);
          *(a1 + 28) = *v4;
          *(a1 + 40) = v16;
        }

        else
        {
          *v29 = *a1;
          *&v29[12] = *(a1 + 12);
          v7 = *(a2 - 16);
          *a1 = *v4;
          *(a1 + 12) = v7;
        }

        *(a2 - 16) = *&v29[12];
        *v4 = *v29;
        return 1;
      }

      if (v6 >= v5)
      {
        return 1;
      }

      *v32 = *(a1 + 28);
      *&v32[12] = *(a1 + 40);
      v15 = *(a2 - 16);
      *(a1 + 28) = *v4;
      *(a1 + 40) = v15;
      *(a2 - 16) = *&v32[12];
      *v4 = *v32;
LABEL_49:
      if (*(a1 + 32) < *(a1 + 4))
      {
        *v43 = *a1;
        *&v43[12] = *(a1 + 12);
        *a1 = *(a1 + 28);
        *(a1 + 12) = *(a1 + 40);
        *(a1 + 28) = *v43;
        *(a1 + 40) = *&v43[12];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      sub_9888E8(a1, a1 + 28, a1 + 56, a1 + 84, a2 - 28);
      return 1;
    }

    v12 = *(a1 + 32);
    v13 = *(a1 + 4);
    v14 = *(a1 + 60);
    if (v12 >= v13)
    {
      if (v14 < v12)
      {
        *v35 = *(a1 + 28);
        *&v35[12] = *(a1 + 40);
        *(a1 + 28) = *(a1 + 56);
        *(a1 + 40) = *(a1 + 68);
        *(a1 + 56) = *v35;
        *(a1 + 68) = *&v35[12];
        if (*(a1 + 32) < v13)
        {
          *v36 = *a1;
          *&v36[12] = *(a1 + 12);
          *a1 = *(a1 + 28);
          *(a1 + 12) = *(a1 + 40);
          *(a1 + 28) = *v36;
          *(a1 + 40) = *&v36[12];
        }
      }

      goto LABEL_46;
    }

    if (v14 >= v12)
    {
      *v40 = *a1;
      *&v40[12] = *(a1 + 12);
      *a1 = *(a1 + 28);
      *(a1 + 12) = *(a1 + 40);
      *(a1 + 28) = *v40;
      *(a1 + 40) = *&v40[12];
      if (v14 >= *(a1 + 32))
      {
        goto LABEL_46;
      }

      *v31 = *(a1 + 28);
      *&v31[12] = *(a1 + 40);
      *(a1 + 28) = *(a1 + 56);
      *(a1 + 40) = *(a1 + 68);
    }

    else
    {
      *v31 = *a1;
      *&v31[12] = *(a1 + 12);
      *a1 = *(a1 + 56);
      *(a1 + 12) = *(a1 + 68);
    }

    *(a1 + 56) = *v31;
    *(a1 + 68) = *&v31[12];
LABEL_46:
    if (*(a2 - 24) >= *(a1 + 60))
    {
      return 1;
    }

    v25 = (a2 - 28);
    *v41 = *(a1 + 56);
    *&v41[12] = *(a1 + 68);
    v26 = *(a2 - 16);
    *(a1 + 56) = *(a2 - 28);
    *(a1 + 68) = v26;
    *(v25 + 12) = *&v41[12];
    *v25 = *v41;
    if (*(a1 + 60) >= *(a1 + 32))
    {
      return 1;
    }

    *v42 = *(a1 + 28);
    *&v42[12] = *(a1 + 40);
    *(a1 + 28) = *(a1 + 56);
    *(a1 + 40) = *(a1 + 68);
    *(a1 + 56) = *v42;
    *(a1 + 68) = *&v42[12];
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 24) < *(a1 + 4))
    {
      *v28 = *a1;
      *&v28[12] = *(a1 + 12);
      v3 = *(a2 - 16);
      *a1 = *(a2 - 28);
      *(a1 + 12) = v3;
      *(a2 - 16) = *&v28[12];
      *(a2 - 28) = *v28;
    }

    return 1;
  }

LABEL_13:
  v8 = a1 + 56;
  v9 = *(a1 + 32);
  v10 = *(a1 + 4);
  v11 = *(a1 + 60);
  if (v9 >= v10)
  {
    if (v11 < v9)
    {
      *v33 = *(a1 + 28);
      *&v33[12] = *(a1 + 40);
      *(a1 + 28) = *v8;
      *(a1 + 40) = *(a1 + 68);
      *v8 = *v33;
      *(a1 + 68) = *&v33[12];
      if (*(a1 + 32) < v10)
      {
        *v34 = *a1;
        *&v34[12] = *(a1 + 12);
        *a1 = *(a1 + 28);
        *(a1 + 12) = *(a1 + 40);
        *(a1 + 28) = *v34;
        *(a1 + 40) = *&v34[12];
      }
    }
  }

  else
  {
    if (v11 >= v9)
    {
      *v38 = *a1;
      *&v38[12] = *(a1 + 12);
      *a1 = *(a1 + 28);
      *(a1 + 12) = *(a1 + 40);
      *(a1 + 28) = *v38;
      *(a1 + 40) = *&v38[12];
      if (v11 >= *(a1 + 32))
      {
        goto LABEL_33;
      }

      *v30 = *(a1 + 28);
      *&v30[12] = *(a1 + 40);
      *(a1 + 28) = *v8;
      *(a1 + 40) = *(a1 + 68);
    }

    else
    {
      *v30 = *a1;
      *&v30[12] = *(a1 + 12);
      *a1 = *v8;
      *(a1 + 12) = *(a1 + 68);
    }

    *v8 = *v30;
    *(a1 + 68) = *&v30[12];
  }

LABEL_33:
  v17 = a1 + 84;
  if (a1 + 84 == a2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  while (1)
  {
    v21 = *(v17 + 4);
    if (v21 < *(v8 + 4))
    {
      v22 = *v17;
      v39 = *(v17 + 8);
      v44 = *(v17 + 24);
      v23 = v18;
      do
      {
        v24 = a1 + v23;
        *(v24 + 84) = *(a1 + v23 + 56);
        *(v24 + 96) = *(a1 + v23 + 68);
        if (v23 == -56)
        {
          v20 = a1;
          goto LABEL_36;
        }

        v23 -= 28;
      }

      while (v21 < *(v24 + 32));
      v20 = a1 + v23 + 84;
LABEL_36:
      *v20 = v22;
      *(v20 + 4) = v21;
      *(v20 + 8) = v39;
      *(v20 + 24) = v44;
      if (++v19 == 8)
      {
        return v17 + 28 == a2;
      }
    }

    v8 = v17;
    v18 += 28;
    v17 += 28;
    if (v17 == a2)
    {
      return 1;
    }
  }
}

void sub_9891AC()
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
  xmmword_27B1F08 = 0u;
  unk_27B1F18 = 0u;
  dword_27B1F28 = 1065353216;
  sub_3A9A34(&xmmword_27B1F08, v0);
  sub_3A9A34(&xmmword_27B1F08, v3);
  sub_3A9A34(&xmmword_27B1F08, __p);
  sub_3A9A34(&xmmword_27B1F08, v9);
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
    qword_27B1EB0 = 0;
    qword_27B1EB8 = 0;
    qword_27B1EA8 = 0;
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

void sub_989484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1EC0)
  {
    qword_27B1EC8 = qword_27B1EC0;
    operator delete(qword_27B1EC0);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_989548(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_96BD18(a1, a2, a3);
  *result = &off_266EF38;
  return result;
}

double sub_98957C@<D0>(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 == 1)
  {

    sub_A1CB48(a1, 1, a3, a4);
  }

  else if (a3 == 1)
  {

    sub_989608(a1, a4);
  }

  else if (a3)
  {

    return sub_64B998(a4);
  }

  else
  {
    v8 = sub_96C238(a1);

    sub_A1D0C0(a1, v8, a4);
  }

  return result;
}

void sub_989608(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!sub_96C274(a1))
  {
    sub_96C410(a1, &v31);
    v4 = v33;
    if ((v33 & 0x80u) != 0)
    {
      v4 = v32;
    }

    if (!v4)
    {
      sub_64B998(a2);
      goto LABEL_77;
    }

    sub_64B9C4(a2, (*(a1 + 88) + 1177));
    v5 = sub_9BCDB4(*(a1 + 520), *(a1 + 521));
    memset(&v30, 0, sizeof(v30));
    if ((v5 - 1) < 2)
    {
      sub_A17808(*(a1 + 520), &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        operator new();
      }

      if (size + 12 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (size + 12 > 0x16)
      {
        operator new();
      }

      memset(&v27, 0, sizeof(v27));
      *(&v27.__r_.__value_.__s + 23) = size + 12;
      qmemcpy(&v27, "WALK_TO_NEAR", 12);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(&v27.__r_.__value_.__r.__words[1] + 4, p_p, size);
      *(&v27.__r_.__value_.__r.__words[1] + size + 4) = 0;
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if (v5 && v5 != 3)
      {
        goto LABEL_46;
      }

      sub_9CC42C(v5, *(a1 + 520), 0, 0, &__p);
      v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      LOBYTE(v7) = *(&__p.__r_.__value_.__s + 23);
      v8 = __p.__r_.__value_.__l.__size_;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v9 = __p.__r_.__value_.__l.__size_;
      }

      if (v9)
      {
        if (v9 + 1 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v9 + 1 > 0x16)
        {
          operator new();
        }

        memset(&v27, 0, sizeof(v27));
        *(&v27.__r_.__value_.__s + 23) = v9 + 1;
        v27.__r_.__value_.__s.__data_[0] = 32;
        v11 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v12 = &__p;
        }

        else
        {
          v12 = __p.__r_.__value_.__r.__words[0];
        }

        memmove(&v27.__r_.__value_.__l.__data_ + 1, v12, v9);
        *(&v27.__r_.__value_.__l.__data_ + v9 + 1) = 0;
        if (v11 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v27;
        v6 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
        v8 = v27.__r_.__value_.__l.__size_;
        v7 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
      }

      if ((v7 & 0x80u) == 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = v8;
      }

      if (v13 + 24 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v13 + 24 > 0x16)
      {
        operator new();
      }

      qmemcpy(&v27, "Get to {WalkDestination}", sizeof(v27));
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = &__p;
      }

      else
      {
        v14 = __p.__r_.__value_.__r.__words[0];
      }

      memmove(v28, v14, v13);
      v28[v13] = 0;
      if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_44:
        v30 = v27;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

LABEL_46:
        v15 = sub_9274F4(*(a1 + 96), &v30);
        if (*(v15 + 23) < 0)
        {
          sub_325C(&__p, *v15, v15[1]);
        }

        else
        {
          v16 = *v15;
          __p.__r_.__value_.__r.__words[2] = v15[2];
          *&__p.__r_.__value_.__l.__data_ = v16;
        }

        qmemcpy(&v27, "{WalkDestination}", 17);
        v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &__p;
        }

        else
        {
          v18 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v17 = __p.__r_.__value_.__l.__size_;
        }

        if (v17 >= 17)
        {
          v19 = v18 + v17;
          v20 = v18;
          do
          {
            v21 = memchr(v20, 123, v17 - 16);
            if (!v21)
            {
              break;
            }

            if (*v21 == v27.__r_.__value_.__r.__words[0] && *(v21 + 1) == v27.__r_.__value_.__l.__size_ && v21[16] == v27.__r_.__value_.__s.__data_[16])
            {
              if (v21 != v19 && v21 - v18 != -1)
              {
                if ((v33 & 0x80u) == 0)
                {
                  v24 = &v31;
                }

                else
                {
                  v24 = v31;
                }

                if ((v33 & 0x80u) == 0)
                {
                  v25 = v33;
                }

                else
                {
                  v25 = v32;
                }

                std::string::replace(&__p, v21 - v18, 0x11uLL, v24, v25);
              }

              break;
            }

            v20 = (v21 + 1);
            v17 = v19 - v20;
          }

          while (v19 - v20 >= 17);
        }

        sub_64C184(a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_77:
            if ((v33 & 0x80000000) == 0)
            {
              return;
            }

            goto LABEL_78;
          }
        }

        else if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }

        operator delete(v30.__r_.__value_.__l.__data_);
        if ((v33 & 0x80000000) == 0)
        {
          return;
        }

LABEL_78:
        operator delete(v31);
        return;
      }
    }

    operator delete(v30.__r_.__value_.__l.__data_);
    goto LABEL_44;
  }

  sub_64B998(a2);
}

void sub_989B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_53A868(v31);
  if (a31 < 0)
  {
    operator delete(a26);
  }

  _Unwind_Resume(a1);
}

void *sub_989BD0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_96F0D0(a1, a2, a3);
  *result = &off_266EFE8;
  return result;
}

uint64_t sub_989C04(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    return 0;
  }

  else
  {
    return sub_96F1B0(a1, a2);
  }
}

void *sub_989C18(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_9703FC(a1, a2, a3);
  *result = &off_266F098;
  return result;
}

void sub_989C4C(void *a1, std::string *a2, uint64_t a3, int a4, unsigned __int8 a5)
{
  if (*(a1[9] + 56) != -1)
  {
    memset(&v53, 0, sizeof(v53));
    if (a4)
    {
      v8 = sub_A16D3C(a1);
      if ((v8 & 0x80000000) == 0)
      {
        v9 = *(a1[10] + 96);
        if (0x4EC4EC4EC4EC4EC5 * ((*(a1[10] + 104) - v9) >> 4) <= v8)
        {
          sub_6FAB4();
        }

        sub_9D43A4((v9 + 208 * v8), &__p);
        size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          std::string::append(&v53, "to {System}", 0xBuLL);
          sub_98D488();
        }

        if ((*(&__p.__r_.__value_.__s + 23) & 0x80) != 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    v11 = a1[10];
    v12 = *(a1[9] + 56);
    v13 = *v11;
    if (0xCF3CF3CF3CF3CF3DLL * ((v11[1] - *v11) >> 3) <= v12)
    {
      sub_6FAB4();
    }

    v14 = sub_A182F0(a1);
    v15 = v13 + 168 * v12;
    if (sub_A1989C(a1, v14))
    {
      v16 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v16 = v53.__r_.__value_.__l.__size_;
      }

      if (v16)
      {
        v17 = ", {Platform}";
      }

      else
      {
        v17 = "to {Platform}";
      }

      if (v16)
      {
        v18 = 12;
      }

      else
      {
        v18 = 13;
      }

      std::string::append(&v53, v17, v18);
      v19 = *(v15 + 162);
      v20 = a5 & (*(v14 + 424) == 1);
      v21 = *(v14 + 304) & (v20 ^ 1);
      memset(&__p, 0, sizeof(__p));
      if (v19 == 2)
      {
        v22 = v21 == 0;
        if (v21)
        {
          v23 = " (Numeric_Grouped)";
        }

        else
        {
          v23 = " (Numeric)";
        }

        v24 = 10;
        v25 = 18;
      }

      else
      {
        if (v19 != 1)
        {
          goto LABEL_35;
        }

        v22 = v21 == 0;
        if (v21)
        {
          v23 = " (Name_Grouped)";
        }

        else
        {
          v23 = " (Name)";
        }

        v24 = 7;
        v25 = 15;
      }

      if (v22)
      {
        v26 = v24;
      }

      else
      {
        v26 = v25;
      }

      std::string::append(&__p, v23, v26);
LABEL_35:
      if (v20)
      {
        v27 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v27 = __p.__r_.__value_.__l.__size_;
          v28 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v28 - __p.__r_.__value_.__l.__size_ < 5)
          {
            if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 5 - v28)
            {
              sub_3244();
            }

LABEL_41:
            operator new();
          }

          p_p = __p.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 18) < 5)
          {
            goto LABEL_41;
          }

          p_p = &__p;
        }

        v30 = p_p + v27;
        v30[4] = 41;
        *v30 = 1414670368;
        v31 = v27 + 5;
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          __p.__r_.__value_.__l.__size_ = v27 + 5;
        }

        else
        {
          *(&__p.__r_.__value_.__s + 23) = v31 & 0x7F;
        }

        p_p->__r_.__value_.__s.__data_[v31] = 0;
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &__p;
      }

      else
      {
        v32 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v33 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(&v53, v32, v33);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      sub_A197B0(v14, &__p);
      sub_98D714();
    }

    if (sub_970E78(a1))
    {
      v34 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v34 = v53.__r_.__value_.__l.__size_;
      }

      if (v34)
      {
        v35 = " at {nextBoardStation}";
      }

      else
      {
        v35 = "to {nextBoardStation}";
      }

      if (v34)
      {
        v36 = 22;
      }

      else
      {
        v36 = 21;
      }

      std::string::append(&v53, v35, v36);
      v37 = sub_9BCBDC(a1[10], *(a1[9] + 56));
      if (sub_9BCDB4(v37, 0) == 1)
      {
        sub_9CC42C(1, v37, 0, 0, &__p);
        v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v39 = __p.__r_.__value_.__l.__size_;
        }

        if (v39)
        {
          if (v39 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_3244();
          }

          if (v39 + 1 > 0x16)
          {
            operator new();
          }

          v50 = 0;
          v51 = 0;
          v49 = &stru_20;
          HIBYTE(v51) = v39 + 1;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &__p;
          }

          else
          {
            v40 = __p.__r_.__value_.__r.__words[0];
          }

          memmove(&v49 + 1, v40, v39);
          *(&v49 + v39 + 1) = 0;
          if (v51 >= 0)
          {
            v41 = &v49;
          }

          else
          {
            v41 = v49;
          }

          if (v51 >= 0)
          {
            v42 = HIBYTE(v51);
          }

          else
          {
            v42 = v50;
          }

          std::string::append(&v53, v41, v42);
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v49);
          }

          v38 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        if (v38 < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      v43 = sub_A18C04(a1, v15);
      sub_9D43A4(v43, &__p);
      sub_98D9A0();
    }

    v44 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v45 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v45 = v53.__r_.__value_.__l.__size_;
    }

    if (v45)
    {
      if (v45 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (v45 + 1 > 0x16)
      {
        operator new();
      }

      __p.__r_.__value_.__r.__words[2] = 0;
      *&__p.__r_.__value_.__l.__data_ = 0x20uLL;
      *(&__p.__r_.__value_.__s + 23) = v45 + 1;
      if ((v53.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v46 = &v53;
      }

      else
      {
        v46 = v53.__r_.__value_.__r.__words[0];
      }

      memmove(&__p.__r_.__value_.__l.__data_ + 1, v46, v45);
      *(&__p.__r_.__value_.__l.__data_ + v45 + 1) = 0;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = __p.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v47, v48);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v44 = HIBYTE(v53.__r_.__value_.__r.__words[2]);
    }

    if (v44 < 0)
    {
      operator delete(v53.__r_.__value_.__l.__data_);
    }
  }
}

void sub_98A330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if (a31 < 0)
    {
LABEL_7:
      operator delete(a26);
      _Unwind_Resume(a1);
    }
  }

  else if (a31 < 0)
  {
    goto LABEL_7;
  }

  _Unwind_Resume(a1);
}

void sub_98A3E8(uint64_t *a1@<X0>, int a2@<W1>, unsigned __int8 a3@<W2>, uint64_t *a4@<X8>)
{
  sub_64B9C4(a4, (a1[11] + 1177));
  *(&v14.__r_.__value_.__s + 23) = 8;
  strcpy(&v14, "Transfer");
  *__p = 0u;
  *v12 = 0u;
  v13 = 1065353216;
  sub_989C4C(a1, &v14, __p, a2, a3);
  sub_A1C02C(a1, &v14, __p, a4);
  v8 = v12[0];
  if (v12[0])
  {
    do
    {
      v10 = *v8;
      if (*(v8 + 63) < 0)
      {
        operator delete(v8[5]);
        if (*(v8 + 39) < 0)
        {
LABEL_11:
          operator delete(v8[2]);
        }
      }

      else if (*(v8 + 39) < 0)
      {
        goto LABEL_11;
      }

      operator delete(v8);
      v8 = v10;
    }

    while (v10);
  }

  v9 = __p[0];
  __p[0] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_98A510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_2CD04(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v19);
  _Unwind_Resume(a1);
}

void sub_98A53C(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  sub_64B9C4(a4, (a1[11] + 1177));
  memset(&__dst, 0, sizeof(__dst));
  if (a2 > 599)
  {
    *(&__dst.__r_.__value_.__s + 23) = 15;
    strcpy(&__dst, "Walk {WalkTime}");
    v9 = a2 & 0x7FFFFFFF;
    v8 = "{WalkTime}";
  }

  else
  {
    sub_195A048(&__dst, "Walk less than {OneMinute}", 0x1AuLL);
    v8 = "{OneMinute}";
    v9 = 600;
  }

  sub_64E914(a4, v8, v9);
  *__p = 0u;
  *v14 = 0u;
  v15 = 1065353216;
  if (a3)
  {
    sub_989C4C(a1, &__dst, __p, 0, 0);
  }

  sub_A1C02C(a1, &__dst, __p, a4);
  v10 = v14[0];
  if (v14[0])
  {
    do
    {
      v12 = *v10;
      if (*(v10 + 63) < 0)
      {
        operator delete(v10[5]);
        if (*(v10 + 39) < 0)
        {
LABEL_16:
          operator delete(v10[2]);
        }
      }

      else if (*(v10 + 39) < 0)
      {
        goto LABEL_16;
      }

      operator delete(v10);
      v10 = v12;
    }

    while (v12);
  }

  v11 = __p[0];
  __p[0] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }
}

void sub_98A6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  sub_2CD04(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_53A868(v19);
  _Unwind_Resume(a1);
}

void sub_98A6E8(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v4 = *(a1 + 72);
  v6 = a2 == 2 && a3 == 0;
  if (*(v4 + 964))
  {
    if (v6)
    {
      v7 = *(a1 + 128) == 5;
      v8 = *(v4 + 960);
LABEL_10:
      sub_98A53C(a1, v8, v7, a4);
      return;
    }

    if (a2 == 1 && a3 == 2)
    {
      if (*(a1 + 128) == 6)
      {
        v8 = *(v4 + 960);
        v7 = 0;
        goto LABEL_10;
      }

      goto LABEL_25;
    }

    if (a2 == 2 && a3 == 1 && *(a1 + 128) == 6)
    {
      v9 = 1;
      goto LABEL_13;
    }
  }

  else
  {
    if (v6)
    {
      v9 = *(a1 + 128) == 6;
LABEL_13:
      sub_98A3E8(a1, v9, 0, a4);
      return;
    }

    if (a2 == 2 && a3 == 1)
    {
      sub_64B998(a4);
      return;
    }
  }

LABEL_25:
  sub_A1CB48(a1, a2, a3, a4);
}

uint64_t sub_98A79C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_96CE28(a1, a2, a3);
  *v5 = off_266F148;
  sub_3320D0(v5 + 69, *a3, a3[1]);
  *(a1 + 568) = *(a1 + 72) + 488;
  return a1;
}

uint64_t sub_98A810(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_96CE28(a1, a2, a3);
  *v5 = off_266F148;
  sub_3320D0(v5 + 69, *a3, a3[1]);
  *(a1 + 568) = *(a1 + 72) + 488;
  return a1;
}

void sub_98A884(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_64B9C4(a2, (a1[11] + 1177));
  sub_96DF30(a1);
  v4 = sub_96DF30(a1);
  v5 = a1[9];
  v7 = *(v5 + 488);
  v6 = *(v5 + 496);
  if (v6 != v7)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (*(v4 + 12) != *(v7 + v8 + 12) || *(v4 + 16) != *(v7 + v8 + 16))
      {
        operator new();
      }

      ++v9;
      v8 += 28;
    }

    while (v9 < 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 2));
  }

  HIBYTE(v15[2]) = 18;
  strcpy(v15, "Next at {TimeList}");
  v10 = sub_9274F4(a1[12], v15);
  sub_64C184(a2, v10);
  __p = 0;
  v13 = 0;
  v14 = 0;
  v11 = sub_A1D0A4(a1, a1[9]);
  sub_64E398(a2, "{TimeList}", &__p, v11, 0);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v15[2]) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_98AC20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if (!v22)
    {
LABEL_4:
      sub_53A868(v23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_4;
  }

  operator delete(v22);
  goto LABEL_4;
}

void sub_98ACBC(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v14 = 8;
  strcpy(v13, "Take the");
  if (a2 == 1)
  {
    if (*(a1 + 128) == 2)
    {
      v5 = &v13[1] + 1;
      v14 = 9;
      qmemcpy(v13, "Board the", 9);
    }

    else
    {
      v5 = &v13[1] + 7;
      v14 = 15;
      qmemcpy(v13, "Transfer to the", 15);
    }

    *v5 = 0;
  }

  sub_A1D550(a1, *(a1 + 72), 0, &v11);
  if (*(a1 + 216) == 1)
  {
    __p = 0uLL;
    v10 = 0;
  }

  else
  {
    sub_A17784(a1, &__p);
  }

  sub_A1DE44(a1, v13, &v11, &__p, *(a1 + 132), *(a1 + 217), a3);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p);
  }

  v6 = v11;
  if (v11)
  {
    v7 = v12;
    v8 = v11;
    if (v12 != v11)
    {
      do
      {
        v7 -= 160;
        sub_97EDE0(v7);
      }

      while (v7 != v6);
      v8 = v11;
    }

    v12 = v6;
    operator delete(v8);
  }

  if (v14 < 0)
  {
    operator delete(v13[0]);
  }
}

void sub_98AE34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16)
{
  sub_97C72C(&a16);
  if ((*(v16 - 17) & 0x80000000) == 0)
  {
    _Unwind_Resume(a1);
  }

  operator delete(*(v16 - 40));
  _Unwind_Resume(a1);
}

void sub_98AE98(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  if (a2 == 2 && a3 == 2)
  {
    if (*(*(a1 + 72) + 1008) == 3 && (0x6DB6DB6DB6DB6DB7 * ((*(*(a1 + 568) + 8) - **(a1 + 568)) >> 2)) >= 2)
    {

      sub_98A884(a1, a4);
      return;
    }

LABEL_22:
    sub_A1CB48(a1, a2, a3, a4);
    return;
  }

  if (a2 != 2 || a3)
  {
    if (a2 == 1 && !a3 && *(*(a1 + 72) + 2200) != *(*(a1 + 72) + 2208))
    {
      v4 = a2;
      v5 = a4;
      v6 = a3;
      v7 = a1;
      sub_A1D550(a1, *(a1 + 72), 0, &__p);
      v8 = v7;
      v9 = sub_A1DD00(v7, &__p);
      v10 = __p;
      a1 = v8;
      a3 = v6;
      a4 = v5;
      a2 = v4;
      if (__p)
      {
        v11 = v14;
        v12 = __p;
        if (v14 != __p)
        {
          do
          {
            v11 -= 160;
            sub_97EDE0(v11);
          }

          while (v11 != v10);
          v12 = __p;
        }

        v14 = v10;
        operator delete(v12);
        a1 = v8;
        a3 = v6;
        a4 = v5;
        a2 = v4;
      }

      if (!v9)
      {
        sub_98ACBC(a1, 1, a4);
        return;
      }
    }

    goto LABEL_22;
  }

  sub_98ACBC(a1, 2, a4);
}

void sub_98B048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_97C72C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_98B05C(uint64_t a1)
{
  if (sub_A1D4E8(a1))
  {
    LODWORD(result) = sub_A1D514(a1);
    if (result <= 600)
    {
      return 600;
    }

    else
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = sub_A1D4FC(a1);
    if (result <= 600)
    {
      return 600;
    }

    else
    {
      return result;
    }
  }
}

uint64_t sub_98B0B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[9];
  sub_64B9C4(a2, (a1[11] + 1177));
  v5 = a1[12];
  v11 = 21;
  strcpy(__p, "Every {TripFrequency}");
  v6 = sub_9274F4(v5, __p);
  sub_64C184(a2, v6);
  if (v11 < 0)
  {
    operator delete(*__p);
  }

  v7 = nullsub_1(v4 + 144);
  v8 = sub_B718(v4 + 144);
  return sub_64BDC8(a2, "{TripFrequency}", v7, v8);
}

void sub_98B17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_53A868(v14);
    _Unwind_Resume(a1);
  }

  sub_53A868(v14);
  _Unwind_Resume(a1);
}

void sub_98B1B4(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B998(a2);
  sub_64B998(a2 + 160);
  *(a2 + 320) = 0;
  v4 = *(a1[9] + 1008);
  if (v4 > 2)
  {
    if (v4 == 4)
    {
      sub_64B9C4(v16, (a1[11] + 1177));
      sub_98B0B8(a1, v15);
      v9 = a1[71];
      v11[23] = 15;
      strcpy(v11, "{CountdownList}");
      v14[23] = 20;
      strcpy(v14, "Now, {CountdownList}");
      v13 = 3;
      LODWORD(__p) = 7827278;
      v10 = a1[12];
      sub_96DB98(a1);
      sub_9CDAFC(v9, v11, v14, &__p, v10);
    }

    if (v4 != 3)
    {
      return;
    }

LABEL_8:
    v6 = sub_96DF30(a1);
    v7 = *v6;
    *(&v15[1] + 4) = *(v6 + 12);
    *v15 = v7;
    v8 = sub_96DB98(a1);
    sub_A1B5D8(a1, v15, v8, 0, 0, 0, 1, v16);
    sub_53D784(a2, v16);
    sub_53A868(v16);
    sub_A1B7F4(a1, v15, v16);
    sub_53D784(a2 + 160, v16);
    goto LABEL_10;
  }

  if (v4 == 1)
  {
    goto LABEL_8;
  }

  if (v4 == 2)
  {
    sub_98B0B8(a1, v16);
    sub_53D784(a2, v16);
    v5 = sub_53A868(v16);
    if (*(a1[9] + 512) == 4)
    {
      sub_64B9C4(v5, (a1[11] + 1177));
      sub_9CDF10(*(a1[9] + 512), a1[12], v16, 0, 0x7FFFFFFF);
      sub_594568(a2 + 160, v16);
LABEL_10:
      sub_53A868(v16);
    }
  }
}

void sub_98B484(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, char a48)
{
  sub_53A868(v48 + 160);
  sub_53A868(v48);
  _Unwind_Resume(a1);
}

uint64_t sub_98B558(uint64_t a1, int a2, int a3)
{
  if ((a2 - 4) < 2)
  {
    goto LABEL_2;
  }

  if (a2 == 6)
  {
    v8 = a3;
    v9 = sub_A1D4E8(a1);
    a2 = 6;
    a3 = v8;
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (a2 != 2 || a3 != 2)
    {
      return result;
    }

    if (*(*(a1 + 72) + 1008) != 3)
    {
      return 0;
    }
  }

LABEL_2:
  result = 0;
  v5 = *(a1 + 72);
  v6 = *(v5 + 1008);
  if (v6 <= 2)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
        return result;
      }

      return *(v5 + 512) == 4;
    }

    return *(v5 + 124) == 1;
  }

  if (v6 == 3)
  {
    if (a2 != 2 || a3 != 2)
    {
      return *(v5 + 124) == 1;
    }

    __p = 0;
    v19 = 0;
    v20 = 0;
    v11 = sub_96DF30(a1);
    v12 = *(a1 + 72);
    v14 = *(v12 + 488);
    v13 = *(v12 + 496);
    if (v13 != v14)
    {
      v15 = 0;
      v16 = 0;
      do
      {
        if (*(v11 + 12) != *(v14 + v15 + 12) || *(v11 + 16) != *(v14 + v15 + 16))
        {
          operator new();
        }

        ++v16;
        v15 += 28;
      }

      while (v16 < 0x6DB6DB6DB6DB6DB7 * ((v13 - v14) >> 2));
    }

    result = sub_9BCF58(&__p);
    if (__p)
    {
      v19 = __p;
      v17 = result;
      operator delete(__p);
      return v17;
    }
  }

  else if (v6 == 4)
  {
    v10 = *(a1 + 568);

    return sub_9BCF58(v10);
  }

  return result;
}

void sub_98B854(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_98B884(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_64B9C4(a2, (*(a1 + 88) + 1177));
  v5 = (*(*a1 + 128))(a1, v4);
  v29 = 0uLL;
  v30 = 0;
  v6 = *(a1 + 548);
  if (v6 <= 1)
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_11;
      }

      *(&__p.__r_.__value_.__s + 23) = 7;
      strcpy(&__p, "Station");
      sub_A1BB1C(a1, v5, &__p.__r_.__value_.__l.__data_, v27);
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  if (v6 != 2)
  {
    if (v6 != 3)
    {
      goto LABEL_11;
    }

LABEL_7:
    *(&__p.__r_.__value_.__s + 23) = 4;
    strcpy(&__p, "Stop");
    sub_A1BB1C(a1, v5, &__p.__r_.__value_.__l.__data_, v27);
    goto LABEL_9;
  }

  *(&__p.__r_.__value_.__s + 23) = 8;
  strcpy(&__p, "Terminal");
  sub_A1BB1C(a1, v5, &__p.__r_.__value_.__l.__data_, v27);
LABEL_9:
  v29 = *v27;
  v30 = v28;
  HIBYTE(v28) = 0;
  LOBYTE(v27[0]) = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_11:
  v7 = SHIBYTE(v30);
  if (v30 >= 0)
  {
    v8 = HIBYTE(v30);
  }

  else
  {
    v8 = *(&v29 + 1);
  }

  if (v8 + 18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (v8 + 18 >= 0x17)
  {
    operator new();
  }

  __p.__r_.__value_.__r.__words[2] = 8317;
  *&__p.__r_.__value_.__l.__data_ = *"Ride {StopsCount} ";
  if (v8)
  {
    if (v30 >= 0)
    {
      v9 = &v29;
    }

    else
    {
      v9 = v29;
    }

    memmove(&__p.__r_.__value_.__r.__words[2] + 2, v9, v8);
  }

  *(&__p.__r_.__value_.__r.__words[2] + v8 + 2) = 0;
  v10 = std::string::append(&__p, ", {LegDuration}", 0xFuLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v28 = v10->__r_.__value_.__r.__words[2];
  *v27 = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = sub_9274F4(*(a1 + 96), v27);
  if (*(v12 + 23) < 0)
  {
    sub_325C(&__p, *v12, v12[1]);
  }

  else
  {
    v13 = *v12;
    __p.__r_.__value_.__r.__words[2] = v12[2];
    *&__p.__r_.__value_.__l.__data_ = v13;
  }

  v25 = 2104782453;
  v24 = *"{StopsCount}";
  std::to_string(&v23, v5);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (size >= 12)
  {
    v16 = p_p + size;
    v17 = p_p;
    do
    {
      v18 = memchr(v17, 123, size - 11);
      if (!v18)
      {
        break;
      }

      if (*v18 == v24 && *(v18 + 2) == v25)
      {
        if (v18 != v16 && v18 - p_p != -1)
        {
          if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v20 = &v23;
          }

          else
          {
            v20 = v23.__r_.__value_.__r.__words[0];
          }

          if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v21 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v21 = v23.__r_.__value_.__l.__size_;
          }

          std::string::replace(&__p, v18 - p_p, 0xCuLL, v20, v21);
        }

        break;
      }

      v17 = (v18 + 1);
      size = v16 - v17;
    }

    while (v16 - v17 >= 12);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  sub_64C184(a2, &__p);
  v22 = (*(*a1 + 160))(a1);
  sub_64E914(a2, "{LegDuration}", v22);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
LABEL_54:
      if ((v7 & 0x80000000) == 0)
      {
        return;
      }

LABEL_58:
      operator delete(v29);
      return;
    }
  }

  else if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
    goto LABEL_54;
  }

  operator delete(v27[0]);
  if (v7 < 0)
  {
    goto LABEL_58;
  }
}

void sub_98BCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a30 & 0x80000000) == 0)
      {
LABEL_8:
        if (v31 < 0)
        {
          operator delete(*(v32 - 96));
        }

        sub_53A868(v30);
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a25);
      goto LABEL_8;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  if ((a30 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_98BE54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_98BE70@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B9C4(v32, (a1[11] + 1177));
  sub_64FB18(v4, &xmmword_22A5790, &unk_22A5760);
  memset(&__dst, 0, sizeof(__dst));
  v5 = sub_96DB98(a1);
  v6 = 0;
  v7 = a1[9];
  v8 = *(v7 + 1008);
  if (v8 <= 2)
  {
    if (v8 != 1)
    {
      if (v8 == 2)
      {
        if (*(v7 + 512) == 4)
        {
          sub_9CDF10(4, a1[12], v32, 0, 0x7FFFFFFF);
        }

        sub_98BD78();
      }

      goto LABEL_43;
    }

    v10 = sub_96DF30(a1);
    v11 = *v10;
    v12 = *(v10 + 4);
    if (*(v10 + 8))
    {
      v13 = *(v10 + 9);
      if (v13 == 1)
      {
        v14 = 5;
      }

      else if (v13 == 2)
      {
        v14 = 4;
      }

      else if (v11 == 0x7FFFFFFF || *(v10 + 9) || v12 == 0x7FFFFFFF || *(v10 + 8) != 1 || v11 / 60 != v12 / 60)
      {
        if (v12 <= v11)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }
      }

      else
      {
        v14 = 1;
      }

      v19 = "{LiveDepartureTime}";
    }

    else
    {
      v14 = 0;
      v19 = "{DepartureTime}";
    }

    if (v12 != 0x7FFFFFFF)
    {
      v11 = *(v10 + 4);
    }

    LODWORD(__p) = v11;
    sub_64E308(v32, v19, &__p, v5, 0);
    sub_9CE3F8(v32, v14);
    if (v14 <= 1)
    {
      if (v14)
      {
        v24 = a1[12];
        HIBYTE(v30) = 7;
        strcpy(&__p, "On-time");
        v25 = sub_9274F4(v24, &__p);
        LOBYTE(v27[0]) = 0;
        sub_64C770(v32, v25, &unk_22A5760, 1, v27);
        if (SHIBYTE(v30) < 0)
        {
          operator delete(__p);
        }

        LOBYTE(__p) = 0;
        sub_64C770(v32, "{LiveDepartureTime}", &unk_22A5760, 1, &__p);
        v6 = 1;
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      sub_195A048(&__dst, "Scheduled at {DepartureTime}", 0x1CuLL);
      v6 = 0;
      goto LABEL_43;
    }

    if ((v14 - 2) < 2)
    {
      sub_195A048(&__dst, "Now {LiveDepartureTime}", 0x17uLL);
      v6 = 2;
      v20 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v20 = __dst.__r_.__value_.__l.__size_;
      }

      if (v20)
      {
        goto LABEL_46;
      }

      goto LABEL_47;
    }

    if (v14 == 4)
    {
      sub_A1D2E0(a1, &__p);
    }

    else
    {
      sub_A1D1DC(a1, *(a1[9] + 56), &__p);
    }

    sub_55BD50(a2, &__p);
LABEL_60:
    *(a2 + 160) = 0;
    sub_53A868(&__p);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return sub_53A868(v32);
    }

    goto LABEL_48;
  }

  if (v8 == 3)
  {
    v15 = *(v7 + 512);
    sub_9CDF10(v15, a1[12], v32, 0, 0x7FFFFFFF);
    if (sub_9BCF58(a1[71]))
    {
      v6 = sub_9CDEEC(v15);
      v16 = a1[71];
      v29 = 0;
      v30 = 0;
      __p = 0;
      v17 = v16[1];
      if (v17 != *v16)
      {
        if (!((0x6DB6DB6DB6DB6DB7 * ((v17 - *v16) >> 2)) >> 62))
        {
          operator new();
        }

        sub_1794();
      }

      v27[0] = &__p;
      LOBYTE(v27[0]) = 0;
      sub_64C770(v32, "{TimeList}", &unk_22A5760, v6, v27);
      sub_64E398(v32, "{TimeList}", &__p, v5, 0);
      if (__p)
      {
        v29 = __p;
        operator delete(__p);
        v18 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v18 = __dst.__r_.__value_.__l.__size_;
        }

        if (v18)
        {
          goto LABEL_46;
        }

        goto LABEL_47;
      }

      goto LABEL_43;
    }

    (*(*a1 + 152))(&__p, a1);
    sub_55BD50(a2, &__p);
    goto LABEL_60;
  }

  if (v8 == 4)
  {
    v9 = *(v7 + 512);
    if (sub_9BCF58(a1[71]))
    {
      sub_9CDEEC(v9);
    }

    sub_9CDF10(v9, a1[12], v32, 0, 0x7FFFFFFF);
    sub_64B9EC(&__p, (a1[11] + 1177), &xmmword_22A5790);
    sub_98BD78();
  }

LABEL_43:
  v21 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v21 = __dst.__r_.__value_.__l.__size_;
  }

  if (v21)
  {
LABEL_46:
    v22 = sub_9274F4(a1[12], &__dst);
    LOBYTE(__p) = 0;
    sub_64C770(v32, v22, &unk_22A5760, v6, &__p);
  }

LABEL_47:
  sub_55BD50(a2, v32);
  *(a2 + 160) = 0;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_48:
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return sub_53A868(v32);
}

void sub_98C500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (*(v36 - 225) < 0)
  {
    operator delete(*(v36 - 248));
  }

  sub_53A868(v36 - 224);
  _Unwind_Resume(a1);
}

void *sub_98C610(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = sub_96DFB8(a1, a2, a3);
  *result = off_266F200;
  return result;
}

uint64_t sub_98C644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_64B998(a2);
  sub_64B998(a2 + 160);
  *(a2 + 320) = 0;
  if (sub_A1D4E8(a1) && (v4 = *(a1 + 72), v6 = *(v4 + 88), v5 = (v4 + 88), v6 != 0x7FFFFFFF))
  {
    v10 = sub_A1D0A4(a1, *(a1 + 72));
    sub_A1B5D8(a1, v5, v10, 0, 1, 1, 0, v11);
    sub_53D784(a2, v11);
    sub_53A868(v11);
    LODWORD(v11[0]) = sub_96F08C(a1);
    result = sub_25900((a1 + 520), v11, v10, (*(a1 + 72) + 40));
    if ((result & 1) == 0)
    {
      sub_A1B5D8(a1, v5, v10, 9, 1, 1, 0, v11);
      sub_53D784(a2 + 160, v11);
      return sub_53A868(v11);
    }
  }

  else
  {
    v7 = (*(*a1 + 160))(a1);
    sub_64BC50(v11, &unk_22A55C8, (*(a1 + 88) + 1177));
    sub_53D784(a2, v11);
    sub_53A868(v11);
    if (v7 <= 600)
    {
      v8 = 600;
    }

    else
    {
      v8 = v7;
    }

    result = sub_64E914(a2, &unk_22A55C8, v8);
    *(a2 + 320) = 1;
  }

  return result;
}

void sub_98C7E4(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

void sub_98C830(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  if (a2 == 2 && a3 == 1)
  {

    sub_64B998(a4);
  }

  else if (a3 == 2 && (v4 = a1[9], v5 = a1, v6 = a4, v7 = a2, v8 = sub_A1D4E8(a1), a2 = v7, a4 = v6, a3 = 2, v9 = v8, a1 = v5, v9) && *(v4 + 88) != 0x7FFFFFFF && *(v4 + 96) && *(v4 + 97) == 1)
  {
    v10 = *(*(v5 + 72) + 56);

    sub_A1D1DC(v5, v10, v6);
  }

  else
  {

    sub_A1CB48(a1, a2, a3, a4);
  }
}

uint64_t sub_98C92C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_96EA5C(a1, v4);
  sub_55BD50(a2, v4);
  *(a2 + 160) = 0;
  return sub_53A868(v4);
}

BOOL sub_98C988(uint64_t a1, int a2, int a3)
{
  if ((a2 & 0xFFFFFFFE) == 4 || (result = 0, a2 == 2) && a3 == 2)
  {
    result = sub_A1D4E8(a1);
    if (result)
    {
      return *(*(a1 + 72) + 96) == 1;
    }
  }

  return result;
}

uint64_t sub_98C9F4(uint64_t a1)
{
  if (sub_A1D4E8(a1))
  {
    LODWORD(result) = sub_A1D514(a1);
    if (result <= 600)
    {
      return 600;
    }

    else
    {
      return result;
    }
  }

  else
  {
    LODWORD(result) = sub_A1D4FC(a1);
    if (result <= 600)
    {
      return 600;
    }

    else
    {
      return result;
    }
  }
}

uint64_t sub_98CA50(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1[22] == 0x7FFFFFFF)
  {
    return v1[10];
  }

  else
  {
    return v1[(v1[23] != 0x7FFFFFFF) + 22];
  }
}

uint64_t sub_98CA8C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = sub_A18C14(a1, a2, a3);
  *v4 = &off_266F2C0;
  v5 = *(v4[4] - 8);
  if (*v5 == 2)
  {
    sub_A197B0(v5, __p);
    if (*(a1 + 391) < 0)
    {
      operator delete(*(a1 + 368));
    }

    *(a1 + 368) = *__p;
    *(a1 + 384) = v13;
    HIBYTE(v13) = 0;
    LOBYTE(__p[0]) = 0;
    *(a1 + 392) = v14;
    if (*(a1 + 423) < 0)
    {
      operator delete(*(a1 + 400));
      v6 = SHIBYTE(v13);
      *(a1 + 400) = v15;
      *(a1 + 416) = v16;
      HIBYTE(v16) = 0;
      LOBYTE(v15) = 0;
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *(a1 + 400) = v15;
      *(a1 + 416) = v16;
    }
  }

  if ((*(*(a1 + 72) + 157) & 1) == 0)
  {
    v8 = *(a1 + 24);
    v7 = *(a1 + 32);
    while (v7 != v8)
    {
      v10 = *(v7 - 8);
      v7 -= 8;
      v9 = v10;
      if (*v10 == 2)
      {
        goto LABEL_14;
      }
    }

    v9 = *(v8 - 8);
LABEL_14:
    *(a1 + 248) = v9[252];
  }

  return a1;
}

void sub_98CBD0(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 32);
  if (**(v5 - 8) != 2)
  {
    goto LABEL_17;
  }

  if (a2 == 2 && !a3)
  {
    strcpy(a4, "Transit_Stop");
    *(a4 + 23) = 12;
    *(a4 + 24) = 0u;
    *(a4 + 40) = 0u;
    *(a4 + 56) = 0u;
    *(a4 + 72) = 0;
    sub_64B998(a4 + 80);
    return;
  }

  if (a2 != 2 || a3 != 1)
  {
LABEL_17:
    if (a2 == 2 && a3 == 2 && (*(*(a1 + 72) + 157) & 1) == 0 && sub_A1D4E8(a1))
    {
      v8 = *(a1 + 72);
      if (*(v8 + 116) != 0x7FFFFFFF && *(v8 + 124) && *(v8 + 125) == 1)
      {
        sub_A1D1DC(a1, *(v8 + 48), __p);
        *(a4 + 57) = 0u;
        *(a4 + 32) = 0u;
        *(a4 + 48) = 0u;
        *a4 = 0u;
        *(a4 + 16) = 0u;
        sub_55BD50(a4 + 80, __p);
        sub_53A868(__p);
        return;
      }
    }

    goto LABEL_19;
  }

  if (!sub_A1989C(a1, *(v5 - 8)))
  {
LABEL_19:
    *(a4 + 208) = 0u;
    *(a4 + 224) = 0u;
    *(a4 + 176) = 0u;
    *(a4 + 192) = 0u;
    *(a4 + 144) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 112) = 0u;
    *(a4 + 128) = 0u;
    *(a4 + 96) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 80) = 0u;
    sub_64B998(a4 + 80);
    return;
  }

  sub_A198E8(a1, *(v5 - 8), *(*(a1 + 72) + 48), __p);
  if (SHIBYTE(v10) < 0)
  {
    sub_325C(a4, __p[0], __p[1]);
  }

  else
  {
    *a4 = *__p;
    *(a4 + 16) = v10;
  }

  *(a4 + 24) = 0u;
  *(a4 + 72) = 0;
  *(a4 + 40) = 0u;
  *(a4 + 56) = 0u;
  sub_64B998(a4 + 80);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_98CDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_1A104((v9 + 48));
  sub_4B98C4((v9 + 24));
  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  sub_53A868(&a9);
  _Unwind_Resume(a1);
}

void sub_98CE04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_98CE80(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1[9] + 157) == 1)
  {
    *(a2 + 320) = 0;
    *(a2 + 288) = 0u;
    *(a2 + 304) = 0u;
    *(a2 + 256) = 0u;
    *(a2 + 272) = 0u;
    *(a2 + 224) = 0u;
    *(a2 + 240) = 0u;
    *(a2 + 192) = 0u;
    *(a2 + 208) = 0u;
    *(a2 + 176) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 144) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 160) = 0u;
    sub_64B998(a2);
    sub_64B998(a2 + 160);
    *(a2 + 320) = 0;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = a1[4];
    do
    {
      if (v6 == a1[3])
      {
        break;
      }

      v8 = *(v6 - 8);
      v6 -= 8;
      v7 = v8;
      v9 = *v8;
      if (!v5)
      {
        if (v9 == 3)
        {
          if (*(v7 + 157))
          {
            v5 = 0;
          }

          else
          {
            v5 = v7;
          }
        }

        else
        {
          v5 = 0;
        }
      }

      if (v9 == 3)
      {
        v4 = v7;
      }
    }

    while (v9 != 2);
    sub_64B998(a2);
    sub_64B998(a2 + 160);
    *(a2 + 320) = 0;
    if (sub_A1D4E8(a1))
    {
      v10 = a1[9];
      v11 = 88;
      if (!v5)
      {
        v11 = 116;
      }

      v12 = (v10 + v11);
      v13 = *(v12 + 12);
      *v20 = *v12;
      *&v20[3] = v13;
      v14 = sub_A1D0A4(a1, v10);
      sub_A1B5D8(a1, v20, v14, 0, 1, 1, 0, v19);
      sub_53D784(a2, v19);
      sub_53A868(v19);
      if (v5)
      {
        v15 = sub_A1D0A4(a1, v5);
        if (!sub_25900(v15, (v5 + 40), v14, (a1[9] + 40)))
        {
          sub_A1B5D8(a1, v20, v14, 9, 1, 1, 0, v19);
          sub_53D784(a2 + 160, v19);
          sub_53A868(v19);
        }
      }
    }

    else if (v4)
    {
      v16 = *(a1[9] + 40);
      v17 = v4[10];
      sub_64BC50(v19, &unk_22A55E0, (a1[11] + 1177));
      sub_53D784(a2, v19);
      sub_53A868(v19);
      if (10 * (v16 - v17) <= 600)
      {
        v18 = 600;
      }

      else
      {
        v18 = 10 * (v16 - v17);
      }

      sub_64E914(a2, &unk_22A55E0, v18);
    }
  }
}

void sub_98D0C8(_Unwind_Exception *a1)
{
  sub_53A868(v1 + 160);
  sub_53A868(v1);
  _Unwind_Resume(a1);
}

BOOL sub_98D124(uint64_t a1, int a2, int a3)
{
  if (*(*(a1 + 72) + 157))
  {
    return 0;
  }

  if (a2 == 5 || (result = 0, a2 == 2) && a3 == 2)
  {
    v5 = a1;
    result = sub_A1D4E8(a1);
    if (result)
    {
      v6 = *(v5 + 72);
      if (**(*(v5 + 32) - 8) == 2)
      {
        return *(v6 + 124) == 1;
      }

      else
      {
        return *(v6 + 96) == 1;
      }
    }
  }

  return result;
}

void sub_98D1DC(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_98D218(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_98D254(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_98D28C(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    v3 = a1;
    operator delete(v2);
    a1 = v3;
    v1 = vars8;
  }

  return sub_96BE24(a1);
}

void sub_98D2F0(void *a1)
{
  *a1 = off_266E018;
  v2 = a1[65];
  if (v2)
  {
    a1[66] = v2;
    operator delete(v2);
  }

  sub_96BE24(a1);

  operator delete();
}

uint64_t sub_98D364(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    v3 = a1;
    operator delete(*(a1 + 520));
    a1 = v3;
  }

  return sub_96BE24(a1);
}

void sub_98D3D8(uint64_t a1)
{
  *a1 = off_266E0D0;
  if (*(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  sub_96BE24(a1);

  operator delete();
}

void sub_98D450(uint64_t a1)
{
  sub_96BE24(a1);

  operator delete();
}

void sub_98D524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_98D5F8(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_98D6F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_98D7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_98D884(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_98D984(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_98DA3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2CC94(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_98DB10(_BYTE *a1, char *__s, __int128 *a3)
{
  v6 = strlen(__s);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  a1[23] = v6;
  if (v6)
  {
    memmove(a1, __s, v6);
    a1[v7] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *a1 = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      v8 = *a3;
      *(a1 + 5) = *(a3 + 2);
      *(a1 + 24) = v8;
      return a1;
    }
  }

  sub_325C(a1 + 24, *a3, *(a3 + 1));
  return a1;
}

void sub_98DC10(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_98DC2C()
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
  xmmword_27B1F90 = 0u;
  unk_27B1FA0 = 0u;
  dword_27B1FB0 = 1065353216;
  sub_3A9A34(&xmmword_27B1F90, v0);
  sub_3A9A34(&xmmword_27B1F90, v3);
  sub_3A9A34(&xmmword_27B1F90, __p);
  sub_3A9A34(&xmmword_27B1F90, v9);
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
    qword_27B1F38 = 0;
    qword_27B1F40 = 0;
    qword_27B1F30 = 0;
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

void sub_98DF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1F48)
  {
    qword_27B1F50 = qword_27B1F48;
    operator delete(qword_27B1F48);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_98DFC8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  sub_A21D28(v7, a1);
  while (1)
  {
    sub_A21D2C(v7, v6);
    v3 = sub_A21B4C(v7, v6);
    sub_98ED24(v6);
    if (!v3)
    {
      break;
    }

    if (*sub_A21B20(v7) == 2)
    {
      LODWORD(v6[0]) = 0;
      LODWORD(v6[0]) = *(sub_A21B20(v7) + 1008);
      v4 = sub_A21B20(v7);
      sub_98F108(a2, (v4 + 8));
    }

    sub_A21708(v7);
  }

  return sub_98ED24(v7);
}

void sub_98E0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  sub_98ED24(&a27);
  sub_11BD8(v27);
  _Unwind_Resume(a1);
}

void sub_98E0F4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v9 = *a2;
  v10 = *(a2 + 8);
  if (*a2 != v10)
  {
    do
    {
      sub_98E85C(a1, v9, (a2 + 24), (a2 + 328), &v44);
      v11 = v55;
      if (v55 >= v56)
      {
        v55 = sub_98EEDC(&v54, &v44);
        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else
      {
        *v55 = v44;
        v12 = v45;
        *(v11 + 3) = v46;
        *(v11 + 4) = 0;
        *(v11 + 8) = v12;
        v45 = 0uLL;
        *(v11 + 5) = 0;
        *(v11 + 6) = 0;
        *(v11 + 2) = *__p;
        *(v11 + 6) = v48;
        v46 = 0;
        __p[0] = 0;
        __p[1] = 0;
        v48 = 0;
        v11[56] = v49;
        v55 = v11 + 64;
      }

      if (SHIBYTE(v46) < 0)
      {
        operator delete(v45);
      }

      v9 += 412;
    }

    while (v9 != v10);
  }

  if ((*(a3 + 64) & 1) == 0)
  {
    goto LABEL_44;
  }

  if (v54 == v55)
  {
    goto LABEL_27;
  }

  v13 = v54;
  while (1)
  {
    if (*v13 == *a3 && *(v13 + 56) == *(a3 + 56))
    {
      v15 = *(v13 + 32);
      v14 = *(v13 + 40);
      if (v14 - v15 == *(a3 + 40) - *(a3 + 32))
      {
        break;
      }
    }

LABEL_13:
    v13 += 64;
    if (v13 == v55)
    {
      goto LABEL_27;
    }
  }

  if (v15 != v14)
  {
    v16 = *(a3 + 32);
    while (*v15 == *v16 && *(v15 + 8) == *(v16 + 8) && *(v15 + 16) == *(v16 + 16) && *(v15 + 24) == *(v16 + 24))
    {
      v15 += 32;
      v16 += 32;
      if (v15 == v14)
      {
        goto LABEL_24;
      }
    }

    goto LABEL_13;
  }

LABEL_24:
  if (v13 != v55)
  {
    v17 = (v13 - v54) >> 6;
    if (0xDAB7EC1DD3431B57 * ((*(a2 + 8) - *a2) >> 5) <= v17)
    {
      sub_6FAB4();
    }

    *(*a2 + 3296 * v17 + 1152) = 1;
    goto LABEL_44;
  }

LABEL_27:
  if (!sub_7E7E4(1u))
  {
    goto LABEL_44;
  }

  sub_19594F8(&v44);
  sub_4A5C(&v44, "Could not find match for route handle", 37);
  if ((v53 & 0x10) != 0)
  {
    v19 = v52;
    if (v52 < v49)
    {
      v52 = v49;
      v19 = v49;
    }

    v20 = v48;
    v18 = (v19 - v48);
    if (v19 - v48 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_72;
    }
  }

  else
  {
    if ((v53 & 8) == 0)
    {
      v18 = 0;
      HIBYTE(v42) = 0;
      goto LABEL_39;
    }

    v20 = v46;
    v18 = (__p[1] - v46);
    if ((__p[1] - v46) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_72:
      sub_3244();
    }
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v42) = v18;
  if (v18)
  {
    memmove(&__dst, v20, v18);
  }

LABEL_39:
  *(&__dst + v18) = 0;
  sub_7E854(&__dst, 1u);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst);
  }

  if (v51 < 0)
  {
    operator delete(v50);
  }

  std::locale::~locale(&v45 + 1);
  std::ostream::~ostream();
  std::ios::~ios();
LABEL_44:
  sub_501CE8(&v43, *a1);
  v21 = *(a2 + 8) - *a2;
  if (v21)
  {
    v22 = 0;
    v23 = 0xDAB7EC1DD3431B57 * (v21 >> 5);
    do
    {
      v25 = *a4;
      if (0x34F72C234F72C235 * ((a4[1] - *a4) >> 3) <= v22)
      {
        sub_6FAB4();
      }

      v26 = v54;
      if (v22 >= (v55 - v54) >> 6)
      {
        sub_6FAB4();
      }

      v27 = *a2;
      sub_11F0388(&v44, 0, 0);
      sub_98F730((v26 + (v22 << 6)), &v44);
      v28 = &v27[412 * v22];
      if (*(a5 + 1444))
      {
        sub_98DFC8(v28, &__dst);
        DWORD2(v45) |= 8u;
        v29 = v52;
        if (!v52)
        {
          v30 = (v45 & 0xFFFFFFFFFFFFFFFCLL);
          if (v45)
          {
            v30 = *v30;
          }

          sub_120871C(v30);
          v29 = v31;
          v52 = v31;
        }

        sub_502D3C(&v43, (v25 + 232 * v22), &__dst, v29);
        v32 = v42;
        if (v42)
        {
          do
          {
            v33 = *v32;
            operator delete(v32);
            v32 = v33;
          }

          while (v33);
        }

        v34 = __dst;
        *&__dst = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      sub_1957E24(&v44, &__dst);
      v35 = (v28 + 141);
      if (*(v28 + 1151) < 0)
      {
        operator delete(*v35);
      }

      v24 = __dst;
      v28[143] = v42;
      *v35 = v24;
      sub_11F069C(&v44);
      ++v22;
    }

    while (v22 != v23);
  }

  v36 = v54;
  if (v54)
  {
    v37 = v55;
    v38 = v54;
    if (v55 != v54)
    {
      do
      {
        v39 = *(v37 - 4);
        if (v39)
        {
          *(v37 - 3) = v39;
          operator delete(v39);
        }

        if (*(v37 - 33) < 0)
        {
          operator delete(*(v37 - 7));
        }

        v37 -= 8;
      }

      while (v37 != v36);
      v38 = v54;
    }

    v55 = v36;
    operator delete(v38);
  }
}

void sub_98E70C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  sub_98F084((v19 - 112));
  _Unwind_Resume(a1);
}

void sub_98E7A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_98ECD0(va);
  sub_98F084((v8 - 112));
  _Unwind_Resume(a1);
}

void sub_98E7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_11F069C(va);
  sub_98F084((v8 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_98E85C@<X0>(uint64_t *a1@<X0>, char **a2@<X1>, void *a3@<X2>, const void **a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0x7FFFFFFF00000002;
  *(a5 + 8) = 0u;
  v9 = (a5 + 8);
  *(a5 + 24) = 0u;
  *(a5 + 40) = 0u;
  *(a5 + 56) = 0;
  result = sub_3B6890(*a1);
  *(a5 + 4) = *(result + 4);
  if (v9 != a4)
  {
    v11 = *(a4 + 23);
    if (*(a5 + 31) < 0)
    {
      if (v11 >= 0)
      {
        v12 = a4;
      }

      else
      {
        v12 = *a4;
      }

      if (v11 >= 0)
      {
        v13 = *(a4 + 23);
      }

      else
      {
        v13 = a4[1];
      }

      result = sub_13B38(a5 + 8, v12, v13);
    }

    else if ((*(a4 + 23) & 0x80) != 0)
    {
      result = sub_13A68((a5 + 8), *a4, a4[1]);
    }

    else
    {
      *v9 = *a4;
      *(a5 + 24) = a4[2];
    }
  }

  if (a2[1] - *a2 == 32 && (v14 = **a2, v15 = *(*a2 + 1), v15 - v14 == 104) && (v14 == v15 || (v17 = *(v14 + 8), v16 = *(v14 + 16), v17 == v16) || *(v16 - 5704) != 4))
  {
    *(a5 + 56) = 1;
  }

  else
  {
    sub_9D4074(v36, a2);
    while (1)
    {
      sub_9D4040(v36, v35);
      result = sub_9D427C(v36, v35);
      if ((result & 1) == 0)
      {
        break;
      }

      if (*sub_9D42B8(v36) == 2)
      {
        v18 = *(a5 + 40);
        v19 = *(a5 + 48);
        if (v18 >= v19)
        {
          v23 = *(a5 + 32);
          v24 = v18 - v23;
          v25 = (v18 - v23) >> 5;
          v26 = v25 + 1;
          if ((v25 + 1) >> 59)
          {
            sub_1794();
          }

          v27 = v19 - v23;
          if (v27 >> 4 > v26)
          {
            v26 = v27 >> 4;
          }

          if (v27 >= 0x7FFFFFFFFFFFFFE0)
          {
            v28 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v28 = v26;
          }

          if (v28)
          {
            if (!(v28 >> 59))
            {
              operator new();
            }

            sub_1808();
          }

          v29 = (32 * v25);
          *v29 = -1;
          v29[1] = -1;
          v29[2] = -1;
          v29[3] = 0x7FFFFFFFLL;
          v20 = 32 * v25 + 32;
          memcpy(0, v23, v24);
          *(a5 + 32) = 0;
          *(a5 + 40) = v20;
          *(a5 + 48) = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v18 = -1;
          *(v18 + 1) = -1;
          v20 = (v18 + 32);
          *(v18 + 2) = -1;
          *(v18 + 3) = 0x7FFFFFFFLL;
        }

        *(a5 + 40) = v20;
        v30 = *(sub_9D42B8(v36) + 48);
        if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= v30)
        {
          sub_6FAB4();
        }

        *(v20 - 24) = *(*a3 + 168 * v30 + 88);
        v31 = sub_9D42B8(v36);
        if ((*(v31 + 792) & 1) == 0)
        {
          sub_4F0F0C();
        }

        v32 = *(v31 + 752);
        v33 = a3[9];
        if (0x66FD0EB66FD0EB67 * ((a3[10] - v33) >> 3) <= v32)
        {
          sub_6FAB4();
        }

        *(v20 - 32) = *(v33 + 696 * v32 + 48);
        v34 = *(v31 + 116);
        if (v34 == 0x7FFFFFFF)
        {
          v34 = *(sub_9D42B8(v36) + 40);
        }

        *(v20 - 8) = v34;
      }

      else if (*sub_9D42B8(v36) == 4)
      {
        v21 = *(a5 + 40);
        v22 = *(sub_9D42B8(v36) + 48);
        if (0xCF3CF3CF3CF3CF3DLL * ((a3[1] - *a3) >> 3) <= v22)
        {
          sub_6FAB4();
        }

        *(v21 - 16) = *(*a3 + 168 * v22 + 88);
      }

      sub_9D40D8(v36);
    }
  }

  return result;
}

uint64_t sub_98ECD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    *(a1 + 40) = v2;
    operator delete(v2);
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_98ED24(void *a1)
{
  v2 = a1[13];
  v3 = a1[14];
  if (v3 == v2)
  {
    a1[17] = 0;
    v11 = 0;
  }

  else
  {
    v4 = a1[16];
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((a1[17] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[17] + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7)
        {
          *(v7 + 8) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[13];
      v3 = a1[14];
    }

    a1[17] = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = a1[14];
        v2 = (a1[13] + 8);
        a1[13] = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    a1[16] = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = a1[13];
    v14 = a1[14];
    if (v14 != v15)
    {
      a1[14] = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v16 = a1[12];
  if (v16)
  {
    operator delete(v16);
  }

  v17 = a1[9];
  if (v17)
  {
    do
    {
      v18 = *v17;
      operator delete(v17);
      v17 = v18;
    }

    while (v18);
  }

  v19 = a1[7];
  a1[7] = 0;
  if (v19)
  {
    operator delete(v19);
  }

  v20 = a1[4];
  if (v20)
  {
    a1[5] = v20;
    operator delete(v20);
  }

  return a1;
}

uint64_t sub_98EEDC(uint64_t *a1, uint64_t a2)
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

  v7 = v2 << 6;
  *v7 = *a2;
  *(v7 + 8) = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(v7 + 56) = *(a2 + 56);
  v8 = (v2 << 6) + 64;
  v9 = *a1;
  v10 = a1[1];
  v11 = *a1 - v10;
  v12 = v7 + v11;
  if (*a1 != v10)
  {
    v13 = v7 + v11;
    v14 = *a1;
    do
    {
      *v13 = *v14;
      v15 = *(v14 + 8);
      *(v13 + 24) = *(v14 + 24);
      *(v13 + 8) = v15;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      *(v14 + 8) = 0;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 32) = *(v14 + 32);
      *(v13 + 48) = *(v14 + 48);
      *(v14 + 32) = 0;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v13 + 56) = *(v14 + 56);
      v14 += 64;
      v13 += 64;
    }

    while (v14 != v10);
    do
    {
      v16 = *(v9 + 32);
      if (v16)
      {
        *(v9 + 40) = v16;
        operator delete(v16);
      }

      if (*(v9 + 31) < 0)
      {
        operator delete(*(v9 + 8));
      }

      v9 += 64;
    }

    while (v9 != v10);
    v9 = *a1;
  }

  *a1 = v12;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void **sub_98F084(void **a1)
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
        v5 = *(v3 - 4);
        if (v5)
        {
          *(v3 - 3) = v5;
          operator delete(v5);
        }

        if (*(v3 - 33) < 0)
        {
          operator delete(*(v3 - 7));
        }

        v3 -= 64;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t *sub_98F108(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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
        if (*(v7 + 4) == v2)
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_98F43C()
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
  xmmword_27B1FE8 = 0u;
  unk_27B1FF8 = 0u;
  dword_27B2008 = 1065353216;
  sub_3A9A34(&xmmword_27B1FE8, v0);
  sub_3A9A34(&xmmword_27B1FE8, v3);
  sub_3A9A34(&xmmword_27B1FE8, __p);
  sub_3A9A34(&xmmword_27B1FE8, v9);
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
    qword_27B1FC0 = 0;
    qword_27B1FC8 = 0;
    qword_27B1FB8 = 0;
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

void sub_98F684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_27B1FD0)
  {
    qword_27B1FD8 = qword_27B1FD0;
    operator delete(qword_27B1FD0);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_98F730(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  *(a2 + 120) = LODWORD(result->__r_.__value_.__l.__data_);
  v5 = result[2].__r_.__value_.__s.__data_[8];
  v6 = v4 | 0x110;
  *(a2 + 16) = v4 | 0x110;
  *(a2 + 104) = v5;
  v7 = HIDWORD(result->__r_.__value_.__r.__words[0]);
  if (v7 != 0x7FFFFFFF)
  {
    v6 = v4 | 0x130;
    *(a2 + 16) = v4 | 0x130;
    *(a2 + 108) = v7;
  }

  v8 = result[1].__r_.__value_.__s.__data_[7];
  if ((v8 & 0x80u) != 0)
  {
    v8 = result->__r_.__value_.__r.__words[2];
  }

  if (v8)
  {
    *(a2 + 16) = v6 | 1;
    v9 = *(a2 + 8);
    v10 = (v9 & 0xFFFFFFFFFFFFFFFCLL);
    if (v9)
    {
      v10 = *v10;
    }

    result = sub_194EA1C((a2 + 72), &result->__r_.__value_.__r.__words[1], v10);
  }

  size = v3[1].__r_.__value_.__l.__size_;
  v12 = v3[1].__r_.__value_.__r.__words[2];
  while (size != v12)
  {
    v19 = *(a2 + 64);
    if (v19 && (v20 = *(a2 + 56), v20 < *v19))
    {
      *(a2 + 56) = v20 + 1;
      v14 = *&v19[2 * v20 + 2];
    }

    else
    {
      sub_11F1614(*(a2 + 48));
      v14 = sub_19593CC(a2 + 48, v13);
    }

    v15 = nullsub_1(*size);
    *(v14 + 16) |= 1u;
    *(v14 + 24) = v15;
    v16 = nullsub_1(*(size + 8));
    *(v14 + 16) |= 2u;
    *(v14 + 32) = v16;
    result = nullsub_1(*(size + 16));
    v17 = *(v14 + 16);
    *(v14 + 16) = v17 | 4;
    *(v14 + 40) = result;
    v18 = *(size + 24);
    *(v14 + 16) = v17 | 0xC;
    *(v14 + 48) = v18;
    size += 32;
  }

  return result;
}

void sub_98F88C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 32);
  if (!v3)
  {
    *a2 = 0x7FFFFFFF00000002;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return;
  }

  v26 = 0x7FFFFFFF00000002;
  v4 = *(a1 + 40);
  *v27 = 0u;
  *__p = 0u;
  if (v4)
  {
    v5 = (v4 + 8);
  }

  else
  {
    v5 = 0;
  }

  v6 = 8 * v3;
  *&__p[16] = 0uLL;
  v29 = 0;
  while (1)
  {
    v7 = *v5;
    if ((*(*v5 + 16) & 0x80) != 0)
    {
      break;
    }

LABEL_6:
    ++v5;
    v6 -= 8;
    if (!v6)
    {
      v29 = *&__p[8] == *&__p[16];
      v19 = *(a1 + 16);
      if ((v19 & 0x20) != 0)
      {
        HIDWORD(v26) = *(a1 + 108);
      }

      if (v19)
      {
        v20 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
        if (v27 != v20)
        {
          v21 = *(v20 + 23);
          if ((__p[7] & 0x80000000) != 0)
          {
            if (v21 >= 0)
            {
              v23 = (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL);
            }

            else
            {
              v23 = *v20;
            }

            if (v21 >= 0)
            {
              v24 = *(v20 + 23);
            }

            else
            {
              v24 = *(v20 + 8);
            }

            sub_13B38(v27, v23, v24);
          }

          else if ((*(v20 + 23) & 0x80) != 0)
          {
            sub_13A68(v27, *v20, *(v20 + 8));
          }

          else
          {
            v22 = *v20;
            *__p = *(v20 + 16);
            *v27 = v22;
          }
        }
      }

      *a2 = v26;
      *(a2 + 8) = *v27;
      *(a2 + 24) = *__p;
      v27[0] = 0;
      v27[1] = 0;
      *__p = 0;
      *(a2 + 32) = *&__p[8];
      *(a2 + 48) = *&__p[24];
      memset(&__p[8], 0, 24);
      *(a2 + 56) = v29;
      if ((__p[7] & 0x80000000) == 0)
      {
        return;
      }

LABEL_45:
      operator delete(v27[0]);
      return;
    }
  }

  if (*(v7 + 56) >= 2 && *(v7 + 40))
  {
    v8 = *&__p[16];
    if (*&__p[16] >= *&__p[24])
    {
      v10 = *&__p[8];
      v11 = *&__p[16] - *&__p[8];
      v12 = (*&__p[16] - *&__p[8]) >> 5;
      v13 = v12 + 1;
      if ((v12 + 1) >> 59)
      {
        sub_1794();
      }

      v14 = *&__p[24] - *&__p[8];
      if ((*&__p[24] - *&__p[8]) >> 4 > v13)
      {
        v13 = v14 >> 4;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFE0)
      {
        v15 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13;
      }

      if (v15)
      {
        if (!(v15 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v16 = (*&__p[16] - *&__p[8]) >> 5;
      v17 = (32 * v12);
      *v17 = -1;
      v17[1] = -1;
      v17[2] = -1;
      v17[3] = 0x7FFFFFFFLL;
      v9 = 32 * v12 + 32;
      v18 = &v17[-4 * v16];
      memcpy(v18, v10, v11);
      *&__p[8] = v18;
      *&__p[24] = 0;
      if (v10)
      {
        operator delete(v10);
      }
    }

    else
    {
      **&__p[16] = -1;
      v8[1] = -1;
      v9 = (v8 + 4);
      v8[2] = -1;
      v8[3] = 0x7FFFFFFFLL;
    }

    *&__p[16] = v9;
    *(v9 - 32) = nullsub_1(*(v7 + 144));
    *(v9 - 24) = nullsub_1(**(v7 + 64));
    *(v9 - 16) = nullsub_1(*(*(v7 + 64) + 8 * *(v7 + 56) - 8));
    *(v9 - 8) = sub_96AE18(**(v7 + 48));
    goto LABEL_6;
  }

  *a2 = 0x7FFFFFFF00000002;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  if (*&__p[8])
  {
    *&__p[16] = *&__p[8];
    operator delete(*&__p[8]);
  }

  if ((__p[7] & 0x80000000) != 0)
  {
    goto LABEL_45;
  }
}

void sub_98FBB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FBF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_98ECD0(va);
  _Unwind_Resume(a1);
}

void sub_98FC40(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = 0x7FFFFFFF00000002;
  memset(v40, 0, sizeof(v40));
  v41 = *(a1 + 104);
  v2 = *(a1 + 16);
  if ((v2 & 0x20) != 0)
  {
    HIDWORD(v39) = *(a1 + 108);
  }

  if (v2)
  {
    v3 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (v40 != v3)
    {
      if (*(v3 + 23) < 0)
      {
        v5 = a1;
        sub_13A68(v40, *v3, *(v3 + 8));
        a1 = v5;
      }

      else
      {
        v4 = *v3;
        *&v40[1] = *(v3 + 16);
        v40[0] = v4;
      }
    }
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 56);
  if (!v8)
  {
LABEL_28:
    *a2 = v39;
    *(a2 + 8) = v40[0];
    *(a2 + 24) = *&v40[1];
    memset(v40, 0, 24);
    *(a2 + 32) = *(&v40[1] + 8);
    *(a2 + 48) = *(&v40[2] + 1);
    memset(&v40[1] + 8, 0, 24);
    *(a2 + 56) = v41;
    goto LABEL_48;
  }

  v9 = 8 * v8;
  while (1)
  {
    v10 = *v7;
    v11 = *&v40[2];
    if (*&v40[2] >= *(&v40[2] + 1))
    {
      v13 = *(&v40[1] + 1);
      v14 = *&v40[2] - *(&v40[1] + 1);
      v15 = (*&v40[2] - *(&v40[1] + 1)) >> 5;
      v16 = v15 + 1;
      if ((v15 + 1) >> 59)
      {
        sub_1794();
      }

      v17 = *(&v40[2] + 1) - *(&v40[1] + 1);
      if ((*(&v40[2] + 1) - *(&v40[1] + 1)) >> 4 > v16)
      {
        v16 = v17 >> 4;
      }

      if (v17 >= 0x7FFFFFFFFFFFFFE0)
      {
        v18 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v18 = v16;
      }

      if (v18)
      {
        if (!(v18 >> 59))
        {
          operator new();
        }

        sub_1808();
      }

      v19 = (*&v40[2] - *(&v40[1] + 1)) >> 5;
      v20 = (32 * v15);
      *v20 = -1;
      v20[1] = -1;
      v20[2] = -1;
      v20[3] = 0x7FFFFFFFLL;
      v12 = 32 * v15 + 32;
      v21 = &v20[-4 * v19];
      memcpy(v21, v13, v14);
      *(&v40[1] + 1) = v21;
      v40[2] = v12;
      if (v13)
      {
        operator delete(v13);
      }
    }

    else
    {
      **&v40[2] = -1;
      v11[1] = -1;
      v12 = (v11 + 4);
      v11[2] = -1;
      v11[3] = 0x7FFFFFFFLL;
    }

    *&v40[2] = v12;
    if ((~*(v10 + 16) & 0xF) != 0)
    {
      break;
    }

    *(v12 - 32) = nullsub_1(*(v10 + 24));
    *(v12 - 24) = nullsub_1(*(v10 + 32));
    *(v12 - 16) = nullsub_1(*(v10 + 40));
    *(v12 - 8) = sub_96AE18(*(v10 + 48));
    ++v7;
    v9 -= 8;
    if (!v9)
    {
      goto LABEL_28;
    }
  }

  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v28);
    sub_4A5C(&v28, "Route handle leg is missing data", 32);
    if ((v38 & 0x10) != 0)
    {
      v23 = v37;
      if (v37 < v34)
      {
        v37 = v34;
        v23 = v34;
      }

      v24 = v33;
      v22 = v23 - v33;
      if (v23 - v33 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_52;
      }
    }

    else
    {
      if ((v38 & 8) == 0)
      {
        v22 = 0;
        v27 = 0;
LABEL_41:
        *(&__dst + v22) = 0;
        sub_7E854(&__dst, 1u);
        if (v27 < 0)
        {
          operator delete(__dst);
        }

        if (v36 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v30);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_46;
      }

      v24 = v31;
      v22 = v32 - v31;
      if ((v32 - v31) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_52:
        sub_3244();
      }
    }

    if (v22 >= 0x17)
    {
      operator new();
    }

    v27 = v22;
    if (v22)
    {
      memmove(&__dst, v24, v22);
    }

    goto LABEL_41;
  }

LABEL_46:
  *a2 = 0x7FFFFFFF00000002;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = 0;
  if (*(&v40[1] + 1))
  {
    *&v40[2] = *(&v40[1] + 1);
    operator delete(*(&v40[1] + 1));
  }

LABEL_48:
  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }
}

void sub_990110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    sub_1959728(&a18);
    sub_98ECD0(v18 - 168);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a18);
  sub_98ECD0(v18 - 168);
  _Unwind_Resume(a1);
}

uint64_t sub_9901FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_11F0388(v23, 0, 0);
  if ((sub_194DB28(v4, a1) & 1) == 0)
  {
    if (!sub_7E7E4(1u))
    {
      goto LABEL_37;
    }

    sub_19594F8(&v12);
    sub_4A5C(&v12, "Route handle could not be parsed", 32);
    if ((v22 & 0x10) != 0)
    {
      v6 = v21;
      if (v21 < v18)
      {
        v21 = v18;
        v6 = v18;
      }

      v7 = v17;
      v5 = v6 - v17;
      if (v6 - v17 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v22 & 8) == 0)
      {
        v5 = 0;
        v11 = 0;
LABEL_32:
        *(&__p + v5) = 0;
        sub_7E854(&__p, 1u);
        if (v11 < 0)
        {
          operator delete(__p);
        }

        if (v20 < 0)
        {
          operator delete(v19);
        }

        std::locale::~locale(&v14);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_37;
      }

      v7 = v15;
      v5 = v16 - v15;
      if ((v16 - v15) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_23:
        sub_3244();
      }
    }

    if (v5 >= 0x17)
    {
      operator new();
    }

    v11 = v5;
    if (!v5)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v24 == 2)
  {
    sub_98FC40(v23, a2);
    return sub_11F069C(v23);
  }

  if (v24 != 1)
  {
    if (sub_7E7E4(1u))
    {
      sub_19594F8(&v12);
      sub_4A5C(&v12, "Got a route handle of unknown version: ", 39);
      std::ostream::operator<<();
      if ((v22 & 0x10) != 0)
      {
        v8 = v21;
        if (v21 < v18)
        {
          v21 = v18;
          v8 = v18;
        }

        v7 = v17;
        v5 = v8 - v17;
        if (v8 - v17 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if ((v22 & 8) == 0)
        {
          v5 = 0;
          v11 = 0;
          goto LABEL_32;
        }

        v7 = v15;
        v5 = v16 - v15;
        if ((v16 - v15) > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_40:
          sub_3244();
        }
      }

      if (v5 >= 0x17)
      {
        operator new();
      }

      v11 = v5;
      if (!v5)
      {
        goto LABEL_32;
      }

LABEL_31:
      memmove(&__p, v7, v5);
      goto LABEL_32;
    }

LABEL_37:
    *a2 = 0x7FFFFFFF00000002;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    return sub_11F069C(v23);
  }

  sub_98F88C(v23, a2);
  return sub_11F069C(v23);
}

void sub_9905EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1959728(&a15);
    sub_11F069C(v15 - 176);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a15);
  sub_11F069C(v15 - 176);
  _Unwind_Resume(a1);
}

void sub_990680(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_990D98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_990E44(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_92FC60(a1, a2, 0, "line");
  v7 = (v6 - *v6);
  if (*v7 >= 0x21u)
  {
    v8 = v7[16];
    if (v8)
    {
      if (*(v6 + v8) != -1)
      {
        operator new();
      }
    }
  }

  v9 = sub_92FC60(a1, a2, 0, "line");
  v10 = (v9 - *v9);
  if (*v10 >= 0x39u)
  {
    v11 = v10[28];
    if (v11)
    {
      v12 = (v9 + v11 + *(v9 + v11));
      v13 = (v12 - *v12);
      if (*v13 >= 5u)
      {
        v14 = v13[2];
        if (v14)
        {
          v15 = (v12 + v14 + *(v12 + v14));
          v16 = (v15 - *v15);
          if (*v16 >= 9u)
          {
            v17 = v16[4];
            if (v17)
            {
              v18 = *(v15 + v17);
              if (v18 <= 6)
              {
                operator new();
              }

              if (v18 != 127)
              {
                exception = __cxa_allocate_exception(0x10uLL);
                std::runtime_error::runtime_error(exception, "Unexpected significance value");
              }
            }
          }
        }
      }
    }
  }

  v19 = sub_92FC60(a1, a2, 0, "line");
  v20 = (v19 - *v19);
  if (*v20 >= 0x3Bu)
  {
    v21 = v20[29];
    if (v21)
    {
      v22 = v19 + v21 + *(v19 + v21);
      if (*v22)
      {
        v23 = sub_992324(a1, *(v22 + 4), 0, "cartographic line group");
        v24 = (v23 - *v23);
        if (*v24 >= 5u)
        {
          v25 = v24[2];
          if (v25)
          {
            v26 = *(v23 + v25);
            if (v26 != -1)
            {
              operator new();
            }
          }
        }
      }
    }
  }

  v28 = sub_92FC60(a1, a2, 0, "line");
  v29 = (v28 - *v28);
  if (*v29 < 0x11u || (v30 = v29[8]) == 0 || (v31 = *(v28 + v30), v31 == 0x7FFF))
  {
    v31 = 700;
  }

  v32 = v31;
  v33 = a3[2];
  if (v33)
  {
    dword_0 = 37;
    dword_4[0] = v32;
    v34 = 8;
  }

  else
  {
    v35 = *a3;
    v36 = -*a3;
    v37 = (v36 >> 3) + 1;
    if (v37 >> 61)
    {
      sub_1794();
    }

    v38 = v33 - v35;
    if (v38 >> 2 > v37)
    {
      v37 = v38 >> 2;
    }

    if (v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      v39 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v39 = v37;
    }

    if (v39)
    {
      if (!(v39 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v40 = (8 * (v36 >> 3));
    *v40 = 37;
    v40[1] = v32;
    v34 = (v40 + 2);
    memcpy(0, v35, v36);
    *a3 = 0;
    a3[2] = 0;
    if (v35)
    {
      operator delete(v35);
    }
  }

  a3[1] = v34;
  v41 = sub_92FC60(a1, a2, 0, "line");
  v42 = (v41 - *v41);
  if (*v42 >= 0x33u && (v43 = v42[25]) != 0)
  {
    if (*(v41 + v43 + *(v41 + v43)))
    {
      operator new();
    }

    v44 = a3[2];
    v45 = *a3;
    a3[1] = v34;
    a3[2] = v44;
    *a3 = v45;
  }

  else
  {
    a3[1] = v34;
  }
}

void sub_991574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_991D20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void sub_991DCC(uint64_t a1@<X1>, unint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v6 = sub_93E04C(a1, a2, 0, "system");
  v7 = (v6 - *v6);
  if (*v7 >= 0x11u)
  {
    v8 = v7[8];
    if (v8)
    {
      if (*(v6 + v8) != -1)
      {
        operator new();
      }
    }
  }

  v9 = sub_93E04C(a1, a2, 0, "system");
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0xF)
  {
    if (v11 < 0xD)
    {
      goto LABEL_21;
    }
  }

  else if (v10[7])
  {
    v12 = *(v9 + v10[7]);
    v13 = v10[6];
    if (!v10[6])
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  v12 = 0x7FFF;
  v13 = v10[6];
  if (!v10[6])
  {
LABEL_8:
    if (v12 == 0x7FFF)
    {
      v14 = 0x7FFF;
    }

    else
    {
      v14 = v12;
    }

    if (v14 != 0x7FFF)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_15:
  v15 = *(v9 + v13);
  if (v12 == 0x7FFF)
  {
    v16 = v15;
  }

  else
  {
    v16 = v12;
  }

  if (v16 != 0x7FFF)
  {
LABEL_20:
    operator new();
  }

LABEL_21:
  v17 = sub_93E04C(a1, a2, 0, "system");
  v18 = (v17 - *v17);
  if (*v18 >= 0x19u)
  {
    v19 = v18[12];
    if (v19)
    {
      v20 = *(v17 + v19);
      if (v20 != 127)
      {
        operator new();
      }
    }
  }

  v21 = sub_93E04C(a1, a2, 0, "system");
  v22 = (v21 - *v21);
  if (*v22 >= 0x15u)
  {
    v23 = v22[10];
    if (v23)
    {
      if (*(v21 + v23 + *(v21 + v23)))
      {
        operator new();
      }

      *a3 = *a3;
    }
  }
}

void sub_9922AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_992324(uint64_t a1, unint64_t a2, int a3, const char *a4)
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
  if (*v8 >= 9u)
  {
    v9 = *(v8 + 4);
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

void sub_992480(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_9924B0(uint64_t a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_325C(a1, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 2);
    *a1 = v4;
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_99374C(a1 + 24, *(a2 + 3), *(a2 + 4), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 4) - *(a2 + 3)) >> 4));
  *(a1 + 144) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 148) = 0x8000000080000000;
  return a1;
}

void sub_992544(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_992560(uint64_t a1)
{
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 95) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(a1 + 119) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_5:
    v2 = *(a1 + 24);
    if (!v2)
    {
      goto LABEL_6;
    }

LABEL_12:
    v4 = *(a1 + 32);
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 -= 80;
        sub_993AF8(v4);
      }

      while (v4 != v2);
      v5 = *(a1 + 24);
    }

    *(a1 + 32) = v2;
    operator delete(v5);
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_16;
  }

LABEL_11:
  operator delete(*(a1 + 48));
  v2 = *(a1 + 24);
  if (v2)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_16:
  operator delete(*a1);
  return a1;
}

unsigned __int8 *sub_992654(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 48);
  if (result != a2)
  {
    if (*(a1 + 71) < 0)
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

unsigned __int8 *sub_9926AC(uint64_t a1, unsigned __int8 *a2)
{
  result = (a1 + 72);
  if (result != a2)
  {
    if (*(a1 + 95) < 0)
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

const void **sub_992704(uint64_t a1, int a2, const void **a3)
{
  *(a1 + 148) = a2;
  result = (a1 + 96);
  if (result != a3)
  {
    v5 = *(a1 + 119);
    v6 = *(a3 + 23);
    if (v5 < 0)
    {
      if (v6 >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      if (v6 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      return sub_13B38(result, v8, v9);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v7 = *a3;
      result[2] = a3[2];
      *result = v7;
    }
  }

  return result;
}

const void **sub_99275C(uint64_t a1, int a2, const void **a3)
{
  *(a1 + 152) = a2;
  result = (a1 + 120);
  if (result != a3)
  {
    v5 = *(a1 + 143);
    v6 = *(a3 + 23);
    if (v5 < 0)
    {
      if (v6 >= 0)
      {
        v8 = a3;
      }

      else
      {
        v8 = *a3;
      }

      if (v6 >= 0)
      {
        v9 = *(a3 + 23);
      }

      else
      {
        v9 = a3[1];
      }

      return sub_13B38(result, v8, v9);
    }

    else if ((*(a3 + 23) & 0x80) != 0)
    {
      return sub_13A68(result, *a3, a3[1]);
    }

    else
    {
      v7 = *a3;
      result[2] = a3[2];
      *result = v7;
    }
  }

  return result;
}

uint64_t sub_9927BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *(a2 + 56);
  v5 = *(a2 + 64);
  if (v4 != v5 && *(result + 144))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_992A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_992A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_992A58(int a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  if (a1 != 0x7FFFFFFFLL)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      v6 = *(a3 + 23);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a3 + 8);
      }

      if (v6)
      {
        sub_25BE0(v8, a2);
        sub_386C(&v7, a1);
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
}

void sub_992B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, const void *a15)
{
  sub_3874(&a9);
  sub_25F00(&a15);
  _Unwind_Resume(a1);
}

void sub_992B40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_25F00(va);
  _Unwind_Resume(a1);
}

void sub_992B54(const void **__s2@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = *(a2 + 24);
  if (v7 != v6)
  {
    if (*(__s2 + 23) >= 0)
    {
      v8 = *(__s2 + 23);
    }

    else
    {
      v8 = __s2[1];
    }

    if ((*(__s2 + 23) & 0x80) != 0)
    {
      v9 = *__s2;
      while (1)
      {
        v13 = *(v7 + 23);
        v14 = v13;
        if ((v13 & 0x80u) != 0)
        {
          v13 = *(v7 + 8);
        }

        if (v13 == v8)
        {
          v15 = v14 >= 0 ? v7 : *v7;
          if (!memcmp(v15, v9, v8))
          {
            break;
          }
        }

        v7 += 80;
        if (v7 == v6)
        {
          goto LABEL_44;
        }
      }
    }

    else
    {
      while (1)
      {
        v10 = *(v7 + 23);
        v11 = v10;
        if ((v10 & 0x80u) != 0)
        {
          v10 = *(v7 + 8);
        }

        if (v10 == v8)
        {
          v12 = v11 >= 0 ? v7 : *v7;
          if (!memcmp(v12, __s2, v8))
          {
            break;
          }
        }

        v7 += 80;
        if (v7 == v6)
        {
          goto LABEL_44;
        }
      }
    }
  }

  if (v7 == v6)
  {
    goto LABEL_44;
  }

  v16 = *(v7 + 24);
  if (v16 <= 2)
  {
    if (*(v7 + 24))
    {
      if (v16 == 1)
      {
        v31 = 0;
        v35 = 1;
        *&v37[8] = 0u;
        memset(v30, 0, 32);
        *&v30[28] = -1;
        v32 = 0u;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v36 = 0u;
        *v37 = 0u;
        *&v37[16] = 0x7FFFFFFF;
        if (*(a2 + 71) < 0)
        {
          sub_325C(a3, *(a2 + 48), *(a2 + 56));
        }

        else
        {
          *a3 = *(a2 + 48);
          *(a3 + 16) = *(a2 + 64);
        }
      }

      else
      {
        if (v16 != 2)
        {
          goto LABEL_44;
        }

        v31 = 0;
        v35 = 1;
        *&v37[8] = 0u;
        memset(v30, 0, 32);
        *&v30[28] = -1;
        v32 = 0u;
        v33 = 0u;
        memset(v34, 0, sizeof(v34));
        v36 = 0u;
        *v37 = 0u;
        *&v37[16] = 0x7FFFFFFF;
        if (*(a2 + 95) < 0)
        {
          sub_325C(a3, *(a2 + 72), *(a2 + 80));
        }

        else
        {
          *a3 = *(a2 + 72);
          *(a3 + 16) = *(a2 + 88);
        }
      }

      sub_55C01C(a3 + 24, v30);
      sub_53F320(v30);
      return;
    }

LABEL_44:
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 160) = 0;
    *(a3 + 128) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 52) = -1;
    *(a3 + 108) = 0u;
    *(a3 + 124) = 1;
    *(a3 + 160) = 0x7FFFFFFF;
    return;
  }

  if (*(v7 + 24) <= 4u)
  {
    if (v16 == 3)
    {
      sub_992A58(*(a2 + 148), a2 + 96, v7 + 32, __p);
      v31 = 0;
      v35 = 1;
      *&v37[8] = 0u;
      memset(v30, 0, 32);
      *&v30[28] = -1;
      v32 = 0u;
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
      v36 = 0u;
      *v37 = 0u;
      *&v37[16] = 0x7FFFFFFF;
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        *a3 = *__p;
        *(a3 + 16) = v29;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v16 == 4)
    {
      sub_992A58(*(a2 + 152), a2 + 120, v7 + 32, __p);
      v31 = 0;
      v35 = 1;
      *&v37[8] = 0u;
      memset(v30, 0, 32);
      *&v30[28] = -1;
      v32 = 0u;
      v33 = 0u;
      memset(v34, 0, sizeof(v34));
      v36 = 0u;
      *v37 = 0u;
      *&v37[16] = 0x7FFFFFFF;
      if ((SHIBYTE(v29) & 0x80000000) == 0)
      {
        *a3 = *__p;
        *(a3 + 16) = v29;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    goto LABEL_44;
  }

  if (v16 != 5)
  {
    if (v16 == 6)
    {
      if (*(__s2 + 23) >= 0)
      {
        v17 = *(__s2 + 23);
      }

      else
      {
        v17 = __s2[1];
      }

      if (v17 + 1 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_3244();
      }

      if (v17 + 1 >= 0x17)
      {
        operator new();
      }

      *&v30[16] = 0;
      v30[23] = v17 + 1;
      *v30 = 0x7BuLL;
      if (v17)
      {
        if (*(__s2 + 23) >= 0)
        {
          v18 = __s2;
        }

        else
        {
          v18 = *__s2;
        }

        memmove(&v30[1], v18, v17);
      }

      v30[v17 + 1] = 0;
      v19 = std::string::append(v30, "}", 1uLL);
      v20 = *&v19->__r_.__value_.__l.__data_;
      v29 = v19->__r_.__value_.__r.__words[2];
      *__p = v20;
      v19->__r_.__value_.__l.__size_ = 0;
      v19->__r_.__value_.__r.__words[2] = 0;
      v19->__r_.__value_.__r.__words[0] = 0;
      if ((v30[23] & 0x80000000) != 0)
      {
        operator delete(*v30);
      }

      sub_649B9C(v30, __p, 9);
      if (SHIBYTE(v29) < 0)
      {
        sub_325C(a3, __p[0], __p[1]);
      }

      else
      {
        *a3 = *__p;
        *(a3 + 16) = v29;
      }

      *(a3 + 24) = *v30;
      v21 = *&v30[16];
      v22 = *&v30[24];
      *&v30[8] = 0u;
      v23 = v32;
      v32 = 0u;
      v24 = v33;
      v33 = 0u;
      *(a3 + 64) = v23;
      *(a3 + 80) = v24;
      *(a3 + 96) = *v34;
      *v34 = 0u;
      v25 = v36;
      v36 = 0u;
      v26 = *v37;
      *v37 = 0u;
      *v30 = 0;
      *(a3 + 40) = v21;
      *(a3 + 48) = v22;
      *(a3 + 56) = *&v30[32];
      v27 = *&v34[16];
      *&v34[16] = 0;
      *(a3 + 112) = v27;
      LODWORD(v27) = *&v34[24];
      *(a3 + 124) = v35;
      *(a3 + 120) = v27;
      *(a3 + 128) = v25;
      *(a3 + 144) = v26;
      *(a3 + 160) = *&v37[16];
      sub_53F320(v30);
      if (SHIBYTE(v29) < 0)
      {
        goto LABEL_63;
      }

      return;
    }

    goto LABEL_44;
  }

  sub_9927BC(a2, v7, __p);
  v31 = 0;
  v35 = 1;
  *&v37[8] = 0u;
  memset(v30, 0, 32);
  *&v30[28] = -1;
  v32 = 0u;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  *v37 = 0u;
  *&v37[16] = 0x7FFFFFFF;
  if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    *a3 = *__p;
    *(a3 + 16) = v29;
    goto LABEL_62;
  }

LABEL_61:
  sub_325C(a3, __p[0], __p[1]);
LABEL_62:
  sub_55C01C(a3 + 24, v30);
  sub_53F320(v30);
  if (SHIBYTE(v29) < 0)
  {
LABEL_63:
    operator delete(__p[0]);
  }
}