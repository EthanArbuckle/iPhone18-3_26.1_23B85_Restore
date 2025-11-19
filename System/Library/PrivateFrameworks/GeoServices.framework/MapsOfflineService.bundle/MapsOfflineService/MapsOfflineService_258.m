void sub_FE5470(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_3AF144(*a1);

  sub_2BDFC8(v4, (a1 + 61512), a2);
}

void sub_FE5638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_FE565C(void *a1)
{
  v2 = a1[22];
  if (v2)
  {
    a1[23] = v2;
    operator delete(v2);
  }

  v3 = a1[19];
  if (v3)
  {
    a1[20] = v3;
    operator delete(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    a1[17] = v4;
    operator delete(v4);
  }

  v5 = a1[13];
  if (v5)
  {
    a1[14] = v5;
    operator delete(v5);
  }

  v6 = a1[10];
  if (v6)
  {
    v7 = a1[11];
    v8 = a1[10];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 24);
        if (v9)
        {
          *(v7 - 16) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 112);
        if (v10)
        {
          *(v7 - 104) = v10;
          operator delete(v10);
        }

        v11 = *(v7 - 192);
        if (v11)
        {
          *(v7 - 184) = v11;
          operator delete(v11);
        }

        v7 -= 208;
      }

      while (v7 != v6);
      v8 = a1[10];
    }

    a1[11] = v6;
    operator delete(v8);
  }

  v12 = a1[7];
  if (v12)
  {
    a1[8] = v12;
    operator delete(v12);
  }

  v13 = a1[4];
  if (v13)
  {
    v14 = a1[5];
    v15 = a1[4];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 24);
        if (v16)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v17 = *(v14 - 112);
        if (v17)
        {
          *(v14 - 104) = v17;
          operator delete(v17);
        }

        v18 = *(v14 - 192);
        if (v18)
        {
          *(v14 - 184) = v18;
          operator delete(v18);
        }

        v14 -= 208;
      }

      while (v14 != v13);
      v15 = a1[4];
    }

    a1[5] = v13;
    operator delete(v15);
  }

  v19 = a1[1];
  if (v19)
  {
    a1[2] = v19;
    operator delete(v19);
  }

  return a1;
}

void **sub_FE57B8(char ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    goto LABEL_18;
  }

  while (!sub_F63D58(v2))
  {
    v2 += 6;
    if (v2 == v3)
    {
      v4 = v3;
      goto LABEL_19;
    }
  }

  if (v2 == v3 || (v5 = v2 + 6, v2 + 6 == v3))
  {
LABEL_18:
    v4 = v2;
  }

  else
  {
    v4 = v2;
    do
    {
      v7 = v5;
      if (!sub_F63D58(v5))
      {
        v8 = *v4;
        if (*v4)
        {
          v9 = v4[1];
          v10 = *v4;
          if (v9 != v8)
          {
            do
            {
              v9 = sub_4547F0(v9 - 552);
            }

            while (v9 != v8);
            v10 = *v4;
          }

          v4[1] = v8;
          operator delete(v10);
          *v4 = 0;
          v4[1] = 0;
          v4[2] = 0;
        }

        *v4 = *v7;
        v4[2] = v2[8];
        *v7 = 0;
        v7[1] = 0;
        v7[2] = 0;
        if (*(v4 + 47) < 0)
        {
          operator delete(v4[3]);
        }

        v6 = *(v2 + 9);
        v4[5] = v2[11];
        *(v4 + 3) = v6;
        *(v2 + 95) = 0;
        *(v2 + 72) = 0;
        v4 += 6;
      }

      v5 = v7 + 6;
      v2 = v7;
    }

    while (v7 + 6 != v3);
  }

LABEL_19:
  v11 = a1[1];

  return sub_F73E94(a1, v4, v11);
}

void sub_FE58F8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v27 = sub_3B1D8C(*a1);
  v7 = sub_45AC50(a2);
  v29 = sub_588D8(a2);
  if (v7 == v29)
  {
    return;
  }

  while (2)
  {
    if (sub_F63FF4(v7) < 2)
    {
      goto LABEL_4;
    }

    v8 = sub_45AC50(v7);
    v9 = sub_73EEC(v8 + 552);
    if (sub_2AB71C(v27, *(v9 + 104), *(v9 + 112)) != a4)
    {
      goto LABEL_4;
    }

    v10 = nullsub_1(v7);
    v11 = sub_73EEC(*v10);
    sub_3EDBB0(v38, v11);
    v12 = nullsub_1(v7);
    v37 = *sub_4D1DB0(*v12);
    v13 = nullsub_1(v7);
    v36 = *sub_F69688(*v13);
    v14 = sub_45AC50(a3);
    v15 = sub_588D8(a3);
    while (v14 != v15)
    {
      if (sub_F63F64(v14, 1))
      {
        goto LABEL_9;
      }

      __p = 0;
      v32 = 0;
      v33 = 0;
      v16 = *v7;
      v17 = *(v7 + 8);
      p_p = &__p;
      v44 = 0;
      if (v17 != v16)
      {
        if (0xF128CFC4A33F128DLL * ((v17 - v16) >> 3) < 0x76B981DAE6076CLL)
        {
          operator new();
        }

        sub_1794();
      }

      if (*(v7 + 47) < 0)
      {
        sub_325C(&v34, *(v7 + 24), *(v7 + 32));
      }

      else
      {
        v18 = *(v7 + 24);
        v35 = *(v7 + 40);
        v34 = v18;
      }

      v19 = *nullsub_1(v14);
      v20 = nullsub_1(&__p);
      sub_DF7DB8(*v20, v19);
      v21 = nullsub_1(&__p);
      sub_F68F5C(*v21, v38);
      v22 = nullsub_1(&__p);
      sub_F69690(*v22, &v37);
      v23 = nullsub_1(&__p);
      sub_F6969C(*v23, &v36);
      sub_F74288(a5, &__p, 1);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
        v24 = __p;
        if (!__p)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v24 = __p;
        if (!__p)
        {
          goto LABEL_9;
        }
      }

      v25 = v32;
      v26 = v24;
      if (v32 != v24)
      {
        do
        {
          v25 = sub_4547F0(v25 - 552);
        }

        while (v25 != v24);
        v26 = __p;
      }

      v32 = v24;
      operator delete(v26);
LABEL_9:
      v14 += 6;
    }

    if (v41)
    {
      v42 = v41;
      operator delete(v41);
    }

    if (v39)
    {
      v40 = v39;
      operator delete(v39);
    }

LABEL_4:
    v7 += 48;
    if (v7 != v29)
    {
      continue;
    }

    break;
  }
}

void sub_FE5C04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

void sub_FE5C64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_454784(va);
  sub_49A8F8(va1);
  _Unwind_Resume(a1);
}

void sub_FE5C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (v14)
  {
    v17 = v13 - 552;
    v18 = -v14;
    do
    {
      v17 = sub_4547F0(v17) - 552;
      v18 += 552;
    }

    while (v18);
  }

  sub_49D8D0((v15 - 104));
  sub_49A8F8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_FE5CBC(uint64_t *a1, uint64_t a2)
{
  v2 = 0x4FCACE213F2B3885 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1A98EF606A63BDLL)
  {
    sub_1794();
  }

  if (0x9F959C427E56710ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x9F959C427E56710ALL * ((a1[2] - *a1) >> 5);
  }

  if ((0x4FCACE213F2B3885 * ((a1[2] - *a1) >> 5)) >= 0xD4C77B03531DELL)
  {
    v5 = 0x1A98EF606A63BDLL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x1A98EF606A63BDLL)
    {
      operator new();
    }

    sub_1808();
  }

  v15 = 32 * ((a1[1] - *a1) >> 5);
  sub_FEA244(v15, a2);
  v6 = 2464 * v2 + 2464;
  v7 = *a1;
  v8 = a1[1];
  v9 = *a1 - v8;
  v10 = v15 + v9;
  if (*a1 != v8)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v15 + v9;
    do
    {
      sub_FE5E88(v13, v12);
      v12 += 2464;
      v13 += 2464;
      v11 -= 2464;
    }

    while (v12 != v8);
    do
    {
      sub_FE90B8(v7);
      v7 += 308;
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

void sub_FE5E48(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FE9064(va);
  _Unwind_Resume(a1);
}

void sub_FE5E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = (v2 - 2464);
    do
    {
      v5 = sub_FE90B8(v5) - 308;
      v3 += 2464;
    }

    while (v3);
  }

  sub_FE9064(va);
  _Unwind_Resume(a1);
}

