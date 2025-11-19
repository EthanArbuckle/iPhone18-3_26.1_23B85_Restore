void sub_4BA784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    JUMPOUT(0x4BA70CLL);
  }

  JUMPOUT(0x4BA724);
}

uint64_t sub_4BA79C(uint64_t a1, unint64_t **a2)
{
  v2 = *(a2 + 23);
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    if (v2 != 3)
    {
      if (v2 != 10)
      {
        v3 = a2;
        if (v2 != 13)
        {
          return 0;
        }

        goto LABEL_32;
      }

      return *a2 == 0x6F69746365726964 && *(a2 + 4) == 29550;
    }

    if (*a2 != 25204 || *(a2 + 2) != 116)
    {
      return 0;
    }

    return 2;
  }

  if (a2[1] == (&dword_0 + 3) && **a2 == 25204 && *(*a2 + 2) == 116)
  {
    return 2;
  }

  if (a2[1] == (&dword_8 + 2) && **a2 == 0x6F69746365726964 && *(*a2 + 4) == 29550)
  {
    return 1;
  }

  v6 = a2[1];
  if (v6 != (&dword_C + 1))
  {
    if (v6 == &dword_18)
    {
      goto LABEL_38;
    }

    return 0;
  }

  v3 = *a2;
LABEL_32:
  v10 = *v3 ^ 0x6867696C66657270 | *(v3 + 5) ^ 0x7462745F74686769;
  if (v10)
  {
    result = 0;
  }

  else
  {
    result = 3;
  }

  if (!v10 || (v2 & 0x80000000) == 0)
  {
    return result;
  }

  if (a2[1] != &dword_18)
  {
    return 0;
  }

LABEL_38:
  v11 = *a2;
  v12 = 0x707265666C696768;
  v13 = bswap64(**a2);
  if (v13 == 0x707265666C696768 && (v12 = 0x745F7462745F6F72, v13 = bswap64(v11[1]), v13 == 0x745F7462745F6F72) && (v12 = 0x5F6E6F7468696E67, v13 = bswap64(v11[2]), v13 == 0x5F6E6F7468696E67))
  {
    v14 = 0;
  }

  else if (v13 < v12)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  return 4 * (v14 == 0);
}

void sub_4BA984(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(&v3[-v2] >> 5);
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_4BB65C(v2, v3, &v10, v5, 1);
  v6 = sub_4BD988(*a1, a1[1]);
  v7 = a1[1];
  if (v6 != v7)
  {
    v8 = v6;
    while (v7 != v8)
    {
      v9 = *(v7 - 9);
      v7 -= 4;
      if (v9 < 0)
      {
        operator delete(*v7);
      }
    }

    a1[1] = v8;
  }
}

