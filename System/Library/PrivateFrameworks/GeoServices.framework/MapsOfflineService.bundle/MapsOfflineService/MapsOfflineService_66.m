void sub_43EB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void *sub_43EB5C(void *a1, unint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v13 = a5;
  if (a1)
  {
    if (a3)
    {
      while (1)
      {
        v9 = sub_4D1DC0(a1);
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

        sub_4D1F50(a1, a2);
        if (sub_4409F8(&v13))
        {
          break;
        }

        ++a2;
      }
    }

    else
    {
      while (a2 < sub_4D1DC0(a1))
      {
        sub_4D1F50(a1, a2);
        if (sub_4409F8(&v13))
        {
          break;
        }

        ++a2;
      }
    }
  }

  else if (a3 && a4 < sub_4D1DC0(a3))
  {
    do
    {
      sub_4D1F50(0, a2);
      if (sub_4409F8(&v13))
      {
        break;
      }

      ++a2;
    }

    while (a4 < sub_4D1DC0(a3));
  }

  return a1;
}

uint64_t sub_43ECB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(result + 30))
  {
    v3 = *(a2 + 32);
    v4[0] = off_266A1A0;
    v5 = v4;
    sub_43867C(result, v3 & 0xFFFFFFFFFFFFFFLL, v4, a3);
    result = v5;
    if (v5 == v4)
    {
      return (*(*v5 + 32))(v5);
    }

    else if (v5)
    {
      return (*(*v5 + 40))();
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

void sub_43EDD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

void sub_43EDEC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

uint64_t sub_43EDF8@<X0>(uint64_t result@<X0>, int **a2@<X1>, void *a3@<X8>)
{
  if (*(result + 27) != 1)
  {
    goto LABEL_13;
  }

  v3 = *a2;
  v4 = (*a2 - **a2);
  v5 = *v4;
  if (*(a2 + 38))
  {
    if (v5 < 0x9B || (v6 = v4[77]) == 0 || (*&v3[v6] & 2) == 0)
    {
LABEL_13:
      *a3 = 0;
      a3[1] = 0;
      a3[2] = 0;
      return result;
    }
  }

  else
  {
    if (v5 < 0x9B)
    {
      goto LABEL_13;
    }

    v7 = v4[77];
    if (!v7 || (*&v3[v7] & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v8 = a2[4];
  v9[0] = off_266A3A0;
  v10 = v9;
  sub_43867C(result, v8 & 0xFFFFFFFFFFFFFFLL, v9, a3);
  result = v10;
  if (v10 == v9)
  {
    return (*(*v10 + 32))(v10);
  }

  if (v10)
  {
    return (*(*v10 + 40))();
  }

  return result;
}

void sub_43EF78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_3E6D10(va);
  _Unwind_Resume(a1);
}

uint64_t sub_43EF8C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a1 + 25) == 1)
  {
    return sub_2BCD18(*a1, a2, a3);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_43EFA8(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
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

  return result;
}

void sub_43F0A0(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_43F0D4(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
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

  return result;
}

void sub_43F1CC(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_43F200(uint64_t a1)
{
  sub_38F46C((***a1 + 464 * *(*a1 + 8)), v3);
  v1 = sub_43F2B0(v3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1;
}

void sub_43F29C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3355FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_43F2B0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a1[5];
  v3 = a1[6];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[10];
  v5 = a1[11];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a1[13];
  v7 = a1[14];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_43F580(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (!__p)
  {
    sub_4A48(a1);
  }

  operator delete(__p);
  sub_4A48(a1);
}

void sub_43F5A8(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_43F5CC(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
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

  return result;
}

void sub_43F6C4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_43F6F8(uint64_t a1)
{
  sub_38F46C((***a1 + 464 * *(*a1 + 8)), v3);
  v1 = sub_43F7A8(v3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1;
}

void sub_43F794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3355FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_43F7A8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a1[5];
  v3 = a1[6];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[10];
  v5 = a1[11];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a1[13];
  v7 = a1[14];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_43FA78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (!__p)
  {
    sub_4A48(a1);
  }

  operator delete(__p);
  sub_4A48(a1);
}

void sub_43FAA0(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_43FAC4(uint64_t a1)
{
  sub_38F46C((***a1 + 464 * *(*a1 + 8)), v3);
  v1 = sub_43FB74(v3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1;
}

void sub_43FB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3355FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_43FB74(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a1[5];
  v3 = a1[6];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[10];
  v5 = a1[11];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a1[13];
  v7 = a1[14];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_43FE44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (!__p)
  {
    sub_4A48(a1);
  }

  operator delete(__p);
  sub_4A48(a1);
}

void sub_43FE6C(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_43FE90(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 4) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v9 = 0x1745D1745D1745DLL;
  }

  else
  {
    v9 = v5;
  }

  v20 = a1;
  if (v9)
  {
    if (v9 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v10 = 176 * v4;
  v17 = 0;
  v18 = v10;
  v19 = v10;
  sub_3E4DAC(v10, a2);
  sub_3E4DAC(v10 + 72, a3);
  *(v10 + 144) = *a4;
  *(v10 + 160) = 0;
  *(v10 + 168) = 0;
  *&v19 = v19 + 176;
  v11 = *(a1 + 8);
  v12 = v18 + *a1 - v11;
  sub_4400D8(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_440040(&v17);
  return v16;
}

void sub_440010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3DB674(v4);
  sub_440040(va);
  _Unwind_Resume(a1);
}

void sub_44002C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_440040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_440040(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 176;
    v4 = *(i - 56);
    if (v4)
    {
      *(i - 48) = v4;
      operator delete(v4);
    }

    v5 = *(i - 80);
    if (v5)
    {
      *(i - 72) = v5;
      operator delete(v5);
    }

    v6 = *(i - 128);
    if (v6)
    {
      *(i - 120) = v6;
      operator delete(v6);
    }

    v7 = *(i - 152);
    if (v7)
    {
      *(i - 144) = v7;
      operator delete(v7);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_4400D8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = v6[2];
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 24) = 0;
      *(a4 + 32) = 0;
      *(a4 + 40) = 0;
      *(a4 + 24) = *(v6 + 3);
      *(a4 + 40) = v6[5];
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = 0;
      *(a4 + 48) = 0;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = *(v6 + 3);
      *(a4 + 64) = v6[8];
      v6[6] = 0;
      v6[7] = 0;
      v6[8] = 0;
      v8 = v6[11];
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v8;
      *(a4 + 96) = 0;
      *(a4 + 104) = 0;
      *(a4 + 112) = 0;
      *(a4 + 96) = *(v6 + 6);
      *(a4 + 112) = v6[14];
      v6[12] = 0;
      v6[13] = 0;
      v6[14] = 0;
      *(a4 + 120) = 0;
      *(a4 + 128) = 0;
      *(a4 + 136) = 0;
      *(a4 + 120) = *(v6 + 15);
      *(a4 + 136) = v6[17];
      v6[15] = 0;
      v6[16] = 0;
      v6[17] = 0;
      v9 = *(v6 + 10);
      *(a4 + 144) = *(v6 + 9);
      *(a4 + 160) = v9;
      v6 += 22;
      a4 += 176;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v10 = v5[15];
      if (v10)
      {
        v5[16] = v10;
        operator delete(v10);
      }

      v11 = v5[12];
      if (v11)
      {
        v5[13] = v11;
        operator delete(v11);
      }

      v12 = v5[6];
      if (v12)
      {
        v5[7] = v12;
        operator delete(v12);
      }

      v13 = v5[3];
      if (v13)
      {
        v5[4] = v13;
        operator delete(v13);
      }

      v5 += 22;
    }
  }
}

uint64_t sub_440210(uint64_t a1, __int128 *a2, __int128 *a3, _OWORD *a4, uint64_t *a5)
{
  v5 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 4);
  v6 = v5 + 1;
  if ((v5 + 1) > 0x1745D1745D1745DLL)
  {
    sub_1794();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 4) > v6)
  {
    v6 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v10 = 0x1745D1745D1745DLL;
  }

  else
  {
    v10 = v6;
  }

  v22 = a1;
  if (v10)
  {
    if (v10 <= 0x1745D1745D1745DLL)
    {
      operator new();
    }

    sub_1808();
  }

  v11 = 176 * v5;
  v19 = 0;
  v20 = v11;
  v21 = v11;
  v12 = *a5;
  sub_3E4DAC(v11, a2);
  sub_3E4DAC(v11 + 72, a3);
  *(v11 + 144) = *a4;
  *(v11 + 160) = 1;
  *(v11 + 168) = v12;
  *&v21 = v21 + 176;
  v13 = *(a1 + 8);
  v14 = v20 + *a1 - v13;
  sub_4400D8(a1, *a1, v13, v14);
  v15 = *a1;
  *a1 = v14;
  v16 = *(a1 + 16);
  v18 = v21;
  *(a1 + 8) = v21;
  *&v21 = v15;
  *(&v21 + 1) = v16;
  v19 = v15;
  v20 = v15;
  sub_440040(&v19);
  return v18;
}

void sub_4403A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_3DB674(v4);
  sub_440040(va);
  _Unwind_Resume(a1);
}

void sub_4403C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_440040(va);
  _Unwind_Resume(a1);
}

uint64_t sub_4403D4(uint64_t a1)
{
  sub_38F46C((***a1 + 464 * *(*a1 + 8)), v3);
  v1 = sub_440484(v3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1;
}

void sub_440470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3355FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_440484(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a1[5];
  v3 = a1[6];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[10];
  v5 = a1[11];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a1[13];
  v7 = a1[14];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_440754(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (!__p)
  {
    sub_4A48(a1);
  }

  operator delete(__p);
  sub_4A48(a1);
}

void sub_44077C(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_4407A0(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
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

  return result;
}

void sub_440898(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4408CC(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *(result + 24) = 0;
  *result = v2;
  *(result + 32) = 0;
  *(result + 40) = 0;
  v4 = *(a2 + 3);
  v3 = *(a2 + 4);
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 64) = 0;
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

  return result;
}

void sub_4409C4(_Unwind_Exception *exception_object)
{
  v5 = *v2;
  if (*v2)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v3;
  if (*v3)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4409F8(uint64_t a1)
{
  sub_38F46C((***a1 + 464 * *(*a1 + 8)), v3);
  v1 = sub_440AA8(v3);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v4)
  {
    v5 = v4;
    operator delete(v4);
  }

  return v1;
}

void sub_440A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_3355FC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_440AA8(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (v1 != v2)
  {
    if (((v1 - v2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v4 = a1[5];
  v3 = a1[6];
  if (v3 != v4)
  {
    if (((v3 - v4) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[10];
  v5 = a1[11];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v8 = a1[13];
  v7 = a1[14];
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return 1;
}

void sub_440DB8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if (!__p)
  {
    sub_4A48(a1);
  }

  operator delete(__p);
  sub_4A48(a1);
}

void sub_440DE0(void *a1)
{
  if (!v1)
  {
    sub_4A48(a1);
  }

  operator delete(v1);
  sub_4A48(a1);
}

uint64_t sub_440E8C(uint64_t a1, uint64_t a2)
{
  result = sub_38F5C4(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_440EC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_440FC4(uint64_t a1, uint64_t a2)
{
  result = sub_38F608(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_440FFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_4410FC(uint64_t a1, uint64_t a2)
{
  v3 = sub_38F6BC(a2, 0);
  result = 0;
  if (v3)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_441140(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE26get_soft_closure_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE26get_soft_closure_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE26get_soft_closure_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE26get_soft_closure_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_441240(uint64_t a1, uint64_t a2)
{
  result = sub_38F580(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_441278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_441378(uint64_t a1, uint64_t a2)
{
  result = sub_38F608(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_4413B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_4414B0(uint64_t a1, uint64_t a2)
{
  result = sub_38F608(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_4414E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_26DirectedSidedWalkSegmentIdEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_26DirectedSidedWalkSegmentIdEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_26DirectedSidedWalkSegmentIdEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE22get_blocking_incidentsERKNS_4data11RoadSegmentINS4_26DirectedSidedWalkSegmentIdEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_4415E8(uint64_t a1, uint64_t a2)
{
  v3 = sub_38F52C(a2);
  result = 0;
  if (v3)
  {
    if (*(a2 + 96) == 14)
    {
      return sub_38F7F0(a2) ^ 1;
    }
  }

  return result;
}

uint64_t sub_441634(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE24get_no_through_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE24get_no_through_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE24get_no_through_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE24get_no_through_incidentsERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_4416AC(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v5 = *a1;
  if (*a1)
  {
    v10 = *(v5 + 176);
    v11 = *(v5 + 184);
    v12 = v11 - v10;
    if (v11 - v10 >= 24)
    {
      v13 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v14 = a2 & 0xFF000000000000;
      if (v12 != 24)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * (v12 >> 3);
        if (v14)
        {
          v16 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v16 = v13 + 1;
        }

        do
        {
          v17 = 6 * (v15 >> 2);
          _X17 = &v10[v17];
          __asm { PRFM            #0, [X17] }

          v24 = &v10[6 * (v15 >> 1)];
          _X16 = &v24[v17];
          __asm { PRFM            #0, [X16] }

          v27 = (*v24 << 32) | (*(v24 + 2) << 16);
          if (!*(v24 + 6))
          {
            ++v27;
          }

          if (v27 >= v16)
          {
            v28 = 0;
          }

          else
          {
            v28 = v15 >> 1;
          }

          v10 += 6 * v28;
          v15 -= v15 >> 1;
        }

        while (v15 > 1);
      }

      v29 = (*v10 << 32) | (*(v10 + 2) << 16);
      if (!*(v10 + 6))
      {
        ++v29;
      }

      if (!v14)
      {
        ++v13;
      }

      v10 += 6 * (v29 < v13);
    }

    if (v10 != v11)
    {
      v30 = 0;
      v40 = BYTE6(a2);
      v31 = WORD2(a2);
      v39 = 1 << a4;
      v32 = v10 + 4;
      do
      {
        v33 = v32 - 2;
        if (*(v32 - 4) != a2 || *(v32 - 6) != v31 || *(v32 - 10) != v40)
        {
          break;
        }

        if ((*(v32 - 1) & v39) != 0)
        {
          v34 = *(a3 + 24);
          if (!v34)
          {
            sub_2B7420();
          }

          if ((*(*v34 + 48))(v34, *(*a1 + 152) + 464 * *v32) && (sub_38F7F0(*(*a1 + 152) + 464 * *v32) & 1) == 0)
          {
            v35 = v30;
            v36 = (v30 >> 4) + 1;
            if (v36 >> 60)
            {
              sub_1794();
            }

            if (v30 >> 4 != -1)
            {
              if (!(v36 >> 60))
              {
                operator new();
              }

              sub_1808();
            }

            v37 = (16 * (v30 >> 4));
            v38 = *v32;
            *v37 = *a1 + 152;
            v37[1] = v38;
            v30 = (v37 + 2);
            memcpy(0, 0, v35);
            *a5 = 0;
            a5[1] = v30;
            a5[2] = 0;
            a5[1] = v30;
          }
        }

        v32 += 3;
      }

      while (v33 + 3 != *(v5 + 184));
    }

    if (a1[4])
    {
      sub_2BEDA8(a1, a2, a5, a3);
    }
  }
}

void sub_4419E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  if (a13)
  {
    *(a12 + 8) = a13;
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_441A28(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a2 + 464 * *(a2 + 8);
  if ((*(*a1 + 30) & 1) == 0 && sub_38F6F0(**a2 + 464 * *(a2 + 8)))
  {
    goto LABEL_14;
  }

  if (*(v2 + 24) != 1)
  {
    goto LABEL_20;
  }

  v4 = *(v2 + 16);
  v5 = *v4;
  v6 = *(v2 + 36);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = *(v3 + 156);
  if (v8)
  {
    v9 = v8 == 0x7FFFFFFF;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    v11 = *(v3 + 152);
    if (v4[2] != 1)
    {
      goto LABEL_19;
    }

LABEL_13:
    if (v5 >= v11)
    {
      goto LABEL_20;
    }

LABEL_14:
    v12 = 1;
    return v12 & 1;
  }

  v13 = *(v2 + 32);
  if (v13 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v10 = v8 < (v13 / -10 + v5 + (((-103 * (v14 + v13 % 10)) >> 15) & 1) + ((-103 * (v14 + v13 % 10)) >> 10));
  v11 = *(v3 + 152);
  if (v4[2] == 1)
  {
    goto LABEL_13;
  }

LABEL_19:
  v15 = v6 / 10;
  v16 = 103 * (v7 + v6 % 10);
  if (v11 > (v15 + v5 + ((v16 >> 15) & 1) + (v16 >> 10)) || v10)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (*(v3 + 96) == 5)
  {
    sub_38F46C(v3, &v32);
    v25 = v32;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (v34 != v33)
    {
      if (((v34 - v33) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v36 != v35)
    {
      if (((v36 - v35) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v18 = v37;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (v39 != v38)
    {
      if (((v39 - v38) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v12 = 1;
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_441F9C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_441FE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a17);
  sub_334D18(&a25);
  sub_3355FC(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_44200C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a2 + 464 * *(a2 + 8);
  if ((*(*a1 + 30) & 1) == 0 && sub_38F6F0(**a2 + 464 * *(a2 + 8)))
  {
    goto LABEL_14;
  }

  if (*(v2 + 24) != 1)
  {
    goto LABEL_20;
  }

  v4 = *(v2 + 16);
  v5 = *v4;
  v6 = *(v2 + 36);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = *(v3 + 156);
  if (v8)
  {
    v9 = v8 == 0x7FFFFFFF;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    v11 = *(v3 + 152);
    if (v4[2] != 1)
    {
      goto LABEL_19;
    }

LABEL_13:
    if (v5 >= v11)
    {
      goto LABEL_20;
    }

LABEL_14:
    v12 = 1;
    return v12 & 1;
  }

  v13 = *(v2 + 32);
  if (v13 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v10 = v8 < (v13 / -10 + v5 + (((-103 * (v14 + v13 % 10)) >> 15) & 1) + ((-103 * (v14 + v13 % 10)) >> 10));
  v11 = *(v3 + 152);
  if (v4[2] == 1)
  {
    goto LABEL_13;
  }

LABEL_19:
  v15 = v6 / 10;
  v16 = 103 * (v7 + v6 % 10);
  if (v11 > (v15 + v5 + ((v16 >> 15) & 1) + (v16 >> 10)) || v10)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (*(v3 + 96) == 5)
  {
    sub_38F46C(v3, &v32);
    v25 = v32;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (v34 != v33)
    {
      if (((v34 - v33) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v36 != v35)
    {
      if (((v36 - v35) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v18 = v37;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (v39 != v38)
    {
      if (((v39 - v38) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v12 = 1;
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_442580(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_4425C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a17);
  sub_334D18(&a25);
  sub_3355FC(&a33);
  _Unwind_Resume(a1);
}

uint64_t sub_442678(uint64_t a1, uint64_t a2)
{
  result = sub_38F674(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_4426B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_4427B0(uint64_t a1, uint64_t a2)
{
  result = sub_38F698(a2);
  if (result)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  return result;
}

uint64_t sub_4427E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE1_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE1_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE1_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE12get_closuresERKNS_4data11RoadSegmentINS4_21DirectedRoadSegmentIdEEEEUlRKNS4_8IncidentEE1_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_4428E8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 96) == 9)
  {
    return sub_38F7F0(a2) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_442920(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE21get_maneuver_closuresENS_4data21DirectedRoadSegmentIdEEUlRKNS4_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE21get_maneuver_closuresENS_4data21DirectedRoadSegmentIdEEUlRKNS4_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE21get_maneuver_closuresENS_4data21DirectedRoadSegmentIdEEUlRKNS4_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE21get_maneuver_closuresENS_4data21DirectedRoadSegmentIdEEUlRKNS4_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_442998(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = **a2 + 464 * *(a2 + 8);
  if ((*(*a1 + 30) & 1) == 0 && sub_38F6F0(**a2 + 464 * *(a2 + 8)))
  {
    goto LABEL_14;
  }

  if (*(v2 + 24) != 1)
  {
    goto LABEL_20;
  }

  v4 = *(v2 + 16);
  v5 = *v4;
  v6 = *(v2 + 36);
  if (v6 < 0)
  {
    v7 = -5;
  }

  else
  {
    v7 = 5;
  }

  v8 = *(v3 + 156);
  if (v8)
  {
    v9 = v8 == 0x7FFFFFFF;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = 0;
    v11 = *(v3 + 152);
    if (v4[2] != 1)
    {
      goto LABEL_19;
    }

LABEL_13:
    if (v5 >= v11)
    {
      goto LABEL_20;
    }

LABEL_14:
    v12 = 1;
    return v12 & 1;
  }

  v13 = *(v2 + 32);
  if (v13 < 0)
  {
    v14 = -5;
  }

  else
  {
    v14 = 5;
  }

  v10 = v8 < (v13 / -10 + v5 + (((-103 * (v14 + v13 % 10)) >> 15) & 1) + ((-103 * (v14 + v13 % 10)) >> 10));
  v11 = *(v3 + 152);
  if (v4[2] == 1)
  {
    goto LABEL_13;
  }

LABEL_19:
  v15 = v6 / 10;
  v16 = 103 * (v7 + v6 % 10);
  if (v11 > (v15 + v5 + ((v16 >> 15) & 1) + (v16 >> 10)) || v10)
  {
    goto LABEL_14;
  }

LABEL_20:
  if (*(v3 + 96) == 5)
  {
    sub_38F46C(v3, &v32);
    v25 = v32;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    if (v34 != v33)
    {
      if (((v34 - v33) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v29 = 0;
    v30 = 0;
    v31 = 0;
    if (v36 != v35)
    {
      if (((v36 - v35) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v18 = v37;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    if (v39 != v38)
    {
      if (((v39 - v38) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v22 = 0;
    v23 = 0;
    v24 = 0;
    if (v41 != v40)
    {
      if (((v41 - v40) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }

    v12 = 1;
    if (v40)
    {
      v41 = v40;
      operator delete(v40);
    }

    if (v38)
    {
      v39 = v38;
      operator delete(v38);
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    if (v33)
    {
      v34 = v33;
      operator delete(v33);
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

void sub_442F0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  if (v28)
  {
    operator delete(v28);
    sub_4A48(a1);
  }

  sub_4A48(a1);
}

void sub_442F54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  sub_334D18(&a17);
  sub_334D18(&a25);
  sub_3355FC(&a33);
  _Unwind_Resume(a1);
}

void sub_442F7C(__n128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_44302C(a1, &v10);
  sub_44302C(a2, &v5);
  sub_43F0D4(a3, &v10);
  sub_43F0D4(a3 + 72, &v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_443014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

__n128 sub_44302C@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_u64[1];
  v8 = a1[1].n128_u64[0];
  v4 = a1[2].n128_u64[0];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[3].n128_u64[0];
  v5 = a1[3].n128_u64[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_443140(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4431EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11CyclingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_4432F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_7PathLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_7PathLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_7PathLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_7PathLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_443404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS_6common14ConcatIteratorINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEEEENS8_6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISL_EEEERKSJ_NS8_16TypeSafeIntegralINSH_18TrafficBranchIdTagEhLh255EEEEUlRKNSH_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS_6common14ConcatIteratorINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEEEENS8_6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISL_EEEERKSJ_NS8_16TypeSafeIntegralINSH_18TrafficBranchIdTagEhLh255EEEEUlRKNSH_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS_6common14ConcatIteratorINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEEEENS8_6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISL_EEEERKSJ_NS8_16TypeSafeIntegralINSH_18TrafficBranchIdTagEhLh255EEEEUlRKNSH_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS_6common14ConcatIteratorINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEEEENS8_6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISL_EEEERKSJ_NS8_16TypeSafeIntegralINSH_18TrafficBranchIdTagEhLh255EEEEUlRKNSH_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_443510(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11DrivingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_443588(__n128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  sub_443638(a1, &v10);
  sub_443638(a2, &v5);
  sub_4408CC(a3, &v10);
  sub_4408CC(a3 + 72, &v5);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v6)
  {
    v7 = v6;
    operator delete(v6);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }
}

void sub_443620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_3DB674(va);
  _Unwind_Resume(a1);
}

__n128 sub_443638@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = a1[1].n128_u64[1];
  v8 = a1[1].n128_u64[0];
  v4 = a1[2].n128_u64[0];
  if (v4 != v3)
  {
    if (((v4 - v3) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v6 = a1[3].n128_u64[0];
  v5 = a1[3].n128_u64[1];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v8;
  a2[1].n128_u64[1] = 0;
  a2[2].n128_u64[0] = 0;
  a2[2].n128_u64[1] = 0;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_44374C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4437F8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl7routing24TrafficIncidentsAccessorINS0_11WalkingModeEE23find_incident_stretchesIN4maps6common13IteratorRangeINS0_19RoadSegmentIteratorINS0_8RouteLegIS2_EEEEEEEENS_6common6VectorINS_4data15IncidentStretchINT_14const_iteratorEEENSt3__19allocatorISJ_EEEERKSH_NSD_16TypeSafeIntegralINSF_18TrafficBranchIdTagEhLh255EEEEUlRKNSF_8IncidentEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void sub_443894()
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
  xmmword_278F720 = 0u;
  *algn_278F730 = 0u;
  dword_278F740 = 1065353216;
  sub_3A9A34(&xmmword_278F720, v0);
  sub_3A9A34(&xmmword_278F720, v3);
  sub_3A9A34(&xmmword_278F720, __p);
  sub_3A9A34(&xmmword_278F720, v9);
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
    qword_278F6F8 = 0;
    qword_278F700 = 0;
    qword_278F6F0 = 0;
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

void sub_443ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36)
{
  if (qword_278F708)
  {
    qword_278F710 = qword_278F708;
    operator delete(qword_278F708);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_443B88@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 6;
    strcpy(a2, "hiking");
  }

  else
  {
    if (result)
    {
      a2[23] = 0;
    }

    else
    {
      a2[23] = 4;
      *a2 = 1701736302;
      a2 += 4;
    }

    *a2 = 0;
  }

  return result;
}

uint64_t sub_443BE0@<X0>(uint64_t *a1@<X0>, const char *a2@<X1>, unsigned __int8 *a3@<X2>, const char *a4@<X3>, const char *a5@<X4>, const char *a6@<X5>, _BYTE *a7@<X8>)
{
  sub_D7B0(v28);
  v14 = sub_30E900(&v29, *a1);
  v15 = strlen(a2);
  v16 = sub_4A5C(v14, a2, v15);
  v17 = sub_7057C(v16, *a3);
  v18 = strlen(a4);
  v19 = sub_4A5C(v17, a4, v18);
  v20 = strlen(a5);
  v21 = sub_4A5C(v19, a5, v20);
  v22 = strlen(a6);
  sub_4A5C(v21, a6, v22);
  if ((v39 & 0x10) != 0)
  {
    v24 = v38;
    if (v38 < v35)
    {
      v38 = v35;
      v24 = v35;
    }

    v25 = v34;
    v23 = v24 - v34;
    if (v24 - v34 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v39 & 8) == 0)
    {
      v23 = 0;
      a7[23] = 0;
      goto LABEL_12;
    }

    v25 = v32;
    v23 = v33 - v32;
    if ((v33 - v32) >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_16:
      sub_3244();
    }
  }

  if (v23 >= 0x17)
  {
    operator new();
  }

  a7[23] = v23;
  if (v23)
  {
    memmove(a7, v25, v23);
  }

LABEL_12:
  a7[v23] = 0;
  v29 = v26;
  if (v37 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v31);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_443ECC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_DBE4(va);
  _Unwind_Resume(a1);
}

void sub_443EE0(unsigned int *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = a1[1];
  LODWORD(v16) = *a1;
  WORD2(v16) = v6;
  BYTE6(v16) = (v6 & 0x10000000) == 0;
  v7 = (v6 >> 30) & 1;
  if ((v6 & 0x20000000) != 0)
  {
    LOBYTE(v7) = 2;
  }

  v15 = v7;
  if (v6 >= 0)
  {
    v8 = "n";
  }

  else
  {
    v8 = "y";
  }

  sub_443BE0(&v16, "(", &v15, ")(restricted=", v8, ")", __p);
  v9 = a1[1];
  v10 = sub_2B51D8(a2, *a1 | (v9 << 32));
  v11 = (v10 - *v10);
  if (*v11 < 0x1Du)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11[14];
    if (v12)
    {
      v12 = *(v10 + v12);
    }
  }

  if ((v9 & 0x10000000) == 0)
  {
    v12 = -v12;
  }

  v16 = v12;
  sub_421A08(__p, "(geo_id: ", ")", a3);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_444014(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_444030(void *a1, uint64_t a2)
{
  LODWORD(v11) = a2;
  WORD2(v11) = WORD2(a2);
  BYTE6(v11) = ((a2 & 0xFFFFFFFFFFFFLL | (((a2 >> 60) & 1) << 48)) ^ 0x1000000000000) >> 48;
  v3 = (a2 >> 62) & 1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    LOBYTE(v3) = 2;
  }

  v10 = v3;
  if (a2 >= 0)
  {
    v4 = "n";
  }

  else
  {
    v4 = "y";
  }

  sub_443BE0(&v11, "(", &v10, ")(restricted=", v4, ")", __p);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  sub_4A5C(a1, v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_44411C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_444138(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_444144(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  operator new();
}

void sub_4441A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_4441C4(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_444200(_DWORD *a1, _DWORD *a2, int a3)
{
  v3 = a1[1];
  v4 = (a3 - *a1) / (*a2 - *a1) * (a2[1] - v3);
  if (v4 >= 0.0)
  {
    if (v4 < 4.50359963e15)
    {
      v5 = (v4 + v4) + 1;
      goto LABEL_6;
    }
  }

  else if (v4 > -4.50359963e15)
  {
    v5 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
LABEL_6:
    v4 = (v5 >> 1);
  }

  return (v3 + v4);
}

unint64_t sub_444284(uint64_t *a1, signed int a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0x7FFFFFFF7FFFFFFFLL;
  }

  v5 = (v4 - v3) >> 3;
  if (v5 < 1)
  {
    v18 = *a1;
    return *v18 | (HIDWORD(*v18) << 32);
  }

  v6 = *a1;
  if (v4 - v3 != 8)
  {
    v6 = *a1;
    do
    {
      v7 = (2 * v5) & 0xFFFFFFFFFFFFFFF8;
      _X14 = v6 + v7;
      __asm { PRFM            #0, [X14] }

      v14 = v6 + 8 * (v5 >> 1);
      _X13 = v14 + v7;
      __asm { PRFM            #0, [X13] }

      if (*(v14 + 4) <= a2)
      {
        v17 = v5 >> 1;
      }

      else
      {
        v17 = 0;
      }

      v6 += 8 * v17;
      v5 -= v5 >> 1;
    }

    while (v5 > 1);
  }

  v18 = v6 + 8 * (*(v6 + 4) <= a2);
  if (v3 == v18)
  {
    return *v18 | (HIDWORD(*v18) << 32);
  }

  if (v4 == v18)
  {
    return *(v18 - 8) | (HIDWORD(*(v18 - 8)) << 32);
  }

  v19 = *(v18 - 4);
  v20 = 0.0;
  v21 = *(v18 + 4) - v19;
  if (v21)
  {
    v20 = (a2 - v19) / v21;
  }

  v22 = *(v18 - 8);
  v23 = v20 * (*v18 - v22);
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_22;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_22:
    v23 = (v24 >> 1);
  }

  return (v22 + v23) | (a2 << 32);
}

uint64_t sub_444404(uint64_t *a1, signed int a2, signed int a3)
{
  if (*a1 == a1[1])
  {
    return 0x7FFFFFFFLL;
  }

  v4 = **a1;
  v6 = sub_444284(a1, a2);
  v7 = sub_444284(a1, a3);
  return ((v7 - v6) & ~((v7 - v6) >> 31)) + v4;
}

void sub_4447C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_444964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_444984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  v8 = v7 + 48;
  v9 = v7 == v6 || v8 == v6;
  v10 = *(a2 + 24);
  if (!v9)
  {
    v11 = *(a1 + 8);
    v12 = *v7;
    v10 = *(a2 + 24);
    do
    {
      v13 = v11 >> *v8;
      v14 = *(v10 + 1) < *(v8 + 1);
      if (((v11 >> v12) ^ v13))
      {
        v14 = v13;
      }

      if (v14)
      {
        v12 = *v8;
        v10 = v8;
      }

      v8 += 48;
    }

    while (v8 != v6);
  }

  v15 = *(a1 + 8);
  if (((v15 >> *v10) & 1) == 0)
  {
    return 0x7FFFFFFFLL;
  }

  v16 = *(v10 + 1);
  v17 = *(a1 + 32) / 1000.0 / (v16 / 1000.0) * 60.0 * 60.0 * 10.0;
  if (v17 >= 0.0)
  {
    if (v17 >= 4.50359963e15)
    {
      goto LABEL_19;
    }

    v18 = (v17 + v17) + 1;
  }

  else
  {
    if (v17 <= -4.50359963e15)
    {
      goto LABEL_19;
    }

    v18 = (v17 + v17) - 1 + (((v17 + v17) - 1) >> 63);
  }

  v17 = (v18 >> 1);
LABEL_19:
  if (v7 == v6)
  {
    v25 = 0;
    goto LABEL_51;
  }

  v20 = v16 * 0.666;
  v21 = (v20 + v20);
  v22 = v6 - v7 - 48;
  v23 = v22 / 0x30 + 1;
  if (v20 >= 0.0)
  {
    if (v20 < 4.50359963e15)
    {
      v27 = (v21 + 1) >> 1;
      if (v22 >= 0x30)
      {
        v41 = 0;
        v42 = 0;
        v28 = &v7[48 * (v23 & 0xFFFFFFFFFFFFFFELL)];
        v43 = v7 + 52;
        v44 = v23 & 0xFFFFFFFFFFFFFFELL;
        do
        {
          v45 = *(v43 - 52);
          v46 = *(v43 - 4);
          v47 = *(v43 - 12);
          v48 = *v43;
          v43 += 24;
          v41 += (v15 >> v45) & (v47 > v27);
          v42 += (v15 >> v46) & (v48 > v27);
          v44 -= 2;
        }

        while (v44);
        v25 = v42 + v41;
        if (v23 == (v23 & 0xFFFFFFFFFFFFFFELL))
        {
          goto LABEL_51;
        }
      }

      else
      {
        v25 = 0;
        v28 = *(a2 + 24);
      }

      do
      {
        v25 += (v15 >> *v28) & (*(v28 + 1) > v27);
        v28 += 48;
      }

      while (v28 != v6);
      goto LABEL_51;
    }

    v31 = v20;
    if (v22 >= 0x30)
    {
      v57 = 0;
      v58 = 0;
      v32 = &v7[48 * (v23 & 0xFFFFFFFFFFFFFFELL)];
      v59 = v7 + 52;
      v60 = v23 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v61 = *(v59 - 52);
        v62 = *(v59 - 4);
        v63 = *(v59 - 12);
        v64 = *v59;
        v59 += 24;
        v57 += (v15 >> v61) & (v63 > v31);
        v58 += (v15 >> v62) & (v64 > v31);
        v60 -= 2;
      }

      while (v60);
      v25 = v58 + v57;
      if (v23 == (v23 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v25 = 0;
      v32 = *(a2 + 24);
    }

    do
    {
      v25 += (v15 >> *v32) & (*(v32 + 1) > v31);
      v32 += 48;
    }

    while (v32 != v6);
    goto LABEL_51;
  }

  if (v20 <= -4.50359963e15)
  {
    v29 = v20;
    if (v22 >= 0x30)
    {
      v49 = 0;
      v50 = 0;
      v30 = &v7[48 * (v23 & 0xFFFFFFFFFFFFFFELL)];
      v51 = v7 + 52;
      v52 = v23 & 0xFFFFFFFFFFFFFFELL;
      do
      {
        v53 = *(v51 - 52);
        v54 = *(v51 - 4);
        v55 = *(v51 - 12);
        v56 = *v51;
        v51 += 24;
        v49 += (v15 >> v53) & (v55 > v29);
        v50 += (v15 >> v54) & (v56 > v29);
        v52 -= 2;
      }

      while (v52);
      v25 = v50 + v49;
      if (v23 == (v23 & 0xFFFFFFFFFFFFFFELL))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v25 = 0;
      v30 = *(a2 + 24);
    }

    do
    {
      v25 += (v15 >> *v30) & (*(v30 + 1) > v29);
      v30 += 48;
    }

    while (v30 != v6);
    goto LABEL_51;
  }

  v24 = (v21 - 1) / 2;
  if (v22 < 0x30)
  {
    v25 = 0;
    v26 = *(a2 + 24);
    do
    {
LABEL_35:
      v25 += (v15 >> *v26) & (*(v26 + 1) > v24);
      v26 += 48;
    }

    while (v26 != v6);
    goto LABEL_51;
  }

  v33 = 0;
  v34 = 0;
  v26 = &v7[48 * (v23 & 0xFFFFFFFFFFFFFFELL)];
  v35 = v7 + 52;
  v36 = v23 & 0xFFFFFFFFFFFFFFELL;
  do
  {
    v37 = *(v35 - 52);
    v38 = *(v35 - 4);
    v39 = *(v35 - 12);
    v40 = *v35;
    v35 += 24;
    v33 += (v15 >> v37) & (v39 > v24);
    v34 += (v15 >> v38) & (v40 > v24);
    v36 -= 2;
  }

  while (v36);
  v25 = v34 + v33;
  if (v23 != (v23 & 0xFFFFFFFFFFFFFFELL))
  {
    goto LABEL_35;
  }

LABEL_51:
  v65 = *(a1 + 16);
  v66 = pow(*(a1 + 24), v25) * v17;
  if (v66 >= 0.0)
  {
    if (v66 >= 4.50359963e15)
    {
      goto LABEL_57;
    }

    v67 = (v66 + v66) + 1;
  }

  else
  {
    if (v66 <= -4.50359963e15)
    {
      goto LABEL_57;
    }

    v67 = (v66 + v66) - 1 + (((v66 + v66) - 1) >> 63);
  }

  v66 = (v67 >> 1);
LABEL_57:
  v68 = *(a2 + 48);
  v69 = 0x7FFFFFFF;
  if (v68 <= 1)
  {
    if (*(a2 + 48))
    {
      if (v68 == 1)
      {
        v69 = *(a1 + 52);
      }

      goto LABEL_68;
    }

LABEL_65:
    v69 = *(a1 + 64);
    goto LABEL_68;
  }

  switch(v68)
  {
    case 2u:
      v69 = *(a1 + 56);
      break;
    case 3u:
      v69 = *(a1 + 60);
      break;
    case 4u:
      goto LABEL_65;
  }

LABEL_68:
  v70 = (1.0 - v65) * (v69 + v66);
  v71 = (v70 + v70);
  if (v70 > -4.50359963e15)
  {
    v72 = ((v71 - 1) / 2);
  }

  else
  {
    v72 = (1.0 - v65) * (v69 + v66);
  }

  v73 = (v71 + 1) >> 1;
  if (v70 < 4.50359963e15)
  {
    v74 = v73;
  }

  else
  {
    v74 = v70;
  }

  if (v70 >= 0.0)
  {
    v75 = v74;
  }

  else
  {
    v75 = v72;
  }

  v76 = *(a3 + 8) / 100000.0 / *(a1 + 40) * 60.0 * 60.0 * 10.0;
  if (v76 >= 0.0)
  {
    if (v76 >= 4.50359963e15)
    {
      goto LABEL_83;
    }

    v77 = (v76 + v76) + 1;
  }

  else
  {
    if (v76 <= -4.50359963e15)
    {
      goto LABEL_83;
    }

    v77 = (v76 + v76) - 1 + (((v76 + v76) - 1) >> 63);
  }

  v76 = (v77 >> 1);
LABEL_83:
  v78 = v75;
  v79 = v65 * v76;
  if (v79 >= 0.0)
  {
    if (v79 < 4.50359963e15)
    {
      v80 = (v79 + v79) + 1;
      goto LABEL_88;
    }
  }

  else if (v79 > -4.50359963e15)
  {
    v80 = (v79 + v79) - 1 + (((v79 + v79) - 1) >> 63);
LABEL_88:
    v79 = (v80 >> 1);
  }

  v81 = v79;
  v82 = pow(v65, (*a3 + 1)) * *(a1 + 48);
  v83 = (v82 + v82);
  if (v82 > -4.50359963e15)
  {
    v84 = ((v83 - 1) / 2);
  }

  else
  {
    v84 = v82;
  }

  v85 = ((v83 + 1) >> 1);
  if (v82 >= 4.50359963e15)
  {
    v85 = v82;
  }

  if (v82 >= 0.0)
  {
    v86 = v85;
  }

  else
  {
    v86 = v84;
  }

  return (v81 + v78 + *a1 + v86);
}

void sub_445144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **sub_445160(void **a1)
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
          do
          {
            v6 = *v5;
            operator delete(v5);
            v5 = v6;
          }

          while (v6);
        }

        v7 = *(v3 - 5);
        *(v3 - 5) = 0;
        if (v7)
        {
          operator delete(v7);
        }

        v3 -= 56;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_4451EC(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  if (*a2 == a2[1])
  {
    return;
  }

  v7 = sub_3B1D8C(a4);
  v8 = a2[1];
  v9 = *a2;
  if (*a2 != v8)
  {
    while (*(v9 + 176) != 1)
    {
      v9 += 440;
      if (v9 == v8)
      {
        goto LABEL_7;
      }
    }
  }

  if (v9 != v8)
  {
LABEL_8:
    v11 = sub_2AB698(v7, *(v9 + 16));
    v12 = v11 & 0xFFFFFFFF00000000;
    v13 = v11;
    __p = 0;
    v40 = 0;
    v41 = 0;
    v14 = *a2;
    v15 = a2[1];
    if (*a2 == v15)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_14:
      if (*(v14 + 176) == 3)
      {
        v42 = sub_2AB698(v7, *(v14 + 16));
        sub_2512DC(&__p, &v42);
      }

      v14 += 440;
    }

    while (v14 != v15);
    v14 = *a2;
    v15 = a2[1];
    if (*a2 == v15)
    {
      goto LABEL_34;
    }

    goto LABEL_17;
  }

LABEL_7:
  v10 = sub_E67BDC(a3);
  v9 = a3;
  if (v10)
  {
    goto LABEL_8;
  }

  v13 = 0;
  v12 = 0xFFFFFFFF00000000;
  __p = 0;
  v40 = 0;
  v41 = 0;
  v14 = *a2;
  v15 = a2[1];
  if (*a2 != v15)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v14 == v15)
  {
    goto LABEL_34;
  }

LABEL_17:
  v16 = v15 - v14 - 440;
  if (v16 < 0x1B8)
  {
    v17 = 0;
    v18 = v14;
    do
    {
LABEL_26:
      if (*(v18 + 176) == 2)
      {
        ++v17;
      }

      v18 += 440;
    }

    while (v18 != v15);
    goto LABEL_29;
  }

  v19 = 0;
  v20 = 0;
  v21 = v16 / 0x1B8 + 1;
  v18 = v14 + 440 * (v21 & 0x1FFFFFFFFFFFFFELL);
  v22 = v14;
  v23 = v21 & 0x1FFFFFFFFFFFFFELL;
  do
  {
    if (*(v22 + 176) == 2)
    {
      ++v19;
    }

    if (*(v22 + 616) == 2)
    {
      ++v20;
    }

    v22 += 880;
    v23 -= 2;
  }

  while (v23);
  v17 = v20 + v19;
  if (v21 != (v21 & 0x1FFFFFFFFFFFFFELL))
  {
    goto LABEL_26;
  }

LABEL_29:
  if (v17 == 1)
  {
    while (*(v14 + 176) != 2)
    {
      v14 += 440;
      if (v14 == v15)
      {
        v14 = v15;
        break;
      }
    }

    v24 = sub_2AB698(v7, *(v14 + 16));
    v25 = v24 & 0xFFFFFFFF00000000;
    v26 = v24;
    goto LABEL_35;
  }

LABEL_34:
  v26 = 0;
  v25 = 0xFFFFFFFF00000000;
LABEL_35:
  v27 = *(a1 + 8);
  v29 = *(a1 + 16);
  v28 = (a1 + 8);
  v30 = ((v40 - __p) >> 3) + 1;
  v31 = 0x6DB6DB6DB6DB6DB7 * ((v29 - v27) >> 3);
  if (v30 <= v31)
  {
    if (v30 < v31)
    {
      v32 = v27 + 56 * v30;
      while (v29 != v32)
      {
        v33 = *(v29 - 24);
        if (v33)
        {
          do
          {
            v34 = *v33;
            operator delete(v33);
            v33 = v34;
          }

          while (v34);
        }

        v35 = *(v29 - 40);
        *(v29 - 40) = 0;
        if (v35)
        {
          operator delete(v35);
        }

        v29 -= 56;
      }

      *(a1 + 16) = v32;
    }
  }

  else
  {
    sub_445EFC((a1 + 8), v30 - v31);
  }

  if (v40 != __p)
  {
    v36 = 0;
    v37 = 0;
    v38 = (v40 - __p) >> 3;
    do
    {
      *(*v28 + v36 + 8) = *(__p + v37);
      *(*v28 + v36 + 56) = *(__p + v37);
      v36 += 56;
      ++v37;
    }

    while (v38 != v37);
  }

  **(a1 + 8) = v12 | v13;
  *(*(a1 + 16) - 48) = v25 | v26;
  if (__p)
  {
    v40 = __p;
    operator delete(__p);
  }
}

void sub_445528(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_44554C(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t **a4, _BYTE *a5, void *a6)
{
  *a1 = *a5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 32) = 0xFFFFFFFF00000000;
  *(a1 + 56) = 0u;
  *(a1 + 80) = 0u;
  v10 = (a1 + 80);
  *(a1 + 72) = 1065353216;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 1065353216;
  v11 = *a4;
  v12 = a4[1];
  if (*a4 != v12)
  {
    do
    {
      sub_4462D4(v10, v11++);
    }

    while (v11 != v12);
  }

  sub_4451EC(a1, a2, a3, a6);
  return a1;
}

void sub_44561C(_Unwind_Exception *a1)
{
  sub_11BD8(v3);
  sub_11BD8(v2);
  sub_445160(v1);
  _Unwind_Resume(a1);
}

unint64_t sub_445668(uint64_t a1, char **a2, unsigned int a3, void *a4)
{
  result = sub_F63D58(a2);
  if (result)
  {
    return result;
  }

  if (*a1 == 1)
  {
    v9 = sub_EA7118(a3);
    if (*a1)
    {
      v10 = sub_EA7130(a3);
      goto LABEL_7;
    }
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
LABEL_7:
  v11 = sub_3B1D8C(a4);
  v12 = sub_45AC50(a2);
  v13 = sub_73EEC(v12);
  v14 = *v13 == 0x7FFFFFFF || v13[9] == 0x7FFFFFFF;
  if (v14 || (v15 = v13, !sub_4566B4(v13 + 2)) || (v16 = v15[28]) == 0)
  {
LABEL_16:
    v18 = 2;
LABEL_17:
    v19 = sub_452E80(a2);
    result = sub_588D8(a2);
    if (v19 == result)
    {
      return result;
    }

    v20 = sub_73EEC(v19);
    result = sub_2AB71C(v11, *(v20 + 104), *(v20 + 112));
    v21 = result;
    *(a1 + 32) = result;
    v22 = *(a1 + 8);
    if (a3 == 7)
    {
      v23 = *(a1 + 16);
      while (v22 != v23)
      {
        v28 = v21;
        result = sub_446608((v22 + 16), &v28);
        if (!result || *(result + 24) <= v18)
        {
          result = sub_446724((v22 + 16), &v28);
        }

        v22 += 56;
      }

      return result;
    }

    v28 = result;
    result = sub_446608((v22 + 16), &v28);
    if (result && *(result + 24) > v18)
    {
      return result;
    }

    v24 = (v22 + 16);
    return sub_446724(v24, &v28);
  }

  if (v16 == 2)
  {
    v17 = *(v15 + 13);
    v18 = 2;
    if (v17 > 0xFFFFFFFEFFFFFFFFLL || !v17)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v16 != 1)
    {
      sub_5AF20();
    }

    v17 = *(v15 + 13);
    if (v17 == -1)
    {
      goto LABEL_16;
    }
  }

  result = sub_2AB71C(v11, v17, *(v15 + 14));
  v25 = result;
  if (!v9)
  {
    if ((v10 & 1) == 0)
    {
      **(a1 + 8) = result;
    }

    v18 = 1;
    goto LABEL_17;
  }

  *(a1 + 32) = result;
  v26 = *(a1 + 8);
  if (a3 != 7)
  {
    v28 = result;
    result = sub_446608((v26 + 16), &v28);
    if (result && *(result + 24) > 2u)
    {
      return result;
    }

    v24 = (v26 + 16);
    return sub_446724(v24, &v28);
  }

  for (i = *(a1 + 16); v26 != i; v26 += 56)
  {
    v28 = v25;
    result = sub_446608((v26 + 16), &v28);
    if (!result || *(result + 24) <= 2u)
    {
      result = sub_446724((v26 + 16), &v28);
    }
  }

  return result;
}

void sub_445910(void *a1, unint64_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    do
    {
      sub_4462D4(a1 + 5, v2);
      v5 = a1[11];
      if (v5)
      {
        v6 = *v2;
        v7 = vcnt_s8(v5);
        v7.i16[0] = vaddlv_u8(v7);
        if (v7.u32[0] > 1uLL)
        {
          v8 = *v2;
          if (v6 >= *&v5)
          {
            v8 = v6 % *&v5;
          }
        }

        else
        {
          v8 = (*&v5 - 1) & v6;
        }

        v9 = *(a1[10] + 8 * v8);
        if (v9)
        {
          v10 = *v9;
          if (*v9)
          {
            if (v7.u32[0] < 2uLL)
            {
              v11 = *&v5 - 1;
              while (1)
              {
                v12 = v10[1];
                if (v12 == v6)
                {
                  if (v10[2] == v6)
                  {
                    goto LABEL_25;
                  }
                }

                else if ((v12 & v11) != v8)
                {
                  goto LABEL_3;
                }

                v10 = *v10;
                if (!v10)
                {
                  goto LABEL_3;
                }
              }
            }

            do
            {
              v13 = v10[1];
              if (v13 == v6)
              {
                if (v10[2] == v6)
                {
LABEL_25:
                  sub_24C14(a1 + 10, v10, &__p);
                  v14 = __p;
                  __p = 0;
                  if (v14)
                  {
                    operator delete(v14);
                  }

                  break;
                }
              }

              else
              {
                if (v13 >= *&v5)
                {
                  v13 %= *&v5;
                }

                if (v13 != v8)
                {
                  break;
                }
              }

              v10 = *v10;
            }

            while (v10);
          }
        }
      }

LABEL_3:
      v2 += 2;
    }

    while (v2 != v3);
  }
}

uint64_t sub_445AB0(void *a1, unint64_t a2)
{
  if (a1[8])
  {
    v2 = a1[6];
    if (v2)
    {
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

      v8 = *(a1[5] + 8 * v4);
      if (v8)
      {
        v9 = *v8;
        if (v9)
        {
          if (v3.u32[0] < 2uLL)
          {
            v10 = *&v2 - 1;
            while (1)
            {
              v11 = v9[1];
              if (v11 == a2)
              {
                if (v9[2] == a2)
                {
                  return 1;
                }
              }

              else if ((v11 & v10) != v4)
              {
                return 0;
              }

              v9 = *v9;
              if (!v9)
              {
                return 0;
              }
            }
          }

          do
          {
            v12 = v9[1];
            if (v12 == a2)
            {
              if (v9[2] == a2)
              {
                return 1;
              }
            }

            else
            {
              if (v12 >= *&v2)
              {
                v12 %= *&v2;
              }

              if (v12 != v4)
              {
                return 0;
              }
            }

            v9 = *v9;
          }

          while (v9);
        }
      }
    }

    return 0;
  }

  else
  {
    v5 = a1[11];
    if (v5)
    {
      v6 = vcnt_s8(v5);
      v6.i16[0] = vaddlv_u8(v6);
      if (v6.u32[0] > 1uLL)
      {
        v7 = a2;
        if (*&v5 <= a2)
        {
          v7 = a2 % *&v5;
        }
      }

      else
      {
        v7 = (*&v5 - 1) & a2;
      }

      v13 = *(a1[10] + 8 * v7);
      if (v13)
      {
        v14 = *v13;
        if (v14)
        {
          if (v6.u32[0] < 2uLL)
          {
            v15 = *&v5 - 1;
            result = 1;
            while (1)
            {
              v17 = v14[1];
              if (v17 == a2)
              {
                if (v14[2] == a2)
                {
                  return 0;
                }
              }

              else if ((v17 & v15) != v7)
              {
                return 1;
              }

              v14 = *v14;
              if (!v14)
              {
                return result;
              }
            }
          }

          result = 1;
          while (1)
          {
            v18 = v14[1];
            if (v18 == a2)
            {
              if (v14[2] == a2)
              {
                return 0;
              }
            }

            else
            {
              if (v18 >= *&v5)
              {
                v18 %= *&v5;
              }

              if (v18 != v7)
              {
                return 1;
              }
            }

            v14 = *v14;
            if (!v14)
            {
              return result;
            }
          }
        }
      }
    }

    return 1;
  }
}

uint64_t sub_445C74(int8x8_t *a1, unint64_t a2)
{
  v2 = a1[11];
  if (v2)
  {
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

    v5 = *(*&a1[10] + 8 * v4);
    if (v5)
    {
      v6 = *v5;
      if (v6)
      {
        if (v3.u32[0] < 2uLL)
        {
          v7 = *&v2 - 1;
          while (1)
          {
            v9 = v6[1];
            if (v9 == a2)
            {
              if (v6[2] == a2)
              {
                return 1;
              }
            }

            else if ((v9 & v7) != v4)
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

        do
        {
          v8 = v6[1];
          if (v8 == a2)
          {
            if (v6[2] == a2)
            {
              return 1;
            }
          }

          else
          {
            if (v8 >= *&v2)
            {
              v8 %= *&v2;
            }

            if (v8 != v4)
            {
              return 0;
            }
          }

          v6 = *v6;
        }

        while (v6);
      }
    }
  }

  return 0;
}

uint64_t sub_445D54(uint64_t a1, void *a2, uint64_t *a3)
{
  sub_3320D0(v17, *(a1 + 16), a1);
  sub_45AC78(v17, -1);
  v5 = *(v17[0] + 1);
  if (v5 > 0xFFFFFFFEFFFFFFFFLL || v5 == 0)
  {
    return 0;
  }

  sub_2AB9C8(a3, v5, 2, v17);
  v9 = __p;
  v10 = v19;
  if (__p == v19)
  {
    v7 = 0;
    if (__p)
    {
LABEL_17:
      v11 = v19;
      v12 = v9;
      if (v19 != v9)
      {
        do
        {
          if (*(v11 - 1) < 0)
          {
            operator delete(*(v11 - 3));
          }

          v11 -= 48;
        }

        while (v11 != v9);
        v12 = __p;
      }

      v19 = v9;
      operator delete(v12);
    }
  }

  else
  {
    while (!sub_E6F808(a2, *v9) && !sub_E6F844(a2, *v9))
    {
      v9 += 48;
      if (v9 == v10)
      {
        v7 = 0;
        v9 = __p;
        if (__p)
        {
          goto LABEL_17;
        }

        goto LABEL_24;
      }
    }

    v7 = 1;
    v9 = __p;
    if (__p)
    {
      goto LABEL_17;
    }
  }

LABEL_24:
  v13 = v17[0];
  if (!v17[0])
  {
    return v7;
  }

  v14 = v17[1];
  v15 = v17[0];
  if (v17[1] != v17[0])
  {
    do
    {
      v16 = *(v14 - 3);
      if (v16)
      {
        *(v14 - 2) = v16;
        operator delete(v16);
      }

      v14 -= 48;
    }

    while (v14 != v13);
    v15 = v17[0];
  }

  v17[1] = v13;
  operator delete(v15);
  return v7;
}

void sub_445EFC(uint64_t *a1, unint64_t a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (0x6DB6DB6DB6DB6DB7 * ((v3 - v2) >> 3) >= a2)
  {
    if (a2)
    {
      v8 = v2 + 56 * a2;
      do
      {
        *(v2 + 48) = 0;
        *(v2 + 16) = 0uLL;
        *(v2 + 32) = 0uLL;
        *v2 = 0uLL;
        *(v2 + 4) = -1;
        *(v2 + 12) = -1;
        *(v2 + 48) = 1065353216;
        v2 += 56;
      }

      while (v2 != v8);
      v2 = v8;
    }

    a1[1] = v2;
  }

  else
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((v2 - *a1) >> 3);
    v5 = v4 + a2;
    if (v4 + a2 > 0x492492492492492)
    {
      sub_1794();
    }

    v6 = 0x6DB6DB6DB6DB6DB7 * ((v3 - *a1) >> 3);
    if (2 * v6 > v5)
    {
      v5 = 2 * v6;
    }

    if (v6 >= 0x249249249249249)
    {
      v7 = 0x492492492492492;
    }

    else
    {
      v7 = v5;
    }

    v19 = a1;
    if (v7)
    {
      if (v7 <= 0x492492492492492)
      {
        operator new();
      }

      sub_1808();
    }

    v9 = 56 * v4;
    __p = 0;
    v16 = 56 * v4;
    v18 = 0;
    do
    {
      *(v9 + 48) = 0;
      *(v9 + 16) = 0uLL;
      *(v9 + 32) = 0uLL;
      *v9 = 0uLL;
      *(v9 + 4) = -1;
      *(v9 + 12) = -1;
      *(v9 + 48) = 1065353216;
      v9 += 56;
    }

    while (v9 != 56 * v4 + 56 * a2);
    v17 = 56 * v4 + 56 * a2;
    sub_44610C(a1, &__p);
    v10 = v16;
    while (1)
    {
      v11 = v17;
      if (v17 == v10)
      {
        break;
      }

      v17 -= 56;
      v12 = *(v11 - 24);
      if (v12)
      {
        do
        {
          v13 = *v12;
          operator delete(v12);
          v12 = v13;
        }

        while (v13);
      }

      v14 = *(v11 - 40);
      *(v11 - 40) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    if (__p)
    {
      operator delete(__p);
    }
  }
}

void sub_4460F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_446254(va);
  _Unwind_Resume(a1);
}

void sub_44610C(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a2[1] + *a1 - v4;
  if (v4 != *a1)
  {
    v7 = 0;
    do
    {
      v9 = v6 + v7;
      *v9 = *(v5 + v7);
      v10 = (v5 + v7 + 32);
      v11 = *v10;
      v12 = *(v5 + v7 + 16);
      v13 = *(v5 + v7 + 24);
      *(v10 - 2) = 0;
      *(v9 + 16) = v12;
      *(v9 + 24) = v13;
      *(v10 - 1) = 0;
      *(v6 + v7 + 32) = v11;
      v14 = *(v5 + v7 + 40);
      *(v9 + 40) = v14;
      *(v9 + 48) = *(v5 + v7 + 48);
      if (v14)
      {
        v8 = *(v11 + 8);
        v15 = *(v9 + 24);
        if ((v15 & (v15 - 1)) != 0)
        {
          if (v8 >= v15)
          {
            v8 %= v15;
          }
        }

        else
        {
          v8 &= v15 - 1;
        }

        *(v12 + 8 * v8) = v6 + v7 + 32;
        *v10 = 0;
        *(v5 + v7 + 40) = 0;
      }

      v7 += 56;
    }

    while (v5 + v7 != v4);
    do
    {
      v16 = *(v5 + 32);
      if (v16)
      {
        do
        {
          v17 = *v16;
          operator delete(v16);
          v16 = v17;
        }

        while (v17);
      }

      v18 = *(v5 + 16);
      *(v5 + 16) = 0;
      if (v18)
      {
        operator delete(v18);
      }

      v5 += 56;
    }

    while (v5 != v4);
  }

  a2[1] = v6;
  v19 = *a1;
  *a1 = v6;
  a1[1] = v19;
  a2[1] = v19;
  v20 = a1[1];
  a1[1] = a2[2];
  a2[2] = v20;
  v21 = a1[2];
  a1[2] = a2[3];
  a2[3] = v21;
  *a2 = a2[1];
}

uint64_t sub_446254(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 56;
    v4 = *(i - 24);
    if (v4)
    {
      do
      {
        v5 = *v4;
        operator delete(v4);
        v4 = v5;
      }

      while (v5);
    }

    v6 = *(i - 40);
    *(i - 40) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_4462D4(void *a1, unint64_t *a2)
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

uint64_t *sub_446608(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = __ROR8__(*a2, 32);
  v5 = 0xC4CEB9FE1A85EC53 * ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) ^ ((0xFF51AFD7ED558CCDLL * (v4 ^ (v4 >> 33))) >> 33));
  v6 = v5 ^ (v5 >> 33);
  v7 = vcnt_s8(v2);
  v7.i16[0] = vaddlv_u8(v7);
  if (v7.u32[0] > 1uLL)
  {
    v8 = v6;
    if (v6 >= *&v2)
    {
      v8 = v6 % *&v2;
    }
  }

  else
  {
    v8 = v6 & (*&v2 - 1);
  }

  v9 = *(*a1 + 8 * v8);
  if (!v9)
  {
    return 0;
  }

  result = *v9;
  if (*v9)
  {
    if (v7.u32[0] < 2uLL)
    {
      v11 = *&v2 - 1;
      while (1)
      {
        v13 = result[1];
        if (v13 == v6)
        {
          if (*(result + 4) == v3 && *(result + 5) == HIDWORD(v3))
          {
            return result;
          }
        }

        else if ((v13 & v11) != v8)
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
      v15 = result[1];
      if (v15 == v6)
      {
        if (*(result + 4) == v3 && *(result + 5) == HIDWORD(v3))
        {
          return result;
        }
      }

      else
      {
        if (v15 >= *&v2)
        {
          v15 %= *&v2;
        }

        if (v15 != v8)
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

uint64_t *sub_446724(void *a1, void *a2)
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

void sub_446C74(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278F836) < 0)
  {
    sub_21E1A04();
  }

  sub_21E1A10();
  _Unwind_Resume(a1);
}

__n128 *sub_446C94(__n128 *a1)
{
  a1->n128_f64[0] = -NAN;
  a1->n128_u64[1] = 0x7FFFFFFFFFFFFFFFLL;
  sub_456D50(a1 + 1);
  return a1;
}

__n128 sub_446CD4(_OWORD *a1, _OWORD *a2, __n128 *a3)
{
  *a1 = *a2;
  result = *a3;
  a1[1] = *a3;
  return result;
}

uint64_t sub_446CE8@<X0>(void *a1@<X8>)
{
  result = sub_456D70();
  *a1 = 0;
  a1[1] = 0;
  a1[2] = result;
  a1[3] = v3;
  return result;
}

int32x2_t *sub_446D50(int32x2_t *a1, int32x2_t *a2)
{
  *a1 = vadd_s32(*a2, *a1);
  *&a1[1] += *&a2[1];
  sub_456D84(&a1[2], &a2[2]);
  return a1;
}

_DWORD *sub_446DA0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = sub_AAED4(a3);
  v7 = sub_AAF40(a3);
  result = sub_456538(a1, a2, v6, v7);
  *(a1 + 16) = a3;
  return result;
}

_DWORD *sub_446DFC(uint64_t a1, int a2, uint64_t *a3)
{
  v4 = *a3;
  v6 = sub_AAED4(*a3);
  v7 = sub_AAF40(v4);
  result = sub_456538(a1, a2, v6, v7);
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_446E58(uint64_t result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v3;
  *(result + 16) = a3;
  return result;
}

uint64_t sub_446E70(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v4;
  *(result + 16) = v3;
  return result;
}

unint64_t sub_446E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6[0] = sub_AAED4(a1);
  v6[1] = sub_AAF40(a1);
  result = sub_456554(v6);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  return result;
}

unint64_t sub_446EE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v6[0] = sub_AAED4(*a1);
  v6[1] = sub_AAF40(v3);
  result = sub_456554(v6);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  return result;
}

uint64_t sub_446F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LODWORD(v6) = sub_AAED4(a1);
  HIDWORD(v6) = sub_AAF40(a1);
  result = sub_45656C(&v6);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  return result;
}

uint64_t sub_446FA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LODWORD(v6) = sub_AAED4(*a1);
  HIDWORD(v6) = sub_AAF40(v3);
  result = sub_45656C(&v6);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v3;
  return result;
}

_DWORD *sub_447004@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_AAED4(a2);
  sub_AAF40(a2);
  v6 = sub_2A31CC(a2, a1);
  v7 = sub_AAED4(a2);
  v8 = sub_AAF40(a2);
  result = sub_456538(a3, v6, v7, v8);
  *(a3 + 16) = a2;
  return result;
}

double sub_447084(uint64_t a1)
{
  if (sub_3F80(a1) != 0x7FFFFFFF)
  {
    v2 = *(a1 + 16);
    v3 = sub_3F80(a1);
    sub_A2448(v2, v3);
    sub_2A448C(*(a1 + 16));
  }

  return 0.0 / 100.0;
}

uint64_t sub_4470E4(uint64_t a1)
{
  if (sub_3F80(a1) != 0x7FFFFFFF)
  {
    v3 = *(a1 + 16);
    v4 = sub_3F80(a1);
    sub_A2448(v3, v4);
    sub_2A448C(*(a1 + 16));
  }

  return (((0.0 + 0.0) + 1) >> 1);
}

uint64_t sub_4471A4@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_456824(a1, a2);
  v6 = *(a1 + 16);
  *a3 = result;
  *(a3 + 8) = v7;
  *(a3 + 16) = v6;
  return result;
}

uint64_t sub_4471DC(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = 12;
  strcpy(__p, "min_num_pois");
  v6 = sub_353010(a2, __p);
  if (v10 < 0)
  {
    v7 = v6;
    operator delete(__p[0]);
    v6 = v7;
  }

  *a1 = v6;
  v10 = 8;
  strcpy(__p, "radius_m");
  *(a1 + 8) = sub_64514(a2, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  sub_4472DC(a2, a3, a1 + 16);
  return a1;
}

void sub_4472BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_4472DC@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = 7;
  strcpy(__p, "percent");
  v6 = sub_62A70(a1, __p);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 12);
  if (v7 != 4 && v7 != 3)
  {
    if (v7 == 2)
    {
      v8 = *(v6 + 5);
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

LABEL_7:
    v8 = 100;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v8 = *(v6 + 10);
  if (v20 < 0)
  {
LABEL_8:
    operator delete(__p[0]);
  }

LABEL_9:
  sub_447004(v8, a2, __p);
  v17 = 9;
  strcpy(v16, "energy_wh");
  v9 = sub_62A70(a1, v16);
  if (v9)
  {
    v10 = *(v9 + 12);
    switch(v10)
    {
      case 4:
        v11 = v9[5] * 1000.0;
        if (v11 >= 0.0)
        {
          goto LABEL_21;
        }

        goto LABEL_16;
      case 3:
        v11 = v9[5] * 1000.0;
        if (v11 < 0.0)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      case 2:
        v11 = *(v9 + 5) * 1000.0;
        if (v11 >= 0.0)
        {
          goto LABEL_21;
        }

LABEL_16:
        if (v11 <= -4.50359963e15)
        {
          goto LABEL_24;
        }

        v12 = (v11 + v11) - 1 + (((v11 + v11) - 1) >> 63);
        goto LABEL_23;
    }
  }

  v11 = 2000000.0 * 1000.0;
  if (2000000.0 * 1000.0 < 0.0)
  {
    goto LABEL_16;
  }

LABEL_21:
  if (v11 >= 4.50359963e15)
  {
    goto LABEL_24;
  }

  v12 = (v11 + v11) + 1;
LABEL_23:
  v11 = (v12 >> 1);
LABEL_24:
  v18 = v11;
  if (v17 < 0)
  {
    operator delete(v16[0]);
  }

  sub_446E8C(a2, v15);
  sub_4471A4(v15, &v18, v16);
  if (sub_456784(v16, __p))
  {
    v13 = v16;
  }

  else
  {
    v13 = __p;
  }

  result = *v13;
  *a3 = *v13;
  *(a3 + 16) = v13[2];
  return result;
}

void sub_447524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_447744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_447768(void *a1, unsigned int a2)
{
  v28 = 20;
  strcpy(__p, "oem_charging_configs");
  v3 = sub_5F680(a1, __p);
  if (v28 < 0)
  {
    v7 = v3;
    operator delete(*__p);
    v8 = v7;
    v4 = *v7;
    v5 = v8[1] - v4;
    v6 = v5 >> 4;
    if (v5 >> 4 < 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *v3;
    v5 = v3[1] - *v3;
    v6 = v5 >> 4;
    if (v5 >> 4 < 1)
    {
      goto LABEL_10;
    }
  }

  if (v5 != 16)
  {
    while (1)
    {
      v14 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
      _X8 = v4 + v14;
      __asm { PRFM            #0, [X8] }

      v21 = v4 + 16 * (v6 >> 1);
      _X9 = v21 + v14;
      __asm { PRFM            #0, [X9] }

      if (*(v21 + 8) != 5)
      {
        break;
      }

      v24 = *v21;
      v28 = 17;
      strcpy(__p, "charging_model_id");
      v25 = sub_353010(v24, __p);
      if (v28 < 0)
      {
        v26 = v25;
        operator delete(*__p);
        v25 = v26;
      }

      if (v25 <= a2)
      {
        v13 = v6 >> 1;
      }

      else
      {
        v13 = 0;
      }

      v4 += 16 * v13;
      v6 -= v6 >> 1;
      if (v6 <= 1)
      {
        goto LABEL_6;
      }
    }

LABEL_20:
    sub_5AF20();
  }

LABEL_6:
  if (*(v4 + 8) != 5)
  {
    goto LABEL_20;
  }

  v9 = *v4;
  v28 = 17;
  strcpy(__p, "charging_model_id");
  v10 = sub_353010(v9, __p);
  if (v28 < 0)
  {
    v11 = v10;
    operator delete(*__p);
    v10 = v11;
  }

  v4 += 16 * (v10 <= a2);
LABEL_10:
  if (*(v4 - 8) != 5)
  {
    goto LABEL_20;
  }

  return *(v4 - 16);
}

void sub_447924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_447AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);
  _Unwind_Resume(exception_object);
}

void sub_447BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_447C88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_447D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_447DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_4480DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_448124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIBYTE(v11[2]) = 9;
  strcpy(v11, "EVRouting");
  __p = 0;
  v10 = 0uLL;
  sub_3AEC94(a3, v11, &__p);
  v4 = __p;
  if (__p)
  {
    v5 = v10;
    v6 = __p;
    if (v10 != __p)
    {
      do
      {
        v7 = *(v5 - 1);
        v5 -= 3;
        if (v7 < 0)
        {
          operator delete(*v5);
        }
      }

      while (v5 != v4);
      v6 = __p;
    }

    *&v10 = v4;
    operator delete(v6);
  }

  if (SHIBYTE(v11[2]) < 0)
  {
    operator delete(v11[0]);
  }

  v8 = nullsub_1(a1);
  sub_4566AC(v8);
  sub_E6F45C(a1);
  sub_447554();
}

void sub_448A38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  sub_5BF0C(&a22);
  if (*(v36 - 121) < 0)
  {
    operator delete(*(v36 - 144));
  }

  if (v35)
  {
    operator delete(v35);
  }

  sub_2AE16C(&a24);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_448B28(void *a1, uint64_t a2)
{
  v3 = sub_4C5154(a2);
  v4 = sub_447768(a1, v3);
  v8 = 13;
  strcpy(__p, "oem_filter_id");
  result = sub_352E94(v4, __p);
  if (v8 < 0)
  {
    v6 = result;
    operator delete(__p[0]);
    return v6;
  }

  return result;
}

void sub_448BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_448BD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_5F404((a1 + 24), a1);
  v10 = a2;
  result = sub_A1D1C(v5, a2);
  v7 = *(result + 12);
  v8 = *(a3 + 8);
  if (v7 == -1)
  {
    if (v8 == -1)
    {
      return result;
    }
  }

  else if (v8 == -1)
  {
    v9 = result;
    result = (off_266A810[v7])(&v10, result + 5);
    *(v9 + 12) = -1;
    return result;
  }

  v10 = result + 5;
  return (off_266A858[v8])(&v10);
}

void sub_448DDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_448DFC(void *a1, uint64_t a2)
{
  v3 = sub_4C5154(a2);
  sub_447768(a1, v3);
  operator new();
}

void sub_448F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_449048(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_449064(uint64_t *result, __int128 *a2)
{
  v2 = *result;
  v3 = *(*result + 8);
  v4 = *(*result + 16);
  if (v3 >= v4)
  {
    v7 = *v2;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *v2) >> 3);
    v9 = v8 + 1;
    if (v8 + 1 > 0x666666666666666)
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

    v12 = result;
    v13 = 8 * ((v3 - *v2) >> 3);
    v14 = a2[1];
    *v13 = *a2;
    *(v13 + 16) = v14;
    *(v13 + 32) = *(a2 + 4);
    v15 = 40 * v8 + 40;
    v16 = 40 * v8 - (v3 - v7);
    memcpy((v13 - (v3 - v7)), v7, v3 - v7);
    *v2 = v16;
    *(v2 + 8) = v15;
    *(v2 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }

    result = v12;
    *(v2 + 8) = v15;
  }

  else
  {
    v5 = *a2;
    v6 = a2[1];
    *(v3 + 32) = *(a2 + 4);
    *v3 = v5;
    *(v3 + 16) = v6;
    *(v2 + 8) = v3 + 40;
  }

  return result;
}

unint64_t sub_4491BC(uint64_t a1, void *a2, char a3)
{
  sub_2B7A20(a1, (HIDWORD(*a2) & 0xFFFE0000FFFFFFFFLL | (WORD1(*a2) << 32) & 0xFFFEFFFFFFFFFFFFLL | (((*a2 >> 1) & 1) << 48)) ^ 0x1000000000000, &v46);
  v4 = __p[0];
  if (__p[0] == __p[1])
  {
    v10 = 0xFFFFFFFF00000000;
    v11 = 0xFFFFFFFFLL;
    if (!__p[0])
    {
      return v10 | v11;
    }

    goto LABEL_44;
  }

  if (a3)
  {
    if (!v48)
    {
      v18 = *(__p[1] - 1);
      v19 = sub_2B4D24(v46, v18, 0);
      v20 = &v19[*&v19[-*v19 + 4]];
      v21 = &v20[4 * HIDWORD(v18) + *v20];
      v22 = (v21 + 4 + *(v21 + 4));
      v23 = (v22 + *(v22 - *v22 + 6));
      LODWORD(v23) = *(v23 + *v23) - 1;
      v49 = v46;
      v50 = __p;
      v51 = 0u;
      v52[0] = 0u;
      LODWORD(v52[1]) = ((__p[1] - __p[0]) >> 3) - 1;
      DWORD1(v52[1]) = v23;
      BYTE8(v52[1]) = 0;
      sub_318EF0(&v49);
      goto LABEL_43;
    }

    v49 = v46;
    v50 = __p;
    v51 = 0u;
    memset(v52, 0, 24);
    BYTE8(v52[1]) = 1;
    v5 = *__p[0];
    DWORD2(v52[0]) = v5;
    v6 = sub_2B4D24(v46, v5, 0);
    v7 = &v6[-*v6];
    v8 = *v7;
    if (v8 < 7)
    {
      HIDWORD(v52[0]) = 0;
      if (v8 < 5)
      {
        v29 = 0;
LABEL_24:
        v31 = (v29 + 4 * HIDWORD(v5) + 4 + *(v29 + 4 * HIDWORD(v5) + 4));
        *&v51 = v31;
        v32 = (v31 - *v31);
        v33 = *v32;
        if (v33 <= 6)
        {
          v36 = 0;
          *(&v51 + 1) = 0;
        }

        else
        {
          v34 = v32[3];
          if (v32[3])
          {
            v34 += v31 + *(v31 + v34);
          }

          *(&v51 + 1) = v34;
          if (v33 >= 0xB && (v35 = v32[5]) != 0)
          {
            v36 = v31 + v35 + *(v31 + v35);
          }

          else
          {
            v36 = 0;
          }
        }

        *&v52[0] = v36;
        goto LABEL_43;
      }
    }

    else
    {
      v9 = *(v7 + 3);
      if (*(v7 + 3))
      {
        LODWORD(v9) = *&v6[v9];
      }

      HIDWORD(v52[0]) = v9;
    }

    v29 = *(v7 + 2);
    if (v29)
    {
      v29 += &v6[*&v6[v29]];
    }

    goto LABEL_24;
  }

  if (v48)
  {
    v12 = *(__p[1] - 1);
    v13 = sub_2B4D24(v46, v12, 0);
    v14 = &v13[*&v13[-*v13 + 4]];
    v15 = &v14[4 * HIDWORD(v12) + *v14];
    v16 = (v15 + 4 + *(v15 + 4));
    v17 = (v16 + *(v16 - *v16 + 6));
    LODWORD(v17) = *(v17 + *v17) - 1;
    v49 = v46;
    v50 = __p;
    v51 = 0u;
    v52[0] = 0u;
    LODWORD(v52[1]) = ((__p[1] - __p[0]) >> 3) - 1;
    DWORD1(v52[1]) = v17;
    BYTE8(v52[1]) = 1;
    sub_318EF0(&v49);
    goto LABEL_43;
  }

  v49 = v46;
  v50 = __p;
  v51 = 0u;
  memset(v52, 0, 25);
  v24 = *__p[0];
  DWORD2(v52[0]) = v24;
  v25 = sub_2B4D24(v46, v24, 0);
  v26 = &v25[-*v25];
  v27 = *v26;
  if (v27 >= 7)
  {
    v28 = *(v26 + 3);
    if (*(v26 + 3))
    {
      LODWORD(v28) = *&v25[v28];
    }

    HIDWORD(v52[0]) = v28;
    goto LABEL_21;
  }

  HIDWORD(v52[0]) = 0;
  if (v27 >= 5)
  {
LABEL_21:
    v30 = *(v26 + 2);
    if (v30)
    {
      v30 += &v25[*&v25[v30]];
    }

    goto LABEL_34;
  }

  v30 = 0;
LABEL_34:
  v37 = (v30 + 4 * HIDWORD(v24) + 4 + *(v30 + 4 * HIDWORD(v24) + 4));
  *&v51 = v37;
  v38 = (v37 - *v37);
  v39 = *v38;
  if (v39 <= 6)
  {
    v42 = 0;
    *(&v51 + 1) = 0;
  }

  else
  {
    v40 = v38[3];
    if (v38[3])
    {
      v40 += v37 + *(v37 + v40);
    }

    *(&v51 + 1) = v40;
    if (v39 >= 0xB && (v41 = v38[5]) != 0)
    {
      v42 = v37 + v41 + *(v37 + v41);
    }

    else
    {
      v42 = 0;
    }
  }

  *&v52[0] = v42;
LABEL_43:
  v43 = sub_318DA8(&v49);
  v44 = v43;
  v10 = v43 & 0xFFFFFFFF00000000;
  v4 = __p[0];
  v11 = v44;
  if (__p[0])
  {
LABEL_44:
    __p[1] = v4;
    operator delete(v4);
  }

  return v10 | v11;
}

void sub_4495A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4495BC(uint64_t a1)
{
  v7[0] = sub_44F324(a1);
  v7[1] = v2;
  v6 = 100000;
  v4[2] = a1;
  v5 = 0x4054000000000000;
  v4[0] = &v6;
  v4[1] = &v5;
  if (v2 == 0xFFFFFFFFLL)
  {
    sub_5AF20();
  }

  v8 = v4;
  return (off_266A8A0[v2])(&v8, v7);
}

uint64_t sub_449640(int *a1, std::locale::__imp *a2)
{
  if (sub_456704(a1))
  {
    return 0;
  }

  __dst[0] = sub_44F324(a2);
  __dst[1] = v5;
  v32 = 100000;
  v31 = 0x4054000000000000;
  v20 = &v32;
  v21 = &v31;
  v22.__locale_ = a2;
  if (v5 == 0xFFFFFFFFLL)
  {
    goto LABEL_41;
  }

  v33 = &v20;
  v6 = (off_266A8A0[v5])(&v33, __dst);
  if (v6 > 0)
  {
    v7 = sub_456698(a1);
    v8 = v7 / v6 * 100000.0;
    if (v8 >= 0.0)
    {
      v9 = v7 / v6 * 100000.0;
      if (v8 >= 4.50359963e15)
      {
        goto LABEL_16;
      }

      v10 = (v8 + v8) + 1;
    }

    else
    {
      v9 = v7 / v6 * 100000.0;
      if (v8 <= -4.50359963e15)
      {
        goto LABEL_16;
      }

      v10 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
    }

    v9 = (v10 >> 1);
LABEL_16:
    if (v9 >= 9.22337204e18)
    {
      return 0x7FFFFFFFFFFFFFFELL;
    }

    if (v8 >= 0.0)
    {
      if (v8 < 4.50359963e15)
      {
        v15 = (v8 + v8) + 1;
        return (v15 >> 1);
      }
    }

    else if (v8 > -4.50359963e15)
    {
      v15 = (v8 + v8) - 1 + (((v8 + v8) - 1) >> 63);
      return (v15 >> 1);
    }

    return v8;
  }

  v20 = sub_44F324(a2);
  v21 = v11;
  if (v11 == 0xFFFFFFFFLL)
  {
LABEL_41:
    sub_5AF20();
  }

  __dst[0] = &v33;
  (off_266A8B0[v11])(__dst, &v20);
  if (sub_7E7E4(1u))
  {
    sub_19594F8(&v20);
    sub_4A5C(&v20, "Got non-positive energy consumption per kilometer (", 51);
    v12 = std::ostream::operator<<();
    v13 = sub_4A5C(v12, " kWh) without elevation for consumption model with id ", 54);
    std::ostream::operator<<();
    sub_4A5C(v13, ".", 1);
    if ((v30 & 0x10) != 0)
    {
      v16 = v29;
      if (v29 < v26)
      {
        v29 = v26;
        v16 = v26;
      }

      v17 = v25;
      v14 = v16 - v25;
      if (v16 - v25 >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_40;
      }
    }

    else
    {
      if ((v30 & 8) == 0)
      {
        v14 = 0;
        v19 = 0;
LABEL_33:
        *(__dst + v14) = 0;
        sub_7E854(__dst, 1u);
        if (v19 < 0)
        {
          operator delete(__dst[0]);
        }

        if (v28 < 0)
        {
          operator delete(__p);
        }

        std::locale::~locale(&v22);
        std::ostream::~ostream();
        std::ios::~ios();
        return 100000000;
      }

      v17 = v23;
      v14 = v24 - v23;
      if ((v24 - v23) >= 0x7FFFFFFFFFFFFFF8)
      {
LABEL_40:
        sub_3244();
      }
    }

    if (v14 >= 0x17)
    {
      operator new();
    }

    v19 = v14;
    if (v14)
    {
      memmove(__dst, v17, v14);
    }

    goto LABEL_33;
  }

  return 100000000;
}

void sub_449AC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

__n128 sub_449B0C@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1 - 2) < 2)
  {
    v5 = (a2 + 320);
    v6 = (a2 + 392);
    if (sub_456784((a2 + 392), (a2 + 320)))
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    result = *v8;
    *a3 = *v8;
    *(a3 + 16) = v8[1].n128_u64[0];
  }

  else if (a1)
  {

    sub_446EE8((a2 + 296), a3);
  }

  else
  {
    result = *(a2 + 320);
    *a3 = result;
    *(a3 + 16) = *(a2 + 336);
  }

  return result;
}

uint64_t sub_449B9C(int a1, uint64_t a2)
{
  if ((a1 - 2) >= 2)
  {
    if (a1)
    {
      return 0;
    }

    else
    {
      return *(a2 + 4);
    }
  }

  else
  {
    v2 = *(a2 + 28);
    v3 = *(a2 + 4);
    if (v2 >= v3)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

__n128 sub_449BD0@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((a1 - 2) < 2)
  {
    v5 = (a2 + 344);
    v6 = (a2 + 392);
    if (sub_456784((a2 + 392), (a2 + 344)))
    {
      v8 = v6;
    }

    else
    {
      v8 = v5;
    }

    result = *v8;
    *a3 = *v8;
    *(a3 + 16) = v8[1].n128_u64[0];
  }

  else if (a1)
  {

    sub_446EE8((a2 + 296), a3);
  }

  else
  {
    *(a3 + 16) = *(a2 + 360);
    result = *(a2 + 344);
    *a3 = result;
  }

  return result;
}

uint64_t sub_449C64(int a1, uint64_t a2)
{
  if ((a1 - 2) >= 2)
  {
    if (a1)
    {
      return 0;
    }

    else
    {
      return *(a2 + 12);
    }
  }

  else
  {
    v2 = *(a2 + 28);
    v3 = *(a2 + 12);
    if (v2 >= v3)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

__n128 sub_449C98@<Q0>(int a1@<W0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v4 = (a2 + 392);
  if (a1 == 2)
  {
    v5 = (a2 + 320);
    if (sub_456784((a2 + 320), (a2 + 392)))
    {
      v4 = v5;
    }
  }

  result = *v4;
  *a3 = *v4;
  a3[1].n128_u64[0] = v4[1].n128_u64[0];
  return result;
}

uint64_t sub_449CF4(char a1, uint64_t a2)
{
  if ((a1 & 0xFD) != 0)
  {
    return 0;
  }

  else
  {
    return *(a2 + 20);
  }
}

void sub_449D08(uint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_AAE34(*a2, ***a1);
  sub_AAE4C(v3, *v2[1]);
  sub_AAE60(v3, *v2[1]);
  v4 = **v2 / 100.0 / (*v2[1] / 3.6) * 10.0;
  if (v4 >= 0.0)
  {
    if (v4 >= 4.50359963e15)
    {
      goto LABEL_7;
    }

    v5 = (v4 + v4) + 1;
  }

  else
  {
    if (v4 <= -4.50359963e15)
    {
      goto LABEL_7;
    }

    v5 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
  }

  v4 = (v5 >> 1);
LABEL_7:
  sub_AAE74(v3, v4);
  sub_AAE88(v3, 0);
  sub_AAFAC(v3, 0);
  sub_AAFC0(v3, 0x48CA6u);
  sub_AAEA0(v3, 0.0);
  sub_AAEB4(v3, 0.0);
  v6 = nullsub_1(v2[2]);
  v7 = sub_3F80(v6);
  sub_A2448(v3, v7);
  v8 = nullsub_1(v2[2]);
  v9 = sub_456754(v8);
  sub_AAEC8(v3, v9);
  v10 = 0x4008000000000000;
  sub_AAEA8(v3, &v10);
  sub_9BD0C(v3);
}

uint64_t sub_449E80(uint64_t ***a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  sub_AAE34(*a2, ***a1);
  sub_AAE4C(v3, *v2[1]);
  sub_AAE60(v3, *v2[1]);
  v4 = **v2 / 100.0 / (*v2[1] / 3.6) * 10.0;
  if (v4 >= 0.0)
  {
    if (v4 < 4.50359963e15)
    {
      v5 = (v4 + v4) + 1;
      goto LABEL_6;
    }
  }

  else if (v4 > -4.50359963e15)
  {
    v5 = (v4 + v4) - 1 + (((v4 + v4) - 1) >> 63);
LABEL_6:
    v4 = (v5 >> 1);
  }

  sub_AAE74(v3, v4);
  sub_AAE88(v3, 0);
  sub_AAFAC(v3, 0);
  sub_AAFC0(v3, 0x48CA6u);
  sub_AAEA0(v3, 0.0);
  sub_AAEB4(v3, 0.0);
  v6 = nullsub_1(v2[2]);
  v7 = sub_3F80(v6);
  sub_A2448(v3, v7);
  v8 = nullsub_1(v2[2]);
  v9 = sub_456754(v8);
  sub_AAEC8(v3, v9);
  v12 = 0x4008000000000000;
  v10 = sub_AAEA8(v3, &v12);
  return sub_2A5130(v3, v10);
}

void sub_44A008()
{
  byte_278F897 = 3;
  LODWORD(qword_278F880) = 5136193;
  byte_278F8AF = 3;
  LODWORD(qword_278F898) = 5136194;
  byte_278F8C7 = 3;
  LODWORD(qword_278F8B0) = 5136195;
  byte_278F8DF = 15;
  strcpy(&qword_278F8C8, "vehicle_mass_kg");
  byte_278F8F7 = 21;
  strcpy(&xmmword_278F8E0, "vehicle_cargo_mass_kg");
  byte_278F90F = 19;
  strcpy(&qword_278F8F8, "vehicle_aux_power_w");
  byte_278F927 = 15;
  strcpy(&qword_278F910, "dcdc_efficiency");
  strcpy(&qword_278F928, "drive_train_efficiency");
  HIBYTE(word_278F93E) = 22;
  operator new();
}

void sub_44A1E4(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278F93E) < 0)
  {
    sub_21E1AE0();
  }

  sub_21E1AEC();
  _Unwind_Resume(a1);
}

uint64_t sub_44A204(uint64_t a1, void *a2)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 48) = sub_3AF6B4(a2);
  BYTE7(v36[1]) = 18;
  strcpy(v36, "EVRegionClassifier");
  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  v4 = sub_3AEC94(a2, v36, __p);
  v5 = __p[0];
  if (__p[0])
  {
    v6 = __p[1];
    v7 = __p[0];
    if (__p[1] != __p[0])
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
      v7 = __p[0];
    }

    __p[1] = v5;
    operator delete(v7);
  }

  if (SBYTE7(v36[1]) < 0)
  {
    operator delete(*&v36[0]);
  }

  BYTE7(v36[1]) = 12;
  strcpy(v36, "ev_countries");
  v9 = sub_5F680(v4, v36);
  if (SBYTE7(v36[1]) < 0)
  {
    operator delete(*&v36[0]);
  }

  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  v10 = *v9;
  v11 = v9[1];
  if (v11 != *v9)
  {
    if (((v11 - *v9) >> 4) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  while (v10 != v11)
  {
    if (v10[2] != 1)
    {
      sub_5AF20();
    }

    v12 = *v10;
    if (*(*v10 + 23) < 0)
    {
      sub_325C(v36, *v12, *(v12 + 1));
    }

    else
    {
      v13 = *v12;
      *&v36[1] = *(v12 + 2);
      v36[0] = v13;
    }

    v14 = __p[1];
    if (__p[1] >= v35)
    {
      __p[1] = sub_652F8(__p, v36);
      if ((SBYTE7(v36[1]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_27;
    }

    if ((SBYTE7(v36[1]) & 0x80000000) == 0)
    {
      v15 = v36[0];
      *(__p[1] + 2) = *&v36[1];
      *v14 = v15;
      __p[1] = v14 + 24;
      if ((SBYTE7(v36[1]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

LABEL_27:
      operator delete(*&v36[0]);
      goto LABEL_16;
    }

    sub_325C(__p[1], *&v36[0], *(&v36[0] + 1));
    __p[1] = v14 + 24;
    if (SBYTE7(v36[1]) < 0)
    {
      goto LABEL_27;
    }

LABEL_16:
    v10 += 4;
  }

  v16 = *a1;
  if (*a1)
  {
    v17 = *(a1 + 8);
    v18 = *a1;
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *a1;
    }

    *(a1 + 8) = v16;
    operator delete(v18);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *__p;
  *(a1 + 16) = v35;
  strcpy(v36, "preflight_ev_countries");
  BYTE7(v36[1]) = 22;
  v20 = sub_5F680(v4, v36);
  v21 = v20;
  if (SBYTE7(v36[1]) < 0)
  {
    operator delete(*&v36[0]);
    __p[0] = 0;
    __p[1] = 0;
    v35 = 0;
    v22 = *v21;
    v23 = v21[1];
    v24 = v23 - *v21;
    if (v23 == *v21)
    {
      goto LABEL_45;
    }

LABEL_42:
    if ((v24 >> 4) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_1794();
  }

  __p[0] = 0;
  __p[1] = 0;
  v35 = 0;
  v22 = *v20;
  v23 = v20[1];
  v24 = v23 - *v20;
  if (v23 != *v20)
  {
    goto LABEL_42;
  }

LABEL_45:
  while (2)
  {
    if (v22 != v23)
    {
      if (v22[2] != 1)
      {
        sub_5AF20();
      }

      v25 = *v22;
      if (*(*v22 + 23) < 0)
      {
        sub_325C(v36, *v25, *(v25 + 1));
      }

      else
      {
        v26 = *v25;
        *&v36[1] = *(v25 + 2);
        v36[0] = v26;
      }

      v27 = __p[1];
      if (__p[1] >= v35)
      {
        __p[1] = sub_652F8(__p, v36);
        if (SBYTE7(v36[1]) < 0)
        {
          goto LABEL_55;
        }
      }

      else if (SBYTE7(v36[1]) < 0)
      {
        sub_325C(__p[1], *&v36[0], *(&v36[0] + 1));
        __p[1] = v27 + 24;
        if (SBYTE7(v36[1]) < 0)
        {
LABEL_55:
          operator delete(*&v36[0]);
        }
      }

      else
      {
        v28 = v36[0];
        *(__p[1] + 2) = *&v36[1];
        *v27 = v28;
        __p[1] = v27 + 24;
        if (SBYTE7(v36[1]) < 0)
        {
          goto LABEL_55;
        }
      }

      v22 += 4;
      continue;
    }

    break;
  }

  v29 = *(a1 + 24);
  if (v29)
  {
    v30 = *(a1 + 32);
    v31 = *(a1 + 24);
    if (v30 != v29)
    {
      do
      {
        v32 = *(v30 - 1);
        v30 -= 3;
        if (v32 < 0)
        {
          operator delete(*v30);
        }
      }

      while (v30 != v29);
      v31 = *(a1 + 24);
    }

    *(a1 + 32) = v29;
    operator delete(v31);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
  }

  *(a1 + 24) = *__p;
  *(a1 + 40) = v35;
  return a1;
}

void sub_44A6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    sub_1A104(v18 + 3);
    sub_1A104(v18);
    _Unwind_Resume(a1);
  }

  sub_1A104(v18 + 3);
  sub_1A104(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_44A768(uint64_t *a1, unint64_t a2, int a3)
{
  v5 = a1[6];
  v6 = sub_2B51D8(v5, a2);
  v7 = (v6 - *v6);
  if (*v7 >= 0xDu && (v8 = v7[6]) != 0)
  {
    v9 = 4 * *(v6 + v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2AF704(v5 + 3896, 1u, 0);
  v11 = &v10[-*v10];
  if (*v11 < 0xBu)
  {
    v12 = 0;
  }

  else
  {
    v12 = *(v11 + 5);
    if (v12)
    {
      v12 += &v10[*&v10[v12]];
    }
  }

  v13 = (v12 + v9 + 4 + *(v12 + v9 + 4));
  v14 = (v13 - *v13);
  if (*v14 >= 5u && (v15 = v14[2]) != 0)
  {
    v16 = (v13 + v15);
    v17 = *v16;
    v18 = *(v16 + v17);
    if (v18 >= 0x17)
    {
      operator new();
    }

    v37 = *(v16 + v17);
    if (v18)
    {
      memcpy(&__dst, v16 + v17 + 4, v18);
      *(&__dst + v18) = 0;
      v19 = *a1;
      v20 = a1[1];
      if (*a1 == v20)
      {
        goto LABEL_33;
      }
    }

    else
    {
      *(&__dst + v18) = 0;
      v19 = *a1;
      v20 = a1[1];
      if (*a1 == v20)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v37 = 0;
    LOBYTE(__dst) = 0;
    v19 = *a1;
    v20 = a1[1];
    if (*a1 == v20)
    {
      goto LABEL_33;
    }
  }

  if ((v37 & 0x80u) == 0)
  {
    v21 = v37;
  }

  else
  {
    v21 = v36;
  }

  if ((v37 & 0x80u) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  while (1)
  {
    v23 = *(v19 + 23);
    v24 = v23;
    if ((v23 & 0x80u) != 0)
    {
      v23 = *(v19 + 8);
    }

    if (v23 == v21)
    {
      v25 = v24 >= 0 ? v19 : *v19;
      if (!memcmp(v25, p_dst, v21))
      {
        break;
      }
    }

    v19 += 24;
    if (v19 == v20)
    {
      goto LABEL_34;
    }
  }

LABEL_33:
  if (v19 != v20)
  {
    goto LABEL_51;
  }

LABEL_34:
  if (a3)
  {
    v26 = a1[3];
    v27 = a1[4];
    if (v26 != v27)
    {
      if ((v37 & 0x80u) == 0)
      {
        v28 = v37;
      }

      else
      {
        v28 = v36;
      }

      if ((v37 & 0x80u) == 0)
      {
        v29 = &__dst;
      }

      else
      {
        v29 = __dst;
      }

      while (1)
      {
        v30 = *(v26 + 23);
        v31 = v30;
        if ((v30 & 0x80u) != 0)
        {
          v30 = *(v26 + 8);
        }

        if (v30 == v28)
        {
          v32 = v31 >= 0 ? v26 : *v26;
          if (!memcmp(v32, v29, v28))
          {
            break;
          }
        }

        v26 += 24;
        if (v26 == v27)
        {
          goto LABEL_53;
        }
      }
    }

    if (v26 != v27)
    {
LABEL_51:
      v33 = 1;
      if (v37 < 0)
      {
        goto LABEL_54;
      }

      return v33;
    }
  }

LABEL_53:
  v33 = 0;
  if (v37 < 0)
  {
LABEL_54:
    operator delete(__dst);
  }

  return v33;
}

void sub_44AA08(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0x7FFFFFFF;
  *(a1 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_5F328(a1 + 56);
  *(a1 + 96) = 0;
  sub_5F328(a1 + 104);
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 144) = 0x8000000080000000;
  *(a1 + 152) = -1;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 196) = -1;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0x7FFFFFFF;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 324) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 348) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 372) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0x7FFFFFFF;
  *(a1 + 396) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 416) = 0x7FFFFFFF;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 420) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 440) = -1;
  BYTE7(v2[1]) = 16;
  strcpy(v2, "EVRequestContext");
  sub_44F3E4(a1 + 448, v2);
}

void sub_44B7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t *a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_44D36C(&a47);
  if (a44)
  {
    operator delete(a44);
  }

  sub_44D3AC(v52 + 208);
  sub_44CCC4(a12);
  sub_44C974((v52 + 64));
  sub_44C624(a13);
  sub_44C028((v52 + 48));
  v55 = *(v52 + 40);
  *(v52 + 40) = 0;
  if (v55)
  {
    sub_44FF58(v52 + 40, v55);
  }

  sub_44FBAC(a15);
  sub_44FA80(v53);
  _Unwind_Resume(a1);
}

void sub_44B95C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_E6F45C(a2);
  std::to_string(&v21, v5);
  HIBYTE(v16[2]) = 19;
  strcpy(v16, "EVConsumptionModels");
  __p = 0;
  v18 = 0;
  v19 = 0;
  v6 = sub_3AEC94(a3, v16, &__p);
  sub_5ADDC(v20, v6);
  v7 = __p;
  if (__p)
  {
    v8 = v18;
    v9 = __p;
    if (v18 != __p)
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

    v18 = v7;
    operator delete(v9);
  }

  if (SHIBYTE(v16[2]) < 0)
  {
    operator delete(v16[0]);
  }

  if (sub_5FC3C(v20, &v21))
  {
    sub_5F5AC(v20, &v21);
    LODWORD(__p) = sub_E6F45C(a2);
    v11 = nullsub_1(a2);
    sub_5AAC4(v11);
    v12 = nullsub_1(a2);
    sub_4566A4(v12);
    v13 = sub_73EC4(a2);
    HIBYTE(v16[2]) = 18;
    strcpy(v16, "vehicle_parameters");
    sub_5F5AC(v13, v16);
    operator new();
  }

  sub_5F328(v16);
  LODWORD(__p) = sub_E6F45C(a2);
  v14 = nullsub_1(a2);
  sub_5AAC4(v14);
  v15 = nullsub_1(a2);
  sub_4566A4(v15);
  operator new();
}

void sub_44BD40(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_1A104(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x44BD20);
}

void sub_44BD68(uint64_t a1, uint64_t a2)
{
  v2 = sub_E6F45C(a2);
  std::to_string(&v3, v2);
  operator new();
}

uint64_t *sub_44C028(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_AD01C(v2);
    operator delete();
  }

  return a1;
}

void sub_44C07C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  HIBYTE(v30[2]) = 16;
  strcpy(v30, "EVChargingModels");
  __p = 0;
  v28 = 0;
  v29 = 0;
  v4 = sub_3AEC94(a3, v30, &__p);
  sub_5ADDC(v35, v4);
  v5 = __p;
  if (__p)
  {
    v6 = v28;
    v7 = __p;
    if (v28 != __p)
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
      v7 = __p;
    }

    v28 = v5;
    operator delete(v7);
  }

  if (SHIBYTE(v30[2]) < 0)
  {
    operator delete(v30[0]);
  }

  v32 = 0;
  v33 = 0;
  v34 = 0;
  v9 = sub_4C5154(a2);
  std::to_string(&v31, v9);
  v10 = sub_5F5AC(v35, &v31);
  sub_5ADDC(v30, v10);
  HIBYTE(v26[2]) = 19;
  strcpy(v26, "soc_display_formula");
  v11 = sub_5FAE8(v30, v26, &v32);
  v12 = *v11;
  v13 = v11[1];
  v14 = v32;
  if (v13 - *v11 == v33 - v32)
  {
    for (; v12 != v13; v14 += 16)
    {
      v15 = *(v12 + 8);
      v16 = *(v14 + 8);
      if (v15 != -1 && v16 == v15)
      {
        v24[0] = &v36;
        if (((off_266A950[v15])(v24, v12, v14) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      else if (v16 != v15)
      {
        goto LABEL_22;
      }

      v12 += 16;
    }

    v18 = 1;
    v25 = 1;
    LOWORD(v24[0]) = 48;
    v19 = sub_5F5AC(v35, v24);
  }

  else
  {
LABEL_22:
    v18 = 0;
    v19 = v30;
  }

  sub_5ADDC(&__p, v19);
  if (v18 && v25 < 0)
  {
    operator delete(v24[0]);
    if ((SHIBYTE(v26[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }
  }

  else if ((SHIBYTE(v26[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if (sub_E6F464(a2) == -1 || sub_E6F464(a2) > 0x64)
    {
      v20 = nullsub_1(a2);
      sub_456754(v20);
    }

    else
    {
      sub_E6F464(a2);
    }

    sub_4C5154(a2);
    sub_73ED4(a2);
    v21 = nullsub_1(a2);
    sub_5AAC4(v21);
    v22 = nullsub_1(a2);
    sub_4566A4(v22);
    v23 = nullsub_1(a2);
    sub_3F80(v23);
    operator new();
  }

  operator delete(v26[0]);
  goto LABEL_28;
}

void sub_44C530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_5C010(&a27);
  if (a41 < 0)
  {
    operator delete(a36);
  }

  sub_6BC10((v41 - 152));
  sub_5C010(v41 - 128);
  _Unwind_Resume(a1);
}

uint64_t *sub_44C624(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_AD01C(v2);
    operator delete();
  }

  return a1;
}

void sub_44C678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_4C5154(a2);
  std::to_string(&v20, v6);
  HIBYTE(v15[2]) = 16;
  strcpy(v15, "EVChargingModels");
  __p = 0;
  v17 = 0;
  v18 = 0;
  v7 = sub_3AEC94(a4, v15, &__p);
  sub_5ADDC(v19, v7);
  v8 = __p;
  if (__p)
  {
    v9 = v17;
    v10 = __p;
    if (v17 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v17 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v15[2]) < 0)
  {
    operator delete(v15[0]);
  }

  v12 = sub_5F5AC(v19, &v20);
  sub_5ADDC(v15, v12);
  sub_4C5154(a2);
  sub_73ED4(a2);
  v13 = nullsub_1(a2);
  sub_5AAC4(v13);
  v14 = nullsub_1(a2);
  sub_4566A4(v14);
  operator new();
}

void sub_44C94C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_1A104(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x44C92CLL);
}

void **sub_44C974(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_AA22C(v2);
    operator delete();
  }

  return a1;
}

void sub_44C9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_4C5154(a2);
  std::to_string(&v20, v6);
  HIBYTE(v15[2]) = 16;
  strcpy(v15, "EVChargingModels");
  __p = 0;
  v17 = 0;
  v18 = 0;
  v7 = sub_3AEC94(a4, v15, &__p);
  sub_5ADDC(v19, v7);
  v8 = __p;
  if (__p)
  {
    v9 = v17;
    v10 = __p;
    if (v17 != __p)
    {
      do
      {
        v11 = *(v9 - 1);
        v9 -= 3;
        if (v11 < 0)
        {
          operator delete(*v9);
        }
      }

      while (v9 != v8);
      v10 = __p;
    }

    v17 = v8;
    operator delete(v10);
  }

  if (SHIBYTE(v15[2]) < 0)
  {
    operator delete(v15[0]);
  }

  v12 = sub_5F5AC(v19, &v20);
  sub_5ADDC(v15, v12);
  sub_4C5154(a2);
  sub_73ED4(a2);
  v13 = nullsub_1(a2);
  sub_5AAC4(v13);
  v14 = nullsub_1(a2);
  sub_4566A4(v14);
  operator new();
}

void sub_44CC9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void **a17)
{
  sub_1A104(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x44CC7CLL);
}

void **sub_44CCC4(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_9DBC4(v2);
    operator delete();
  }

  return a1;
}

void sub_44CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[23] = 9;
  strcpy(v7, "EVRouting");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v7, __p);
  sub_447B34(v5, a2);
}

void sub_44CE00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_44CE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[23] = 9;
  strcpy(v7, "EVRouting");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v7, __p);
  sub_447BEC(v5, a2);
}

void sub_44CF0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_44CF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[23] = 9;
  strcpy(v7, "EVRouting");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v7, __p);
  sub_447CA4(v5, a2);
}

void sub_44D018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_44D03C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 == a6)
  {
    goto LABEL_23;
  }

  v7 = a6 - a5 - 440;
  if (v7 > 0x1B7)
  {
    v10 = 0;
    v11 = 0;
    v12 = v7 / 0x1B8 + 1;
    v9 = a5 + 440 * (v12 & 0x1FFFFFFFFFFFFFELL);
    v13 = a5;
    v14 = v12 & 0x1FFFFFFFFFFFFFELL;
    do
    {
      if (*(v13 + 176) == 2)
      {
        ++v10;
      }

      if (*(v13 + 616) == 2)
      {
        ++v11;
      }

      v13 += 880;
      v14 -= 2;
    }

    while (v14);
    v8 = v11 + v10;
    if (v12 == (v12 & 0x1FFFFFFFFFFFFFELL))
    {
LABEL_14:
      v20 = -1;
      v21 = 0x7FFFFFFF;
      if (v8 == 1)
      {
        do
        {
          if (*(a5 + 176) == 2)
          {
            goto LABEL_18;
          }

          a5 += 440;
        }

        while (a5 != a6);
        a5 = a6;
LABEL_18:
        v15 = *(a5 + 8);
        v20 = *a5;
        v21 = v15;
        if (v20 != -1 || HIDWORD(v20) != -1)
        {
          sub_448124(a2, *a3, a4);
        }
      }

LABEL_23:
      v19[23] = 9;
      strcpy(v19, "EVRouting");
      memset(__p, 0, sizeof(__p));
      v17 = sub_3AEC94(a4, v19, __p);
      sub_447D5C(v17, a2);
    }
  }

  else
  {
    v8 = 0;
    v9 = a5;
  }

  do
  {
    if (*(v9 + 176) == 2)
    {
      ++v8;
    }

    v9 += 440;
  }

  while (v9 != a6);
  goto LABEL_14;
}

void sub_44D23C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_44D260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[23] = 9;
  strcpy(v7, "EVRouting");
  memset(__p, 0, sizeof(__p));
  v5 = sub_3AEC94(a4, v7, __p);
  sub_447E10(v5, a2);
}

void sub_44D348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  sub_1A104(&a9);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_44D36C(void *a1)
{
  v2 = a1[19];
  if (v2)
  {
    operator delete(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    a1[10] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_44D3AC(uint64_t a1)
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
        (off_266A8C0[v4])(&v7, v2 + 5);
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

void sub_44D470(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0x7FFFFFFF;
  *(a1 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_5F328(a1 + 56);
  *(a1 + 96) = 0;
  sub_5F328(a1 + 104);
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 144) = 0x8000000080000000;
  *(a1 + 152) = -1;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 196) = -1;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0x7FFFFFFF;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 324) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 348) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 372) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0x7FFFFFFF;
  *(a1 + 396) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 416) = 0x7FFFFFFF;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 420) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 440) = -1;
  BYTE7(v2[1]) = 16;
  strcpy(v2, "EVRequestContext");
  sub_44F3E4(a1 + 448, v2);
}

void sub_44E20C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t *a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_44D36C(&a47);
  if (a44)
  {
    operator delete(a44);
  }

  sub_44D3AC(v52 + 208);
  sub_44CCC4(a12);
  sub_44C974((v52 + 64));
  sub_44C624(a13);
  sub_44C028((v52 + 48));
  v55 = *(v52 + 40);
  *(v52 + 40) = 0;
  if (v55)
  {
    sub_44FF58(v52 + 40, v55);
  }

  sub_44FBAC(a15);
  sub_44FA80(v53);
  _Unwind_Resume(a1);
}

void sub_44E3C8(uint64_t a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  *a1 = 0x7FFFFFFF;
  *(a1 + 4) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  sub_5F328(a1 + 56);
  *(a1 + 96) = 0;
  sub_5F328(a1 + 104);
  *(a1 + 236) = 0u;
  *(a1 + 252) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 144) = 0x8000000080000000;
  *(a1 + 152) = -1;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 156) = 0u;
  *(a1 + 172) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 196) = -1;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 1065353216;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 1065353216;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 320) = 0x7FFFFFFF;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 324) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 344) = 0x7FFFFFFF;
  *(a1 + 348) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0;
  *(a1 + 368) = 0x7FFFFFFF;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0;
  *(a1 + 372) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 392) = 0;
  *(a1 + 400) = 0;
  *(a1 + 392) = 0x7FFFFFFF;
  *(a1 + 396) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 416) = 0;
  *(a1 + 416) = 0x7FFFFFFF;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0;
  *(a1 + 420) = 0x7FFFFFFF7FFFFFFFLL;
  *(a1 + 440) = -1;
  BYTE7(v2[1]) = 16;
  strcpy(v2, "EVRequestContext");
  sub_44F3E4(a1 + 448, v2);
}

void sub_44F164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t *a13, uint64_t a14, void *a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_44D36C(&a47);
  if (a44)
  {
    operator delete(a44);
  }

  sub_44D3AC(v52 + 208);
  sub_44CCC4(a12);
  sub_44C974((v52 + 64));
  sub_44C624(a13);
  sub_44C028((v52 + 48));
  v55 = *(v52 + 40);
  *(v52 + 40) = 0;
  if (v55)
  {
    sub_44FF58(v52 + 40, v55);
  }

  sub_44FBAC(a15);
  sub_44FA80(v53);
  _Unwind_Resume(a1);
}

uint64_t sub_44F324(uint64_t a1)
{
  v2 = sub_2A4F68(*(a1 + 288));
  v3 = 280;
  if (v2)
  {
    v3 = 288;
  }

  return *(a1 + v3);
}

uint64_t sub_44F364(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2 != -1)
  {
    (off_266A8C0[v2])(&v4, a1 + 24);
  }

  *(a1 + 32) = -1;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_44F3E4(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  sub_5F328(a1 + 24);
  sub_5F328(&v4);
  if (*(a1 + 23) < 0)
  {
    sub_325C(__p, *a1, *(a1 + 8));
  }

  else
  {
    *__p = *a1;
    v6 = *(a1 + 16);
  }

  operator new();
}

void sub_44F5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_5C010(&a10);
  sub_5C010(v20 + 24);
  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(a1);
}

uint64_t **sub_44F61C(void *a1, uint64_t a2)
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

void *sub_44FA80(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = *(v2 + 12);
      if (v4 != -1)
      {
        (off_266A8C0[v4])(&v12, v2 + 5);
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

  v5 = a1[13];
  a1[13] = 0;
  if (v5)
  {
    operator delete(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    do
    {
      v7 = *v6;
      v8 = *(v6 + 12);
      if (v8 != -1)
      {
        (off_266A8C0[v8])(&v13, v6 + 5);
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

  v9 = a1[7];
  a1[7] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = a1[2];
  if (v10)
  {
    a1[3] = v10;
    operator delete(v10);
  }

  return a1;
}

void *sub_44FBAC(void *a1)
{
  v2 = a1[12];
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

  v4 = a1[10];
  a1[10] = 0;
  if (v4)
  {
    operator delete(v4);
  }

  v5 = a1[7];
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

  v7 = a1[5];
  a1[5] = 0;
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
      do
      {
        v11 = *(v9 - 24);
        if (v11)
        {
          do
          {
            v12 = *v11;
            operator delete(v11);
            v11 = v12;
          }

          while (v12);
        }

        v13 = *(v9 - 40);
        *(v9 - 40) = 0;
        if (v13)
        {
          operator delete(v13);
        }

        v9 -= 56;
      }

      while (v9 != v8);
      v10 = a1[1];
    }

    a1[2] = v8;
    operator delete(v10);
  }

  return a1;
}

uint64_t sub_44FC88(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 5) = *(a2 + 5);
  *(a1 + 16) = 0;
  *a1 = v4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  v6 = a2[2];
  v5 = a2[3];
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  v7 = a2[5];
  *(a1 + 48) = *(a2 + 12);
  *(a1 + 40) = v7;
  sub_5ADDC(a1 + 56, (a2 + 7));
  *(a1 + 96) = *(a2 + 24);
  sub_5ADDC(a1 + 104, (a2 + 13));
  *(a1 + 144) = *(a2 + 9);
  return a1;
}

void sub_44FD60(_Unwind_Exception *a1)
{
  sub_5C010(v1 + 56);
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void **sub_44FD90(void **a1)
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
        v3 = sub_44FDEC(v3 - 440);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_44FDEC(uint64_t a1)
{
  v2 = *(a1 + 400);
  if (v2)
  {
    v3 = *(a1 + 408);
    v4 = *(a1 + 400);
    if (v3 != v2)
    {
      v5 = *(a1 + 408);
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
      v4 = *(a1 + 400);
    }

    *(a1 + 408) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 360);
  if (v8)
  {
    *(a1 + 368) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 336);
  if (v9)
  {
    *(a1 + 344) = v9;
    operator delete(v9);
  }

  v10 = *(a1 + 312);
  if (v10)
  {
    v11 = *(a1 + 320);
    v12 = *(a1 + 312);
    if (v11 != v10)
    {
      do
      {
        v13 = *(v11 - 24);
        if (v13)
        {
          operator delete(v13);
        }

        v14 = *(v11 - 104);
        if (v14)
        {
          *(v11 - 96) = v14;
          operator delete(v14);
        }

        v11 -= 176;
      }

      while (v11 != v10);
      v12 = *(a1 + 312);
    }

    *(a1 + 320) = v10;
    operator delete(v12);
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
LABEL_25:
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_34;
    }
  }

  else if ((*(a1 + 263) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(*(a1 + 240));
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
LABEL_26:
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(*(a1 + 216));
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
LABEL_27:
    v15 = *(a1 + 152);
    if (!v15)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_35:
  operator delete(*(a1 + 192));
  v15 = *(a1 + 152);
  if (v15)
  {
LABEL_28:
    operator delete(v15);
  }

LABEL_29:
  v16 = *(a1 + 72);
  if (v16)
  {
    *(a1 + 80) = v16;
    operator delete(v16);
  }

  return a1;
}

void sub_44FF58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 592);
    if (v3)
    {
      v4 = *(a2 + 560);
      if (v4)
      {
        v5 = 0;
        do
        {
          v6 = *(a2 + 592) + v5;
          if (*(v6 + 23) < 0)
          {
            operator delete(*v6);
          }

          v5 += 24;
          --v4;
        }

        while (v4);
        v3 = *(a2 + 592);
      }

      free(v3);
    }

    if (*(a2 + 591) < 0)
    {
      operator delete(*(a2 + 568));
      if ((*(a2 + 543) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }
    }

    else if ((*(a2 + 543) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    operator delete(*(a2 + 520));
LABEL_13:
    sub_AD01C(a2);

    operator delete();
  }
}

void sub_450024()
{
  byte_278F99F = 3;
  LODWORD(qword_278F988) = 5136193;
  byte_278F9B7 = 3;
  LODWORD(qword_278F9A0) = 5136194;
  byte_278F9CF = 3;
  LODWORD(qword_278F9B8) = 5136195;
  byte_278F9E7 = 15;
  strcpy(&qword_278F9D0, "vehicle_mass_kg");
  byte_278F9FF = 21;
  strcpy(&xmmword_278F9E8, "vehicle_cargo_mass_kg");
  byte_278FA17 = 19;
  strcpy(&qword_278FA00, "vehicle_aux_power_w");
  byte_278FA2F = 15;
  strcpy(&qword_278FA18, "dcdc_efficiency");
  strcpy(&qword_278FA30, "drive_train_efficiency");
  HIBYTE(word_278FA46) = 22;
  operator new();
}

void sub_450200(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_278FA46) < 0)
  {
    sub_21E1BBC();
  }

  sub_21E1BC8();
  _Unwind_Resume(a1);
}

uint64_t sub_450220(char a1, uint64_t a2, int **a3, int a4, int a5, int a6, uint64_t a7, double a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v41 = a9;
  v42 = a8;
  v39 = a5;
  v40 = a4;
  v38 = a6;
  v37[0] = a12;
  v37[1] = a13;
  v36 = a1;
  v35 = a10;
  v13 = *a3;
  v14 = (*a3 - **a3);
  v15 = *v14;
  if (*(a3 + 38))
  {
    if (v15 < 0x9B || (v16 = v14[77]) == 0 || ((v17 = *&v13[v16], v18 = v17 & 2, v19 = v17 & 8, v18) ? (v20 = v19 == 0) : (v20 = 0), !v20))
    {
LABEL_16:

      return sub_456D70();
    }
  }

  else
  {
    if (v15 < 0x9B)
    {
      goto LABEL_16;
    }

    v21 = v14[77];
    if (!v21)
    {
      goto LABEL_16;
    }

    v22 = *&v13[v21];
    v23 = v22 & 1;
    v24 = v22 & 8;
    if (!v23 || v24 != 0)
    {
      goto LABEL_16;
    }
  }

  v29 = sub_2B79D0(a2, *(a3 + 8) | (*(a3 + 18) << 32), v32);
  v31[0] = v32;
  v31[1] = &v42;
  v31[2] = &v41;
  v31[3] = &v40;
  v31[4] = &v38;
  v31[5] = &v39;
  v31[6] = &v36;
  v31[7] = a7;
  v31[8] = a3;
  v31[9] = &v35;
  if (a13 == 0xFFFFFFFFLL)
  {
    sub_5AF20();
  }

  v43 = v31;
  result = (off_266A998[a13])(&v43, v37, v29);
  if (__p)
  {
    v34 = __p;
    v30 = result;
    operator delete(__p);
    return v30;
  }

  return result;
}

void sub_4503B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_4503CC(char a1, uint64_t a2, int **a3, int a4, int a5, int a6, char *a7, double a8, double a9, double a10, double a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v76 = a9;
  v77 = a8;
  v74 = a5;
  v75 = a4;
  v73 = a6;
  v72[0] = a13;
  v72[1] = a14;
  v71 = a1;
  v69 = a11;
  v70 = a10;
  v16 = *a3;
  v17 = (*a3 - **a3);
  v18 = *v17;
  if (*(a3 + 38))
  {
    if (v18 < 0x9B || (v19 = v17[77]) == 0 || ((v20 = *&v16[v19], v21 = v20 & 2, v22 = v20 & 8, v21) ? (v23 = v22 == 0) : (v23 = 0), !v23))
    {
LABEL_15:

      return sub_456D70();
    }
  }

  else
  {
    if (v18 < 0x9B)
    {
      goto LABEL_15;
    }

    v24 = v17[77];
    if (!v24)
    {
      goto LABEL_15;
    }

    v25 = *&v16[v24];
    v26 = v25 & 1;
    v27 = v25 & 8;
    if (!v26 || v27 != 0)
    {
      goto LABEL_15;
    }
  }

  sub_2B7A20(a2, a3[4] & 0xFFFFFFFFFFFFFFLL, &v54);
  sub_31BF20(&v54, &v67);
  if (__p)
  {
    v56.__locale_ = __p;
    operator delete(__p);
  }

  if (v68 - v67 > 23)
  {
    sub_2F4C8(&v67, 1, &v52, a10, a11);
    if (0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 2) > 1)
    {
      v51[0] = sub_456D70();
      v51[1] = v39;
      v40 = sub_2B79D0(a2, *(a3 + 8) | (*(a3 + 18) << 32), &v48);
      v54 = &v48;
      __p = &v77;
      v56.__locale_ = &v76;
      v57[0] = &v75;
      v57[1] = &v73;
      v58 = &v74;
      v59 = &v71;
      v60 = a7;
      v61 = &v52;
      v62 = v51;
      v63 = &v69;
      v64 = &v70;
      if (a14 == 0xFFFFFFFFLL)
      {
        sub_5AF20();
      }

      v78 = &v54;
      v41 = (off_266A9A8[a14])(&v78, v72, v40);
      if (v49)
      {
        v50 = v49;
        operator delete(v49);
      }

      goto LABEL_65;
    }

    if (!sub_7E7E4(3u))
    {
LABEL_64:
      v41 = sub_456D70();
LABEL_65:
      if (v52)
      {
        v53 = v52;
        operator delete(v52);
      }

      goto LABEL_67;
    }

    sub_19594F8(&v54);
    v36 = sub_4A5C(&v54, "Cut geometry points ", 20);
    v37 = sub_30E900(v36, a3[4] & 0xFFFFFFFFFFFFFFLL);
    sub_4A5C(v37, " have <2 points", 15);
    if ((v66 & 0x10) != 0)
    {
      v45 = v65;
      if (v65 < v60)
      {
        v65 = v60;
        v45 = v60;
      }

      v46 = &v59;
    }

    else
    {
      if ((v66 & 8) == 0)
      {
        v38 = 0;
        HIBYTE(v50) = 0;
LABEL_59:
        *(&v48 + v38) = 0;
        sub_7E854(&v48, 3u);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v48);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(v62);
        }

        std::locale::~locale(&v56);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_64;
      }

      v46 = v57;
      v45 = v58;
    }

    v47 = *v46;
    v38 = v45 - *v46;
    if (v38 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v38 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v50) = v45 - *v46;
    if (v38)
    {
      memmove(&v48, v47, v38);
    }

    goto LABEL_59;
  }

  if (sub_7E7E4(3u))
  {
    sub_19594F8(&v54);
    v33 = sub_4A5C(&v54, "Directed road segment ", 22);
    v34 = sub_30E900(v33, a3[4] & 0xFFFFFFFFFFFFFFLL);
    sub_4A5C(v34, " has <2 geometry points", 23);
    if ((v66 & 0x10) != 0)
    {
      v42 = v65;
      if (v65 < v60)
      {
        v65 = v60;
        v42 = v60;
      }

      v43 = &v59;
    }

    else
    {
      if ((v66 & 8) == 0)
      {
        v35 = 0;
        HIBYTE(v50) = 0;
LABEL_43:
        *(&v48 + v35) = 0;
        sub_7E854(&v48, 3u);
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v48);
        }

        if (SHIBYTE(v64) < 0)
        {
          operator delete(v62);
        }

        std::locale::~locale(&v56);
        std::ostream::~ostream();
        std::ios::~ios();
        goto LABEL_48;
      }

      v43 = v57;
      v42 = v58;
    }

    v44 = *v43;
    v35 = v42 - *v43;
    if (v35 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_3244();
    }

    if (v35 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v50) = v42 - *v43;
    if (v35)
    {
      memmove(&v48, v44, v35);
    }

    goto LABEL_43;
  }

LABEL_48:
  v41 = sub_456D70();
LABEL_67:
  if (v67)
  {
    v68 = v67;
    operator delete(v67);
  }

  return v41;
}

void sub_450A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, void *a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a22);
  if (a19)
  {
    operator delete(a19);
    v24 = *(v22 - 168);
    if (!v24)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v24 = *(v22 - 168);
    if (!v24)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  *(v22 - 160) = v24;
  operator delete(v24);
  goto LABEL_8;
}

void sub_450B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  if (a20)
  {
    JUMPOUT(0x450B78);
  }

  JUMPOUT(0x450B7CLL);
}

uint64_t sub_450B98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v7 = a6;
  v9 = a3;
  v10 = a2;
  v39 = a3;
  v40 = a2;
  v38 = a7;
  v36 = a5;
  v37 = a6;
  v11 = *(a1 + 8);
  v12 = v11 == a2 || v11 == a3;
  if (!v12 || !sub_7E7E4(3u))
  {
    goto LABEL_23;
  }

  sub_19594F8(&v24);
  sub_4A5C(&v24, "iterator should be at a valid coordinate", 40);
  if ((v35 & 0x10) != 0)
  {
    v14 = v34;
    if (v34 < v31)
    {
      v34 = v31;
      v14 = v31;
    }

    v15 = v30;
    v13 = v14 - v30;
    if (v14 - v30 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_32:
      sub_3244();
    }

LABEL_13:
    if (v13 >= 0x17)
    {
      operator new();
    }

    v23 = v13;
    if (v13)
    {
      memmove(&__dst, v15, v13);
    }

    goto LABEL_18;
  }

  if ((v35 & 8) != 0)
  {
    v15 = v27;
    v13 = v29 - v27;
    if ((v29 - v27) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_32;
    }

    goto LABEL_13;
  }

  v13 = 0;
  v23 = 0;
LABEL_18:
  *(&__dst + v13) = 0;
  sub_7E854(&__dst, 3u);
  if (v23 < 0)
  {
    operator delete(__dst);
  }

  if (v33 < 0)
  {
    operator delete(__p);
  }

  std::locale::~locale(&v26);
  std::ostream::~ostream();
  std::ios::~ios();
  v9 = v39;
  v10 = v40;
  v7 = v37;
LABEL_23:
  v16 = *(v10 + 8);
  v17 = *(v9 + 8);
  if (v17 == 0x7FFFFFFF || v16 == 0x7FFFFFFF)
  {
    v19 = 0;
  }

  else
  {
    v19 = v17 - v16;
  }

  v21 = v19;
  v24 = &v21;
  v25 = &v40;
  v26.__locale_ = &v39;
  v27 = &v38;
  v28 = a4;
  if (v7 == -1)
  {
    sub_5AF20();
  }

  __dst = &v24;
  return (off_266A9B8[v7])(&__dst, &v36);
}

void sub_450E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    sub_1959728(&a16);
    _Unwind_Resume(a1);
  }

  sub_1959728(&a16);
  _Unwind_Resume(a1);
}

void sub_450ED4(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_45185C(**a1, 1, &v42);
  sub_AAE34(v3, v4);
  sub_AAE4C(v3, *v2[1]);
  sub_AAE60(v3, *v2[2]);
  sub_AAE74(v3, *v2[3]);
  sub_AAFAC(v3, *v2[4]);
  sub_AAFC0(v3, *v2[5]);
  v5 = *v2[1] / *v2[2];
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  sub_AAEA0(v3, v5);
  LOBYTE(v6) = *v2[6];
  v41 = v6;
  sub_AAEA8(v3, &v41);
  sub_AAEB4(v3, 0.0);
  v7 = sub_4566B4((v2[7] + 12));
  v8 = v2[7];
  if (v7)
  {
    v9 = sub_3F80((v8 + 12));
  }

  else
  {
    v9 = sub_5AAC4(v8 + 12);
  }

  sub_AAFFC(v3, v9);
  v10 = sub_4566B4(v2[7]);
  v11 = v2[7];
  if (v10)
  {
    v12 = sub_3F80(v11);
    sub_A2448(v3, v12);
    if (!sub_4566B4(v2[7]))
    {
LABEL_8:
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = sub_5AAC4(v11);
    sub_A2448(v3, v14);
    if (!sub_4566B4(v2[7]))
    {
      goto LABEL_8;
    }
  }

  v13 = sub_456754(v2[7]);
LABEL_11:
  sub_AAEC8(v3, v13);
  v16 = v2[8];
  v17 = *(v16 + 38);
  v18 = *v16;
  v19 = (v18 - *v18);
  v20 = *v19;
  if (v17)
  {
    if (v20 >= 0x57)
    {
      if (v19[43])
      {
        v21 = (v18 + v19[43] + *(v18 + v19[43]));
        v22 = (v21 - *v21);
        v23 = 0.0;
        if (*v22 < 7u)
        {
          goto LABEL_32;
        }

        v24 = v22[3];
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v23 = 0.0;
        if (v20 < 0x7D)
        {
          goto LABEL_32;
        }

        v24 = v19[62];
        v21 = v18;
        if (!v19[62])
        {
          goto LABEL_32;
        }
      }

LABEL_31:
      LOWORD(v23) = *(v21 + v24);
      v23 = *&v23 + *&v23;
LABEL_32:
      HIDWORD(v15) = 1089470432;
      v26 = v23 / 65535.0;
      goto LABEL_33;
    }
  }

  else if (v20 >= 0x57)
  {
    if (v19[43])
    {
      v21 = (v18 + v19[43] + *(v18 + v19[43]));
      v25 = (v21 - *v21);
      v23 = 0.0;
      if (*v25 < 5u)
      {
        goto LABEL_32;
      }

      v24 = v25[2];
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = 0.0;
      if (v20 < 0x7B)
      {
        goto LABEL_32;
      }

      v24 = v19[61];
      v21 = v18;
      if (!v19[61])
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v26 = 0.0;
  if (v20 < 9)
  {
    v27 = 0;
    v28 = 0.0 * 0.0;
    if (0.0 * 0.0 >= 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_33:
  if (v19[4])
  {
    LODWORD(v15) = *(v18 + v19[4]);
    v27 = 1;
    v28 = v26 * v15;
    if (v28 < 0.0)
    {
      goto LABEL_37;
    }

LABEL_24:
    if (v28 >= 4.50359963e15)
    {
      goto LABEL_40;
    }

    v29 = (v28 + v28) + 1;
    goto LABEL_39;
  }

  v27 = 1;
  v28 = v26 * 0.0;
  if (v28 >= 0.0)
  {
    goto LABEL_24;
  }

LABEL_37:
  if (v28 <= -4.50359963e15)
  {
    goto LABEL_40;
  }

  v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_39:
  v28 = (v29 >> 1);
LABEL_40:
  v30 = 0.0;
  if (v17)
  {
    if (v20 < 0x57)
    {
      goto LABEL_57;
    }

    if (v19[43])
    {
      v31 = (v18 + v19[43] + *(v18 + v19[43]));
      v32 = (v31 - *v31);
      if (*v32 < 5u)
      {
        goto LABEL_57;
      }

      v33 = v32[2];
      if (!v33)
      {
        goto LABEL_57;
      }

LABEL_56:
      LOWORD(v30) = *(v31 + v33);
      v30 = *&v30 + *&v30;
      goto LABEL_57;
    }

    if (v20 >= 0x7B)
    {
      v33 = v19[61];
      v31 = v18;
      if (v19[61])
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (v20 < 0x57)
    {
      goto LABEL_57;
    }

    if (v19[43])
    {
      v31 = (v18 + v19[43] + *(v18 + v19[43]));
      v34 = (v31 - *v31);
      if (*v34 >= 7u)
      {
        v33 = v34[3];
        if (v33)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v20 >= 0x7D)
    {
      v33 = v19[62];
      v31 = v18;
      if (v19[62])
      {
        goto LABEL_56;
      }
    }
  }

LABEL_57:
  v35 = v28;
  v36 = 0.0;
  v37 = v30 / 65535.0;
  if (v27)
  {
    v38 = v19[4];
    if (v38)
    {
      LODWORD(v30) = *(v18 + v38);
      v36 = *&v30;
    }
  }

  v39 = v37 * v36;
  if (v39 >= 0.0)
  {
    if (v39 >= 4.50359963e15)
    {
      goto LABEL_66;
    }

    v40 = (v39 + v39) + 1;
  }

  else
  {
    if (v39 <= -4.50359963e15)
    {
      goto LABEL_66;
    }

    v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
  }

  v39 = (v40 >> 1);
LABEL_66:
  sub_AAE88(v3, v35 - v39);
  sub_9BD0C(v3);
}

uint64_t sub_451398(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_45185C(**a1, 1, &v47);
  sub_AAE34(v3, v4);
  sub_AAE4C(v3, *v2[1]);
  sub_AAE60(v3, *v2[2]);
  sub_AAE74(v3, *v2[3]);
  sub_AAFAC(v3, *v2[4]);
  sub_AAFC0(v3, *v2[5]);
  v5 = *v2[1] / *v2[2];
  if (v5 > 1.0)
  {
    v5 = 1.0;
  }

  sub_AAEA0(v3, v5);
  LOBYTE(v6) = *v2[6];
  v46 = v6;
  sub_AAEA8(v3, &v46);
  sub_AAEB4(v3, 0.0);
  v7 = sub_4566B4((v2[7] + 12));
  v8 = v2[7];
  if (v7)
  {
    v9 = sub_3F80((v8 + 12));
  }

  else
  {
    v9 = sub_5AAC4(v8 + 12);
  }

  sub_AAFFC(v3, v9);
  v10 = sub_4566B4(v2[7]);
  v11 = v2[7];
  if (v10)
  {
    v12 = sub_3F80(v11);
    sub_A2448(v3, v12);
    if (!sub_4566B4(v2[7]))
    {
LABEL_8:
      v13 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v14 = sub_5AAC4(v11);
    sub_A2448(v3, v14);
    if (!sub_4566B4(v2[7]))
    {
      goto LABEL_8;
    }
  }

  v13 = sub_456754(v2[7]);
LABEL_11:
  sub_AAEC8(v3, v13);
  v16 = v2[8];
  v17 = *(v16 + 38);
  v18 = *v16;
  v19 = (v18 - *v18);
  v20 = *v19;
  if (v17)
  {
    if (v20 >= 0x57)
    {
      if (v19[43])
      {
        v21 = (v18 + v19[43] + *(v18 + v19[43]));
        v22 = (v21 - *v21);
        v23 = 0.0;
        if (*v22 < 7u)
        {
          goto LABEL_32;
        }

        v24 = v22[3];
        if (!v24)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v23 = 0.0;
        if (v20 < 0x7D)
        {
          goto LABEL_32;
        }

        v24 = v19[62];
        v21 = v18;
        if (!v19[62])
        {
          goto LABEL_32;
        }
      }

LABEL_31:
      LOWORD(v23) = *(v21 + v24);
      v23 = *&v23 + *&v23;
LABEL_32:
      HIDWORD(v15) = 1089470432;
      v26 = v23 / 65535.0;
      goto LABEL_33;
    }
  }

  else if (v20 >= 0x57)
  {
    if (v19[43])
    {
      v21 = (v18 + v19[43] + *(v18 + v19[43]));
      v25 = (v21 - *v21);
      v23 = 0.0;
      if (*v25 < 5u)
      {
        goto LABEL_32;
      }

      v24 = v25[2];
      if (!v24)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = 0.0;
      if (v20 < 0x7B)
      {
        goto LABEL_32;
      }

      v24 = v19[61];
      v21 = v18;
      if (!v19[61])
      {
        goto LABEL_32;
      }
    }

    goto LABEL_31;
  }

  v26 = 0.0;
  if (v20 < 9)
  {
    v27 = 0;
    v28 = 0.0 * 0.0;
    if (0.0 * 0.0 >= 0.0)
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

LABEL_33:
  if (v19[4])
  {
    LODWORD(v15) = *(v18 + v19[4]);
    v27 = 1;
    v28 = v26 * v15;
    if (v28 < 0.0)
    {
      goto LABEL_37;
    }

LABEL_24:
    if (v28 >= 4.50359963e15)
    {
      goto LABEL_40;
    }

    v29 = (v28 + v28) + 1;
    goto LABEL_39;
  }

  v27 = 1;
  v28 = v26 * 0.0;
  if (v28 >= 0.0)
  {
    goto LABEL_24;
  }

LABEL_37:
  if (v28 <= -4.50359963e15)
  {
    goto LABEL_40;
  }

  v29 = (v28 + v28) - 1 + (((v28 + v28) - 1) >> 63);
LABEL_39:
  v28 = (v29 >> 1);
LABEL_40:
  v30 = 0.0;
  if (v17)
  {
    if (v20 < 0x57)
    {
      goto LABEL_57;
    }

    if (v19[43])
    {
      v31 = (v18 + v19[43] + *(v18 + v19[43]));
      v32 = (v31 - *v31);
      if (*v32 < 5u)
      {
        goto LABEL_57;
      }

      v33 = v32[2];
      if (!v33)
      {
        goto LABEL_57;
      }

LABEL_56:
      LOWORD(v30) = *(v31 + v33);
      v30 = *&v30 + *&v30;
      goto LABEL_57;
    }

    if (v20 >= 0x7B)
    {
      v33 = v19[61];
      v31 = v18;
      if (v19[61])
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
    if (v20 < 0x57)
    {
      goto LABEL_57;
    }

    if (v19[43])
    {
      v31 = (v18 + v19[43] + *(v18 + v19[43]));
      v34 = (v31 - *v31);
      if (*v34 >= 7u)
      {
        v33 = v34[3];
        if (v33)
        {
          goto LABEL_56;
        }
      }
    }

    else if (v20 >= 0x7D)
    {
      v33 = v19[62];
      v31 = v18;
      if (v19[62])
      {
        goto LABEL_56;
      }
    }
  }

LABEL_57:
  v35 = v28;
  v36 = 0.0;
  v37 = v30 / 65535.0;
  if (v27)
  {
    v38 = v19[4];
    if (v38)
    {
      LODWORD(v30) = *(v18 + v38);
      v36 = *&v30;
    }
  }

  v39 = v37 * v36;
  if (v39 >= 0.0)
  {
    if (v39 >= 4.50359963e15)
    {
      goto LABEL_66;
    }

    v40 = (v39 + v39) + 1;
  }

  else
  {
    if (v39 <= -4.50359963e15)
    {
      goto LABEL_66;
    }

    v40 = (v39 + v39) - 1 + (((v39 + v39) - 1) >> 63);
  }

  v39 = (v40 >> 1);
LABEL_66:
  v41 = sub_AAE88(v3, v35 - v39);
  v42 = *v2[9] * sub_2A5130(v3, v41);
  if (v42 >= 0.0)
  {
    if (v42 < 4.50359963e15)
    {
      v43 = (v42 + v42) + 1;
      goto LABEL_71;
    }
  }

  else if (v42 > -4.50359963e15)
  {
    v43 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
LABEL_71:
    v42 = (v43 >> 1);
  }

  v45 = v42;
  return sub_456D5C(&v45);
}