uint64_t sub_FE5E88(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v17 = a1 + 8;
  v18 = 0;
  if (v5 != v4)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 4) < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE63F0((a1 + 32), a2 + 32, &v17);
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  v6 = *(a2 + 800);
  v7 = *(a2 + 808);
  if (v7 != v6)
  {
    if (((v7 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE70C0((a1 + 824), a2 + 824, &v17);
  sub_FE7F78(a1 + 1592, a2 + 1592, 0x20uLL);
  *(a1 + 1688) = 0;
  *(a1 + 1672) = 0u;
  v8 = *(a2 + 1672);
  v9 = *(a2 + 1680);
  if (v9 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1696) = *(a2 + 1696);
  *(a1 + 1704) = 0;
  *(a1 + 1720) = 0;
  *(a1 + 1712) = 0;
  v10 = *(a2 + 1704);
  v11 = *(a2 + 1712);
  if (v11 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v11 - v10) >> 5) <= 0x2AAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1728) = *(a2 + 1728);
  *(a1 + 1736) = 0;
  *(a1 + 1752) = 0;
  *(a1 + 1744) = 0;
  v12 = *(a2 + 1736);
  v13 = *(a2 + 1744);
  if (v13 != v12)
  {
    if (0x8F5C28F5C28F5C29 * ((v13 - v12) >> 3) <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  v14 = *(a2 + 1760);
  v15 = *(a2 + 1768);
  if (v15 != v14)
  {
    if (0x8F5C28F5C28F5C29 * ((v15 - v14) >> 3) <= 0x147AE147AE147AELL)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE8380(a1 + 1784, a2 + 1784, 0x20uLL);
  sub_FE88BC((a1 + 2248), (a2 + 2248));
  return a1;
}

void sub_FE6278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  *(v3 + 16) = v4;
  sub_DC15BC(va);
  _Unwind_Resume(a1);
}

void sub_FE6290(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, void **a10)
{
  v16 = v11[280];
  if (v16)
  {
    free(v16);
    v17 = *v14;
    if (!*v14)
    {
LABEL_3:
      v18 = *v12;
      if (!*v12)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v17 = *v14;
    if (!*v14)
    {
      goto LABEL_3;
    }
  }

  v11[221] = v17;
  operator delete(v17);
  v18 = *v12;
  if (!*v12)
  {
LABEL_4:
    v19 = *a9;
    if (!*a9)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v11[218] = v18;
  operator delete(v18);
  v19 = *a9;
  if (!*a9)
  {
LABEL_5:
    v20 = *v13;
    if (!*v13)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v11[214] = v19;
  operator delete(v19);
  v20 = *v13;
  if (!*v13)
  {
LABEL_6:
    v21 = v11[208];
    if (!v21)
    {
LABEL_14:
      sub_360988((v11 + 103));
      v22 = *a10;
      if (*a10)
      {
        v11[101] = v22;
        operator delete(v22);
      }

      sub_360988((v11 + 4));
      sub_CDCD6C(v10);
      _Unwind_Resume(a1);
    }

LABEL_13:
    free(v21);
    goto LABEL_14;
  }

LABEL_12:
  v11[210] = v20;
  operator delete(v20);
  v21 = v11[208];
  if (!v21)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void sub_FE63CC()
{
  if (!*v0)
  {
    JUMPOUT(0xFE63B4);
  }

  JUMPOUT(0xFE63ACLL);
}

void sub_FE63DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_DC15BC(va);
  _Unwind_Resume(a1);
}

void *sub_FE63F0(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = (a2 + 40);
  *&v14 = a2 + 40;
  *(&v14 + 1) = a3;
  sub_FE6754(a1, __p);
  for (i = 0; i != 96; i += 6)
  {
    sub_FE64FC(__p, (a2 + i * 8));
    v6 = &a1[i];
    v7 = v15;
    v15 = 0;
    v8 = a1[i];
    v9 = *__p;
    v10 = v14;
    __p[0] = &unk_2290750;
    __p[1] = 0;
    v11 = a1[i + 3];
    v14 = 0uLL;
    *v6 = v9;
    *(v6 + 1) = v10;
    v6[5] = v7;
    if (v11)
    {
      operator delete(v8);
      if (*(&v14 + 1))
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

uint64_t *sub_FE64FC(uint64_t *a1, char **a2)
{
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (a2[3])
  {
    sub_40DC58();
  }

  v5 = *a2;
  v4 = a2[1];
  if (**a2 > -2)
  {
    v6 = *a2;
    v8 = &a2[3][v5];
    if (*a2 == v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = *a2;
    do
    {
      v7 = (__clz(__rbit64(((*v6 >> 7) & ~*v6 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v6 = (v6 + v7);
      v4 += 16 * v7;
    }

    while (*v6 < -1);
    v8 = &a2[3][v5];
    if (v6 == v8)
    {
      goto LABEL_17;
    }
  }

  do
  {
    v9 = 0x2127599BF4325C37 * (*v4 ^ (*v4 >> 23));
    v10 = (v9 ^ ~(v9 >> 47)) + ((v9 ^ (v9 >> 47)) << 21);
    v11 = 21 * ((265 * (v10 ^ (v10 >> 24))) ^ ((265 * (v10 ^ (v10 >> 24))) >> 14));
    v12 = 2147483649u * (v11 ^ (v11 >> 28));
    v13 = a1[3];
    v14 = *a1;
    v15 = v13 & (v12 >> 7);
    v16 = *(*a1 + v15) & (~*(*a1 + v15) << 7) & 0x8080808080808080;
    if (!v16)
    {
      v17 = 8;
      do
      {
        v15 = (v15 + v17) & v13;
        v17 += 8;
        v16 = *(v14 + v15) & (~*(v14 + v15) << 7) & 0x8080808080808080;
      }

      while (!v16);
    }

    v18 = (v15 + (__clz(__rbit64(v16)) >> 3)) & v13;
    v19 = v12 & 0x7F;
    *(v14 + v18) = v19;
    *(*a1 + (a1[3] & 7) + ((v18 - 8) & a1[3]) + 1) = v19;
    v20 = a1[1] + 16 * v18;
    *v20 = *v4;
    *(v20 + 8) = *(v4 + 2);
    v21 = *(v6 + 1);
    v6 = (v6 + 1);
    v4 += 16;
    if (v21 <= -2)
    {
      do
      {
        v22 = (__clz(__rbit64(((*v6 >> 7) & ~*v6 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v6 = (v6 + v22);
        v4 += 16 * v22;
      }

      while (*v6 < -1);
    }
  }

  while (v6 != v8);
LABEL_17:
  v23 = a2[2];
  a1[2] = v23;
  a1[5] -= v23;
  return a1;
}

void sub_FE6728(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24))
  {
    operator delete(*v1);
    *v1 = v3;
    *(v1 + 40) = 0;
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
  }

  _Unwind_Resume(exception_object);
}

void *sub_FE6754(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

void *sub_FE70C0(void *a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = (a2 + 40);
  *&v14 = a2 + 40;
  *(&v14 + 1) = a3;
  sub_FE7410(a1, __p);
  for (i = 0; i != 96; i += 6)
  {
    sub_FE71CC(__p, (a2 + i * 8));
    v6 = &a1[i];
    v7 = v15;
    v15 = 0;
    v8 = a1[i];
    v9 = *__p;
    v10 = v14;
    __p[0] = &unk_2290750;
    __p[1] = 0;
    v11 = a1[i + 3];
    v14 = 0uLL;
    *v6 = v9;
    *(v6 + 1) = v10;
    v6[5] = v7;
    if (v11)
    {
      operator delete(v8);
      if (*(&v14 + 1))
      {
        operator delete(__p[0]);
      }
    }
  }

  return a1;
}

uint64_t *sub_FE71CC(uint64_t *a1, char **a2)
{
  *a1 = &unk_2290750;
  a1[1] = 0;
  a1[5] = 0;
  a1[2] = 0;
  a1[3] = 0;
  if (a2[3])
  {
    sub_FE7DBC();
  }

  v5 = *a2;
  v4 = a2[1];
  if (**a2 > -2)
  {
    v6 = *a2;
    v8 = &a2[3][v5];
    if (*a2 == v8)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v6 = *a2;
    do
    {
      v7 = (__clz(__rbit64(((*v6 >> 7) & ~*v6 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
      v6 = (v6 + v7);
      v4 += 24 * v7;
    }

    while (*v6 < -1);
    v8 = &a2[3][v5];
    if (v6 == v8)
    {
      goto LABEL_17;
    }
  }

  do
  {
    v9 = ~*v4 + (*v4 << 21);
    v10 = 21 * ((265 * (v9 ^ (v9 >> 24))) ^ ((265 * (v9 ^ (v9 >> 24))) >> 14));
    v11 = 2147483649u * (v10 ^ (v10 >> 28));
    v12 = a1[3];
    v13 = *a1;
    v14 = v12 & (v11 >> 7);
    v15 = *(*a1 + v14) & (~*(*a1 + v14) << 7) & 0x8080808080808080;
    if (!v15)
    {
      v16 = 8;
      do
      {
        v14 = (v14 + v16) & v12;
        v16 += 8;
        v15 = *(v13 + v14) & (~*(v13 + v14) << 7) & 0x8080808080808080;
      }

      while (!v15);
    }

    v17 = (v14 + (__clz(__rbit64(v15)) >> 3)) & v12;
    v18 = v11 & 0x7F;
    *(v13 + v17) = v18;
    *(*a1 + (a1[3] & 7) + ((v17 - 8) & a1[3]) + 1) = v18;
    v19 = a1[1] + 24 * v17;
    *v19 = *v4;
    *(v19 + 8) = *(v4 + 8);
    v20 = *(v6 + 1);
    v6 = (v6 + 1);
    v4 += 24;
    if (v20 <= -2)
    {
      do
      {
        v21 = (__clz(__rbit64(((*v6 >> 7) & ~*v6 | 0xFEFEFEFEFEFEFELL) + 1)) + 7) >> 3;
        v6 = (v6 + v21);
        v4 += 24 * v21;
      }

      while (*v6 < -1);
    }
  }

  while (v6 != v8);
LABEL_17:
  v22 = a2[2];
  a1[2] = v22;
  a1[5] -= v22;
  return a1;
}

void sub_FE73E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24))
  {
    operator delete(*v1);
    *v1 = v3;
    *(v1 + 40) = 0;
    v2[1] = 0;
    v2[2] = 0;
    *v2 = 0;
  }

  _Unwind_Resume(exception_object);
}

void *sub_FE7410(void *result, unint64_t *a2)
{
  v2 = *a2;
  result[5] = 0;
  *result = &unk_2290750;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  if (v2)
  {
    v3 = __clz(v2);
    if (v3 == 61)
    {
      v4 = 6;
    }

    else
    {
      v4 = (0xFFFFFFFFFFFFFFFFLL >> v3) - (0x1FFFFFFFFFFFFFFFuLL >> v3);
    }

    result[5] = v4;
    operator new();
  }

  result[6] = &unk_2290750;
  v5 = *a2;
  result[11] = 0;
  result[8] = 0;
  result[9] = 0;
  result[7] = 0;
  if (v5)
  {
    v6 = __clz(v5);
    if (v6 == 61)
    {
      v7 = 6;
    }

    else
    {
      v7 = (0xFFFFFFFFFFFFFFFFLL >> v6) - (0x1FFFFFFFFFFFFFFFuLL >> v6);
    }

    result[11] = v7;
    operator new();
  }

  result[12] = &unk_2290750;
  v8 = *a2;
  result[17] = 0;
  result[14] = 0;
  result[15] = 0;
  result[13] = 0;
  if (v8)
  {
    v9 = __clz(v8);
    if (v9 == 61)
    {
      v10 = 6;
    }

    else
    {
      v10 = (0xFFFFFFFFFFFFFFFFLL >> v9) - (0x1FFFFFFFFFFFFFFFuLL >> v9);
    }

    result[17] = v10;
    operator new();
  }

  result[18] = &unk_2290750;
  v11 = *a2;
  result[23] = 0;
  result[20] = 0;
  result[21] = 0;
  result[19] = 0;
  if (v11)
  {
    v12 = __clz(v11);
    if (v12 == 61)
    {
      v13 = 6;
    }

    else
    {
      v13 = (0xFFFFFFFFFFFFFFFFLL >> v12) - (0x1FFFFFFFFFFFFFFFuLL >> v12);
    }

    result[23] = v13;
    operator new();
  }

  result[24] = &unk_2290750;
  v14 = *a2;
  result[29] = 0;
  result[26] = 0;
  result[27] = 0;
  result[25] = 0;
  if (v14)
  {
    v15 = __clz(v14);
    if (v15 == 61)
    {
      v16 = 6;
    }

    else
    {
      v16 = (0xFFFFFFFFFFFFFFFFLL >> v15) - (0x1FFFFFFFFFFFFFFFuLL >> v15);
    }

    result[29] = v16;
    operator new();
  }

  result[30] = &unk_2290750;
  v17 = *a2;
  result[35] = 0;
  result[32] = 0;
  result[33] = 0;
  result[31] = 0;
  if (v17)
  {
    v18 = __clz(v17);
    if (v18 == 61)
    {
      v19 = 6;
    }

    else
    {
      v19 = (0xFFFFFFFFFFFFFFFFLL >> v18) - (0x1FFFFFFFFFFFFFFFuLL >> v18);
    }

    result[35] = v19;
    operator new();
  }

  v20 = *a2;
  result[41] = 0;
  result[36] = &unk_2290750;
  result[37] = 0;
  result[38] = 0;
  result[39] = 0;
  if (v20)
  {
    v21 = __clz(v20);
    if (v21 == 61)
    {
      v22 = 6;
    }

    else
    {
      v22 = (0xFFFFFFFFFFFFFFFFLL >> v21) - (0x1FFFFFFFFFFFFFFFuLL >> v21);
    }

    result[41] = v22;
    operator new();
  }

  v23 = *a2;
  result[47] = 0;
  result[42] = &unk_2290750;
  result[43] = 0;
  result[44] = 0;
  result[45] = 0;
  if (v23)
  {
    v24 = __clz(v23);
    if (v24 == 61)
    {
      v25 = 6;
    }

    else
    {
      v25 = (0xFFFFFFFFFFFFFFFFLL >> v24) - (0x1FFFFFFFFFFFFFFFuLL >> v24);
    }

    result[47] = v25;
    operator new();
  }

  v26 = *a2;
  result[53] = 0;
  result[48] = &unk_2290750;
  result[49] = 0;
  result[50] = 0;
  result[51] = 0;
  if (v26)
  {
    v27 = __clz(v26);
    if (v27 == 61)
    {
      v28 = 6;
    }

    else
    {
      v28 = (0xFFFFFFFFFFFFFFFFLL >> v27) - (0x1FFFFFFFFFFFFFFFuLL >> v27);
    }

    result[53] = v28;
    operator new();
  }

  v29 = *a2;
  result[59] = 0;
  result[54] = &unk_2290750;
  result[55] = 0;
  result[56] = 0;
  result[57] = 0;
  if (v29)
  {
    v30 = __clz(v29);
    if (v30 == 61)
    {
      v31 = 6;
    }

    else
    {
      v31 = (0xFFFFFFFFFFFFFFFFLL >> v30) - (0x1FFFFFFFFFFFFFFFuLL >> v30);
    }

    result[59] = v31;
    operator new();
  }

  v32 = *a2;
  result[65] = 0;
  result[60] = &unk_2290750;
  result[61] = 0;
  result[62] = 0;
  result[63] = 0;
  if (v32)
  {
    v33 = __clz(v32);
    if (v33 == 61)
    {
      v34 = 6;
    }

    else
    {
      v34 = (0xFFFFFFFFFFFFFFFFLL >> v33) - (0x1FFFFFFFFFFFFFFFuLL >> v33);
    }

    result[65] = v34;
    operator new();
  }

  v35 = *a2;
  result[66] = &unk_2290750;
  result[71] = 0;
  result[67] = 0;
  result[69] = 0;
  result[68] = 0;
  if (v35)
  {
    v36 = __clz(v35);
    if (v36 == 61)
    {
      v37 = 6;
    }

    else
    {
      v37 = (0xFFFFFFFFFFFFFFFFLL >> v36) - (0x1FFFFFFFFFFFFFFFuLL >> v36);
    }

    result[71] = v37;
    operator new();
  }

  v38 = *a2;
  result[72] = &unk_2290750;
  result[77] = 0;
  result[73] = 0;
  result[75] = 0;
  result[74] = 0;
  if (v38)
  {
    v39 = __clz(v38);
    if (v39 == 61)
    {
      v40 = 6;
    }

    else
    {
      v40 = (0xFFFFFFFFFFFFFFFFLL >> v39) - (0x1FFFFFFFFFFFFFFFuLL >> v39);
    }

    result[77] = v40;
    operator new();
  }

  v41 = *a2;
  result[78] = &unk_2290750;
  result[83] = 0;
  result[79] = 0;
  result[81] = 0;
  result[80] = 0;
  if (v41)
  {
    v42 = __clz(v41);
    if (v42 == 61)
    {
      v43 = 6;
    }

    else
    {
      v43 = (0xFFFFFFFFFFFFFFFFLL >> v42) - (0x1FFFFFFFFFFFFFFFuLL >> v42);
    }

    result[83] = v43;
    operator new();
  }

  v44 = *a2;
  result[84] = &unk_2290750;
  result[89] = 0;
  result[85] = 0;
  result[87] = 0;
  result[86] = 0;
  if (v44)
  {
    v45 = __clz(v44);
    if (v45 == 61)
    {
      v46 = 6;
    }

    else
    {
      v46 = (0xFFFFFFFFFFFFFFFFLL >> v45) - (0x1FFFFFFFFFFFFFFFuLL >> v45);
    }

    result[89] = v46;
    operator new();
  }

  v47 = *a2;
  result[90] = &unk_2290750;
  result[95] = 0;
  result[91] = 0;
  result[93] = 0;
  result[92] = 0;
  if (v47)
  {
    v48 = __clz(v47);
    if (v48 == 61)
    {
      v49 = 6;
    }

    else
    {
      v49 = (0xFFFFFFFFFFFFFFFFLL >> v48) - (0x1FFFFFFFFFFFFFFFuLL >> v48);
    }

    result[95] = v49;
    operator new();
  }

  return result;
}

float sub_FE7F78(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_FE80AC(a1, a2, a3);
  }

  else
  {
    v6 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v7 = *(a1 + 16) * v6;
      if (*(a2 + 48) - *(a2 + 40) < v7)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v6 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v6 *= 2;
      }

      while (v6 < a3);
    }

    *(a1 + 56) = v6;
    result = *(a1 + 20) * v6;
    *a1 = v7;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_FE80AC(uint64_t a1, uint64_t a2, unint64_t a3)
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

  sub_CDCE34(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    v9 = *(a2 + 68);
    v10 = *(a2 + 70);
    if (*(a2 + 40))
    {
      v11 = 8 * v7;
      v12 = *(a2 + 72);
      while (1)
      {
        v13 = BYTE6(*v12);
        v14 = HIDWORD(*v12);
        if (v8 != *v12 || (v9 == v14 ? (v15 = v10 == v13) : (v15 = 0), !v15))
        {
          if (*(a2 + 32) != *v12)
          {
            break;
          }

          if (*(a2 + 36) != v14 || *(a2 + 38) != v13)
          {
            break;
          }
        }

        ++v12;
        v11 -= 8;
        if (!v11)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      v34 = 8 * v7;
      v12 = *(a2 + 72);
      while (1)
      {
        v35 = *v12;
        if (v8 != *v12)
        {
          break;
        }

        if (v9 != WORD2(v35) || v10 != BYTE6(v35))
        {
          break;
        }

        ++v12;
        v34 -= 8;
        if (!v34)
        {
          goto LABEL_63;
        }
      }
    }
  }

  else
  {
    v12 = *(a2 + 72);
  }

  v17 = *(a2 + 72) + 8 * v7;
  if (v12 != v17)
  {
    do
    {
      v18 = 0;
      v19 = (*v12 >> 16) & 0xFFFF0000 | (*v12 << 32);
      if ((*v12 & 0xFF000000000000) != 0)
      {
        v20 = (*v12 >> 16) & 0xFFFF0000 | (*v12 << 32);
      }

      else
      {
        v20 = v19 + 1;
      }

      v21 = (0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) ^ ((0x2127599BF4325C37 * (v20 ^ (v19 >> 23))) >> 47);
      v22 = *(a1 + 72);
      while (1)
      {
        v23 = v21 & (*(a1 + 56) - 1);
        v24 = *(v22 + 8 * v23);
        if (__PAIR64__(*(a1 + 68), *(a1 + 64)) == __PAIR64__(WORD2(v24), v24) && *(a1 + 70) == BYTE6(v24))
        {
          break;
        }

        v21 = ++v18 + v23;
      }

      *(v22 + 8 * v23) = *v12;
      ++*(a1 + 48);
      if (++v12 != v17)
      {
        v25 = *(a2 + 64);
        v26 = *(a2 + 68);
        v27 = *(a2 + 70);
        if (*(a2 + 40))
        {
          do
          {
            v28 = BYTE6(*v12);
            v29 = HIDWORD(*v12);
            if (v25 != *v12 || (v26 == v29 ? (v30 = v27 == v28) : (v30 = 0), !v30))
            {
              if (*(a2 + 32) != *v12)
              {
                break;
              }

              if (*(a2 + 36) != v29 || *(a2 + 38) != v28)
              {
                break;
              }
            }

            ++v12;
          }

          while (v12 != v17);
        }

        else
        {
          do
          {
            v32 = *v12;
            if (v25 != *v12)
            {
              break;
            }

            if (v26 != WORD2(v32) || v27 != BYTE6(v32))
            {
              break;
            }

            ++v12;
          }

          while (v12 != v17);
        }
      }
    }

    while (v12 != (*(a2 + 72) + 8 * *(a2 + 56)));
  }

LABEL_63:
  ++*(a1 + 28);
}

float sub_FE8380(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  v6 = *(a2 + 96);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  v9 = *(a2 + 160);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  v12 = *(a2 + 208);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = v10;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;
  *(a1 + 256) = *(a2 + 256);
  v13 = *(a2 + 272);
  v14 = *(a2 + 288);
  v15 = *(a2 + 320);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 320) = v15;
  *(a1 + 272) = v13;
  *(a1 + 288) = v14;
  v16 = *(a2 + 336);
  v17 = *(a2 + 352);
  v18 = *(a2 + 384);
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 384) = v18;
  *(a1 + 336) = v16;
  *(a1 + 352) = v17;
  v19 = *(a2 + 400);
  v20 = *(a2 + 432);
  v21 = *(a2 + 448);
  *(a1 + 416) = *(a2 + 416);
  *(a1 + 432) = v20;
  *(a1 + 400) = v19;
  *(a1 + 448) = v21;
  *(a1 + 456) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_FE8528(a1, a2, a3);
  }

  else
  {
    v23 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v24 = *(a1 + 16) * v23;
      if (*(a2 + 240) - *(a2 + 232) < v24)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v23 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v23 *= 2;
      }

      while (v23 < a3);
    }

    *(a1 + 248) = v23;
    result = *(a1 + 20) * v23;
    *a1 = v24;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_FE8528(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2[30] - a2[29];
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

  sub_FE878C(a1, v6);
  v7 = a2[57];
  v8 = a2[31];
  v9 = v7 + 200 * v8;
  if (v8)
  {
    v10 = 200 * v8;
    while (sub_1106280((a2 + 32), v7) || a2[29] && sub_1106280((a2 + 4), v7))
    {
      v7 += 200;
      v10 -= 200;
      if (!v10)
      {
        v7 = v9;
        break;
      }
    }

    v11 = v7;
    while (v11 != a2[57] + 200 * a2[31])
    {
      v12 = *(a1 + 248) - 1;
      v13 = sub_11062FC(a1, v11) & v12;
      if (!sub_1106280(a1 + 256, *(a1 + 456) + 200 * v13))
      {
        v14 = 1;
        do
        {
          v13 = (v13 + v14++) & v12;
        }

        while (!sub_1106280(a1 + 256, *(a1 + 456) + 200 * v13));
      }

      v15 = *(a1 + 456) + 200 * v13;
      *v15 = *v11;
      v16 = *(v11 + 16);
      v17 = *(v11 + 32);
      v18 = *(v11 + 64);
      *(v15 + 48) = *(v11 + 48);
      *(v15 + 64) = v18;
      *(v15 + 16) = v16;
      *(v15 + 32) = v17;
      v19 = *(v11 + 80);
      v20 = *(v11 + 96);
      v21 = *(v11 + 128);
      *(v15 + 112) = *(v11 + 112);
      *(v15 + 128) = v21;
      *(v15 + 80) = v19;
      *(v15 + 96) = v20;
      v22 = *(v11 + 144);
      v23 = *(v11 + 160);
      v24 = *(v11 + 176);
      *(v15 + 192) = *(v11 + 192);
      *(v15 + 160) = v23;
      *(v15 + 176) = v24;
      *(v15 + 144) = v22;
      ++*(a1 + 240);
      do
      {
        v11 += 200;
      }

      while (v11 != v9 && (sub_1106280((a2 + 32), v11) || a2[29] && sub_1106280((a2 + 4), v11)));
    }
  }

  ++*(a1 + 28);
}

uint64x2_t sub_FE878C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 456);
  if (v4)
  {
    if (*(a1 + 248) == a2)
    {
      goto LABEL_7;
    }

    v5 = malloc_type_realloc(*(a1 + 456), 200 * a2, 0x1000040ABD2C8F2uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }
  }

  else
  {
    v5 = malloc_type_malloc(200 * a2, 0x1000040ABD2C8F2uLL);
  }

  *(a1 + 456) = v5;
  v4 = v5;
LABEL_7:
  if (a2)
  {
    v6 = 200 * a2;
    do
    {
      *v4 = *(a1 + 256);
      v7 = *(a1 + 272);
      v8 = *(a1 + 288);
      v9 = *(a1 + 320);
      v4[3] = *(a1 + 304);
      v4[4] = v9;
      v4[1] = v7;
      v4[2] = v8;
      v10 = *(a1 + 336);
      v11 = *(a1 + 352);
      v12 = *(a1 + 384);
      v4[7] = *(a1 + 368);
      v4[8] = v12;
      v4[5] = v10;
      v4[6] = v11;
      v13 = *(a1 + 400);
      v14 = *(a1 + 416);
      v15 = *(a1 + 432);
      *(v4 + 24) = *(a1 + 448);
      v4[10] = v14;
      v4[11] = v15;
      v4[9] = v13;
      v4 = (v4 + 200);
      v6 -= 200;
    }

    while (v6);
  }

  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

void *sub_FE88BC(void *a1, void *a2)
{
  v4 = sub_FE8B18(a1, a2);
  v4[9] = 0;
  v4[10] = 0;
  v4[11] = 0;
  v6 = a2[9];
  v5 = a2[10];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  sub_FE8B18(a1 + 12, a2 + 12);
  a1[21] = 0;
  a1[22] = 0;
  a1[23] = 0;
  v8 = a2[21];
  v7 = a2[22];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[24] = 0;
  a1[25] = 0;
  a1[26] = 0;
  v10 = a2[24];
  v9 = a2[25];
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

void sub_FE8A14(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v4;
    operator delete(v4);
  }

  sub_FE8A74(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_FE8A74(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 24);
    if (v4 != v3)
    {
      do
      {
        v6 = *(v4 - 24);
        if (v6)
        {
          *(v4 - 16) = v6;
          operator delete(v6);
        }

        v7 = *(v4 - 64);
        if (v7)
        {
          *(v4 - 56) = v7;
          operator delete(v7);
        }

        v4 -= 176;
      }

      while (v4 != v3);
      v5 = *(a1 + 24);
    }

    *(a1 + 32) = v3;
    operator delete(v5);
  }

  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void *sub_FE8B18(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v4 = a2[1];
  if (v4 != *a2)
  {
    if (((v4 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_FE8C70((a1 + 3), a2[3], a2[4], 0x2E8BA2E8BA2E8BA3 * ((a2[4] - a2[3]) >> 4));
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  v6 = a2[6];
  v5 = a2[7];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_FE8C30(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_FE8C70(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x1745D1745D1745ELL)
    {
      operator new();
    }

    sub_1794();
  }
}

void sub_FE8D74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_FE8ED8(&a11);
  *(v11 + 8) = v12;
  sub_FE8F4C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_FE8D94(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(result + 16) = a2[1];
  *(result + 32) = v3;
  *result = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(result + 80) = a2[5];
  *(result + 96) = v6;
  *(result + 112) = 0;
  *(result + 48) = v4;
  *(result + 64) = v5;
  *(result + 120) = 0;
  *(result + 128) = 0;
  v8 = *(a2 + 14);
  v7 = *(a2 + 15);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v9 = *(a2 + 136);
  *(result + 152) = 0;
  *(result + 136) = v9;
  *(result + 160) = 0;
  *(result + 168) = 0;
  v11 = *(a2 + 19);
  v10 = *(a2 + 20);
  if (v10 != v11)
  {
    if (((v10 - v11) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_FE8EA4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 160) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 120) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FE8ED8(uint64_t a1)
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

      v6 = *(v3 - 64);
      if (v6)
      {
        *(v3 - 56) = v6;
        operator delete(v6);
      }

      v3 -= 176;
    }
  }

  return a1;
}

void ***sub_FE8F4C(void ***a1)
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

          v7 = *(v4 - 8);
          if (v7)
          {
            *(v4 - 7) = v7;
            operator delete(v7);
          }

          v4 -= 176;
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

void **sub_FE8FE0(void **a1)
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

        v6 = *(v3 - 8);
        if (v6)
        {
          *(v3 - 7) = v6;
          operator delete(v6);
        }

        v3 -= 176;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FE9064(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 2464;
    sub_FE90B8((i - 2464));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_FE90B8(void *a1)
{
  v2 = a1[305];
  if (v2)
  {
    a1[306] = v2;
    operator delete(v2);
  }

  v3 = a1[302];
  if (v3)
  {
    a1[303] = v3;
    operator delete(v3);
  }

  v4 = a1[299];
  if (v4)
  {
    a1[300] = v4;
    operator delete(v4);
  }

  v5 = a1[296];
  if (v5)
  {
    v6 = a1[297];
    v7 = a1[296];
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 24);
        if (v8)
        {
          *(v6 - 16) = v8;
          operator delete(v8);
        }

        v9 = *(v6 - 64);
        if (v9)
        {
          *(v6 - 56) = v9;
          operator delete(v9);
        }

        v6 -= 176;
      }

      while (v6 != v5);
      v7 = a1[296];
    }

    a1[297] = v5;
    operator delete(v7);
  }

  v10 = a1[293];
  if (v10)
  {
    a1[294] = v10;
    operator delete(v10);
  }

  v11 = a1[290];
  if (v11)
  {
    a1[291] = v11;
    operator delete(v11);
  }

  v12 = a1[287];
  if (v12)
  {
    a1[288] = v12;
    operator delete(v12);
  }

  v13 = a1[284];
  if (v13)
  {
    v14 = a1[285];
    v15 = a1[284];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 24);
        if (v16)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v17 = *(v14 - 64);
        if (v17)
        {
          *(v14 - 56) = v17;
          operator delete(v17);
        }

        v14 -= 176;
      }

      while (v14 != v13);
      v15 = a1[284];
    }

    a1[285] = v13;
    operator delete(v15);
  }

  v18 = a1[281];
  if (v18)
  {
    a1[282] = v18;
    operator delete(v18);
  }

  v19 = a1[280];
  if (v19)
  {
    free(v19);
  }

  v20 = a1[220];
  if (v20)
  {
    a1[221] = v20;
    operator delete(v20);
  }

  v21 = a1[217];
  if (v21)
  {
    a1[218] = v21;
    operator delete(v21);
  }

  v22 = a1[213];
  if (v22)
  {
    a1[214] = v22;
    operator delete(v22);
  }

  v23 = a1[209];
  if (v23)
  {
    a1[210] = v23;
    operator delete(v23);
  }

  v24 = a1[208];
  if (v24)
  {
    free(v24);
  }

  sub_360988((a1 + 103));
  v25 = a1[100];
  if (v25)
  {
    a1[101] = v25;
    operator delete(v25);
  }

  sub_360988((a1 + 4));
  v26 = a1[1];
  if (v26)
  {
    v27 = a1[2];
    v28 = a1[1];
    if (v27 == v26)
    {
LABEL_62:
      a1[2] = v26;
      operator delete(v28);
      return a1;
    }

    while (1)
    {
      if (*(v27 - 1) < 0)
      {
        operator delete(*(v27 - 3));
        v29 = v27 - 6;
        v30 = *(v27 - 6);
        if (v30)
        {
LABEL_58:
          v31 = *(v27 - 5);
          v32 = v30;
          if (v31 != v30)
          {
            do
            {
              v31 = sub_4547F0(v31 - 552);
            }

            while (v31 != v30);
            v32 = *v29;
          }

          *(v27 - 5) = v30;
          operator delete(v32);
        }
      }

      else
      {
        v29 = v27 - 6;
        v30 = *(v27 - 6);
        if (v30)
        {
          goto LABEL_58;
        }
      }

      v27 = v29;
      if (v29 == v26)
      {
        v28 = a1[1];
        goto LABEL_62;
      }
    }
  }

  return a1;
}

uint64_t sub_FE9318(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_FE956C((a1 + 8), a2 + 8);
  for (i = 0; i != 768; i += 48)
  {
    v5 = (a2 + i);
    v6 = a1 + i;
    v7 = *(a2 + i + 72);
    v8 = *(a2 + i + 32);
    v9 = *(a2 + i + 48);
    v5[4] = &unk_2290750;
    v5[5] = 0;
    v10 = *(a1 + i + 32);
    *(v6 + 32) = v8;
    v5[9] = 0;
    v5[6] = 0;
    v5[7] = 0;
    v11 = *(a1 + i + 56);
    *(v6 + 48) = v9;
    *(v6 + 72) = v7;
    if (v11)
    {
      operator delete(v10);
    }
  }

  v12 = *(a1 + 800);
  if (v12)
  {
    *(a1 + 808) = v12;
    operator delete(v12);
    *(a1 + 800) = 0;
    *(a1 + 808) = 0;
    *(a1 + 816) = 0;
  }

  v13 = 0;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 800) = 0;
  *(a2 + 808) = 0;
  *(a2 + 816) = 0;
  do
  {
    v14 = (a2 + v13);
    v15 = a1 + v13;
    v16 = (a2 + v13 + 840);
    v17 = *(a2 + v13 + 864);
    v14[108] = 0;
    v18 = *(a2 + v13 + 824);
    v14[103] = &unk_2290750;
    v14[104] = 0;
    v19 = *(a1 + v13 + 824);
    *(v15 + 824) = v18;
    v20 = *v16;
    *v16 = 0u;
    v21 = *(a1 + v13 + 848);
    *(a1 + v13 + 840) = v20;
    *(v15 + 864) = v17;
    if (v21)
    {
      operator delete(v19);
    }

    v13 += 48;
  }

  while (v13 != 768);
  sub_FE9734(a1 + 1592, a2 + 1592);
  v22 = *(a1 + 1672);
  if (v22)
  {
    *(a1 + 1680) = v22;
    operator delete(v22);
    *(a1 + 1672) = 0;
    *(a1 + 1680) = 0;
    *(a1 + 1688) = 0;
  }

  *(a1 + 1672) = *(a2 + 1672);
  *(a1 + 1680) = *(a2 + 1680);
  *(a2 + 1680) = 0;
  *(a2 + 1688) = 0;
  *(a2 + 1672) = 0;
  *(a1 + 1696) = *(a2 + 1696);
  v23 = *(a1 + 1704);
  if (v23)
  {
    *(a1 + 1712) = v23;
    operator delete(v23);
    *(a1 + 1704) = 0;
    *(a1 + 1712) = 0;
    *(a1 + 1720) = 0;
  }

  *(a1 + 1704) = *(a2 + 1704);
  *(a1 + 1712) = *(a2 + 1712);
  *(a2 + 1712) = 0;
  *(a2 + 1720) = 0;
  *(a2 + 1704) = 0;
  *(a1 + 1728) = *(a2 + 1728);
  v24 = *(a1 + 1736);
  if (v24)
  {
    *(a1 + 1744) = v24;
    operator delete(v24);
    *(a1 + 1736) = 0;
    *(a1 + 1744) = 0;
    *(a1 + 1752) = 0;
  }

  *(a1 + 1736) = *(a2 + 1736);
  *(a1 + 1744) = *(a2 + 1744);
  *(a2 + 1736) = 0;
  *(a2 + 1744) = 0;
  *(a2 + 1752) = 0;
  v25 = *(a1 + 1760);
  if (v25)
  {
    *(a1 + 1768) = v25;
    operator delete(v25);
    *(a1 + 1760) = 0;
    *(a1 + 1768) = 0;
    *(a1 + 1776) = 0;
  }

  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = *(a2 + 1776);
  *(a2 + 1776) = 0;
  *(a2 + 1760) = 0u;
  sub_FE984C(a1 + 1784, a2 + 1784);
  sub_FE9658((a1 + 2248), a2 + 2248);
  return a1;
}

void ***sub_FE956C(void ***a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 == v4)
    {
LABEL_14:
      a1[1] = v4;
      operator delete(v6);
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
      goto LABEL_15;
    }

    while (1)
    {
      if (*(v5 - 1) < 0)
      {
        operator delete(*(v5 - 3));
        v7 = v5 - 6;
        v8 = *(v5 - 6);
        if (v8)
        {
LABEL_10:
          v9 = *(v5 - 5);
          v10 = v8;
          if (v9 != v8)
          {
            do
            {
              v9 = sub_4547F0(v9 - 552);
            }

            while (v9 != v8);
            v10 = *v7;
          }

          *(v5 - 5) = v8;
          operator delete(v10);
        }
      }

      else
      {
        v7 = v5 - 6;
        v8 = *(v5 - 6);
        if (v8)
        {
          goto LABEL_10;
        }
      }

      v5 = v7;
      if (v7 == v4)
      {
        v6 = *a1;
        goto LABEL_14;
      }
    }
  }

LABEL_15:
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

void *sub_FE9658(void *a1, uint64_t a2)
{
  sub_FE9B34(a1, a2);
  v4 = a1[9];
  if (v4)
  {
    a1[10] = v4;
    operator delete(v4);
    a1[9] = 0;
    a1[10] = 0;
    a1[11] = 0;
  }

  *(a1 + 9) = *(a2 + 72);
  a1[11] = *(a2 + 88);
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  sub_FE9B34((a1 + 12), a2 + 96);
  v5 = a1[21];
  if (v5)
  {
    a1[22] = v5;
    operator delete(v5);
    a1[21] = 0;
    a1[22] = 0;
    a1[23] = 0;
  }

  *(a1 + 21) = *(a2 + 168);
  a1[23] = *(a2 + 184);
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  *(a2 + 184) = 0;
  v6 = a1[24];
  if (v6)
  {
    a1[25] = v6;
    operator delete(v6);
    a1[24] = 0;
    a1[25] = 0;
    a1[26] = 0;
  }

  *(a1 + 12) = *(a2 + 192);
  a1[26] = *(a2 + 208);
  *(a2 + 192) = 0;
  *(a2 + 200) = 0;
  *(a2 + 208) = 0;
  return a1;
}

uint64_t sub_FE9734(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  if (*(a2 + 25))
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 64) = *(a2 + 64);
    sub_FE80AC(a1, a2, 4uLL);
    return a1;
  }

  sub_FE7F78(&v12, a2, 0x20uLL);
  v6 = *a1;
  v5 = *(a1 + 16);
  v7 = v13;
  *a1 = v12;
  *(a1 + 16) = v7;
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 32);
  *(a1 + 32) = v14;
  v14 = v8;
  v9 = *(a1 + 48);
  *(a1 + 48) = v15;
  v15 = v9;
  *&v5 = v16;
  v10 = *(a1 + 56);
  *(a1 + 56) = v16;
  v16 = v10;
  v11 = *(a1 + 72);
  *(a1 + 72) = v17;
  v17 = v11;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v5)));
  *(a1 + 24) = 0;
  v12 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v13, v10)));
  BYTE8(v13) = 0;
  if (!v11)
  {
    return a1;
  }

  free(v11);
  return a1;
}

uint64_t sub_FE984C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    return a1;
  }

  if (*(a2 + 25))
  {
    v3 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v3;
    v4 = *(a2 + 96);
    v6 = *(a2 + 48);
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 96) = v4;
    *(a1 + 48) = v6;
    *(a1 + 64) = v5;
    v7 = *(a2 + 160);
    v9 = *(a2 + 112);
    v8 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 160) = v7;
    *(a1 + 112) = v9;
    *(a1 + 128) = v8;
    v11 = *(a2 + 192);
    v10 = *(a2 + 208);
    v12 = *(a2 + 176);
    *(a1 + 224) = *(a2 + 224);
    *(a1 + 192) = v11;
    *(a1 + 208) = v10;
    *(a1 + 176) = v12;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 256) = *(a2 + 256);
    v13 = *(a2 + 272);
    v14 = *(a2 + 288);
    v15 = *(a2 + 320);
    *(a1 + 304) = *(a2 + 304);
    *(a1 + 320) = v15;
    *(a1 + 272) = v13;
    *(a1 + 288) = v14;
    v16 = *(a2 + 336);
    v17 = *(a2 + 352);
    v18 = *(a2 + 384);
    *(a1 + 368) = *(a2 + 368);
    *(a1 + 384) = v18;
    *(a1 + 336) = v16;
    *(a1 + 352) = v17;
    v19 = *(a2 + 400);
    v20 = *(a2 + 416);
    v21 = *(a2 + 432);
    *(a1 + 448) = *(a2 + 448);
    *(a1 + 416) = v20;
    *(a1 + 432) = v21;
    *(a1 + 400) = v19;
    sub_FE8528(a1, a2, 4uLL);
    return a1;
  }

  sub_FE8380(&v56, a2, 0x20uLL);
  v99 = *(a1 + 224);
  v23 = v72;
  *(a1 + 224) = v70;
  v25 = *a1;
  v24 = *(a1 + 16);
  v26 = v57;
  *a1 = v56;
  *(a1 + 16) = v26;
  v56 = v25;
  v57 = v24;
  v27 = *(a1 + 208);
  v97 = *(a1 + 192);
  v98 = v27;
  v28 = *(a1 + 144);
  v93 = *(a1 + 128);
  v94 = v28;
  v29 = *(a1 + 176);
  v95 = *(a1 + 160);
  v96 = v29;
  v30 = *(a1 + 80);
  v89 = *(a1 + 64);
  v90 = v30;
  v31 = *(a1 + 112);
  v91 = *(a1 + 96);
  v92 = v31;
  v32 = *(a1 + 48);
  v87 = *(a1 + 32);
  v88 = v32;
  v33 = v69;
  *(a1 + 192) = v68;
  *(a1 + 208) = v33;
  v34 = v65;
  *(a1 + 128) = v64;
  *(a1 + 144) = v34;
  v35 = v67;
  *(a1 + 160) = v66;
  *(a1 + 176) = v35;
  v36 = v61;
  *(a1 + 64) = v60;
  *(a1 + 80) = v36;
  v37 = v63;
  *(a1 + 96) = v62;
  *(a1 + 112) = v37;
  v38 = v59;
  *(a1 + 32) = v58;
  *(a1 + 48) = v38;
  v68 = v97;
  v69 = v98;
  v39 = v71;
  v71 = *(a1 + 232);
  v40 = *(a1 + 248);
  *(a1 + 248) = v23;
  v41 = v99;
  v64 = v93;
  v65 = v94;
  v66 = v95;
  v67 = v96;
  v60 = v89;
  v61 = v90;
  v62 = v91;
  v63 = v92;
  v58 = v87;
  v59 = v88;
  *(a1 + 232) = v39;
  v70 = v41;
  v72 = v40;
  sub_11061C0(&v87);
  v42 = *(a1 + 432);
  v97 = *(a1 + 416);
  v98 = v42;
  v43 = *(a1 + 456);
  v99 = *(a1 + 448);
  v44 = *(a1 + 368);
  v93 = *(a1 + 352);
  v94 = v44;
  v45 = *(a1 + 400);
  v95 = *(a1 + 384);
  v96 = v45;
  v46 = *(a1 + 304);
  v89 = *(a1 + 288);
  v90 = v46;
  v47 = *(a1 + 336);
  v91 = *(a1 + 320);
  v92 = v47;
  v48 = *(a1 + 272);
  v87 = *(a1 + 256);
  v88 = v48;
  v49 = v84;
  *(a1 + 416) = v83;
  *(a1 + 432) = v49;
  v50 = v80;
  *(a1 + 352) = v79;
  *(a1 + 368) = v50;
  v51 = v82;
  *(a1 + 384) = v81;
  *(a1 + 400) = v51;
  v52 = v76;
  *(a1 + 288) = v75;
  *(a1 + 304) = v52;
  v53 = v78;
  *(a1 + 320) = v77;
  *(a1 + 336) = v53;
  v54 = v74;
  *(a1 + 256) = v73;
  *(a1 + 272) = v54;
  v83 = v97;
  v84 = v98;
  v55 = v86;
  *(a1 + 448) = v85;
  *(a1 + 456) = v55;
  v79 = v93;
  v80 = v94;
  v81 = v95;
  v82 = v96;
  v75 = v89;
  v76 = v90;
  v77 = v91;
  v78 = v92;
  v73 = v87;
  v74 = v88;
  v85 = v99;
  v86 = v43;
  *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), *(a1 + 248))));
  *(a1 + 24) = 0;
  v56 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v57, v72)));
  BYTE8(v57) = 0;
  if (!v43)
  {
    return a1;
  }

  free(v43);
  return a1;
}