void sub_4BAAA8(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *a2;
  v3 = *(a2 + 8);
  if (v3 != *a2)
  {
    if (((v3 - *a2) >> 4) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a1;
  while (v2 != v3)
  {
    if (v2[2] != 1)
    {
      sub_5AF20();
    }

    v4 = *v2;
    if (*(*v2 + 23) < 0)
    {
      sub_325C(__p, *v4, *(v4 + 1));
    }

    else
    {
      v5 = *v4;
      v7 = *(v4 + 2);
      *__p = v5;
    }

    sub_9A5A0(&v8, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    v2 += 4;
  }
}

uint64_t sub_4BABF8(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 2;
  }

  v7 = *(a1 + 7904);
  v19 = *(a1 + 7912);
  v20 = v7;
  v8 = sub_4BDD90(&v20, &v19, a2);
  if (*(a1 + 7912) == v8)
  {
    goto LABEL_18;
  }

  v9 = *(v8 + 23);
  if (v9 >= 0)
  {
    v10 = *(v8 + 23);
  }

  else
  {
    v10 = v8[1];
  }

  v11 = *(a2 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (v10 != v11 || (v9 >= 0 ? (v13 = v8) : (v13 = *v8), v12 >= 0 ? (v14 = a2) : (v14 = *a2), v15 = v8, memcmp(v13, v14, v10)))
  {
LABEL_18:
    if ((*(a1 + 8000) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v17 = *(v15 + 6);
  if (v17 == 4)
  {
LABEL_19:
    if (a3)
    {
      return 2;
    }

    else
    {
      return 0;
    }
  }

  if (a3)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (v17 == 3)
  {
    return v18;
  }

  else
  {
    return v17;
  }
}

uint64_t sub_4BAD44(uint64_t a1, char **a2, int a3)
{
  if (sub_F63D58(a2))
  {
    return 2;
  }

  v8 = sub_F63FEC(a2);
  sub_4B7288(a1, *(v8 + 32) | (*(v8 + 36) << 32), __p);
  v6 = sub_4BABF8(a1, __p, a3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = nullsub_1(a2);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*v9 != v11)
  {
    do
    {
      v12 = sub_4B8A28(a1, v10, a3);
      if (v12 >= v6)
      {
        v6 = v6;
      }

      else
      {
        v6 = v12;
      }

      v10 += 69;
    }

    while (v10 != v11);
  }

  return v6;
}

void sub_4BAE18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4BAE34(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, _BYTE *a3@<X8>)
{
  std::mutex::lock((a1 + 7840));
  v6 = sub_2AF704(a1 + 3912, 1u, 0);
  v7 = &v6[-*v6];
  if (*v7 < 0xBu)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v7 + 5);
    if (v8)
    {
      v8 += &v6[*&v6[v8]];
    }
  }

  v9 = (v8 + 4 * a2 + 4 + *(v8 + 4 * a2 + 4));
  v10 = (v9 - *v9);
  if (*v10 >= 5u && (v11 = v10[2]) != 0)
  {
    v12 = (v9 + v11);
    v13 = *v12;
    v14 = *(v12 + v13);
    if (v14 >= 0x17)
    {
      operator new();
    }

    a3[23] = v14;
    if (v14)
    {
      memcpy(a3, v12 + v13 + 4, v14);
    }

    a3 += v14;
  }

  else
  {
    a3[23] = 0;
  }

  *a3 = 0;

  std::mutex::unlock((a1 + 7840));
}

void *sub_4BAF88(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (((v2 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

void sub_4BB098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_49A814(&a11);
  *(v11 + 8) = v12;
  sub_49A874(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_4BB0B8(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 4;
      *(a1 + 16) = v2 - 4;
      if (*(v2 - 9) < 0)
      {
        operator delete(*v5);
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

uint64_t sub_4BB120(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1794();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v9 = 32 * v3;
  if (*(a2 + 23) < 0)
  {
    sub_325C(v9, *a2, *(a2 + 8));
  }

  else
  {
    *v9 = *a2;
    *(v9 + 16) = *(a2 + 16);
  }

  *(v9 + 24) = *a3;
  v10 = *(a1 + 8) - *a1;
  v11 = v9 - v10;
  memcpy((v9 - v10), *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9 + 32;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9 + 32;
}

void sub_4BB268(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB0B8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4BB27C(uint64_t *a1, const void **a2, const void **a3, char *a4)
{
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x492492492492492)
  {
    sub_1794();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v5)
  {
    v5 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v7 = 0x492492492492492;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    if (v7 <= 0x492492492492492)
    {
      operator new();
    }

    sub_1808();
  }

  v17 = 8 * ((a1[1] - *a1) >> 3);
  sub_4BB474(v17, a2, a3, *a4);
  v8 = 56 * v4 + 56;
  v9 = *a1;
  v10 = a1[1];
  v11 = v17 + *a1 - v10;
  if (v10 != *a1)
  {
    v12 = *a1;
    v13 = v17 + *a1 - v10;
    do
    {
      v14 = *v12;
      *(v13 + 16) = *(v12 + 2);
      *v13 = v14;
      *(v12 + 1) = 0;
      *(v12 + 2) = 0;
      *v12 = 0;
      v15 = *(v12 + 24);
      *(v13 + 40) = *(v12 + 5);
      *(v13 + 24) = v15;
      *(v12 + 4) = 0;
      *(v12 + 5) = 0;
      *(v12 + 3) = 0;
      *(v13 + 48) = *(v12 + 48);
      v12 = (v12 + 56);
      v13 += 56;
    }

    while (v12 != v10);
    while (1)
    {
      if (*(v9 + 47) < 0)
      {
        operator delete(*(v9 + 24));
        if (*(v9 + 23) < 0)
        {
LABEL_19:
          operator delete(*v9);
        }
      }

      else if (*(v9 + 23) < 0)
      {
        goto LABEL_19;
      }

      v9 += 56;
      if (v9 == v10)
      {
        v9 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = v8;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return v8;
}

void sub_4BB460(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_4BB5D8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4BB474(uint64_t a1, const void **a2, const void **a3, char a4)
{
  v6 = a2;
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
    v10 = a2[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = a3[1];
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
  v16 = a3;
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_21:
    v16 = v6;
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_22;
  }

  if (v10 < v13)
  {
    goto LABEL_21;
  }

LABEL_18:
  if ((v11 & 0x80000000) == 0)
  {
LABEL_19:
    v17 = *v16;
    *(a1 + 16) = v16[2];
    *a1 = v17;
    goto LABEL_23;
  }

LABEL_22:
  sub_325C(a1, *v16, v16[1]);
LABEL_23:
  v18 = *(v6 + 23);
  if (v18 >= 0)
  {
    v19 = v6;
  }

  else
  {
    v19 = *v6;
  }

  if (v18 >= 0)
  {
    v20 = *(v6 + 23);
  }

  else
  {
    v20 = v6[1];
  }

  v21 = *(a3 + 23);
  if (v21 >= 0)
  {
    v22 = a3;
  }

  else
  {
    v22 = *a3;
  }

  if (v21 >= 0)
  {
    v23 = *(a3 + 23);
  }

  else
  {
    v23 = a3[1];
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
    if ((v25 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }

LABEL_43:
    v6 = a3;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_41;
    }

LABEL_44:
    sub_325C((a1 + 24), *v6, v6[1]);
    goto LABEL_45;
  }

  if (v20 < v23)
  {
    goto LABEL_43;
  }

LABEL_40:
  if (v18 < 0)
  {
    goto LABEL_44;
  }

LABEL_41:
  v26 = *v6;
  *(a1 + 40) = v6[2];
  *(a1 + 24) = v26;
LABEL_45:
  *(a1 + 48) = a4;
  return a1;
}

void sub_4BB5BC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4BB5D8(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    if (*(i - 9) < 0)
    {
      operator delete(*(i - 32));
      if ((*(i - 33) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else if ((*(i - 33) & 0x80000000) == 0)
    {
      continue;
    }

    operator delete(*(i - 56));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 sub_4BB65C(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char a5)
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

        sub_4BBB44(v9, v9 + 4, a2 - 4);
        return result;
      case 4uLL:

        result.n128_u64[0] = sub_4BBE64(v9, v9 + 2, v9 + 4, a2 - 4).n128_u64[0];
        return result;
      case 5uLL:

        result.n128_u64[0] = sub_4BC08C(v9, (v9 + 4), (v9 + 8), v9 + 6, a2 - 4).n128_u64[0];
        return result;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        sub_4BC344(v9, a2);
      }

      else
      {

        sub_4BC550(v9, a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {
        v40 = (v12 - 2) >> 1;
        v41 = v40 + 1;
        v42 = &v9[4 * v40];
        do
        {
          sub_4BD1E0(v9, a3, (a2 - v9) >> 5, v42);
          v42 -= 2;
          --v41;
        }

        while (v41);
        do
        {
          sub_4BD4E8(v9, a2, a3, v12);
          a2 -= 32;
        }

        while (v12-- > 2);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[4 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      sub_4BBB44((a1 + 32 * (v12 >> 1)), a1, a2 - 4);
      if (a5)
      {
        goto LABEL_38;
      }
    }

    else
    {
      sub_4BBB44(a1, (a1 + 32 * (v12 >> 1)), a2 - 4);
      v15 = 32 * v13;
      v16 = (32 * v13 + a1 - 32);
      sub_4BBB44((a1 + 32), v16, a2 - 8);
      sub_4BBB44((a1 + 64), (a1 + 32 + v15), a2 - 12);
      sub_4BBB44(v16, v14, (a1 + 32 + v15));
      v48 = *(a1 + 16);
      v46 = *a1;
      v17 = *v14;
      *(a1 + 16) = v14[2];
      *a1 = v17;
      v14[2] = v48;
      *v14 = v46;
      v18 = *(a1 + 24);
      *(a1 + 24) = *(v14 + 6);
      *(v14 + 6) = v18;
      if (a5)
      {
        goto LABEL_38;
      }
    }

    v19 = *(a1 - 9);
    if (v19 >= 0)
    {
      v20 = (a1 - 32);
    }

    else
    {
      v20 = *(a1 - 32);
    }

    if (v19 >= 0)
    {
      v21 = *(a1 - 9);
    }

    else
    {
      v21 = *(a1 - 24);
    }

    v22 = *(a1 + 23);
    if (v22 >= 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if (v22 >= 0)
    {
      v24 = *(a1 + 23);
    }

    else
    {
      v24 = *(a1 + 8);
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v20, v23, v25);
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_42;
      }
    }

    else if (v21 == v24)
    {
      if (*(a1 - 8) >= *(a1 + 24))
      {
        goto LABEL_42;
      }
    }

    else if (v21 >= v24)
    {
LABEL_42:
      v9 = sub_4BC744(a1, a2);
      goto LABEL_43;
    }

LABEL_38:
    v27 = sub_4BCADC(a1, a2);
    if ((v28 & 1) == 0)
    {
      goto LABEL_41;
    }

    v29 = sub_4BCE40(a1, v27);
    v9 = v27 + 4;
    if (sub_4BCE40((v27 + 4), a2))
    {
      a4 = -v11;
      a2 = v27;
      if (v29)
      {
        return result;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v29)
    {
LABEL_41:
      sub_4BB65C(a1, v27, a3, -v11, a5 & 1);
      v9 = v27 + 4;
LABEL_43:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  if (v12 < 2)
  {
    return result;
  }

  if (v12 != 2)
  {
    goto LABEL_10;
  }

  v31 = (a2 - 32);
  v32 = *(a2 - 9);
  if (v32 >= 0)
  {
    v33 = a2 - 32;
  }

  else
  {
    v33 = *(a2 - 4);
  }

  if (v32 >= 0)
  {
    v34 = *(a2 - 9);
  }

  else
  {
    v34 = *(a2 - 3);
  }

  v35 = *(v9 + 23);
  if (v35 >= 0)
  {
    v36 = v9;
  }

  else
  {
    v36 = *v9;
  }

  if (v35 >= 0)
  {
    v37 = *(v9 + 23);
  }

  else
  {
    v37 = v9[1];
  }

  if (v37 >= v34)
  {
    v38 = v34;
  }

  else
  {
    v38 = v37;
  }

  v39 = memcmp(v33, v36, v38);
  if (v39)
  {
    if ((v39 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_89;
  }

  if (v34 != v37)
  {
    if (v34 >= v37)
    {
      return result;
    }

    goto LABEL_89;
  }

  if (*(a2 - 2) < *(v9 + 6))
  {
LABEL_89:
    v49 = v9[2];
    v47 = *v9;
    v44 = *v31;
    v9[2] = *(a2 - 2);
    *v9 = v44;
    result = v47;
    *v31 = v47;
    *(a2 - 2) = v49;
    v45 = *(v9 + 6);
    *(v9 + 6) = *(a2 - 2);
    *(a2 - 2) = v45;
  }

  return result;
}

uint64_t sub_4BBB44(const void **a1, const void **a2, const void **a3)
{
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
    v8 = a2[1];
  }

  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  if (v11 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v11;
  }

  v13 = memcmp(v7, v10, v12);
  if (v13)
  {
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_37:
    v20 = *(a3 + 23);
    if (v20 >= 0)
    {
      v21 = a3;
    }

    else
    {
      v21 = *a3;
    }

    if (v20 >= 0)
    {
      v22 = *(a3 + 23);
    }

    else
    {
      v22 = a3[1];
    }

    if (v8 >= v22)
    {
      v23 = v22;
    }

    else
    {
      v23 = v8;
    }

    v24 = memcmp(v21, v7, v23);
    if (v24)
    {
      if ((v24 & 0x80000000) == 0)
      {
LABEL_48:
        v25 = a1[2];
        v26 = *a1;
        v27 = a2[2];
        *a1 = *a2;
        a1[2] = v27;
        *a2 = v26;
        a2[2] = v25;
        v28 = (a2 + 3);
        v29 = *(a1 + 6);
        *(a1 + 6) = *(a2 + 6);
        *(a2 + 6) = v29;
        v30 = *(a3 + 23);
        if (v30 >= 0)
        {
          v31 = a3;
        }

        else
        {
          v31 = *a3;
        }

        if (v30 >= 0)
        {
          v32 = *(a3 + 23);
        }

        else
        {
          v32 = a3[1];
        }

        v33 = *(a2 + 23);
        if (v33 >= 0)
        {
          v34 = a2;
        }

        else
        {
          v34 = *a2;
        }

        if (v33 >= 0)
        {
          v35 = *(a2 + 23);
        }

        else
        {
          v35 = a2[1];
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
            return 1;
          }
        }

        else if (v32 == v35)
        {
          if (*(a3 + 6) >= v29)
          {
            return 1;
          }
        }

        else if (v32 >= v35)
        {
          return 1;
        }

        v53 = a2[2];
        v54 = *a2;
        v55 = a3[2];
        *a2 = *a3;
        a2[2] = v55;
        *a3 = v54;
        a3[2] = v53;
LABEL_98:
        v41 = (a3 + 3);
LABEL_101:
        v59 = *v28;
        *v28 = *v41;
        *v41 = v59;
        return 1;
      }
    }

    else if (v22 == v8)
    {
      if (*(a3 + 6) >= *(a2 + 6))
      {
        goto LABEL_48;
      }
    }

    else if (v22 >= v8)
    {
      goto LABEL_48;
    }

    v50 = a1[2];
    v51 = *a1;
    v52 = a3[2];
    *a1 = *a3;
    a1[2] = v52;
    *a3 = v51;
    a3[2] = v50;
    v28 = (a1 + 3);
    goto LABEL_98;
  }

  if (v8 == v11)
  {
    if (*(a2 + 6) < *(a1 + 6))
    {
      goto LABEL_37;
    }
  }

  else if (v8 < v11)
  {
    goto LABEL_37;
  }

LABEL_18:
  v14 = *(a3 + 23);
  if (v14 >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (v14 >= 0)
  {
    v16 = *(a3 + 23);
  }

  else
  {
    v16 = a3[1];
  }

  if (v8 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v8;
  }

  v18 = memcmp(v15, v7, v17);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
      return 0;
    }
  }

  else if (v16 == v8)
  {
    if (*(a3 + 6) >= *(a2 + 6))
    {
      return 0;
    }
  }

  else if (v16 >= v8)
  {
    return 0;
  }

  v38 = a2[2];
  v39 = *a2;
  v40 = a3[2];
  *a2 = *a3;
  a2[2] = v40;
  *a3 = v39;
  a3[2] = v38;
  v41 = (a2 + 3);
  LODWORD(v38) = *(a2 + 6);
  *(a2 + 6) = *(a3 + 6);
  *(a3 + 6) = v38;
  v42 = *(a2 + 23);
  if (v42 >= 0)
  {
    v43 = a2;
  }

  else
  {
    v43 = *a2;
  }

  if (v42 >= 0)
  {
    v44 = *(a2 + 23);
  }

  else
  {
    v44 = a2[1];
  }

  v45 = *(a1 + 23);
  if (v45 >= 0)
  {
    v46 = a1;
  }

  else
  {
    v46 = *a1;
  }

  if (v45 >= 0)
  {
    v47 = *(a1 + 23);
  }

  else
  {
    v47 = a1[1];
  }

  if (v47 >= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v47;
  }

  v49 = memcmp(v43, v46, v48);
  if (v49)
  {
    if (v49 < 0)
    {
      goto LABEL_100;
    }
  }

  else
  {
    if (v44 == v47)
    {
      if (*v41 >= *(a1 + 6))
      {
        return 1;
      }

      goto LABEL_100;
    }

    if (v44 < v47)
    {
LABEL_100:
      v56 = a1[2];
      v57 = *a1;
      v58 = a2[2];
      *a1 = *a2;
      a1[2] = v58;
      *a2 = v57;
      a2[2] = v56;
      v28 = (a1 + 3);
      goto LABEL_101;
    }
  }

  return 1;
}

__n128 sub_4BBE64(uint64_t a1, __int128 *a2, __int128 *a3, const void **a4)
{
  sub_4BBB44(a1, a2, a3);
  v8 = *(a4 + 23);
  if (v8 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = *a4;
  }

  if (v8 >= 0)
  {
    v10 = *(a4 + 23);
  }

  else
  {
    v10 = a4[1];
  }

  v11 = *(a3 + 23);
  if (v11 >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  if (v11 >= 0)
  {
    v13 = *(a3 + 23);
  }

  else
  {
    v13 = *(a3 + 1);
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
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v10 == v13)
  {
    if (*(a4 + 6) >= *(a3 + 6))
    {
      return result;
    }
  }

  else if (v10 >= v13)
  {
    return result;
  }

  v17 = *(a3 + 2);
  v18 = *a3;
  v19 = a4[2];
  *a3 = *a4;
  *(a3 + 2) = v19;
  *a4 = v18;
  a4[2] = v17;
  LODWORD(v17) = *(a3 + 6);
  *(a3 + 6) = *(a4 + 6);
  *(a4 + 6) = v17;
  v20 = *(a3 + 23);
  if (v20 >= 0)
  {
    v21 = a3;
  }

  else
  {
    v21 = *a3;
  }

  if (v20 >= 0)
  {
    v22 = *(a3 + 23);
  }

  else
  {
    v22 = *(a3 + 1);
  }

  v23 = *(a2 + 23);
  if (v23 >= 0)
  {
    v24 = a2;
  }

  else
  {
    v24 = *a2;
  }

  if (v23 >= 0)
  {
    v25 = *(a2 + 23);
  }

  else
  {
    v25 = *(a2 + 1);
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
      return result;
    }
  }

  else if (v22 == v25)
  {
    if (*(a3 + 6) >= *(a2 + 6))
    {
      return result;
    }
  }

  else if (v22 >= v25)
  {
    return result;
  }

  v28 = *(a2 + 2);
  v29 = *a2;
  v30 = *(a3 + 2);
  *a2 = *a3;
  *(a2 + 2) = v30;
  *a3 = v29;
  *(a3 + 2) = v28;
  LODWORD(v28) = *(a2 + 6);
  *(a2 + 6) = *(a3 + 6);
  *(a3 + 6) = v28;
  v31 = *(a2 + 23);
  if (v31 >= 0)
  {
    v32 = a2;
  }

  else
  {
    v32 = *a2;
  }

  if (v31 >= 0)
  {
    v33 = *(a2 + 23);
  }

  else
  {
    v33 = *(a2 + 1);
  }

  v34 = *(a1 + 23);
  if (v34 >= 0)
  {
    v35 = a1;
  }

  else
  {
    v35 = *a1;
  }

  if (v34 >= 0)
  {
    v36 = *(a1 + 23);
  }

  else
  {
    v36 = *(a1 + 8);
  }

  if (v36 >= v33)
  {
    v37 = v33;
  }

  else
  {
    v37 = v36;
  }

  v38 = memcmp(v32, v35, v37);
  if (v38)
  {
    if (v38 < 0)
    {
      goto LABEL_67;
    }
  }

  else if (v33 == v36)
  {
    if (*(a2 + 6) < *(a1 + 24))
    {
      goto LABEL_67;
    }
  }

  else if (v33 < v36)
  {
LABEL_67:
    v39 = *(a1 + 16);
    result = *a1;
    v40 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 16) = v40;
    *a2 = result;
    *(a2 + 2) = v39;
    LODWORD(v39) = *(a1 + 24);
    *(a1 + 24) = *(a2 + 6);
    *(a2 + 6) = v39;
  }

  return result;
}

__n128 sub_4BC08C(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, const void **a5)
{
  sub_4BBE64(a1, a2, a3, a4);
  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a4 + 23);
  if (v13 >= 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if (v13 >= 0)
  {
    v15 = *(a4 + 23);
  }

  else
  {
    v15 = *(a4 + 1);
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (v17)
  {
    if ((v17 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v12 == v15)
  {
    if (*(a5 + 6) >= *(a4 + 6))
    {
      return result;
    }
  }

  else if (v12 >= v15)
  {
    return result;
  }

  v19 = *(a4 + 2);
  v20 = *a4;
  v21 = a5[2];
  *a4 = *a5;
  *(a4 + 2) = v21;
  *a5 = v20;
  a5[2] = v19;
  LODWORD(v19) = *(a4 + 6);
  *(a4 + 6) = *(a5 + 6);
  *(a5 + 6) = v19;
  v22 = *(a4 + 23);
  if (v22 >= 0)
  {
    v23 = a4;
  }

  else
  {
    v23 = *a4;
  }

  if (v22 >= 0)
  {
    v24 = *(a4 + 23);
  }

  else
  {
    v24 = *(a4 + 1);
  }

  v25 = *(a3 + 23);
  if (v25 >= 0)
  {
    v26 = a3;
  }

  else
  {
    v26 = *a3;
  }

  if (v25 >= 0)
  {
    v27 = *(a3 + 23);
  }

  else
  {
    v27 = *(a3 + 8);
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
    if ((v29 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v24 == v27)
  {
    if (*(a4 + 6) >= *(a3 + 24))
    {
      return result;
    }
  }

  else if (v24 >= v27)
  {
    return result;
  }

  v30 = *(a3 + 16);
  v31 = *a3;
  v32 = *(a4 + 2);
  *a3 = *a4;
  *(a3 + 16) = v32;
  *a4 = v31;
  *(a4 + 2) = v30;
  LODWORD(v30) = *(a3 + 24);
  *(a3 + 24) = *(a4 + 6);
  *(a4 + 6) = v30;
  v33 = *(a3 + 23);
  if (v33 >= 0)
  {
    v34 = a3;
  }

  else
  {
    v34 = *a3;
  }

  if (v33 >= 0)
  {
    v35 = *(a3 + 23);
  }

  else
  {
    v35 = *(a3 + 8);
  }

  v36 = *(a2 + 23);
  if (v36 >= 0)
  {
    v37 = a2;
  }

  else
  {
    v37 = *a2;
  }

  if (v36 >= 0)
  {
    v38 = *(a2 + 23);
  }

  else
  {
    v38 = *(a2 + 8);
  }

  if (v38 >= v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = v38;
  }

  v40 = memcmp(v34, v37, v39);
  if (v40)
  {
    if ((v40 & 0x80000000) == 0)
    {
      return result;
    }
  }

  else if (v35 == v38)
  {
    if (*(a3 + 24) >= *(a2 + 24))
    {
      return result;
    }
  }

  else if (v35 >= v38)
  {
    return result;
  }

  v41 = *(a2 + 16);
  v42 = *a2;
  v43 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v43;
  *a3 = v42;
  *(a3 + 16) = v41;
  LODWORD(v41) = *(a2 + 24);
  *(a2 + 24) = *(a3 + 24);
  *(a3 + 24) = v41;
  v44 = *(a2 + 23);
  if (v44 >= 0)
  {
    v45 = a2;
  }

  else
  {
    v45 = *a2;
  }

  if (v44 >= 0)
  {
    v46 = *(a2 + 23);
  }

  else
  {
    v46 = *(a2 + 8);
  }

  v47 = *(a1 + 23);
  if (v47 >= 0)
  {
    v48 = a1;
  }

  else
  {
    v48 = *a1;
  }

  if (v47 >= 0)
  {
    v49 = *(a1 + 23);
  }

  else
  {
    v49 = *(a1 + 8);
  }

  if (v49 >= v46)
  {
    v50 = v46;
  }

  else
  {
    v50 = v49;
  }

  v51 = memcmp(v45, v48, v50);
  if (v51)
  {
    if ((v51 & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_84;
  }

  if (v46 != v49)
  {
    if (v46 >= v49)
    {
      return result;
    }

    goto LABEL_84;
  }

  if (*(a2 + 24) < *(a1 + 24))
  {
LABEL_84:
    v52 = *(a1 + 16);
    result = *a1;
    v53 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v53;
    *a2 = result;
    *(a2 + 16) = v52;
    LODWORD(v52) = *(a1 + 24);
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 24) = v52;
  }

  return result;
}

void sub_4BC344(char *a1, char *a2)
{
  if (a1 != a2)
  {
    v31 = v2;
    v32 = v3;
    v6 = (a1 + 32);
    if (a1 + 32 != a2)
    {
      v7 = 0;
      v8 = a1;
      do
      {
        v9 = v8;
        v8 = v6;
        v10 = *(v9 + 55);
        if (v10 >= 0)
        {
          v11 = v6;
        }

        else
        {
          v11 = v9[4];
        }

        if (v10 >= 0)
        {
          v12 = *(v9 + 55);
        }

        else
        {
          v12 = v9[5];
        }

        v13 = *(v9 + 23);
        if (v13 >= 0)
        {
          v14 = v9;
        }

        else
        {
          v14 = *v9;
        }

        if (v13 >= 0)
        {
          v15 = *(v9 + 23);
        }

        else
        {
          v15 = v9[1];
        }

        if (v15 >= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        v17 = memcmp(v11, v14, v16);
        if (v17)
        {
          if (v17 < 0)
          {
            goto LABEL_28;
          }
        }

        else if (v12 == v15)
        {
          if (*(v9 + 14) < *(v9 + 6))
          {
            goto LABEL_28;
          }
        }

        else if (v12 < v15)
        {
LABEL_28:
          v29 = v8[2];
          v28 = *v8;
          v8[1] = 0;
          v8[2] = 0;
          *v8 = 0;
          v30 = *(v9 + 14);
          if (SHIBYTE(v29) >= 0)
          {
            v18 = &v28;
          }

          else
          {
            v18 = v28;
          }

          if (SHIBYTE(v29) >= 0)
          {
            v19 = HIBYTE(v29);
          }

          else
          {
            v19 = *(&v28 + 1);
          }

          for (i = v7; ; i -= 32)
          {
            v21 = &a1[i];
            if (a1[i + 55] < 0)
            {
              operator delete(*(v21 + 4));
            }

            *(v21 + 2) = *v21;
            *(v21 + 6) = *(v21 + 2);
            v21[23] = 0;
            *v21 = 0;
            *(v21 + 14) = *(v21 + 6);
            if (!i)
            {
              break;
            }

            v22 = a1[i - 9];
            if (v22 >= 0)
            {
              v23 = &a1[i - 32];
            }

            else
            {
              v23 = *&a1[i - 32];
            }

            if (v22 >= 0)
            {
              v24 = a1[i - 9];
            }

            else
            {
              v24 = *&a1[i - 24];
            }

            if (v24 >= v19)
            {
              v25 = v19;
            }

            else
            {
              v25 = v24;
            }

            v26 = memcmp(v18, v23, v25);
            if (v26)
            {
              if ((v26 & 0x80000000) == 0)
              {
                goto LABEL_54;
              }
            }

            else if (v19 == v24)
            {
              if (v30 >= *&a1[i - 8])
              {
                goto LABEL_54;
              }
            }

            else if (v19 >= v24)
            {
LABEL_54:
              v27 = &a1[i];
              if ((a1[i + 23] & 0x80000000) == 0)
              {
                goto LABEL_4;
              }

              goto LABEL_57;
            }
          }

          v27 = a1;
          if ((a1[23] & 0x80000000) == 0)
          {
            goto LABEL_4;
          }

LABEL_57:
          operator delete(*v27);
LABEL_4:
          *v27 = v28;
          *(v27 + 2) = v29;
          *(v27 + 6) = v30;
        }

        v6 = v8 + 4;
        v7 += 32;
      }

      while (v8 + 4 != a2);
    }
  }
}

void sub_4BC550(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v30 = v2;
    v31 = v3;
    v5 = a1;
    v6 = a1 + 4;
    if (a1 + 4 != a2)
    {
      v7 = a1 + 7;
      do
      {
        v8 = v5;
        v5 = v6;
        v9 = *(v8 + 55);
        if (v9 >= 0)
        {
          v10 = v6;
        }

        else
        {
          v10 = v8[4];
        }

        if (v9 >= 0)
        {
          v11 = *(v8 + 55);
        }

        else
        {
          v11 = v8[5];
        }

        v12 = *(v8 + 23);
        if (v12 >= 0)
        {
          v13 = v8;
        }

        else
        {
          v13 = *v8;
        }

        if (v12 >= 0)
        {
          v14 = *(v8 + 23);
        }

        else
        {
          v14 = v8[1];
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
            goto LABEL_7;
          }
        }

        else if (v11 == v14)
        {
          if (*(v8 + 14) >= *(v8 + 6))
          {
            goto LABEL_7;
          }
        }

        else if (v11 >= v14)
        {
          goto LABEL_7;
        }

        v28 = v5[2];
        v27 = *v5;
        v5[1] = 0;
        v5[2] = 0;
        *v5 = 0;
        v29 = *(v8 + 14);
        if (SHIBYTE(v28) >= 0)
        {
          v17 = &v27;
        }

        else
        {
          v17 = v27;
        }

        if (SHIBYTE(v28) >= 0)
        {
          v18 = HIBYTE(v28);
        }

        else
        {
          v18 = *(&v27 + 1);
        }

        for (i = v7; ; i -= 8)
        {
          v20 = (i - 6);
          if (*(i - 1) < 0)
          {
            operator delete(*v20);
          }

          v21 = (i - 14);
          *v20 = *(i - 14);
          *(i - 1) = *(i - 5);
          *(i - 33) = 0;
          *(i - 56) = 0;
          *i = *(i - 8);
          v22 = *(i - 65);
          if (v22 >= 0)
          {
            v23 = i - 22;
          }

          else
          {
            v23 = *(i - 11);
          }

          if (v22 >= 0)
          {
            v24 = *(i - 65);
          }

          else
          {
            v24 = *(i - 10);
          }

          if (v24 >= v18)
          {
            v25 = v18;
          }

          else
          {
            v25 = v24;
          }

          v26 = memcmp(v17, v23, v25);
          if (v26)
          {
            if ((v26 & 0x80000000) == 0)
            {
              goto LABEL_4;
            }

            continue;
          }

          if (v18 != v24)
          {
            break;
          }

          if (v29 >= *(i - 16))
          {
            goto LABEL_4;
          }

LABEL_38:
          ;
        }

        if (v18 < v24)
        {
          goto LABEL_38;
        }

LABEL_4:
        if (*(i - 33) < 0)
        {
          operator delete(*v21);
        }

        *v21 = v27;
        *(i - 5) = v28;
        *(i - 8) = v29;
LABEL_7:
        v6 = v5 + 4;
        v7 += 8;
      }

      while (v5 + 4 != a2);
    }
  }
}

const void **sub_4BC744(uint64_t a1, _OWORD *a2)
{
  v2 = a2;
  v54 = *(a1 + 16);
  v4 = v54;
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v5 = *(a1 + 24);
  v55 = v5;
  v6 = HIBYTE(v4);
  if (v6 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v6 >= 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = __p[1];
  }

  v9 = *(a2 - 4);
  v10 = *(a2 - 9);
  v11 = *(a2 - 3);
  if (v10 >= 0)
  {
    v12 = a2 - 2;
  }

  else
  {
    v12 = *(a2 - 4);
  }

  if (v10 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v13 >= v8)
  {
    v14 = v8;
  }

  else
  {
    v14 = v13;
  }

  v15 = memcmp(v7, v12, v14);
  if (v15)
  {
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_41:
    for (i = (a1 + 32); ; i += 4)
    {
      v22 = *(i + 23);
      if (v22 >= 0)
      {
        v23 = i;
      }

      else
      {
        v23 = *i;
      }

      if (v22 >= 0)
      {
        v24 = *(i + 23);
      }

      else
      {
        v24 = i[1];
      }

      if (v24 >= v8)
      {
        v25 = v8;
      }

      else
      {
        v25 = v24;
      }

      v26 = memcmp(v7, v23, v25);
      if (v26)
      {
        if (v26 < 0)
        {
          goto LABEL_58;
        }
      }

      else if (v8 == v24)
      {
        if (v5 < *(i + 6))
        {
          goto LABEL_58;
        }
      }

      else if (v8 < v24)
      {
        goto LABEL_58;
      }
    }
  }

  if (v8 == v13)
  {
    if (v5 < *(v2 - 2))
    {
      goto LABEL_41;
    }
  }

  else if (v8 < v13)
  {
    goto LABEL_41;
  }

LABEL_18:
  for (i = (a1 + 32); i < v2; i += 4)
  {
    v17 = *(i + 23);
    if (v17 >= 0)
    {
      v18 = i;
    }

    else
    {
      v18 = *i;
    }

    if (v17 >= 0)
    {
      v19 = *(i + 23);
    }

    else
    {
      v19 = i[1];
    }

    if (v19 >= v8)
    {
      v20 = v8;
    }

    else
    {
      v20 = v19;
    }

    v21 = memcmp(v7, v18, v20);
    if (v21)
    {
      if (v21 < 0)
      {
        break;
      }
    }

    else if (v8 == v19)
    {
      if (v5 < *(i + 6))
      {
        break;
      }
    }

    else if (v8 < v19)
    {
      break;
    }
  }

LABEL_58:
  if (i < v2)
  {
    for (v2 -= 2; ; v11 = *(v2 + 1))
    {
      if (v10 >= 0)
      {
        v28 = v2;
      }

      else
      {
        v28 = v9;
      }

      if (v10 >= 0)
      {
        v29 = v10;
      }

      else
      {
        v29 = v11;
      }

      if (v29 >= v8)
      {
        v30 = v8;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v7, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          break;
        }
      }

      else if (v8 == v29)
      {
        if (v5 >= *(v2 + 6))
        {
          break;
        }
      }

      else if (v8 >= v29)
      {
        break;
      }

      v27 = *(v2 - 4);
      v2 -= 2;
      v9 = v27;
      v10 = *(v2 + 23);
    }
  }

  while (i < v2)
  {
    v32 = *i;
    v57 = i[2];
    v56 = v32;
    v33 = *v2;
    i[2] = *(v2 + 2);
    *i = v33;
    v34 = v56;
    *(v2 + 2) = v57;
    *v2 = v34;
    v35 = *(i + 6);
    *(i + 6) = *(v2 + 6);
    *(v2 + 6) = v35;
    if (SHIBYTE(v54) >= 0)
    {
      v36 = __p;
    }

    else
    {
      v36 = __p[0];
    }

    if (SHIBYTE(v54) >= 0)
    {
      v37 = HIBYTE(v54);
    }

    else
    {
      v37 = __p[1];
    }

    v38 = v55;
    do
    {
      while (1)
      {
        while (1)
        {
          i += 4;
          v39 = *(i + 23);
          v40 = v39 >= 0 ? i : *i;
          v41 = v39 >= 0 ? *(i + 23) : i[1];
          v42 = (v41 >= v37 ? v37 : v41);
          v43 = memcmp(v36, v40, v42);
          if (!v43)
          {
            break;
          }

          if (v43 < 0)
          {
            goto LABEL_103;
          }
        }

        if (v37 != v41)
        {
          break;
        }

        if (v38 < *(i + 6))
        {
          goto LABEL_103;
        }
      }
    }

    while (v37 >= v41);
    do
    {
      while (1)
      {
LABEL_103:
        while (1)
        {
          v2 -= 2;
          v44 = *(v2 + 23);
          v45 = v44 >= 0 ? v2 : *v2;
          v46 = v44 >= 0 ? *(v2 + 23) : *(v2 + 1);
          v47 = (v46 >= v37 ? v37 : v46);
          v48 = memcmp(v36, v45, v47);
          if (!v48)
          {
            break;
          }

          if ((v48 & 0x80000000) == 0)
          {
            goto LABEL_78;
          }
        }

        if (v37 != v46)
        {
          break;
        }

        if (v38 >= *(v2 + 6))
        {
          goto LABEL_78;
        }
      }
    }

    while (v37 < v46);
LABEL_78:
    ;
  }

  v49 = (i - 4);
  if (i - 4 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v50 = *v49;
    *(a1 + 16) = *(i - 2);
    *a1 = v50;
    *(i - 9) = 0;
    *(i - 32) = 0;
    *(a1 + 24) = *(i - 2);
  }

  if (*(i - 9) < 0)
  {
    operator delete(*v49);
  }

  v51 = *__p;
  *(i - 2) = v54;
  *v49 = v51;
  HIBYTE(v54) = 0;
  LOBYTE(__p[0]) = 0;
  *(i - 2) = v55;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__p[0]);
  }

  return i;
}

unint64_t sub_4BCADC(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v52 = *(a1 + 16);
  v5 = v52;
  *__p = *a1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v6 = HIBYTE(v5);
  if (v6 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  v8 = *(a1 + 24);
  v53 = v8;
  if (v6 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = __p[1];
  }

  while (1)
  {
    v10 = *(a1 + v4 + 55);
    if (v10 >= 0)
    {
      v11 = (a1 + v4 + 32);
    }

    else
    {
      v11 = *(a1 + v4 + 32);
    }

    if (v10 >= 0)
    {
      v12 = *(a1 + v4 + 55);
    }

    else
    {
      v12 = *(a1 + v4 + 40);
    }

    if (v9 >= v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    v14 = memcmp(v11, v7, v13);
    if (v14)
    {
      if ((v14 & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      goto LABEL_8;
    }

    if (v12 != v9)
    {
      break;
    }

    if (*(a1 + v4 + 56) >= v8)
    {
      goto LABEL_23;
    }

LABEL_8:
    v4 += 32;
  }

  if (v12 < v9)
  {
    goto LABEL_8;
  }

LABEL_23:
  v15 = a1 + v4 + 32;
  if (v4)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          a2 -= 32;
          v16 = *(a2 + 23);
          v17 = v16 >= 0 ? a2 : *a2;
          v18 = v16 >= 0 ? *(a2 + 23) : *(a2 + 8);
          v19 = (v9 >= v18 ? v18 : v9);
          v20 = memcmp(v17, v7, v19);
          if (!v20)
          {
            break;
          }

          if (v20 < 0)
          {
            goto LABEL_65;
          }
        }

        if (v18 != v9)
        {
          break;
        }

        if (*(a2 + 24) < v8)
        {
          goto LABEL_65;
        }
      }
    }

    while (v18 >= v9);
  }

  else
  {
    do
    {
      if (v15 >= a2)
      {
        break;
      }

      while (1)
      {
        a2 -= 32;
        v21 = *(a2 + 23);
        v22 = v21 >= 0 ? a2 : *a2;
        v23 = v21 >= 0 ? *(a2 + 23) : *(a2 + 8);
        v24 = (v9 >= v23 ? v23 : v9);
        v25 = memcmp(v22, v7, v24);
        if (v25)
        {
          break;
        }

        if (v23 == v9)
        {
          if (*(a2 + 24) < v8 || v15 >= a2)
          {
            goto LABEL_65;
          }
        }

        else if (v23 < v9 || v15 >= a2)
        {
          goto LABEL_65;
        }
      }
    }

    while ((v25 & 0x80000000) == 0);
  }

LABEL_65:
  if (v15 >= a2)
  {
    v28 = v15;
  }

  else
  {
    v28 = v15;
    v29 = a2;
    do
    {
      v30 = *v28;
      v55 = *(v28 + 16);
      v54 = v30;
      v31 = *v29;
      *(v28 + 16) = *(v29 + 16);
      *v28 = v31;
      v32 = v54;
      *(v29 + 16) = v55;
      *v29 = v32;
      v33 = *(v28 + 24);
      *(v28 + 24) = *(v29 + 24);
      *(v29 + 24) = v33;
      if (v52 >= 0)
      {
        v34 = __p;
      }

      else
      {
        v34 = __p[0];
      }

      if (v52 >= 0)
      {
        v35 = HIBYTE(v52);
      }

      else
      {
        v35 = __p[1];
      }

      v36 = v53;
      do
      {
        while (1)
        {
          while (1)
          {
            v28 += 32;
            v37 = *(v28 + 23);
            v38 = v37 >= 0 ? v28 : *v28;
            v39 = v37 >= 0 ? *(v28 + 23) : *(v28 + 8);
            v40 = (v35 >= v39 ? v39 : v35);
            v41 = memcmp(v38, v34, v40);
            if (!v41)
            {
              break;
            }

            if ((v41 & 0x80000000) == 0)
            {
              goto LABEL_92;
            }
          }

          if (v39 != v35)
          {
            break;
          }

          if (*(v28 + 24) >= v36)
          {
            goto LABEL_92;
          }
        }
      }

      while (v39 < v35);
      do
      {
        while (1)
        {
LABEL_92:
          while (1)
          {
            v29 -= 32;
            v42 = *(v29 + 23);
            v43 = v42 >= 0 ? v29 : *v29;
            v44 = v42 >= 0 ? *(v29 + 23) : *(v29 + 8);
            v45 = (v35 >= v44 ? v44 : v35);
            v46 = memcmp(v43, v34, v45);
            if (!v46)
            {
              break;
            }

            if (v46 < 0)
            {
              goto LABEL_67;
            }
          }

          if (v44 != v35)
          {
            break;
          }

          if (*(v29 + 24) < v36)
          {
            goto LABEL_67;
          }
        }
      }

      while (v44 >= v35);
LABEL_67:
      ;
    }

    while (v28 < v29);
  }

  v47 = (v28 - 32);
  if (v28 - 32 != a1)
  {
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v48 = *v47;
    *(a1 + 16) = *(v28 - 16);
    *a1 = v48;
    *(v28 - 9) = 0;
    *(v28 - 32) = 0;
    *(a1 + 24) = *(v28 - 8);
  }

  if (*(v28 - 9) < 0)
  {
    operator delete(*v47);
  }

  v49 = *__p;
  *(v28 - 16) = v52;
  *v47 = v49;
  HIBYTE(v52) = 0;
  LOBYTE(__p[0]) = 0;
  *(v28 - 8) = v53;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(__p[0]);
  }

  return v28 - 32;
}

BOOL sub_4BCE40(uint64_t a1, const void **a2)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        sub_4BBB44(a1, (a1 + 32), a2 - 4);
        return 1;
      case 4:
        sub_4BBE64(a1, (a1 + 32), (a1 + 64), a2 - 4);
        return 1;
      case 5:
        sub_4BC08C(a1, a1 + 32, a1 + 64, (a1 + 96), a2 - 4);
        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v5 = a2 - 4;
      v6 = *(a2 - 9);
      if (v6 >= 0)
      {
        v7 = a2 - 4;
      }

      else
      {
        v7 = *(a2 - 4);
      }

      if (v6 >= 0)
      {
        v8 = *(a2 - 9);
      }

      else
      {
        v8 = *(a2 - 3);
      }

      v9 = *(a1 + 23);
      if (v9 >= 0)
      {
        v10 = a1;
      }

      else
      {
        v10 = *a1;
      }

      if (v9 >= 0)
      {
        v11 = *(a1 + 23);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (v11 >= v8)
      {
        v12 = v8;
      }

      else
      {
        v12 = v11;
      }

      v13 = memcmp(v7, v10, v12);
      if (v13)
      {
        if ((v13 & 0x80000000) == 0)
        {
          return 1;
        }
      }

      else if (v8 == v11)
      {
        if (*(a2 - 2) >= *(a1 + 24))
        {
          return 1;
        }
      }

      else if (v8 >= v11)
      {
        return 1;
      }

      v41 = *(a1 + 16);
      v42 = *a1;
      v43 = v5[2];
      *a1 = *v5;
      *(a1 + 16) = v43;
      *v5 = v42;
      v5[2] = v41;
      LODWORD(v41) = *(a1 + 24);
      *(a1 + 24) = *(a2 - 2);
      *(a2 - 2) = v41;
      return 1;
    }
  }

  v14 = a1 + 64;
  sub_4BBB44(a1, (a1 + 32), (a1 + 64));
  v15 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v16 = 0;
  v17 = 0;
  while (1)
  {
    v19 = *(v15 + 23);
    if (v19 >= 0)
    {
      v20 = v15;
    }

    else
    {
      v20 = *v15;
    }

    if (v19 >= 0)
    {
      v21 = *(v15 + 23);
    }

    else
    {
      v21 = v15[1];
    }

    v22 = *(v14 + 23);
    if (v22 >= 0)
    {
      v23 = v14;
    }

    else
    {
      v23 = *v14;
    }

    if (v22 >= 0)
    {
      v24 = *(v14 + 23);
    }

    else
    {
      v24 = *(v14 + 8);
    }

    if (v24 >= v21)
    {
      v25 = v21;
    }

    else
    {
      v25 = v24;
    }

    v26 = memcmp(v20, v23, v25);
    if (v26)
    {
      if (v26 < 0)
      {
        goto LABEL_54;
      }

      goto LABEL_31;
    }

    if (v21 != v24)
    {
      break;
    }

    if (*(v15 + 6) < *(v14 + 24))
    {
      goto LABEL_54;
    }

LABEL_31:
    v14 = v15;
    v16 += 32;
    v15 += 4;
    if (v15 == a2)
    {
      return 1;
    }
  }

  if (v21 >= v24)
  {
    goto LABEL_31;
  }

LABEL_54:
  v27 = 0;
  v45 = *v15;
  v46 = v15[2];
  v15[1] = 0;
  v15[2] = 0;
  *v15 = 0;
  v47 = *(v15 + 6);
  for (i = v16; ; i -= 32)
  {
    v29 = a1 + i;
    if (v27 < 0)
    {
      operator delete(*(v29 + 96));
    }

    *(v29 + 96) = *(v29 + 64);
    *(v29 + 112) = *(v29 + 80);
    *(v29 + 87) = 0;
    *(v29 + 64) = 0;
    *(v29 + 120) = *(v29 + 88);
    if (i == -64)
    {
      break;
    }

    v30 = a1 + i;
    if (SHIBYTE(v46) >= 0)
    {
      v31 = &v45;
    }

    else
    {
      v31 = v45;
    }

    if (SHIBYTE(v46) >= 0)
    {
      v32 = HIBYTE(v46);
    }

    else
    {
      v32 = *(&v45 + 1);
    }

    v35 = *(v30 + 32);
    v33 = v30 + 32;
    v34 = v35;
    v36 = *(v33 + 23);
    if (v36 >= 0)
    {
      v37 = v33;
    }

    else
    {
      v37 = v34;
    }

    if (v36 >= 0)
    {
      v38 = *(v33 + 23);
    }

    else
    {
      v38 = *(v33 + 8);
    }

    if (v38 >= v32)
    {
      v39 = v32;
    }

    else
    {
      v39 = v38;
    }

    v40 = memcmp(v31, v37, v39);
    if (v40)
    {
      if ((v40 & 0x80000000) == 0)
      {
        goto LABEL_82;
      }
    }

    else if (v32 == v38)
    {
      if (v47 >= *(a1 + i + 56))
      {
        goto LABEL_82;
      }
    }

    else if (v32 >= v38)
    {
      v14 = a1 + i + 64;
      goto LABEL_82;
    }

    v14 -= 32;
    v27 = *(v29 + 87);
  }

  v14 = a1;
LABEL_82:
  if (*(v14 + 23) < 0)
  {
    operator delete(*v14);
  }

  v18 = v45;
  *(v14 + 16) = v46;
  *v14 = v18;
  HIBYTE(v46) = 0;
  LOBYTE(v45) = 0;
  *(v14 + 24) = v47;
  if (++v17 != 8)
  {
    goto LABEL_31;
  }

  return v15 + 4 == a2;
}

__n128 sub_4BD1E0(uint64_t a1, uint64_t a2, uint64_t a3, __n128 *a4)
{
  v6 = a3 - 2;
  if (a3 < 2)
  {
    return result;
  }

  v55 = v4;
  v56 = v5;
  v7 = a4;
  v9 = v6 >> 1;
  if ((v6 >> 1) < (a4 - a1) >> 5)
  {
    return result;
  }

  v11 = (a4 - a1) >> 4;
  v12 = v11 + 1;
  v13 = (a1 + 32 * (v11 + 1));
  v14 = v11 + 2;
  if (v11 + 2 >= a3)
  {
    goto LABEL_22;
  }

  v15 = v13[1].n128_i8[7];
  if (v15 >= 0)
  {
    v16 = (a1 + 32 * (v11 + 1));
  }

  else
  {
    v16 = v13->n128_u64[0];
  }

  if (v15 >= 0)
  {
    v17 = v13[1].n128_u8[7];
  }

  else
  {
    v17 = v13->n128_u64[1];
  }

  v18 = v13[3].n128_i8[7];
  if (v18 >= 0)
  {
    v19 = v13 + 2;
  }

  else
  {
    v19 = v13[2].n128_u64[0];
  }

  if (v18 >= 0)
  {
    v20 = v13[3].n128_u8[7];
  }

  else
  {
    v20 = v13[2].n128_u64[1];
  }

  if (v20 >= v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = v20;
  }

  v22 = memcmp(v16, v19, v21);
  if (!v22)
  {
    if (v17 == v20)
    {
      if (v13[1].n128_u32[2] >= v13[3].n128_u32[2])
      {
        goto LABEL_22;
      }
    }

    else if (v17 >= v20)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v22 < 0)
  {
LABEL_21:
    v13 += 2;
    v12 = v14;
  }

LABEL_22:
  v23 = v13[1].n128_i8[7];
  if (v23 >= 0)
  {
    v24 = v13;
  }

  else
  {
    v24 = v13->n128_u64[0];
  }

  if (v23 >= 0)
  {
    v25 = v13[1].n128_u8[7];
  }

  else
  {
    v25 = v13->n128_u64[1];
  }

  v26 = v7[1].n128_i8[7];
  if (v26 >= 0)
  {
    v27 = v7;
  }

  else
  {
    v27 = v7->n128_u64[0];
  }

  if (v26 >= 0)
  {
    v28 = v7[1].n128_u8[7];
  }

  else
  {
    v28 = v7->n128_u64[1];
  }

  if (v28 >= v25)
  {
    v29 = v25;
  }

  else
  {
    v29 = v28;
  }

  v30 = memcmp(v24, v27, v29);
  if (v30)
  {
    if (v30 < 0)
    {
      return result;
    }
  }

  else if (v25 == v28)
  {
    if (v13[1].n128_u32[2] < v7[1].n128_u32[2])
    {
      return result;
    }
  }

  else if (v25 < v28)
  {
    return result;
  }

  v32 = 0;
  v52 = *v7;
  v53 = v7[1].n128_i64[0];
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  v7->n128_u64[0] = 0;
  v54 = v7[1].n128_i32[2];
  while (1)
  {
    if (v32 < 0)
    {
      operator delete(v7->n128_u64[0]);
    }

    v41 = *v13;
    v7[1].n128_u64[0] = v13[1].n128_u64[0];
    *v7 = v41;
    v13[1].n128_u8[7] = 0;
    v13->n128_u8[0] = 0;
    v7[1].n128_u32[2] = v13[1].n128_u32[2];
    if (v9 < v12)
    {
      break;
    }

    v42 = 2 * v12;
    v12 = (2 * v12) | 1;
    v33 = (a1 + 32 * v12);
    v43 = v42 + 2;
    if (v42 + 2 < a3)
    {
      v44 = v33[1].n128_i8[7];
      if (v44 >= 0)
      {
        v45 = (a1 + 32 * v12);
      }

      else
      {
        v45 = v33->n128_u64[0];
      }

      if (v44 >= 0)
      {
        v46 = v33[1].n128_u8[7];
      }

      else
      {
        v46 = v33->n128_u64[1];
      }

      v47 = v33[3].n128_i8[7];
      if (v47 >= 0)
      {
        v48 = v33 + 2;
      }

      else
      {
        v48 = v33[2].n128_u64[0];
      }

      if (v47 >= 0)
      {
        v49 = v33[3].n128_u8[7];
      }

      else
      {
        v49 = v33[2].n128_u64[1];
      }

      if (v49 >= v46)
      {
        v50 = v46;
      }

      else
      {
        v50 = v49;
      }

      v51 = memcmp(v45, v48, v50);
      if (v51)
      {
        if (v51 < 0)
        {
          goto LABEL_40;
        }
      }

      else if (v46 == v49)
      {
        if (v33[1].n128_u32[2] < v33[3].n128_u32[2])
        {
          goto LABEL_40;
        }
      }

      else if (v46 < v49)
      {
LABEL_40:
        v33 += 2;
        v12 = v43;
      }
    }

    v34 = v33[1].n128_i8[7];
    if (v34 >= 0)
    {
      v35 = v33;
    }

    else
    {
      v35 = v33->n128_u64[0];
    }

    if (v34 >= 0)
    {
      v36 = v33[1].n128_u8[7];
    }

    else
    {
      v36 = v33->n128_u64[1];
    }

    if (v53 >= 0)
    {
      v37 = &v52;
    }

    else
    {
      v37 = v52.n128_u64[0];
    }

    if (v53 >= 0)
    {
      v38 = HIBYTE(v53);
    }

    else
    {
      v38 = v52.n128_u64[1];
    }

    if (v38 >= v36)
    {
      v39 = v36;
    }

    else
    {
      v39 = v38;
    }

    v40 = memcmp(v35, v37, v39);
    if (v40)
    {
      if (v40 < 0)
      {
        break;
      }
    }

    else if (v36 == v38)
    {
      if (v33[1].n128_u32[2] < v54)
      {
        break;
      }
    }

    else if (v36 < v38)
    {
      break;
    }

    v32 = v13[1].n128_i8[7];
    v7 = v13;
    v13 = v33;
  }

  if (v13[1].n128_i8[7] < 0)
  {
    operator delete(v13->n128_u64[0]);
  }

  result = v52;
  v13[1].n128_u64[0] = v53;
  *v13 = result;
  v13[1].n128_u32[2] = v54;
  return result;
}

void sub_4BD4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v5 = *a1;
    *v17 = *(a1 + 8);
    *&v17[7] = *(a1 + 15);
    v6 = *(a1 + 23);
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    v7 = *(a1 + 24);
    v10 = sub_4BD67C(a1, a3, a4);
    v11 = (a2 - 32);
    v12 = *(v10 + 23);
    if (v10 == (a2 - 32))
    {
      if (v12 < 0)
      {
        v16 = v10;
        operator delete(*v10);
        v10 = v16;
      }

      *v10 = v5;
      *(v10 + 1) = *v17;
      *(v10 + 15) = *&v17[7];
      *(v10 + 23) = v6;
      *(v10 + 6) = v7;
    }

    else
    {
      if (v12 < 0)
      {
        v13 = v10;
        operator delete(*v10);
        v10 = v13;
      }

      v14 = *v11;
      *(v10 + 2) = *(a2 - 16);
      *v10 = v14;
      *(a2 - 9) = 0;
      *(a2 - 32) = 0;
      *(v10 + 6) = *(a2 - 8);
      v15 = (v10 + 2);
      if (*(a2 - 9) < 0)
      {
        operator delete(*v11);
      }

      *(a2 - 32) = v5;
      *(a2 - 24) = *v17;
      *(a2 - 17) = *&v17[7];
      *(a2 - 9) = v6;
      *(a2 - 8) = v7;
      sub_4BD7B8(a1, v15, a3, (v15 - a1) >> 5);
    }
  }
}

void sub_4BD664(_Unwind_Exception *exception_object)
{
  if (v2 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_4BD67C(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v9 = &a1[2 * v5];
    v7 = v9 + 2;
    v10 = 2 * v5;
    v5 = (2 * v5) | 1;
    v11 = v10 + 2;
    if (v10 + 2 < a3)
    {
      v12 = *(v9 + 55);
      if (v12 >= 0)
      {
        v13 = v9 + 2;
      }

      else
      {
        v13 = *(v9 + 4);
      }

      if (v12 >= 0)
      {
        v14 = *(v9 + 55);
      }

      else
      {
        v14 = *(v9 + 5);
      }

      v15 = *(v9 + 87);
      if (v15 >= 0)
      {
        v16 = v9 + 4;
      }

      else
      {
        v16 = *(v9 + 8);
      }

      if (v15 >= 0)
      {
        v17 = *(v9 + 87);
      }

      else
      {
        v17 = *(v9 + 9);
      }

      if (v17 >= v14)
      {
        v18 = v14;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v13, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_2;
        }
      }

      else if (v14 == v17)
      {
        if (*(v9 + 14) < *(v9 + 22))
        {
          goto LABEL_2;
        }
      }

      else if (v14 < v17)
      {
LABEL_2:
        v7 = v9 + 4;
        v5 = v11;
      }
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    v8 = *v7;
    *(a1 + 2) = *(v7 + 2);
    *a1 = v8;
    *(v7 + 23) = 0;
    *v7 = 0;
    *(a1 + 6) = *(v7 + 6);
    a1 = v7;
  }

  while (v5 <= v6);
  return v7;
}

double sub_4BD7B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a4 - 2;
  if (a4 >= 2)
  {
    v34 = v4;
    v35 = v5;
    v9 = v6 >> 1;
    v10 = (a1 + 32 * (v6 >> 1));
    v11 = (a2 - 32);
    v12 = *(v10 + 23);
    if (v12 >= 0)
    {
      v13 = (a1 + 32 * (v6 >> 1));
    }

    else
    {
      v13 = *v10;
    }

    if (v12 >= 0)
    {
      v14 = *(v10 + 23);
    }

    else
    {
      v14 = *(v10 + 1);
    }

    v15 = *(a2 - 9);
    if (v15 >= 0)
    {
      v16 = (a2 - 32);
    }

    else
    {
      v16 = *(a2 - 32);
    }

    if (v15 >= 0)
    {
      v17 = *(v11 + 23);
    }

    else
    {
      v17 = *(v11 + 1);
    }

    if (v17 >= v14)
    {
      v18 = v14;
    }

    else
    {
      v18 = v17;
    }

    v19 = memcmp(v13, v16, v18);
    if (v19)
    {
      if ((v19 & 0x80000000) == 0)
      {
        return result;
      }
    }

    else if (v14 == v17)
    {
      if (*(v10 + 6) >= *(a2 - 8))
      {
        return result;
      }
    }

    else if (v14 >= v17)
    {
      return result;
    }

    v32 = *(v11 + 2);
    v31 = *v11;
    *(v11 + 1) = 0;
    *(v11 + 2) = 0;
    *v11 = 0;
    v33 = *(a2 - 8);
    if (v32 >= 0)
    {
      v21 = &v31;
    }

    else
    {
      v21 = v31;
    }

    if (v32 >= 0)
    {
      v22 = HIBYTE(v32);
    }

    else
    {
      v22 = *(&v31 + 1);
    }

    while (1)
    {
      v23 = v10;
      if (*(v11 + 23) < 0)
      {
        operator delete(*v11);
      }

      v24 = *v10;
      *(v11 + 2) = *(v10 + 2);
      *v11 = v24;
      *(v10 + 23) = 0;
      *v10 = 0;
      *(v11 + 6) = *(v10 + 6);
      if (!v9)
      {
        break;
      }

      v9 = (v9 - 1) >> 1;
      v10 = (a1 + 32 * v9);
      v25 = *(v10 + 23);
      if (v25 >= 0)
      {
        v26 = (a1 + 32 * v9);
      }

      else
      {
        v26 = *v10;
      }

      if (v25 >= 0)
      {
        v27 = *(v10 + 23);
      }

      else
      {
        v27 = *(v10 + 1);
      }

      if (v22 >= v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = v22;
      }

      v29 = memcmp(v26, v21, v28);
      if (v29)
      {
        v11 = v23;
        if ((v29 & 0x80000000) == 0)
        {
          break;
        }
      }

      else
      {
        v30 = v27 >= v22;
        if (v27 == v22)
        {
          v11 = v23;
          if (*(v10 + 6) >= v33)
          {
            break;
          }
        }

        else
        {
          v11 = v23;
          if (v30)
          {
            break;
          }
        }
      }
    }

    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    result = *&v31;
    *v23 = v31;
    *(v23 + 2) = v32;
    *(v23 + 6) = v33;
  }

  return result;
}

_DWORD *sub_4BD988(uint64_t a1, _DWORD *a2)
{
  result = a2;
  if (a1 != a2)
  {
    result = a2;
    if ((a1 + 32) != a2)
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

        v8 = *(a1 + 55);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(a1 + 40);
        }

        if (v7 == v8)
        {
          v10 = v6 >= 0 ? a1 : *a1;
          v11 = v9 >= 0 ? (a1 + 32) : *(a1 + 32);
          if (!memcmp(v10, v11, v7) && *(a1 + 24) == *(a1 + 56))
          {
            break;
          }
        }

        v5 = (a1 + 64);
        a1 += 32;
        if (v5 == a2)
        {
          return a2;
        }
      }

      result = a2;
      if (a1 != a2)
      {
        v13 = (a1 + 64);
        if ((a1 + 64) != a2)
        {
          v14 = (a1 + 32);
          while (1)
          {
            while (1)
            {
              v16 = v13;
              v17 = *(a1 + 23);
              if (v17 >= 0)
              {
                v18 = *(a1 + 23);
              }

              else
              {
                v18 = *(a1 + 8);
              }

              v19 = *(v16 + 23);
              v20 = v19;
              if ((v19 & 0x80u) != 0)
              {
                v19 = *(v16 + 1);
              }

              if (v18 == v19)
              {
                break;
              }

              v24 = v16 + 6;
              v25 = a1 + 32;
              if (*(a1 + 55) < 0)
              {
LABEL_47:
                operator delete(*v25);
              }

LABEL_27:
              v15 = *v16;
              *(v25 + 16) = *(v16 + 2);
              *v25 = v15;
              *(v16 + 23) = 0;
              *v16 = 0;
              *(a1 + 56) = *v24;
              a1 = v25;
              v13 = v16 + 8;
              v14 = v16;
              if (v16 + 8 == a2)
              {
                return (v25 + 32);
              }
            }

            if (v17 >= 0)
            {
              v21 = a1;
            }

            else
            {
              v21 = *a1;
            }

            if (v20 >= 0)
            {
              v22 = v16;
            }

            else
            {
              v22 = *v16;
            }

            if (memcmp(v21, v22, v18) || *(a1 + 24) != v16[6])
            {
              v24 = v14 + 14;
              v25 = a1 + 32;
              if (*(a1 + 55) < 0)
              {
                goto LABEL_47;
              }

              goto LABEL_27;
            }

            v25 = a1;
            v13 = v16 + 8;
            v14 = v16;
            if (v16 + 8 == a2)
            {
              return (v25 + 32);
            }
          }
        }

        v25 = a1;
        return (v25 + 32);
      }
    }
  }

  return result;
}

void sub_4BDB84(uint64_t a1)
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

void sub_4BDC7C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = *(a1 + 16) - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      if (0xAAAAAAAAAAAAAAABLL * (v4 >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      sub_1808();
    }

    if (v4 < v3)
    {
      v6 = 8 * (v4 >> 3);
      v7 = *(a1 + 8) - v2;
      v8 = v6 - v7;
      memcpy((v6 - v7), v2, v7);
      *a1 = v8;
      *(a1 + 8) = v6;
      *(a1 + 16) = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

const void **sub_4BDD90(const void ***a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2 - *a1;
  v5 = v4 >> 5;
  if (v4 >> 5 < 1)
  {
    return v3;
  }

  v6 = *(a3 + 23);
  if (v4 == 32)
  {
    v7 = *a3;
    v8 = *(a3 + 8);
    goto LABEL_27;
  }

  v7 = *a3;
  v8 = *(a3 + 8);
  v9 = a3;
  if ((v6 & 0x80u) == 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if ((v6 & 0x80u) == 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  do
  {
    v13 = (8 * v5) & 0xFFFFFFFFFFFFFFE0;
    _X9 = v3 + v13;
    __asm { PRFM            #0, [X9] }

    v20 = &v3[4 * (v5 >> 1)];
    _X8 = v20 + v13;
    __asm { PRFM            #0, [X8] }

    v23 = *(v20 + 23);
    if (v23 >= 0)
    {
      v24 = &v3[4 * (v5 >> 1)];
    }

    else
    {
      v24 = *v20;
    }

    if (v23 >= 0)
    {
      v25 = *(v20 + 23);
    }

    else
    {
      v25 = v20[1];
    }

    if (v11 >= v25)
    {
      v26 = v25;
    }

    else
    {
      v26 = v11;
    }

    v27 = memcmp(v24, v10, v26);
    v12 = v5 >> 1;
    if (v27)
    {
      if ((v27 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v25 >= v11)
    {
LABEL_10:
      v12 = 0;
    }

    v3 += 4 * v12;
    v5 -= v5 >> 1;
  }

  while (v5 > 1);
  a3 = v9;
LABEL_27:
  v28 = *(v3 + 23);
  if (v28 >= 0)
  {
    v29 = v3;
  }

  else
  {
    v29 = *v3;
  }

  if (v28 >= 0)
  {
    v30 = *(v3 + 23);
  }

  else
  {
    v30 = v3[1];
  }

  if ((v6 & 0x80u) == 0)
  {
    v31 = a3;
  }

  else
  {
    v31 = v7;
  }

  if ((v6 & 0x80u) != 0)
  {
    v6 = v8;
  }

  if (v6 >= v30)
  {
    v32 = v30;
  }

  else
  {
    v32 = v6;
  }

  v33 = memcmp(v29, v31, v32);
  if (v33)
  {
    if ((v33 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_45:
    v34 = 1;
  }

  else
  {
    if (v30 < v6)
    {
      goto LABEL_45;
    }

LABEL_43:
    v34 = 0;
  }

  v3 += 4 * v34;
  return v3;
}

const void **sub_4BDEE8(const void ***a1, void *a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *a2 - *a1;
  if (v4 < 24)
  {
    return v3;
  }

  v5 = *(a3 + 23);
  if (v4 == 24)
  {
    v6 = *a3;
    v7 = *(a3 + 8);
    goto LABEL_27;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 3);
  v6 = *a3;
  v7 = *(a3 + 8);
  v35 = a3;
  if ((v5 & 0x80u) == 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if ((v5 & 0x80u) == 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  do
  {
    v12 = 3 * (v8 >> 2);
    _X9 = &v3[v12];
    __asm { PRFM            #0, [X9] }

    v19 = &v3[3 * (v8 >> 1)];
    _X8 = &v19[v12];
    __asm { PRFM            #0, [X8] }

    v22 = *(v19 + 23);
    if (v22 >= 0)
    {
      v23 = &v3[3 * (v8 >> 1)];
    }

    else
    {
      v23 = *v19;
    }

    if (v22 >= 0)
    {
      v24 = *(v19 + 23);
    }

    else
    {
      v24 = v19[1];
    }

    if (v10 >= v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = v10;
    }

    v26 = memcmp(v23, v9, v25);
    v11 = v8 >> 1;
    if (v26)
    {
      if ((v26 & 0x80000000) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (v24 >= v10)
    {
LABEL_10:
      v11 = 0;
    }

    v3 += 3 * v11;
    v8 -= v8 >> 1;
  }

  while (v8 > 1);
  a3 = v35;
LABEL_27:
  v27 = *(v3 + 23);
  if (v27 >= 0)
  {
    v28 = v3;
  }

  else
  {
    v28 = *v3;
  }

  if (v27 >= 0)
  {
    v29 = *(v3 + 23);
  }

  else
  {
    v29 = v3[1];
  }

  if ((v5 & 0x80u) == 0)
  {
    v30 = a3;
  }

  else
  {
    v30 = v6;
  }

  if ((v5 & 0x80u) != 0)
  {
    v5 = v7;
  }

  if (v5 >= v29)
  {
    v31 = v29;
  }

  else
  {
    v31 = v5;
  }

  v32 = memcmp(v28, v30, v31);
  if (v32)
  {
    if ((v32 & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

LABEL_45:
    v33 = 1;
  }

  else
  {
    if (v29 < v5)
    {
      goto LABEL_45;
    }

LABEL_43:
    v33 = 0;
  }

  v3 += 3 * v33;
  return v3;
}

uint64_t **sub_4BE060(void *a1, uint64_t a2)
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

void sub_4BE43C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_23D34(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4BE454(uint64_t a1, uint64_t a2, const void **__s2, uint64_t a4)
{
  v4 = a1;
  if (a1 != a2)
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
      while (1)
      {
        v19 = *(v4 + 23);
        v20 = v19;
        if ((v19 & 0x80u) != 0)
        {
          v19 = *(v4 + 8);
        }

        if (v19 == v8)
        {
          v21 = v20 >= 0 ? v4 : *v4;
          if (!memcmp(v21, *__s2, v8))
          {
            v22 = *(v4 + 47);
            if (v22 >= 0)
            {
              v23 = *(v4 + 47);
            }

            else
            {
              v23 = *(v4 + 32);
            }

            v24 = *(a4 + 23);
            v25 = v24;
            if ((v24 & 0x80u) != 0)
            {
              v24 = *(a4 + 8);
            }

            if (v23 == v24)
            {
              v26 = v22 >= 0 ? (v4 + 24) : *(v4 + 24);
              v27 = v25 >= 0 ? a4 : *a4;
              if (!memcmp(v26, v27, v23))
              {
                break;
              }
            }
          }
        }

        v4 += 56;
        if (v4 == a2)
        {
          return a2;
        }
      }
    }

    else
    {
      while (1)
      {
        v9 = *(v4 + 23);
        v10 = v9;
        if ((v9 & 0x80u) != 0)
        {
          v9 = *(v4 + 8);
        }

        if (v9 == v8)
        {
          v11 = v10 >= 0 ? v4 : *v4;
          if (!memcmp(v11, __s2, v8))
          {
            v12 = *(v4 + 47);
            if (v12 >= 0)
            {
              v13 = *(v4 + 47);
            }

            else
            {
              v13 = *(v4 + 32);
            }

            v14 = *(a4 + 23);
            v15 = v14;
            if ((v14 & 0x80u) != 0)
            {
              v14 = *(a4 + 8);
            }

            if (v13 == v14)
            {
              v16 = v12 >= 0 ? (v4 + 24) : *(v4 + 24);
              v17 = v15 >= 0 ? a4 : *a4;
              if (!memcmp(v16, v17, v13))
              {
                break;
              }
            }
          }
        }

        v4 += 56;
        if (v4 == a2)
        {
          return a2;
        }
      }
    }
  }

  return v4;
}

void sub_4BE60C(uint64_t a1, void *a2, char **a3)
{
  v4 = (*a2 - **a2);
  if (*v4 >= 0xDu && (v5 = v4[6]) != 0)
  {
    v6 = *(*a2 + v5);
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v8 + 6);
  if (v9)
  {
    v10 = *&v7[v9];
    if (v10 == v6)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOWORD(v10) = 0;
  if (!v6)
  {
    return;
  }

LABEL_10:
  v11 = *a1;
  sub_4BAE34(*a1, v6, v23);
  sub_4BAE34(v11, v10, __p);
  v12 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23[1];
  }

  v14 = v22;
  v15 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14 || ((v24 & 0x80u) == 0 ? (v16 = v23) : (v16 = v23[0]), (v22 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), memcmp(v16, v17, v13)))
  {
    v18 = sub_4BABF8(v11, __p, **(a1 + 16));
    v19 = *(a1 + 8);
    v20 = *v19;
    if (*v19 >= v18)
    {
      v20 = v18;
    }

    *v19 = v20;
    v15 = v22;
  }

  if ((v15 & 0x80) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v23[0]);
    return;
  }

  operator delete(__p[0]);
  if (v12 < 0)
  {
    goto LABEL_30;
  }
}

void sub_4BE790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (v20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_4BE7D4(uint64_t a1, void *a2, char **a3)
{
  v4 = (*a2 - **a2);
  if (*v4 >= 0xDu && (v5 = v4[6]) != 0)
  {
    v6 = *(*a2 + v5);
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v8 + 6);
  if (v9)
  {
    v10 = *&v7[v9];
    if (v10 == v6)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOWORD(v10) = 0;
  if (!v6)
  {
    return;
  }

LABEL_10:
  v11 = *a1;
  sub_4BAE34(*a1, v6, v23);
  sub_4BAE34(v11, v10, __p);
  v12 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23[1];
  }

  v14 = v22;
  v15 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14 || ((v24 & 0x80u) == 0 ? (v16 = v23) : (v16 = v23[0]), (v22 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), memcmp(v16, v17, v13)))
  {
    v18 = sub_4BABF8(v11, __p, **(a1 + 16));
    v19 = *(a1 + 8);
    v20 = *v19;
    if (*v19 >= v18)
    {
      v20 = v18;
    }

    *v19 = v20;
    v15 = v22;
  }

  if ((v15 & 0x80) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v23[0]);
    return;
  }

  operator delete(__p[0]);
  if (v12 < 0)
  {
    goto LABEL_30;
  }
}

void sub_4BE958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (v20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_4BE99C(uint64_t a1, void *a2, char **a3)
{
  v4 = (*a2 - **a2);
  if (*v4 >= 0xDu && (v5 = v4[6]) != 0)
  {
    v6 = *(*a2 + v5);
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v8 + 6);
  if (v9)
  {
    v10 = *&v7[v9];
    if (v10 == v6)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOWORD(v10) = 0;
  if (!v6)
  {
    return;
  }

LABEL_10:
  v11 = *a1;
  sub_4BAE34(*a1, v6, v23);
  sub_4BAE34(v11, v10, __p);
  v12 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23[1];
  }

  v14 = v22;
  v15 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14 || ((v24 & 0x80u) == 0 ? (v16 = v23) : (v16 = v23[0]), (v22 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), memcmp(v16, v17, v13)))
  {
    v18 = sub_4BABF8(v11, __p, **(a1 + 16));
    v19 = *(a1 + 8);
    v20 = *v19;
    if (*v19 >= v18)
    {
      v20 = v18;
    }

    *v19 = v20;
    v15 = v22;
  }

  if ((v15 & 0x80) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v23[0]);
    return;
  }

  operator delete(__p[0]);
  if (v12 < 0)
  {
    goto LABEL_30;
  }
}

void sub_4BEB20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (v20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_4BEB64(uint64_t a1, void *a2, char **a3)
{
  v4 = (*a2 - **a2);
  if (*v4 >= 0xDu && (v5 = v4[6]) != 0)
  {
    v6 = *(*a2 + v5);
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v7 = *a3;
    v8 = &(*a3)[-**a3];
    if (*v8 < 0xDu)
    {
      goto LABEL_9;
    }
  }

  v9 = *(v8 + 6);
  if (v9)
  {
    v10 = *&v7[v9];
    if (v10 == v6)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_9:
  LOWORD(v10) = 0;
  if (!v6)
  {
    return;
  }

LABEL_10:
  v11 = *a1;
  sub_4BAE34(*a1, v6, v23);
  sub_4BAE34(v11, v10, __p);
  v12 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v13 = v24;
  }

  else
  {
    v13 = v23[1];
  }

  v14 = v22;
  v15 = v22;
  if ((v22 & 0x80u) != 0)
  {
    v14 = __p[1];
  }

  if (v13 != v14 || ((v24 & 0x80u) == 0 ? (v16 = v23) : (v16 = v23[0]), (v22 & 0x80u) == 0 ? (v17 = __p) : (v17 = __p[0]), memcmp(v16, v17, v13)))
  {
    v18 = sub_4BABF8(v11, __p, **(a1 + 16));
    v19 = *(a1 + 8);
    v20 = *v19;
    if (*v19 >= v18)
    {
      v20 = v18;
    }

    *v19 = v20;
    v15 = v22;
  }

  if ((v15 & 0x80) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(v23[0]);
    return;
  }

  operator delete(__p[0]);
  if (v12 < 0)
  {
    goto LABEL_30;
  }
}

void sub_4BECE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (v20 < 0)
    {
LABEL_5:
      operator delete(a15);
      _Unwind_Resume(a1);
    }
  }

  else if (v20 < 0)
  {
    goto LABEL_5;
  }

  _Unwind_Resume(a1);
}

void sub_4BED2C()
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
  xmmword_2790250 = 0u;
  unk_2790260 = 0u;
  dword_2790270 = 1065353216;
  sub_3A9A34(&xmmword_2790250, v0);
  sub_3A9A34(&xmmword_2790250, v3);
  sub_3A9A34(&xmmword_2790250, __p);
  sub_3A9A34(&xmmword_2790250, v9);
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
    qword_2790228 = 0;
    qword_2790230 = 0;
    qword_2790220 = 0;
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

void sub_4BEF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_2790238)
  {
    qword_2790240 = qword_2790238;
    operator delete(qword_2790238);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_4BF020(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v4 = a2;
  if (!a3)
  {
    v16 = sub_2B51D8(a1, a2 & 0xFFFFFFFFFFFFLL);
    v17 = (v16 - *v16);
    v18 = *v17;
    if ((v4 & 0xFF000000000000) != 0)
    {
      if (v18 < 0x4D)
      {
        goto LABEL_35;
      }

      v19 = v17[38];
      if (!v19 || (*(v16 + v19) & 2) == 0)
      {
        goto LABEL_35;
      }
    }

    else if (v18 < 0x4D || (v20 = v17[38]) == 0 || (*(v16 + v20) & 1) == 0)
    {
LABEL_35:
      v21 = sub_2B51D8(a1, v4 & 0xFFFFFFFFFFFFLL);
      v22 = (v21 - *v21);
      v23 = *v22;
      if ((v4 & 0xFF000000000000) != 0)
      {
        if (v23 >= 0x4D)
        {
          v6 = v22[38];
          if (!v6)
          {
            return v6;
          }

          v24 = 8;
          return (*(v21 + v6) & v24) != 0;
        }
      }

      else if (v23 >= 0x4D)
      {
        v6 = v22[38];
        if (!v6)
        {
          return v6;
        }

        v24 = 4;
        return (*(v21 + v6) & v24) != 0;
      }

      return 0;
    }

    return 1;
  }

  v6 = 0;
  if (a2 && (a3 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = a2 & 0xFF00000000000000;
    while (1)
    {
      v11 = sub_2B51D8(a1, v4 & 0xFFFFFFFFFFFFLL);
      memset(&v26[1], 0, 24);
      v26[0] = v11;
      v26[4] = (v4 & 0xFFFFFFFFFFFFFFLL | v10);
      v12 = (v11 - *v11);
      v13 = *v12;
      if ((v4 & 0xFF000000000000) != 0)
      {
        if (v13 < 0x9B || !v12[77] || (*(v11 + v12[77]) | 0xFFFFFFFFFDFFFFFDLL) != 0xFFFFFFFFFFFFFFFFLL)
        {
          return 0;
        }
      }

      else if (v13 < 0x9B || !v12[77] || (*(v11 + v12[77]) | 0xFFFFFFFFFDFFFFFELL) != 0xFFFFFFFFFFFFFFFFLL)
      {
        return 0;
      }

      v14 = v12[38];
      if ((v4 & 0xFF000000000000) != 0)
      {
        if (v12[38])
        {
          if ((*(v11 + v14) & 8) != 0)
          {
            return 1;
          }

          LODWORD(v6) = 2;
          goto LABEL_19;
        }
      }

      else if (v12[38])
      {
        v6 = 1;
        if ((*(v11 + v14) & 4) != 0)
        {
          return v6;
        }

LABEL_19:
        if ((*(v11 + v14) & v6) != 0)
        {
          return 1;
        }
      }

      if (v12[4])
      {
        v15 = *(v11 + v12[4]);
      }

      else
      {
        v15 = 0;
      }

      v4 = sub_319BB0(v26, a4, a1);
      v6 = 0;
      if (v4)
      {
        v9 += v15;
        if (v9 <= a3)
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

uint64_t sub_4BF258@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t **a3@<X8>)
{
  v3 = 0;
  v4 = *a2;
  v5 = a2[1];
  v6 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v7 = v6 + 1;
  }

  v8 = 0x2127599BF4325C37 * (v7 ^ (v6 >> 23));
  v9 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  if ((v5 & 0xFF000000000000) != 0)
  {
    v10 = (v5 >> 16) & 0xFFFF0000 | (v5 << 32);
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = (0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) ^ ((0x2127599BF4325C37 * (v10 ^ (v9 >> 23))) >> 47);
  v12 = 0x2BC6D2A9D6CE166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v11) ^ ((0xC6A4A7935BD1E995 * v11) >> 47))) ^ (v8 >> 47) ^ v8) + 0x1CCA8C862B949BLL;
  v13 = 21 * ((265 * (v12 ^ (v12 >> 24))) ^ ((265 * (v12 ^ (v12 >> 24))) >> 14));
  v14 = 2147483649u * (v13 ^ (v13 >> 28));
  v15 = (result + 48 * (((((v13 ^ (v13 >> 28)) >> 8) ^ ((-2147483647 * (v13 ^ (v13 >> 28))) >> 16)) ^ ((-2147483647 * (v13 ^ (v13 >> 28))) >> 24)) & 0xF));
  v16 = v14 >> 7;
  v17 = v15[3];
  v18 = 0x101010101010101 * (v14 & 0x7F);
  v19 = *v15;
  while (1)
  {
    v20 = v16 & v17;
    v21 = *(v19 + v20);
    v22 = ((v21 ^ v18) - 0x101010101010101) & ~(v21 ^ v18) & 0x8080808080808080;
    if (v22)
    {
      break;
    }

LABEL_20:
    if ((v21 & (~v21 << 6) & 0x8080808080808080) != 0)
    {
      goto LABEL_23;
    }

    v3 += 8;
    v16 = v3 + v20;
  }

  while (1)
  {
    v23 = (v20 + (__clz(__rbit64(v22)) >> 3)) & v17;
    v24 = v15[1] + 40 * v23;
    if (*v24 == v4)
    {
      v25 = *(v24 + 4) == WORD2(v4) && *(v24 + 6) == BYTE6(v4);
      if (v25 && __PAIR64__(*(v24 + 12), *(v24 + 8)) == __PAIR64__(WORD2(v5), v5) && *(v24 + 14) == BYTE6(v5))
      {
        break;
      }
    }

    v22 &= v22 - 1;
    if (!v22)
    {
      goto LABEL_20;
    }
  }

  if (v17 == v23)
  {
LABEL_23:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    a3[4] = 0;
    return result;
  }

  *a3 = v15;
  a3[1] = (result + 768);
  a3[2] = (v19 + v23);
  a3[3] = v24;
  a3[4] = (v19 + v17);
  return result;
}

void sub_4BF464(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = sub_3AF6B4(a3);
  *(a1 + 8) = sub_3B1348(a3);
  *(a1 + 16) = sub_3B1AF0(a3);
  v8 = sub_3AF144(a3);
  *(a1 + 112) = &unk_2290750;
  *(a1 + 24) = v8;
  *(a1 + 32) = a2;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = &unk_2290750;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 208) = &unk_2290750;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = &unk_2290750;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 296) = 0;
  *(a1 + 304) = &unk_2290750;
  *(a1 + 328) = 0;
  *(a1 + 312) = 0u;
  *(a1 + 344) = 0;
  *(a1 + 352) = &unk_2290750;
  *(a1 + 376) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 400) = &unk_2290750;
  *(a1 + 424) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = &unk_2290750;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = &unk_2290750;
  *(a1 + 520) = 0;
  *(a1 + 504) = 0u;
  *(a1 + 536) = 0;
  *(a1 + 544) = &unk_2290750;
  *(a1 + 568) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 584) = 0;
  *(a1 + 592) = &unk_2290750;
  *(a1 + 632) = 0;
  *(a1 + 616) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 640) = &unk_2290750;
  *(a1 + 680) = 0;
  *(a1 + 664) = 0;
  *(a1 + 648) = 0u;
  *(a1 + 688) = &unk_2290750;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0;
  *(a1 + 696) = 0u;
  *(a1 + 736) = &unk_2290750;
  *(a1 + 776) = 0;
  *(a1 + 760) = 0;
  *(a1 + 744) = 0u;
  *(a1 + 784) = &unk_2290750;
  *(a1 + 824) = 0;
  *(a1 + 808) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 832) = &unk_2290750;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0;
  *(a1 + 840) = 0u;
  sub_4C16A0(a1 + 880, a4);
}

void sub_4BF5FC(_Unwind_Exception *a1)
{
  sub_4578A0(v2);
  v4 = *(v1 + 88);
  if (v4)
  {
    *(v1 + 96) = v4;
    operator delete(v4);
  }

  sub_21E21E8(v1 + 64);
  _Unwind_Resume(a1);
}

void *sub_4BF634@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  result = sub_4D1DDC(a2, &v13);
  if (*(a1 + 880) == 1 && v16 - v14 != 1)
  {
    result = sub_4C28B4(v13, v14, v15, v16);
    v6 = result;
    v8 = v7;
    v10 = v15;
    v9 = v16;
    if (result)
    {
      result = sub_4D1DC0(result);
      v11 = result;
      if (v10)
      {
        result = sub_4D1DC0(v10);
        if (v8 >= v11 || v9 >= result)
        {
          if (v8 < v11 == v9 < result)
          {
            goto LABEL_3;
          }
        }

        else
        {
          v12 = sub_4D1F50(v6, v8);
          result = sub_4D1F50(v10, v9);
          if (v12 == result)
          {
            goto LABEL_3;
          }
        }
      }

      else if (v8 >= result)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_3;
      }

      result = sub_4D1DC0(v15);
      if (v9 >= result)
      {
        goto LABEL_3;
      }
    }

    sub_4D1F50(v6, v8);
    operator new();
  }

LABEL_3:
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void sub_4BFFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (!a14)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(a14);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_4C0020(uint64_t *a1, int ***a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = sub_4D1F50(*a2, a2[1]);
  v7 = sub_4D1F50(v4, v5);
  v8 = v7;
  v9 = v6[4];
  v10 = v7[4];
  v11 = (*v6 - **v6);
  v12 = *v11;
  if ((v9 & 0xFF000000000000) != 0)
  {
    if (v12 < 0x29)
    {
      goto LABEL_11;
    }

    v13 = v11[20];
    if (!v13)
    {
      goto LABEL_11;
    }
  }

  else if (v12 < 0x27 || (v13 = v11[19]) == 0)
  {
LABEL_11:
    v14 = 0;
    v15 = *v7;
    v16 = (*v7 - **v7);
    v17 = *v16;
    if ((v10 & 0xFF000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v14 = *(*v6 + v13 + *(*v6 + v13));
  v15 = *v7;
  v16 = (*v7 - **v7);
  v17 = *v16;
  if ((v10 & 0xFF000000000000) != 0)
  {
LABEL_12:
    if (v17 >= 0x29)
    {
      v18 = v16[20];
      if (v18)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

LABEL_8:
  if (v17 >= 0x27)
  {
    v18 = v16[19];
    if (v18)
    {
LABEL_14:
      v19 = *&v15[v18 + *&v15[v18]];
      result = &unk_2298360;
      if (v14 > 1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

LABEL_16:
  v19 = 0;
  result = &unk_2298360;
  if (v14 > 1)
  {
    goto LABEL_18;
  }

LABEL_17:
  if (v19 < 2)
  {
    return result;
  }

LABEL_18:
  v149 = v14;
  v154[0] = v9 & 0xFFFFFFFFFFFFFFLL;
  v154[1] = v10 & 0xFFFFFFFFFFFFFFLL;
  sub_4BF258((a1 + 14), v154, v153);
  if (v153[0])
  {
    return v153[3] + 2;
  }

  v151 = a1;
  v21 = (*v6 - **v6);
  v22 = *v21;
  if (*(v6 + 38))
  {
    if (v22 < 0x29)
    {
      goto LABEL_34;
    }

    v23 = v21[20];
    if (!v23)
    {
      goto LABEL_34;
    }
  }

  else
  {
    if (v22 < 0x27)
    {
      goto LABEL_34;
    }

    v23 = v21[19];
    if (!v23)
    {
      goto LABEL_34;
    }
  }

  v24 = (*v6 + v23 + *(*v6 + v23));
  v25 = *v24;
  if (v25)
  {
    v26 = 0;
    v27 = 0;
    v28 = 4 * v25;
    do
    {
      v29 = v24[v26 / 4 + 1];
      v30 = &v24[v26 / 4] + v29 - *(&v24[v26 / 4 + 1] + v29);
      if (*(v30 + 2) >= 5u)
      {
        v31 = *(v30 + 4);
        if (v31)
        {
          v27 += (*(&v24[v26 / 4 + 1] + v29 + v31) >> 2) & 1;
        }
      }

      v26 += 4;
    }

    while (v28 != v26);
  }

  else
  {
    v27 = 0;
  }

  if (sub_314EB0(v27))
  {
    goto LABEL_59;
  }

LABEL_34:
  v32 = (*v8 - **v8);
  v33 = *v32;
  if (*(v8 + 38))
  {
    if (v33 < 0x29)
    {
      goto LABEL_49;
    }

    v34 = v32[20];
    if (!v34)
    {
      goto LABEL_49;
    }

LABEL_40:
    v35 = (*v8 + v34 + *(*v8 + v34));
    v36 = *v35;
    if (v36)
    {
      v37 = 0;
      v38 = 0;
      v39 = 4 * v36;
      do
      {
        v40 = v35[v37 / 4 + 1];
        v41 = &v35[v37 / 4] + v40 - *(&v35[v37 / 4 + 1] + v40);
        if (*(v41 + 2) >= 5u)
        {
          v42 = *(v41 + 4);
          if (v42)
          {
            v38 += (*(&v35[v37 / 4 + 1] + v40 + v42) >> 2) & 1;
          }
        }

        v37 += 4;
      }

      while (v39 != v37);
    }

    else
    {
      v38 = 0;
    }

    if (sub_314EB0(v38))
    {
      goto LABEL_59;
    }

    goto LABEL_49;
  }

  if (v33 >= 0x27)
  {
    v34 = v32[19];
    if (v34)
    {
      goto LABEL_40;
    }
  }

LABEL_49:
  if (v149 == v19)
  {
    v43 = sub_31DDCC(*a1, v9 & 0xFFFFFFFFFFFFFFLL);
    v44 = sub_31DDCC(*a1, v10 & 0xFFFFFFFFFFFFFFLL);
    if (v43)
    {
      if (HIDWORD(v43) != 0xFFFFFFFF && v44 && HIDWORD(v44) != 0xFFFFFFFF && v43 == v44 && HIDWORD(v43) == HIDWORD(v44))
      {
        sub_4C1B7C((a1 + 14), v154, v155);
        if (v156 + 2 != &unk_2298360)
        {
          sub_4C2528(v156 + 2, 0, 0, 0);
        }

        return &unk_2298360;
      }
    }
  }

LABEL_59:
  sub_4C1B7C((a1 + 14), v154, v155);
  v45 = v156;
  v152 = (v156 + 2);
  sub_3128F4(v6, v10 & 0xFFFFFFFFFFFFFFLL, (v156 + 2), 1);
  sub_311C0C(v8, a1 + 8);
  v47 = v45[2];
  v46 = v45[3];
  if (v47 == v46)
  {
    v52 = v45[2];
  }

  else
  {
    v48 = a1[9];
    v49 = v45[2];
    if (v48 != a1[8])
    {
      v49 = v45[2];
      while (1)
      {
        v50 = a1[8];
        while (v49[1] != *v50)
        {
          if (++v50 == v48)
          {
            v50 = a1[9];
            break;
          }
        }

        if (v50 == v48)
        {
          break;
        }

        v49 += 2;
        if (v49 == v46)
        {
          goto LABEL_84;
        }
      }
    }

    if (v49 == v46 || (v51 = v49 + 2, v49 + 2 == v46))
    {
      v52 = v49;
    }

    else
    {
      v52 = v49;
      do
      {
        v53 = v51;
        v54 = a1[8];
        v55 = a1[9];
        if (v54 != v55)
        {
          while (v49[3] != *v54)
          {
            if (++v54 == v55)
            {
              v54 = a1[9];
              break;
            }
          }
        }

        if (v54 != v55)
        {
          *v52 = *v53;
          v52[1] = v49[3];
          v52 += 2;
        }

        v51 = v53 + 2;
        v49 = v53;
      }

      while (v53 + 2 != v46);
      v47 = v45[2];
      v46 = v45[3];
    }
  }

  if (v52 != v46)
  {
    v45[3] = v52;
    v46 = v52;
  }

LABEL_84:
  v56 = v46 - v47;
  v57 = sub_311A24(*v6, *(v6 + 38));
  v58 = v45[2];
  v59 = v45[3];
  if (v57 == v56 >> 1)
  {
    v60 = v59 - v58;
    v61 = sub_311A24(*v8, *(v8 + 38));
    v58 = v45[2];
    v59 = v45[3];
    if (v61 == v60 >> 1)
    {
      if (v58 == v59)
      {
LABEL_90:
        v45[3] = v58;
        return v152;
      }

      v62 = v45[2];
      while (v62[1] == *v62)
      {
        v62 += 2;
        if (v62 == v59)
        {
          goto LABEL_90;
        }
      }
    }
  }

  if (v58 != v59)
  {
    return v152;
  }

  v45[3] = v58;
  sub_311C0C(v6, v151 + 5);
  v63 = v151[5];
  v64 = v151[6];
  v65 = v151[8];
  v66 = v151[9];
  v67 = v65 == v66;
  v68 = v63 == v64;
  if (v63 == v64)
  {
    v70 = v151[7];
    if (v63 >= v70)
    {
      operator new();
    }

    *v64 = 0;
    v151[6] = (v64 + 1);
    v66 = v151[9];
    v69 = v68 ^ v67;
    if (v151[8] != v66)
    {
LABEL_96:
      if (!v69)
      {
LABEL_147:
        v100 = v151;
        v101 = sub_10235B8(v151[4], a2);
        v102 = (*v6 - **v6);
        v104 = *v102 < 0x9Bu || (v103 = v102[77]) == 0 || (*(*v6 + v103 + 1) & 0x80) == 0;
        v105 = fabs(v101);
        v81 = v101 == 0.0;
        v106 = v101 >= 0.0;
        v107 = *(v151 + 111);
        v108 = v81 || v105 < *(v151 + 112);
        if (v105 < v107 && v149 == 0)
        {
          v115 = v151[8];
          v116 = v151[9];
          if (v115 != v116)
          {
            v117 = v45[3];
            while (1)
            {
              v118 = v151[5];
              v119 = v45[4];
              if (v117 < v119)
              {
                *v117 = *v118;
                v117[1] = *v115;
                v117 += 2;
              }

              else
              {
                v120 = *v152;
                v121 = v117 - *v152;
                v122 = v121 >> 1;
                if (v121 >> 1 <= -2)
                {
                  goto LABEL_208;
                }

                v123 = v119 - v120;
                if (v123 <= v122 + 1)
                {
                  v124 = v122 + 1;
                }

                else
                {
                  v124 = v123;
                }

                if (v123 >= 0x7FFFFFFFFFFFFFFELL)
                {
                  v125 = 0x7FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v125 = v124;
                }

                if (v125)
                {
                  if ((v125 & 0x8000000000000000) == 0)
                  {
                    operator new();
                  }

                  goto LABEL_209;
                }

                v126 = (2 * v122);
                *v126 = *v118;
                v126[1] = *v115;
                v117 = (2 * v122 + 2);
                memcpy(0, v120, v121);
                v45[2] = 0;
                v45[3] = v117;
                v45[4] = 0;
                if (v120)
                {
                  operator delete(v120);
                }
              }

              v45[3] = v117;
              if (++v115 == v116)
              {
                return v152;
              }
            }
          }

          return v152;
        }

        if (v105 >= v107)
        {
          goto LABEL_212;
        }

        v110 = v151[8];
        if (v151[9] - v110 >= (v151[6] - v151[5]))
        {
          v111 = v151[6] - v151[5];
        }

        else
        {
          v111 = v151[9] - v110;
        }

        if (!v111)
        {
          return v152;
        }

        if (v111 == 1)
        {
LABEL_212:
          if (sub_1023A58(v151[4], a2))
          {
            v112 = ~*(v151 + 16) + *(v151 + 18);
            v113 = *(v151 + 232);
            if (v112 >= v113)
            {
              v114 = v113;
            }

            else
            {
              v114 = v112;
            }
          }

          else
          {
            v114 = 0;
          }

          v111 = 1;
        }

        else
        {
          v114 = 0;
        }

        v127 = 0;
        v128 = v108 | v106 ^ v104;
        v129 = ~v114;
        v130 = -1;
        v147 = v114;
        v148 = v111;
        v146 = v128;
        while (1)
        {
          v132 = v100[5];
          if (v128)
          {
            v133 = v127 + v114;
            v134 = v100[8];
            v135 = v127;
            v136 = v45[3];
            v137 = v45[4];
            if (v136 < v137)
            {
              goto LABEL_188;
            }
          }

          else
          {
            v135 = v130 + v100[6] - v132;
            v134 = v100[8];
            v133 = v129 + v100[9] - v134;
            v136 = v45[3];
            v137 = v45[4];
            if (v136 < v137)
            {
LABEL_188:
              *v136 = *(v132 + v135);
              v136[1] = *(v134 + v133);
              v131 = (v136 + 2);
              goto LABEL_189;
            }
          }

          v138 = *v152;
          v139 = v136 - *v152;
          v140 = v139 >> 1;
          if (v139 >> 1 <= -2)
          {
            goto LABEL_208;
          }

          v141 = v137 - v138;
          if (v141 <= v140 + 1)
          {
            v142 = v140 + 1;
          }

          else
          {
            v142 = v141;
          }

          if (v141 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v143 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v143 = v142;
          }

          if (v143)
          {
            if ((v143 & 0x8000000000000000) == 0)
            {
              operator new();
            }

            goto LABEL_209;
          }

          v144 = (2 * v140);
          *v144 = *(v132 + v135);
          v144[1] = *(v134 + v133);
          v131 = 2 * v140 + 2;
          v145 = &v144[-2 * (v139 >> 1)];
          memcpy(v145, v138, v139);
          v45[2] = v145;
          v45[3] = v131;
          v45[4] = 0;
          if (v138)
          {
            operator delete(v138);
          }

          v100 = v151;
          v114 = v147;
          v111 = v148;
          v128 = v146;
LABEL_189:
          v45[3] = v131;
          ++v127;
          --v129;
          --v130;
          if (v111 + v130 == -1)
          {
            return v152;
          }
        }
      }

      goto LABEL_107;
    }
  }

  else
  {
    v69 = v68 ^ v67;
    if (v65 != v66)
    {
      goto LABEL_96;
    }
  }

  v71 = v151[10];
  if (v66 >= v71)
  {
    operator new();
  }

  *v66 = 0;
  v151[9] = (v66 + 1);
  if (!v69)
  {
    goto LABEL_147;
  }

LABEL_107:
  v72 = *v151;
  v73 = sub_3116D0(v6);
  sub_2B365C(v72, v73, 0, v151 + 11);
  v74 = v151[11];
  v75 = v151[12];
  if (v74 == v75)
  {
    goto LABEL_126;
  }

  v76 = 0;
  do
  {
    v83 = *v74;
    v84 = sub_2B51D8(*v151, *v74 & 0xFFFFFFFFFFFFLL);
    v85 = (v84 - *v84);
    if (*v85 < 0x9Bu)
    {
LABEL_114:
      v82 = 0;
      goto LABEL_115;
    }

    v82 = v85[77];
    if (v82)
    {
      if ((*(v84 + v82) & 3) == 0)
      {
        goto LABEL_114;
      }

      if ((v9 != v83 || WORD2(v9) != WORD2(v83)) && (v10 != v83 || WORD2(v10) != WORD2(v83)))
      {
        v86 = sub_2B51D8(*v151, v83 & 0xFFFFFFFFFFFFLL);
        v87 = (v86 - *v86);
        if (*v87 >= 0x2Fu)
        {
          v77 = v87[23];
          if (v77)
          {
            v78 = *(v86 + v77);
            v79 = v78 > 0x2F;
            v80 = (1 << v78) & 0xE2E040048000;
            v81 = v79 || v80 == 0;
            if (!v81)
            {
              goto LABEL_114;
            }
          }
        }
      }

      v82 = 1;
    }

LABEL_115:
    v76 += v82;
    ++v74;
  }

  while (v74 != v75);
  if (v76 > 2)
  {
    goto LABEL_147;
  }

LABEL_126:
  v88 = v151[5];
  v150 = v151[6];
  if (v88 != v150 && v151[8] != v151[9])
  {
    do
    {
      v90 = v151[8];
      v89 = v151[9];
      if (v90 != v89)
      {
        v91 = v45[3];
        do
        {
          v92 = v45[4];
          if (v91 < v92)
          {
            *v91 = *v88;
            v91[1] = *v90;
            v91 += 2;
          }

          else
          {
            v93 = *v152;
            v94 = v91 - *v152;
            v95 = v94 >> 1;
            if (v94 >> 1 <= -2)
            {
LABEL_208:
              sub_1794();
            }

            v96 = v92 - v93;
            if (v96 <= v95 + 1)
            {
              v97 = v95 + 1;
            }

            else
            {
              v97 = v96;
            }

            if (v96 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v98 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v98 = v97;
            }

            if (v98)
            {
              if ((v98 & 0x8000000000000000) == 0)
              {
                operator new();
              }

LABEL_209:
              sub_1808();
            }

            v99 = (2 * v95);
            *v99 = *v88;
            v99[1] = *v90;
            v91 = (2 * v95 + 2);
            memcpy(0, v93, v94);
            v45[2] = 0;
            v45[3] = v91;
            v45[4] = 0;
            if (v93)
            {
              operator delete(v93);
            }
          }

          v45[3] = v91;
          ++v90;
        }

        while (v90 != v89);
      }

      ++v88;
    }

    while (v88 != v150);
  }

  return v152;
}

void sub_4C0DAC(void *a1@<X8>)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  operator new();
}

void sub_4C1090(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = sub_4D1F50(a2, *a3);
  v7 = (*v6 - **v6);
  if (*v7 < 0x2Fu || (v8 = v7[23]) == 0 || ((v9 = *(*v6 + v8), v10 = v9 > 0x1A, v11 = (1 << v9) & 0x4810001, !v10) ? (v12 = v11 == 0) : (v12 = 1), v12))
  {
    v13 = a1 + 936;
    v14 = *(a1 + 944);
    if (*(a1 + 952) <= 0.0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = a1 + 968;
    v14 = *(a1 + 976);
    if (*(a1 + 984) <= 0.0)
    {
      goto LABEL_22;
    }
  }

  if (*a3)
  {
    v15 = *a3 - 1;
  }

  else
  {
    v15 = 0;
  }

  if (v15 >= 1)
  {
    while (1)
    {
      v16 = sub_4D1F50(a2, v15);
      v17 = (*v16 - **v16);
      if (*v17 < 0x9Bu)
      {
        break;
      }

      v18 = v17[77];
      if (!v18 || (*(*v16 + v18 + 2) & 1) == 0)
      {
        break;
      }

      v10 = v15-- <= 1;
      if (v10)
      {
        v19 = 0;
        goto LABEL_21;
      }
    }
  }

  v19 = v15;
LABEL_21:
  v20 = *(a1 + 16);
  v21 = sub_4D1F50(a2, v19);
  v22 = sub_3E37C0(v20, *(v21 + 32) & 0xFFFFFFFFFFFFFFLL);
  v14 = (round(*(v13 + 16) * sub_2BC7A8(*(a1 + 24), v22)) + v14);
LABEL_22:
  v24 = *a3;
  v23 = a3[1];
  v25 = 0.0;
  v26 = 0.0;
  if (*a3 <= v23)
  {
    v27 = a3[1];
  }

  else
  {
    v27 = *a3;
  }

  if (*a3 < v23)
  {
    do
    {
      v28 = sub_4D1F50(a2, v24);
      v30 = (*v28 - **v28);
      v31 = *v30;
      if (*(v28 + 38))
      {
        if (v31 >= 0x29)
        {
          v32 = v30[20];
          if (v32)
          {
            goto LABEL_36;
          }
        }
      }

      else if (v31 >= 0x27)
      {
        v32 = v30[19];
        if (v32)
        {
LABEL_36:
          v33 = *(*v28 + v32 + *(*v28 + v32));
          if (v33)
          {
            v34 = v28;
            v35 = sub_4D23F8(a2, v24, v29);
            v26 = v26 + v33 * v35;
            v36 = sub_3E37C0(*(a1 + 16), v34[4] & 0xFFFFFFFFFFFFFFLL);
            v37 = sub_2BC7A8(*(a1 + 24), v36);
            v25 = v25 + pow(((v37 - v14) & ~((v37 - v14) >> 31)), *v13) * v35;
          }
        }
      }

      ++v24;
    }

    while (v27 != v24);
  }

  if (*(v13 + 24) != 1.0)
  {
    sub_4C1334(a1, a2, a3);
  }
}

BOOL sub_4C1334(uint64_t *a1, void *a2, void *a3)
{
  v5 = 0;
  v6 = *a3;
  v7 = (*a3 & (*a3 >> 31));
  while (1)
  {
    if (v7 == v6)
    {
      return v5 & 1;
    }

    v8 = v6 - 1;
    v9 = sub_4D1F50(a2, v6 - 1);
    v10 = (*v9 - **v9);
    if (*v10 < 0x9Bu || (v11 = v10[77]) == 0 || (*(*v9 + v11 + 3) & 2) == 0)
    {
      v5 = 1;
      return v5 & 1;
    }

    v12 = *a1;
    v13 = sub_4D1F50(a2, v6 - 1);
    v14 = sub_4BF020(v12, *(v13 + 32) & 0xFFFFFFFFFFFFFFLL, a1[115], 1);
    v15 = sub_4D1F50(a2, v6);
    v16 = sub_319BB0(v15, 1, *a1);
    if (v16)
    {
      v17 = sub_4D1F50(a2, v8);
      if (v16 != *(v17 + 32) || (HIDWORD(v16) & 0xFFFFFF) != (*(v17 + 36) & 0xFFFFFF))
      {
        break;
      }
    }

    v5 |= v14;
    v18 = sub_4D1F50(a2, v8);
    v19 = (*v18 - **v18);
    if (*v19 >= 0x9Bu)
    {
      v20 = v19[77];
      if (v20)
      {
        v6 = v8;
        if (*(*v18 + v20 + 2))
        {
          continue;
        }
      }
    }

    return v5 & 1;
  }

  v22 = *a1;
  v23 = a1[115];

  return sub_4BF020(v22, v16 & 0xFFFFFFFFFFFFFFLL, v23, 1);
}

void sub_4C14C8(uint64_t a1, void *a2)
{
  v9 = 20;
  strcpy(__p, "observation_exponent");
  v4 = sub_63D34(a2, __p);
  if (v9 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v9 = 21;
  strcpy(__p, "observation_threshold");
  v6 = sub_352470(a2, __p);
  if (v9 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 8) = v6;
  operator new();
}

void sub_4C1678(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C16A0(uint64_t a1, void *a2)
{
  v13 = 6;
  strcpy(__p, "enable");
  v4 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v5 = v4;
    operator delete(*__p);
    v4 = v5;
  }

  *a1 = v4;
  v13 = 14;
  strcpy(__p, "kittyhawk_only");
  v6 = sub_5F9D0(a2, __p);
  if (v13 < 0)
  {
    v7 = v6;
    operator delete(*__p);
    v6 = v7;
  }

  *(a1 + 1) = v6;
  v13 = 14;
  strcpy(__p, "min_turn_angle");
  v8 = sub_63D34(a2, __p);
  if (v13 < 0)
  {
    v9 = v8;
    operator delete(*__p);
    v8 = v9;
  }

  *(a1 + 8) = v8;
  v13 = 20;
  strcpy(__p, "inner_to_outer_angle");
  v10 = sub_63D34(a2, __p);
  if (v13 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  *(a1 + 16) = v10;
  v13 = 18;
  strcpy(__p, "fallback_speed_kph");
  *(a1 + 24) = sub_64D3C(a2, __p);
  if (v13 < 0)
  {
    operator delete(*__p);
  }

  operator new();
}

void sub_4C1A54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_4C1A94(uint64_t a1, uint64_t a2)
{
  v2 = 24;
  if (!*(a2 + 38))
  {
    v2 = 16;
  }

  v3 = *(a2 + v2);
  if (!v3)
  {
    return sub_363970(a1, *(a2 + 32) & 0xFFFFFFFFFFFFFFLL);
  }

  v4 = (v3 - *v3);
  v5 = *v4;
  if (v5 >= 9 && v4[4])
  {
    v6 = *(v3 + v4[4]);
    v7 = *(a1 + 3872);
    if (!*(a1 + 3872))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v6 = 0xFFFF;
    v7 = *(a1 + 3872);
    if (!*(a1 + 3872))
    {
      goto LABEL_13;
    }
  }

  if (v5 >= 0xF)
  {
    v8 = v4[7];
    if (v8)
    {
      v9 = (v3 + v8 + *(v3 + v8));
      if (*v9 >= v7)
      {
        v10 = *(v9 + v7 + 1);
        if ((v10 + 1) > 1u)
        {
          v12 = v10;
          return v12 / 100.0;
        }
      }
    }
  }

LABEL_13:
  result = -1.0;
  if ((v6 - 1) > 0xFFFDu)
  {
    return result;
  }

  v12 = v6;
  return v12 / 100.0;
}

unint64_t sub_4C1B7C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2[1];
  v7 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  if ((*a2 & 0xFF000000000000) != 0)
  {
    v8 = (*a2 >> 16) & 0xFFFF0000 | (*a2 << 32);
  }

  else
  {
    v8 = v7 + 1;
  }

  v9 = 0x2127599BF4325C37 * (v8 ^ (v7 >> 23));
  v10 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  if ((v6 & 0xFF000000000000) != 0)
  {
    v11 = (v6 >> 16) & 0xFFFF0000 | (v6 << 32);
  }

  else
  {
    v11 = v10 + 1;
  }

  v12 = (0x2127599BF4325C37 * (v11 ^ (v10 >> 23))) ^ ((0x2127599BF4325C37 * (v11 ^ (v10 >> 23))) >> 47);
  v13 = 0x2BC6D2A9D6CE166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v12) ^ ((0xC6A4A7935BD1E995 * v12) >> 47))) ^ (v9 >> 47) ^ v9) + 0x1CCA8C862B949BLL;
  v14 = 21 * ((265 * (v13 ^ (v13 >> 24))) ^ ((265 * (v13 ^ (v13 >> 24))) >> 14));
  v15 = (a1 + 48 * (((((v14 ^ (v14 >> 28)) >> 8) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 16)) ^ ((-2147483647 * (v14 ^ (v14 >> 28))) >> 24)) & 0xF));
  result = sub_4C1CD0(v15, a2, 2147483649u * (v14 ^ (v14 >> 28)));
  if (v17)
  {
    v18 = v15[1] + 40 * result;
    *v18 = *a2;
    *(v18 + 24) = 0;
    *(v18 + 32) = 0;
    *(v18 + 16) = 0;
  }

  v19 = *v15 + result;
  v20 = v15[1] + 40 * result;
  v21 = *v15 + v15[3];
  *a3 = v15;
  *(a3 + 8) = a1 + 768;
  *(a3 + 16) = v19;
  *(a3 + 24) = v20;
  *(a3 + 32) = v21;
  *(a3 + 48) = v17;
  return result;
}

unint64_t sub_4C1CD0(void *a1, void *a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 7;
  v5 = a1[3];
  v6 = a2[1];
  while (1)
  {
    v7 = v4 & v5;
    v8 = *(*a1 + (v4 & v5));
    v9 = ((v8 ^ (0x101010101010101 * (a3 & 0x7F))) - 0x101010101010101) & ~(v8 ^ (0x101010101010101 * (a3 & 0x7F))) & 0x8080808080808080;
    if (v9)
    {
      break;
    }

LABEL_12:
    if ((v8 & (~v8 << 6) & 0x8080808080808080) != 0)
    {
      return sub_4C1DF4(a1, a3);
    }

    v3 += 8;
    v4 = v3 + v7;
  }

  while (1)
  {
    v10 = (v7 + (__clz(__rbit64(v9)) >> 3)) & v5;
    v11 = a1[1] + 40 * v10;
    if (*v11 == *a2)
    {
      v12 = *(v11 + 4) == WORD2(*a2) && *(v11 + 6) == BYTE6(*a2);
      if (v12 && __PAIR64__(*(v11 + 12), *(v11 + 8)) == __PAIR64__(WORD2(v6), v6) && *(v11 + 14) == BYTE6(v6))
      {
        return v10;
      }
    }

    v9 &= v9 - 1;
    if (!v9)
    {
      goto LABEL_12;
    }
  }
}

unint64_t sub_4C1DF4(void *a1, unint64_t a2)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = v2 & (a2 >> 7);
  v5 = *(*a1 + v4) & (~*(*a1 + v4) << 7) & 0x8080808080808080;
  if (!v5)
  {
    v6 = 8;
    do
    {
      v4 = (v4 + v6) & v2;
      v6 += 8;
      v5 = *(v3 + v4) & (~*(v3 + v4) << 7) & 0x8080808080808080;
    }

    while (!v5);
  }

  v7 = (v4 + (__clz(__rbit64(v5)) >> 3)) & v2;
  v8 = a1[5];
  if (!v8)
  {
    if (*(v3 + v7) == 254)
    {
      v8 = 0;
    }

    else
    {
      v10 = a2;
      v11 = a1;
      sub_4C1EEC(a1);
      v7 = sub_308ECC(v11, v10);
      LOBYTE(a2) = v10;
      a1 = v11;
      v3 = *v11;
      v8 = v11[5];
    }
  }

  ++a1[2];
  a1[5] = v8 - (*(v3 + v7) == 128);
  *(v3 + v7) = a2 & 0x7F;
  *(*a1 + (a1[3] & 7) + (a1[3] & (v7 - 8)) + 1) = a2 & 0x7F;
  return v7;
}

uint64_t sub_4C1EEC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1 || *(a1 + 16) > (v1 - (v1 >> 3)) >> 1)
  {
    sub_4C1F1C();
  }

  return sub_4C217C(a1);
}

uint64_t sub_4C217C(uint64_t result)
{
  v1 = *result;
  v2 = *(result + 24);
  v3 = *result + v2;
  if (v3 + 1 != *result)
  {
    v4 = v2 - 7;
    v5 = *result;
    if (v4 < 0x18)
    {
      goto LABEL_34;
    }

    v6 = (v4 >> 3) + 1;
    v5 = v1 + (v6 & 0x3FFFFFFFFFFFFFFCLL);
    v7 = v1 + 1;
    v8.i64[0] = 0x8080808080808080;
    v8.i64[1] = 0x8080808080808080;
    v9.i64[0] = 0xFEFEFEFEFEFEFEFELL;
    v9.i64[1] = 0xFEFEFEFEFEFEFEFELL;
    v10 = v6 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v11 = vandq_s8(v7[-1], v8);
      v12 = vandq_s8(*v7, v8);
      v7[-1] = vandq_s8(vsraq_n_u64(vmvnq_s8(v11), v11, 7uLL), v9);
      *v7 = vandq_s8(vsraq_n_u64(vmvnq_s8(v12), v12, 7uLL), v9);
      v7 += 2;
      v10 -= 4;
    }

    while (v10);
    if (v6 != (v6 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_34:
      do
      {
        *v5 = (~(*v5 & 0x8080808080808080) + ((*v5 & 0x8080808080808080) >> 7)) & 0xFEFEFEFEFEFEFEFELL;
        ++v5;
      }

      while (v5 != (v3 + 1));
    }
  }

  *(v3 + 1) = v1->i64[0];
  *v3 = -1;
  v13 = *(result + 24);
  if (v13)
  {
    for (i = 0; i != v13; ++i)
    {
      v17 = *result;
      if (*(*result + i) == 254)
      {
        v18 = (*(result + 8) + 40 * i);
        v20 = *v18;
        v19 = v18[1];
        v21 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
        if ((v20 & 0xFF000000000000) != 0)
        {
          v22 = (v20 >> 16) & 0xFFFF0000 | (v20 << 32);
        }

        else
        {
          v22 = v21 + 1;
        }

        v23 = 0x2127599BF4325C37 * (v22 ^ (v21 >> 23));
        v24 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        if ((v19 & 0xFF000000000000) != 0)
        {
          v25 = (v19 >> 16) & 0xFFFF0000 | (v19 << 32);
        }

        else
        {
          v25 = v24 + 1;
        }

        v26 = 0xC6A4A7935BD1E995 * ((0x2127599BF4325C37 * (v25 ^ (v24 >> 23))) ^ ((0x2127599BF4325C37 * (v25 ^ (v24 >> 23))) >> 47));
        v27 = 0x2BC6D2A9D6CE166BLL * ((0xC6A4A7935BD1E995 * (v26 ^ (v26 >> 47))) ^ (v23 >> 47) ^ v23) + 0x1CCA8C862B949BLL;
        v28 = 21 * ((265 * (v27 ^ (v27 >> 24))) ^ ((265 * (v27 ^ (v27 >> 24))) >> 14));
        v29 = 2147483649u * (v28 ^ (v28 >> 28));
        v30 = v13 & (v29 >> 7);
        v31 = *(v17->i64 + v30) & (~*(v17->i64 + v30) << 7) & 0x8080808080808080;
        if (v31)
        {
          v15 = v13 & (v29 >> 7);
        }

        else
        {
          v32 = 8;
          v15 = v13 & (v29 >> 7);
          do
          {
            v15 = (v15 + v32) & v13;
            v32 += 8;
            v31 = *(v17->i64 + v15) & (~*(v17->i64 + v15) << 7) & 0x8080808080808080;
          }

          while (!v31);
        }

        v16 = (v15 + (__clz(__rbit64(v31)) >> 3)) & v13;
        if ((((v16 - v30) ^ (i - v30)) & v13) > 7)
        {
          v33 = v17->u8[v16];
          v17->i8[v16] = v29 & 0x7F;
          *(*result + (*(result + 24) & 7) + (*(result + 24) & (v16 - 8)) + 1) = v29 & 0x7F;
          v34 = *(result + 8);
          if (v33 == 128)
          {
            v35 = v34 + 40 * v16;
            v36 = v34 + 40 * i;
            *(v35 + 24) = 0;
            *(v35 + 32) = 0;
            *(v35 + 16) = 0;
            v37 = *(v36 + 16);
            *v35 = *v36;
            *(v35 + 16) = v37;
            *(v35 + 32) = *(v36 + 32);
            *(v36 + 24) = 0;
            *(v36 + 32) = 0;
            *(v36 + 16) = 0;
            *(*result + i) = 0x80;
            *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = 0x80;
          }

          else
          {
            v38 = (v34 + 40 * i);
            v39 = v38[1];
            v49 = *v38;
            v40 = *(v38 + 4);
            *(v38 + 3) = 0;
            *(v38 + 4) = 0;
            *(v38 + 2) = 0;
            v41 = *(result + 8);
            v42 = v41 + 40 * i;
            v43 = v41 + 40 * v16;
            *(v42 + 16) = 0;
            *(v42 + 24) = 0;
            *(v42 + 32) = 0;
            v44 = *(v43 + 16);
            *v42 = *v43;
            *(v42 + 16) = v44;
            *(v42 + 32) = *(v43 + 32);
            *(v43 + 24) = 0;
            *(v43 + 32) = 0;
            *(v43 + 16) = 0;
            v45 = *(result + 8) + 40 * v16;
            *v45 = v49;
            *(v45 + 16) = v39;
            *(v45 + 32) = v40;
            --i;
          }
        }

        else
        {
          v17->i8[i] = v29 & 0x7F;
          *(*result + (*(result + 24) & (i - 8)) + (*(result + 24) & 7) + 1) = v29 & 0x7F;
        }
      }

      v13 = *(result + 24);
    }

    v46 = i - (i >> 3);
    v47 = i == 7;
    v48 = 6;
    if (!v47)
    {
      v48 = v46;
    }
  }

  else
  {
    v48 = 0;
  }

  *(result + 40) = v48 - *(result + 16);
  return result;
}

char *sub_4C2528(unint64_t *a1, unint64_t a2, char *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a4 > (v5 - v6) >> 1)
  {
    if (v6)
    {
      a1[1] = v6;
      v8 = a4;
      operator delete(v6);
      a4 = v8;
      v5 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v5 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v5;
      }

      v10 = v5 >= 0x7FFFFFFFFFFFFFFELL;
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
  if (a4 <= &v12[-v6] >> 1)
  {
    if (a2 != a3)
    {
      v17 = &a3[-a2 - 2];
      if (v17 >= 0x3E)
      {
        v25 = (v17 & 0xFFFFFFFFFFFFFFFELL) + 2;
        if (v6 >= a2 + v25 || v6 + v25 <= a2)
        {
          v26 = (v17 >> 1) + 1;
          v27 = 2 * (v26 & 0xFFFFFFFFFFFFFFE0);
          result = (v6 + v27);
          v18 = (a2 + v27);
          v28 = (a2 + 32);
          v29 = (v6 + 32);
          v30 = v26 & 0xFFFFFFFFFFFFFFE0;
          do
          {
            v32 = *(v28 - 2);
            v31 = *(v28 - 1);
            v34 = *v28;
            v33 = v28[1];
            v28 += 4;
            *(v29 - 2) = v32;
            *(v29 - 1) = v31;
            *v29 = v34;
            v29[1] = v33;
            v29 += 4;
            v30 -= 32;
          }

          while (v30);
          if (v26 == (v26 & 0xFFFFFFFFFFFFFFE0))
          {
            goto LABEL_34;
          }
        }

        else
        {
          v18 = a2;
        }
      }

      else
      {
        v18 = a2;
      }

      do
      {
        *result = *v18;
        result[1] = v18[1];
        v18 += 2;
        result += 2;
      }

      while (v18 != a3);
    }

LABEL_34:
    a1[1] = result;
    return result;
  }

  v13 = &v12[a2 - v6];
  v14 = &v12[-v6];
  if (v12 != v6)
  {
    v15 = (v14 - 2);
    if ((v14 - 2) < 0xE)
    {
      v16 = a2;
      goto LABEL_44;
    }

    v21 = (v15 & 0xFFFFFFFFFFFFFFFELL) + 2;
    v22 = v6 < a2 + v21 && v6 + v21 > a2;
    v16 = a2;
    if (v22)
    {
      goto LABEL_44;
    }

    v23 = (v15 >> 1) + 1;
    if (v15 >= 0x3E)
    {
      v24 = v23 & 0xFFFFFFFFFFFFFFE0;
      v35 = (a2 + 32);
      v36 = (v6 + 32);
      v37 = v23 & 0xFFFFFFFFFFFFFFE0;
      do
      {
        v39 = *(v35 - 2);
        v38 = *(v35 - 1);
        v41 = *v35;
        v40 = v35[1];
        v35 += 4;
        *(v36 - 2) = v39;
        *(v36 - 1) = v38;
        *v36 = v41;
        v36[1] = v40;
        v36 += 4;
        v37 -= 32;
      }

      while (v37);
      if (v23 == v24)
      {
        goto LABEL_45;
      }

      if ((v23 & 0x18) == 0)
      {
        v16 = (a2 + 2 * v24);
        result = (v6 + 2 * v24);
        do
        {
LABEL_44:
          *result = *v16;
          result[1] = v16[1];
          v16 += 2;
          result += 2;
        }

        while (v16 != v13);
        goto LABEL_45;
      }
    }

    else
    {
      v24 = 0;
    }

    v42 = 2 * (v23 & 0xFFFFFFFFFFFFFFF8);
    result = (v6 + v42);
    v16 = (a2 + v42);
    v43 = (a2 + 2 * v24);
    v44 = (v6 + 2 * v24);
    v45 = v24 - (v23 & 0xFFFFFFFFFFFFFFF8);
    do
    {
      v46 = *v43++;
      *v44 = v46;
      v44 += 16;
      v45 += 8;
    }

    while (v45);
    if (v23 != (v23 & 0xFFFFFFFFFFFFFFF8))
    {
      goto LABEL_44;
    }

LABEL_45:
    v19 = a1[1];
    v20 = v19;
    if (v13 == a3)
    {
      goto LABEL_53;
    }

    goto LABEL_46;
  }

  v19 = a1[1];
  v20 = v19;
  if (v13 == a3)
  {
    goto LABEL_53;
  }

LABEL_46:
  v47 = &v12[a2];
  v48 = &a3[v6] - &v12[a2] - 2;
  if (v48 >= 0x1E)
  {
    v49 = v19 + v6 - v47;
    v20 = v19;
    if (v49 >= 0x20)
    {
      v50 = (v48 >> 1) + 1;
      v51 = 2 * (v50 & 0xFFFFFFFFFFFFFFF0);
      v13 += v51;
      v20 = (v19 + v51);
      v52 = (v19 + 16);
      v53 = &v14[a2 + 16];
      v54 = v50 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v55 = *v53;
        *(v52 - 1) = *(v53 - 1);
        *v52 = v55;
        v52 += 2;
        v53 += 2;
        v54 -= 16;
      }

      while (v54);
      if (v50 == (v50 & 0xFFFFFFFFFFFFFFF0))
      {
        goto LABEL_53;
      }
    }
  }

  else
  {
    v20 = v19;
  }

  do
  {
    v56 = *v13;
    v13 += 2;
    *v20++ = v56;
  }

  while (v13 != a3);
LABEL_53:
  a1[1] = v20;
  return result;
}

void *sub_4C28B4(void *a1, unint64_t a2, void *a3, unint64_t a4)
{
  while (a1)
  {
    v8 = sub_4D1DC0(a1);
    v9 = v8;
    if (a3)
    {
      v10 = sub_4D1DC0(a3);
      if (a2 >= v9 || a4 >= v10)
      {
        if (a2 < v9 == a4 < v10)
        {
          return a1;
        }
      }

      else
      {
        v11 = sub_4D1F50(a1, a2);
        if (v11 == sub_4D1F50(a3, a4))
        {
          return a1;
        }
      }
    }

    else if (a2 >= v8)
    {
      return a1;
    }

LABEL_16:
    v12 = sub_4D1F50(a1, a2);
    v13 = *v12;
    v14 = (*v12 - **v12);
    v15 = *v14;
    if (*(v12 + 38))
    {
      if (v15 < 0x29)
      {
        goto LABEL_26;
      }

      v16 = v14[20];
      if (!v14[20])
      {
        goto LABEL_23;
      }

LABEL_22:
      if (*&v13[v16 + *&v13[v16]])
      {
        goto LABEL_31;
      }

      goto LABEL_23;
    }

    if (v15 < 0x27)
    {
      goto LABEL_26;
    }

    v16 = v14[19];
    if (v14[19])
    {
      goto LABEL_22;
    }

LABEL_23:
    if (v15 >= 0x9B && v14[77] && (v13[v14[77] + 2] & 1) != 0)
    {
      goto LABEL_3;
    }

LABEL_26:
    v17 = v12[1];
    if (v17)
    {
      v18 = (v17 - *v17);
      if (*v18 >= 0x11u)
      {
        v19 = v18[8];
        if (v19)
        {
          LODWORD(v17) = (*(v17 + v19) >> 2) & 1;
          if (v15 < 0x9B)
          {
            goto LABEL_2;
          }

          goto LABEL_35;
        }

LABEL_31:
        LODWORD(v17) = 0;
        if (v15 < 0x9B)
        {
          goto LABEL_2;
        }

        goto LABEL_35;
      }

      LODWORD(v17) = 0;
    }

    if (v15 < 0x9B)
    {
      goto LABEL_2;
    }

LABEL_35:
    v20 = v14[77];
    if (!v20)
    {
LABEL_2:
      if (!v17)
      {
        return a1;
      }

      goto LABEL_3;
    }

    if (((v17 | ((v13[v20 + 3] & 4) >> 2)) & 1) == 0)
    {
      return a1;
    }

LABEL_3:
    ++a2;
  }

  if (a3 && a4 < sub_4D1DC0(a3))
  {
    goto LABEL_16;
  }

  return a1;
}

double sub_4C2A78@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 24) = 0;
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  return result;
}

double sub_4C2AA0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  result = 0.0;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 1065353216;
  *(a2 + 24) = 1;
  return result;
}

uint64_t *sub_4C2ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2;
  *a3 = *a1;
  *(a3 + 16) = *(a1 + 16);
  *(a3 + 24) = 0;
  *(a3 + 48) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 64) = 1065353216;
  return sub_4C2EB4((a3 + 32), &v4);
}

__n128 sub_4C2B44@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u32[0];
  if (v2 >= 2)
  {
    sub_5AF20();
  }

  result = *a1;
  *a2 = *a1;
  a2[1].n128_u32[0] = v2;
  return result;
}

uint64_t sub_4C2BA0(_DWORD *a1)
{
  if (a1[4])
  {
    sub_5AF20();
  }

  return *a1;
}

uint64_t sub_4C2BC4(_DWORD *a1)
{
  if (a1[4] != 1)
  {
    sub_5AF20();
  }

  return *a1;
}

uint64_t sub_4C2BEC(uint64_t a1)
{
  if (*(a1 + 16) != 1)
  {
    sub_5AF20();
  }

  return **a1 + 704 * *(a1 + 8);
}

uint64_t sub_4C2C1C(uint64_t result)
{
  if (*(result + 16) != 2)
  {
    sub_5AF20();
  }

  return result;
}

uint64_t sub_4C2C3C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == 1)
  {
    return **a1 + 704 * *(a1 + 8);
  }

  if (v1)
  {
    sub_5AF20();
  }

  return **a1 + 464 * *(a1 + 8);
}

uint64_t sub_4C2C8C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (!v1)
  {
    return 0;
  }

  while (1)
  {
    v2 = *(v1 + 4) == -1 || *(v1 + 10) == 0xFFFF;
    if (!v2 && *(v1 + 11) == 2)
    {
      break;
    }

    v1 = *v1;
    if (!v1)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_4C2CD4(uint64_t a1, uint64_t a2)
{
  result = 0;
  v4 = a2;
  if (a2 != -1 && (a2 & 0xFFFF00000000) != 0xFFFF00000000 && (a2 & 0xFFFF000000000000) == 0x2000000000000)
  {
    return sub_4C3220((a1 + 32), &v4) != 0;
  }

  return result;
}

uint64_t sub_4C2D38(uint64_t a1, uint64_t a2)
{
  v6 = *(a1 + 16);
  v7 = *(a2 + 16);
  result = v7 == v6;
  if (v6 != -1 && v7 == v6)
  {
    v11[1] = v2;
    v11[2] = v3;
    v11[0] = &v10;
    return (off_266AFD8[v6])(v11, a1);
  }

  return result;
}

uint64_t *sub_4C2D98(uint64_t *result, uint64_t a2)
{
  *(result + 24) |= *(a2 + 24);
  v2 = *(a2 + 48);
  if (v2)
  {
    v3 = result;
    do
    {
      result = sub_4C2EB4(v3 + 4, v2 + 4);
      v2 = *v2;
    }

    while (v2);
  }

  return result;
}

uint64_t sub_4C2DE8(uint64_t a1)
{
  v2 = *(a1 + 48);
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

  v4 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

BOOL sub_4C2E64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a2 != *a3)
  {
    return 0;
  }

  result = 0;
  if (*(a2 + 4) == WORD2(v3) && *(a2 + 6) == BYTE6(v3))
  {
    return *(a2 + 8) == *(a3 + 2);
  }

  return result;
}

uint64_t *sub_4C2EB4(void *a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 2);
  v4 = (v3 + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_31;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = (v3 + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % v5.i32[0];
    }
  }

  else
  {
    v7 = v4 & (*&v5 + 0x7FFFFFFFFFLL);
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
        if (*(v9 + 4) == v2 && v3 == *(v9 + 10))
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

  if (*(v9 + 4) != v2 || v3 != *(v9 + 10))
  {
    goto LABEL_12;
  }

  return v9;
}

uint64_t *sub_4C3220(void *a1, int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = *(a2 + 2);
  v5 = (v4 + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    if (v5 >= *&v2)
    {
      v7 = v5 % v2.i32[0];
      v8 = *(*a1 + 8 * v7);
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      v7 = (v4 + (*a2 << 6) + (*a2 >> 2) + 2654435769u) ^ *a2;
      v8 = *(*a1 + 8 * v5);
      if (!v8)
      {
        return 0;
      }
    }
  }

  else
  {
    v7 = v5 & (*&v2 + 0x7FFFFFFFFFLL);
    v8 = *(*a1 + 8 * v7);
    if (!v8)
    {
      return 0;
    }
  }

  result = *v8;
  if (*v8)
  {
    if (v6.u32[0] < 2uLL)
    {
      v10 = *&v2 - 1;
      while (1)
      {
        v12 = result[1];
        if (v5 == v12)
        {
          if (*(result + 4) == v3 && v4 == *(result + 10))
          {
            return result;
          }
        }

        else if ((v12 & v10) != v7)
        {
          return 0;
        }

        result = *result;
        if (!result)
        {
          return result;
        }
      }
    }

    do
    {
      v14 = result[1];
      if (v5 == v14)
      {
        if (*(result + 4) == v3 && v4 == *(result + 10))
        {
          return result;
        }
      }

      else
      {
        if (v14 >= *&v2)
        {
          v14 %= *&v2;
        }

        if (v14 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

__n128 sub_4C3348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 24) = *a2;
  *(a1 + 40) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a1 + 48) = a3;
  result = *a4;
  v5 = *(a4 + 16);
  *(a1 + 88) = *(a4 + 32);
  *(a1 + 72) = v5;
  *(a1 + 56) = result;
  *(a1 + 96) = -1;
  *(a1 + 100) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = 0;
  return result;
}

uint64_t sub_4C339C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v16, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v16, &v17);
    v6 = std::string::append(&v17, ",size=", 6uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v15, (a1[1] - *a1) >> 3);
    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v8 = &v15;
    }

    else
    {
      v8 = v15.__r_.__value_.__r.__words[0];
    }

    if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v15.__r_.__value_.__l.__size_;
    }

    v10 = std::string::append(&v18, v8, size);
    v11 = *&v10->__r_.__value_.__l.__data_;
    v20 = v10->__r_.__value_.__r.__words[2];
    v19 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (v20 >= 0)
    {
      v12 = &v19;
    }

    else
    {
      v12 = v19;
    }

    if (v20 >= 0)
    {
      v13 = HIBYTE(v20);
    }

    else
    {
      v13 = *(&v19 + 1);
    }

    v14 = sub_2D390(exception, v12, v13);
  }

  return *a1 + 8 * a2;
}

void sub_4C34D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v33 - 41) < 0)
  {
    operator delete(*(v33 - 64));
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_5:
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

LABEL_10:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_7:
  operator delete(__p);
  goto LABEL_11;
}

uint64_t sub_4C35D4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  *a2 = *(result + 24);
  a2[1] = v2;
  return result;
}

void sub_4C3628(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C797C(a1, v5);
  sub_4C7A60(a1, __p);
  sub_4C7C70(a2, v5, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void sub_4C36AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

__n128 sub_4C36F8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C7E40((a1 + 24), &v11);
  sub_4C7F24((a1 + 24), &v9);
  *a2 = 0;
  *(a2 + 8) = xmmword_2291230;
  v4 = v11;
  *(a2 + 24) = v11;
  v5 = v12;
  *(a2 + 32) = v12;
  v11 = 0;
  v12 = 0uLL;
  v6 = v9;
  *(a2 + 48) = v9;
  result.n128_u64[0] = v10;
  *(a2 + 56) = v10;
  v9 = 0;
  v10 = 0uLL;
  if (v4 != v5)
  {
    v8 = ((result.n128_u64[0] - v6) >> 4) - 1;
    *(a2 + 16) = v8;
    result = *(v6 + 16 * v8);
    *a2 = result;
  }

  return result;
}

void sub_4C37B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C37CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v21) = 0;
  sub_4C3628((a1 + 24), &v13);
  v18 = 0;
  sub_4C7E40((a1 + 24), &v21);
  sub_4C7F24((a1 + 24), &v19);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = v6[*&v8[16]];
  }

  sub_3E4DAC(a2, &v13);
  sub_3E4DAC(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_4C38FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  v13 = *(v11 - 40);
  if (v13)
  {
    *(v11 - 32) = v13;
    operator delete(v13);
    sub_3DB674(va);
    _Unwind_Resume(a1);
  }

  sub_3DB674(va);
  _Unwind_Resume(a1);
}

void sub_4C3938(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = 0;
  sub_4C8008((a1 + 24), &v16);
  sub_4C80EC((a1 + 24), &v14);
  *v8 = 0;
  *&v8[8] = xmmword_2291230;
  v9 = v16;
  v4 = v16;
  v10 = v17;
  v5 = v17;
  v16 = 0;
  v17 = 0uLL;
  v6 = v14;
  __p = v14;
  v7 = v15;
  v12 = v15;
  v14 = 0;
  v15 = 0uLL;
  if (v4 != v5)
  {
    *&v8[16] = ((v7 - v6) >> 4) - 1;
    *v8 = v6[*&v8[16]];
  }

  sub_3E4DAC(a2, v8);
  sub_3E4DAC(a2 + 72, v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }
}

void sub_4C3A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3DB674(v9);
  sub_3DB674(&a9);
  _Unwind_Resume(a1);
}

void sub_4C3A58(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C3A74(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = 0;
  sub_4C3B1C((a1 + 24), &v3);
  sub_3E4DAC(a2, &v3);
  sub_3E4DAC(a2 + 72, &v3);
  if (__p)
  {
    v7 = __p;
    operator delete(__p);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }
}

void sub_4C3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_3DB674(v9);
  sub_3DB674(&a9);
  _Unwind_Resume(a1);
}

void sub_4C3B1C(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C81D0(a1, v5);
  sub_4C82B4(a1, __p);
  sub_4C7C70(a2, v5, __p, 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v5[0])
  {
    v5[1] = v5[0];
    operator delete(v5[0]);
  }
}

void sub_4C3BA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    v14 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v14 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void *sub_4C3BEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C8398((a1 + 24), &v17);
  result = sub_4C847C((a1 + 24), &v15);
  *a2 = 0;
  *(a2 + 8) = 0;
  v6 = v16;
  v5 = v17;
  *(a2 + 16) = v17;
  v7 = v18;
  *(a2 + 24) = v18;
  v17 = 0;
  v18 = 0uLL;
  v8 = v15;
  *(a2 + 40) = v15;
  *(a2 + 56) = v6;
  v15 = 0uLL;
  v16 = 0;
  if (v5 != v7)
  {
    v9 = v7 - v5;
    v10 = v9 - 1;
    if (v9 == 1)
    {
      v11 = 0;
    }

    else
    {
      if (*v5 == *v8)
      {
        v11 = 0;
        v12 = v9 - 2;
        while (v12 != v11)
        {
          v13 = v5[v11 + 1];
          v14 = v8[++v11];
          if (v13 != v14)
          {
            goto LABEL_11;
          }
        }

        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

LABEL_11:
      *(a2 + 8) = v11;
    }

    *a2 = v5[v11];
  }

  return result;
}

void sub_4C3CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C3D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C8560((a1 + 24), &v12);
  result = sub_4C8644((a1 + 24), &v10);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v12;
  *(a2 + 16) = v12;
  v6 = v13;
  *(a2 + 24) = v13;
  v12 = 0;
  v13 = 0uLL;
  v7 = v10;
  *(a2 + 40) = v10;
  v8 = v11;
  *(a2 + 48) = v11;
  v10 = 0;
  v11 = 0uLL;
  if (v5 != v6)
  {
    v9 = ((v8 - v7) >> 3) - 1;
    *a2 = *(v7 + 8 * v9);
    *(a2 + 8) = v9;
  }

  return result;
}

void sub_4C3DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C3DCC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C3BEC(a1, &v13);
  v18 = 0;
  sub_4C8560((a1 + 24), &v21);
  sub_4C8644((a1 + 24), &v19);
  v8 = 0uLL;
  v9 = v21;
  v4 = v21;
  v10 = v22;
  v5 = v22;
  v21 = 0;
  v22 = 0uLL;
  v6 = v19;
  __p = v19;
  v7 = v20;
  v12 = v20;
  v19 = 0;
  v20 = 0uLL;
  if (v4 != v5)
  {
    *&v8 = v6[((v7 - v6) >> 3) - 1];
    *(&v8 + 1) = ((v7 - v6) >> 3) - 1;
  }

  sub_4C6FEC(a2, &v13);
  sub_4C6FEC(a2 + 64, &v8);
  if (__p)
  {
    *&v12 = __p;
    operator delete(__p);
  }

  if (v9)
  {
    *&v10 = v9;
    operator delete(v9);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_4C3ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = *(v10 - 40);
  if (v12)
  {
    *(v10 - 32) = v12;
    operator delete(v12);
    sub_334D18(va);
    _Unwind_Resume(a1);
  }

  sub_334D18(va);
  _Unwind_Resume(a1);
}

void *sub_4C3F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C8728((a1 + 24), &v16);
  result = sub_4C8848((a1 + 24), &v14);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v16;
  *(a2 + 16) = v16;
  v6 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  v7 = v14;
  *(a2 + 40) = v14;
  *(a2 + 56) = v15;
  v14 = 0uLL;
  v15 = 0;
  if (v5 != v6)
  {
    v8 = v6 - v5;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v5 == *v7)
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v5[v10 + 1];
          v13 = v7[++v10];
          if (v12 != v13)
          {
            goto LABEL_11;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_11:
      *(a2 + 8) = v10;
    }

    *a2 = v5[v10];
  }

  return result;
}

