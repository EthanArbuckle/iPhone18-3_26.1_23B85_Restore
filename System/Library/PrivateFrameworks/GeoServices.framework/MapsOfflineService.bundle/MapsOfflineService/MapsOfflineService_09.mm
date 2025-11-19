uint64_t sub_88C4C(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  v25 = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  v26 = ((v25 << 6) + (v25 >> 2) + a2[25] - 0x61C8864680B583EDLL) ^ v25;
  v27 = ((v26 << 6) + (v26 >> 2) + a2[26] - 0x61C8864680B583EDLL) ^ v26;
  v28 = ((v27 << 6) + (v27 >> 2) + a2[27] - 0x61C8864680B583EDLL) ^ v27;
  v29 = ((v28 << 6) + (v28 >> 2) + a2[28] - 0x61C8864680B583EDLL) ^ v28;
  *result = ((v29 << 6) + (v29 >> 2) + a2[29] - 0x61C8864680B583EDLL) ^ v29;
  *(result + 8) = 30;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = a2[25];
  *(result + 42) = a2[26];
  *(result + 43) = a2[27];
  *(result + 44) = a2[28];
  *(result + 45) = a2[29];
  *(result + 46) = 0;
  return result;
}

uint64_t sub_8901C(uint64_t result, unsigned __int8 *a2)
{
  v2 = (((*a2 - 0x61C8864680B583EDLL) << 6) + ((*a2 - 0x61C8864680B583EDLL) >> 2) + a2[1] - 0x61C8864680B583EDLL) ^ (*a2 - 0x61C8864680B583EDLL);
  v3 = ((v2 << 6) + (v2 >> 2) + a2[2] - 0x61C8864680B583EDLL) ^ v2;
  v4 = ((v3 << 6) + (v3 >> 2) + a2[3] - 0x61C8864680B583EDLL) ^ v3;
  v5 = ((v4 << 6) + (v4 >> 2) + a2[4] - 0x61C8864680B583EDLL) ^ v4;
  v6 = ((v5 << 6) + (v5 >> 2) + a2[5] - 0x61C8864680B583EDLL) ^ v5;
  v7 = ((v6 << 6) + (v6 >> 2) + a2[6] - 0x61C8864680B583EDLL) ^ v6;
  v8 = ((v7 << 6) + (v7 >> 2) + a2[7] - 0x61C8864680B583EDLL) ^ v7;
  v9 = ((v8 << 6) + (v8 >> 2) + a2[8] - 0x61C8864680B583EDLL) ^ v8;
  v10 = ((v9 << 6) + (v9 >> 2) + a2[9] - 0x61C8864680B583EDLL) ^ v9;
  v11 = ((v10 << 6) + (v10 >> 2) + a2[10] - 0x61C8864680B583EDLL) ^ v10;
  v12 = ((v11 << 6) + (v11 >> 2) + a2[11] - 0x61C8864680B583EDLL) ^ v11;
  v13 = ((v12 << 6) + (v12 >> 2) + a2[12] - 0x61C8864680B583EDLL) ^ v12;
  v14 = ((v13 << 6) + (v13 >> 2) + a2[13] - 0x61C8864680B583EDLL) ^ v13;
  v15 = ((v14 << 6) + (v14 >> 2) + a2[14] - 0x61C8864680B583EDLL) ^ v14;
  v16 = ((v15 << 6) + (v15 >> 2) + a2[15] - 0x61C8864680B583EDLL) ^ v15;
  v17 = ((v16 << 6) + (v16 >> 2) + a2[16] - 0x61C8864680B583EDLL) ^ v16;
  v18 = ((v17 << 6) + (v17 >> 2) + a2[17] - 0x61C8864680B583EDLL) ^ v17;
  v19 = ((v18 << 6) + (v18 >> 2) + a2[18] - 0x61C8864680B583EDLL) ^ v18;
  v20 = ((v19 << 6) + (v19 >> 2) + a2[19] - 0x61C8864680B583EDLL) ^ v19;
  v21 = ((v20 << 6) + (v20 >> 2) + a2[20] - 0x61C8864680B583EDLL) ^ v20;
  v22 = ((v21 << 6) + (v21 >> 2) + a2[21] - 0x61C8864680B583EDLL) ^ v21;
  v23 = ((v22 << 6) + (v22 >> 2) + a2[22] - 0x61C8864680B583EDLL) ^ v22;
  v24 = ((v23 << 6) + (v23 >> 2) + a2[23] - 0x61C8864680B583EDLL) ^ v23;
  v25 = ((v24 << 6) + (v24 >> 2) + a2[24] - 0x61C8864680B583EDLL) ^ v24;
  v26 = ((v25 << 6) + (v25 >> 2) + a2[25] - 0x61C8864680B583EDLL) ^ v25;
  v27 = ((v26 << 6) + (v26 >> 2) + a2[26] - 0x61C8864680B583EDLL) ^ v26;
  v28 = ((v27 << 6) + (v27 >> 2) + a2[27] - 0x61C8864680B583EDLL) ^ v27;
  v29 = ((v28 << 6) + (v28 >> 2) + a2[28] - 0x61C8864680B583EDLL) ^ v28;
  v30 = ((v29 << 6) + (v29 >> 2) + a2[29] - 0x61C8864680B583EDLL) ^ v29;
  *result = ((v30 << 6) + (v30 >> 2) + a2[30] - 0x61C8864680B583EDLL) ^ v30;
  *(result + 8) = 31;
  *(result + 16) = *a2;
  *(result + 17) = a2[1];
  *(result + 18) = a2[2];
  *(result + 19) = a2[3];
  *(result + 20) = a2[4];
  *(result + 21) = a2[5];
  *(result + 22) = a2[6];
  *(result + 23) = a2[7];
  *(result + 24) = a2[8];
  *(result + 25) = a2[9];
  *(result + 26) = a2[10];
  *(result + 27) = a2[11];
  *(result + 28) = a2[12];
  *(result + 29) = a2[13];
  *(result + 30) = a2[14];
  *(result + 31) = a2[15];
  *(result + 32) = a2[16];
  *(result + 33) = a2[17];
  *(result + 34) = a2[18];
  *(result + 35) = a2[19];
  *(result + 36) = a2[20];
  *(result + 37) = a2[21];
  *(result + 38) = a2[22];
  *(result + 39) = a2[23];
  *(result + 40) = a2[24];
  *(result + 41) = a2[25];
  *(result + 42) = a2[26];
  *(result + 43) = a2[27];
  *(result + 44) = a2[28];
  *(result + 45) = a2[29];
  *(result + 46) = a2[30];
  return result;
}

uint64_t sub_8940C(uint64_t a1)
{
  sub_894A8(a1, &__p);
  sub_3227C(&v10, &__p);
  v1 = __p;
  if (__p)
  {
    v2 = v9;
    v3 = __p;
    if (v9 != __p)
    {
      v4 = v9;
      do
      {
        v6 = *(v4 - 3);
        v4 -= 24;
        v5 = v6;
        if (v6)
        {
          *(v2 - 2) = v5;
          operator delete(v5);
        }

        v2 = v4;
      }

      while (v4 != v1);
      v3 = __p;
    }

    v9 = v1;
    operator delete(v3);
  }

  return v10;
}

void sub_89494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_34BE0(va);
  _Unwind_Resume(a1);
}

void sub_894A8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 32) >= 1)
  {
    operator new();
  }

  if ((~*(a1 + 16) & 0x1E) != 0)
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  else
  {
    v4 = *(a1 + 64);
    v5 = -1;
    if (v4 <= 180.0)
    {
      v6 = *(a1 + 72);
      if (fabs(v6) <= 85.0511288 && v4 >= -180.0)
      {
        v7 = sin(fmin(fmax(v6, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        LODWORD(v8) = ((log((v7 + 1.0) / (1.0 - v7)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v8 >= 0xFFFFFFFE)
        {
          v8 = 4294967294;
        }

        else
        {
          v8 = v8;
        }

        v5 = ((v4 + 180.0) / 360.0 * 4294967300.0) | (v8 << 32);
      }
    }

    v16 = v5;
    v17 = 0x7FFFFFFF;
    v9 = *(a1 + 80);
    v10 = -1;
    if (v9 <= 180.0)
    {
      v11 = *(a1 + 56);
      if (fabs(v11) <= 85.0511288 && v9 >= -180.0)
      {
        v12 = sin(fmin(fmax(v11, -85.0511288), 85.0511288) * 3.14159265 / 180.0);
        LODWORD(v13) = ((log((v12 + 1.0) / (1.0 - v12)) / -12.5663706 + 0.5) * 4294967300.0);
        if (v13 >= 0xFFFFFFFE)
        {
          v13 = 4294967294;
        }

        else
        {
          v13 = v13;
        }

        v10 = ((v9 + 180.0) / 360.0 * 4294967300.0) | (v13 << 32);
      }
    }

    v14 = v10;
    v15 = 0x7FFFFFFF;
    sub_320C0(&__p, &v16, &v14);
    sub_345A0(&__p, a2);
  }
}

void sub_89904(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, void *__p, uint64_t a16)
{
  v18 = v17;
  *(v16 + 8) = v18;
  sub_35390(&a13);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  a16 = __p;
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_8994C(unsigned int a1)
{
  if (a1 > 3)
  {
    return 0;
  }

  else
  {
    return dword_2266930[a1];
  }
}

void *sub_8996C(void *a1, unsigned int a2)
{
  if (a2 > 5)
  {
    v2 = 0;
    v3 = "";
  }

  else
  {
    v2 = qword_2266940[a2];
    v3 = off_262EAB8[a2];
  }

  return sub_4A5C(a1, v3, v2);
}

uint64_t sub_899A0(unsigned int a1)
{
  if (a1 >= 7)
  {
    if (!sub_7E7E4(3u))
    {
LABEL_20:
      LOBYTE(v1) = 5;
      return v1;
    }

    sub_19594F8(&v8);
    sub_4A5C(&v8, "Unknown transport type encountered: ", 36);
    std::ostream::operator<<();
    if ((v18 & 0x10) != 0)
    {
      v3 = v17;
      if (v17 < v14)
      {
        v17 = v14;
        v3 = v14;
      }

      v4 = v13;
      v2 = v3 - v13;
      if (v3 - v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_23;
      }
    }

    else
    {
      if ((v18 & 8) == 0)
      {
        v2 = 0;
        v7 = 0;
LABEL_15:
        *(&__p + v2) = 0;
        sub_7E854(&__p, 3u);
        if (v7 < 0)
        {
          operator delete(__p);
        }

        if (v16 < 0)
        {
          operator delete(v15);
        }

        std::locale::~locale(&v10);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_20;
      }

      v4 = v11;
      v2 = v12 - v11;
      if ((v12 - v11) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_23:
        sub_3244();
      }
    }

    if (v2 >= 0x17)
    {
      operator new();
    }

    v7 = v2;
    if (v2)
    {
      memmove(&__p, v4, v2);
    }

    goto LABEL_15;
  }

  return (0x5040503020100uLL >> (8 * a1));
}

void sub_89C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_89C64@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6[0] = a2;
  v6[1] = a3;
  v5 = a1;
  return sub_89C94(&v5, v6, a4);
}

uint64_t sub_89C94@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v15);
  v6 = *a1;
  if (v6 > 5)
  {
    v7 = 0;
    v8 = "";
  }

  else
  {
    v7 = qword_2266940[v6];
    v8 = off_262EAB8[v6];
  }

  v9 = sub_4A5C(&v16, v8, v7);
  sub_4A5C(v9, *a2, a2[1]);
  if ((v26 & 0x10) != 0)
  {
    v11 = v25;
    if (v25 < v22)
    {
      v25 = v22;
      v11 = v22;
    }

    v12 = v21;
    v10 = v11 - v21;
    if (v11 - v21 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v26 & 8) == 0)
    {
      v10 = 0;
      a3[23] = 0;
      goto LABEL_15;
    }

    v12 = v19;
    v10 = v20 - v19;
    if ((v20 - v19) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_19:
      sub_3244();
    }
  }

  if (v10 >= 0x17)
  {
    operator new();
  }

  a3[23] = v10;
  if (v10)
  {
    memmove(a3, v12, v10);
  }

LABEL_15:
  a3[v10] = 0;
  v16 = v13;
  if (v24 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v18);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_89F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t *sub_89FA8(uint64_t *result)
{
  v1 = result[1];
  result[1] = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  v3 = *result;
  *result = 0;
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

  return result;
}

uint64_t sub_8A034(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*v1 == v1[1])
  {
    return 0;
  }

  else
  {
    return *v1;
  }
}

void sub_8A058(uint64_t *a1, unint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24) + a2;
  if ((v3 & 7) != 0)
  {
    v4 = (v3 >> 3) + 1;
  }

  else
  {
    v4 = v3 >> 3;
  }

  v5 = *(v2 + 8);
  v6 = v5 - *v2;
  if (v6 < v4)
  {
    v7 = a2 >> 3;
    if ((a2 & 7) != 0)
    {
      ++v7;
    }

    v8 = 2 * (v7 + v6);
    v9 = v8 - v6;
    if (v8 > v6)
    {
      v10 = a1;
      if (*(v2 + 16) - v5 < v9)
      {
        operator new();
      }

      v11 = v5 + v9;
      bzero(*(v2 + 8), v8 - v6);
      *(v2 + 8) = v11;
      a1 = v10;
    }

    v12 = *(*a1 + 8);
    v13 = (v6 + **a1);

    bzero(v13, v12 - v13);
  }
}

void sub_8A1CC(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = a3;
    v6 = a3;
    sub_8A058(a1, a3);
    v7 = *a1;
    v8 = *(*a1 + 24);
    v9 = 63;
    do
    {
      *(*v7 + (v8 >> 3)) |= (((a2 << -v6) >> v9) & 1) << (~v8 & 7);
      v7 = *a1;
      v8 = *(*a1 + 24) + 1;
      *(*a1 + 24) = v8;
      --v9;
      --v5;
    }

    while (v5);
  }
}

void sub_8A26C(uint64_t *a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = a3;
    v5 = -1;
    if (a3 < 0x40)
    {
      v5 = ~(-1 << a3);
    }

    v6 = v5 & a2;
    v7 = a3;
    sub_8A058(a1, a3);
    v8 = *a1;
    v9 = *(*a1 + 24);
    v10 = 63;
    do
    {
      *(*v8 + (v9 >> 3)) |= (((v6 << -v7) >> v10) & 1) << (~v9 & 7);
      v8 = *a1;
      v9 = *(*a1 + 24) + 1;
      *(*a1 + 24) = v9;
      --v10;
      --v4;
    }

    while (v4);
  }
}