void sub_FE9B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66)
  {
    free(a66);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_FE9B34(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = (a1 + 24);
  v6 = *(a1 + 24);
  if (v6)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 24);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 24);
        if (v9)
        {
          *(v7 - 16) = v9;
          operator delete(v9);
        }

        v10 = *(v7 - 64);
        if (v10)
        {
          *(v7 - 56) = v10;
          operator delete(v10);
        }

        v7 -= 176;
      }

      while (v7 != v6);
      v8 = *v5;
    }

    *(a1 + 32) = v6;
    operator delete(v8);
    *v5 = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v11 = *(a1 + 48);
  if (v11)
  {
    *(a1 + 56) = v11;
    operator delete(v11);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  return a1;
}

uint64_t sub_FE9C4C(uint64_t a1)
{
  v2 = *(a1 + 1336);
  if (v2)
  {
    *(a1 + 1344) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 1312);
  if (v3)
  {
    *(a1 + 1320) = v3;
    operator delete(v3);
  }

  sub_3BECA4((a1 + 32));
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_FE9CB8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2 && (v3 = *(a1 + 32), v3 < *v2))
  {
    *(a1 + 32) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  else
  {
    v6 = sub_1329130(*(a1 + 24));

    return sub_19593CC(a1 + 24, v6);
  }
}

uint64_t sub_FE9D28(uint64_t a1)
{
  *(a1 + 16) |= 1u;
  result = *(a1 + 96);
  if (!result)
  {
    v3 = *(a1 + 8);
    v4 = (v3 & 0xFFFFFFFFFFFFFFFCLL);
    if (v3)
    {
      result = sub_1329018(*v4);
    }

    else
    {
      result = sub_1329018(v4);
    }

    *(a1 + 96) = result;
  }

  return result;
}

uint64_t sub_FE9D94(uint64_t a1)
{
  v2 = *(a1 + 11888);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_2674DB8[v4])(&v39, v2 + 5);
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

  v5 = *(a1 + 11872);
  *(a1 + 11872) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(a1 + 11848);
  if (v6)
  {
    *(a1 + 11856) = v6;
    operator delete(v6);
  }

  v7 = *(a1 + 11824);
  if (v7)
  {
    *(a1 + 11832) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 11800);
  if (v8)
  {
    *(a1 + 11808) = v8;
    operator delete(v8);
  }

  sub_360988(a1 + 11032);
  sub_360988(a1 + 10264);
  v9 = *(a1 + 10240);
  if (v9)
  {
    *(a1 + 10248) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 10216);
  if (v10)
  {
    *(a1 + 10224) = v10;
    operator delete(v10);
  }

  v11 = *(a1 + 10184);
  if (v11)
  {
    *(a1 + 10192) = v11;
    operator delete(v11);
  }

  v12 = *(a1 + 10160);
  if (v12)
  {
    *(a1 + 10168) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 10136);
  if (v13)
  {
    v14 = *(a1 + 10144);
    v15 = *(a1 + 10136);
    if (v14 != v13)
    {
      v16 = *(a1 + 10144);
      do
      {
        v18 = *(v16 - 24);
        v16 -= 24;
        v17 = v18;
        if (v18)
        {
          *(v14 - 16) = v17;
          operator delete(v17);
        }

        v14 = v16;
      }

      while (v16 != v13);
      v15 = *(a1 + 10136);
    }

    *(a1 + 10144) = v13;
    operator delete(v15);
  }

  v19 = *(a1 + 10112);
  if (v19)
  {
    operator delete(v19);
  }

  v20 = *(a1 + 10088);
  if (v20)
  {
    operator delete(v20);
  }

  v21 = *(a1 + 10056);
  if (v21)
  {
    *(a1 + 10064) = v21;
    operator delete(v21);
  }

  v22 = *(a1 + 10032);
  if (v22)
  {
    *(a1 + 10040) = v22;
    operator delete(v22);
  }

  v23 = *(a1 + 10008);
  if (v23)
  {
    *(a1 + 10016) = v23;
    operator delete(v23);
  }

  v24 = *(a1 + 9984);
  if (v24)
  {
    operator delete(v24);
  }

  v25 = *(a1 + 9960);
  if (v25)
  {
    *(a1 + 9968) = v25;
    operator delete(v25);
  }

  v26 = *(a1 + 9936);
  if (v26)
  {
    v27 = *(a1 + 9944);
    v28 = *(a1 + 9936);
    if (v27 != v26)
    {
      do
      {
        v29 = *(v27 - 80);
        if (v29)
        {
          *(v27 - 72) = v29;
          operator delete(v29);
        }

        v27 -= 88;
      }

      while (v27 != v26);
      v28 = *(a1 + 9936);
    }

    *(a1 + 9944) = v26;
    operator delete(v28);
  }

  v30 = *(a1 + 9880);
  if (v30)
  {
    v31 = *(a1 + 9888);
    v32 = *(a1 + 9880);
    if (v31 != v30)
    {
      do
      {
        v31 = sub_1324260(v31 - 48);
      }

      while (v31 != v30);
      v32 = *(a1 + 9880);
    }

    *(a1 + 9888) = v30;
    operator delete(v32);
  }

  if (*(a1 + 9855) < 0)
  {
    operator delete(*(a1 + 9832));
    if ((*(a1 + 9831) & 0x80000000) == 0)
    {
LABEL_61:
      v33 = *(a1 + 9776);
      if (!v33)
      {
        goto LABEL_63;
      }

      goto LABEL_62;
    }
  }

  else if ((*(a1 + 9831) & 0x80000000) == 0)
  {
    goto LABEL_61;
  }

  operator delete(*(a1 + 9808));
  v33 = *(a1 + 9776);
  if (v33)
  {
LABEL_62:
    *(a1 + 9784) = v33;
    operator delete(v33);
  }

LABEL_63:
  v34 = *(a1 + 9552);
  if (v34)
  {
    *(a1 + 9560) = v34;
    operator delete(v34);
  }

  sub_CDE540(a1 + 4432);
  v35 = *(a1 + 4280);
  if (v35)
  {
    *(a1 + 4288) = v35;
    operator delete(v35);
  }

  v36 = *(a1 + 4256);
  if (v36)
  {
    *(a1 + 4264) = v36;
    operator delete(v36);
  }

  v37 = *(a1 + 4232);
  if (v37)
  {
    *(a1 + 4240) = v37;
    operator delete(v37);
  }

  sub_3E3EF8((a1 + 16));
  return a1;
}

uint64_t sub_FEA098(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 && (v3 = *(a1 + 80), v3 < *v2))
  {
    *(a1 + 80) = v3 + 1;
    return *&v2[2 * v3 + 2];
  }

  else
  {
    v6 = sub_13293D4(*(a1 + 72));

    return sub_19593CC(a1 + 72, v6);
  }
}

void **sub_FEA108(void **a1)
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
        v3 = sub_1324260(v3 - 48);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FEA164(uint64_t a1)
{
  if (*(a1 + 471) < 0)
  {
    operator delete(*(a1 + 448));
    if ((*(a1 + 447) & 0x80000000) == 0)
    {
LABEL_3:
      v2 = *(a1 + 392);
      if (!v2)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(a1 + 447) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 424));
  v2 = *(a1 + 392);
  if (v2)
  {
LABEL_4:
    *(a1 + 400) = v2;
    operator delete(v2);
  }

LABEL_5:
  v3 = *(a1 + 168);
  if (v3)
  {
    *(a1 + 176) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_FEA1DC(uint64_t a1)
{
  v2 = a1 + 4096;
  if (*(a1 + 5551) < 0)
  {
    operator delete(*(a1 + 5528));
    if (*(v2 + 1288) != 1)
    {
      return a1;
    }
  }

  else if (*(a1 + 5384) != 1)
  {
    return a1;
  }

  sub_3E3DF0((a1 + 72));
  return a1;
}

uint64_t sub_FEA244(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  sub_FEA5FC(a1 + 32, a2 + 32);
  *(a1 + 816) = 0;
  *(a1 + 800) = 0u;
  *(a1 + 800) = *(a2 + 800);
  *(a1 + 816) = *(a2 + 816);
  *(a2 + 816) = 0;
  *(a2 + 800) = 0u;
  sub_FEA5FC(a1 + 824, a2 + 824);
  sub_FE7F78(a1 + 1592, a2 + 1592, 0x20uLL);
  *(a1 + 1688) = 0;
  *(a1 + 1672) = 0u;
  *(a1 + 1672) = *(a2 + 1672);
  *(a1 + 1688) = *(a2 + 1688);
  *(a2 + 1688) = 0;
  *(a2 + 1672) = 0u;
  *(a1 + 1696) = *(a2 + 1696);
  *(a1 + 1704) = 0;
  *(a1 + 1712) = 0u;
  *(a1 + 1704) = *(a2 + 1704);
  *(a1 + 1720) = *(a2 + 1720);
  *(a2 + 1720) = 0;
  *(a2 + 1704) = 0u;
  *(a1 + 1728) = *(a2 + 1728);
  *(a1 + 1736) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1736) = *(a2 + 1736);
  *(a1 + 1752) = *(a2 + 1752);
  *(a2 + 1752) = 0;
  *(a2 + 1736) = 0u;
  *(a1 + 1776) = 0;
  *(a1 + 1760) = 0u;
  *(a1 + 1760) = *(a2 + 1760);
  *(a1 + 1776) = *(a2 + 1776);
  *(a2 + 1776) = 0;
  *(a2 + 1760) = 0u;
  sub_FE8380(a1 + 1784, a2 + 1784, 0x20uLL);
  *(a1 + 2264) = 0;
  *(a1 + 2248) = 0u;
  *(a1 + 2248) = *(a2 + 2248);
  *(a1 + 2256) = *(a2 + 2256);
  *(a2 + 2264) = 0;
  *(a2 + 2248) = 0u;
  *(a1 + 2288) = 0;
  *(a1 + 2272) = 0u;
  *(a1 + 2272) = *(a2 + 2272);
  *(a1 + 2288) = *(a2 + 2288);
  *(a2 + 2288) = 0;
  *(a2 + 2272) = 0u;
  *(a1 + 2312) = 0;
  *(a1 + 2296) = 0u;
  *(a1 + 2296) = *(a2 + 2296);
  *(a1 + 2304) = *(a2 + 2304);
  *(a2 + 2312) = 0;
  *(a2 + 2296) = 0u;
  *(a1 + 2336) = 0;
  *(a1 + 2320) = 0u;
  *(a1 + 2320) = *(a2 + 2320);
  *(a1 + 2336) = *(a2 + 2336);
  *(a2 + 2336) = 0;
  *(a2 + 2320) = 0u;
  *(a1 + 2360) = 0;
  *(a1 + 2344) = 0u;
  *(a1 + 2344) = *(a2 + 2344);
  *(a1 + 2352) = *(a2 + 2352);
  *(a2 + 2360) = 0;
  *(a2 + 2344) = 0u;
  *(a1 + 2384) = 0;
  *(a1 + 2368) = 0u;
  *(a1 + 2368) = *(a2 + 2368);
  *(a1 + 2384) = *(a2 + 2384);
  *(a2 + 2384) = 0;
  *(a2 + 2368) = 0u;
  *(a1 + 2408) = 0;
  *(a1 + 2392) = 0u;
  *(a1 + 2392) = *(a2 + 2392);
  *(a1 + 2400) = *(a2 + 2400);
  *(a2 + 2408) = 0;
  *(a2 + 2392) = 0u;
  *(a1 + 2432) = 0;
  *(a1 + 2416) = 0u;
  *(a1 + 2416) = *(a2 + 2416);
  *(a1 + 2432) = *(a2 + 2432);
  *(a2 + 2432) = 0;
  *(a2 + 2416) = 0u;
  *(a1 + 2456) = 0;
  *(a1 + 2440) = 0u;
  *(a1 + 2440) = *(a2 + 2440);
  *(a1 + 2448) = *(a2 + 2448);
  *(a2 + 2456) = 0;
  *(a2 + 2440) = 0u;
  return a1;
}

void sub_FEA508(_Unwind_Exception *a1)
{
  v8 = *v6;
  if (*v6)
  {
    v1[221] = v8;
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

      goto LABEL_10;
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

  v1[218] = v9;
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

    goto LABEL_11;
  }

LABEL_10:
  v1[214] = v10;
  operator delete(v10);
  v11 = *v3;
  if (!*v3)
  {
LABEL_5:
    v12 = v1[208];
    if (!v12)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  v1[210] = v11;
  operator delete(v11);
  v12 = v1[208];
  if (!v12)
  {
LABEL_6:
    sub_360988((v1 + 103));
    v13 = v1[100];
    if (!v13)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  free(v12);
  sub_360988((v1 + 103));
  v13 = v1[100];
  if (!v13)
  {
LABEL_7:
    sub_360988((v1 + 4));
    sub_CDCD6C(v2);
    _Unwind_Resume(a1);
  }

LABEL_13:
  v1[101] = v13;
  operator delete(v13);
  sub_360988((v1 + 4));
  sub_CDCD6C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_FEA5FC(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  *(a1 + 296) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 728) = 0u;
  *a1 = &unk_2290750;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = &unk_2290750;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = &unk_2290750;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 136) = 0;
  *(a1 + 144) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 184) = 0;
  *(a1 + 192) = &unk_2290750;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = &unk_2290750;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 288) = &unk_2290750;
  *(a1 + 312) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = &unk_2290750;
  *(a1 + 360) = 0;
  *(a1 + 376) = 0;
  *(a1 + 384) = &unk_2290750;
  *(a1 + 408) = 0;
  *(a1 + 424) = 0;
  *(a1 + 432) = &unk_2290750;
  *(a1 + 456) = 0;
  *(a1 + 472) = 0;
  *(a1 + 480) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0;
  *(a1 + 528) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0;
  *(a1 + 576) = &unk_2290750;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0;
  *(a1 + 624) = &unk_2290750;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0;
  *(a1 + 672) = &unk_2290750;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0;
  *(a1 + 720) = &unk_2290750;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0;
  do
  {
    v5 = (a2 + v4);
    v6 = a1 + v4;
    v7 = *(a2 + v4);
    v8 = *(a2 + v4 + 16);
    *v5 = &unk_2290750;
    v5[1] = 0;
    v9 = *(a1 + v4);
    *v6 = v7;
    v10 = *(a2 + v4 + 40);
    v5[5] = 0;
    v5[2] = 0;
    v5[3] = 0;
    v11 = *(a1 + v4 + 24);
    *(v6 + 16) = v8;
    *(v6 + 40) = v10;
    if (v11)
    {
      operator delete(v9);
    }

    v4 += 48;
  }

  while (v4 != 768);
  return a1;
}