void sub_4C4020(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C403C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C896C((a1 + 24), &v12);
  result = sub_4C8A8C((a1 + 24), &v10);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v12;
  *(a2 + 16) = v12;
  v6 = v13;
  *(a2 + 24) = v13;
  v12 = 0;
  v13 = 0uLL;
  v7 = v10;
  *(a2 + 40) = v10;
  v8 = v11;
  *(a2 + 48) = v11;
  v10 = 0;
  v11 = 0uLL;
  if (v5 != v6)
  {
    v9 = ((v8 - v7) >> 3) - 1;
    *a2 = *(v7 + 8 * v9);
    *(a2 + 8) = v9;
  }

  return result;
}

void sub_4C40EC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_4C4108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_4C8BB0((a1 + 24), &v16);
  result = sub_4C8CB4((a1 + 24), &v14);
  *a2 = 0;
  *(a2 + 8) = 0;
  v5 = v16;
  *(a2 + 16) = v16;
  v6 = v17;
  *(a2 + 24) = v17;
  v16 = 0;
  v17 = 0uLL;
  v7 = v14;
  *(a2 + 40) = v14;
  *(a2 + 56) = v15;
  v14 = 0uLL;
  v15 = 0;
  if (v5 != v6)
  {
    v8 = v6 - v5;
    v9 = v8 - 1;
    if (v8 == 1)
    {
      v10 = 0;
    }

    else
    {
      if (*v5 == *v7)
      {
        v10 = 0;
        v11 = v8 - 2;
        while (v11 != v10)
        {
          v12 = v5[v10 + 1];
          v13 = v7[++v10];
          if (v12 != v13)
          {
            goto LABEL_11;
          }
        }

        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

LABEL_11:
      *(a2 + 8) = v10;
    }

    *a2 = v5[v10];
  }

  return result;
}