char *sub_8A3B0(uint64_t *a1)
{
  if ((*(*a1 + 24) & 7) != 0)
  {
    v2 = 8 - (*(*a1 + 24) & 7u);
  }

  else
  {
    v2 = 0;
  }

  sub_8A058(a1, v2);
  v3 = *a1;
  v4 = *(*a1 + 24) + v2;
  *(v3 + 24) = v4;
  result = sub_8A480(a1[2], *(a1[2] + 8), *v3, (*v3 + (v4 >> 3)), v4 >> 3);
  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    v7 = *v6;
    if (*v6)
    {
      *(v6 + 8) = v7;
      operator delete(v7);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_8A468(unint64_t a1)
{
  v1 = 64 - __clz(a1);
  if (a1)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

char *sub_8A480(uint64_t a1, _BYTE *__dst, _BYTE *__src, void *a4, unint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v9 = *(a1 + 8);
  v8 = *(a1 + 16);
  if ((v8 - v9) < a5)
  {
    v10 = *a1;
    v11 = v9 - *a1 + a5;
    if (v11 < 0)
    {
      sub_1794();
    }

    v12 = (__dst - v10);
    v13 = v8 - v10;
    if (2 * v13 > v11)
    {
      v11 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    if (v14)
    {
      operator new();
    }

    v42 = (__dst - v10);
    v43 = &v12[a5];
    if (a5 < 8 || (__dst - &__src[v10]) < 0x20)
    {
      v44 = (__dst - v10);
      v45 = __src;
      goto LABEL_35;
    }

    if (a5 >= 0x20)
    {
      v51 = a5 & 0x7FFFFFFFFFFFFFE0;
      v53 = (__src + 16);
      v54 = v12 + 16;
      v55 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v56 = *v53;
        *(v54 - 1) = *(v53 - 1);
        *v54 = v56;
        v53 += 2;
        v54 += 2;
        v55 -= 32;
      }

      while (v55);
      if (v51 == a5)
      {
        goto LABEL_36;
      }

      if ((a5 & 0x18) == 0)
      {
        v45 = &__src[v51];
        v44 = &v42[v51];
        do
        {
LABEL_35:
          v46 = *v45++;
          *v44++ = v46;
        }

        while (v44 != v43);
LABEL_36:
        v47 = *(a1 + 8) - __dst;
        memcpy(v43, __dst, v47);
        v48 = &v43[v47];
        *(a1 + 8) = v5;
        v49 = *a1;
        v50 = &v42[*a1 - v5];
        memcpy(v50, *a1, &v5[-*a1]);
        *a1 = v50;
        *(a1 + 8) = v48;
        *(a1 + 16) = 0;
        if (v49)
        {
          operator delete(v49);
        }

        return v42;
      }
    }

    else
    {
      v51 = 0;
    }

    v44 = &v42[a5 & 0x7FFFFFFFFFFFFFF8];
    v45 = &__src[a5 & 0x7FFFFFFFFFFFFFF8];
    v57 = &__src[v51];
    v58 = (&__dst[v51] - v10);
    v59 = v51 - (a5 & 0x7FFFFFFFFFFFFFF8);
    do
    {
      v60 = *v57++;
      *v58++ = v60;
      v59 += 8;
    }

    while (v59);
    if ((a5 & 0x7FFFFFFFFFFFFFF8) == a5)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  v15 = v9 - __dst;
  if ((v9 - __dst) >= a5)
  {
    v30 = &__dst[a5];
    v31 = (v9 - a5);
    v32 = *(a1 + 8);
    if (v9 >= a5)
    {
      if (a5 <= 0x1F)
      {
        goto LABEL_59;
      }

      v31 += a5 & 0x7FFFFFFFFFFFFFE0;
      v32 = (v9 + (a5 & 0x7FFFFFFFFFFFFFE0));
      v33 = (v9 + 16);
      v34 = (v9 + 16 - a5);
      v35 = a5 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v36 = *v34;
        *(v33 - 1) = *(v34 - 1);
        *v33 = v36;
        v33 += 2;
        v34 += 2;
        v35 -= 32;
      }

      while (v35);
      if ((a5 & 0x7FFFFFFFFFFFFFE0) != a5)
      {
LABEL_59:
        do
        {
          v37 = *v31++;
          *v32++ = v37;
        }

        while (v31 != v9);
      }
    }

    *(a1 + 8) = v32;
    if (v9 != v30)
    {
      v38 = a5;
      memmove(&__dst[a5], __dst, v9 - v30);
      a5 = v38;
    }

    v39 = v5;
    v40 = __src;
    v41 = a5;
    goto LABEL_45;
  }

  v16 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    v17 = a5;
    v18 = a4;
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
    a4 = v18;
    a5 = v17;
  }

  v19 = (v9 + v16);
  *(a1 + 8) = v9 + v16;
  if (v15 >= 1)
  {
    v20 = &v5[a5];
    v21 = &v19[-a5];
    if (&v19[-a5] >= v9)
    {
      v23 = (v9 + v16);
    }

    else
    {
      v22 = &__src[a5 + v9] - &v5[a4];
      v23 = (v9 + v16);
      if (v22 < 0x20)
      {
        goto LABEL_60;
      }

      if (a5 <= 0x1F)
      {
        goto LABEL_60;
      }

      v21 += v22 & 0xFFFFFFFFFFFFFFE0;
      v23 = &v19[v22 & 0xFFFFFFFFFFFFFFE0];
      v24 = &v5[a4 + 16];
      v25 = (v24 - __src);
      v26 = (v24 - &__src[a5]);
      v27 = v22 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v28 = *v26;
        *(v25 - 1) = *(v26 - 1);
        *v25 = v28;
        v25 += 2;
        v26 += 2;
        v27 -= 32;
      }

      while (v27);
      if (v22 != (v22 & 0xFFFFFFFFFFFFFFE0))
      {
LABEL_60:
        do
        {
          v29 = *v21++;
          *v23++ = v29;
        }

        while (v21 < v9);
      }
    }

    *(a1 + 8) = v23;
    if (v19 != v20)
    {
      memmove(&v5[a5], v5, v19 - v20);
    }

    v39 = v5;
    v40 = __src;
    v41 = v9 - v5;
LABEL_45:
    memmove(v39, v40, v41);
  }

  return v5;
}

uint64_t *sub_8A814(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_8A86C(uint64_t result)
{
  if (result != 3)
  {
    return result;
  }

  v1 = getenv("SERVER_MODE");
  if (!v1)
  {
    LOBYTE(result) = 1;
    return result;
  }

  v2 = v1;
  if (strlen(v1) == 6)
  {
    v3 = *v2;
    v4 = __toupper(79);
    if (v4 == __toupper(v3))
    {
      v5 = v2[1];
      v6 = __toupper(78);
      if (v6 == __toupper(v5))
      {
        v7 = v2[2];
        v8 = __toupper(76);
        if (v8 == __toupper(v7))
        {
          v9 = v2[3];
          v10 = __toupper(73);
          if (v10 == __toupper(v9))
          {
            v11 = v2[4];
            v12 = __toupper(78);
            if (v12 == __toupper(v11))
            {
              v13 = v2[5];
              v14 = __toupper(69);
              if (v14 == __toupper(v13))
              {
                return 0;
              }
            }
          }
        }
      }
    }
  }

  if (strlen(v2) == 7)
  {
    v15 = *v2;
    v16 = __toupper(79);
    if (v16 == __toupper(v15))
    {
      v17 = v2[1];
      v18 = __toupper(70);
      if (v18 == __toupper(v17))
      {
        v19 = v2[2];
        v20 = __toupper(70);
        if (v20 == __toupper(v19))
        {
          v21 = v2[3];
          v22 = __toupper(76);
          if (v22 == __toupper(v21))
          {
            v23 = v2[4];
            v24 = __toupper(73);
            if (v24 == __toupper(v23))
            {
              v25 = v2[5];
              v26 = __toupper(78);
              if (v26 == __toupper(v25))
              {
                v27 = v2[6];
                v28 = __toupper(69);
                if (v28 == __toupper(v27))
                {
                  return 1;
                }
              }
            }
          }
        }
      }
    }
  }

  if (strlen(v2) == 11)
  {
    v29 = *v2;
    v30 = __toupper(79);
    if (v30 == __toupper(v29))
    {
      v31 = v2[1];
      v32 = __toupper(70);
      if (v32 == __toupper(v31))
      {
        v33 = v2[2];
        v34 = __toupper(70);
        if (v34 == __toupper(v33))
        {
          v35 = v2[3];
          v36 = __toupper(76);
          if (v36 == __toupper(v35))
          {
            v37 = v2[4];
            v38 = __toupper(73);
            if (v38 == __toupper(v37))
            {
              v39 = v2[5];
              v40 = __toupper(78);
              if (v40 == __toupper(v39))
              {
                v41 = v2[6];
                v42 = __toupper(69);
                if (v42 == __toupper(v41))
                {
                  v43 = v2[7];
                  v44 = __toupper(95);
                  if (v44 == __toupper(v43))
                  {
                    v45 = v2[8];
                    v46 = __toupper(73);
                    if (v46 == __toupper(v45))
                    {
                      v47 = v2[9];
                      v48 = __toupper(79);
                      if (v48 == __toupper(v47))
                      {
                        v49 = v2[10];
                        v50 = __toupper(83);
                        if (v50 == __toupper(v49))
                        {
                          return 1;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (strlen(v2) != 15)
  {
    return 1;
  }

  v51 = *v2;
  v52 = __toupper(79);
  if (v52 != __toupper(v51))
  {
    return 1;
  }

  v53 = v2[1];
  v54 = __toupper(70);
  if (v54 != __toupper(v53))
  {
    return 1;
  }

  v55 = v2[2];
  v56 = __toupper(70);
  if (v56 != __toupper(v55))
  {
    return 1;
  }

  v57 = v2[3];
  v58 = __toupper(76);
  if (v58 != __toupper(v57))
  {
    return 1;
  }

  v59 = v2[4];
  v60 = __toupper(73);
  if (v60 != __toupper(v59))
  {
    return 1;
  }

  v61 = v2[5];
  v62 = __toupper(78);
  if (v62 != __toupper(v61))
  {
    return 1;
  }

  v63 = v2[6];
  v64 = __toupper(69);
  if (v64 != __toupper(v63))
  {
    return 1;
  }

  v65 = v2[7];
  v66 = __toupper(95);
  if (v66 != __toupper(v65))
  {
    return 1;
  }

  v67 = v2[8];
  v68 = __toupper(87);
  if (v68 != __toupper(v67))
  {
    return 1;
  }

  v69 = v2[9];
  v70 = __toupper(65);
  if (v70 != __toupper(v69))
  {
    return 1;
  }

  v71 = v2[10];
  v72 = __toupper(84);
  if (v72 != __toupper(v71))
  {
    return 1;
  }

  v73 = v2[11];
  v74 = __toupper(67);
  if (v74 != __toupper(v73))
  {
    return 1;
  }

  v75 = v2[12];
  v76 = __toupper(72);
  if (v76 != __toupper(v75))
  {
    return 1;
  }

  v77 = v2[13];
  v78 = __toupper(79);
  if (v78 != __toupper(v77))
  {
    return 1;
  }

  v79 = v2[14];
  v80 = __toupper(83);
  if (v80 == __toupper(v79))
  {
    LOBYTE(result) = 2;
  }

  else
  {
    LOBYTE(result) = 1;
  }

  return result;
}

uint64_t sub_8AE28@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (result > 1)
  {
    if (result == 2)
    {
      *(a2 + 23) = 15;
      qmemcpy(a2, "offline_watchos", 15);
    }

    else if (result == 3)
    {
      *(a2 + 23) = 4;
      *a2 = 1869903201;
    }
  }

  else if (result)
  {
    if (result == 1)
    {
      *(a2 + 23) = 11;
      *(a2 + 7) = 1936681311;
      *a2 = *"offline_ios";
    }
  }

  else
  {
    *(a2 + 23) = 6;
    *a2 = 1768713839;
    *(a2 + 4) = 25966;
  }

  return result;
}

void sub_8AED8(void *a1@<X0>, char *a2@<X8>)
{
  v2 = a1;
  v4 = *(a1 + 23);
  v6 = *a1;
  v5 = a1[1];
  if ((v4 & 0x80u) == 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (!v7)
  {
    v11 = 0;
    v7 = -1;
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if ((v4 & 0x80u) == 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  v9 = memchr(v8, 47, v7);
  if (v9)
  {
    v10 = v9 - v8 == -1;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_20;
  }

  v12 = v7;
  do
  {
    if (!v12)
    {
      goto LABEL_13;
    }

    v13 = v8[--v12];
  }

  while (v13 != 47);
  v11 = v12 + 1;
LABEL_20:
  while (v7)
  {
    v14 = v8[--v7];
    if (v14 == 46)
    {
      if ((v4 & 0x80) == 0)
      {
        goto LABEL_23;
      }

LABEL_15:
      if (v5 >= v11)
      {
        v4 = v5;
        v2 = v6;
        goto LABEL_24;
      }

LABEL_54:
      sub_49D4();
    }
  }

  v7 = -1;
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_15;
  }

LABEL_23:
  if (v11 > v4)
  {
    goto LABEL_54;
  }

LABEL_24:
  if (v4 - v11 >= v7 - v11)
  {
    v15 = v7 - v11;
  }

  else
  {
    v15 = v4 - v11;
  }

  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v15 >= 0x17)
  {
    operator new();
  }

  v21 = v15;
  if (v15)
  {
    memmove(__dst, v2 + v11, v15);
  }

  *(__dst + v15) = 0;
  v16 = v21;
  if ((v21 & 0x80u) == 0)
  {
    v17 = __dst;
  }

  else
  {
    v17 = __dst[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v18 = v21;
  }

  else
  {
    v18 = __dst[1];
  }

  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a2[23] = v18;
  if (!v18)
  {
    *a2 = 0;
    if ((v16 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_50;
  }

  memmove(a2, v17, v18);
  a2[v18] = 0;
  if (a2[23] >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  do
  {
    *v19++ = __tolower(*v17);
    v17 = (v17 + 1);
    --v18;
  }

  while (v18);
  if ((v21 & 0x80) != 0)
  {
LABEL_50:
    operator delete(__dst[0]);
  }
}

void sub_8B134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if ((a15 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_8B180(void *a1, uint64_t a2, uint64_t *a3)
{
  if (!sub_5FC3C(a1, a2) || *(sub_5F33C(a1, a2) + 2) != 5)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_8B3B8("No valid internal mode found for name ", a2, &v19);
    if ((v21 & 0x80u) == 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if ((v21 & 0x80u) == 0)
    {
      v13 = v21;
    }

    else
    {
      v13 = v20;
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  v6 = sub_5F5AC(a1, a2);
  v18 = 6;
  strcpy(v17, "parent");
  v16 = 0;
  LOBYTE(__p) = 0;
  sub_5FB24(v6, v17, &__p, &v19);
  if (v16 < 0)
  {
    operator delete(__p);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_5:
      v7 = v21;
      if ((v21 & 0x80u) != 0)
      {
        v7 = v20;
      }

      if (!v7)
      {
        goto LABEL_14;
      }

LABEL_13:
      sub_8B180(a1, &v19, a3);
      goto LABEL_14;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v17[0]);
  v8 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v8 = v20;
  }

  if (v8)
  {
    goto LABEL_13;
  }

LABEL_14:
  v9 = a3[1];
  if (v9 >= a3[2])
  {
    v10 = sub_8D2B4(a3, v6);
  }

  else
  {
    sub_5ADDC(a3[1], v6);
    v10 = v9 + 40;
    a3[1] = v9 + 40;
  }

  a3[1] = v10;
  if (v21 < 0)
  {
    operator delete(v19);
  }
}

void sub_8B348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  v29 = v28;
  *(v27 + 8) = v29;
  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8B3B8@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  sub_D7B0(v16);
  v6 = strlen(a1);
  v7 = sub_4A5C(&v17, a1, v6);
  v8 = *(a2 + 23);
  if (v8 >= 0)
  {
    v9 = a2;
  }

  else
  {
    v9 = *a2;
  }

  if (v8 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = *(a2 + 8);
  }

  sub_4A5C(v7, v9, v10);
  if ((v27 & 0x10) != 0)
  {
    v12 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v12 = v23;
    }

    v13 = v22;
    v11 = v12 - v22;
    if (v12 - v22 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v27 & 8) == 0)
    {
      v11 = 0;
      a3[23] = 0;
      goto LABEL_18;
    }

    v13 = v20;
    v11 = v21 - v20;
    if ((v21 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_22:
      sub_3244();
    }
  }

  if (v11 >= 0x17)
  {
    operator new();
  }

  a3[23] = v11;
  if (v11)
  {
    memmove(a3, v13, v11);
  }

LABEL_18:
  a3[v11] = 0;
  v17 = v14;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_8B63C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_8B660(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
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
      sub_8B180(a1, v3, a3);
      v3 += 24;
    }

    while (v3 != v4);
  }
}

BOOL sub_8B6D0(void *a1, void *a2)
{
  if (*a2 == a2[1])
  {
    return 0;
  }

  sub_8AED8(a1, __p);
  v3 = *a2;
  v4 = a2[1];
  if (*a2 == v4)
  {
    v12 = 0;
    if ((v22 & 0x80) != 0)
    {
LABEL_54:
      operator delete(__p[0]);
    }
  }

  else
  {
    do
    {
      while (1)
      {
        v6 = *(v3 + 23);
        if ((v6 & 0x80u) == 0)
        {
          v7 = v3;
        }

        else
        {
          v7 = *v3;
        }

        if ((v6 & 0x80u) != 0)
        {
          v6 = v3[1];
        }

        if (v6)
        {
          v8 = v6;
          v9 = v7;
          while (*v9 != 46)
          {
            ++v9;
            if (!--v8)
            {
              v9 = &v7[v6];
              break;
            }
          }

          if (v9 == &v7[v6])
          {
            v10 = -1;
          }

          else
          {
            v10 = v9 - v7;
          }

          if (v6 >= v10)
          {
            v11 = v10;
          }

          else
          {
            v11 = v6;
          }

          if (v11 >= 0x7FFFFFFFFFFFFFF8)
          {
            sub_3244();
          }
        }

        else
        {
          v11 = 0;
        }

        if (v11 >= 0x17)
        {
          operator new();
        }

        v24 = v11;
        if (v11)
        {
          memmove(__dst, v7, v11);
        }

        v12 = 0;
        *(__dst + v11) = 0;
        v13 = v24;
        if ((v24 & 0x80u) == 0)
        {
          v14 = v24;
        }

        else
        {
          v14 = __dst[1];
        }

        v15 = v22;
        v16 = v22;
        if ((v22 & 0x80u) != 0)
        {
          v15 = __p[1];
        }

        if (v14 == v15)
        {
          if ((v24 & 0x80u) == 0)
          {
            v17 = __dst;
          }

          else
          {
            v17 = __dst[0];
          }

          if ((v22 & 0x80u) == 0)
          {
            v18 = __p;
          }

          else
          {
            v18 = __p[0];
          }

          v12 = memcmp(v17, v18, v14) == 0;
        }

        if (v13 < 0)
        {
          break;
        }

        v3 += 6;
        v5 = v3 == v4 || v12;
        if (v5 == 1)
        {
          goto LABEL_50;
        }
      }

      operator delete(__dst[0]);
      v3 += 6;
      v19 = v3 == v4 || v12;
    }

    while (v19 != 1);
LABEL_50:
    if ((v16 & 0x80) != 0)
    {
      goto LABEL_54;
    }
  }

  return v12;
}

void sub_8B8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_8B908(uint64_t a1, uint64_t *a2)
{
  v6 = 0;
  v7 = 0;
  result = *a2;
  if (*a2)
  {
    result = sub_12217DC(result, a1, &v6);
    v4 = v7;
    if (v7)
    {
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v5 = result;
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
        return v5;
      }
    }
  }

  return result;
}

void sub_8B9BC(void *a1, void *a2)
{
  if (sub_5FC6C(a1))
  {
    return;
  }

  v34 = 14;
  strcpy(__p, "default_region");
  v4 = sub_5FC3C(a1, __p);
  if ((v34 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_49;
  }

  v23 = v4;
  operator delete(__p[0]);
  if (!v23)
  {
LABEL_49:
    v34 = 14;
    strcpy(__p, "default_region");
    v35 = __p;
    v24 = sub_8D76C(a2, __p);
    sub_5FC7C(v24 + 5, a1);
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    v25 = a2[2];
    if (!v25)
    {
      return;
    }

    while (1)
    {
      v26 = (v25 + 2);
      v27 = *(v25 + 39);
      if (v27 < 0)
      {
        if (v25[3] == 14)
        {
          v29 = *v26;
          v30 = *v29;
          v31 = *(v29 + 6);
          if (v30 == 0x5F746C7561666564 && v31 == 0x6E6F696765725F74)
          {
            goto LABEL_54;
          }
        }
      }

      else if (v27 == 14 && *v26 == 0x5F746C7561666564 && *(v25 + 22) == 0x6E6F696765725F74)
      {
        goto LABEL_54;
      }

      sub_60674(v25 + 5, a1);
LABEL_54:
      v25 = *v25;
      if (!v25)
      {
        return;
      }
    }
  }

LABEL_4:
  v34 = 14;
  strcpy(__p, "default_region");
  v5 = sub_5F5AC(a1, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  v34 = 14;
  strcpy(__p, "default_region");
  v35 = __p;
  v6 = sub_8D76C(a2, __p);
  sub_5FC7C(v6 + 5, v5);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = a2[2]; i; i = *i)
  {
    v11 = (i + 2);
    v12 = *(i + 39);
    if (v12 < 0)
    {
      if (i[3] == 14)
      {
        v14 = *v11;
        v15 = *v14;
        v16 = *(v14 + 6);
        if (v15 == 0x5F746C7561666564 && v16 == 0x6E6F696765725F74)
        {
          continue;
        }
      }
    }

    else if (v12 == 14 && *v11 == 0x5F746C7561666564 && *(i + 22) == 0x6E6F696765725F74)
    {
      continue;
    }

    sub_60674(i + 5, v5);
  }

  v8 = sub_588E0(a1);
  v9 = sub_5FC5C();
  if (v8 != v9)
  {
    v10 = v9;
    do
    {
      v18 = v8 + 16;
      v19 = *(v8 + 39);
      if (v19 < 0)
      {
        if (*(v8 + 24) != 14 || (**v18 == 0x5F746C7561666564 ? (v21 = *(*v18 + 6) == 0x6E6F696765725F74) : (v21 = 0), !v21))
        {
LABEL_42:
          if (!sub_8DCBC(a2, v8 + 16))
          {
            v34 = 14;
            strcpy(__p, "default_region");
            if (!sub_8DE74(a2, __p))
            {
              sub_49EC("unordered_map::at: key not found");
            }

            sub_8E02C(a2, v8 + 16);
            if (v34 < 0)
            {
              operator delete(__p[0]);
            }
          }

          __p[0] = (v8 + 16);
          v22 = sub_8E484(a2, v8 + 16);
          sub_5FC7C(v22 + 5, v5);
          if (*(v8 + 48) != 5)
          {
            sub_5AF20();
          }

          sub_5FC7C(v22 + 5, *(v8 + 40));
        }
      }

      else
      {
        if (v19 != 14)
        {
          goto LABEL_42;
        }

        if (*v18 != 0x5F746C7561666564 || *(v8 + 22) != 0x6E6F696765725F74)
        {
          goto LABEL_42;
        }
      }

      v8 = *v8;
    }

    while (v8 != v10);
  }
}

void sub_8BDA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8BDD0(void *a1, void *a2)
{
  if (!a1[3])
  {
    return;
  }

  v22 = 14;
  strcpy(__p, "default_region");
  v4 = sub_8DCBC(a1, __p);
  if (!v4)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  v22 = 14;
  strcpy(__p, "default_region");
  v23 = __p;
  v5 = sub_8D76C(a2, __p);
  sub_5FC7C(v5 + 5, (v4 + 5));
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  for (i = a2[2]; i; i = *i)
  {
    v8 = (i + 2);
    v9 = *(i + 39);
    if (v9 < 0)
    {
      if (i[3] == 14)
      {
        v11 = *v8;
        v12 = *v11;
        v13 = *(v11 + 6);
        if (v12 == 0x5F746C7561666564 && v13 == 0x6E6F696765725F74)
        {
          continue;
        }
      }
    }

    else if (v9 == 14 && *v8 == 0x5F746C7561666564 && *(i + 22) == 0x6E6F696765725F74)
    {
      continue;
    }

    sub_60674(i + 5, (v4 + 5));
  }

  for (j = a1[2]; j; j = *j)
  {
    v17 = j + 2;
    v18 = *(j + 39);
    if (v18 < 0)
    {
      if (j[3] != 14 || (**v17 == 0x5F746C7561666564 ? (v20 = *(*v17 + 6) == 0x6E6F696765725F74) : (v20 = 0), !v20))
      {
LABEL_27:
        if (sub_8DCBC(a2, (j + 2)))
        {
          __p[0] = j + 2;
          v15 = sub_8E484(a2, (j + 2));
          sub_5FC7C(v15 + 5, (v4 + 5));
        }

        else
        {
          v22 = 14;
          strcpy(__p, "default_region");
          if (!sub_8DE74(a2, __p))
          {
            sub_49EC("unordered_map::at: key not found");
          }

          sub_8E02C(a2, (j + 2));
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        __p[0] = j + 2;
        v16 = sub_8E484(a2, (j + 2));
        sub_5FC7C(v16 + 5, (j + 5));
      }
    }

    else
    {
      if (v18 != 14)
      {
        goto LABEL_27;
      }

      if (*v17 != 0x5F746C7561666564 || *(j + 22) != 0x6E6F696765725F74)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_8C08C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_8C0B4(uint64_t a1, uint64_t *a2, void *a3)
{
  if (*a2)
  {
    v19 = 0;
    v20 = 0;
    sub_5F328(v17);
    if (sub_12217DC(*a2, a1, &v19))
    {
      sub_5AAF4(&v19, v15);
      sub_6BA20(v17, v15);
      v6 = __p;
      if (__p)
      {
        do
        {
          v7 = *v6;
          v8 = *(v6 + 12);
          if (v8 != -1)
          {
            (off_262EAE8[v8])(&v21, v6 + 5);
          }

          *(v6 + 12) = -1;
          if (*(v6 + 39) < 0)
          {
            operator delete(v6[2]);
          }

          operator delete(v6);
          v6 = v7;
        }

        while (v7);
      }

      v9 = v15[0];
      v15[0] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    if (!sub_5FC6C(v17))
    {
      sub_8B9BC(v17, a3);
    }

    v10 = v18;
    if (v18)
    {
      do
      {
        v11 = *v10;
        v12 = *(v10 + 12);
        if (v12 != -1)
        {
          (off_262EAE8[v12])(v15, v10 + 5);
        }

        *(v10 + 12) = -1;
        if (*(v10 + 39) < 0)
        {
          operator delete(v10[2]);
        }

        operator delete(v10);
        v10 = v11;
      }

      while (v11);
    }

    v13 = v17[0];
    v17[0] = 0;
    if (v13)
    {
      operator delete(v13);
    }

    v14 = v20;
    if (v20)
    {
      if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }
}

void sub_8C28C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_5C010(va);
  sub_1F1A8(v7 - 72);
  _Unwind_Resume(a1);
}

void sub_8C2C8(void *a1, uint64_t **a2)
{
  sub_8AED8(a1, v36);
  v3 = *a2;
  v30 = a2[1];
  if (*a2 != v30)
  {
    while (1)
    {
      v4 = *(v3 + 23);
      if ((v4 & 0x8000000000000000) != 0)
      {
        v5 = *v3;
        v6 = v3[1];
        if (!v6)
        {
LABEL_20:
          v9 = -1;
          if ((v4 & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v5 = v3;
        v6 = *(v3 + 23);
        if (!*(v3 + 23))
        {
          goto LABEL_20;
        }
      }

      v7 = v5 + v6;
      v8 = v5;
      while (*v8 != 46)
      {
        ++v8;
        if (!--v6)
        {
          v8 = v7;
          break;
        }
      }

      v9 = v8 - v5;
      if (v8 == v7)
      {
        v9 = -1;
      }

      if ((v4 & 0x80000000) == 0)
      {
LABEL_14:
        v10 = v3;
        if (v4 >= v9)
        {
          v11 = v9;
        }

        else
        {
          v11 = *(v3 + 23);
        }

        if (v11 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_81;
        }

        goto LABEL_25;
      }

LABEL_21:
      v10 = *v3;
      if (v3[1] >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = v3[1];
      }

      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_81:
        sub_3244();
      }

LABEL_25:
      if (v11 >= 0x17)
      {
        operator new();
      }

      v35 = v11;
      if (v11)
      {
        memmove(__dst, v10, v11);
      }

      *(__dst + v11) = 0;
      v12 = v35;
      if ((v35 & 0x80u) == 0)
      {
        v13 = v35;
      }

      else
      {
        v13 = __dst[1];
      }

      v14 = v37;
      if ((v37 & 0x80u) != 0)
      {
        v14 = v36[1];
      }

      if (v13 == v14)
      {
        v15 = (v35 & 0x80u) == 0 ? __dst : __dst[0];
        v16 = (v37 & 0x80u) == 0 ? v36 : v36[0];
        if (!memcmp(v15, v16, v13))
        {
          v17 = *(v3 + 23);
          if ((v17 & 0x8000000000000000) != 0)
          {
            v18 = *v3;
            if (v3[1] < 0xD)
            {
              goto LABEL_53;
            }
          }

          else
          {
            v18 = v3;
            if (v17 < 0xD)
            {
              goto LABEL_53;
            }
          }

          v19 = *v18;
          v20 = *(v18 + 5);
          if (v19 != 0x6C616E7265746E69 || v20 != 0x7365646F6D6C616ELL)
          {
LABEL_53:
            if ((v17 & 0x80000000) != 0)
            {
              v22 = *v3;
              v23 = v3[1];
              if (!v23)
              {
                goto LABEL_63;
              }

LABEL_55:
              v24 = memchr(v22, 46, v23);
              if (v24)
              {
                v25 = v24 - v22 + 1;
              }

              else
              {
                v25 = 0;
              }

              if ((v17 & 0x80000000) == 0)
              {
                goto LABEL_59;
              }

LABEL_64:
              v17 = v3[1];
              if (v17 >= v25)
              {
                v26 = *v3;
                v27 = v17 - v25;
                if (v17 - v25 > 0x7FFFFFFFFFFFFFF7)
                {
                  goto LABEL_82;
                }

                goto LABEL_66;
              }
            }

            else
            {
              v22 = v3;
              v23 = *(v3 + 23);
              if (*(v3 + 23))
              {
                goto LABEL_55;
              }

LABEL_63:
              v25 = 0;
              if ((v17 & 0x80000000) != 0)
              {
                goto LABEL_64;
              }

LABEL_59:
              v26 = v3;
              if (v25 <= v17)
              {
                v27 = v17 - v25;
                if (v17 - v25 > 0x7FFFFFFFFFFFFFF7)
                {
LABEL_82:
                  sub_3244();
                }

LABEL_66:
                if (v27 < 0x17)
                {
                  v33 = v27;
                  if (v17 != v25)
                  {
                    memmove(v32, v26 + v25, v27);
                  }

                  *(v32 + v27) = 0;
                  if ((v33 & 0x80u) == 0)
                  {
                    v28 = v32;
                  }

                  else
                  {
                    v28 = v32[0];
                  }

                  if ((v33 & 0x80u) == 0)
                  {
                    v29 = v33;
                  }

                  else
                  {
                    v29 = v32[1];
                  }

                  sub_22174(v28, v29, 0x2Eu, &v31);
                }

                operator new();
              }
            }

            sub_49D4();
          }
        }
      }

      if ((v12 & 0x80) != 0)
      {
        operator delete(__dst[0]);
        v3 += 6;
        if (v3 == v30)
        {
          break;
        }
      }

      else
      {
        v3 += 6;
        if (v3 == v30)
        {
          break;
        }
      }
    }
  }

  if (v37 < 0)
  {
    operator delete(v36[0]);
  }
}

void sub_8CA78(_Unwind_Exception *a1, int a2, char a3, uint64_t a4, void *a5, uint64_t a6, int a7, __int16 a8, char a9, char a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, void *a37, void *__pa, size_t a39, std::string *a40, void *a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54, __int128 a55, std::string::size_type a56)
{
  if (SHIBYTE(a40) < 0)
  {
    operator delete(__pa);
  }

  if (SHIBYTE(a23) < 0)
  {
    operator delete(a21);
    if ((*(v57 - 193) & 0x80000000) == 0)
    {
LABEL_5:
      if ((SHIBYTE(a56) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((*(v57 - 193) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v57 - 216));
  if ((SHIBYTE(a56) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a54 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a55);
  if ((a54 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

LABEL_12:
  operator delete(a49);
  if ((a48 & 0x80000000) == 0)
  {
LABEL_13:
    sub_1A104((v57 - 192));
    if (a2 == 1)
    {
      v60 = __cxa_begin_catch(a1);
      exception = __cxa_allocate_exception(0x40uLL);
      std::operator+<char>();
      sub_30F54(": ", &a43, &a49);
      v62 = *(v57 - 137);
      if (v62 >= 0)
      {
        v63 = (v57 - 160);
      }

      else
      {
        v63 = *(v57 - 160);
      }

      if (v62 >= 0)
      {
        v64 = *(v57 - 137);
      }

      else
      {
        v64 = *(v57 - 152);
      }

      v65 = std::string::append(&a49, v63, v64);
      v66 = *&v65->__r_.__value_.__l.__data_;
      a56 = v65->__r_.__value_.__r.__words[2];
      a55 = v66;
      v65->__r_.__value_.__l.__size_ = 0;
      v65->__r_.__value_.__r.__words[2] = 0;
      v65->__r_.__value_.__r.__words[0] = 0;
      sub_30F54(" with '", &a55, (v57 - 216));
      v69 = *(v56 + 24);
      v68 = v56 + 24;
      v67 = v69;
      v70 = *(v68 + 23);
      if (v70 >= 0)
      {
        v71 = v68;
      }

      else
      {
        v71 = v67;
      }

      if (v70 >= 0)
      {
        v72 = *(v68 + 23);
      }

      else
      {
        v72 = *(v68 + 8);
      }

      v73 = std::string::append((v57 - 216), v71, v72);
      v74 = *&v73->__r_.__value_.__l.__data_;
      *(v57 - 176) = *(&v73->__r_.__value_.__l + 2);
      *(v57 - 192) = v74;
      v73->__r_.__value_.__l.__size_ = 0;
      v73->__r_.__value_.__r.__words[2] = 0;
      v73->__r_.__value_.__r.__words[0] = 0;
      v75 = sub_30F54("'. Exception: ", (v57 - 192), &a21);
      v76 = (*(*v60 + 16))(v60, v75);
      sub_30F54(v76, &a21, &__pa);
      if (SHIBYTE(a40) >= 0)
      {
        p_pa = &__pa;
      }

      else
      {
        p_pa = __pa;
      }

      if (SHIBYTE(a40) >= 0)
      {
        v78 = HIBYTE(a40);
      }

      else
      {
        v78 = a39;
      }

      v79 = sub_2D390(exception, p_pa, v78);
    }

    if (*(v57 - 137) < 0)
    {
      operator delete(*(v57 - 160));
      if ((*(v57 - 113) & 0x80000000) == 0)
      {
LABEL_35:
        if ((*(v57 - 89) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        goto LABEL_39;
      }
    }

    else if ((*(v57 - 113) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    operator delete(*(v57 - 136));
    if ((*(v57 - 89) & 0x80000000) == 0)
    {
LABEL_36:
      _Unwind_Resume(a1);
    }

LABEL_39:
    operator delete(*(v57 - 112));
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a43);
  goto LABEL_13;
}

void sub_8CDF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  if (a36 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((*(v56 - 169) & 0x80000000) == 0)
    {
LABEL_5:
      if ((*(v56 - 193) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v56 - 169) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v56 - 192));
  if ((*(v56 - 193) & 0x80000000) == 0)
  {
LABEL_6:
    if ((a56 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete(*(v56 - 216));
  if ((a56 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete(a51);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a44 & 0x80000000) == 0)
    {
LABEL_15:
      __cxa_end_catch();
      JUMPOUT(0x8CF28);
    }

LABEL_9:
    operator delete(a39);
    goto LABEL_15;
  }

LABEL_14:
  operator delete(a45);
  if ((a44 & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  goto LABEL_9;
}

void sub_8CF80(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v20 = 14;
  strcpy(__p, "default_region");
  v4 = sub_5FC3C(a1, __p);
  if ((v20 & 0x80000000) == 0)
  {
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_26:
    v20 = 14;
    strcpy(__p, "default_region");
    v21 = __p;
    v18 = sub_8D76C(a2, __p);
    sub_6BA20((v18 + 5), a1);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }

    return;
  }

  v17 = v4;
  operator delete(__p[0]);
  if (!v17)
  {
    goto LABEL_26;
  }

LABEL_3:
  v20 = 14;
  strcpy(__p, "default_region");
  v5 = sub_5F404(a1, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = 14;
  strcpy(__p, "default_region");
  v21 = __p;
  v6 = sub_8D76C(a2, __p);
  sub_6BA20((v6 + 5), v5);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  v7 = sub_588E0(a1);
  for (i = sub_5FC5C(); v7 != i; v7 = *v7)
  {
    v9 = *(v7 + 39);
    if (v9 < 0)
    {
      if (*(v7 + 24) != 14)
      {
        goto LABEL_19;
      }

      v10 = *(v7 + 16);
    }

    else
    {
      v10 = (v7 + 16);
      if (v9 != 14)
      {
        goto LABEL_19;
      }
    }

    v11 = *v10;
    v12 = *(v10 + 6);
    if (v11 != 0x5F746C7561666564 || v12 != 0x6E6F696765725F74)
    {
LABEL_19:
      v20 = 14;
      strcpy(__p, "default_region");
      v21 = __p;
      v14 = sub_8D76C(a2, __p);
      v21 = (v7 + 16);
      v15 = sub_8E484(a2, v7 + 16);
      if (v15 != v14)
      {
        *(v15 + 18) = *(v14 + 18);
        sub_618D4((v15 + 5), v14[7], 0);
      }

      if (v20 < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = (v7 + 16);
      v16 = sub_8E484(a2, v7 + 16);
      if (*(v7 + 48) != 5)
      {
        sub_5AF20();
      }

      sub_5FC7C(v16 + 5, *(v7 + 40));
    }
  }
}

void sub_8D260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_8E8D8(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_8D2B4(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x666666666666666)
  {
    sub_1794();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 3) >= 0x333333333333333)
  {
    v5 = 0x666666666666666;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x666666666666666)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 8 * ((a1[1] - *a1) >> 3);
  sub_5ADDC(v11, a2);
  v6 = 40 * v2 + 40;
  v7 = a1[1];
  v8 = v11 + *a1 - v7;
  sub_8D3F0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = v6;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v6;
}

void sub_8D3DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8D5F4(va);
  _Unwind_Resume(a1);
}

void sub_8D3F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = (a2 + v6);
      v9 = a4 + v6;
      v10 = *(a2 + v6);
      v11 = *(a2 + v6 + 8);
      *v8 = 0;
      *v9 = v10;
      *(v9 + 8) = v11;
      v8[1] = 0;
      v12 = *(a2 + v6 + 24);
      v13 = *(a2 + v6 + 16);
      v14 = *(a2 + v6 + 32);
      *(a4 + v6 + 16) = v13;
      *(v9 + 24) = v12;
      *(v9 + 32) = v14;
      if (v12)
      {
        v7 = *(v13 + 8);
        v15 = *(v9 + 8);
        if ((v15 & (v15 - 1)) != 0)
        {
          if (v7 >= v15)
          {
            v7 %= v15;
          }
        }

        else
        {
          v7 &= v15 - 1;
        }

        *(v10 + 8 * v7) = a4 + v6 + 16;
        *(a2 + v6 + 16) = 0;
        *(a2 + v6 + 24) = 0;
      }

      v6 += 40;
    }

    while (a2 + v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v16 = *(v5 + 16);
        if (v16)
        {
          do
          {
            v18 = *v16;
            v19 = *(v16 + 12);
            if (v19 != -1)
            {
              (off_262EAE8[v19])(&v20, v16 + 5);
            }

            *(v16 + 12) = -1;
            if (*(v16 + 39) < 0)
            {
              operator delete(v16[2]);
            }

            operator delete(v16);
            v16 = v18;
          }

          while (v18);
        }

        v17 = *v5;
        *v5 = 0;
        if (v17)
        {
          operator delete(v17);
        }

        v5 += 40;
      }

      while (v5 != a3);
    }
  }
}

void sub_8D548(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    do
    {
      v4 = *v3;
      v5 = *(v3 + 12);
      if (v5 != -1)
      {
        (off_262EAE8[v5])(&v7, v3 + 5);
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

  v6 = *a2;
  *a2 = 0;
  if (v6)
  {
    operator delete(v6);
  }
}

uint64_t sub_8D5F4(uint64_t a1)
{
  sub_8D62C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_8D62C(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 16); i != a2; i = *(a1 + 16))
  {
    v5 = (i - 40);
    *(a1 + 16) = i - 40;
    v6 = *(i - 24);
    if (v6)
    {
      do
      {
        v8 = *v6;
        v9 = *(v6 + 12);
        if (v9 != -1)
        {
          (off_262EAE8[v9])(&v10, v6 + 5);
        }

        *(v6 + 12) = -1;
        if (*(v6 + 39) < 0)
        {
          operator delete(v6[2]);
        }

        operator delete(v6);
        v6 = v8;
      }

      while (v8);
    }

    v7 = *v5;
    *v5 = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }
}

uint64_t sub_8D708(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    for (i = *(a1 + 8); i != v2; sub_8D548(a1, i))
    {
      i -= 40;
    }

    *(a1 + 8) = v2;
    operator delete(*a1);
  }

  return a1;
}

uint64_t **sub_8D76C(void *a1, uint64_t a2)
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

void sub_8DB60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_8DB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8DB9C(uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      sub_8DBE8(v1 + 16);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void sub_8DBE8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262EAE8[v4])(&v6, v2 + 5);
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

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t **sub_8DCBC(void *a1, uint64_t a2)
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

uint64_t **sub_8DE74(void *a1, uint64_t a2)
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
        if (v20 == v8)
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
      if (v16 == v8)
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

uint64_t **sub_8E02C(void *a1, uint64_t a2)
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

void sub_8E434(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_8E448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_8E45C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

uint64_t **sub_8E484(void *a1, uint64_t a2)
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

void sub_8E888(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_8E89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_8E8B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_8E8D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      sub_8DBE8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void sub_8E938(uint64_t a1, __int128 *a2, __int128 *a3, __n128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v126 = a9;
  v127 = a10;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v125 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  if (*(a3 + 23) < 0)
  {
    sub_325C(&v123, *a3, *(a3 + 1));
  }

  else
  {
    v123 = *a3;
    v124 = *(a3 + 2);
  }

  v121 = *a4;
  v122 = a4[1].n128_u64[0];
  a4->n128_u64[1] = 0;
  a4[1].n128_u64[0] = 0;
  a4->n128_u64[0] = 0;
  v16 = sub_2A7DCC(a1 + 48, &v125, &v123, &v121);
  if (SHIBYTE(v122) < 0)
  {
    operator delete(v121.n128_u64[0]);
    if ((SHIBYTE(v124) & 0x80000000) == 0)
    {
LABEL_6:
      v17 = *(&v125 + 1);
      if (!*(&v125 + 1))
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(v124) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v123);
  v17 = *(&v125 + 1);
  if (!*(&v125 + 1))
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17, v16);
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_12:
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 850045863;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  v18 = *a3;
  *(a1 + 296) = *(a3 + 2);
  *(a1 + 280) = v18;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  v19 = *a5;
  *(a1 + 320) = *(a5 + 2);
  *(a1 + 304) = v19;
  *(a5 + 1) = 0;
  *(a5 + 2) = 0;
  *a5 = 0;
  v20 = *a6;
  *(a1 + 344) = *(a6 + 2);
  *(a1 + 328) = v20;
  *(a6 + 1) = 0;
  *(a6 + 2) = 0;
  *a6 = 0;
  *(a1 + 416) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 432) = 1065353216;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = sub_8A86C(a7);
  if (*(a1 + 368) - *(a1 + 352) <= 2uLL)
  {
    operator new();
  }

  v108 = (a1 + 176);
  if (!sub_2A7E14(a1 + 48, 1))
  {
    goto LABEL_44;
  }

  v22 = *(a1 + 360);
  v21 = *(a1 + 368);
  if (v22 >= v21)
  {
    v24 = *(a1 + 352);
    v25 = (v22 - v24);
    v26 = v22 - v24 + 1;
    if (v26 < 0)
    {
      sub_1794();
    }

    v27 = v21 - v24;
    if (2 * v27 > v26)
    {
      v26 = 2 * v27;
    }

    if (v27 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v28 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v28 = v26;
    }

    if (v28)
    {
      operator new();
    }

    v29 = v22 - v24;
    *v25 = 1;
    v23 = v25 + 1;
    memcpy(0, v24, v29);
    *(a1 + 352) = 0;
    *(a1 + 360) = v25 + 1;
    *(a1 + 368) = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  else
  {
    *v22 = 1;
    v23 = v22 + 1;
  }

  *(a1 + 360) = v23;
  if (!sub_7E7E4(2u))
  {
LABEL_44:
    if (!sub_2A7E14(a1 + 48, 0) || *(a1 + 488))
    {
      if (!sub_2A7E14(a1 + 48, 2))
      {
        goto LABEL_133;
      }

      v34 = *(a1 + 360);
      v33 = *(a1 + 368);
      if (v34 >= v33)
      {
        v36 = *(a1 + 352);
        v37 = (v34 - v36);
        v38 = v34 - v36 + 1;
        if (v38 < 0)
        {
          sub_1794();
        }

        v39 = v33 - v36;
        if (2 * v39 > v38)
        {
          v38 = 2 * v39;
        }

        if (v39 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v40 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v40 = v38;
        }

        if (v40)
        {
          operator new();
        }

        v49 = v34 - v36;
        *v37 = 2;
        v35 = v37 + 1;
        memcpy(0, v36, v49);
        *(a1 + 352) = 0;
        *(a1 + 360) = v37 + 1;
        *(a1 + 368) = 0;
        if (v36)
        {
          operator delete(v36);
        }
      }

      else
      {
        *v34 = 2;
        v35 = v34 + 1;
      }

      *(a1 + 360) = v35;
      if (!sub_7E7E4(2u))
      {
LABEL_133:
        if (*(a1 + 352) == *(a1 + 360))
        {
          exception = __cxa_allocate_exception(0x40uLL);
          v106 = sub_2D390(exception, "No configuration source has configuration data available.", 0x39uLL);
        }

        if (*(a1 + 488))
        {
          goto LABEL_198;
        }

        if ((sub_2A7E14(a1 + 48, 0) & 1) != 0 || !sub_7E7E4(1u))
        {
LABEL_159:
          if (!*(a1 + 488) && sub_2A7E14(a1 + 48, 3))
          {
            v76 = *(a1 + 384);
            v75 = *(a1 + 392);
            if (v76 >= v75)
            {
              v78 = *(a1 + 376);
              v79 = (v76 - v78);
              v80 = v76 - v78 + 1;
              if (v80 < 0)
              {
                sub_1794();
              }

              v81 = v75 - v78;
              if (2 * v81 > v80)
              {
                v80 = 2 * v81;
              }

              if (v81 >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v82 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v82 = v80;
              }

              if (v82)
              {
                operator new();
              }

              v83 = v76 - v78;
              *v79 = 3;
              v77 = v79 + 1;
              memcpy(0, v78, v83);
              *(a1 + 376) = 0;
              *(a1 + 384) = v79 + 1;
              *(a1 + 392) = 0;
              if (v78)
              {
                operator delete(v78);
              }
            }

            else
            {
              *v76 = 3;
              v77 = v76 + 1;
            }

            *(a1 + 384) = v77;
            if (sub_7E7E4(2u))
            {
              sub_19594F8(v112);
              sub_4A5C(v112, "Using FB EVModelLayer as source.", 32);
              if ((v120 & 0x10) != 0)
              {
                v85 = v119;
                if (v119 < v116)
                {
                  v119 = v116;
                  v85 = v116;
                }

                v86 = &v115;
              }

              else
              {
                if ((v120 & 8) == 0)
                {
                  v84 = 0;
                  v111 = 0;
LABEL_193:
                  *(&__dst + v84) = 0;
                  sub_7E854(&__dst, 2u);
                  if (v111 < 0)
                  {
                    operator delete(__dst);
                  }

                  if (v118 < 0)
                  {
                    operator delete(__p);
                  }

                  std::locale::~locale(&v112[2]);
                  std::ostream::~ostream();
                  std::ios::~ios();
                  goto LABEL_198;
                }

                v86 = &v113;
                v85 = v114;
              }

              v87 = *v86;
              v84 = v85 - *v86;
              if (v84 > 0x7FFFFFFFFFFFFFF7)
              {
                sub_3244();
              }

              if (v84 >= 0x17)
              {
                operator new();
              }

              v111 = v85 - *v86;
              if (v84)
              {
                memmove(&__dst, v87, v84);
              }

              goto LABEL_193;
            }
          }

LABEL_198:
          v88 = *(a1 + 360);
          v107 = *(a1 + 352);
          if (v88 == v107)
          {
LABEL_238:
            operator new();
          }

          while (1)
          {
            v90 = *--v88;
            sub_2A9B04(a1 + 48, v90, &__dst);
            v92 = __dst;
            v91 = v110;
            if (__dst != v110)
            {
              break;
            }

            if (__dst)
            {
              goto LABEL_233;
            }

LABEL_202:
            if (v88 == v107)
            {
              goto LABEL_238;
            }
          }

          do
          {
            v93 = *(v92 + 23);
            v95 = *v92;
            v94 = v92[1];
            if (v93 >= 0)
            {
              v96 = v92;
            }

            else
            {
              v96 = *v92;
            }

            if (v93 >= 0)
            {
              v97 = *(v92 + 23);
            }

            else
            {
              v97 = v92[1];
            }

            v98 = v96 - 1;
            while (v97)
            {
              v99 = *(v97 + v98);
              v97 = v97 - 1;
              if (v99 == 47)
              {
                v100 = v97 + 1;
                if ((v93 & 0x80000000) != 0)
                {
                  goto LABEL_217;
                }

LABEL_220:
                v94 = *(v92 + 23);
                v95 = v92;
                if (v100 <= v93)
                {
                  goto LABEL_221;
                }

LABEL_240:
                sub_49D4();
              }
            }

            v100 = 0;
            if ((v93 & 0x80000000) == 0)
            {
              goto LABEL_220;
            }

LABEL_217:
            if (v94 < v100)
            {
              goto LABEL_240;
            }

LABEL_221:
            v101 = v94 - v100;
            if (v101 >= v101 - 5)
            {
              v102 = v101 - 5;
            }

            else
            {
              v102 = v101;
            }

            if (v102 > 0x7FFFFFFFFFFFFFF7)
            {
              sub_3244();
            }

            if (v102 >= 0x17)
            {
              operator new();
            }

            HIBYTE(v112[2]) = v102;
            if (v102)
            {
              memmove(v112, v95 + v100, v102);
            }

            *(v112 + v102) = 0;
            sub_9604C(v108, v92);
            sub_9604C(v108, v112);
            if (SHIBYTE(v112[2]) < 0)
            {
              operator delete(v112[0]);
            }

            v92 += 3;
          }

          while (v92 != v91);
          v92 = __dst;
          if (!__dst)
          {
            goto LABEL_202;
          }

LABEL_233:
          v103 = v110;
          v89 = v92;
          if (v110 != v92)
          {
            do
            {
              v104 = *(v103 - 1);
              v103 -= 3;
              if (v104 < 0)
              {
                operator delete(*v103);
              }
            }

            while (v103 != v92);
            v89 = __dst;
          }

          v110 = v92;
          operator delete(v89);
          goto LABEL_202;
        }

        sub_19594F8(v112);
        v67 = sub_4A5C(v112, "No valid JSON root directory provided (", 39);
        v68 = *(a1 + 303);
        if (v68 >= 0)
        {
          v69 = a1 + 280;
        }

        else
        {
          v69 = *(a1 + 280);
        }

        if (v68 >= 0)
        {
          v70 = *(a1 + 303);
        }

        else
        {
          v70 = *(a1 + 288);
        }

        v71 = sub_4A5C(v67, v69, v70);
        sub_4A5C(v71, "). Continuing with FB config layer/file.", 40);
        if ((v120 & 0x10) != 0)
        {
          v73 = v119;
          if (v119 < v116)
          {
            v119 = v116;
            v73 = v116;
          }

          v74 = v115;
          v72 = v73 - v115;
          if (v73 - v115 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_176;
          }
        }

        else
        {
          if ((v120 & 8) == 0)
          {
            v72 = 0;
            v111 = 0;
LABEL_154:
            *(&__dst + v72) = 0;
            sub_7E854(&__dst, 1u);
            if (v111 < 0)
            {
              operator delete(__dst);
            }

            if (v118 < 0)
            {
              operator delete(__p);
            }

            std::locale::~locale(&v112[2]);
            std::ostream::~ostream();
            std::ios::~ios();
            goto LABEL_159;
          }

          v74 = v113;
          v72 = v114 - v113;
          if (v114 - v113 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_176:
            sub_3244();
          }
        }

        if (v72 >= 0x17)
        {
          operator new();
        }

        v111 = v72;
        if (v72)
        {
          memmove(&__dst, v74, v72);
        }

        goto LABEL_154;
      }

      sub_19594F8(v112);
      sub_4A5C(v112, "Using FB config file as configuration source.", 45);
      if ((v120 & 0x10) != 0)
      {
        v51 = v119;
        if (v119 < v116)
        {
          v119 = v116;
          v51 = v116;
        }

        v52 = v115;
        v50 = v51 - v115;
        if (v51 - v115 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_84;
        }
      }

      else
      {
        if ((v120 & 8) == 0)
        {
          v50 = 0;
          v111 = 0;
LABEL_128:
          *(&__dst + v50) = 0;
          sub_7E854(&__dst, 2u);
          if (v111 < 0)
          {
            operator delete(__dst);
          }

          if (v118 < 0)
          {
            operator delete(__p);
          }

          std::locale::~locale(&v112[2]);
          std::ostream::~ostream();
          std::ios::~ios();
          goto LABEL_133;
        }

        v52 = v113;
        v50 = v114 - v113;
        if (v114 - v113 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_84:
          sub_3244();
        }
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      v111 = v50;
      if (!v50)
      {
        goto LABEL_128;
      }

LABEL_127:
      memmove(&__dst, v52, v50);
      goto LABEL_128;
    }

    v42 = *(a1 + 384);
    v41 = *(a1 + 392);
    if (v42 >= v41)
    {
      v44 = *(a1 + 376);
      v45 = (v42 - v44);
      v46 = v42 - v44 + 1;
      if (v46 < 0)
      {
        sub_1794();
      }

      v47 = v41 - v44;
      if (2 * v47 > v46)
      {
        v46 = 2 * v47;
      }

      if (v47 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v48 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v48 = v46;
      }

      if (v48)
      {
        operator new();
      }

      v53 = v42 - v44;
      *v45 = 0;
      v43 = v45 + 1;
      memcpy(0, v44, v53);
      *(a1 + 376) = 0;
      *(a1 + 384) = v45 + 1;
      *(a1 + 392) = 0;
      if (v44)
      {
        operator delete(v44);
      }
    }

    else
    {
      *v42 = 0;
      v43 = v42 + 1;
    }

    *(a1 + 384) = v43;
    v55 = *(a1 + 360);
    v54 = *(a1 + 368);
    if (v55 >= v54)
    {
      v57 = *(a1 + 352);
      v58 = (v55 - v57);
      v59 = v55 - v57 + 1;
      if (v59 < 0)
      {
        sub_1794();
      }

      v60 = v54 - v57;
      if (2 * v60 > v59)
      {
        v59 = 2 * v60;
      }

      if (v60 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v61 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v61 = v59;
      }

      if (v61)
      {
        operator new();
      }

      v62 = v55 - v57;
      *v58 = 0;
      v56 = v58 + 1;
      memcpy(0, v57, v62);
      *(a1 + 352) = 0;
      *(a1 + 360) = v58 + 1;
      *(a1 + 368) = 0;
      if (v57)
      {
        operator delete(v57);
      }
    }

    else
    {
      *v55 = 0;
      v56 = v55 + 1;
    }

    *(a1 + 360) = v56;
    if (!sub_7E7E4(2u))
    {
LABEL_116:
      if (!sub_7E7E4(2u))
      {
        goto LABEL_133;
      }

      sub_19594F8(v112);
      sub_4A5C(v112, "Using JSON files as EV configuration source.", 44);
      if ((v120 & 0x10) != 0)
      {
        v66 = v119;
        if (v119 < v116)
        {
          v119 = v116;
          v66 = v116;
        }

        v52 = v115;
        v50 = v66 - v115;
        if (v66 - v115 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_174;
        }
      }

      else
      {
        if ((v120 & 8) == 0)
        {
          v50 = 0;
          v111 = 0;
          goto LABEL_128;
        }

        v52 = v113;
        v50 = v114 - v113;
        if (v114 - v113 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_174:
          sub_3244();
        }
      }

      if (v50 >= 0x17)
      {
        operator new();
      }

      v111 = v50;
      if (!v50)
      {
        goto LABEL_128;
      }

      goto LABEL_127;
    }

    sub_19594F8(v112);
    sub_4A5C(v112, "Using JSON files as configuration source.", 41);
    if ((v120 & 0x10) != 0)
    {
      v64 = v119;
      if (v119 < v116)
      {
        v119 = v116;
        v64 = v116;
      }

      v65 = v115;
      v63 = v64 - v115;
      if (v64 - v115 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_172;
      }
    }

    else
    {
      if ((v120 & 8) == 0)
      {
        v63 = 0;
        v111 = 0;
LABEL_111:
        *(&__dst + v63) = 0;
        sub_7E854(&__dst, 2u);
        if (v111 < 0)
        {
          operator delete(__dst);
        }

        if (v118 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v112[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_116;
      }

      v65 = v113;
      v63 = v114 - v113;
      if (v114 - v113 > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_172:
        sub_3244();
      }
    }

    if (v63 >= 0x17)
    {
      operator new();
    }

    v111 = v63;
    if (v63)
    {
      memmove(&__dst, v65, v63);
    }

    goto LABEL_111;
  }

  sub_19594F8(v112);
  sub_4A5C(v112, "Using FB config layer as configuration source.", 46);
  if ((v120 & 0x10) != 0)
  {
    v31 = v119;
    if (v119 < v116)
    {
      v119 = v116;
      v31 = v116;
    }

    v32 = v115;
    v30 = v31 - v115;
    if (v31 - v115 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_82;
    }
  }

  else
  {
    if ((v120 & 8) == 0)
    {
      v30 = 0;
      v111 = 0;
LABEL_39:
      *(&__dst + v30) = 0;
      sub_7E854(&__dst, 2u);
      if (v111 < 0)
      {
        operator delete(__dst);
      }

      if (v118 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v112[2]);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_44;
    }

    v32 = v113;
    v30 = v114 - v113;
    if (v114 - v113 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_82:
      sub_3244();
    }
  }

  if (v30 >= 0x17)
  {
    operator new();
  }

  v111 = v30;
  if (v30)
  {
    memmove(&__dst, v32, v30);
  }

  goto LABEL_39;
}

void sub_90270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a34);
  sub_1AA90((a12 + 328));
  sub_91868((a12 + 304));
  sub_8E8D8(a9);
  v40 = *(a14 + 376);
  if (v40)
  {
    *(a14 + 384) = v40;
    operator delete(v40);
    v41 = *(a12 + 216);
    if (!v41)
    {
LABEL_5:
      if (*(a14 + 351) < 0)
      {
        goto LABEL_6;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v41 = *(a12 + 216);
    if (!v41)
    {
      goto LABEL_5;
    }
  }

  *(a14 + 360) = v41;
  operator delete(v41);
  if (*(a14 + 351) < 0)
  {
LABEL_6:
    operator delete(*(a12 + 192));
    if ((*(a14 + 327) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_12:
  if ((*(a14 + 327) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a14 + 303) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

LABEL_13:
  operator delete(*(a12 + 168));
  if ((*(a14 + 303) & 0x80000000) == 0)
  {
LABEL_9:
    std::mutex::~mutex(a10);
    sub_2CD04(a15);
    sub_918A4(a12);
    sub_918E0(a14 + 48);
    sub_919A4(a14);
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(*a11);
  goto LABEL_9;
}

uint64_t **sub_90534(uint64_t a1, std::string::size_type a2, uint64_t *a3)
{
  v4 = sub_92F4C(a1, a2);
  v5 = *a3;
  v6 = a3[1];
  if (v5 != v6)
  {
    while (!sub_8DCBC(v4, v5))
    {
      v5 += 24;
      if (v5 == v6)
      {
        goto LABEL_4;
      }
    }

    v7 = sub_8DCBC(v4, v5);
    if (!v7)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    return v7 + 5;
  }

LABEL_4:
  v11 = 14;
  strcpy(__p, "default_region");
  v7 = sub_8DCBC(v4, __p);
  if (!v7)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  if ((v11 & 0x80000000) == 0)
  {
    return v7 + 5;
  }

  v9 = v7;
  operator delete(__p[0]);
  return v9 + 5;
}

void sub_90628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_90644(uint64_t a1)
{
  *v64 = 0u;
  *v65 = 0u;
  v66 = 1065353216;
  v1 = *(a1 + 360);
  v60 = *(a1 + 352);
  v61 = a1;
  if (v1 != v60)
  {
    qmemcpy(v59, "al_modesinternal", sizeof(v59));
    while (1)
    {
      v2 = *(v1 - 1);
      v1 = (v1 - 1);
      HIBYTE(__p[2]) = 14;
      __p[0] = v59[1];
      *(__p + 6) = v59[0];
      BYTE6(__p[1]) = 0;
      sub_2A9168(v61 + 48, __p, v2, &v77);
      if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
      {
        v3 = v78;
        if (v78)
        {
          goto LABEL_11;
        }

LABEL_8:
        sub_93DC0(&v77, 0);
        v4 = v77;
        *&v77 = 0;
        if (v4)
        {
          goto LABEL_47;
        }

        goto LABEL_3;
      }

      operator delete(__p[0]);
      v3 = v78;
      if (!v78)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_11:
        if (v3[39] < 0)
        {
          if (*(v3 + 3) == 12)
          {
            v8 = *(v3 + 2);
            v9 = *v8;
            v10 = *(v8 + 2);
            if (v9 == 0x5F656E696C66666FLL && v10 == 1701080941)
            {
              goto LABEL_42;
            }
          }

          v12 = *(v3 + 2);
          v13 = *(v3 + 3);
          if (v13 != 18 || (*v12 == 0x5F656E696C66666FLL ? (v14 = v12[1] == 0x6F6D5F616E696863) : (v14 = 0), v14 ? (v15 = *(v12 + 8) == 25956) : (v15 = 0), !v15))
          {
            sub_325C(__p, v12, v13);
            goto LABEL_44;
          }
        }

        else
        {
          v5 = v3[39];
          if (v5 == 12)
          {
            if (*(v3 + 2) != 0x5F656E696C66666FLL || *(v3 + 6) != 1701080941)
            {
LABEL_41:
              *__p = *(v3 + 1);
              __p[2] = *(v3 + 4);
              goto LABEL_44;
            }

LABEL_42:
            HIBYTE(__p[2]) = 16;
            strcpy(__p, "offline_ios_mode");
            goto LABEL_44;
          }

          if (v5 != 18)
          {
            goto LABEL_41;
          }

          v6 = *(v3 + 2) == 0x5F656E696C66666FLL && *(v3 + 3) == 0x6F6D5F616E696863;
          if (!v6 || *(v3 + 16) != 25956)
          {
            goto LABEL_41;
          }
        }

        strcpy(__p, "offline_china_ios_mode");
        HIBYTE(__p[2]) = 22;
LABEL_44:
        v67[0] = __p;
        v17 = sub_957C4(v64, __p);
        sub_8BDD0(v3 + 5, v17 + 5);
        if (SHIBYTE(__p[2]) < 0)
        {
          operator delete(__p[0]);
        }

        v3 = *v3;
      }

      while (v3);
      sub_93DC0(&v77, v78);
      v4 = v77;
      *&v77 = 0;
      if (v4)
      {
LABEL_47:
        operator delete(v4);
      }

LABEL_3:
      if (v1 == v60)
      {
        prime = vcvtps_u32_f32(v65[1] / *(v61 + 432));
        v19 = prime - 1;
        if (prime == 1)
        {
          goto LABEL_49;
        }

LABEL_51:
        if ((prime & v19) != 0)
        {
          prime = std::__next_prime(prime);
        }

        goto LABEL_53;
      }
    }
  }

  prime = vcvtps_u32_f32(0.0 / *(v61 + 432));
  v19 = prime - 1;
  if (prime != 1)
  {
    goto LABEL_51;
  }

LABEL_49:
  prime = 2;
LABEL_53:
  v20 = *(v61 + 408);
  if (prime > *&v20)
  {
    goto LABEL_54;
  }

  if (prime < *&v20)
  {
    v21 = vcvtps_u32_f32(*(v61 + 424) / *(v61 + 432));
    if (*&v20 < 3uLL || (v22 = vcnt_s8(v20), v22.i16[0] = vaddlv_u8(v22), v22.u32[0] > 1uLL))
    {
      v21 = std::__next_prime(v21);
    }

    else
    {
      v23 = 1 << -__clz(v21 - 1);
      if (v21 >= 2)
      {
        v21 = v23;
      }
    }

    if (prime <= v21)
    {
      prime = v21;
    }

    if (prime < *&v20)
    {
LABEL_54:
      sub_B07C(v61 + 400, prime);
    }
  }

  v24 = v65[0];
  if (v65[0])
  {
    v60 = v81;
    do
    {
      if (v24[39] < 0)
      {
        sub_325C(v67, *(v24 + 2), *(v24 + 3));
      }

      else
      {
        *v67 = *(v24 + 1);
        v68 = *(v24 + 4);
      }

      sub_945B0(v69, (v24 + 40));
      v84 = 14;
      strcpy(v83, "default_region");
      v25 = sub_8DCBC(v69, v83);
      if (!v25)
      {
        sub_49EC("unordered_map::at: key not found");
      }

      if (SHIBYTE(v68) < 0)
      {
        sub_325C(__p, v67[0], v67[1]);
      }

      else
      {
        *__p = *v67;
        __p[2] = v68;
      }

      sub_5ADDC(&v72, (v25 + 5));
      if (v84 < 0)
      {
        operator delete(v83[0]);
      }

      v77 = *__p;
      memset(__p, 0, sizeof(__p));
      v26 = v72;
      v27 = v73;
      v72 = 0;
      v73 = 0;
      v78 = __p[2];
      v79 = v26;
      v80 = v27;
      v81[0] = v74;
      v81[1] = v75;
      v82 = v76;
      if (v75)
      {
        v28 = *(v74 + 1);
        if ((v27 & (v27 - 1)) != 0)
        {
          if (v28 >= v27)
          {
            v28 %= v27;
          }
        }

        else
        {
          v28 &= v27 - 1;
        }

        v26[v28] = v60;
        v74 = 0;
        v75 = 0;
      }

      sub_96518((v61 + 400), &v77);
      v29 = v81[0];
      if (v81[0])
      {
        do
        {
          v32 = *v29;
          v33 = *(v29 + 12);
          if (v33 != -1)
          {
            (off_262EB50[v33])(v83, v29 + 5);
          }

          *(v29 + 12) = -1;
          if (*(v29 + 39) < 0)
          {
            operator delete(v29[2]);
          }

          operator delete(v29);
          v29 = v32;
        }

        while (v32);
      }

      v30 = v79;
      v79 = 0;
      if (v30)
      {
        operator delete(v30);
      }

      if (SHIBYTE(v78) < 0)
      {
        operator delete(v77);
        v31 = v74;
        if (!v74)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v31 = v74;
        if (!v74)
        {
          goto LABEL_95;
        }
      }

      do
      {
        v36 = *v31;
        v37 = *(v31 + 12);
        if (v37 != -1)
        {
          (off_262EB50[v37])(v83, v31 + 5);
        }

        *(v31 + 12) = -1;
        if (*(v31 + 39) < 0)
        {
          operator delete(v31[2]);
        }

        operator delete(v31);
        v31 = v36;
      }

      while (v36);
LABEL_95:
      v34 = v72;
      v72 = 0;
      if (v34)
      {
        operator delete(v34);
      }

      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
        v35 = v70;
        if (v70)
        {
          do
          {
LABEL_111:
            v39 = *v35;
            v40 = *(v35 + 7);
            if (v40)
            {
              do
              {
                v42 = *v40;
                v43 = *(v40 + 12);
                if (v43 != -1)
                {
                  (off_262EB50[v43])(v83, v40 + 5);
                }

                *(v40 + 12) = -1;
                if (*(v40 + 39) < 0)
                {
                  operator delete(v40[2]);
                }

                operator delete(v40);
                v40 = v42;
              }

              while (v42);
            }

            v41 = *(v35 + 5);
            *(v35 + 5) = 0;
            if (v41)
            {
              operator delete(v41);
            }

            if (v35[39] < 0)
            {
              operator delete(*(v35 + 2));
            }

            operator delete(v35);
            v35 = v39;
          }

          while (v39);
        }
      }

      else
      {
        v35 = v70;
        if (v70)
        {
          goto LABEL_111;
        }
      }

      v38 = v69[0];
      v69[0] = 0;
      if (v38)
      {
        operator delete(v38);
      }

      if (SHIBYTE(v68) < 0)
      {
        operator delete(v67[0]);
      }

      v24 = *v24;
    }

    while (v24);
  }

  v44 = *(v61 + 24);
  v60 = (v61 + 24);
  if (v44 != *(v61 + 32))
  {
    sub_5F328(&v77);
    for (i = *(v61 + 416); i; i = *i)
    {
      v46 = sub_588E0((i + 5));
      v47 = sub_5FC5C();
      while (v46 != v47)
      {
        if (*(v46 + 48) == 5)
        {
          if ((*(v46 + 39) & 0x80000000) == 0)
          {
            *v62 = *(v46 + 16);
            v63 = *(v46 + 32);
            goto LABEL_132;
          }

          sub_325C(v62, *(v46 + 16), *(v46 + 24));
          if (*(v46 + 48) == 5)
          {
LABEL_132:
            v48 = *(v46 + 40);
            HIBYTE(__p[2]) = 12;
            strcpy(__p, "environments");
            v49 = sub_5FC3C(v48, __p);
            v50 = *(v46 + 48);
            if (v49)
            {
              if (v50 != 5)
              {
                sub_5AF20();
              }

              v51 = *(v46 + 40);
              HIBYTE(v68) = 6;
              strcpy(v67, "values");
              sub_5F5AC(v51, v67);
LABEL_137:
              operator new();
            }

            if (v50 == 5)
            {
              goto LABEL_137;
            }
          }

          sub_5AF20();
        }

        v46 = *v46;
      }
    }

    sub_8B660(&v77, v60, __p);
    v52 = v61 + 440;
    v53 = *(v61 + 440);
    if (v53)
    {
      sub_936DC(v61 + 440, v53);
      operator delete(*v52);
      *v52 = 0;
      *(v52 + 8) = 0;
      *(v52 + 16) = 0;
    }

    *v52 = *__p;
    *(v61 + 456) = __p[2];
    v54 = v78;
    if (v78)
    {
      do
      {
        v55 = *v54;
        v56 = *(v54 + 12);
        if (v56 != -1)
        {
          (off_262EB50[v56])(__p, v54 + 40);
        }

        *(v54 + 12) = -1;
        if (v54[39] < 0)
        {
          operator delete(*(v54 + 2));
        }

        operator delete(v54);
        v54 = v55;
      }

      while (v55);
    }

    v57 = v77;
    *&v77 = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  sub_93DC0(v64, v65[0]);
  v58 = v64[0];
  v64[0] = 0;
  if (v58)
  {
    operator delete(v58);
  }
}

void sub_90FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  sub_6BB60(v44 - 192);
  sub_918A4(&a22);
  _Unwind_Resume(a1);
}

void sub_91160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  sub_918A4(v38 - 192);
  sub_918A4(&a19);
  _Unwind_Resume(a1);
}

char *sub_91190()
{
  result = getenv("CONFIG_OVERRIDES");
  if (result)
  {
    v1 = result;
    v2 = strlen(result);
    sub_22174(v1, v2, 0x26u, &v3);
  }

  return result;
}

void sub_91790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  sub_1AB28(&__p);
  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_917E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_91808(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10)
{
  __cxa_free_exception(v10);
  sub_1A104(&a10);
  _Unwind_Resume(a1);
}

void sub_91824(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    JUMPOUT(0x91834);
  }

  JUMPOUT(0x91838);
}

void **sub_91868(void **a1)
{
  if (*a1)
  {
    sub_936DC(a1, *a1);
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_918A4(uint64_t a1)
{
  sub_93DC0(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_918E0(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    if ((*(a1 + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 39) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      operator delete(*(a1 + 16));
      v2 = *(a1 + 8);
      if (!v2)
      {
        return a1;
      }

      goto LABEL_9;
    }
  }

  else if ((*(a1 + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 40));
  if (*(a1 + 39) < 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v2 = *(a1 + 8);
  if (!v2)
  {
    return a1;
  }

LABEL_9:
  if (atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  return a1;
}

void ***sub_919A4(void ***a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[4];
    v4 = a1[3];
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
      v4 = a1[3];
    }

    a1[4] = v2;
    operator delete(v4);
  }

  v6 = *a1;
  if (*a1)
  {
    v7 = a1[1];
    v8 = *a1;
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *a1;
    }

    a1[1] = v6;
    operator delete(v8);
  }

  return a1;
}

void sub_91A60(__int128 *a1@<X0>, uint64_t **a2@<X1>, __int128 *a3@<X2>, const void **a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  if (*(a3 + 23) < 0)
  {
    if (*(a3 + 1))
    {
      sub_325C(&v48, *a3, *(a3 + 1));
      goto LABEL_8;
    }
  }

  else if (*(a3 + 23))
  {
    v48 = *a3;
    v49 = *(a3 + 2);
    goto LABEL_8;
  }

  sub_724C8(&v35);
  v15 = std::string::append(&v35, "/etc/", 5uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v49 = v15->__r_.__value_.__r.__words[2];
  v48 = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_8:
  memset(&v47, 0, sizeof(v47));
  memset(&v46, 0, sizeof(v46));
  memset(&v45, 0, sizeof(v45));
  v17 = *a2;
  if (!*a2)
  {
    goto LABEL_50;
  }

  *(&v35.__r_.__value_.__s + 23) = 21;
  strcpy(&v35, "json_config_root_path");
  sub_937B0(v17, &v35, &__dst);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((SHIBYTE(v47.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v47.__r_.__value_.__l.__data_);
LABEL_11:
  v47 = __dst;
  v18 = *a2;
  strcpy(&v35, "localization_root_path");
  *(&v35.__r_.__value_.__s + 23) = 22;
  sub_937B0(v18, &v35, &__dst);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(v45.__r_.__value_.__l.__data_);
LABEL_13:
  v45 = __dst;
  if (sub_74788(&v47))
  {
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      if (v47.__r_.__value_.__l.__size_ != 1 || *v47.__r_.__value_.__l.__data_ != 47)
      {
LABEL_50:
        size = HIBYTE(v47.__r_.__value_.__r.__words[2]);
        if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v47.__r_.__value_.__l.__size_;
        }

        if (!size)
        {
LABEL_53:
          *(&__dst.__r_.__value_.__s + 23) = 1;
          strcpy(&__dst, "/");
          sub_922B8(&__dst, &v48, off_262EB30, &v35);
          if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v47.__r_.__value_.__l.__data_);
          }

          v47 = v35;
          *(&v35.__r_.__value_.__s + 23) = 0;
          v35.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

LABEL_61:
        v28 = HIBYTE(v45.__r_.__value_.__r.__words[2]);
        if ((v45.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v28 = v45.__r_.__value_.__l.__size_;
        }

        if (!v28)
        {
          *(&__dst.__r_.__value_.__s + 23) = 1;
          strcpy(&__dst, "/");
          sub_922B8(&__dst, &v48, off_262EB38, &v35);
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v45.__r_.__value_.__l.__data_);
          }

          v45 = v35;
          *(&v35.__r_.__value_.__s + 23) = 0;
          v35.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        v29 = *(a4 + 23);
        v30 = v29;
        if ((v29 & 0x80u) != 0)
        {
          v29 = a4[1];
        }

        if (&v45 != a4 && v29)
        {
          if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v30 >= 0)
            {
              v31 = a4;
            }

            else
            {
              v31 = *a4;
            }

            sub_13B38(&v45, v31, v29);
          }

          else if (v30 < 0)
          {
            sub_13A68(&v45, *a4, a4[1]);
          }

          else
          {
            v45 = *a4;
          }
        }

        v32 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
        v33 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
        if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v32 = v46.__r_.__value_.__l.__size_;
        }

        if (!v32)
        {
          *(&__dst.__r_.__value_.__s + 23) = 1;
          strcpy(&__dst, "/");
          sub_922B8(&__dst, &v48, off_262EB40, &v35);
          if (v33 < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          v46 = v35;
          *(&v35.__r_.__value_.__s + 23) = 0;
          v35.__r_.__value_.__s.__data_[0] = 0;
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        *(&__dst.__r_.__value_.__s + 23) = 1;
        strcpy(&__dst, "/");
        sub_922B8(&__dst, &v48, &off_262EB48, &v35);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        sub_8E938(a8, a1, &v47, &v35, &v45, &v46, a5, v34, a6, a7);
      }
    }

    else if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) != 1 || v47.__r_.__value_.__s.__data_[0] != 47)
    {
      goto LABEL_50;
    }
  }

  if (!sub_7E7E4(1u))
  {
LABEL_47:
    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      *v47.__r_.__value_.__l.__data_ = 0;
      v47.__r_.__value_.__l.__size_ = 0;
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }
    }

    else
    {
      v47.__r_.__value_.__s.__data_[0] = 0;
      *(&v47.__r_.__value_.__s + 23) = 0;
      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_49:
        v45.__r_.__value_.__s.__data_[0] = 0;
        *(&v45.__r_.__value_.__s + 23) = 0;
        goto LABEL_50;
      }
    }

    *v45.__r_.__value_.__l.__data_ = 0;
    v45.__r_.__value_.__l.__size_ = 0;
    v27 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
    if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v27 = v47.__r_.__value_.__l.__size_;
    }

    if (!v27)
    {
      goto LABEL_53;
    }

    goto LABEL_61;
  }

  sub_19594F8(&v35);
  v19 = sub_4A5C(&v35, "Invalid JSON root directory provided via service config (", 57);
  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v47;
  }

  else
  {
    v20 = v47.__r_.__value_.__r.__words[0];
  }

  if ((v47.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v47.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v47.__r_.__value_.__l.__size_;
  }

  v22 = sub_4A5C(v19, v20, v21);
  sub_4A5C(v22, "). Falling back to project defaults for JSON root dir and localization root dir.", 80);
  if ((v43 & 0x10) != 0)
  {
    v24 = v42;
    if (v42 < v39)
    {
      v42 = v39;
      v24 = v39;
    }

    v25 = v38;
    v23 = v24 - v38;
    if (v24 - v38 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_91;
    }
  }

  else
  {
    if ((v43 & 8) == 0)
    {
      v23 = 0;
      *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_42:
      __dst.__r_.__value_.__s.__data_[v23] = 0;
      sub_7E854(&__dst, 1u);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      if (v41 < 0)
      {
        operator delete(__p);
      }

      std::locale::~locale(&v35.__r_.__value_.__r.__words[2]);
      std::ostream::~ostream();
      std::ios::~ios();
      goto LABEL_47;
    }

    v25 = v36;
    v23 = v37 - v36;
    if ((v37 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_91:
      sub_3244();
    }
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v23;
  if (v23)
  {
    memmove(&__dst, v25, v23);
  }

  goto LABEL_42;
}

void sub_921CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 - 225) < 0)
  {
    operator delete(*(v3 - 248));
  }

  sub_1959728(va);
  if (*(v3 - 201) < 0)
  {
    operator delete(*(v3 - 224));
    if ((*(v3 - 169) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((*(v3 - 169) & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v3 - 137) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  operator delete(*(v3 - 192));
  if (*(v3 - 137) < 0)
  {
LABEL_6:
    operator delete(*(v3 - 160));
    if ((*(v3 - 105) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:
    operator delete(*(v3 - 128));
LABEL_12:
    _Unwind_Resume(a1);
  }

LABEL_10:
  if ((*(v3 - 105) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

void sub_922B8(uint64_t a1@<X0>, const void **a2@<X1>, const char **a3@<X2>, std::string *a4@<X8>)
{
  v7 = *a3;
  v8 = strlen(*a3);
  if (v8 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v27 = v8;
  if (v8)
  {
    memmove(&__dst, v7, v8);
  }

  *(&__dst + v9) = 0;
  v10 = *(a2 + 23);
  v11 = v10;
  v12 = a2[1];
  if ((v10 & 0x80u) == 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = a2[1];
  }

  if (!v13)
  {
    goto LABEL_16;
  }

  v14 = v27;
  if ((v27 & 0x80u) != 0)
  {
    v14 = v26;
  }

  if (v14)
  {
    if (*(a1 + 23) < 0)
    {
      sub_325C(__p, *a1, *(a1 + 8));
      v10 = *(a2 + 23);
      v12 = a2[1];
      v11 = *(a2 + 23);
    }

    else
    {
      *__p = *a1;
      v24 = *(a1 + 16);
    }
  }

  else
  {
LABEL_16:
    HIBYTE(v24) = 0;
    LOBYTE(__p[0]) = 0;
  }

  if (v11 >= 0)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (v24 >= 0)
  {
    v16 = HIBYTE(v24);
  }

  else
  {
    v16 = __p[1];
  }

  if (v16 + v15 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_3244();
  }

  if (v16 + v15 > 0x16)
  {
    operator new();
  }

  memset(&v22, 0, sizeof(v22));
  *(&v22.__r_.__value_.__s + 23) = v16 + v15;
  if (v15)
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    memmove(&v22, v17, v15);
  }

  if (v16)
  {
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    memmove(&v22 + v15, v18, v16);
  }

  v22.__r_.__value_.__s.__data_[v15 + v16] = 0;
  if ((v27 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  if ((v27 & 0x80u) == 0)
  {
    v20 = v27;
  }

  else
  {
    v20 = v26;
  }

  v21 = std::string::append(&v22, p_dst, v20);
  *a4 = *v21;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
LABEL_44:
      if ((v27 & 0x80000000) == 0)
      {
        return;
      }

LABEL_48:
      operator delete(__dst);
      return;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_44;
  }

  operator delete(__p[0]);
  if (v27 < 0)
  {
    goto LABEL_48;
  }
}

void sub_92550(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if ((a27 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void sub_925C4(uint64_t a1@<X8>)
{
  sub_724C8(&v17);
  v2 = std::string::append(&v17, "/etc/", 5uLL);
  v18 = *v2;
  v2->__r_.__value_.__l.__size_ = 0;
  v2->__r_.__value_.__r.__words[2] = 0;
  v2->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  v16 = 0uLL;
  v3 = SHIBYTE(v18.__r_.__value_.__r.__words[2]);
  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  if (size + 7 <= 0x7FFFFFFFFFFFFFF7)
  {
    if (size + 7 >= 0x17)
    {
      operator new();
    }

    memset(&v17, 0, sizeof(v17));
    *(&v17.__r_.__value_.__s + 23) = size + 7;
    if (size)
    {
      if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v5 = &v18;
      }

      else
      {
        v5 = v18.__r_.__value_.__r.__words[0];
      }

      memmove(&v17, v5, size);
      strcpy(&v17 + size, "/config");
      if (size + 27 > 0x7FFFFFFFFFFFFFF7)
      {
        sub_3244();
      }

      if (size + 27 <= 0x16)
      {
        v15 = 0;
        __dst = 0uLL;
        HIBYTE(v15) = size + 27;
        if (v3 >= 0)
        {
          v6 = &v18;
        }

        else
        {
          v6 = v18.__r_.__value_.__r.__words[0];
        }

        memmove(&__dst, v6, size);
        strcpy(&__dst + size, "/config-generated/config.fb");
        if (size + 11 > 0x16)
        {
          operator new();
        }

        v12[1] = 0;
        v13 = 0;
        v12[0] = 0;
        HIBYTE(v13) = size + 11;
        if (v3 >= 0)
        {
          v7 = &v18;
        }

        else
        {
          v7 = v18.__r_.__value_.__r.__words[0];
        }

        memmove(v12, v7, size);
        strcpy(v12 + size, "/Translated");
        if (size + 5 <= 0x7FFFFFFFFFFFFFF7)
        {
          if (size + 5 > 0x16)
          {
            operator new();
          }

          __p[1] = 0;
          v11 = 0;
          __p[0] = 0;
          HIBYTE(v11) = size + 5;
          if (v3 >= 0)
          {
            v8 = &v18;
          }

          else
          {
            v8 = v18.__r_.__value_.__r.__words[0];
          }

          memmove(__p, v8, size);
          strcpy(__p + size, "/data");
          sub_8E938(a1, &v16, &v17, &__dst, v12, __p, 3, v9, 0, 0);
        }

        sub_3244();
      }
    }

    else
    {
      strcpy(&v17, "/config");
    }

    operator new();
  }

  sub_3244();
}

void sub_92A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a36 & 0x80000000) == 0)
    {
LABEL_3:
      sub_1F1A8(&a29);
      if ((v36 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(*(v37 - 96));
      goto LABEL_8;
    }
  }

  else if ((a36 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a31);
  sub_1F1A8(&a29);
  if ((v36 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t sub_92B04(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_93C8C(a1 + 48, a2 + 48);
  *(a1 + 136) = 0u;
  v4 = (a1 + 136);
  *(a1 + 152) = 0u;
  *(a1 + 168) = 1065353216;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 1065353216;
  *(a1 + 216) = 850045863;
  *(a1 + 304) = 0u;
  v5 = (a1 + 304);
  *(a1 + 352) = 0u;
  v6 = (a1 + 352);
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 3;
  v7 = *(sub_74700() + 2);
  *(sub_74700() + 2) = 0;
  std::mutex::lock((a2 + 216));
  if (*(a1 + 160))
  {
    sub_93DC0(a1 + 136, *(a1 + 152));
    *(a1 + 152) = 0;
    v8 = *(a1 + 144);
    if (v8)
    {
      bzero(*v4, 8 * v8);
    }

    *(a1 + 160) = 0;
  }

  v9 = *(a2 + 136);
  *(a2 + 136) = 0;
  v10 = *v4;
  *v4 = v9;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = *(a2 + 152);
  v12 = *(a2 + 144);
  *(a1 + 152) = v11;
  *(a1 + 144) = v12;
  *(a2 + 144) = 0;
  v13 = *(a2 + 160);
  *(a1 + 160) = v13;
  *(a1 + 168) = *(a2 + 168);
  if (v13)
  {
    v14 = *(v11 + 8);
    v15 = *(a1 + 144);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*v4 + v14) = a1 + 152;
    *(a2 + 152) = 0;
    *(a2 + 160) = 0;
  }

  std::mutex::unlock((a2 + 216));
  sub_9524C(a1 + 176, (a2 + 176));
  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  v16 = *(a2 + 280);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 280) = v16;
  *(a2 + 303) = 0;
  *(a2 + 280) = 0;
  if (*(a1 + 327) < 0)
  {
    operator delete(*v5);
  }

  v17 = *(a2 + 304);
  *(a1 + 320) = *(a2 + 320);
  *v5 = v17;
  *(a2 + 327) = 0;
  *(a2 + 304) = 0;
  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  v18 = *(a2 + 328);
  *(a1 + 344) = *(a2 + 344);
  *(a1 + 328) = v18;
  *(a2 + 351) = 0;
  *(a2 + 328) = 0;
  v19 = *v6;
  if (*v6)
  {
    *(a1 + 360) = v19;
    operator delete(v19);
    *v6 = 0;
    *(a1 + 360) = 0;
    *(a1 + 368) = 0;
  }

  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 352) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  v20 = *(a1 + 376);
  if (v20)
  {
    *(a1 + 384) = v20;
    operator delete(v20);
    *(a1 + 376) = 0;
    *(a1 + 384) = 0;
    *(a1 + 392) = 0;
  }

  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 376) = 0;
  *(a2 + 384) = 0;
  *(a2 + 392) = 0;
  sub_95364(a1 + 400, (a2 + 400));
  v21 = *(a1 + 440);
  if (v21)
  {
    sub_936DC(a1 + 440, v21);
    operator delete(*(a1 + 440));
    *(a1 + 440) = 0;
    *(a1 + 448) = 0;
    *(a1 + 456) = 0;
  }

  *(a1 + 440) = *(a2 + 440);
  *(a1 + 448) = *(a2 + 448);
  *(a2 + 448) = 0;
  *(a2 + 456) = 0;
  *(a2 + 440) = 0;
  *(a1 + 488) = *(a2 + 488);
  v22 = *a1;
  if (*a1)
  {
    v23 = *(a1 + 8);
    v24 = *a1;
    if (v23 != v22)
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *a1;
    }

    *(a1 + 8) = v22;
    operator delete(v24);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(sub_74700() + 2) = v7;
  return a1;
}

void sub_92E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::mutex *a10)
{
  sub_1AA90((v11 + 328));
  sub_91868((v11 + 304));
  sub_8E8D8(v13);
  v17 = *(v11 + 240);
  if (v17)
  {
    *(v10 + 384) = v17;
    operator delete(v17);
    v18 = *v15;
    if (!*v15)
    {
LABEL_3:
      if ((*(v10 + 351) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v18 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  *(v10 + 360) = v18;
  operator delete(v18);
  if ((*(v10 + 351) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v10 + 327) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(*(v11 + 192));
  if ((*(v10 + 327) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v10 + 303) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_11:
  operator delete(*v14);
  if ((*(v10 + 303) & 0x80000000) == 0)
  {
LABEL_7:
    std::mutex::~mutex(a10);
    sub_2CD04(v12);
    sub_918A4(v11);
    sub_918E0(v10 + 48);
    sub_919A4(v10);
    _Unwind_Resume(a1);
  }

LABEL_6:
  operator delete(*(v11 + 144));
  goto LABEL_7;
}

uint64_t **sub_92F4C(uint64_t a1, std::string::size_type a2)
{
  result = sub_93214(a1, a2);
  if (!result[3])
  {
    v5 = *(sub_74700() + 2);
    *(sub_74700() + 2) = 0;
    std::mutex::lock((a1 + 216));
    if (!sub_95454((a1 + 136), a2))
    {
      v6 = *a1;
      v7 = *(a1 + 8);
      v28 = v5;
      if (*a1 != v7)
      {
        v8 = *(a2 + 23);
        if (v8 >= 0)
        {
          v9 = *(a2 + 23);
        }

        else
        {
          v9 = *(a2 + 8);
        }

        if (v8 >= 0)
        {
          v10 = a2;
        }

        else
        {
          v10 = *a2;
        }

        while (1)
        {
          v11 = *(v6 + 23);
          v12 = v11;
          if ((v11 & 0x80u) != 0)
          {
            v11 = *(v6 + 8);
          }

          if (v11 == v9)
          {
            v13 = v12 >= 0 ? v6 : *v6;
            if (!memcmp(v13, v10, v9))
            {
              break;
            }
          }

          v6 += 24;
          if (v6 == v7)
          {
            v6 = v7;
            break;
          }
        }
      }

      v14 = 376;
      if (v6 == v7)
      {
        v14 = 352;
      }

      v15 = (a1 + v14);
      v16 = *v15;
      v17 = v15[1];
      if (v17 != *v15)
      {
        do
        {
          v19 = *--v17;
          v18 = v19;
          if (sub_2A7EFC(a1 + 48, a2, v19))
          {
            sub_2A880C(a1 + 48, a2, v18, __p);
            v31 = a2;
            v20 = sub_957C4((a1 + 136), a2);
            sub_8BDD0(__p, v20 + 5);
            v21 = v30;
            if (v30)
            {
              do
              {
                v23 = *v21;
                v24 = *(v21 + 7);
                if (v24)
                {
                  do
                  {
                    v26 = *v24;
                    v27 = *(v24 + 12);
                    if (v27 != -1)
                    {
                      (off_262EB50[v27])(&v31, v24 + 5);
                    }

                    *(v24 + 12) = -1;
                    if (*(v24 + 39) < 0)
                    {
                      operator delete(v24[2]);
                    }

                    operator delete(v24);
                    v24 = v26;
                  }

                  while (v26);
                }

                v25 = *(v21 + 5);
                *(v21 + 5) = 0;
                if (v25)
                {
                  operator delete(v25);
                }

                if (v21[39] < 0)
                {
                  operator delete(*(v21 + 2));
                }

                operator delete(v21);
                v21 = v23;
              }

              while (v23);
            }

            v22 = __p[0];
            __p[0] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }
        }

        while (v17 != v16);
      }

      v5 = v28;
      if (sub_95454((a1 + 136), a2))
      {
        sub_93620(a1, a2);
      }
    }

    std::mutex::unlock((a1 + 216));
    *(sub_74700() + 2) = v5;
    return sub_932CC(a1, a2);
  }

  return result;
}

void sub_931E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8E8D8(va);
  std::mutex::unlock((v2 + 216));
  _Unwind_Resume(a1);
}

uint64_t **sub_93214(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_2732678, memory_order_acquire) & 1) == 0)
  {
    sub_21E0E90();
  }

  std::mutex::lock((a1 + 216));
  if (sub_95454((a1 + 136), a2))
  {
    v4 = sub_9560C((a1 + 136), a2);
    if (!v4)
    {
      sub_49EC("unordered_map::at: key not found");
    }

    v5 = v4 + 5;
    std::mutex::unlock((a1 + 216));
    return v5;
  }

  else
  {
    std::mutex::unlock((a1 + 216));
    return &unk_2732650;
  }
}

uint64_t **sub_932CC(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_27326A8, memory_order_acquire) & 1) == 0)
  {
    sub_21E0EE0();
  }

  std::mutex::lock((a1 + 216));
  if (!sub_95454((a1 + 136), a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    sub_95C04("No valid config found for configuration ", a2, ".", v11);
    if ((v12 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v11[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = v11[1];
    }

    v10 = sub_2D390(exception, v8, v9);
  }

  v4 = sub_9560C((a1 + 136), a2);
  if (!v4)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  v5 = v4;
  std::mutex::unlock((a1 + 216));
  return v5 + 5;
}

void sub_933CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    std::mutex::unlock((v15 + 216));
    _Unwind_Resume(a1);
  }

  std::mutex::unlock((v15 + 216));
  _Unwind_Resume(a1);
}

uint64_t **sub_93428(uint64_t a1, uint64_t a2)
{
  if (!sub_2C5A0((a1 + 176), a2))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::operator+<char>();
    if ((v11 & 0x80u) == 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = v10[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10[1];
    }

    v9 = sub_2D390(exception, v7, v8);
  }

  v4 = sub_2C5A0((a1 + 176), a2);
  if (!v4)
  {
    sub_49EC("unordered_map::at: key not found");
  }

  return v4 + 5;
}

void sub_934E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_93524(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_79630(v2, v3, &v10, v5, 1);
  v6 = sub_95EB4(*a1, *(a1 + 8));
  v7 = *(a1 + 8);
  if (v6 != v7)
  {
    v8 = v6;
    while (v7 != v8)
    {
      v9 = *(v7 - 1);
      v7 -= 3;
      if (v9 < 0)
      {
        operator delete(*v7);
      }
    }

    *(a1 + 8) = v8;
  }
}

void sub_93620(uint64_t a1, uint64_t a2)
{
  v4 = sub_957C4((a1 + 136), a2);
  v5 = *(a1 + 440);
  v6 = *(a1 + 448);
  while (v5 != v6)
  {
    if (sub_5FC3C(v5, a2))
    {
      v7 = sub_5F5AC(v5, a2);
      sub_8B9BC(v7, v4 + 5);
    }

    v5 += 5;
  }

  if (*(a1 + 464) != *(a1 + 472))
  {
    v8 = sub_93428(a1, a2);
    sub_8C2C8(v8, (a1 + 464));
  }
}

void sub_936DC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  while (v4 != a2)
  {
    v5 = *(v4 - 3);
    if (v5)
    {
      do
      {
        v8 = *v5;
        v9 = *(v5 + 12);
        if (v9 != -1)
        {
          (off_262EB50[v9])(&v10, v5 + 5);
        }

        *(v5 + 12) = -1;
        if (*(v5 + 39) < 0)
        {
          operator delete(v5[2]);
        }

        operator delete(v5);
        v5 = v8;
      }

      while (v8);
    }

    v7 = *(v4 - 5);
    v4 -= 5;
    v6 = v7;
    *v4 = 0;
    if (v7)
    {
      operator delete(v6);
    }
  }

  *(a1 + 8) = a2;
}

void sub_937B0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __p[1] = 0;
  v14 = 0;
  __p[0] = 0;
  sub_939B0(a1, a2, __p, &v15);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    if ((*v15.__r_.__value_.__l.__data_ & 0xFE) == 0x2E)
    {
      sub_325C(a3, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
      goto LABEL_17;
    }

LABEL_9:
    sub_747CC(a1 + 4, &v11);
    v5 = std::string::append(&v11, "/", 1uLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v12.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v12.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v7 = &v15;
    }

    else
    {
      v7 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v9 = std::string::append(&v12, v7, size);
    v10 = *&v9->__r_.__value_.__l.__data_;
    *(a3 + 16) = *(&v9->__r_.__value_.__l + 2);
    *a3 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v12.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return;
        }

        goto LABEL_21;
      }
    }

    else if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_21:
    operator delete(v15.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v15.__r_.__value_.__s.__data_[0] & 0xFE) != 0x2E)
  {
    goto LABEL_9;
  }

  *a3 = v15;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_21;
  }
}

void sub_93924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v28 - 17) < 0)
  {
    operator delete(*(v28 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_939B0(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  sub_93BBC(a1, &v16);
  v8 = std::string::append(&v16, ".", 1uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = std::string::append(&v17, v11, v12);
  v14 = *&v13->__r_.__value_.__l.__data_;
  v19 = v13->__r_.__value_.__r.__words[2];
  v18 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (*(a3 + 23) < 0)
  {
    sub_325C(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  sub_1221794(*a1, &v18, a4, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
LABEL_12:
      if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_17;
    }
  }

  else if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  operator delete(v18);
  if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_18:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

LABEL_17:
  operator delete(v17.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }
}

void sub_93B08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (*(v26 - 41) < 0)
  {
    operator delete(*(v26 - 64));
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void sub_93BBC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  v4 = 8;
  strcpy(v3, "app_name");
  memset(&__p, 0, sizeof(__p));
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  sub_1221794(*a1, v3, a2, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(v3[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v4 < 0)
  {
    goto LABEL_5;
  }
}

void sub_93C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (*(v17 + 23) < 0)
  {
    operator delete(*v17);
  }

  sub_21E0F30(&a9, &a17, &a12);
  _Unwind_Resume(a1);
}

uint64_t sub_93C8C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 39) < 0)
  {
    sub_325C((a1 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v5 = *(a2 + 16);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = v5;
  }

  if (*(a2 + 63) < 0)
  {
    sub_325C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v6 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v6;
  }

  if (*(a2 + 87) < 0)
  {
    sub_325C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }

  return a1;
}

void sub_93D50(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
    if ((*(v1 + 39) & 0x80000000) == 0)
    {
LABEL_3:
      sub_1F1A8(v1);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 39) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 16));
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

void sub_93DC0(int a1, char *__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 7);
      if (v4)
      {
        do
        {
          v6 = *v4;
          v7 = *(v4 + 7);
          if (v7)
          {
            do
            {
              v9 = *v7;
              v10 = *(v7 + 12);
              if (v10 != -1)
              {
                (off_262EB50[v10])(&v11, v7 + 5);
              }

              *(v7 + 12) = -1;
              if (*(v7 + 39) < 0)
              {
                operator delete(v7[2]);
              }

              operator delete(v7);
              v7 = v9;
            }

            while (v9);
          }

          v8 = *(v4 + 5);
          *(v4 + 5) = 0;
          if (v8)
          {
            operator delete(v8);
          }

          if (v4[39] < 0)
          {
            operator delete(*(v4 + 2));
          }

          operator delete(v4);
          v4 = v6;
        }

        while (v6);
      }

      v5 = *(v2 + 5);
      *(v2 + 5) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_93EE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_8DBE8((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_93F24(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_262EB50[v4])(&v7, v2 + 5);
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

  v5 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_93FE4(uint64_t a1, char *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  v5 = a2;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = a3;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if ((0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 3)) < a5)
  {
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

    if (v14)
    {
      if (v14 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_1808();
    }

    v28 = 8 * ((a2 - v11) >> 3);
    v62 = v28;
    v29 = 24 * a5;
    v30 = (v28 + 24 * a5);
    do
    {
      if (*(v7 + 23) < 0)
      {
        sub_325C(v28, *v7, *(v7 + 1));
      }

      else
      {
        v31 = *v7;
        *(v28 + 16) = *(v7 + 2);
        *v28 = v31;
      }

      v28 += 24;
      v7 = (v7 + 24);
      v29 -= 24;
    }

    while (v29);
    v32 = *(a1 + 8) - v5;
    memcpy(v30, v5, v32);
    *(a1 + 8) = v5;
    v33 = &v5[-*a1];
    v34 = v62 - v33;
    memcpy((v62 - v33), *a1, v33);
    v35 = *a1;
    *a1 = v34;
    *(a1 + 8) = &v30[v32];
    *(a1 + 16) = 0;
    if (v35)
    {
      operator delete(v35);
    }

    return v62;
  }

  v15 = v10 - a2;
  if ((0xAAAAAAAAAAAAAAABLL * ((v10 - a2) >> 3)) < a5)
  {
    v16 = (a3 + v15);
    v17 = sub_94468(a1, (a3 + v15), a4, *(a1 + 8));
    v18 = v17;
    *(a1 + 8) = v17;
    if (v15 >= 1)
    {
      v19 = v17 - 24 * a5;
      if (v19 >= v10)
      {
        v21 = v17;
      }

      else
      {
        v20 = v17 - 24 * a5;
        v21 = v17;
        do
        {
          v22 = *v20;
          *(v21 + 16) = *(v20 + 16);
          *v21 = v22;
          v21 += 24;
          *(v20 + 8) = 0;
          *(v20 + 16) = 0;
          *v20 = 0;
          v20 += 24;
        }

        while (v20 < v10);
      }

      *(a1 + 8) = v21;
      if (v17 != &v5[24 * a5])
      {
        v50 = 0;
        v51 = &v5[24 * a5 - v17];
        do
        {
          v54 = &v50[v18 - 24];
          if (v50[v18 - 1] < 0)
          {
            operator delete(*v54);
          }

          v52 = &v50[v19 - 24];
          v53 = *v52;
          *&v50[v18 - 8] = *(v52 + 16);
          *v54 = v53;
          v50[v19 - 1] = 0;
          *v52 = 0;
          v50 -= 24;
        }

        while (v51 != v50);
      }

      v55 = 0;
      do
      {
        if (v7 != v5)
        {
          v58 = &v5[v55];
          v59 = (v7 + v55);
          v60 = *(v7 + v55 + 23);
          if (v5[v55 + 23] < 0)
          {
            if (v60 >= 0)
            {
              v56 = v7 + v55;
            }

            else
            {
              v56 = *(v7 + v55);
            }

            if (v60 >= 0)
            {
              v57 = *(v7 + v55 + 23);
            }

            else
            {
              v57 = *(v7 + v55 + 8);
            }

            sub_13B38(v58, v56, v57);
          }

          else if ((*(v7 + v55 + 23) & 0x80) != 0)
          {
            sub_13A68(v58, *(v7 + v55), *(v7 + v55 + 8));
          }

          else
          {
            v61 = *v59;
            *(v58 + 16) = *(v59 + 2);
            *v58 = v61;
          }
        }

        v55 += 24;
      }

      while ((v7 + v55) != v16);
    }

    return v5;
  }

  v23 = &a2[24 * a5];
  v24 = v10 - 24 * a5;
  if (v24 >= v10)
  {
    *(a1 + 8) = v10;
    if (v10 == v23)
    {
      goto LABEL_37;
    }

LABEL_33:
    v37 = 0;
    v38 = &a2[24 * a5 - v10];
    do
    {
      v41 = &v37[v10 - 24];
      if (v37[v10 - 1] < 0)
      {
        operator delete(*v41);
      }

      v39 = &v37[v24 - 24];
      v40 = *v39;
      *&v37[v10 - 8] = *(v39 + 2);
      *v41 = v40;
      v37[v24 - 1] = 0;
      *v39 = 0;
      v37 -= 24;
    }

    while (v38 != v37);
    goto LABEL_37;
  }

  v25 = (v10 - 24 * a5);
  v26 = *(a1 + 8);
  do
  {
    v27 = *v25;
    *(v26 + 16) = *(v25 + 2);
    *v26 = v27;
    v26 += 24;
    *(v25 + 1) = 0;
    *(v25 + 2) = 0;
    *v25 = 0;
    v25 = (v25 + 24);
  }

  while (v25 < v10);
  *(a1 + 8) = v26;
  if (v10 != v23)
  {
    goto LABEL_33;
  }

LABEL_37:
  v42 = 0;
  v43 = (v7 + 24 * a5);
  do
  {
    if (v7 != v5)
    {
      v46 = &v5[v42];
      v47 = (v7 + v42);
      v48 = *(v7 + v42 + 23);
      if (v5[v42 + 23] < 0)
      {
        if (v48 >= 0)
        {
          v44 = v7 + v42;
        }

        else
        {
          v44 = *(v7 + v42);
        }

        if (v48 >= 0)
        {
          v45 = *(v7 + v42 + 23);
        }

        else
        {
          v45 = *(v7 + v42 + 8);
        }

        sub_13B38(v46, v44, v45);
      }

      else if ((*(v7 + v42 + 23) & 0x80) != 0)
      {
        sub_13A68(v46, *(v7 + v42), *(v7 + v42 + 8));
      }

      else
      {
        v49 = *v47;
        *(v46 + 16) = *(v47 + 2);
        *v46 = v49;
      }
    }

    v42 += 24;
  }

  while ((v7 + v42) != v43);
  return v5;
}

void sub_94450(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1D03C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94468(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v8 = a4;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      while ((*(v5 + 23) & 0x80000000) == 0)
      {
        v6 = *v5;
        *(a4 + 16) = *(v5 + 2);
        *a4 = v6;
        a4 += 24;
        v5 = (v5 + 24);
        v8 = a4;
        if (v5 == a3)
        {
          return a4;
        }
      }

      sub_325C(a4, *v5, *(v5 + 1));
      v5 = (v5 + 24);
      a4 = v8 + 24;
      v8 += 24;
    }

    while (v5 != a3);
  }

  return a4;
}

uint64_t *sub_94520(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 56);
      if (v3)
      {
        do
        {
          v4 = *v3;
          sub_8DBE8((v3 + 2));
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = *(v1 + 40);
      *(v1 + 40) = 0;
      if (v5)
      {
        operator delete(v5);
      }

      if (*(v1 + 39) < 0)
      {
        operator delete(*(v1 + 16));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t sub_945B0(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  prime = *(a2 + 8);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(a1, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 8));
    v5 = *(a1 + 8);
    v6 = prime >= *&v5;
    if (prime > *&v5)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    v6 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v6)
  {
    v7 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v5 < 3uLL || (v8 = vcnt_s8(v5), v8.i16[0] = vaddlv_u8(v8), v8.u32[0] > 1uLL))
    {
      v7 = std::__next_prime(v7);
    }

    else
    {
      v9 = 1 << -__clz(v7 - 1);
      if (v7 >= 2)
      {
        v7 = v9;
      }
    }

    if (prime <= v7)
    {
      prime = v7;
    }

    if (prime < *&v5)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_946F4(a1, (i + 2));
  }

  return a1;
}

uint64_t **sub_946F4(void *a1, uint64_t a2)
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

void sub_94AF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_94B0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_94B20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

void sub_94B48(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    bzero(*a1, 8 * v6);
    v7 = *(a1 + 16);
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (v7)
    {
      while (a2 != a3)
      {
        if (v7 != a2)
        {
          v8 = *(a2 + 39);
          if (v7[39] < 0)
          {
            if (v8 >= 0)
            {
              v10 = a2 + 2;
            }

            else
            {
              v10 = a2[2];
            }

            if (v8 >= 0)
            {
              v11 = *(a2 + 39);
            }

            else
            {
              v11 = a2[3];
            }

            sub_13B38((v7 + 16), v10, v11);
          }

          else if ((*(a2 + 39) & 0x80) != 0)
          {
            sub_13A68(v7 + 16, a2[2], a2[3]);
          }

          else
          {
            v9 = *(a2 + 1);
            *(v7 + 4) = a2[4];
            *(v7 + 1) = v9;
          }

          *(v7 + 18) = *(a2 + 18);
          sub_618D4((v7 + 40), a2[7], 0);
        }

        v12 = *v7;
        sub_94CD0(a1, v7);
        a2 = *a2;
        v7 = v12;
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      do
      {
        v13 = *v7;
        sub_8DBE8((v7 + 16));
        operator delete(v7);
        v7 = v13;
      }

      while (v13);
    }
  }

LABEL_22:
  if (a2 != a3)
  {
    sub_94E34();
  }
}

void sub_94C8C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_93EE0(v1, v2);
  __cxa_rethrow();
}

void sub_94CBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_8DB9C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_94CD0(uint64_t *a1, uint64_t a2)
{
  v4 = (a2 + 16);
  v5 = *(a2 + 39);
  v6 = *(a2 + 24);
  if ((v5 & 0x80u) == 0)
  {
    v7 = (a2 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  if ((v5 & 0x80u) == 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v6;
  }

  v9 = sub_AAD8(&v19, v7, v8);
  *(a2 + 8) = v9;
  v10 = sub_61CC8(a1, v9, v4);
  v11 = a1[1];
  v12 = *(a2 + 8);
  v13 = vcnt_s8(v11);
  v13.i16[0] = vaddlv_u8(v13);
  if (v13.u32[0] > 1uLL)
  {
    if (v12 >= *&v11)
    {
      v12 %= *&v11;
    }
  }

  else
  {
    v12 &= *&v11 - 1;
  }

  if (v10)
  {
    *a2 = *v10;
    *v10 = a2;
    if (*a2)
    {
      v14 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v14 >= *&v11)
        {
          v14 %= *&v11;
        }
      }

      else
      {
        v14 &= *&v11 - 1;
      }

      if (v14 != v12)
      {
        v17 = (*a1 + 8 * v14);
LABEL_25:
        *v17 = a2;
      }
    }
  }

  else
  {
    *a2 = a1[2];
    a1[2] = a2;
    v15 = *a1;
    *(*a1 + 8 * v12) = a1 + 2;
    if (*a2)
    {
      v16 = *(*a2 + 8);
      if (v13.u32[0] > 1uLL)
      {
        if (v16 >= *&v11)
        {
          v16 %= *&v11;
        }
      }

      else
      {
        v16 &= *&v11 - 1;
      }

      v17 = (v15 + 8 * v16);
      goto LABEL_25;
    }
  }

  ++a1[3];
  return a2;
}

void sub_94F10(_Unwind_Exception *a1)
{
  if (*(v2 + 39) < 0)
  {
    operator delete(*v3);
  }

  sub_8DB9C(v1);
  _Unwind_Resume(a1);
}

void sub_94F34(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((v7 - *a1) >> 3) < a4)
  {
    if (v8)
    {
      v9 = a4;
      sub_936DC(a1, *a1);
      operator delete(*a1);
      a4 = v9;
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    if (a4 <= 0x666666666666666)
    {
      v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
      v11 = 2 * v10;
      if (2 * v10 <= a4)
      {
        v11 = a4;
      }

      if (v10 >= 0x333333333333333)
      {
        v12 = 0x666666666666666;
      }

      else
      {
        v12 = v11;
      }

      if (v12 <= 0x666666666666666)
      {
        operator new();
      }
    }

    sub_1794();
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xCCCCCCCCCCCCCCCDLL * ((v13 - v8) >> 3) >= a4)
  {
    while (v5 != a3)
    {
      if (v5 != v8)
      {
        *(v8 + 32) = *(v5 + 32);
        sub_618D4(v8, *(v5 + 16), 0);
      }

      v5 += 40;
      v8 += 40;
    }

    sub_936DC(a1, v8);
  }

  else
  {
    v15 = a2 + v14;
    if (v13 != v8)
    {
      do
      {
        if (v5 != v8)
        {
          *(v8 + 32) = *(v5 + 32);
          sub_618D4(v8, *(v5 + 16), 0);
        }

        v5 += 40;
        v8 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = *(a1 + 8);
    }

    v17 = v13;
    v16 = v13;
    if (v15 != a3)
    {
      v16 = v13;
      do
      {
        sub_5ADDC(v16, v15);
        v15 += 40;
        v16 = v17 + 40;
        v17 += 40;
      }

      while (v15 != a3);
    }

    *(a1 + 8) = v16;
  }
}

void sub_951B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_951E4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_951CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_951E4(&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

uint64_t sub_951E4(uint64_t a1)
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
        v4 -= 40;
        sub_8D548(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_9524C(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 24))
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    do
    {
      v15 = *v4;
      if (*(v4 + 63) < 0)
      {
        operator delete(v4[5]);
        if (*(v4 + 39) < 0)
        {
LABEL_16:
          operator delete(v4[2]);
        }
      }

      else if (*(v4 + 39) < 0)
      {
        goto LABEL_16;
      }

      operator delete(v4);
      v4 = v15;
    }

    while (v15);
  }

  *(a1 + 16) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    bzero(*a1, 8 * v5);
  }

  *(a1 + 24) = 0;
LABEL_6:
  v6 = *a2;
  *a2 = 0;
  v7 = *a1;
  *a1 = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v10 = a2[2];
  v9 = a2 + 2;
  v8 = v10;
  v11 = *(v9 - 1);
  *(a1 + 16) = v10;
  *(a1 + 8) = v11;
  *(v9 - 1) = 0;
  v12 = v9[1];
  *(a1 + 24) = v12;
  *(a1 + 32) = *(v9 + 4);
  if (v12)
  {
    v13 = *(v8 + 8);
    v14 = *(a1 + 8);
    if ((v14 & (v14 - 1)) != 0)
    {
      if (v13 >= v14)
      {
        v13 %= v14;
      }
    }

    else
    {
      v13 &= v14 - 1;
    }

    *(*a1 + 8 * v13) = a1 + 16;
    *v9 = 0;
    v9[1] = 0;
  }
}

void sub_95364(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      do
      {
        v5 = *v4;
        sub_8DBE8((v4 + 2));
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    *(a1 + 16) = 0;
    v6 = *(a1 + 8);
    if (v6)
    {
      bzero(*a1, 8 * v6);
    }

    *(a1 + 24) = 0;
  }

  v7 = *a2;
  *a2 = 0;
  v8 = *a1;
  *a1 = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v11 = a2[2];
  v10 = a2 + 2;
  v9 = v11;
  v12 = *(v10 - 1);
  *(a1 + 16) = v11;
  *(a1 + 8) = v12;
  *(v10 - 1) = 0;
  v13 = v10[1];
  *(a1 + 24) = v13;
  *(a1 + 32) = *(v10 + 4);
  if (v13)
  {
    v14 = *(v9 + 8);
    v15 = *(a1 + 8);
    if ((v15 & (v15 - 1)) != 0)
    {
      if (v14 >= v15)
      {
        v14 %= v15;
      }
    }

    else
    {
      v14 &= v15 - 1;
    }

    *(*a1 + 8 * v14) = a1 + 16;
    *v10 = 0;
    v10[1] = 0;
  }
}

uint64_t **sub_95454(void *a1, uint64_t a2)
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

uint64_t **sub_9560C(void *a1, uint64_t a2)
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
        if (v20 == v8)
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
      if (v16 == v8)
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

uint64_t **sub_957C4(void *a1, uint64_t a2)
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

void sub_95BD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94520(va);
  _Unwind_Resume(a1);
}

void sub_95BEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_94520(va);
  _Unwind_Resume(a1);
}

uint64_t sub_95C04@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, _BYTE *a4@<X8>)
{
  sub_D7B0(v20);
  v8 = strlen(a1);
  v9 = sub_4A5C(&v21, a1, v8);
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if (v10 >= 0)
  {
    v12 = *(a2 + 23);
  }

  else
  {
    v12 = *(a2 + 8);
  }

  v13 = sub_4A5C(v9, v11, v12);
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

void sub_95EA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void **sub_95EB4(uint64_t a1, void **a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a2;
    if ((a1 + 24) != a2)
    {
      while (1)
      {
        v6 = *(a1 + 23);
        if (v6 >= 0)
        {
          v7 = *(a1 + 23);
        }

        else
        {
          v7 = *(a1 + 8);
        }

        v8 = *(a1 + 47);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(a1 + 32);
        }

        if (v7 == v8)
        {
          v10 = v6 >= 0 ? a1 : *a1;
          v11 = v9 >= 0 ? (a1 + 24) : *(a1 + 24);
          if (!memcmp(v10, v11, v7))
          {
            break;
          }
        }

        v5 = (a1 + 48);
        a1 += 24;
        if (v5 == a2)
        {
          return a2;
        }
      }

      result = a2;
      if (a1 != a2)
      {
        v12 = (a1 + 48);
        if ((a1 + 48) == a2)
        {
          v13 = a1;
        }

        else
        {
          do
          {
            while (1)
            {
              v15 = *(a1 + 23);
              if (v15 >= 0)
              {
                v16 = *(a1 + 23);
              }

              else
              {
                v16 = *(a1 + 8);
              }

              v17 = *(v12 + 23);
              v18 = v17;
              if (v17 < 0)
              {
                v17 = v12[1];
              }

              if (v16 != v17)
              {
                break;
              }

              v19 = v15 >= 0 ? a1 : *a1;
              v20 = v18 >= 0 ? v12 : *v12;
              if (memcmp(v19, v20, v16))
              {
                break;
              }

              v13 = a1;
              v12 += 3;
              if (v12 == a2)
              {
                return v13 + 3;
              }
            }

            v13 = (a1 + 24);
            if (*(a1 + 47) < 0)
            {
              operator delete(*v13);
            }

            v14 = *v12;
            *(a1 + 40) = v12[2];
            *v13 = v14;
            *(v12 + 23) = 0;
            *v12 = 0;
            v12 += 3;
            a1 += 24;
          }

          while (v12 != a2);
        }

        return v13 + 3;
      }
    }
  }

  return result;
}