uint64_t sub_FEA784(uint64_t a1)
{
  v2 = *(a1 + 152);
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

  v4 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_FEAB14(_Unwind_Exception *a1)
{
  v6 = *(v1 + 31664);
  if (v6)
  {
    free(v6);
  }

  if (*v4)
  {
    free(*v4);
  }

  sub_CEC30C(v1 + v3);
  if (*(v1 + 20592) == 1)
  {
    sub_3E3DF0((v1 + 15280));
    if (*(v1 + 15120) != 1)
    {
LABEL_7:
      if (*(v1 + 9704) != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else if (*(v1 + 15120) != 1)
  {
    goto LABEL_7;
  }

  sub_3E3DF0((v1 + 9808));
  if (*(v1 + 9704) != 1)
  {
LABEL_8:
    sub_404134(v2);
    _Unwind_Resume(a1);
  }

LABEL_11:
  sub_3E3DF0((v1 + 4392));
  sub_404134(v2);
  _Unwind_Resume(a1);
}

void sub_FEAC38(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = a1;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    a1 = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      break;
    }

    switch(v12)
    {
      case 3uLL:

        sub_FEB1FC(v9, v9 + 32, a2 - 32);
        return;
      case 4uLL:

        sub_FEB648(v9, v9 + 32, v9 + 64, a2 - 32);
        return;
      case 5uLL:

        sub_FEB938(v9, v9 + 32, v9 + 64, v9 + 96, a2 - 32);
        return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_FEBD04(v9, a2);
      }

      else
      {

        sub_FEBFA8(v9, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v46 = (v12 - 2) >> 1;
        v47 = v46 + 1;
        v48 = &v9[32 * v46];
        do
        {
          sub_FECDE0(v9, a3, (a2 - v9) >> 5, v48);
          v48 -= 32;
          --v47;
        }

        while (v47);
        do
        {
          sub_FED13C(v9, a2, a3, v12);
          a2 -= 32;
        }

        while (v12-- > 2);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[32 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_FEB1FC(&a1[32 * (v12 >> 1)], a1, a2 - 32);
      if (a5)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_FEB1FC(a1, &a1[32 * (v12 >> 1)], a2 - 32);
      v15 = 32 * v13;
      v16 = &a1[32 * v13 - 32];
      sub_FEB1FC(a1 + 32, v16, a2 - 64);
      sub_FEB1FC(a1 + 64, &a1[v15 + 32], a2 - 96);
      sub_FEB1FC(v16, v14, &a1[v15 + 32]);
      v17 = *a1;
      v18 = *(a1 + 1);
      *(&v51 + 7) = *(a1 + 23);
      *&v51 = *(a1 + 2);
      v19 = a1[31];
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *(a1 + 1) = 0;
      *a1 = *v14;
      v20 = *(v14 + 3);
      *(a1 + 8) = *(v14 + 8);
      *(a1 + 3) = v20;
      *v14 = v17;
      *(v14 + 1) = v18;
      *(v14 + 23) = *(&v51 + 7);
      *(v14 + 2) = v51;
      v14[31] = v19;
      if (a5)
      {
        goto LABEL_37;
      }
    }

    v21 = *(a1 - 32);
    v22 = *a1;
    v23 = v21 >= v22;
    if (v21 == v22)
    {
      v24 = *(a1 - 1);
      if (v24 >= 0)
      {
        v25 = a1 - 24;
      }

      else
      {
        v25 = *(a1 - 3);
      }

      if (v24 >= 0)
      {
        v26 = *(a1 - 1);
      }

      else
      {
        v26 = *(a1 - 2);
      }

      v27 = a1[31];
      if (v27 >= 0)
      {
        v28 = a1 + 8;
      }

      else
      {
        v28 = *(a1 + 1);
      }

      if (v27 >= 0)
      {
        v29 = a1[31];
      }

      else
      {
        v29 = *(a1 + 2);
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_41;
        }

        goto LABEL_37;
      }

      v23 = v26 >= v29;
    }

    if (v23)
    {
LABEL_41:
      v9 = sub_FEC220(a1, a2);
      goto LABEL_42;
    }

LABEL_37:
    v32 = sub_FEC66C(a1, a2);
    if ((v33 & 1) == 0)
    {
      goto LABEL_40;
    }

    v34 = sub_FECA10(a1, v32);
    v9 = v32 + 32;
    if (sub_FECA10(v32 + 32, a2))
    {
      a4 = -v11;
      a2 = v32;
      if (v34)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v34)
    {
LABEL_40:
      sub_FEAC38(a1, v32, a3, -v11, a5 & 1);
      v9 = v32 + 32;
LABEL_42:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v35 = *(a2 - 32);
  v36 = *v9;
  if (v35 == v36)
  {
    v37 = *(a2 - 1);
    if (v37 >= 0)
    {
      v38 = a2 - 24;
    }

    else
    {
      v38 = *(a2 - 3);
    }

    if (v37 >= 0)
    {
      v39 = *(a2 - 1);
    }

    else
    {
      v39 = *(a2 - 2);
    }

    v40 = *(v9 + 1);
    v41 = v9[31];
    if (v41 >= 0)
    {
      v42 = v9 + 8;
    }

    else
    {
      v42 = *(v9 + 1);
    }

    if (v41 >= 0)
    {
      v43 = v9[31];
    }

    else
    {
      v43 = *(v9 + 2);
    }

    if (v43 >= v39)
    {
      v44 = v39;
    }

    else
    {
      v44 = v43;
    }

    v45 = memcmp(v38, v42, v44);
    if (v45)
    {
      if ((v45 & 0x80000000) == 0)
      {
        return;
      }
    }

    else if (v39 >= v43)
    {
      return;
    }
  }

  else
  {
    if (v35 >= v36)
    {
      return;
    }

    v40 = *(v9 + 1);
    LOBYTE(v41) = v9[31];
  }

  *(&v52 + 7) = *(v9 + 23);
  *&v52 = *(v9 + 2);
  *(v9 + 2) = 0;
  *(v9 + 3) = 0;
  *(v9 + 1) = 0;
  *v9 = *(a2 - 32);
  v50 = *(a2 - 24);
  *(v9 + 3) = *(a2 - 1);
  *(v9 + 8) = v50;
  *(a2 - 32) = v36;
  *(a2 - 3) = v40;
  *(a2 - 2) = v52;
  *(a2 - 9) = *(&v52 + 7);
  *(a2 - 1) = v41;
}

uint64_t sub_FEB1FC(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = v6 >= v7;
  if (v6 == v7)
  {
    v9 = a2[31];
    if (v9 >= 0)
    {
      v10 = a2 + 8;
    }

    else
    {
      v10 = *(a2 + 1);
    }

    if (v9 >= 0)
    {
      v11 = a2[31];
    }

    else
    {
      v11 = *(a2 + 2);
    }

    v12 = a1[31];
    if (v12 >= 0)
    {
      v13 = a1 + 8;
    }

    else
    {
      v13 = *(a1 + 1);
    }

    if (v12 >= 0)
    {
      v14 = a1[31];
    }

    else
    {
      v14 = *(a1 + 2);
    }

    if (v14 >= v11)
    {
      v15 = v11;
    }

    else
    {
      v15 = v14;
    }

    v16 = memcmp(v10, v13, v15);
    if (v16)
    {
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

LABEL_42:
      v27 = *a3;
      v28 = v27 >= v6;
      if (v27 == v6)
      {
        v29 = a3[31];
        if (v29 >= 0)
        {
          v30 = a3 + 8;
        }

        else
        {
          v30 = *(a3 + 1);
        }

        if (v29 >= 0)
        {
          v31 = a3[31];
        }

        else
        {
          v31 = *(a3 + 2);
        }

        v32 = a2[31];
        if (v32 >= 0)
        {
          v33 = a2 + 8;
        }

        else
        {
          v33 = *(a2 + 1);
        }

        if (v32 >= 0)
        {
          v34 = a2[31];
        }

        else
        {
          v34 = *(a2 + 2);
        }

        if (v34 >= v31)
        {
          v35 = v31;
        }

        else
        {
          v35 = v34;
        }

        v36 = memcmp(v30, v33, v35);
        if (v36)
        {
          if ((v36 & 0x80000000) == 0)
          {
            goto LABEL_60;
          }

          goto LABEL_106;
        }

        v28 = v31 >= v34;
      }

      if (v28)
      {
LABEL_60:
        v37 = *(a1 + 1);
        *&v69 = *(a1 + 2);
        *(&v69 + 7) = *(a1 + 23);
        v38 = a1[31];
        v39 = v38;
        *(a1 + 1) = 0;
        *(a1 + 2) = 0;
        *(a1 + 3) = 0;
        *a1 = *a2;
        v40 = a2 + 8;
        v41 = *(a2 + 8);
        *(a1 + 3) = *(a2 + 3);
        *(a1 + 8) = v41;
        *a2 = v7;
        *(a2 + 2) = v69;
        v42 = (a2 + 16);
        *(a2 + 1) = v37;
        *(a2 + 23) = *(&v69 + 7);
        a2[31] = v38;
        v43 = *a3;
        if (v43 == v7)
        {
          v44 = a3[31];
          if (v44 >= 0)
          {
            v45 = a3 + 8;
          }

          else
          {
            v45 = *(a3 + 1);
          }

          if (v44 >= 0)
          {
            v46 = a3[31];
          }

          else
          {
            v46 = *(a3 + 2);
          }

          if ((v38 & 0x80u) == 0)
          {
            v47 = a2 + 8;
          }

          else
          {
            v47 = v37;
          }

          if ((v38 & 0x80u) == 0)
          {
            v48 = v38;
          }

          else
          {
            v48 = *v42;
          }

          if (v48 >= v46)
          {
            v49 = v46;
          }

          else
          {
            v49 = v48;
          }

          v50 = memcmp(v45, v47, v49);
          if (v50)
          {
            if ((v50 & 0x80000000) == 0)
            {
              return 1;
            }
          }

          else if (v46 >= v48)
          {
            return 1;
          }
        }

        else if (v43 >= v7)
        {
          return 1;
        }

        *&v72 = *v42;
        *(&v72 + 7) = *(a2 + 23);
        *(a2 + 2) = 0;
        *(a2 + 3) = 0;
        *v40 = 0;
        *a2 = *a3;
        v67 = *(a3 + 8);
        *(a2 + 3) = *(a3 + 3);
        *v40 = v67;
        *a3 = v7;
        *(a3 + 23) = *(&v72 + 7);
        *(a3 + 1) = v37;
        *(a3 + 2) = v72;
        a3[31] = v39;
        return 1;
      }

LABEL_106:
      v64 = *(a1 + 1);
      *&v71 = *(a1 + 2);
      *(&v71 + 7) = *(a1 + 23);
      v65 = a1[31];
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *(a1 + 1) = 0;
      *a1 = *a3;
      v66 = *(a3 + 8);
      *(a1 + 3) = *(a3 + 3);
      *(a1 + 8) = v66;
      *a3 = v7;
      *(a3 + 23) = *(&v71 + 7);
      *(a3 + 1) = v64;
      *(a3 + 2) = v71;
      a3[31] = v65;
      return 1;
    }

    v8 = v11 >= v14;
  }

  if (!v8)
  {
    goto LABEL_42;
  }

LABEL_19:
  v17 = *a3;
  if (v17 != v6)
  {
    if (v17 < v6)
    {
      v21 = *(a2 + 1);
      LOBYTE(v22) = a2[31];
      goto LABEL_82;
    }

    return 0;
  }

  v18 = a3[31];
  if (v18 >= 0)
  {
    v19 = a3 + 8;
  }

  else
  {
    v19 = *(a3 + 1);
  }

  if (v18 >= 0)
  {
    v20 = a3[31];
  }

  else
  {
    v20 = *(a3 + 2);
  }

  v21 = *(a2 + 1);
  v22 = a2[31];
  if (v22 >= 0)
  {
    v23 = a2 + 8;
  }

  else
  {
    v23 = *(a2 + 1);
  }

  if (v22 >= 0)
  {
    v24 = a2[31];
  }

  else
  {
    v24 = *(a2 + 2);
  }

  if (v24 >= v20)
  {
    v25 = v20;
  }

  else
  {
    v25 = v24;
  }

  v26 = memcmp(v19, v23, v25);
  if (!v26)
  {
    if (v20 < v24)
    {
      goto LABEL_82;
    }

    return 0;
  }

  if ((v26 & 0x80000000) == 0)
  {
    return 0;
  }

LABEL_82:
  *(a2 + 1) = 0;
  *&v70 = *(a2 + 2);
  *(&v70 + 7) = *(a2 + 23);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v51 = *(a3 + 8);
  *(a2 + 3) = *(a3 + 3);
  *(a2 + 8) = v51;
  *a3 = v6;
  *(a3 + 23) = *(&v70 + 7);
  *(a3 + 1) = v21;
  *(a3 + 2) = v70;
  a3[31] = v22;
  v52 = *a2;
  v53 = *a1;
  if (v52 != v53)
  {
    if (v52 >= v53)
    {
      return 1;
    }

    v57 = *(a1 + 1);
    LOBYTE(v58) = a1[31];
LABEL_110:
    *&v73 = *(a1 + 2);
    *(&v73 + 7) = *(a1 + 23);
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *(a1 + 3) = 0;
    *a1 = *a2;
    v68 = *(a2 + 8);
    *(a1 + 3) = *(a2 + 3);
    *(a1 + 8) = v68;
    *a2 = v53;
    *(a2 + 1) = v57;
    *(a2 + 23) = *(&v73 + 7);
    *(a2 + 2) = v73;
    a2[31] = v58;
    return 1;
  }

  v54 = a2[31];
  if (v54 >= 0)
  {
    v55 = a2 + 8;
  }

  else
  {
    v55 = *(a2 + 1);
  }

  if (v54 >= 0)
  {
    v56 = a2[31];
  }

  else
  {
    v56 = *(a2 + 2);
  }

  v57 = *(a1 + 1);
  v58 = a1[31];
  if (v58 >= 0)
  {
    v59 = a1 + 8;
  }

  else
  {
    v59 = *(a1 + 1);
  }

  if (v58 >= 0)
  {
    v60 = a1[31];
  }

  else
  {
    v60 = *(a1 + 2);
  }

  if (v60 >= v56)
  {
    v61 = v56;
  }

  else
  {
    v61 = v60;
  }

  v62 = memcmp(v55, v59, v61);
  if (!v62)
  {
    if (v56 >= v60)
    {
      return 1;
    }

    goto LABEL_110;
  }

  if (v62 < 0)
  {
    goto LABEL_110;
  }

  return 1;
}

uint64_t sub_FEB648(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  result = sub_FEB1FC(a1, a2, a3);
  v9 = *a4;
  v10 = *a3;
  if (v9 == v10)
  {
    v11 = a4[31];
    if (v11 >= 0)
    {
      v12 = a4 + 8;
    }

    else
    {
      v12 = *(a4 + 1);
    }

    if (v11 >= 0)
    {
      v13 = a4[31];
    }

    else
    {
      v13 = *(a4 + 2);
    }

    v14 = *(a3 + 1);
    v15 = a3[31];
    if (v15 >= 0)
    {
      v16 = a3 + 8;
    }

    else
    {
      v16 = *(a3 + 1);
    }

    if (v15 >= 0)
    {
      v17 = a3[31];
    }

    else
    {
      v17 = *(a3 + 2);
    }

    if (v17 >= v13)
    {
      v18 = v13;
    }

    else
    {
      v18 = v17;
    }

    result = memcmp(v12, v16, v18);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v13 >= v17)
    {
      return result;
    }
  }

  else
  {
    if (v9 >= v10)
    {
      return result;
    }

    v14 = *(a3 + 1);
    LOBYTE(v15) = a3[31];
  }

  *(a3 + 1) = 0;
  *&v42 = *(a3 + 2);
  *(&v42 + 7) = *(a3 + 23);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v19 = *(a4 + 8);
  *(a3 + 3) = *(a4 + 3);
  *(a3 + 8) = v19;
  *a4 = v10;
  *(a4 + 23) = *(&v42 + 7);
  *(a4 + 1) = v14;
  *(a4 + 2) = v42;
  a4[31] = v15;
  v20 = *a3;
  v21 = *a2;
  if (v20 == v21)
  {
    v22 = a3[31];
    if (v22 >= 0)
    {
      v23 = a3 + 8;
    }

    else
    {
      v23 = *(a3 + 1);
    }

    if (v22 >= 0)
    {
      v24 = a3[31];
    }

    else
    {
      v24 = *(a3 + 2);
    }

    v25 = *(a2 + 1);
    v26 = a2[31];
    if (v26 >= 0)
    {
      v27 = a2 + 8;
    }

    else
    {
      v27 = *(a2 + 1);
    }

    if (v26 >= 0)
    {
      v28 = a2[31];
    }

    else
    {
      v28 = *(a2 + 2);
    }

    if (v28 >= v24)
    {
      v29 = v24;
    }

    else
    {
      v29 = v28;
    }

    result = memcmp(v23, v27, v29);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v24 >= v28)
    {
      return result;
    }
  }

  else
  {
    if (v20 >= v21)
    {
      return result;
    }

    v25 = *(a2 + 1);
    LOBYTE(v26) = a2[31];
  }

  *(a2 + 1) = 0;
  *&v43 = *(a2 + 2);
  *(&v43 + 7) = *(a2 + 23);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v30 = *(a3 + 8);
  *(a2 + 3) = *(a3 + 3);
  *(a2 + 8) = v30;
  *a3 = v21;
  *(a3 + 1) = v25;
  *(a3 + 23) = *(&v43 + 7);
  *(a3 + 2) = v43;
  a3[31] = v26;
  v31 = *a2;
  v32 = *a1;
  if (v31 == v32)
  {
    v33 = a2[31];
    if (v33 >= 0)
    {
      v34 = a2 + 8;
    }

    else
    {
      v34 = *(a2 + 1);
    }

    if (v33 >= 0)
    {
      v35 = a2[31];
    }

    else
    {
      v35 = *(a2 + 2);
    }

    v36 = *(a1 + 1);
    v37 = a1[31];
    if (v37 >= 0)
    {
      v38 = a1 + 8;
    }

    else
    {
      v38 = *(a1 + 1);
    }

    if (v37 >= 0)
    {
      v39 = a1[31];
    }

    else
    {
      v39 = *(a1 + 2);
    }

    if (v39 >= v35)
    {
      v40 = v35;
    }

    else
    {
      v40 = v39;
    }

    result = memcmp(v34, v38, v40);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v35 >= v39)
    {
      return result;
    }
  }

  else
  {
    if (v31 >= v32)
    {
      return result;
    }

    v36 = *(a1 + 1);
    LOBYTE(v37) = a1[31];
  }

  *&v44 = *(a1 + 2);
  *(&v44 + 7) = *(a1 + 23);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = *a2;
  v41 = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = v41;
  *a2 = v32;
  *(a2 + 1) = v36;
  *(a2 + 23) = *(&v44 + 7);
  *(a2 + 2) = v44;
  a2[31] = v37;
  return result;
}

uint64_t sub_FEB938(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  result = sub_FEB648(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  if (v10 == v11)
  {
    v12 = a5[31];
    if (v12 >= 0)
    {
      v13 = a5 + 8;
    }

    else
    {
      v13 = *(a5 + 1);
    }

    if (v12 >= 0)
    {
      v14 = a5[31];
    }

    else
    {
      v14 = *(a5 + 2);
    }

    v15 = *(a4 + 1);
    v16 = a4[31];
    if (v16 >= 0)
    {
      v17 = a4 + 8;
    }

    else
    {
      v17 = *(a4 + 1);
    }

    if (v16 >= 0)
    {
      v18 = a4[31];
    }

    else
    {
      v18 = *(a4 + 2);
    }

    if (v18 >= v14)
    {
      v19 = v14;
    }

    else
    {
      v19 = v18;
    }

    result = memcmp(v13, v17, v19);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v14 >= v18)
    {
      return result;
    }
  }

  else
  {
    if (v10 >= v11)
    {
      return result;
    }

    v15 = *(a4 + 1);
    LOBYTE(v16) = a4[31];
  }

  *(a4 + 1) = 0;
  *&v55 = *(a4 + 2);
  *(&v55 + 7) = *(a4 + 23);
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *a4 = *a5;
  v20 = *(a5 + 8);
  *(a4 + 3) = *(a5 + 3);
  *(a4 + 8) = v20;
  *a5 = v11;
  *(a5 + 23) = *(&v55 + 7);
  *(a5 + 1) = v15;
  *(a5 + 2) = v55;
  a5[31] = v16;
  v21 = *a4;
  v22 = *a3;
  if (v21 == v22)
  {
    v23 = a4[31];
    if (v23 >= 0)
    {
      v24 = a4 + 8;
    }

    else
    {
      v24 = *(a4 + 1);
    }

    if (v23 >= 0)
    {
      v25 = a4[31];
    }

    else
    {
      v25 = *(a4 + 2);
    }

    v26 = *(a3 + 1);
    v27 = a3[31];
    if (v27 >= 0)
    {
      v28 = a3 + 8;
    }

    else
    {
      v28 = *(a3 + 1);
    }

    if (v27 >= 0)
    {
      v29 = a3[31];
    }

    else
    {
      v29 = *(a3 + 2);
    }

    if (v29 >= v25)
    {
      v30 = v25;
    }

    else
    {
      v30 = v29;
    }

    result = memcmp(v24, v28, v30);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v25 >= v29)
    {
      return result;
    }
  }

  else
  {
    if (v21 >= v22)
    {
      return result;
    }

    v26 = *(a3 + 1);
    LOBYTE(v27) = a3[31];
  }

  *(a3 + 1) = 0;
  *&v56 = *(a3 + 2);
  *(&v56 + 7) = *(a3 + 23);
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *a3 = *a4;
  v31 = *(a4 + 8);
  *(a3 + 3) = *(a4 + 3);
  *(a3 + 8) = v31;
  *a4 = v22;
  *(a4 + 1) = v26;
  *(a4 + 23) = *(&v56 + 7);
  *(a4 + 2) = v56;
  a4[31] = v27;
  v32 = *a3;
  v33 = *a2;
  if (v32 == v33)
  {
    v34 = a3[31];
    if (v34 >= 0)
    {
      v35 = a3 + 8;
    }

    else
    {
      v35 = *(a3 + 1);
    }

    if (v34 >= 0)
    {
      v36 = a3[31];
    }

    else
    {
      v36 = *(a3 + 2);
    }

    v37 = *(a2 + 1);
    v38 = a2[31];
    if (v38 >= 0)
    {
      v39 = a2 + 8;
    }

    else
    {
      v39 = *(a2 + 1);
    }

    if (v38 >= 0)
    {
      v40 = a2[31];
    }

    else
    {
      v40 = *(a2 + 2);
    }

    if (v40 >= v36)
    {
      v41 = v36;
    }

    else
    {
      v41 = v40;
    }

    result = memcmp(v35, v39, v41);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v36 >= v40)
    {
      return result;
    }
  }

  else
  {
    if (v32 >= v33)
    {
      return result;
    }

    v37 = *(a2 + 1);
    LOBYTE(v38) = a2[31];
  }

  *(a2 + 1) = 0;
  *&v57 = *(a2 + 2);
  *(&v57 + 7) = *(a2 + 23);
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *a2 = *a3;
  v42 = *(a3 + 8);
  *(a2 + 3) = *(a3 + 3);
  *(a2 + 8) = v42;
  *a3 = v33;
  *(a3 + 1) = v37;
  *(a3 + 23) = *(&v57 + 7);
  *(a3 + 2) = v57;
  a3[31] = v38;
  v43 = *a2;
  v44 = *a1;
  if (v43 == v44)
  {
    v45 = a2[31];
    if (v45 >= 0)
    {
      v46 = a2 + 8;
    }

    else
    {
      v46 = *(a2 + 1);
    }

    if (v45 >= 0)
    {
      v47 = a2[31];
    }

    else
    {
      v47 = *(a2 + 2);
    }

    v48 = *(a1 + 1);
    v49 = a1[31];
    if (v49 >= 0)
    {
      v50 = a1 + 8;
    }

    else
    {
      v50 = *(a1 + 1);
    }

    if (v49 >= 0)
    {
      v51 = a1[31];
    }

    else
    {
      v51 = *(a1 + 2);
    }

    if (v51 >= v47)
    {
      v52 = v47;
    }

    else
    {
      v52 = v51;
    }

    result = memcmp(v46, v50, v52);
    if (result)
    {
      if ((result & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v47 >= v51)
    {
      return result;
    }
  }

  else
  {
    if (v43 >= v44)
    {
      return result;
    }

    v48 = *(a1 + 1);
    LOBYTE(v49) = a1[31];
  }

  *&v58 = *(a1 + 2);
  *(&v58 + 7) = *(a1 + 23);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *a1 = *a2;
  v53 = *(a2 + 8);
  *(a1 + 3) = *(a2 + 3);
  *(a1 + 8) = v53;
  *a2 = v44;
  *(a2 + 1) = v48;
  *(a2 + 23) = *(&v58 + 7);
  *(a2 + 2) = v58;
  a2[31] = v49;
  return result;
}

void sub_FEBD04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v3 = a1 + 32;
    if (a1 + 32 != a2)
    {
      v4 = 0;
      v5 = a1;
      do
      {
        v8 = v5;
        v5 = v3;
        v7 = v8[32];
        v10 = *v8;
        if (v7 == v10)
        {
          v11 = v8[63];
          if (v11 >= 0)
          {
            v12 = v8 + 40;
          }

          else
          {
            v12 = *(v8 + 5);
          }

          if (v11 >= 0)
          {
            v13 = v8[63];
          }

          else
          {
            v13 = *(v8 + 6);
          }

          v14 = v8[31];
          if (v14 >= 0)
          {
            v15 = v8 + 8;
          }

          else
          {
            v15 = *(v8 + 1);
          }

          if (v14 >= 0)
          {
            v16 = v8[31];
          }

          else
          {
            v16 = *(v8 + 2);
          }

          if (v16 >= v13)
          {
            v17 = v13;
          }

          else
          {
            v17 = v16;
          }

          v18 = memcmp(v12, v15, v17);
          if (v18)
          {
            if ((v18 & 0x80000000) == 0)
            {
              goto LABEL_7;
            }
          }

          else if (v13 >= v16)
          {
            goto LABEL_7;
          }
        }

        else if (v7 >= v10)
        {
          goto LABEL_7;
        }

        v43 = v7;
        v44 = *(v8 + 40);
        v45 = *(v8 + 7);
        *(v8 + 5) = 0;
        *(v8 + 6) = 0;
        *(v8 + 7) = 0;
        v19 = v5[31];
        *v5 = *v8;
        if (v19 < 0)
        {
          operator delete(*(v5 + 1));
        }

        v6 = v8 + 8;
        *(v5 + 8) = *(v8 + 8);
        *(v5 + 3) = *(v8 + 3);
        v8[31] = 0;
        v8[8] = 0;
        if (v8 == a1)
        {
LABEL_5:
          LOBYTE(v7) = v43;
          v8 = a1;
          goto LABEL_6;
        }

        v20 = *(v8 - 32);
        if (v7 == v20)
        {
          if (v45 >= 0)
          {
            v21 = &v44;
          }

          else
          {
            v21 = v44;
          }

          if (v45 >= 0)
          {
            v22 = HIBYTE(v45);
          }

          else
          {
            v22 = *(&v44 + 1);
          }

          v23 = *(v8 - 1);
          if (v23 >= 0)
          {
            v24 = v8 - 24;
          }

          else
          {
            v24 = *(v8 - 3);
          }

          if (v23 >= 0)
          {
            v25 = *(v8 - 1);
          }

          else
          {
            v25 = *(v8 - 2);
          }

          if (v25 >= v22)
          {
            v26 = v22;
          }

          else
          {
            v26 = v25;
          }

          v27 = memcmp(v21, v24, v26);
          if (v27)
          {
            if ((v27 & 0x80000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else if (v22 >= v25)
          {
            goto LABEL_6;
          }
        }

        else if (v7 >= v20)
        {
          goto LABEL_6;
        }

        for (i = v4; ; i -= 32)
        {
          v29 = &a1[i];
          *v29 = v20;
          *(v29 + 8) = *&a1[i - 24];
          *(v29 + 3) = *&a1[i - 8];
          *(v29 - 1) = 0;
          *(v29 - 24) = 0;
          if (i == 32)
          {
            v6 = v29 - 24;
            goto LABEL_5;
          }

          LOBYTE(v7) = v43;
          v20 = *(v29 - 64);
          if (v43 != v20)
          {
            if (v43 >= v20)
            {
              goto LABEL_79;
            }

            continue;
          }

          v30 = &a1[i];
          v31 = v45 >= 0 ? &v44 : v44;
          v32 = v45 >= 0 ? HIBYTE(v45) : *(&v44 + 1);
          v35 = *(v30 - 7);
          v33 = v30 - 56;
          v34 = v35;
          v36 = v33[23];
          v37 = v36 >= 0 ? v33 : v34;
          v38 = v36 >= 0 ? v33[23] : *(v33 + 1);
          v39 = v38 >= v32 ? v32 : v38;
          v40 = memcmp(v31, v37, v39);
          if (!v40)
          {
            break;
          }

          if ((v40 & 0x80000000) == 0)
          {
            goto LABEL_79;
          }

LABEL_57:
          ;
        }

        if (v32 < v38)
        {
          goto LABEL_57;
        }

LABEL_79:
        v41 = &a1[i];
        v8 = &a1[i - 32];
        v6 = v41 - 24;
LABEL_6:
        *v8 = v7;
        v9 = v44;
        *(v6 + 2) = v45;
        *v6 = v9;
LABEL_7:
        v3 = v5 + 32;
        v4 += 32;
      }

      while (v5 + 32 != a2);
    }
  }
}

void sub_FEBFA8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (a1 != a2)
  {
    v41 = v2;
    v42 = v3;
    v5 = a1;
    v6 = a1 + 32;
    if (a1 + 32 != a2)
    {
      v7 = a1 + 8;
      do
      {
        v8 = v5;
        v5 = v6;
        v11 = v8[32];
        v12 = *v8;
        if (v11 == v12)
        {
          v13 = v8[63];
          if (v13 >= 0)
          {
            v14 = v8 + 40;
          }

          else
          {
            v14 = *(v8 + 5);
          }

          if (v13 >= 0)
          {
            v15 = v8[63];
          }

          else
          {
            v15 = *(v8 + 6);
          }

          v16 = v8[31];
          if (v16 >= 0)
          {
            v17 = v8 + 8;
          }

          else
          {
            v17 = *(v8 + 1);
          }

          if (v16 >= 0)
          {
            v18 = v8[31];
          }

          else
          {
            v18 = *(v8 + 2);
          }

          if (v18 >= v15)
          {
            v19 = v15;
          }

          else
          {
            v19 = v18;
          }

          v20 = memcmp(v14, v17, v19);
          if (v20)
          {
            if ((v20 & 0x80000000) == 0)
            {
              goto LABEL_6;
            }
          }

          else if (v15 >= v18)
          {
            goto LABEL_6;
          }
        }

        else if (v11 >= v12)
        {
          goto LABEL_6;
        }

        v38 = v11;
        v39 = *(v8 + 40);
        v40 = *(v8 + 7);
        *(v8 + 5) = 0;
        *(v8 + 6) = 0;
        *(v8 + 7) = 0;
        v21 = v5[31];
        *v5 = *v8;
        if (v21 < 0)
        {
          operator delete(*(v5 + 1));
        }

        v9 = v8 + 8;
        *(v5 + 8) = *(v8 + 8);
        *(v5 + 3) = *(v8 + 3);
        v8[31] = 0;
        v8[8] = 0;
        v22 = *(v8 - 32);
        if (v11 == v22)
        {
          if (v40 >= 0)
          {
            v23 = &v39;
          }

          else
          {
            v23 = v39;
          }

          if (v40 >= 0)
          {
            v24 = HIBYTE(v40);
          }

          else
          {
            v24 = *(&v39 + 1);
          }

          v25 = *(v8 - 1);
          if (v25 >= 0)
          {
            v26 = v8 - 24;
          }

          else
          {
            v26 = *(v8 - 3);
          }

          if (v25 >= 0)
          {
            v27 = *(v8 - 1);
          }

          else
          {
            v27 = *(v8 - 2);
          }

          if (v27 >= v24)
          {
            v28 = v24;
          }

          else
          {
            v28 = v27;
          }

          v29 = memcmp(v23, v26, v28);
          if (v29)
          {
            if (v29 < 0)
            {
              goto LABEL_53;
            }
          }

          else if (v24 < v27)
          {
LABEL_53:
            for (i = v7; ; i -= 32)
            {
              *(i - 8) = v22;
              *i = *(i - 2);
              *(i + 2) = *(i - 2);
              *(i - 9) = 0;
              *(i - 32) = 0;
              LOBYTE(v11) = v38;
              v22 = *(i - 72);
              if (v38 == v22)
              {
                if (v40 >= 0)
                {
                  v31 = &v39;
                }

                else
                {
                  v31 = v39;
                }

                if (v40 >= 0)
                {
                  v32 = HIBYTE(v40);
                }

                else
                {
                  v32 = *(&v39 + 1);
                }

                v33 = *(i - 41);
                if (v33 >= 0)
                {
                  v34 = i - 64;
                }

                else
                {
                  v34 = *(i - 8);
                }

                if (v33 >= 0)
                {
                  v35 = *(i - 41);
                }

                else
                {
                  v35 = *(i - 7);
                }

                if (v35 >= v32)
                {
                  v36 = v32;
                }

                else
                {
                  v36 = v35;
                }

                v37 = memcmp(v31, v34, v36);
                if (v37)
                {
                  if ((v37 & 0x80000000) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                else if (v32 >= v35)
                {
LABEL_4:
                  v8 = i - 40;
                  v9 = i - 32;
                  break;
                }
              }

              else if (v38 >= v22)
              {
                goto LABEL_4;
              }
            }
          }
        }

        else if (v11 < v22)
        {
          goto LABEL_53;
        }

        *v8 = v11;
        v10 = v39;
        *(v9 + 2) = v40;
        *v9 = v10;
LABEL_6:
        v6 = v5 + 32;
        v7 += 32;
      }

      while (v5 + 32 != a2);
    }
  }
}

unsigned __int8 *sub_FEC220(unsigned __int8 *a1, unint64_t a2)
{
  v2 = a2;
  v68 = *a1;
  v4 = *a1;
  v69 = *(a1 + 8);
  v70 = *(a1 + 3);
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  *(a1 + 1) = 0;
  v5 = *(a2 - 32);
  if (v4 != v5)
  {
    if (v4 >= v5)
    {
      goto LABEL_46;
    }

    v6 = HIBYTE(v70);
    v8 = *(&v69 + 1);
    v16 = v69;
    v7 = HIBYTE(v70);
    goto LABEL_23;
  }

  v6 = HIBYTE(v70);
  v7 = HIBYTE(v70);
  v8 = *(&v69 + 1);
  v67 = v69;
  if (v70 >= 0)
  {
    v9 = &v69;
  }

  else
  {
    v9 = v69;
  }

  if (v70 >= 0)
  {
    v10 = HIBYTE(v70);
  }

  else
  {
    v10 = *(&v69 + 1);
  }

  v11 = *(a2 - 1);
  if (v11 >= 0)
  {
    v12 = (a2 - 24);
  }

  else
  {
    v12 = *(a2 - 24);
  }

  if (v11 >= 0)
  {
    v13 = *(v2 - 1);
  }

  else
  {
    v13 = *(v2 - 16);
  }

  if (v13 >= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v9, v12, v14);
  if (!v15)
  {
    v16 = v67;
    if (v10 >= v13)
    {
      goto LABEL_46;
    }

LABEL_23:
    if (v7 >= 0)
    {
      v17 = &v69;
    }

    else
    {
      v17 = v16;
    }

    if (v7 >= 0)
    {
      v8 = v6;
    }

    for (i = a1 + 32; ; i += 32)
    {
      v19 = *i;
      if (v4 == v19)
      {
        v20 = i[31];
        if (v20 >= 0)
        {
          v21 = i + 8;
        }

        else
        {
          v21 = *(i + 1);
        }

        if (v20 >= 0)
        {
          v22 = i[31];
        }

        else
        {
          v22 = *(i + 2);
        }

        if (v22 >= v8)
        {
          v23 = v8;
        }

        else
        {
          v23 = v22;
        }

        v24 = memcmp(v17, v21, v23);
        if (v24)
        {
          if (v24 < 0)
          {
            goto LABEL_69;
          }
        }

        else if (v8 < v22)
        {
          goto LABEL_69;
        }
      }

      else if (v4 < v19)
      {
        goto LABEL_69;
      }
    }
  }

  v16 = v67;
  if (v15 < 0)
  {
    goto LABEL_23;
  }

LABEL_46:
  i = a1 + 32;
  if ((a1 + 32) < v2)
  {
    if (v70 >= 0)
    {
      v25 = &v69;
    }

    else
    {
      v25 = v69;
    }

    if (v70 >= 0)
    {
      v26 = HIBYTE(v70);
    }

    else
    {
      v26 = *(&v69 + 1);
    }

    do
    {
      v27 = *i;
      if (v4 == v27)
      {
        v28 = i[31];
        if (v28 >= 0)
        {
          v29 = i + 8;
        }

        else
        {
          v29 = *(i + 1);
        }

        if (v28 >= 0)
        {
          v30 = i[31];
        }

        else
        {
          v30 = *(i + 2);
        }

        if (v30 >= v26)
        {
          v31 = v26;
        }

        else
        {
          v31 = v30;
        }

        v32 = memcmp(v25, v29, v31);
        if (v32)
        {
          if (v32 < 0)
          {
            break;
          }
        }

        else if (v26 < v30)
        {
          break;
        }
      }

      else if (v4 < v27)
      {
        break;
      }

      i += 32;
    }

    while (i < v2);
  }

LABEL_69:
  if (i < v2)
  {
    if (v70 >= 0)
    {
      v33 = &v69;
    }

    else
    {
      v33 = v69;
    }

    if (v70 >= 0)
    {
      v34 = HIBYTE(v70);
    }

    else
    {
      v34 = *(&v69 + 1);
    }

    for (v2 -= 32; ; v2 -= 32)
    {
      if (v4 == v5)
      {
        v36 = *(v2 + 31);
        if (v36 >= 0)
        {
          v37 = (v2 + 8);
        }

        else
        {
          v37 = *(v2 + 8);
        }

        if (v36 >= 0)
        {
          v38 = *(v2 + 31);
        }

        else
        {
          v38 = *(v2 + 16);
        }

        if (v38 >= v34)
        {
          v39 = v34;
        }

        else
        {
          v39 = v38;
        }

        v40 = memcmp(v33, v37, v39);
        if (v40)
        {
          if ((v40 & 0x80000000) == 0)
          {
            break;
          }
        }

        else if (v34 >= v38)
        {
          break;
        }
      }

      else if (v4 >= v5)
      {
        break;
      }

      v35 = *(v2 - 32);
      v5 = v35;
    }
  }

  if (i < v2)
  {
    v41 = *i;
    do
    {
      v42 = *(i + 1);
      v43 = *(i + 2);
      *&v71[7] = *(i + 23);
      *v71 = v43;
      v44 = i[31];
      *(i + 2) = 0;
      *(i + 3) = 0;
      *(i + 1) = 0;
      *i = *v2;
      v45 = *(v2 + 8);
      *(i + 3) = *(v2 + 24);
      *(i + 8) = v45;
      *v2 = v41;
      *(v2 + 8) = v42;
      *(v2 + 23) = *&v71[7];
      *(v2 + 16) = *v71;
      *(v2 + 31) = v44;
      LOBYTE(v4) = v68;
      if (v70 >= 0)
      {
        v46 = &v69;
      }

      else
      {
        v46 = v69;
      }

      if (v70 >= 0)
      {
        v47 = HIBYTE(v70);
      }

      else
      {
        v47 = *(&v69 + 1);
      }

      do
      {
        while (1)
        {
          while (1)
          {
            v48 = i[32];
            i += 32;
            v41 = v48;
            v49 = v68 >= v48;
            if (v68 == v48)
            {
              break;
            }

            if (!v49)
            {
              goto LABEL_120;
            }
          }

          v50 = i[31];
          v51 = v50 >= 0 ? i + 8 : *(i + 1);
          v52 = v50 >= 0 ? i[31] : *(i + 2);
          v53 = v52 >= v47 ? v47 : v52;
          v54 = memcmp(v46, v51, v53);
          if (!v54)
          {
            break;
          }

          if (v54 < 0)
          {
            goto LABEL_120;
          }
        }
      }

      while (v47 >= v52);
      do
      {
        while (1)
        {
LABEL_120:
          while (1)
          {
            v55 = *(v2 - 32);
            v2 -= 32;
            v56 = v68 >= v55;
            if (v68 == v55)
            {
              break;
            }

            if (v56)
            {
              goto LABEL_95;
            }
          }

          v57 = *(v2 + 31);
          v58 = v57 >= 0 ? (v2 + 8) : *(v2 + 8);
          v59 = v57 >= 0 ? *(v2 + 31) : *(v2 + 16);
          v60 = v59 >= v47 ? v47 : v59;
          v61 = memcmp(v46, v58, v60);
          if (!v61)
          {
            break;
          }

          if ((v61 & 0x80000000) == 0)
          {
            goto LABEL_95;
          }
        }
      }

      while (v47 < v59);
LABEL_95:
      ;
    }

    while (i < v2);
  }

  if (i - 32 == a1)
  {
    v64 = *(i - 1);
    *(i - 32) = v4;
    v62 = i - 24;
    if (v64 < 0)
    {
      operator delete(*v62);
    }
  }

  else
  {
    *a1 = *(i - 32);
    if (a1[31] < 0)
    {
      operator delete(*(a1 + 1));
    }

    v62 = i - 24;
    v63 = *(i - 24);
    *(a1 + 3) = *(i - 1);
    *(a1 + 8) = v63;
    *(i - 1) = 0;
    *(i - 24) = 0;
    *(i - 32) = v68;
  }

  v65 = v69;
  *(v62 + 2) = v70;
  *v62 = v65;
  return i;
}

unint64_t sub_FEC66C(unsigned __int8 *a1, unint64_t a2)
{
  v4 = 0;
  v5 = *a1;
  v63 = *a1;
  v65 = *(a1 + 3);
  v6 = v65;
  v64 = *(a1 + 8);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v7 = HIBYTE(v6);
  if ((v7 & 0x80u) == 0)
  {
    v8 = &v64;
  }

  else
  {
    v8 = v64;
  }

  if ((v7 & 0x80u) == 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *(&v64 + 1);
  }

  while (1)
  {
    v10 = &a1[v4];
    v11 = a1[v4 + 32];
    if (v11 != v5)
    {
      if (v11 >= v5)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    v14 = *(v10 + 5);
    v12 = v10 + 40;
    v13 = v14;
    v15 = v12[23];
    v16 = v15 >= 0 ? v12 : v13;
    v17 = v15 >= 0 ? v12[23] : *(v12 + 1);
    v18 = v9 >= v17 ? v17 : v9;
    v19 = memcmp(v16, v8, v18);
    if (!v19)
    {
      break;
    }

    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_8:
    v4 += 32;
  }

  if (v17 < v9)
  {
    goto LABEL_8;
  }

LABEL_23:
  v20 = &a1[v4 + 32];
  if (!v4)
  {
LABEL_59:
    if (v20 >= a2)
    {
      goto LABEL_60;
    }

    while (1)
    {
      v29 = *(a2 - 32);
      a2 -= 32;
      v30 = v29 >= v5;
      if (v29 == v5)
      {
        v31 = *(a2 + 31);
        if (v31 >= 0)
        {
          v32 = (a2 + 8);
        }

        else
        {
          v32 = *(a2 + 8);
        }

        if (v31 >= 0)
        {
          v33 = *(a2 + 31);
        }

        else
        {
          v33 = *(a2 + 16);
        }

        if (v9 >= v33)
        {
          v34 = v33;
        }

        else
        {
          v34 = v9;
        }

        v35 = memcmp(v32, v8, v34);
        if (v35)
        {
          if ((v35 & 0x80000000) == 0)
          {
            goto LABEL_59;
          }

          goto LABEL_60;
        }

        v30 = v33 >= v9;
      }

      if (!v30 || v20 >= a2)
      {
        goto LABEL_60;
      }
    }
  }

  do
  {
    while (1)
    {
      while (1)
      {
        v21 = *(a2 - 32);
        a2 -= 32;
        v22 = v21 >= v5;
        if (v21 == v5)
        {
          break;
        }

        if (!v22)
        {
          goto LABEL_60;
        }
      }

      v23 = *(a2 + 31);
      v24 = v23 >= 0 ? (a2 + 8) : *(a2 + 8);
      v25 = v23 >= 0 ? *(a2 + 31) : *(a2 + 16);
      v26 = v9 >= v25 ? v25 : v9;
      v27 = memcmp(v24, v8, v26);
      if (!v27)
      {
        break;
      }

      if (v27 < 0)
      {
        goto LABEL_60;
      }
    }
  }

  while (v25 >= v9);
LABEL_60:
  v36 = v20;
  if (v20 < a2)
  {
    v37 = a2;
    do
    {
      v38 = *(v36 + 8);
      v39 = *(v36 + 16);
      *&v66[7] = *(v36 + 23);
      *v66 = v39;
      v40 = *(v36 + 31);
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 8) = 0;
      *v36 = *v37;
      v41 = *(v37 + 8);
      *(v36 + 24) = *(v37 + 24);
      *(v36 + 8) = v41;
      *v37 = v11;
      *(v37 + 8) = v38;
      *(v37 + 23) = *&v66[7];
      *(v37 + 16) = *v66;
      *(v37 + 31) = v40;
      LOBYTE(v5) = v63;
      if (v65 >= 0)
      {
        v42 = &v64;
      }

      else
      {
        v42 = v64;
      }

      if (v65 >= 0)
      {
        v43 = HIBYTE(v65);
      }

      else
      {
        v43 = *(&v64 + 1);
      }

      do
      {
        while (1)
        {
          while (1)
          {
            v44 = *(v36 + 32);
            v36 += 32;
            LOBYTE(v11) = v44;
            v45 = v44 >= v63;
            if (v44 == v63)
            {
              break;
            }

            if (v45)
            {
              goto LABEL_87;
            }
          }

          v46 = *(v36 + 31);
          v47 = v46 >= 0 ? (v36 + 8) : *(v36 + 8);
          v48 = v46 >= 0 ? *(v36 + 31) : *(v36 + 16);
          v49 = v43 >= v48 ? v48 : v43;
          v50 = memcmp(v47, v42, v49);
          if (!v50)
          {
            break;
          }

          if ((v50 & 0x80000000) == 0)
          {
            goto LABEL_87;
          }
        }
      }

      while (v48 < v43);
      do
      {
        while (1)
        {
LABEL_87:
          while (1)
          {
            v51 = *(v37 - 32);
            v37 -= 32;
            v52 = v51 >= v63;
            if (v51 == v63)
            {
              break;
            }

            if (!v52)
            {
              goto LABEL_62;
            }
          }

          v53 = *(v37 + 31);
          v54 = v53 >= 0 ? (v37 + 8) : *(v37 + 8);
          v55 = v53 >= 0 ? *(v37 + 31) : *(v37 + 16);
          v56 = v43 >= v55 ? v55 : v43;
          v57 = memcmp(v54, v42, v56);
          if (!v57)
          {
            break;
          }

          if (v57 < 0)
          {
            goto LABEL_62;
          }
        }
      }

      while (v55 >= v43);
LABEL_62:
      ;
    }

    while (v36 < v37);
  }

  if ((v36 - 32) == a1)
  {
    v60 = *(v36 - 1);
    *(v36 - 32) = v5;
    v58 = v36 - 24;
    if (v60 < 0)
    {
      operator delete(*v58);
    }
  }

  else
  {
    *a1 = *(v36 - 32);
    if (a1[31] < 0)
    {
      operator delete(*(a1 + 1));
    }

    v58 = v36 - 24;
    v59 = *(v36 - 24);
    *(a1 + 3) = *(v36 - 8);
    *(a1 + 8) = v59;
    *(v36 - 1) = 0;
    *(v36 - 24) = 0;
    *(v36 - 32) = v63;
  }

  v61 = v64;
  *(v58 + 16) = v65;
  *v58 = v61;
  return v36 - 32;
}

BOOL sub_FECA10(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2;
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_FEB1FC(a1, a1 + 32, a2 - 32);
        return 1;
      case 4:
        sub_FEB648(a1, a1 + 32, a1 + 64, a2 - 32);
        return 1;
      case 5:
        sub_FEB938(a1, a1 + 32, a1 + 64, a1 + 96, a2 - 32);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 32);
      v6 = *a1;
      if (v5 == v6)
      {
        v7 = *(a2 - 1);
        if (v7 >= 0)
        {
          v8 = a2 - 24;
        }

        else
        {
          v8 = *(a2 - 3);
        }

        if (v7 >= 0)
        {
          v9 = *(a2 - 1);
        }

        else
        {
          v9 = *(a2 - 2);
        }

        v10 = *(a1 + 1);
        v11 = a1[31];
        if (v11 >= 0)
        {
          v12 = a1 + 8;
        }

        else
        {
          v12 = *(a1 + 1);
        }

        if (v11 >= 0)
        {
          v13 = a1[31];
        }

        else
        {
          v13 = *(a1 + 2);
        }

        if (v13 >= v9)
        {
          v14 = v9;
        }

        else
        {
          v14 = v13;
        }

        v15 = memcmp(v8, v12, v14);
        if (v15)
        {
          if (v15 < 0)
          {
            goto LABEL_84;
          }

          return 1;
        }

        if (v9 >= v13)
        {
          return 1;
        }
      }

      else
      {
        if (v5 >= v6)
        {
          return 1;
        }

        v10 = *(a1 + 1);
        LOBYTE(v11) = a1[31];
      }

LABEL_84:
      *v48 = *(a1 + 2);
      *&v48[7] = *(a1 + 23);
      *(a1 + 1) = 0;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *a1 = *(v2 - 32);
      v45 = *(v2 - 24);
      *(a1 + 3) = *(v2 - 1);
      *(a1 + 8) = v45;
      *(v2 - 32) = v6;
      *(v2 - 9) = *&v48[7];
      *(v2 - 3) = v10;
      *(v2 - 2) = *v48;
      *(v2 - 1) = v11;
      return 1;
    }
  }

  v16 = a1 + 64;
  sub_FEB1FC(a1, a1 + 32, a1 + 64);
  v17 = a1 + 96;
  if (a1 + 96 == v2)
  {
    return 1;
  }

  v18 = 0;
  v47 = 0;
  v46 = v2;
  while (2)
  {
    v19 = *v17;
    v20 = *v16;
    if (v19 == v20)
    {
      v21 = v17[31];
      if (v21 >= 0)
      {
        v22 = v17 + 8;
      }

      else
      {
        v22 = *(v17 + 1);
      }

      if (v21 >= 0)
      {
        v23 = v17[31];
      }

      else
      {
        v23 = *(v17 + 2);
      }

      v24 = v16[31];
      if (v24 >= 0)
      {
        v25 = v16 + 8;
      }

      else
      {
        v25 = *(v16 + 1);
      }

      if (v24 >= 0)
      {
        v26 = v16[31];
      }

      else
      {
        v26 = *(v16 + 2);
      }

      if (v26 >= v23)
      {
        v27 = v23;
      }

      else
      {
        v27 = v26;
      }

      v28 = memcmp(v22, v25, v27);
      if (v28)
      {
        if ((v28 & 0x80000000) == 0)
        {
          goto LABEL_30;
        }
      }

      else if (v23 >= v26)
      {
        goto LABEL_30;
      }
    }

    else if (v19 >= v20)
    {
      goto LABEL_30;
    }

    v48[0] = v19;
    *&v48[8] = *(v17 + 8);
    v49 = *(v17 + 3);
    *(v17 + 1) = 0;
    *(v17 + 2) = 0;
    *(v17 + 3) = 0;
    *v17 = *v16;
    *(v17 + 8) = *(v16 + 8);
    *(v17 + 3) = *(v16 + 3);
    v16[31] = 0;
    v16[8] = 0;
    v29 = v18;
    do
    {
      v32 = &a1[v29];
      v33 = v48[0];
      v34 = a1[v29 + 32];
      v30 = v48[0] >= v34;
      if (v48[0] != v34)
      {
        goto LABEL_55;
      }

      if (v49 >= 0)
      {
        v35 = &v48[8];
      }

      else
      {
        v35 = *&v48[8];
      }

      if (v49 >= 0)
      {
        v36 = HIBYTE(v49);
      }

      else
      {
        v36 = *&v48[16];
      }

      v37 = v32[63];
      if (v37 >= 0)
      {
        v38 = v32 + 40;
      }

      else
      {
        v38 = *(v32 + 5);
      }

      if (v37 >= 0)
      {
        v39 = v32[63];
      }

      else
      {
        v39 = *(v32 + 6);
      }

      if (v39 >= v36)
      {
        v40 = v36;
      }

      else
      {
        v40 = v39;
      }

      v41 = memcmp(v35, v38, v40);
      if (!v41)
      {
        v30 = v36 >= v39;
LABEL_55:
        if (v30)
        {
          goto LABEL_75;
        }

        goto LABEL_56;
      }

      if ((v41 & 0x80000000) == 0)
      {
LABEL_75:
        v42 = &a1[v29 + 72];
        v43 = &a1[v29 + 64];
        goto LABEL_77;
      }

LABEL_56:
      v32[64] = v34;
      v31 = &a1[v29];
      *(v31 + 72) = *&a1[v29 + 40];
      *(v31 + 11) = *&a1[v29 + 56];
      v31[63] = 0;
      v31[40] = 0;
      v29 -= 32;
    }

    while (v29 != -64);
    v33 = v48[0];
    v42 = (a1 + 8);
    v43 = a1;
LABEL_77:
    *v43 = v33;
    *v42 = *&v48[8];
    *(v42 + 16) = v49;
    v2 = v46;
    if (v47 != 7)
    {
      ++v47;
LABEL_30:
      v16 = v17;
      v18 += 32;
      v17 += 32;
      if (v17 == v2)
      {
        return 1;
      }

      continue;
    }

    return v17 + 32 == v46;
  }
}

__n128 sub_FECDE0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v67 = v4;
  v68 = v5;
  v8 = v6 >> 1;
  if ((v6 >> 1) < &a4[-a1] >> 5)
  {
    return result;
  }

  v10 = &a4[-a1] >> 4;
  v11 = v10 + 1;
  v12 = (a1 + 32 * (v10 + 1));
  v13 = v10 + 2;
  if (v10 + 2 < a3)
  {
    v14 = v12[32];
    v15 = *v12;
    if (v15 != v14)
    {
      if (v15 >= v14)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    v16 = a4;
    v17 = v12[31];
    if (v17 >= 0)
    {
      v18 = v12 + 8;
    }

    else
    {
      v18 = *(v12 + 1);
    }

    if (v17 >= 0)
    {
      v19 = v12[31];
    }

    else
    {
      v19 = *(v12 + 2);
    }

    v20 = v12[63];
    if (v20 >= 0)
    {
      v21 = v12 + 40;
    }

    else
    {
      v21 = *(v12 + 5);
    }

    if (v20 >= 0)
    {
      v22 = v12[63];
    }

    else
    {
      v22 = *(v12 + 6);
    }

    if (v22 >= v19)
    {
      v23 = v19;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v18, v21, v23);
    if (v24)
    {
      a4 = v16;
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

    a4 = v16;
    if (v19 < v22)
    {
LABEL_24:
      v12 += 32;
      v11 = v13;
    }
  }

LABEL_25:
  v26 = *v12;
  v27 = *a4;
  v28 = v26 >= v27;
  if (v26 == v27)
  {
    v29 = v12[31];
    if (v29 >= 0)
    {
      v30 = v12 + 8;
    }

    else
    {
      v30 = *(v12 + 1);
    }

    if (v29 >= 0)
    {
      v31 = v12[31];
    }

    else
    {
      v31 = *(v12 + 2);
    }

    v32 = a4;
    v33 = a4[31];
    if (v33 >= 0)
    {
      v34 = a4 + 8;
    }

    else
    {
      v34 = *(a4 + 1);
    }

    if (v33 >= 0)
    {
      v35 = a4[31];
    }

    else
    {
      v35 = *(a4 + 2);
    }

    if (v35 >= v31)
    {
      v36 = v31;
    }

    else
    {
      v36 = v35;
    }

    v37 = memcmp(v30, v34, v36);
    if (v37)
    {
      a4 = v32;
      if (v37 < 0)
      {
        return result;
      }

      goto LABEL_47;
    }

    v28 = v31 >= v35;
    a4 = v32;
  }

  if (!v28)
  {
    return result;
  }

LABEL_47:
  v64 = v27;
  v65 = *(a4 + 8);
  v66 = *(a4 + 3);
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  *a4 = *v12;
  v38 = (v12 + 8);
  v39 = *(v12 + 8);
  *(a4 + 3) = *(v12 + 3);
  *(a4 + 8) = v39;
  v12[31] = 0;
  v12[8] = 0;
  if (v8 >= v11)
  {
    v63 = v8;
    while (1)
    {
      v41 = v12;
      v43 = 2 * v11;
      v11 = (2 * v11) | 1;
      v12 = (a1 + 32 * v11);
      v44 = v43 + 2;
      if (v43 + 2 >= a3)
      {
        goto LABEL_76;
      }

      v45 = v12[32];
      v46 = *v12;
      if (v46 != v45)
      {
        break;
      }

      v47 = v12[31];
      if (v47 >= 0)
      {
        v48 = v12 + 8;
      }

      else
      {
        v48 = *(v12 + 1);
      }

      if (v47 >= 0)
      {
        v49 = v12[31];
      }

      else
      {
        v49 = *(v12 + 2);
      }

      v50 = v12[63];
      if (v50 >= 0)
      {
        v51 = v12 + 40;
      }

      else
      {
        v51 = *(v12 + 5);
      }

      if (v50 >= 0)
      {
        v52 = v12[63];
      }

      else
      {
        v52 = *(v12 + 6);
      }

      if (v52 >= v49)
      {
        v53 = v49;
      }

      else
      {
        v53 = v52;
      }

      v54 = memcmp(v48, v51, v53);
      if (v54)
      {
        v8 = v63;
        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_76;
        }

LABEL_75:
        v12 += 32;
        v11 = v44;
        goto LABEL_76;
      }

      v28 = v49 >= v52;
      v8 = v63;
      if (!v28)
      {
        goto LABEL_75;
      }

LABEL_76:
      v55 = *v12;
      v40 = v64;
      if (v55 == v64)
      {
        v56 = v12[31];
        if (v56 >= 0)
        {
          v57 = v12 + 8;
        }

        else
        {
          v57 = *(v12 + 1);
        }

        if (v56 >= 0)
        {
          v58 = v12[31];
        }

        else
        {
          v58 = *(v12 + 2);
        }

        if (v66 >= 0)
        {
          v59 = &v65;
        }

        else
        {
          v59 = v65.n128_u64[0];
        }

        if (v66 >= 0)
        {
          v60 = HIBYTE(v66);
        }

        else
        {
          v60 = v65.n128_u64[1];
        }

        if (v60 >= v58)
        {
          v61 = v58;
        }

        else
        {
          v61 = v60;
        }

        v62 = memcmp(v57, v59, v61);
        if (v62)
        {
          v8 = v63;
          if (v62 < 0)
          {
            goto LABEL_49;
          }
        }

        else
        {
          v28 = v58 >= v60;
          v8 = v63;
          if (!v28)
          {
            goto LABEL_49;
          }
        }
      }

      else if (v55 < v64)
      {
        goto LABEL_49;
      }

      *v41 = v55;
      v38 = (v12 + 8);
      v42 = *(v12 + 8);
      *(v41 + 3) = *(v12 + 3);
      *(v41 + 8) = v42;
      v12[31] = 0;
      v12[8] = 0;
      if (v8 < v11)
      {
        goto LABEL_48;
      }
    }

    if (v46 >= v45)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

LABEL_48:
  v40 = v64;
  v41 = v12;
LABEL_49:
  *v41 = v40;
  result = v65;
  v38[1].n128_u64[0] = v66;
  *v38 = result;
  return result;
}

void sub_FED13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *a1;
    v6 = *(a1 + 8);
    *v14 = *(a1 + 16);
    *&v14[7] = *(a1 + 23);
    v7 = *(a1 + 31);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    v10 = sub_FED2B8(a1, a3, a4);
    if (v10 == a2 - 32)
    {
      *v10 = v5;
      if (*(v10 + 31) < 0)
      {
        v13 = v10;
        operator delete(*(v10 + 8));
        v10 = v13;
      }

      *(v10 + 8) = v6;
      *(v10 + 16) = *v14;
      *(v10 + 23) = *&v14[7];
      *(v10 + 31) = v7;
    }

    else
    {
      *v10 = *(a2 - 32);
      if (*(v10 + 31) < 0)
      {
        v11 = v10;
        operator delete(*(v10 + 8));
        v10 = v11;
      }

      v12 = *(a2 - 24);
      *(v10 + 24) = *(a2 - 8);
      *(v10 + 8) = v12;
      *(a2 - 32) = v5;
      *(a2 - 24) = v6;
      *(a2 - 16) = *v14;
      *(a2 - 9) = *&v14[7];
      *(a2 - 1) = v7;
      sub_FED3FC(a1, v10 + 32, a3, (v10 + 32 - a1) >> 5);
    }
  }
}