void sub_4C4214(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 40);
  if (v3)
  {
    *(v1 - 32) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_4C4230(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_4C4108(a1, &v15);
  v22 = a2;
  v20 = &v22;
  v21 = &v22;
  sub_4C8DB8((a1 + 24), &v25);
  sub_4C8EBC((a1 + 24), &v23);
  v10 = 0uLL;
  v11 = v25;
  v6 = v25;
  v12 = v26;
  v7 = v26;
  v25 = 0;
  v26 = 0uLL;
  v8 = v23;
  __p = v23;
  v9 = v24;
  v14 = v24;
  v23 = 0;
  v24 = 0uLL;
  if (v6 != v7)
  {
    *&v10 = v8[((v9 - v8) >> 3) - 1];
    *(&v10 + 1) = ((v9 - v8) >> 3) - 1;
  }

  sub_4C7234(a3, &v15);
  sub_4C7234(a3 + 64, &v10);
  if (__p)
  {
    *&v14 = __p;
    operator delete(__p);
  }

  if (v11)
  {
    *&v12 = v11;
    operator delete(v11);
  }

  if (v18)
  {
    v19 = v18;
    operator delete(v18);
  }

  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }
}

void sub_4C4350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  v12 = *(v10 - 56);
  if (v12)
  {
    *(v10 - 48) = v12;
    operator delete(v12);
    sub_334D18(va);
    _Unwind_Resume(a1);
  }

  sub_334D18(va);
  _Unwind_Resume(a1);
}