void sub_FED2A0(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FED2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = a1 + 32 * v5;
    v7 = v9 + 32;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v13 = v9 + 64;
      v12 = *(v9 + 64);
      v14 = *(v9 + 32);
      if (v14 == v12)
      {
        v17 = *(v9 + 72);
        v15 = v9 + 72;
        v16 = v17;
        v18 = *(v15 - 9);
        if (v18 >= 0)
        {
          v19 = (v15 - 32);
        }

        else
        {
          v19 = *(v15 - 32);
        }

        if (v18 >= 0)
        {
          v20 = *(v15 - 9);
        }

        else
        {
          v20 = *(v15 - 24);
        }

        v21 = *(v15 + 23);
        if (v21 >= 0)
        {
          v22 = v15;
        }

        else
        {
          v22 = v16;
        }

        if (v21 >= 0)
        {
          v23 = *(v15 + 23);
        }

        else
        {
          v23 = *(v15 + 8);
        }

        if (v23 >= v20)
        {
          v24 = v20;
        }

        else
        {
          v24 = v23;
        }

        v25 = memcmp(v19, v22, v24);
        if (v25)
        {
          if (v25 < 0)
          {
            goto LABEL_2;
          }
        }

        else if (v20 < v23)
        {
LABEL_2:
          v7 = v13;
          v5 = v11;
        }
      }

      else if (v14 < v12)
      {
        goto LABEL_2;
      }
    }

    *a1 = *v7;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    v8 = *(v7 + 8);
    *(a1 + 24) = *(v7 + 24);
    *(a1 + 8) = v8;
    *(v7 + 31) = 0;
    *(v7 + 8) = 0;
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

__n128 sub_FED3FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 32 * (v4 >> 1));
    v8 = *v7;
    v9 = *(a2 - 32);
    if (v8 == v9)
    {
      v10 = v7[31];
      if (v10 >= 0)
      {
        v11 = v7 + 8;
      }

      else
      {
        v11 = *(v7 + 1);
      }

      if (v10 >= 0)
      {
        v12 = v7[31];
      }

      else
      {
        v12 = *(v7 + 2);
      }

      v13 = a2;
      v14 = *(a2 - 1);
      v15 = *(a2 - 16);
      if ((v14 & 0x80u) == 0)
      {
        v16 = (a2 - 24);
      }

      else
      {
        v16 = *(a2 - 24);
      }

      if ((v14 & 0x80u) == 0)
      {
        v17 = v14;
      }

      else
      {
        v17 = v15;
      }

      if (v17 >= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v11, v16, v18);
      if (v19)
      {
        a2 = v13;
        if ((v19 & 0x80000000) == 0)
        {
          return result;
        }
      }

      else
      {
        a2 = v13;
        if (v12 >= v17)
        {
          return result;
        }
      }
    }

    else if (v8 >= v9)
    {
      return result;
    }

    v36 = v9;
    v37 = *(a2 - 24);
    v38 = *(a2 - 8);
    *(a2 - 24) = 0;
    *(a2 - 16) = 0;
    *(a2 - 8) = 0;
    *(a2 - 32) = *v7;
    v21 = (v7 + 8);
    v22 = *(v7 + 8);
    *(a2 - 8) = *(v7 + 3);
    *(a2 - 24) = v22;
    v7[31] = 0;
    v7[8] = 0;
    if (v4 >= 2)
    {
      v23 = v9;
      if (v38 >= 0)
      {
        v25 = &v37;
      }

      else
      {
        v25 = v37.n128_u64[0];
      }

      __s2 = v25;
      if (v38 >= 0)
      {
        v26 = HIBYTE(v38);
      }

      else
      {
        v26 = v37.n128_u64[1];
      }

      do
      {
        v24 = v7;
        v28 = v6 - 1;
        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 32 * v6);
        v29 = *v7;
        if (v29 == v36)
        {
          v30 = v7[31];
          if (v30 >= 0)
          {
            v31 = v7 + 8;
          }

          else
          {
            v31 = *(v7 + 1);
          }

          if (v30 >= 0)
          {
            v32 = v7[31];
          }

          else
          {
            v32 = *(v7 + 2);
          }

          if (v26 >= v32)
          {
            v33 = v32;
          }

          else
          {
            v33 = v26;
          }

          v34 = memcmp(v31, __s2, v33);
          if (v34)
          {
            if ((v34 & 0x80000000) == 0)
            {
              goto LABEL_26;
            }
          }

          else if (v32 >= v26)
          {
            goto LABEL_26;
          }
        }

        else if (v29 >= v36)
        {
          goto LABEL_26;
        }

        *v24 = v29;
        v21 = (v7 + 8);
        v27 = *(v7 + 3);
        *(v24 + 8) = *(v7 + 8);
        *(v24 + 3) = v27;
        v7[31] = 0;
        v7[8] = 0;
      }

      while (v28 >= 2);
    }

    v23 = v36;
    v24 = v7;