void *sub_4C438C@<X0>(uint64_t a1@<X0>, void **a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v68 = 0;
  sub_4C7E40((a1 + 24), v71);
  sub_4C7F24((a1 + 24), &v69);
  *v63 = 0;
  *&v63[8] = xmmword_2291230;
  v8 = *&v71[0];
  v64 = *&v71[0];
  v65 = *(v71 + 8);
  memset(v71, 0, 24);
  v9 = v69;
  v66 = v69;
  v10 = v70;
  v67 = v70;
  v69 = 0;
  v70 = 0uLL;
  if (v64 == v65)
  {
    v11 = 0;
    v12 = a2[6];
    v13 = a2[7];
    v14 = v10;
    if (v12 == v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v11 = v10 - v9 - 1;
    *&v63[16] = v11;
    *v63 = v9[v11];
    v12 = a2[6];
    v13 = a2[7];
    v14 = v10;
    if (v12 == v13)
    {
LABEL_15:
      v22 = (v9 == v14) == (v12 == v13);
      if (!v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      operator delete(v9);
      goto LABEL_19;
    }
  }

  if (v9 == v14)
  {
    goto LABEL_15;
  }

  if (a2[2] != v11)
  {
    v22 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (*a2)
  {
    v15 = a2[1];
    v16 = v15 < sub_4D1DC0(*a2);
    v17 = *v63;
    if (*v63)
    {
      goto LABEL_9;
    }

LABEL_54:
    v19 = 0;
    goto LABEL_55;
  }

  v16 = 0;
  v17 = *v63;
  if (!*v63)
  {
    goto LABEL_54;
  }

LABEL_9:
  v18 = sub_4D1DC0(v17);
  v19 = *&v63[8] < v18;
  if (*&v63[8] < v18 && v16)
  {
    v21 = sub_4D1F50(*a2, a2[1]);
    v22 = v21 == sub_4D1F50(v17, *&v63[8]);
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_55:
  v22 = v16 ^ v19 ^ 1;
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (v8)
  {
    operator delete(v8);
  }

  if (v22)
  {
    return sub_4C3D08(a1, a4);
  }

  v24 = a2[1];
  v25 = *(a1 + 32);
  v26 = *(a1 + 24) + 1096 * a2[2];
  v27 = sub_5FC64(v26);
  v28 = sub_445EF4(v26);
  if (v28 - v27 >= 56)
  {
    if (v28 - v27 != 56)
    {
      v29 = 0x6DB6DB6DB6DB6DB7 * ((v28 - v27) >> 3);
      do
      {
        v30 = 56 * (v29 >> 2);
        _X12 = v27 + v30;
        __asm { PRFM            #0, [X12] }

        v37 = v27 + 56 * (v29 >> 1);
        _X11 = v37 + v30;
        __asm { PRFM            #0, [X11] }

        v40 = *(v37 + 32) <= v24;
        v41 = *(v37 + 24) < v24;
        if (!a3)
        {
          v40 = v41;
        }

        if (v40)
        {
          v42 = v29 >> 1;
        }

        else
        {
          v42 = 0;
        }

        v27 += 56 * v42;
        v29 -= v29 >> 1;
      }

      while (v29 > 1);
    }

    v43 = *(v27 + 32) <= v24;
    if (!a3)
    {
      v43 = *(v27 + 24) < v24;
    }

    v27 += 56 * v43;
  }

  if (v27 == sub_445EF4(v26))
  {
    v26 += 1096;
    if (v26 != v25)
    {
      v27 = sub_5FC64(v26);
    }
  }

  memset(v63, 0, sizeof(v63));
  for (i = *(a1 + 24); i != v26; i += 1096)
  {
    *&v71[0] = sub_445EF4(i);
    sub_4C7358(v63, v71);
  }

  if (v26 != v25)
  {
    v45 = *&v63[8];
    if (*&v63[8] < *&v63[16])
    {
      **&v63[8] = v27;
      *&v63[8] = v45 + 8;
      v46 = v26 + 1096;
      j = *(a1 + 32);
      if (v46 == j)
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

    v48 = *v63;
    v49 = *&v63[8] - *v63;
    v50 = (*&v63[8] - *v63) >> 3;
    v51 = v50 + 1;
    if ((v50 + 1) >> 61)
    {
      sub_1794();
    }

    v52 = *&v63[16] - *v63;
    if ((*&v63[16] - *v63) >> 2 > v51)
    {
      v51 = v52 >> 2;
    }

    if (v52 >= 0x7FFFFFFFFFFFFFF8)
    {
      v53 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v53 = v51;
    }

    if (v53)
    {
      if (!(v53 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    *(8 * v50) = v27;
    memcpy(0, v48, v49);
    *v63 = 0;
    *&v63[8] = 8 * v50 + 8;
    *&v63[16] = 0;
    if (v48)
    {
      operator delete(v48);
    }

    *&v63[8] = 8 * v50 + 8;
    v46 = v26 + 1096;
    for (j = *(a1 + 32); v46 != j; v46 += 1096)
    {
LABEL_60:
      *&v71[0] = sub_5FC64(v46);
      sub_4C7358(v63, v71);
    }
  }

LABEL_61:
  result = sub_4C48DC((a1 + 24), v71);
  *a4 = 0;
  *(a4 + 8) = 0;
  v54 = *v63;
  *(a4 + 16) = *v63;
  v55 = *&v63[8];
  *(a4 + 24) = *&v63[8];
  memset(v63, 0, sizeof(v63));
  v56 = *&v71[0];
  *(a4 + 40) = v71[0];
  *(a4 + 56) = *&v71[1];
  memset(v71, 0, 24);
  if (v54 != v55)
  {
    v57 = v55 - v54;
    v58 = v57 - 1;
    if (v57 == 1)
    {
      v59 = 0;
    }

    else
    {
      if (*v54 == *v56)
      {
        v59 = 0;
        v60 = v57 - 2;
        while (v60 != v59)
        {
          v61 = v54[v59 + 1];
          v62 = v56[++v59];
          if (v61 != v62)
          {
            goto LABEL_71;
          }
        }

        v59 = v58;
      }

      else
      {
        v59 = 0;
      }

LABEL_71:
      *(a4 + 8) = v59;
    }

    *a4 = v54[v59];
  }

  return result;
}