LABEL_26:
    *v24 = v23;
    result = v37;
    v21[1].n128_u64[0] = v38;
    *v21 = result;
  }

  return result;
}

unsigned __int8 *sub_FED600(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a2;
    if (a1 + 32 != a2)
    {
      v5 = *a1;
      while (1)
      {
        v7 = v5;
        v5 = a1[32];
        if (v7 == v5)
        {
          v8 = a1[31];
          if (v8 >= 0)
          {
            v9 = a1[31];
          }

          else
          {
            v9 = *(a1 + 2);
          }

          v10 = a1[63];
          v11 = v10;
          if ((v10 & 0x80u) != 0)
          {
            v10 = *(a1 + 6);
          }

          if (v9 == v10)
          {
            v12 = v8 >= 0 ? a1 + 8 : *(a1 + 1);
            v13 = v11 >= 0 ? a1 + 40 : *(a1 + 5);
            if (!memcmp(v12, v13, v9))
            {
              break;
            }
          }
        }

        v6 = a1 + 64;
        a1 += 32;
        if (v6 == a2)
        {
          return a2;
        }
      }

      result = a2;
      if (a1 != a2)
      {
        for (i = a1 + 64; i != a2; i += 32)
        {
          v16 = *i;
          if (*a1 != v16)
          {
            goto LABEL_23;
          }

          v17 = a1[31];
          if (v17 >= 0)
          {
            v18 = a1[31];
          }

          else
          {
            v18 = *(a1 + 2);
          }

          v19 = i[31];
          v20 = v19;
          if ((v19 & 0x80u) != 0)
          {
            v19 = *(i + 2);
          }

          if (v18 == v19)
          {
            v21 = v17 >= 0 ? a1 + 8 : *(a1 + 1);
            v22 = v20 >= 0 ? i + 8 : *(i + 1);
            if (!memcmp(v21, v22, v18))
            {
              continue;
            }
          }

LABEL_23:
          a1[32] = v16;
          a1 += 32;
          if (a1[31] < 0)
          {
            operator delete(*(a1 + 1));
          }

          v15 = *(i + 8);
          *(a1 + 3) = *(i + 3);
          *(a1 + 8) = v15;
          i[31] = 0;
          i[8] = 0;
        }

        return a1 + 32;
      }
    }
  }

  return result;
}

void *sub_FED7B0(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_FED8E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_FED8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    sub_F63718(&v4, a1);
  }

  return a3;
}

uint64_t sub_FEDA38(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v5 = 0x555555555555555;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 48 * v2;
  __p = 0;
  v17 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v18 = 48 * v2 + 48;
  v19 = 0;
  sub_CDD674(a1, &__p);
  v8 = a1[1];
  v9 = v17;
  while (1)
  {
    v10 = v18;
    if (v18 == v9)
    {
      break;
    }

    v11 = (v18 - 48);
    v18 -= 48;
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 24));
      v12 = *v11;
      if (*v11)
      {
LABEL_17:
        v13 = *(v10 - 40);
        v14 = v12;
        if (v13 != v12)
        {
          do
          {
            v13 = sub_4547F0(v13 - 552);
          }

          while (v13 != v12);
          v14 = *v11;
        }

        *(v10 - 40) = v12;
        operator delete(v14);
      }
    }

    else
    {
      v12 = *v11;
      if (*v11)
      {
        goto LABEL_17;
      }
    }
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v8;
}

void sub_FEDBE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_CDD7B0(va);
  _Unwind_Resume(a1);
}

void *sub_FEDBF4(void *result, unint64_t a2)
{
  if (0xAF8AF8AF8AF8AF8BLL * ((result[2] - *result) >> 4) < a2)
  {
    if (a2 < 0x75075075075076)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_FEDCE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FEDF2C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_FEDCF8(uint64_t *a1, void *a2)
{
  result = *a1;
  v5 = a1[1];
  v7 = a2[1] + result - v5;
  if (v5 != result)
  {
    v8 = result;
    v9 = a2[1] + result - v5;
    do
    {
      v10 = *v8;
      *(v9 + 16) = *(v8 + 16);
      *v9 = v10;
      *(v8 + 8) = 0uLL;
      *v8 = 0;
      *(v9 + 40) = 0;
      *(v9 + 24) = 0uLL;
      *(v9 + 24) = *(v8 + 24);
      *(v9 + 40) = *(v8 + 40);
      *(v8 + 40) = 0;
      *(v8 + 24) = 0uLL;
      v11 = *(v8 + 48);
      v12 = *(v8 + 80);
      v13 = *(v8 + 96);
      *(v9 + 64) = *(v8 + 64);
      *(v9 + 80) = v12;
      *(v9 + 48) = v11;
      *(v9 + 96) = v13;
      *(v9 + 104) = 0;
      *(v9 + 112) = 0uLL;
      *(v9 + 104) = *(v8 + 104);
      *(v9 + 120) = *(v8 + 120);
      *(v8 + 120) = 0;
      *(v8 + 104) = 0uLL;
      *(v9 + 144) = 0;
      *(v9 + 128) = 0uLL;
      *(v9 + 128) = *(v8 + 128);
      *(v9 + 144) = *(v8 + 144);
      *(v8 + 144) = 0;
      *(v8 + 128) = 0uLL;
      *(v9 + 168) = 0;
      *(v9 + 152) = 0uLL;
      *(v9 + 152) = *(v8 + 152);
      *(v9 + 168) = *(v8 + 168);
      *(v8 + 168) = 0;
      *(v8 + 152) = 0uLL;
      v14 = *(v8 + 192);
      v15 = *(v8 + 208);
      *(v9 + 176) = *(v8 + 176);
      *(v9 + 192) = v14;
      *(v9 + 208) = v15;
      *(v9 + 216) = 0;
      *(v9 + 224) = 0uLL;
      *(v9 + 216) = *(v8 + 216);
      *(v9 + 232) = *(v8 + 232);
      *(v8 + 232) = 0;
      *(v8 + 216) = 0uLL;
      *(v9 + 256) = 0;
      *(v9 + 240) = 0uLL;
      *(v9 + 240) = *(v8 + 240);
      *(v9 + 256) = *(v8 + 256);
      *(v8 + 256) = 0;
      *(v8 + 240) = 0uLL;
      v16 = *(v8 + 264);
      v17 = *(v8 + 296);
      *(v9 + 280) = *(v8 + 280);
      *(v9 + 296) = v17;
      *(v9 + 264) = v16;
      v18 = *(v8 + 424);
      v20 = *(v8 + 376);
      v19 = *(v8 + 392);
      *(v9 + 408) = *(v8 + 408);
      *(v9 + 424) = v18;
      *(v9 + 376) = v20;
      *(v9 + 392) = v19;
      v21 = *(v8 + 488);
      v23 = *(v8 + 440);
      v22 = *(v8 + 456);
      *(v9 + 472) = *(v8 + 472);
      *(v9 + 488) = v21;
      *(v9 + 440) = v23;
      *(v9 + 456) = v22;
      v24 = *(v8 + 312);
      v25 = *(v8 + 328);
      v26 = *(v8 + 360);
      *(v9 + 344) = *(v8 + 344);
      *(v9 + 360) = v26;
      *(v9 + 312) = v24;
      *(v9 + 328) = v25;
      *(v9 + 504) = *(v8 + 504);
      *(v9 + 512) = *(v8 + 512);
      *(v8 + 520) = 0;
      *(v8 + 504) = 0uLL;
      *(v9 + 544) = 0;
      *(v9 + 528) = 0uLL;
      *(v9 + 528) = *(v8 + 528);
      *(v9 + 544) = *(v8 + 544);
      *(v8 + 544) = 0;
      *(v8 + 528) = 0uLL;
      *(v9 + 552) = *(v8 + 552);
      v8 += 560;
      v9 += 560;
    }

    while (v8 != v5);
    do
    {
      result = sub_4547F0(result) + 560;
    }

    while (result != v5);
  }

  a2[1] = v7;
  v27 = *a1;
  *a1 = v7;
  a1[1] = v27;
  a2[1] = v27;
  v28 = a1[1];
  a1[1] = a2[2];
  a2[2] = v28;
  v29 = a1[2];
  a1[2] = a2[3];
  a2[3] = v29;
  *a2 = a2[1];
  return result;
}

uint64_t sub_FEDF2C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 560;
    sub_4547F0(i - 560);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_FEDF80(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAF8AF8AF8AF8AF8BLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x75075075075075)
  {
    sub_1794();
  }

  if (0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5F15F15F15F15F16 * ((a1[2] - *a1) >> 4);
  }

  if (0xAF8AF8AF8AF8AF8BLL * ((a1[2] - *a1) >> 4) >= 0x3A83A83A83A83ALL)
  {
    v5 = 0x75075075075075;
  }

  else
  {
    v5 = v3;
  }

  v32 = a1;
  if (v5)
  {
    if (v5 <= 0x75075075075075)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 560 * v2;
  __p = 0;
  v29 = v6;
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  *(a2 + 8) = 0u;
  *a2 = 0;
  *(v6 + 24) = *(a2 + 24);
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0;
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  *(v6 + 96) = *(a2 + 96);
  *(v6 + 64) = v8;
  *(v6 + 80) = v9;
  *(v6 + 48) = v7;
  *(v6 + 104) = *(a2 + 104);
  *(v6 + 120) = *(a2 + 120);
  *(a2 + 104) = 0u;
  *(a2 + 120) = 0;
  *(v6 + 128) = *(a2 + 128);
  *(v6 + 144) = *(a2 + 144);
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0;
  *(v6 + 152) = *(a2 + 152);
  *(v6 + 168) = *(a2 + 168);
  *(a2 + 152) = 0u;
  *(a2 + 168) = 0;
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(v6 + 208) = *(a2 + 208);
  *(v6 + 176) = v10;
  *(v6 + 192) = v11;
  *(v6 + 216) = *(a2 + 216);
  *(v6 + 232) = *(a2 + 232);
  *(a2 + 216) = 0u;
  *(a2 + 232) = 0;
  *(v6 + 240) = *(a2 + 240);
  *(v6 + 256) = *(a2 + 256);
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0;
  v12 = *(a2 + 264);
  v13 = *(a2 + 296);
  *(v6 + 280) = *(a2 + 280);
  *(v6 + 296) = v13;
  *(v6 + 264) = v12;
  v14 = *(a2 + 312);
  v15 = *(a2 + 328);
  v16 = *(a2 + 360);
  *(v6 + 344) = *(a2 + 344);
  *(v6 + 360) = v16;
  *(v6 + 312) = v14;
  *(v6 + 328) = v15;
  v17 = *(a2 + 376);
  v18 = *(a2 + 392);
  v19 = *(a2 + 424);
  *(v6 + 408) = *(a2 + 408);
  *(v6 + 424) = v19;
  *(v6 + 376) = v17;
  *(v6 + 392) = v18;
  v20 = *(a2 + 440);
  v21 = *(a2 + 456);
  v22 = *(a2 + 488);
  *(v6 + 472) = *(a2 + 472);
  *(v6 + 488) = v22;
  *(v6 + 440) = v20;
  *(v6 + 456) = v21;
  *(v6 + 504) = *(a2 + 504);
  *(a2 + 504) = 0;
  v23 = *(a2 + 528);
  *(v6 + 512) = *(a2 + 512);
  *(v6 + 528) = v23;
  *(v6 + 544) = *(a2 + 544);
  *(a2 + 512) = 0u;
  *(a2 + 528) = 0u;
  *(a2 + 544) = 0;
  *(v6 + 552) = *(a2 + 552);
  v30 = 560 * v2 + 560;
  v31 = 0;
  sub_FEDCF8(a1, &__p);
  v24 = a1[1];
  v26 = v29;
  for (i = v30; v30 != v26; i = v30)
  {
    v30 = i - 560;
    sub_4547F0(i - 560);
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v24;
}

void sub_FEE20C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FEDF2C(va);
  _Unwind_Resume(a1);
}

std::string *sub_FEE220(std::string *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v6 = result;
  v7 = result->__r_.__value_.__r.__words[2];
  v8 = result->__r_.__value_.__r.__words[0];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - result->__r_.__value_.__r.__words[0]) >> 4) < a4)
  {
    if (v8)
    {
      v9 = a4;
      size = result->__r_.__value_.__l.__size_;
      v11 = v8;
      if (size != v8)
      {
        do
        {
          size = sub_1324260(size - 48);
        }

        while (size != v8);
        v11 = v6->__r_.__value_.__r.__words[0];
      }

      v6->__r_.__value_.__l.__size_ = v8;
      operator delete(v11);
      v7 = 0;
      v6->__r_.__value_.__r.__words[0] = 0;
      v6->__r_.__value_.__l.__size_ = 0;
      v6->__r_.__value_.__r.__words[2] = 0;
      a4 = v9;
    }

    if (a4 <= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 4);
      v13 = 2 * v12;
      if (2 * v12 <= a4)
      {
        v13 = a4;
      }

      if (v12 >= 0x2AAAAAAAAAAAAAALL)
      {
        v14 = 0x555555555555555;
      }

      else
      {
        v14 = v13;
      }

      if (v14 <= 0x555555555555555)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v15 = result->__r_.__value_.__l.__size_;
  v16 = v15 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v15 - v8) >> 4) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        result = sub_132492C(v8, v5);
        v5 += 48;
        v8 += 2;
      }

      while (v5 != a3);
      v15 = v6->__r_.__value_.__l.__size_;
    }

    while (v15 != v8)
    {
      v15 -= 2;
      result = sub_1324260(v15);
    }

    v6->__r_.__value_.__l.__size_ = v8;
  }

  else
  {
    v17 = a2 + v16;
    if (v15 != v8)
    {
      do
      {
        result = sub_132492C(v8, v5);
        v5 += 48;
        v8 += 2;
        v16 -= 48;
      }

      while (v16);
      v15 = v6->__r_.__value_.__l.__size_;
    }

    v18 = v15;
    if (v17 != a3)
    {
      v19 = 0;
      do
      {
        result = sub_1324194(&v15[v19], v17 + v19 * 24);
        v19 += 2;
      }

      while (v17 + v19 * 24 != a3);
      v18 = &v15[v19];
    }

    v6->__r_.__value_.__l.__size_ = v18;
  }

  return result;
}

void sub_FEE484(_Unwind_Exception *exception_object)
{
  if (v4)
  {
    v6 = v3 - 48;
    v7 = -v4;
    do
    {
      v6 = sub_1324260(v6) - 48;
      v7 += 48;
    }

    while (v7);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

void *sub_FEE4B0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v6 - *v5) >> 5) < 0x2AAAAAAAAAAAAABLL)
        {
          operator new();
        }

        sub_1794();
      }

      a4[3] = v5[3];
      v5 += 4;
      a4 += 4;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_FEE5E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  sub_93BDE0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_FEE610(void *a1, void *a2)
{
  v2 = *a2;
  v3 = __ROR8__(*a2, 32);
  v4 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v3 ^ (v3 >> 33))) >> 33));
  v5 = v4 ^ (v4 >> 33);
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_31;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v4 ^ (v4 >> 33);
    if (v5 >= *&v6)
    {
      v8 = v5 % *&v6;
    }
  }

  else
  {
    v8 = v5 & (*&v6 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    operator new();
  }

  if (v7.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v10[1];
      if (v13 == v5)
      {
        if (*(v10 + 4) == v2 && *(v10 + 5) == HIDWORD(v2))
        {
          return v10;
        }
      }

      else if ((v13 & (*&v6 - 1)) != v8)
      {
        goto LABEL_31;
      }

      v10 = *v10;
      if (!v10)
      {
        goto LABEL_31;
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
      goto LABEL_31;
    }

LABEL_12:
    v10 = *v10;
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  if (*(v10 + 4) != v2 || *(v10 + 5) != HIDWORD(v2))
  {
    goto LABEL_12;
  }

  return v10;
}

void ***sub_FEE988(void ***result)
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
          v4 = sub_FE90B8(v4 - 308);
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

void sub_FEEA00()
{
  byte_27C0557 = 3;
  LODWORD(qword_27C0540) = 5136193;
  byte_27C056F = 3;
  LODWORD(qword_27C0558) = 5136194;
  byte_27C0587 = 3;
  LODWORD(qword_27C0570) = 5136195;
  byte_27C059F = 15;
  strcpy(&qword_27C0588, "vehicle_mass_kg");
  byte_27C05B7 = 21;
  strcpy(&xmmword_27C05A0, "vehicle_cargo_mass_kg");
  byte_27C05CF = 19;
  strcpy(&qword_27C05B8, "vehicle_aux_power_w");
  byte_27C05E7 = 15;
  strcpy(&qword_27C05D0, "dcdc_efficiency");
  strcpy(&qword_27C05E8, "drive_train_efficiency");
  HIBYTE(word_27C05FE) = 22;
  operator new();
}

void sub_FEEBDC(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C05FE) < 0)
  {
    sub_21E6198();
  }

  sub_21E61A4();
  _Unwind_Resume(a1);
}

_BYTE *sub_FEEBFC@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if (result[5] == 1)
  {
    if (result[6])
    {
      if (byte_27C065F < 0)
      {
        return sub_325C(a2, xmmword_27C0648, *(&xmmword_27C0648 + 1));
      }

      else
      {
        *a2 = xmmword_27C0648;
        *(a2 + 16) = unk_27C0658;
      }
    }

    else
    {
      *a2 = *"avoid_toll";
      *(a2 + 16) = 0xA00000000000000;
    }
  }

  else if (result[6])
  {
    *(a2 + 16) = 0xE00000000000000;
    *a2 = *"avoid_highways";
  }

  else
  {
    *(a2 + 16) = 0x800000000000000;
    *a2 = *"standard";
  }

  return result;
}

_BYTE *sub_FEECA4@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  if ((result[2] & 1) == 0 && (*result & 1) == 0 && (result[1] & 1) == 0 && (result[3] & 1) == 0 && (result[4] & 1) == 0 && (result[5] & 1) == 0 && (result[6] & 1) == 0 && (result[8] & 1) == 0 && (result[11] & 1) == 0 && (result[9] & 1) == 0 && result[10] != 1)
  {
LABEL_18:
    *(a2 + 16) = 0x800000000000000;
    *a2 = *"standard";
    return result;
  }

  if (result[5] != 1)
  {
    if (result[6])
    {
      *(a2 + 16) = 0xE00000000000000;
      *a2 = *"avoid_highways";
      return result;
    }

    goto LABEL_18;
  }

  if (result[6])
  {
    if (byte_27C065F < 0)
    {
      return sub_325C(a2, xmmword_27C0648, *(&xmmword_27C0648 + 1));
    }

    else
    {
      *a2 = xmmword_27C0648;
      *(a2 + 16) = unk_27C0658;
    }
  }

  else
  {
    *a2 = *"avoid_toll";
    *(a2 + 16) = 0xA00000000000000;
  }

  return result;
}

BOOL sub_FEEDA8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (sub_FC1BE4(a1, *a2) && (*(a2 + 176) & 1) == 0)
  {
    v5 = 0;
    if ((*(a2 + 177) & 1) == 0 && !*(a2 + 1144) && !*(a2 + 1148))
    {
      v5 = *(a2 + 1152) == 0;
    }
  }

  else
  {
    v5 = 0;
  }

  result = 0;
  if (a3 != -1 && !v5)
  {
    v6 = sub_74700();
    if (sub_74234(v6))
    {
      return 1;
    }

    v7 = atomic_load(sub_102DC44());
    if (v7 >= a3)
    {
      return 1;
    }
  }

  return result;
}

void sub_FEEE4C()
{
  byte_27C0677 = 3;
  LODWORD(qword_27C0660) = 5136193;
  byte_27C068F = 3;
  LODWORD(qword_27C0678) = 5136194;
  byte_27C06A7 = 3;
  LODWORD(qword_27C0690) = 5136195;
  byte_27C06BF = 15;
  strcpy(&qword_27C06A8, "vehicle_mass_kg");
  byte_27C06D7 = 21;
  strcpy(&xmmword_27C06C0, "vehicle_cargo_mass_kg");
  byte_27C06EF = 19;
  strcpy(&qword_27C06D8, "vehicle_aux_power_w");
  byte_27C0707 = 15;
  strcpy(&qword_27C06F0, "dcdc_efficiency");
  strcpy(&qword_27C0708, "drive_train_efficiency");
  HIBYTE(word_27C071E) = 22;
  operator new();
}

void sub_FEF060(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C071E) < 0)
  {
    sub_21E6274();
  }

  sub_21E6280();
  _Unwind_Resume(a1);
}

void sub_FEF080(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = sub_3B1AF0(a2);
  a1[3] = sub_3AF6B4(a2);
  a1[4] = sub_3B1348(a2);
  a1[5] = sub_3AF144(a2);
  a1[6] = a6;
  operator new();
}

void sub_FEFBD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_1A104(&a16);
    if (a27 < 0)
    {
LABEL_5:
      operator delete(a22);
      if (a33 < 0)
      {
LABEL_8:
        operator delete(a28);
        sub_360988((v33 + 98));
        sub_616CD4(v34);
        v36 = v33[23];
        if (!v36)
        {
          goto LABEL_13;
        }

LABEL_12:
        v33[24] = v36;
        operator delete(v36);
LABEL_13:
        v37 = v33[10];
        v33[10] = 0;
        if (v37)
        {
          operator delete();
        }

        sub_FF2E64(v33 + 9);
        v38 = v33[8];
        v33[8] = 0;
        if (v38)
        {
          operator delete();
        }

        sub_FF2DD0(v33 + 7);
        _Unwind_Resume(a1);
      }

LABEL_11:
      sub_360988((v33 + 98));
      sub_616CD4(v34);
      v36 = v33[23];
      if (!v36)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_1A104(&a16);
    if (a27 < 0)
    {
      goto LABEL_5;
    }
  }

  if (a33 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_11;
}

void sub_FEFE9C(uint64_t a1, void *a2)
{
  v5 = 6;
  strcpy(__p, "enable");
  *a1 = sub_5F9D0(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 5;
  strcpy(__p, "ratio");
  *(a1 + 8) = sub_63D34(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 4;
  strcpy(__p, "diff");
  *(a1 + 16) = sub_63D34(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 8;
  strcpy(__p, "length_m");
  *(a1 + 24) = sub_64514(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  v5 = 17;
  strcpy(__p, "min_head_length_m");
  *(a1 + 32) = sub_64514(a2, __p);
  if (v5 < 0)
  {
    operator delete(*__p);
  }
}

void sub_FF000C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_FF003C(void *a1)
{
  sub_360988((a1 + 98));
  v2 = a1[95];
  if (v2)
  {
    do
    {
      v13 = *v2;
      v14 = v2[8];
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      v16 = v2[6];
      v2[6] = 0;
      if (v16)
      {
        operator delete(v16);
      }

      operator delete(v2);
      v2 = v13;
    }

    while (v13);
  }

  v3 = a1[93];
  a1[93] = 0;
  if (v3)
  {
    operator delete(v3);
  }

  v4 = a1[23];
  if (v4)
  {
    a1[24] = v4;
    operator delete(v4);
  }

  v5 = a1[10];
  a1[10] = 0;
  if (v5)
  {
    operator delete();
  }

  v6 = a1[9];
  a1[9] = 0;
  if (v6)
  {
    sub_CDE540(v6);
    operator delete();
  }

  v7 = a1[8];
  a1[8] = 0;
  if (v7)
  {
    operator delete();
  }

  v8 = a1[7];
  a1[7] = 0;
  if (v8)
  {
    if (*(v8 + 519) < 0)
    {
      operator delete(*(v8 + 496));
    }

    v9 = *(v8 + 432);
    if (v9)
    {
      do
      {
        v10 = *v9;
        sub_253B4((v9 + 2));
        operator delete(v9);
        v9 = v10;
      }

      while (v10);
    }

    v11 = *(v8 + 416);
    *(v8 + 416) = 0;
    if (v11)
    {
      operator delete(v11);
    }

    operator delete();
  }

  return a1;
}

void *sub_FF01A8()
{
  v0 = __chkstk_darwin();
  v132 = v1;
  v123 = v2;
  v124 = v3;
  v5 = v4;
  v6 = v0;
  *v7 = 0;
  v7[1] = 0;
  v126 = v7;
  v7[2] = 0;
  result = sub_4D1F6C(v4);
  if (result)
  {
    return result;
  }

  sub_112D984(v194, 2, *v6);
  sub_FF3ED4(v191, v132, v6[9], v194, v6[8], *v6, v6[1]);
  v9 = v6[195];
  v191[6] = v6[196];
  v191[7] = v9;
  v192 = *(v6 + 229);
  v193 = v6[194];
  v189[1] = 0;
  v189[0] = 0;
  v190 = 0;
  v187[1] = 0;
  v187[0] = 0;
  v188 = 0;
  v185[1] = 0;
  v185[0] = 0;
  v186 = 0;
  v10 = sub_F73E78(v5);
  sub_60BAC4(v126, v10);
  *v182 = 0u;
  *v183 = 0u;
  v184 = 1065353216;
  if (sub_F73E78(v5) < 2)
  {
    goto LABEL_7;
  }

  v11 = sub_45AC50(v5);
  for (i = sub_588D8(v5); v11 != i; v11 += 6)
  {
    if (!sub_45336C(v11))
    {
      goto LABEL_7;
    }
  }

  v13 = sub_45AC50(v5);
  v14 = sub_588D8(v5);
  if (v13 != v14)
  {
LABEL_157:
    v108 = nullsub_1(v13);
    v109 = *v108;
    v110 = v108[1];
    while (1)
    {
      if (v109 == v110)
      {
        v13 += 48;
        if (v13 != v14)
        {
          goto LABEL_157;
        }

        break;
      }

      v111 = sub_73EEC(v109);
      v112 = v111;
      if (*v111 != 0x7FFFFFFF && v111[9] != 0x7FFFFFFF && sub_4566B4(v111 + 2))
      {
        v114 = v112[28];
        if (v114)
        {
          if (v114 == 2)
          {
            v115 = *(v112 + 13);
            if (v115 <= 0xFFFFFFFEFFFFFFFFLL && v115)
            {
              goto LABEL_172;
            }
          }

          else
          {
            if (v114 != 1)
            {
              sub_5AF20();
            }

            if (*(v112 + 13) != -1)
            {
LABEL_172:
              *v139 = *(sub_73EEC(v109) + 104);
              sub_FF2EB8(v182, v139);
            }
          }
        }
      }

      v109 += 552;
    }
  }

LABEL_7:
  v15 = sub_F73E78(v5);
  if (v15)
  {
    v16 = 0;
    v122 = v15;
    v127 = v5;
    while (1)
    {
      v17 = *nullsub_1(v5);
      v125 = v16;
      v18 = *v123;
      v133 = *v124;
      v130 = sub_4E3D6C((*v124 + 48 * v16));
      v181 = 0;
      memset(v180, 0, sizeof(v180));
      v178 = 0;
      __p = 0;
      v179 = 0;
      v131 = v17;
      v134 = 48 * v16;
      v19 = sub_F63FF4((v17 + 48 * v16));
      if (0xE21A291C077975B9 * ((v179 - __p) >> 3) < v19)
      {
        if (v19 <= 0x3BCBADC7F10D14)
        {
          operator new();
        }

        sub_1794();
      }

      v20 = nullsub_1(v17 + v134);
      v21 = v20[1] - *v20;
      if (v21)
      {
        v22 = 0;
        v128 = 0xF128CFC4A33F128DLL * (v21 >> 3);
        v129 = (v18 + 24 * v16);
        do
        {
          v189[1] = v189[0];
          v187[1] = v187[0];
          v185[1] = v185[0];
          v25 = sub_F63CBC((v131 + v134), v22);
          v26 = sub_4D1DB0(v25);
          v27 = *(sub_E63190(v132, *v26) + 2);
          v28 = sub_F69688(v25);
          v29 = *(sub_E63190(v132, *v28) + 2);
          v30 = sub_FF4504(v25, v22 == 0, v191);
          v31 = v30;
          if (!v22 && (v30 & 2) != 0)
          {
            v180[0].i64[0] = v6[6][7];
          }

          if (sub_4E3D6C((v133 + v134)))
          {
            sub_4C35D4(v133 + v134, v139);
            v32 = v139[0] + 56 * v22;
            v33 = *(v32 + 2);
            *v171 = *v32;
            *&v171[8] = v33;
            v174 = 0;
            v175 = 0;
            v173 = 0;
            v35 = *(v32 + 2);
            v34 = *(v32 + 3);
            if (v34 != v35)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v34 - v35) >> 2) < 0x1555555555555556)
              {
                operator new();
              }

              sub_1794();
            }

            v36 = *(v32 + 5);
            DWORD2(v176) = *(v32 + 12);
            *&v176 = v36;
            if (*(v6 + 1849) == 1)
            {
LABEL_28:
              sub_1184AF8(v139, *v6);
            }
          }

          else
          {
            v176 = 0u;
            v172 = 0;
            *v171 = 0x7FFFFFFF;
            *&v171[4] = 0x7FFFFFFF7FFFFFFFLL;
            v173 = 0;
            v174 = 0;
            v175 = 0;
            *&v176 = 0x8000000080000000;
            DWORD2(v176) = 0x7FFFFFFF;
            if (*(v6 + 1849) == 1)
            {
              goto LABEL_28;
            }
          }

          v37 = sub_765A78(v25);
          v38 = sub_F6D168(v25);
          v39 = sub_F6E3D4(v25);
          sub_FF1AB0(v6, v37, v38, v39, __dst);
          v159[0] = v27;
          v159[1] = v29;
          sub_3EDCF4(v139, (*v129 + 288 * v22));
          sub_FD6FA8(v6[10], v25, v180[0].i64, &v137, v40);
          sub_1190BE0((v6 + 11), v25, &v135);
          v41 = v178;
          if (v178 >= v179)
          {
            v43 = 0xE21A291C077975B9 * ((v178 - __p) >> 3) + 1;
            v5 = v127;
            if (v43 > 0x3BCBADC7F10D14)
            {
              sub_1794();
            }

            if (0xC43452380EF2EB72 * ((v179 - __p) >> 3) > v43)
            {
              v43 = 0xC43452380EF2EB72 * ((v179 - __p) >> 3);
            }

            if (0xE21A291C077975B9 * ((v179 - __p) >> 3) >= 0x1DE5D6E3F8868ALL)
            {
              v44 = 0x3BCBADC7F10D14;
            }

            else
            {
              v44 = v43;
            }

            p_p = &__p;
            if (v44)
            {
              if (v44 <= 0x3BCBADC7F10D14)
              {
                operator new();
              }

              sub_1808();
            }

            v194[664] = 0;
            v195 = 8 * ((v178 - __p) >> 3);
            v196 = v195;
            v197 = 0;
            sub_4D3408(v195, v25, v159, 0, v31, v139, v171, &v137, &v135, __dst);
            v45 = v196;
            v46 = v178;
            v47 = __p;
            v48 = (v195 + __p - v178);
            if (v178 != __p)
            {
              v49 = __p;
              v50 = (v195 + __p - v178);
              do
              {
                sub_4C6AE8(v50, v49);
                v49 += 1096;
                v50 = (v51 + 1096);
              }

              while (v49 != v46);
              do
              {
                sub_3EEA68(v47);
                v47 += 1096;
              }

              while (v47 != v46);
              v47 = __p;
            }

            v42 = (v45 + 1096);
            __p = v48;
            v178 = (v45 + 1096);
            v179 = v197;
            if (v47)
            {
              operator delete(v47);
            }
          }

          else
          {
            sub_4D3408(v178, v25, v159, 0, v31, v139, v171, &v137, &v135, __dst);
            v5 = v127;
            v42 = v41 + 1096;
          }

          v178 = v42;
          v52 = v135;
          if (v135)
          {
            v53 = v136;
            v54 = v135;
            if (v136 != v135)
            {
              do
              {
                v56 = *(v53 - 4);
                if (v56)
                {
                  v57 = *(v53 - 3);
                  v55 = *(v53 - 4);
                  if (v57 != v56)
                  {
                    v58 = *(v53 - 3);
                    do
                    {
                      v60 = *(v58 - 24);
                      v58 -= 24;
                      v59 = v60;
                      if (v60)
                      {
                        *(v57 - 16) = v59;
                        operator delete(v59);
                      }

                      v57 = v58;
                    }

                    while (v58 != v56);
                    v55 = *(v53 - 4);
                  }

                  *(v53 - 3) = v56;
                  operator delete(v55);
                }

                v53 -= 64;
              }

              while (v53 != v52);
              v54 = v135;
            }

            v136 = v52;
            operator delete(v54);
          }

          if (v137)
          {
            v138 = v137;
            operator delete(v137);
          }

          if (v157)
          {
            v158 = v157;
            operator delete(v157);
          }

          if (v155)
          {
            v156 = v155;
            operator delete(v155);
          }

          if (v153)
          {
            v154 = v153;
            operator delete(v153);
          }

          if (v151)
          {
            v152 = v151;
            operator delete(v151);
          }

          if (v149)
          {
            v150 = v149;
            operator delete(v149);
          }

          if (*(&v147 + 1))
          {
            *&v148 = *(&v147 + 1);
            operator delete(*(&v147 + 1));
          }

          if (v146)
          {
            *(&v146 + 1) = v146;
            operator delete(v146);
          }

          if (v144[0])
          {
            v144[1] = v144[0];
            operator delete(v144[0]);
          }

          if (v142)
          {
            *(&v142 + 1) = v142;
            operator delete(v142);
          }

          if (v140[0])
          {
            v140[1] = v140[0];
            operator delete(v140[0]);
          }

          if (v169)
          {
            v170 = v169;
            operator delete(v169);
          }

          if (v167)
          {
            v168 = v167;
            operator delete(v167);
          }

          if (v165)
          {
            v166 = v165;
            operator delete(v165);
          }

          if (v163)
          {
            v164 = v163;
            operator delete(v163);
          }

          if (v161[1])
          {
            v162 = v161[1];
            operator delete(v161[1]);
          }

          if (__dst[0])
          {
            __dst[1] = __dst[0];
            operator delete(__dst[0]);
          }

          if (v173)
          {
            v174 = v173;
            operator delete(v173);
          }

          v61 = v178;
          v62 = v6[194];
          if ((v62 & 0x40) != 0)
          {
            v63 = v6[8];
            sub_F6D05C(v25, v139);
            sub_43A664(v63, v139, __dst);
            if (v189[0])
            {
              v189[1] = v189[0];
              operator delete(v189[0]);
            }

            *v189 = *__dst;
            v190 = v161[0];
            v62 = v6[194];
          }

          v64 = v61 - 1096;
          if ((v62 & 0x10) != 0)
          {
            sub_428444(v6[7], v64, v139);
          }

          if ((v62 & 0x20) != 0)
          {
            sub_42C878(v6[7], v64, v139);
            if (v185[0])
            {
              v185[1] = v185[0];
              operator delete(v185[0]);
            }

            *v185 = *v139;
            v186 = v140[0];
          }

          v65 = sub_FF3EF8(v25, v189, v187, v185, v191);
          sub_4D395C(v64, v65);
          v66 = sub_4D39C4(v64);
          v67 = sub_FF465C(v25, v66, v189, v187, v191);
          sub_4D396C(v64, v67);
          sub_FF4FFC(v25, v189, v187, v185, v191, __dst, v68);
          if (v130)
          {
            sub_4E3D90((v133 + v134), v22, v139);
            v69 = sub_4D2130(v64);
            v70 = *v139;
            v71 = *v140;
            *(v69 + 32) = v141;
            *v69 = v70;
            *(v69 + 16) = v71;
            v72 = *(v69 + 40);
            if (v72)
            {
              *(v69 + 48) = v72;
              operator delete(v72);
              *(v69 + 40) = 0;
              *(v69 + 48) = 0;
              *(v69 + 56) = 0;
            }

            v73 = *(v69 + 64);
            *(v69 + 40) = v142;
            *(v69 + 56) = v143;
            v142 = 0uLL;
            v143 = 0;
            if (v73)
            {
              *(v69 + 72) = v73;
              operator delete(v73);
              *(v69 + 64) = 0;
              *(v69 + 72) = 0;
              *(v69 + 80) = 0;
              v73 = v142;
            }

            *(v69 + 64) = *v144;
            *(v69 + 80) = v145;
            v144[0] = 0;
            v144[1] = 0;
            v145 = 0;
            v74 = v148;
            v75 = v147;
            *(v69 + 88) = v146;
            *(v69 + 104) = v75;
            *(v69 + 120) = v74;
            if (v73)
            {
              *(&v142 + 1) = v73;
              operator delete(v73);
            }

            sub_4E3DA4((v133 + v134), v22, v139);
            v76 = sub_73F54(v64);
            v77 = *v139;
            v78 = *v140;
            *(v76 + 32) = v141;
            *v76 = v77;
            *(v76 + 16) = v78;
            v79 = *(v76 + 40);
            if (v79)
            {
              *(v76 + 48) = v79;
              operator delete(v79);
              *(v76 + 40) = 0;
              *(v76 + 48) = 0;
              *(v76 + 56) = 0;
            }

            v80 = *(v76 + 64);
            *(v76 + 40) = v142;
            *(v76 + 56) = v143;
            v142 = 0uLL;
            v143 = 0;
            if (v80)
            {
              *(v76 + 72) = v80;
              operator delete(v80);
              *(v76 + 64) = 0;
              *(v76 + 72) = 0;
              *(v76 + 80) = 0;
              v80 = v142;
            }

            *(v76 + 64) = *v144;
            *(v76 + 80) = v145;
            v144[0] = 0;
            v144[1] = 0;
            v145 = 0;
            v81 = v148;
            v82 = v147;
            *(v76 + 88) = v146;
            *(v76 + 104) = v82;
            *(v76 + 120) = v81;
            if (v80)
            {
              *(&v142 + 1) = v80;
              operator delete(v80);
            }

            v23 = __dst[1];
          }

          else
          {
            v23 = sub_FF5A2C(v25);
            LODWORD(__dst[1]) = v23;
          }

          v24.i64[0] = __PAIR64__(HIDWORD(__dst[1]), v23);
          v24.i64[1] = v161[0];
          *(v180 + 8) = vaddq_s32(v24, *(v180 + 8));
          v180[1].u64[1] = vadd_s32(v180[1].u64[1], v161[1]);
          v181 += v162;
          ++v22;
        }

        while (v22 != v128);
      }

      v83 = sub_FF4B0C(&__p, v182, v191);
      *v171 = v83;
      v84 = v126[1];
      if (v84 >= v126[2])
      {
        v85 = sub_FF2C08(v126, &__p, v171, v180);
      }

      else
      {
        sub_4C3348(v126[1], &__p, v83, v180);
        v85 = v84 + 128;
      }

      v126[1] = v85;
      if (*(v6 + 1848) != 1)
      {
        goto LABEL_144;
      }

      sub_D7B0(v139);
      sub_4A5C(v140, " probe_data_computed_using=pathlets ", 36);
      v86 = sub_58BBC(v126[1] - 128);
      v87 = *v86;
      v88 = v86[1];
      if (*v86 != v88)
      {
        do
        {
          v89 = sub_4D4730(v87);
          sub_FF210C(v140, v89);
          v87 += 1096;
        }

        while (v87 != v88);
      }

      v90 = v126[1];
      if ((v148 & 0x10) != 0)
      {
        break;
      }

      if ((v148 & 8) != 0)
      {
        v92 = v143;
        v93 = &v142;
LABEL_133:
        v94 = *v93;
        v91 = v92 - *v93;
        if (v91 > 0x7FFFFFFFFFFFFFF7)
        {
          sub_3244();
        }

        if (v91 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v161[0]) = v92 - *v93;
        if (v91)
        {
          memmove(__dst, v94, v91);
        }

        goto LABEL_139;
      }

      v91 = 0;
      HIBYTE(v161[0]) = 0;
LABEL_139:
      *(__dst + v91) = 0;
      sub_4C5174(v90 - 128, __dst);
      if (SHIBYTE(v161[0]) < 0)
      {
        operator delete(__dst[0]);
      }

      v139[0] = v121;
      *(v139 + *(v121 - 3)) = v120;
      v140[0] = v119;
      if (SBYTE7(v147) < 0)
      {
        operator delete(v146);
      }

      std::locale::~locale(&v141);
      std::iostream::~basic_iostream();
      std::ios::~ios();
LABEL_144:
      v95 = __p;
      if (__p)
      {
        v96 = v178;
        v97 = __p;
        if (v178 != __p)
        {
          do
          {
            v96 = sub_3EEA68((v96 - 1096));
          }

          while (v96 != v95);
          v97 = __p;
        }

        v178 = v95;
        operator delete(v97);
      }

      v16 = v125 + 1;
      if (v125 + 1 == v122)
      {
        goto LABEL_148;
      }
    }

    v92 = *(&v147 + 1);
    v93 = v144;
    if (*(&v147 + 1) < v144[1])
    {
      *(&v147 + 1) = v144[1];
      v92 = v144[1];
      v93 = v144;
    }

    goto LABEL_133;
  }

LABEL_148:
  v99 = *v126;
  v98 = v126[1];
  if (*v126 != v98)
  {
    while ((sub_4C513C(v99, 10) & 1) == 0)
    {
      v99 += 128;
      if (v99 == v98)
      {
        v99 = v98;
        break;
      }
    }

    v98 = v126[1];
  }

  if (v99 != v98)
  {
    v180[0].i64[0] = sub_4E4D04(v99, v6[3]);
    v180[0].i32[2] = v100;
    __p = sub_4E4E0C(v99, v6[3]);
    LODWORD(v178) = v101;
    v102 = sub_452F94(v99);
    v103 = sub_3B1D8C(*v6);
    v104 = sub_4D2130(v102);
    v105 = sub_2AB71C(v103, *(v104 + 104), *(v104 + 112));
    v106 = sub_3B1D8C(*v6);
    v137 = sub_2ACC94(v106, v105);
    LODWORD(v138) = v107;
    sub_5C0C0(__dst);
  }

  v116 = v183[0];
  if (v183[0])
  {
    do
    {
      v117 = *v116;
      operator delete(v116);
      v116 = v117;
    }

    while (v117);
  }

  v118 = v182[0];
  v182[0] = 0;
  if (v118)
  {
    operator delete(v118);
  }

  if (v185[0])
  {
    v185[1] = v185[0];
    operator delete(v185[0]);
  }

  if (v187[0])
  {
    v187[1] = v187[0];
    operator delete(v187[0]);
  }

  if (v189[0])
  {
    v189[1] = v189[0];
    operator delete(v189[0]);
  }

  return sub_3E3DF0(v194);
}