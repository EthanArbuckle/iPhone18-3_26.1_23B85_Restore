void *sub_2AFE10(void *a1, uint64_t *a2)
{
  v3 = sub_2D52A4(*a2, 35, 1u, 0);
  if (!v4)
  {
    *a1 = 0;
    exception = __cxa_allocate_exception(0x40uLL);
    v7 = sub_2D390(exception, "Unable to access root quad node in METADATA layer", 0x31uLL);
  }

  *a1 = v3 + *v3;
  return a1;
}

void *sub_2AFE90(void *result, uint64_t a2)
{
  *result = a2;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v3 = sub_2D390(exception, "Unable to access root quad node in METADATA layer", 0x31uLL);
  }

  return result;
}

char **sub_2AFEDC@<X0>(char **result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = &(*result)[-**result];
  if (*v3 >= 9u && (v4 = *(v3 + 4)) != 0)
  {
    v5 = a2;
    v6 = &v2[v4];
    v7 = *&v2[v4];
    v11 = 0;
    v12 = sub_2AFF98;
    v10 = 0uLL;
    sub_2B0ACC(&v10, *&v2[v4 + v7]);
    result = sub_2B111C(&v6[v7], &v10, &v12);
    v8 = v10;
    v9 = v11;
    a2 = v5;
  }

  else
  {
    v9 = 0;
    v8 = 0uLL;
  }

  *a2 = v8;
  *(a2 + 16) = v9;
  return result;
}

void sub_2AFF98(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 384) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
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
  *(a2 + 416) = 1065353216;
  v4 = (a2 + 424);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v4[3] = 0u;
  v4[4] = 0u;
  v4[5] = 0u;
  v4[6] = 0u;
  *(a2 + 536) = 0;
  v5 = (a1 - *a1);
  if (*v5 >= 5u && (v6 = v5[2]) != 0)
  {
    v7 = (a1 + v6);
    v8 = *v7;
    v9 = *(v7 + v8);
    if (v9 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v35) = *(v7 + v8);
    if (v9)
    {
      memcpy(&__dst, v7 + v8 + 4, v9);
    }

    *(&__dst + v9) = 0;
    if (*(a2 + 47) < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    HIBYTE(v35) = 0;
    LOBYTE(__dst) = 0;
    if (*(a2 + 47) < 0)
    {
LABEL_7:
      operator delete(*(a2 + 24));
    }
  }

  *(a2 + 24) = __dst;
  *(a2 + 40) = v35;
  v10 = (a1 - *a1);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = (a1 + v11);
    v13 = *v12;
    v14 = *(v12 + v13);
    if (v14 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v35) = *(v12 + v13);
    if (v14)
    {
      memcpy(&__dst, v12 + v13 + 4, v14);
    }

    p_dst = (&__dst + v14);
  }

  else
  {
    HIBYTE(v35) = 0;
    p_dst = &__dst;
  }

  *p_dst = 0;
  sub_828BC(a2 + 48, &__dst);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
    v16 = (a1 - *a1);
    if (*v16 < 0xBu)
    {
LABEL_29:
      HIBYTE(v35) = 0;
      v21 = &__dst;
      goto LABEL_33;
    }
  }

  else
  {
    v16 = (a1 - *a1);
    if (*v16 < 0xBu)
    {
      goto LABEL_29;
    }
  }

  v17 = v16[5];
  if (!v17)
  {
    goto LABEL_29;
  }

  v18 = (a1 + v17);
  v19 = *v18;
  v20 = *(v18 + v19);
  if (v20 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v35) = *(v18 + v19);
  if (v20)
  {
    memcpy(&__dst, v18 + v19 + 4, v20);
  }

  v21 = (&__dst + v20);
LABEL_33:
  *v21 = 0;
  sub_8283C(a2 + 48, &__dst);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__dst);
    v22 = (a1 - *a1);
    if (*v22 < 9u)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v22 = (a1 - *a1);
    if (*v22 < 9u)
    {
      goto LABEL_39;
    }
  }

  v23 = v22[4];
  if (v23)
  {
    v24 = (a1 + v23);
    v25 = *v24;
    v35 = 0;
    v36 = sub_2B1434;
    __dst = 0uLL;
    sub_84D10(&__dst, *(v24 + v25));
    sub_2B163C((v24 + v25), &__dst, &v36);
    v26 = __dst;
    v27 = v35;
    goto LABEL_40;
  }

LABEL_39:
  v27 = 0;
  v26 = 0uLL;
LABEL_40:
  *__p = v26;
  v33 = v27;
  sub_81B18((a2 + 48), __p);
  v28 = __p[0];
  if (!__p[0])
  {
    return;
  }

  v29 = __p[1];
  v30 = __p[0];
  if (__p[1] != __p[0])
  {
    while (1)
    {
      if (*(v29 - 1) < 0)
      {
        operator delete(*(v29 - 3));
        v31 = v29 - 6;
        if (*(v29 - 25) < 0)
        {
LABEL_48:
          operator delete(*v31);
        }
      }

      else
      {
        v31 = v29 - 6;
        if (*(v29 - 25) < 0)
        {
          goto LABEL_48;
        }
      }

      v29 = v31;
      if (v31 == v28)
      {
        v30 = __p[0];
        break;
      }
    }
  }

  __p[1] = v28;
  operator delete(v30);
}

void sub_2B03C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1AA90(va);
  sub_2B0EB4(v5);
  _Unwind_Resume(a1);
}

void sub_2B03EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_2B0EB4(v18);
  _Unwind_Resume(a1);
}

uint64_t sub_2B0414(void *a1)
{
  v1 = (*a1 - **a1);
  if (*v1 < 0xBu)
  {
    return 0x7FFFFFFFLL;
  }

  v2 = v1[5];
  if (!v2)
  {
    return 0x7FFFFFFFLL;
  }

  result = *(*a1 + v2);
  if (!result)
  {
    return 0x7FFFFFFFLL;
  }

  return result;
}

double sub_2B0448@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (*a1 - **a1);
  if (*v3 >= 7u && (v4 = v3[3]) != 0 && (v5 = (*a1 + v4 + *(*a1 + v4)), v6 = (v5 - *v5), *v6 >= 5u) && (v7 = v6[2]) != 0)
  {
    v8 = v5 + v7 + *(v5 + v7);
    v10 = strlen(v8 + 4);

    sub_7F0A0(a2, v8 + 4, v10);
  }

  else
  {
    result = 0.0;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }

  return result;
}

void *sub_2B04F0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = (*result - **result);
  if (*v3 >= 5u && v3[2])
  {
    if (*(*result + v3[2] + *(*result + v3[2])))
    {
      operator new();
    }

    *a2 = 0u;
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  return result;
}

void sub_2B0640(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_2B065C(void *a1, int a2)
{
  v2 = (*a1 - **a1);
  if (*v2 < 5u)
  {
    return 0;
  }

  v3 = v2[2];
  if (!v3)
  {
    return 0;
  }

  v4 = (*a1 + v3 + *(*a1 + v3));
  __key = a2;
  result = bsearch(&__key, v4 + 1, *v4, 4uLL, sub_2B1908);
  if (!result)
  {
    return result;
  }

  v6 = (result + *result);
  v7 = (v6 - *v6);
  if (*v7 < 7u)
  {
    return 0;
  }

  v8 = v7[3];
  if (!v8)
  {
    return 0;
  }

  return *(v6 + v8);
}

BOOL sub_2B0708(char **a1, int a2)
{
  v4 = *a1;
  v5 = &(*a1)[-**a1];
  if (*v5 < 5u)
  {
    return 0;
  }

  v6 = *(v5 + 2);
  if (!v6)
  {
    return 0;
  }

  v10 = v2;
  v11 = v3;
  v7 = &v4[v6 + *&v4[v6]];
  v9 = a2;
  return bsearch(&v9, v7 + 4, *v7, 4uLL, sub_2B1908) != 0;
}

void sub_2B078C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = (*a1 - **a1);
  if (*v2 >= 7u && (v3 = v2[3]) != 0 && (v4 = (*a1 + v3), v5 = (v4 + *v4 - *(v4 + *v4)), *v5 >= 7u) && v5[3])
  {
    v6 = (v4 + *v4);
    v7 = (v6 - *v6);
    if (*v7 >= 7u && (v8 = v7[3]) != 0)
    {
      v9 = a2;
      v10 = v6 + v8;
      v11 = *(v6 + v8);
      v12 = *&v10[v11];
      if (v12 >= 0x17)
      {
        operator new();
      }

      v17 = *&v10[v11];
      if (v12)
      {
        memcpy(__dst, &v10[v11 + 4], v12);
      }

      a2 = v9;
      v13 = (__dst + v12);
    }

    else
    {
      v17 = 0;
      v13 = __dst;
    }

    *v13 = 0;
    if ((v17 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = __dst[1];
    }

    sub_7F0A0(a2, v14, v15);
    if (v17 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

void sub_2B0910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B092C(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = (*a1 - **a1);
  if (*v2 >= 7u && (v3 = v2[3]) != 0 && (v4 = (*a1 + v3), v5 = (v4 + *v4 - *(v4 + *v4)), *v5 >= 9u) && v5[4])
  {
    v6 = (v4 + *v4);
    v7 = (v6 - *v6);
    if (*v7 >= 9u && (v8 = v7[4]) != 0)
    {
      v9 = a2;
      v10 = v6 + v8;
      v11 = *(v6 + v8);
      v12 = *&v10[v11];
      if (v12 >= 0x17)
      {
        operator new();
      }

      v17 = *&v10[v11];
      if (v12)
      {
        memcpy(__dst, &v10[v11 + 4], v12);
      }

      a2 = v9;
      v13 = (__dst + v12);
    }

    else
    {
      v17 = 0;
      v13 = __dst;
    }

    *v13 = 0;
    if ((v17 & 0x80u) == 0)
    {
      v14 = __dst;
    }

    else
    {
      v14 = __dst[0];
    }

    if ((v17 & 0x80u) == 0)
    {
      v15 = v17;
    }

    else
    {
      v15 = __dst[1];
    }

    sub_7F0A0(a2, v14, v15);
    if (v17 < 0)
    {
      operator delete(__dst[0]);
    }
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

void sub_2B0AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2B0ACC(void *result, unint64_t a2)
{
  if (0xF0F0F0F0F0F0F0F1 * ((result[2] - *result) >> 5) < a2)
  {
    if (a2 < 0x78787878787879)
    {
      operator new();
    }

    sub_1794();
  }

  return result;
}

double sub_2B0C28(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(a1 + 64) = *(a2 + 8);
  *(a1 + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(a1 + 88) = *(a2 + 11);
  *(a1 + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 96) = v6;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 17);
  *(a1 + 120) = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v8 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 144) = v8;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v9 = *(a2 + 168);
  *(a1 + 184) = *(a2 + 23);
  *(a1 + 168) = v9;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v10 = a2[12];
  *(a1 + 208) = *(a2 + 26);
  *(a1 + 192) = v10;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v11 = *(a2 + 216);
  *(a1 + 232) = *(a2 + 29);
  *(a1 + 216) = v11;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  v12 = a2[15];
  *(a1 + 256) = *(a2 + 32);
  *(a1 + 240) = v12;
  *(a2 + 30) = 0;
  *(a2 + 31) = 0;
  *(a2 + 32) = 0;
  v13 = *(a2 + 264);
  *(a1 + 280) = *(a2 + 35);
  *(a1 + 264) = v13;
  *(a2 + 33) = 0;
  *(a2 + 34) = 0;
  *(a2 + 35) = 0;
  v14 = a2[18];
  *(a1 + 304) = *(a2 + 38);
  *(a1 + 288) = v14;
  *(a2 + 36) = 0;
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  v15 = *(a2 + 312);
  *(a1 + 328) = *(a2 + 41);
  *(a1 + 312) = v15;
  *(a2 + 39) = 0;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  v16 = a2[21];
  *(a1 + 352) = *(a2 + 44);
  *(a1 + 336) = v16;
  *(a2 + 42) = 0;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  v17 = *(a2 + 360);
  *(a1 + 376) = *(a2 + 47);
  *(a1 + 360) = v17;
  *(a2 + 45) = 0;
  *(a2 + 46) = 0;
  v18 = *(a2 + 48);
  v19 = *(a2 + 49);
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  *(a1 + 384) = v18;
  *(a1 + 392) = v19;
  *(a2 + 49) = 0;
  v21 = *(a2 + 50);
  v20 = *(a2 + 51);
  *(a1 + 400) = v21;
  *(a1 + 408) = v20;
  *(a1 + 416) = *(a2 + 104);
  if (v20)
  {
    v22 = *(v21 + 8);
    v23 = *(a1 + 392);
    if ((v23 & (v23 - 1)) != 0)
    {
      if (v22 >= v23)
      {
        v22 %= v23;
      }
    }

    else
    {
      v22 &= v23 - 1;
    }

    *(v18 + 8 * v22) = a1 + 400;
    *(a2 + 50) = 0;
    *(a2 + 51) = 0;
  }

  v24 = *(a2 + 424);
  *(a1 + 440) = *(a2 + 55);
  *(a1 + 424) = v24;
  result = 0.0;
  a2[27] = 0u;
  *(a2 + 53) = 0;
  v26 = a2[28];
  *(a1 + 464) = *(a2 + 58);
  *(a1 + 448) = v26;
  *(a2 + 456) = 0u;
  *(a2 + 56) = 0;
  v27 = *(a2 + 472);
  *(a1 + 488) = *(a2 + 61);
  *(a1 + 472) = v27;
  a2[30] = 0u;
  *(a2 + 59) = 0;
  v28 = a2[31];
  *(a1 + 512) = *(a2 + 64);
  *(a1 + 496) = v28;
  *(a2 + 64) = 0;
  a2[31] = 0u;
  v29 = *(a2 + 520);
  *(a1 + 536) = *(a2 + 67);
  *(a1 + 520) = v29;
  *(a2 + 67) = 0;
  *(a2 + 520) = 0u;
  return result;
}

uint64_t sub_2B0EB4(uint64_t a1)
{
  sub_2B0F18(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(*a1);
  return a1;
}

uint64_t sub_2B0F18(uint64_t a1)
{
  if (*(a1 + 495) < 0)
  {
    operator delete(*(a1 + 472));
    if ((*(a1 + 471) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(a1 + 447) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_23;
    }
  }

  else if ((*(a1 + 471) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a1 + 448));
  if ((*(a1 + 447) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(a1 + 423) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

LABEL_23:
  operator delete(*(a1 + 424));
  if ((*(a1 + 423) & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(a1 + 399) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(*(a1 + 400));
  if ((*(a1 + 399) & 0x80000000) == 0)
  {
LABEL_6:
    sub_82914(a1 + 336);
    if ((*(a1 + 335) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(*(a1 + 376));
  sub_82914(a1 + 336);
  if ((*(a1 + 335) & 0x80000000) == 0)
  {
LABEL_7:
    if ((*(a1 + 311) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(*(a1 + 312));
  if ((*(a1 + 311) & 0x80000000) == 0)
  {
LABEL_8:
    if ((*(a1 + 287) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(*(a1 + 288));
  if ((*(a1 + 287) & 0x80000000) == 0)
  {
LABEL_9:
    if ((*(a1 + 263) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(*(a1 + 264));
  if ((*(a1 + 263) & 0x80000000) == 0)
  {
LABEL_10:
    if ((*(a1 + 239) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(*(a1 + 240));
  if ((*(a1 + 239) & 0x80000000) == 0)
  {
LABEL_11:
    if ((*(a1 + 215) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(*(a1 + 216));
  if ((*(a1 + 215) & 0x80000000) == 0)
  {
LABEL_12:
    if ((*(a1 + 191) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(*(a1 + 192));
  if ((*(a1 + 191) & 0x80000000) == 0)
  {
LABEL_13:
    if ((*(a1 + 167) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(*(a1 + 168));
  if ((*(a1 + 167) & 0x80000000) == 0)
  {
LABEL_14:
    if ((*(a1 + 143) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(*(a1 + 144));
  if ((*(a1 + 143) & 0x80000000) == 0)
  {
LABEL_15:
    if ((*(a1 + 119) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(*(a1 + 120));
  if ((*(a1 + 119) & 0x80000000) == 0)
  {
LABEL_16:
    if ((*(a1 + 95) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(*(a1 + 96));
  if ((*(a1 + 95) & 0x80000000) == 0)
  {
LABEL_17:
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(*(a1 + 72));
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_18:
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

    goto LABEL_39;
  }

LABEL_37:
  operator delete(*(a1 + 48));
  if (*(a1 + 47) < 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    return a1;
  }

LABEL_39:
  operator delete(*a1);
  return a1;
}

uint64_t sub_2B111C(unsigned int *a1, uint64_t a2, void (**a3)(void **__return_ptr, char *))
{
  v4 = *a1;
  if (v4)
  {
    v5 = 4 * v4;
    v6 = *a3;
    v7 = (a1 + 1);
    (*a3)(v11, &v7[*v7]);
    while (1)
    {
      v8 = *(a2 + 8);
      if (v8 >= *(a2 + 16))
      {
        v9 = sub_2B1214(a2, v11);
      }

      else
      {
        sub_2B0C28(*(a2 + 8), v11);
        v9 = v8 + 544;
      }

      *(a2 + 8) = v9;
      sub_2B0F18(&v15);
      if (v14 < 0)
      {
        operator delete(__p);
        if ((v12 & 0x80000000) == 0)
        {
          goto LABEL_3;
        }
      }

      else if ((v12 & 0x80000000) == 0)
      {
        goto LABEL_3;
      }

      operator delete(v11[0]);
LABEL_3:
      v7 += 4;
      v5 -= 4;
      if (!v5)
      {
        return a2;
      }

      v6(v11, &v7[*v7]);
    }
  }

  return a2;
}

uint64_t sub_2B1214(__int128 **a1, __int128 *a2)
{
  v2 = 0xF0F0F0F0F0F0F0F1 * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x78787878787878)
  {
    sub_1794();
  }

  if (0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0xE1E1E1E1E1E1E1E2 * ((a1[2] - *a1) >> 5);
  }

  if (0xF0F0F0F0F0F0F0F1 * ((a1[2] - *a1) >> 5) >= 0x3C3C3C3C3C3C3CLL)
  {
    v5 = 0x78787878787878;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 <= 0x78787878787878)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 32 * ((a1[1] - *a1) >> 5);
  sub_2B0C28(v6, a2);
  v7 = 544 * v2 + 544;
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = (v6 + v10);
  if (*a1 != v9)
  {
    v12 = v6 + v10;
    v13 = *a1;
    do
    {
      sub_2B0C28(v12, v13);
      v13 += 34;
      v12 += 544;
    }

    while (v13 != v9);
    while (1)
    {
      sub_2B0F18((v8 + 3));
      if (*(v8 + 47) < 0)
      {
        operator delete(*(v8 + 3));
        if (*(v8 + 23) < 0)
        {
LABEL_19:
          operator delete(*v8);
        }
      }

      else if (*(v8 + 23) < 0)
      {
        goto LABEL_19;
      }

      v8 += 34;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
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

void **sub_2B1394(void **a1)
{
  v2 = *a1;
  if (!*a1)
  {
    return a1;
  }

  v3 = a1[1];
  v4 = *a1;
  if (v3 == v2)
  {
    goto LABEL_11;
  }

  v5 = v3 - 68;
  do
  {
    sub_2B0F18((v5 + 6));
    if (*(v5 + 47) < 0)
    {
      operator delete(v5[3]);
      if ((*(v5 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    else if ((*(v5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*v5);
LABEL_4:
    v6 = v5 == v2;
    v5 -= 68;
  }

  while (!v6);
  v4 = *a1;
LABEL_11:
  a1[1] = v2;
  operator delete(v4);
  return a1;
}

double sub_2B1434@<D0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v4 = (a1 - *a1);
  if (*v4 >= 5u && (v5 = v4[2]) != 0)
  {
    v6 = (a1 + v5);
    v7 = *v6;
    v8 = *(v6 + v7);
    if (v8 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = *(v6 + v7);
    if (v8)
    {
      memcpy(&__dst, v6 + v7 + 4, v8);
    }

    *(&__dst + v8) = 0;
    if (*(a2 + 23) < 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    HIBYTE(v16) = 0;
    LOBYTE(__dst) = 0;
    if (*(a2 + 23) < 0)
    {
LABEL_7:
      operator delete(*a2);
    }
  }

  *a2 = __dst;
  *(a2 + 16) = v16;
  v9 = (a1 - *a1);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = (a1 + v10);
    v12 = *v11;
    v13 = *(v11 + v12);
    if (v13 >= 0x17)
    {
      operator new();
    }

    HIBYTE(v16) = *(v11 + v12);
    if (v13)
    {
      memcpy(&__dst, v11 + v12 + 4, v13);
    }

    *(&__dst + v13) = 0;
    if (*(a2 + 47) < 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    HIBYTE(v16) = 0;
    LOBYTE(__dst) = 0;
    if (*(a2 + 47) < 0)
    {
LABEL_14:
      operator delete(*(a2 + 24));
    }
  }

  result = *&__dst;
  *(a2 + 24) = __dst;
  *(a2 + 40) = v16;
  return result;
}

uint64_t *sub_2B163C(unsigned int *a1, uint64_t *a2, void (**a3)(void **__return_ptr, char *))
{
  v4 = *a1;
  if (v4)
  {
    v5 = 4 * v4;
    v6 = *a3;
    v7 = (a1 + 1);
    (*a3)(__p, &v7[*v7]);
    while (1)
    {
      v8 = a2[1];
      if (v8 < a2[2])
      {
        break;
      }

      v11 = sub_2B1754(a2, __p);
      v12 = SHIBYTE(v17);
      a2[1] = v11;
      if ((v12 & 0x80000000) == 0)
      {
        if ((SHIBYTE(v15) & 0x80000000) == 0)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }

      operator delete(v16);
      if (SHIBYTE(v15) < 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += 4;
      v5 -= 4;
      if (!v5)
      {
        return a2;
      }

      v6(__p, &v7[*v7]);
    }

    v9 = *__p;
    *(v8 + 16) = v15;
    *v8 = v9;
    __p[1] = 0;
    v15 = 0;
    __p[0] = 0;
    v10 = v17;
    *(v8 + 24) = v16;
    *(v8 + 40) = v10;
    v17 = 0;
    v16 = 0uLL;
    a2[1] = v8 + 48;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    operator delete(__p[0]);
    goto LABEL_3;
  }

  return a2;
}

uint64_t sub_2B1754(uint64_t *a1, uint64_t a2)
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

  if (v5)
  {
    if (v5 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  *v6 = *a2;
  *(v6 + 16) = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = 0;
  *(v6 + 24) = v7;
  *(v6 + 40) = *(a2 + 40);
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  v8 = 48 * v2 + 48;
  v9 = *a1;
  v10 = a1[1];
  v11 = v6 + *a1 - v10;
  if (*a1 != v10)
  {
    v12 = *a1;
    v13 = v6 + *a1 - v10;
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
      v12 += 3;
      v13 += 48;
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

      v9 += 48;
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

uint64_t sub_2B1908(unsigned int *a1, unsigned int *a2)
{
  v2 = (a2 + *a2);
  v3 = *a1;
  v4 = (v2 - *v2);
  if (*v4 < 5u)
  {
    return v3 != 0;
  }

  v5 = v4[2];
  if (!v5)
  {
    return v3 != 0;
  }

  v6 = *(v2 + v5);
  if (v6 <= v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = -1;
  }

  if (v6 >= v3)
  {
    return v7;
  }

  else
  {
    return v7 + 1;
  }
}

void *sub_2B196C(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

unint64_t sub_2B1988(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_2B19C0(a1, a2, a3);
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = HIDWORD(v3) == 0;
  }

  v6 = __ROR8__(v3, 32);
  if (v5)
  {
    v6 = 0xFFFFFFFF00000000;
  }

  if (v3 == -1)
  {
    return 0xFFFFFFFF00000000;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_2B19C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (!*a1)
  {
    return 0xFFFFFFFFLL;
  }

  v29 = a3;
  LODWORD(__key[0]) = 1;
  *__p = 0u;
  v27 = 0u;
  v28 = 0u;
  sub_2B1DB8(__p, __key, 1uLL);
  v5 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    goto LABEL_21;
  }

  while (1)
  {
    v6 = *(*(__p[1] + ((v28 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v28 & 0x3FF));
    *&v28 = v28 + 1;
    *(&v28 + 1) = v5 - 1;
    if (v28 >= 0x800)
    {
      operator delete(*__p[1]);
      __p[1] = __p[1] + 8;
      *&v28 = v28 - 1024;
    }

    v7 = sub_2D52A4(*a1, 12, v6, 1);
    if (v8)
    {
      v9 = (v7 + *v7);
      v10 = (v9 - *v9);
      if (*v10 >= 7u)
      {
        v11 = v10[3];
        if (v11)
        {
          v12 = (v9 + v11);
          v13 = *v12;
          __key[0] = a2;
          v14 = bsearch(__key, v12 + v13 + 4, *(v12 + v13), 0x10uLL, sub_2B2694);
          if (v14)
          {
            v15 = v14[1];
            if (HIDWORD(v15))
            {
              break;
            }
          }
        }
      }
    }

    v16 = sub_57A90(v6);
    v17 = sub_57A90(v6) >> 1;
    if (v16 <= 0x1D && v17 <= v16 >> 1)
    {
      sub_57A90(v6);
      operator new();
    }

    __key[0] = &v29;
    __key[1] = a1;
    sub_2B26B0(0, 0, __p, __key);
    v5 = *(&v28 + 1);
    if (!*(&v28 + 1))
    {
      goto LABEL_21;
    }
  }

  if (sub_2D5204(*a1))
  {
    v19 = v15 & 0xFFFFFFFF00000000 | (v15 >> 4);
  }

  else
  {
LABEL_21:
    v19 = 0xFFFFFFFFLL;
  }

  v20 = __p[1];
  v21 = v27;
  *(&v28 + 1) = 0;
  v22 = (v27 - __p[1]) >> 3;
  if (v22 >= 3)
  {
    do
    {
      operator delete(*v20);
      v21 = v27;
      v20 = (__p[1] + 8);
      __p[1] = v20;
      v22 = (v27 - v20) >> 3;
    }

    while (v22 > 2);
  }

  if (v22 == 1)
  {
    v23 = 512;
  }

  else
  {
    if (v22 != 2)
    {
      goto LABEL_29;
    }

    v23 = 1024;
  }

  *&v28 = v23;
LABEL_29:
  if (v20 != v21)
  {
    do
    {
      v24 = *v20++;
      operator delete(v24);
    }

    while (v20 != v21);
    if (v27 != __p[1])
    {
      *&v27 = v27 + ((__p[1] - v27 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (__p[0])
  {
    operator delete(__p[0]);
  }

  return v19;
}

void sub_2B1D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_2B2E00(va);
  _Unwind_Resume(a1);
}

void sub_2B1D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  if (a13 == a12)
  {
    v14 = __p;
    if (!__p)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = __p;
    if (!__p)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  operator delete(v14);
  _Unwind_Resume(exception_object);
}

void sub_2B1D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    operator delete(v11);
    sub_2B2E00(&a11);
    _Unwind_Resume(a1);
  }

  sub_2B2E00(&a11);
  _Unwind_Resume(a1);
}

void *sub_2B1DB8(void *result, int *a2, unint64_t a3)
{
  v5 = result;
  v6 = result[1];
  v7 = result[2];
  if (v7 == v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = ((v7 - v6) << 7) - 1;
  }

  v9 = result[5];
  v10 = v9 + result[4];
  v11 = v8 - v10;
  if (a3 > v11)
  {
    result = sub_2B1F98(result, a3 - v11);
    v9 = v5[5];
    v6 = v5[1];
    v7 = v5[2];
    v10 = v5[4] + v9;
  }

  v12 = (v6 + 8 * (v10 >> 10));
  if (v7 == v6)
  {
    v13 = 0;
    v14 = 0;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v13 = *v12 + 4 * (v10 & 0x3FF);
    v14 = v13;
    if (a3)
    {
LABEL_8:
      v15 = a3 + ((v14 - *v12) >> 2);
      if (v15 >= 1)
      {
        v16 = &v12[v15 >> 10];
        v14 = *v16 + 4 * (v15 & 0x3FF);
        if (v13 != v14)
        {
          goto LABEL_15;
        }

        return result;
      }

      v17 = 1023 - v15;
      v16 = &v12[-(v17 >> 10)];
      v14 = *v16 + 4 * (~v17 & 0x3FF);
      if (v13 == v14)
      {
        return result;
      }

      while (1)
      {
LABEL_15:
        v18 = v14;
        if (v12 != v16)
        {
          v18 = *v12 + 4096;
        }

        if (v13 == v18)
        {
          v18 = v13;
        }

        else
        {
          v19 = v18 - v13 - 4;
          if (v19 < 0x1C)
          {
            v23 = v13;
          }

          else if ((v13 - a2) < 0x20)
          {
            v23 = v13;
          }

          else
          {
            v20 = (v19 >> 2) + 1;
            v21 = v20 & 0x7FFFFFFFFFFFFFF8;
            v22 = &a2[v21];
            v23 = (v13 + v21 * 4);
            result = (v13 + 16);
            v24 = (a2 + 4);
            v25 = v20 & 0x7FFFFFFFFFFFFFF8;
            do
            {
              v26 = *v24;
              *(result - 1) = *(v24 - 1);
              *result = v26;
              result += 4;
              v24 += 2;
              v25 -= 8;
            }

            while (v25);
            a2 = v22;
            if (v20 == (v20 & 0x7FFFFFFFFFFFFFF8))
            {
              goto LABEL_28;
            }
          }

          do
          {
            v27 = *a2++;
            *v23++ = v27;
          }

          while (v23 != v18);
        }

LABEL_28:
        v9 += (v18 - v13) >> 2;
        if (v12 != v16)
        {
          v28 = v12[1];
          ++v12;
          v13 = v28;
          if (v28 != v14)
          {
            continue;
          }
        }

        v5[5] = v9;
        return result;
      }
    }
  }

  v16 = v12;
  if (v13 != v14)
  {
    goto LABEL_15;
  }

  return result;
}

void *sub_2B1F98(void *result, unint64_t a2)
{
  v2 = result;
  v3 = result[2] - result[1];
  if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = a2 + 1;
  }

  if ((v4 & 0x3FF) != 0)
  {
    v5 = (v4 >> 10) + 1;
  }

  else
  {
    v5 = v4 >> 10;
  }

  v6 = result[4];
  if (v5 >= v6 >> 10)
  {
    v7 = v6 >> 10;
  }

  else
  {
    v7 = v5;
  }

  if (v5 <= v6 >> 10)
  {
    for (result[4] = v6 - (v7 << 10); v7; --v7)
    {
      v12 = v2[1];
      v14 = *v12;
      v2[1] = v12 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  else
  {
    v8 = v5 - v7;
    v9 = result[3] - *result;
    v10 = v3 >> 3;
    if (v5 - v7 > (v9 >> 3) - (v3 >> 3))
    {
      if (v9 >> 2 <= v8 + v10)
      {
        v11 = v8 + v10;
      }

      else
      {
        v11 = v9 >> 2;
      }

      if (v11)
      {
        if (!(v11 >> 61))
        {
          operator new();
        }

        sub_1808();
      }

      operator new();
    }

    if (v8)
    {
      if (result[3] != result[2])
      {
        operator new();
      }

      operator new();
    }

    for (result[4] -= v7 << 10; v7; --v7)
    {
      v13 = v2[1];
      v14 = *v13;
      v2[1] = v13 + 1;
      result = sub_2133C(v2, &v14);
    }
  }

  return result;
}

void sub_2B2628(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

unsigned int *sub_2B26B0(unsigned int *a1, unsigned int *a2, void *a3, uint64_t a4)
{
  v5 = a1;
  if (a1 != a2)
  {
    do
    {
      v8 = *v5;
      if (sub_2B27D4(*a4, *v5))
      {
        v9 = sub_2D52A4(**(a4 + 8), 12, v8, 1);
        if (v10)
        {
          v11 = (v9 + *v9);
          v12 = (v11 - *v11);
          if (*v12 >= 5u)
          {
            v13 = v12[2];
            if (v13)
            {
              if (*(v11 + v13))
              {
                v14 = a3[2];
                v15 = a3[1];
                if (v14 == v15)
                {
                  v16 = 0;
                }

                else
                {
                  v16 = ((v14 - v15) << 7) - 1;
                }

                v17 = a3[5];
                v18 = v17 + a3[4];
                if (v16 == v18)
                {
                  sub_2B2A38(a3);
                  v15 = a3[1];
                  v17 = a3[5];
                  v18 = a3[4] + v17;
                }

                *(*(v15 + ((v18 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v18 & 0x3FF)) = *v5;
                a3[5] = v17 + 1;
              }
            }
          }
        }
      }

      ++v5;
    }

    while (v5 != a2);
    return a2;
  }

  return v5;
}

uint64_t sub_2B27D4(uint64_t a1, unsigned int a2)
{
  if (a2 && (**a1 != -1 || *(*a1 + 4) != -1))
  {
    sub_7FD28(0x10u);
    sub_57A90(a2);
    operator new();
  }

  return 1;
}

void sub_2B29F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2B2A38(void *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x400;
  v3 = v1 - 1024;
  if (!v2)
  {
    v7 = a1[2];
    v6 = a1[3];
    v8 = v6 - *a1;
    if (v7 - a1[1] < v8)
    {
      if (v6 != v7)
      {
        operator new();
      }

      operator new();
    }

    v9 = v8 >> 2;
    if (v6 == *a1)
    {
      v10 = 1;
    }

    else
    {
      v10 = v9;
    }

    if (!(v10 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  a1[4] = v3;
  v4 = a1[1];
  v11 = *v4;
  a1[1] = v4 + 1;
  return sub_2133C(a1, &v11);
}

void sub_2B2DA8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2B2E00(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  *(a1 + 40) = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = *(a1 + 16);
      v2 = (*(a1 + 8) + 8);
      *(a1 + 8) = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 512;
    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v5 = 1024;
LABEL_7:
    *(a1 + 32) = v5;
  }

  if (v2 != v3)
  {
    do
    {
      v6 = *v2++;
      operator delete(v6);
    }

    while (v2 != v3);
    v8 = *(a1 + 8);
    v7 = *(a1 + 16);
    if (v7 != v8)
    {
      *(a1 + 16) = v7 + ((v8 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

double sub_2B2ECC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
    v2 = *a1;
    v4 = a1[1];
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  a1[2] = v2;
  a1[3] = v4;
  do
  {
    v6 = &a1[v5];
    *(v6 + 8) = 0;
    *(v6 + 14) = 0;
    v6[5] = 0;
    v6[8] = 0;
    v5 += 6;
  }

  while (v5 != 480);
  result = 0.0;
  *(a1 + 242) = 0u;
  return result;
}

void sub_2B2F34(uint64_t a1@<X0>, unsigned int *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = sub_2AC914(a1 + 16, *a2, 0);
  v6 = &v5[-*v5];
  if (*v6 >= 7u && (v7 = *(v6 + 3)) != 0)
  {
    v8 = &v5[v7 + *&v5[v7]];
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_2B3000(v8, *a2);
  v10 = (v9 - *v9);
  if (*v10 >= 7u && (v11 = v10[3]) != 0)
  {
    v12 = (v9 + v11 + *(v9 + v11));
    v13 = a3;
  }

  else
  {
    v12 = 0;
    v13 = a3;
  }

  sub_300380(v12, v13);
}

uint64_t sub_2B3000(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v15[0] = v2;
    v15[1] = v4;
    sub_2FF494(v15, &v11);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v11, &v12);
    v6 = std::string::append(&v12, " is out of range", 0x10uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    v13 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v14 >= 0)
    {
      v8 = &v13;
    }

    else
    {
      v8 = v13;
    }

    if (v14 >= 0)
    {
      v9 = HIBYTE(v14);
    }

    else
    {
      v9 = *(&v13 + 1);
    }

    v10 = sub_2D390(exception, v8, v9);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_2B30F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

double sub_2B3170(_OWORD *a1, __int128 *a2)
{
  v2 = 0;
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *a1 = v3;
  do
  {
    v4 = &a1[v2];
    *(v4 + 4) = 0;
    *(v4 + 10) = 0;
    *(v4 + 3) = 0;
    *(v4 + 6) = 0;
    v2 += 3;
  }

  while (v2 != 240);
  result = 0.0;
  a1[241] = 0u;
  return result;
}

char *sub_2B31AC(uint64_t a1, uint64_t a2)
{
  result = sub_2B3284(a1, a2, 1);
  if (result)
  {
    v5 = &result[-*result];
    if (*v5 >= 0x17u && *(v5 + 11) && (v6 = &result[*(v5 + 11) + *&result[*(v5 + 11)]], *v6 > WORD2(a2)))
    {
      v7 = &v6[2 * WORD2(a2)];
      if ((a2 & 0xFF000000000000) != 0)
      {
        ++v7;
      }

      LOBYTE(v4) = v7[4];
      v8 = v4 / 255.0 * 1000000000.0;
      if (v8 < 4.50359963e15)
      {
        v8 = (((v8 + v8) + 1) >> 1);
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

char *sub_2B3284(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_34;
  }

  if (*(a1 + 2032) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2040) = v3;
    v4 = *(a1 + 2048);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2056) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2064) = v3;
    v4 = *(a1 + 2072);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2080) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2088) = v3;
    v4 = *(a1 + 2096);
    if (!v4)
    {
      goto LABEL_34;
    }

    return v4 + *v4;
  }

  if (*(a1 + 2104) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 2112) = v3;
    v4 = *(a1 + 2120);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v6 = a1 + 16;
    v7 = *(a1 + 2088);
    v8 = *(a1 + 2064);
    v9 = *(a1 + 2040);
    v10 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 2040);
    }

    v11 = 84;
    if (v10)
    {
      v11 = 0;
    }

    v12 = v8 >= v3;
    if (v8 < v3)
    {
      v3 = *(a1 + 2064);
    }

    v13 = 85;
    if (v12)
    {
      v13 = v11;
    }

    if (v7 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 2088);
    }

    v15 = *(a1 + 2112);
    if (v7 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 86;
    }

    v18 = sub_2D52A4(*a1, 21, a2, 1);
    v19 = 87;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v6 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_34:
  sub_2B3530(v21);
  return 0;
}

char *sub_2B3458(uint64_t a1, uint64_t a2)
{
  result = sub_2B3284(a1, a2, 1);
  if (result)
  {
    v5 = &result[-*result];
    if (*v5 >= 0x19u && *(v5 + 12) && (v6 = &result[*(v5 + 12) + *&result[*(v5 + 12)]], *v6 > WORD2(a2)))
    {
      v7 = &v6[2 * WORD2(a2)];
      if ((a2 & 0xFF000000000000) != 0)
      {
        ++v7;
      }

      LOBYTE(v4) = v7[4];
      v8 = v4 / 255.0 * 1000000000.0;
      if (v8 < 4.50359963e15)
      {
        v8 = (((v8 + v8) + 1) >> 1);
      }

      return v8;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2B3530(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(0x15u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_2B362C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2B365C(uint64_t a1, unint64_t a2, int a3, void *a4)
{
  v46 = a2;
  a4[1] = *a4;
  v8 = a2;
  v9 = 1;
  v10 = sub_2AF704(a1 + 3896, a2, 1);
  if (v10)
  {
    v11 = &v10[-*v10];
    if (*v11 >= 7u)
    {
      v12 = *(v11 + 3);
      if (v12)
      {
        v13 = &v10[v12];
        v14 = &v13[(a2 >> 30) & 0x3FFFFFFFCLL];
        v15 = &v14[*v13 + 4 + *&v14[*v13 + 4]];
        v16 = &v15[-*v15];
        if (*v16 >= 5u && (v17 = *(v16 + 2)) != 0)
        {
          v18 = &v15[v17 + *&v15[v17]];
        }

        else
        {
          v18 = 0;
        }

        v19 = &v14[*v13 + 4 + *&v14[*v13 + 4]];
        v20 = &v19[-*v19];
        if (*v20 >= 0xDu && (v21 = *(v20 + 6)) != 0)
        {
          v22 = &v19[v21 + *&v19[v21]];
          if (*(a1 + 7774))
          {
            v45 = a3;
            v43[0] = a1;
            v43[1] = &v46;
            v44 = a2;
            v48 = (v22 + 4);
            v47 = &v22[2 * *v22 + 4];
            sub_2B597C(&v48, &v47, a4, &v44, v43);
            return *v22 == (a4[1] - *a4) >> 3;
          }

          v36 = *v22;
          v43[0] = a4;
          if (v36)
          {
            v37 = 2 * v36;
            v38 = (v22 + 4);
            v39 = a3 != 0;
            do
            {
              v40 = *v38++;
              LODWORD(v44) = v8;
              WORD2(v44) = v40 >> 1;
              BYTE6(v44) = v40 & 1 ^ v39;
              sub_2B5858(v43, &v44);
              v37 -= 2;
            }

            while (v37);
          }
        }

        else if (v18)
        {
          v24 = *v18;
          v25 = 8 * v24;
          if (*(a1 + 7774))
          {
            if (v24)
            {
              v26 = (v18 + 4);
              do
              {
                if (*(a1 + 7774) != 1 || (v29 = *v26, v30 = *(v26 + 2), (v31 = sub_2AF704(a1 + 3896, *v26, 1)) != 0) && (v32 = &v31[-*v31], *v32 >= 5u) && (v33 = *(v32 + 2)) != 0 && *&v31[v33 + *&v31[v33]] > v30 && sub_2B817C(a1, v29 | (v30 << 32)))
                {
                  v27 = *v26;
                  v28 = (a3 == 0) != ((*v26 & 0xFF000000000000) != 0);
                  LODWORD(v43[0]) = *v26;
                  WORD2(v43[0]) = WORD2(v27);
                  BYTE6(v43[0]) = v28;
                  sub_2B5AD0(a4, v43);
                }

                v26 += 2;
                v25 -= 8;
              }

              while (v25);
              v41 = *v18;
            }

            else
            {
              v41 = 0;
            }

            return v41 == (a4[1] - *a4) >> 3;
          }

          v43[0] = a4;
          if (v24)
          {
            v34 = (v18 + 4);
            do
            {
              v35 = *v34++;
              LODWORD(v44) = v35;
              WORD2(v44) = WORD2(v35);
              BYTE6(v44) = (a3 == 0) != ((v35 & 0xFF000000000000) != 0);
              sub_2B5858(v43, &v44);
              v25 -= 8;
            }

            while (v25);
          }
        }

        return 1;
      }
    }
  }

  return v9;
}

uint64_t sub_2B3988(uint64_t a1, uint64_t a2)
{
  v4 = sub_2B4EDC(a1, a2 & 0xFFFFFFFFFFFFLL, (a2 & 0xFF000000000000) == 0);
  sub_2B365C(a1, v4, 0, (a1 + 7800));
  v5 = *(a1 + 7800);
  v6 = *(a1 + 7808);
  if (v5 != v6)
  {
    v7 = 0;
    while (1)
    {
      if (*(v5 + 2) == WORD2(a2) && *v5 == a2)
      {
        goto LABEL_5;
      }

      v9 = *v5;
      v10 = sub_2B51D8(a1, *v5 & 0xFFFFFFFFFFFFLL);
      v11 = (v10 - *v10);
      v12 = *v11;
      if ((v9 & 0xFF000000000000) != 0)
      {
        if (v12 >= 0x9B)
        {
          v13 = v11[77];
          if (v13)
          {
            v14 = 2;
            goto LABEL_3;
          }
        }
      }

      else if (v12 >= 0x9B)
      {
        v13 = v11[77];
        if (v13)
        {
          v14 = 1;
LABEL_3:
          if ((*(v10 + v13) & v14) != 0)
          {
            ++v7;
          }
        }
      }

LABEL_5:
      if (++v5 == v6)
      {
        return v7;
      }
    }
  }

  return 0;
}

void sub_2B3A8C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  sub_2B365C(a1, a2, 0, (a1 + 7800));
  v5 = *(a1 + 7800);
  v6 = *(a1 + 7808);
  if (v5 == v6)
  {
    goto LABEL_14;
  }

  v7 = (v6 - v5) >> 3;
  v8 = (v6 - v5) >> 2;
  if (v8 <= v7)
  {
    if (v8 < v7)
    {
      v6 = v5 + 8 * v8;
      *(a1 + 7808) = v6;
    }
  }

  else
  {
    sub_2B5518(a1 + 7800, v8 - v7);
    v6 = *(a1 + 7808);
    v5 = *(a1 + 7800);
  }

  if (v6 == v5)
  {
LABEL_14:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    v9 = v6 - v5;
    v10 = v9 >> 3;
    v11 = (v9 >> 3) - 2;
    v12 = v9 - 16;
    do
    {
      v14 = (4 * v11) & 0xFFFFFFFFFFFFFFF8;
      v15 = (v5 + v12);
      v16 = *(v5 + v14);
      *(v15 + 3) = *(v5 + v14 + 3);
      *v15 = v16;
      v17 = *(a1 + 7800);
      v18 = (v17 + v14);
      v19 = v17 + v12;
      LODWORD(v15) = *v18;
      *(v19 + 11) = *(v18 + 3);
      *(v19 + 8) = v15;
      v20 = sub_2B51D8(a1, *(*(a1 + 7800) + v12) | (*(*(a1 + 7800) + v12 + 4) << 32));
      v21 = (v20 - *v20);
      if (*v21 < 0x9Bu || (v22 = v21[77]) == 0 || (v23 = *(v20 + v22 + 1), v13 = v11, (v23 & 0x80) == 0))
      {
        v13 = v10 - 1;
      }

      v5 = *(a1 + 7800);
      *(v5 + 8 * v13 + 6) = *(v5 + 8 * v13 + 6) == 0;
      v11 -= 2;
      v12 -= 16;
      v10 -= 2;
    }

    while (v11 != -2);
    v24 = *(a1 + 7808);
    a3[1] = 0;
    a3[2] = 0;
    *a3 = 0;
    if (v24 != v5)
    {
      if (((v24 - v5) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1794();
    }
  }
}

uint64_t sub_2B3C60@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  v5[0] = off_2668A98;
  v6 = v5;
  sub_2B3D50(a1, a2, a3, a4);
  result = v6;
  if (v6 == v5)
  {
    return (*(*v6 + 32))(v6);
  }

  if (v6)
  {
    return (*(*v6 + 40))();
  }

  return result;
}

void sub_2B3D3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2B5CF0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2B3D50@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, int a3@<W2>, void *a4@<X8>)
{
  if (*a2 != -1 || a2[1] != -1)
  {
    v11 = a4;
    result = sub_7FDC0((result + 3880), a2);
    if ((result & 1) != 0 && a3 && (*a2 & a2[1]) != -1)
    {
      *v11 = 0;
      v11[1] = 0;
      v11[2] = 0;
      sub_2B6218(&__p, a3);
      v7 = malloc_type_malloc(0x80uLL, 0x100004052888210uLL);
      v8 = vdupq_n_s32(1u);
      v9 = v7 + 1;
      v10 = 32;
      do
      {
        v9[-1] = v8;
        *v9 = v8;
        v9 += 2;
        v10 -= 8;
      }

      while (v10);
      sub_58168(*a2 >> 17, a2[1] >> 17);
      operator new();
    }

    a4 = v11;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  return result;
}

void sub_2B4C4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (a30)
  {
    free(a30);
    if (!v33)
    {
LABEL_3:
      v35 = __p;
      if (!__p)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if (!v33)
  {
    goto LABEL_3;
  }

  operator delete(v33);
  v35 = __p;
  if (!__p)
  {
LABEL_4:
    v36 = *a18;
    if (!*a18)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(v35);
  v36 = *a18;
  if (!*a18)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  *(a18 + 8) = v36;
  operator delete(v36);
  _Unwind_Resume(exception_object);
}

char *sub_2B4D24(uint64_t a1, unsigned int a2, int a3)
{
  v22 = a3;
  v23 = a2;
  v21[0] = &v22;
  v21[1] = &v23;
  v3 = *(a1 + 3856) + 1;
  *(a1 + 3856) = v3;
  if (!*a1)
  {
    goto LABEL_28;
  }

  if (*(a1 + 112) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 120) = v3;
    v4 = *(a1 + 128);
    if (!v4)
    {
      goto LABEL_28;
    }

    return v4 + *v4;
  }

  v5 = a1 + 136;
  if (*(a1 + 136) == a2)
  {
LABEL_6:
    ++*(a1 + 3864);
    *(v5 + 8) = v3;
    v4 = *(v5 + 16);
    if (!v4)
    {
      goto LABEL_28;
    }

    return v4 + *v4;
  }

  if (*(a1 + 160) == a2)
  {
    ++*(a1 + 3864);
    *(a1 + 168) = v3;
    v4 = *(a1 + 176);
    if (v4)
    {
      return v4 + *v4;
    }
  }

  else
  {
    v5 = a1 + 184;
    if (*(a1 + 184) == a2)
    {
      goto LABEL_6;
    }

    v7 = a1 + 16;
    v8 = *(a1 + 168);
    v9 = *(a1 + 144);
    v10 = *(a1 + 120);
    v11 = v10 < v3;
    if (v10 < v3)
    {
      v3 = *(a1 + 120);
    }

    v12 = v9 >= v3;
    if (v9 < v3)
    {
      v3 = *(a1 + 144);
    }

    v13 = 4 * v11;
    if (!v12)
    {
      v13 = 5;
    }

    if (v8 >= v3)
    {
      v14 = v3;
    }

    else
    {
      v14 = *(a1 + 168);
    }

    v15 = *(a1 + 192);
    if (v8 >= v3)
    {
      v16 = v13;
    }

    else
    {
      v16 = 6;
    }

    v18 = sub_2D52A4(*a1, 1, a2, 1);
    v19 = 7;
    if (v15 >= v14)
    {
      v19 = v16;
    }

    v20 = v7 + 24 * v19;
    *v20 = v23;
    *(v20 + 8) = *(a1 + 3856);
    *(v20 + 16) = v18;
    if (v18)
    {
      return v18 + *v18;
    }
  }

LABEL_28:
  sub_2B572C(v21);
  return 0;
}

unint64_t sub_2B4EDC(uint64_t a1, unint64_t a2, int a3)
{
  v4 = a2;
  v5 = sub_2B51D8(a1, a2);
  v6 = (v5 - *v5);
  v7 = *v6;
  if ((a3 & 1) == 0)
  {
    if (v7 >= 5)
    {
      v27 = v7 >= 0x77 && v6[2] == 0;
      if (v27 && v6[59] && *(v5 + v6[59]) == -1)
      {
LABEL_28:
        sub_D7B0(v43);
        v30 = sub_4A5C(v44, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/data/api/data/facades/RoadNetworkFacade.h", 118);
        sub_4A5C(v30, ":", 1);
        v31 = std::ostream::operator<<();
        v32 = sub_4A5C(v31, ":", 1);
        v33 = sub_4A5C(v32, "road ", 5);
        v34 = sub_2FF718(v33, __ROR8__(v4, 32));
        v35 = sub_4A5C(v34, ", endpt ", 8);
        v36 = sub_2B5348(v35, a3);
        sub_4A5C(v36, " has no junction data", 21);
        exception = __cxa_allocate_exception(0x40uLL);
        sub_DAE4(v43, v41);
        if ((v42 & 0x80u) == 0)
        {
          v38 = v41;
        }

        else
        {
          v38 = v41[0];
        }

        if ((v42 & 0x80u) == 0)
        {
          v39 = v42;
        }

        else
        {
          v39 = v41[1];
        }

        v40 = sub_2D390(exception, v38, v39);
      }

      v8 = v6[2];
      if (v8)
      {
        goto LABEL_22;
      }

      if (v7 >= 0x77)
      {
        v28 = v6[59];
        if (v28)
        {
          v11 = *(v5 + v28);
          return v4 | (v11 << 32);
        }
      }
    }

    v11 = 0;
    return v4 | (v11 << 32);
  }

  if (v7 < 7)
  {
    goto LABEL_28;
  }

  v8 = v6[3];
  if (v8)
  {
LABEL_22:
    v11 = __ROR8__(*(v5 + v8), 32);
    v4 = HIDWORD(v11);
    return v4 | (v11 << 32);
  }

  if (v7 < 0x79)
  {
    goto LABEL_28;
  }

  v9 = v6[60];
  if (!v9)
  {
    goto LABEL_28;
  }

  v10 = *(v5 + v9);
  v11 = HIWORD(v10);
  v12 = sub_57A90(v4);
  v13 = v12 >> 1;
  v14 = v12 & 0xFE;
  v15 = v4 & ~(-1 << (v12 & 0xFE));
  v16 = sub_581D8(v15);
  v17 = sub_581D8(v15 >> 1);
  v18 = v16 + v10;
  v19 = v17 + (v10 >> 8);
  v20 = ((((((v18 & ~(v18 >> 31)) - v18 + (v18 >> 31)) >> v13) + (v18 >> 31)) << v13) + v18) % (1 << v13);
  v21 = ((((((v19 & ~(v19 >> 31)) - v19 + (v19 >> 31)) >> v13) + (v19 >> 31)) << v13) + v19) % (1 << v13);
  v22 = -1 << v13;
  v23 = ~(-1 << v13);
  if (v23 < v20)
  {
    v24 = ~v22;
  }

  else
  {
    v24 = v20;
  }

  if (v23 < v21)
  {
    v25 = ~v22;
  }

  else
  {
    v25 = v21;
  }

  sub_58168(v24, v25);
  LODWORD(v4) = v26 | (1 << v14);
  return v4 | (v11 << 32);
}

void sub_2B5184(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    sub_DBE4(&a15);
    _Unwind_Resume(a1);
  }

  sub_DBE4(&a15);
  _Unwind_Resume(a1);
}

uint64_t sub_2B51D8(uint64_t a1, unint64_t a2)
{
  v3 = sub_2AF704(a1 + 3896, a2, 1);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    v15 = __ROR8__(a2, 32);
    sub_2FF494(&v15, &v13);
    sub_23E08("Road access could not find quad node for ", &v13, &v14);
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v14;
    }

    else
    {
      v10 = v14.__r_.__value_.__r.__words[0];
    }

    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v14.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v14.__r_.__value_.__l.__size_;
    }

    v12 = sub_2D390(exception, v10, size);
  }

  v4 = &v3[-*v3];
  if (*v4 >= 5u && (v5 = *(v4 + 2)) != 0)
  {
    v6 = &v3[v5 + *&v3[v5]];
    v7 = a2;
  }

  else
  {
    v6 = 0;
    v7 = a2;
  }

  return sub_2B53A8(v6, v7);
}

void sub_2B52F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_2B5348(void *a1, int a2)
{
  v4 = sub_4A5C(a1, "common::Endpoint::", 18);
  if (a2)
  {
    v5 = "END";
  }

  else
  {
    v5 = "START";
  }

  if (a2)
  {
    v6 = 3;
  }

  else
  {
    v6 = 5;
  }

  sub_4A5C(v4, v5, v6);
  return a1;
}

uint64_t sub_2B53A8(_DWORD *a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (!a1 || *a1 <= HIDWORD(a2))
  {
    v4 = a2;
    exception = __cxa_allocate_exception(0x40uLL);
    v15[0] = v2;
    v15[1] = v4;
    sub_2FF494(v15, &v11);
    sub_23E08("Flatbuffer vector requested index (object_index)", &v11, &v12);
    v6 = std::string::append(&v12, " is out of range", 0x10uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v14 = v6->__r_.__value_.__r.__words[2];
    v13 = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v14 >= 0)
    {
      v8 = &v13;
    }

    else
    {
      v8 = v13;
    }

    if (v14 >= 0)
    {
      v9 = HIBYTE(v14);
    }

    else
    {
      v9 = *(&v13 + 1);
    }

    v10 = sub_2D390(exception, v8, v9);
  }

  return &a1[v2 + 1] + a1[v2 + 1];
}

void sub_2B5498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_2B5518(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 > (v3 - v4) >> 3)
  {
    v5 = (v4 - *a1) >> 3;
    v6 = v5 + a2;
    if ((v5 + a2) >> 61)
    {
      sub_1794();
    }

    v7 = v3 - *a1;
    if (v7 >> 2 > v6)
    {
      v6 = v7 >> 2;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v8 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (!(v8 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v19 = 8 * v5;
    v20 = 8 * v5 + 8 * a2;
    v21 = (a2 - 1) & 0x1FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v9 = v21 + 1;
      v10 = (v21 + 1) & 0x3FFFFFFFFFFFFFFELL;
      v11 = v19 + 8 * v10;
      v12 = v19 + 8;
      v13 = v10;
      do
      {
        *(v12 - 8) = 0;
        *v12 = 0;
        *(v12 - 4) = 0;
        *(v12 + 4) = 0;
        *(v12 - 2) = 1;
        *(v12 + 6) = 1;
        v12 += 16;
        v13 -= 2;
      }

      while (v13);
      if (v9 == v10)
      {
LABEL_26:
        v22 = *a1;
        v23 = *(a1 + 8) - *a1;
        v24 = v19 - v23;
        memcpy((v19 - v23), *a1, v23);
        *a1 = v24;
        *(a1 + 8) = v20;
        *(a1 + 16) = 0;
        if (v22)
        {

          operator delete(v22);
        }

        return;
      }
    }

    else
    {
      v11 = 8 * v5;
    }

    do
    {
      *v11 = 0;
      *(v11 + 4) = 0;
      *(v11 + 6) = 1;
      v11 += 8;
    }

    while (v11 != v20);
    goto LABEL_26;
  }

  if (a2)
  {
    v14 = v4 + 8 * a2;
    if (((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_35;
    }

    v15 = ((a2 - 1) & 0x1FFFFFFFFFFFFFFFLL) + 1;
    v16 = v4 + 8 * (v15 & 0x3FFFFFFFFFFFFFFELL);
    v17 = v4 + 8;
    v18 = v15 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      *(v17 - 8) = 0;
      *v17 = 0;
      *(v17 - 4) = 0;
      *(v17 + 4) = 0;
      *(v17 - 2) = 1;
      *(v17 + 6) = 1;
      v17 += 16;
      v18 -= 2;
    }

    while (v18);
    v4 = v16;
    if (v15 != (v15 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_35:
      do
      {
        *v4 = 0;
        *(v4 + 4) = 0;
        *(v4 + 6) = 1;
        v4 += 8;
      }

      while (v4 != v14);
    }

    v4 = v14;
  }

  *(a1 + 8) = v4;
}

uint64_t sub_2B572C(int **a1)
{
  v1 = **a1;
  if (v1 != 1)
  {
    if (!v1)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      v12 = *a1[1];
      v11[0] = sub_7FCF0(1u);
      v11[1] = v5;
      sub_2AF128("Failed to acquire Flatbuffer data in quad node ", " on layer ", v11, v13);
      if ((v14 & 0x80u) == 0)
      {
        v6 = v13;
      }

      else
      {
        v6 = v13[0];
      }

      if ((v14 & 0x80u) == 0)
      {
        v7 = v14;
      }

      else
      {
        v7 = v13[1];
      }

      v8 = sub_2D390(exception, v6, v7);
    }

    v9 = __cxa_allocate_exception(0x40uLL);
    v10 = sub_2D390(v9, "Unknown data access error policy", 0x20uLL);
  }

  return 0;
}

void sub_2B5828(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_2B5858(uint64_t *result, void *a2)
{
  v2 = *result;
  v4 = *(*result + 8);
  v3 = *(*result + 16);
  if (v4 >= v3)
  {
    v5 = *v2;
    v6 = v4 - *v2;
    v7 = v6 >> 3;
    v8 = (v6 >> 3) + 1;
    if (v8 >> 61)
    {
      sub_1794();
    }

    v9 = v3 - v5;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      sub_1808();
    }

    v11 = result;
    *(8 * v7) = *a2;
    v12 = 8 * v7 + 8;
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

uint64_t sub_2B597C(unsigned __int16 **a1, unsigned __int16 **a2, uint64_t a3, int *a4, uint64_t *a5)
{
  for (i = *a1; i != *a2; *a1 = i)
  {
    v14 = *i;
    v15 = *a5;
    v16 = v14 >> 1;
    if (*(*a5 + 7774) == 1)
    {
      v17 = a5[1];
      v18 = *v17;
      v19 = sub_2AF704(v15 + 3896, *v17, 1);
      if (!v19)
      {
        goto LABEL_5;
      }

      v20 = &v19[-*v19];
      if (*v20 < 5u)
      {
        goto LABEL_5;
      }

      v21 = *(v20 + 2);
      if (!v21 || *&v19[v21 + *&v19[v21]] <= v16 || !sub_2B817C(v15, v18 & 0xFFFF8000FFFFFFFFLL | ((v16 & 0x7FFF) << 32)))
      {
        goto LABEL_5;
      }

      LODWORD(v14) = **a1;
      v11 = (v14 >> 1) << 32;
    }

    else
    {
      v11 = v16 << 32;
    }

    v12 = *a4;
    v13 = *(a4 + 8) != 0;
    WORD2(v23) = WORD2(v11);
    LODWORD(v23) = v11 | v12;
    BYTE6(v23) = v14 & 1 ^ v13;
    sub_2B5AD0(a3, &v23);
LABEL_5:
    i = *a1 + 1;
  }

  return a3;
}

void sub_2B5AD0(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t sub_2B5C78(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNK3msl4data17RoadNetworkFacade17get_nearest_roadsERKNS_6common10CoordinateEjNS2_6LengthEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNK3msl4data17RoadNetworkFacade17get_nearest_roadsERKNS_6common10CoordinateEjNS2_6LengthEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNK3msl4data17RoadNetworkFacade17get_nearest_roadsERKNS_6common10CoordinateEjNS2_6LengthEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNK3msl4data17RoadNetworkFacade17get_nearest_roadsERKNS_6common10CoordinateEjNS2_6LengthEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t sub_2B5CF0(uint64_t a1)
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

void sub_2B5D7C(int *a1@<X1>, _DWORD *a2@<X2>, int *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v41 = -1;
  v42 = 0x7FEFFFFFFFFFFFFFLL;
  v39 = -1;
  v40 = 0x7FFFFFFF;
  v37 = -1;
  v38 = 0x7FFFFFFF;
  v36 = 0;
  v8 = *(a4 + 4);
  v9 = (a3 - *a3);
  if (*v9 >= 7u && (v10 = v9[3]) != 0)
  {
    v11 = *(a3 + v10);
  }

  else
  {
    v11 = 0;
  }

  v35[0] = &v37;
  v35[1] = a2;
  v35[2] = &v42;
  v35[3] = &v39;
  v35[4] = &v41;
  v35[5] = &v36;
  sub_2B6D50(a1, v8, v11, v35);
  if (v39 == -1 && (v12 = v37, v37 != -1))
  {
    v17 = exp(3.14159265 - HIDWORD(v37) * 6.28318531 / 4294967300.0);
    *&v18 = atan((v17 - 1.0 / v17) * 0.5) * 57.2957795;
    LODWORD(v19) = v12;
    HIDWORD(v19) = *a2;
    v33 = v19;
    v20 = *&v18 * 0.0174532925;
    LODWORD(v18) = a2[1];
    v21 = exp(3.14159265 - v18 * 6.28318531 / 4294967300.0);
    v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
    v23.i64[0] = v33;
    v23.i64[1] = HIDWORD(v33);
    v24 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v23), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v34 = vsubq_f64(v24, vdupq_laneq_s64(v24, 1)).f64[0];
    v25 = sin((v20 - v22) * 0.5);
    v26 = v25 * v25;
    v27 = cos(v20);
    v28 = v27 * cos(v22);
    v29 = sin(0.5 * v34);
    v30 = atan2(sqrt(v29 * v29 * v28 + v26), sqrt(1.0 - (v29 * v29 * v28 + v26)));
    v16 = 0;
    v13 = (v30 + v30) * 6372797.56;
    v14 = *(a1 - *a1 + 4);
    v15 = &v37;
  }

  else
  {
    v13 = *&v42;
    v14 = *(a1 - *a1 + 4);
    v15 = &v39;
    v16 = v41;
  }

  v31 = *(a1 + v14);
  *a5 = v13;
  v32 = *v15;
  *(a5 + 8) = v31;
  *(a5 + 16) = v32;
  *(a5 + 24) = *(v15 + 2);
  *(a5 + 32) = v16;
  *(a5 + 40) = 0;
}

void sub_2B6030(uint64_t a1, double *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = (v3 - *a1) >> 3;
  if (v5 < *(a1 + 32))
  {
    sub_2B746C(a1, a2);
    v6 = *a1;
    v7 = *(a1 + 8);
    v8 = (v7 - *a1) >> 3;
    v9 = v8 < 2;
    v10 = v8 - 2;
    if (!v9)
    {
      v11 = v10 >> 1;
      v12 = &v6[v11];
      v14 = *(v7 - 8);
      v13 = (v7 - 8);
      v15 = v14;
      v16 = *v12;
      if (*v12 < v14)
      {
        do
        {
          *v13 = v16;
          v13 = v12;
          if (!v11)
          {
            break;
          }

          v11 = (v11 - 1) >> 1;
          v12 = &v6[v11];
          v16 = *v12;
        }

        while (*v12 < v15);
LABEL_24:
        *v13 = v15;
        goto LABEL_25;
      }
    }

    goto LABEL_25;
  }

  v17 = *v4;
  if (*a2 >= *v4)
  {
    goto LABEL_25;
  }

  if (v5 >= 2)
  {
    v18 = 0;
    v19 = *a1;
    do
    {
      v20 = v19;
      v19 += v18 + 1;
      v21 = 2 * v18;
      v18 = (2 * v18) | 1;
      v22 = v21 + 2;
      if (v22 < v5 && *v19 < v19[1])
      {
        ++v19;
        v18 = v22;
      }

      *v20 = *v19;
    }

    while (v18 <= ((v5 - 2) >> 1));
    v23 = (v3 - 8);
    if (v19 == (v3 - 8))
    {
      goto LABEL_19;
    }

    *v19 = *v23;
    *v23 = v17;
    v24 = (v19 - v4 + 8) >> 3;
    v9 = v24 < 2;
    v25 = v24 - 2;
    if (!v9)
    {
      v26 = v25 >> 1;
      v27 = &v4[v26];
      v28 = *v27;
      v17 = *v19;
      if (*v27 < *v19)
      {
        do
        {
          *v19 = v28;
          v19 = v27;
          if (!v26)
          {
            break;
          }

          v26 = (v26 - 1) >> 1;
          v27 = &v4[v26];
          v28 = *v27;
        }

        while (*v27 < v17);
LABEL_19:
        *v19 = v17;
      }
    }
  }

  *(a1 + 8) = v3 - 8;
  sub_2B746C(a1, a2);
  v29 = *a1;
  v30 = *(a1 + 8);
  v31 = (v30 - *a1) >> 3;
  v9 = v31 < 2;
  v32 = v31 - 2;
  if (!v9)
  {
    v33 = v32 >> 1;
    v34 = &v29[v33];
    v35 = *(v30 - 8);
    v13 = (v30 - 8);
    v15 = v35;
    v36 = *v34;
    if (*v34 < v35)
    {
      do
      {
        *v13 = v36;
        v13 = v34;
        if (!v33)
        {
          break;
        }

        v33 = (v33 - 1) >> 1;
        v34 = &v29[v33];
        v36 = *v34;
      }

      while (*v34 < v15);
      goto LABEL_24;
    }
  }

LABEL_25:
  ++*(a1 + 28);
}

uint64_t sub_2B6218(uint64_t result, int a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 28) = 0;
  *(result + 32) = a2;
  if (!a2)
  {
    sub_D7B0(v11);
    v2 = sub_4A5C(v12, "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/routing/common/api/common/algorithms/StreamingKthElement.h", 127);
    sub_4A5C(v2, ":", 1);
    v3 = std::ostream::operator<<();
    v4 = sub_4A5C(v3, ":", 1);
    sub_4A5C(v4, "Illegal value of 0 provided as window size (k-value)", 54);
    exception = __cxa_allocate_exception(0x40uLL);
    sub_DAE4(v11, v9);
    if ((v10 & 0x80u) == 0)
    {
      v6 = v9;
    }

    else
    {
      v6 = v9[0];
    }

    if ((v10 & 0x80u) == 0)
    {
      v7 = v10;
    }

    else
    {
      v7 = v9[1];
    }

    v8 = sub_2D390(exception, v6, v7);
  }

  return result;
}

void sub_2B6310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_DBE4(&a15);
  v17 = *v15;
  if (*v15)
  {
    *(v15 + 8) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_2B6364(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == 1)
  {
    result = sub_2B67BC(a1);
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

      sub_2B68FC(&v26, a1, v13);
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
      v20 = *(a1 + 40);
      *(a1 + 40) = v29;
      v29 = v20;
      v21 = *(a1 + 56);
      v22 = v30;
      *(a1 + 56) = v30;
      v30 = v21;
      v23 = *(a1 + 64);
      *(a1 + 64) = v31;
      v31 = v23;
      v24 = *(a1 + 72);
      *(a1 + 72) = v32;
      v32 = v24;
      *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v22)));
      *(a1 + 24) = 0;
      v26 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v27, v21)));
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

uint64_t sub_2B6638@<X0>(uint64_t result@<X0>, unsigned int *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 56);
  v4 = v3 - 1;
  v5 = *a2;
  v6 = (v3 - 1) & v5;
  v7 = *(result + 72);
  v8 = *(result + 64);
  v9 = *(v7 + 4 * v6);
  v10 = *(result + 40);
  if (v8 == v9)
  {
LABEL_2:
    v11 = v6;
    goto LABEL_3;
  }

  if (v10)
  {
    v11 = -1;
    v15 = 1;
    do
    {
      if (*(result + 32) == v9)
      {
        if (v11 == -1)
        {
          v11 = v6;
        }
      }

      else if (v5 == v9)
      {
        goto LABEL_17;
      }

      v6 = (v6 + v15) & v4;
      v9 = *(v7 + 4 * v6);
      ++v15;
    }

    while (v8 != v9);
    if (v11 != -1)
    {
      goto LABEL_3;
    }

    goto LABEL_2;
  }

  v16 = 1;
  while (v5 != v9)
  {
    v6 = (v6 + v16) & v4;
    v9 = *(v7 + 4 * v6);
    ++v16;
    if (v8 == v9)
    {
      v10 = 0;
      goto LABEL_2;
    }
  }

LABEL_17:
  if (v6 != -1)
  {
    v14 = 0;
    v13 = (v7 + 4 * v6);
    goto LABEL_9;
  }

  v11 = -1;
LABEL_3:
  v12 = *(result + 48);
  if ((v12 - v10) >= 0x3FFFFFFFFFFFFFFFLL)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_195A000(exception, "insert overflow");
  }

  if (v10 && *(result + 32) == *(v7 + 4 * v11))
  {
    *(result + 40) = v10 - 1;
  }

  else
  {
    *(result + 48) = v12 + 1;
  }

  v13 = (v7 + 4 * v11);
  *v13 = v5;
  v14 = 1;
LABEL_9:
  *a3 = result;
  *(a3 + 8) = v13;
  *(a3 + 16) = v7 + 4 * v3;
  *(a3 + 24) = v14;
  return result;
}

uint64_t sub_2B67BC(uint64_t a1)
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
    sub_2B68FC(&v18, a1, v5);
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
    v12 = *(a1 + 40);
    *(a1 + 40) = v21;
    v21 = v12;
    v13 = *(a1 + 56);
    v14 = v22;
    *(a1 + 56) = v22;
    v22 = v13;
    v15 = *(a1 + 64);
    *(a1 + 64) = v23;
    v23 = v15;
    v16 = *(a1 + 72);
    *(a1 + 72) = v24;
    v24 = v16;
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), v14)));
    *(a1 + 24) = 0;
    v18 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*&v19, v13)));
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

float sub_2B68FC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = 0;
  if (*(a2 + 25))
  {
    *a1 = vcvtq_u64_f64(vcvtq_f64_f32(vmul_f32(*(a1 + 16), 0)));
    *(a1 + 24) = 0;
    sub_2B6A38(a1, a2, a3);
  }

  else
  {
    v5 = 4;
    if (a3 > 4)
    {
      goto LABEL_5;
    }

    while (1)
    {
      v6 = *(a1 + 16) * v5;
      if (*(a2 + 48) - *(a2 + 40) < v6)
      {
        break;
      }

      do
      {
LABEL_5:
        if ((v5 & 0x8000000000000000) != 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(exception, "resize overflow");
        }

        v5 *= 2;
      }

      while (v5 < a3);
    }

    *(a1 + 56) = v5;
    result = *(a1 + 20) * v5;
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 24) = 0;
  }

  return result;
}

void sub_2B6A38(uint64_t a1, uint64_t a2, unint64_t a3)
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

  sub_2B6C24(a1, v6);
  v7 = *(a2 + 56);
  if (v7)
  {
    v8 = *(a2 + 64);
    if (*(a2 + 40))
    {
      v9 = 4 * v7;
      v10 = *(a2 + 72);
      while (v8 == *v10 || *(a2 + 32) == *v10)
      {
        ++v10;
        v9 -= 4;
        if (!v9)
        {
          goto LABEL_38;
        }
      }
    }

    else
    {
      v21 = 4 * v7;
      v10 = *(a2 + 72);
      while (v8 == *v10)
      {
        ++v10;
        v21 -= 4;
        if (!v21)
        {
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    v10 = *(a2 + 72);
  }

  v12 = *(a2 + 72) + 4 * v7;
  if (v10 != v12)
  {
    v13 = *(a1 + 56) - 1;
    v14 = *(a1 + 72);
    do
    {
      v15 = *v10;
      v16 = *(a1 + 64);
      v17 = v13 & v15;
      if (v16 != *(v14 + 4 * (v13 & v15)))
      {
        v18 = 1;
        do
        {
          v17 = (v17 + v18++) & v13;
        }

        while (v16 != *(v14 + 4 * v17));
      }

      *(v14 + 4 * v17) = v15;
      ++*(a1 + 48);
      if (++v10 != v12)
      {
        v19 = *(a2 + 64);
        if (*(a2 + 40))
        {
          do
          {
            if (v19 != *v10 && *(a2 + 32) != *v10)
            {
              break;
            }

            ++v10;
          }

          while (v10 != v12);
        }

        else
        {
          do
          {
            if (v19 != *v10)
            {
              break;
            }

            ++v10;
          }

          while (v10 != v12);
        }
      }
    }

    while (v10 != v12);
  }

LABEL_38:
  ++*(a1 + 28);
}

uint64x2_t sub_2B6C24(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 72);
  if (!v4)
  {
    v5 = malloc_type_malloc(4 * a2, 0x100004052888210uLL);
LABEL_6:
    *(a1 + 72) = v5;
    v4 = v5;
    goto LABEL_7;
  }

  if (*(a1 + 56) != a2)
  {
    v5 = malloc_type_realloc(*(a1 + 72), 4 * a2, 0x100004052888210uLL);
    if (!v5)
    {
      fprintf(__stderrp, "sparsehash: FATAL ERROR: failed to reallocate %lu elements for ptr %p", a2, v4);
      exit(1);
    }

    goto LABEL_6;
  }

LABEL_7:
  if (a2)
  {
    v6 = *(a1 + 64);
    v7 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v8 = v4;
    if (v7 < 7)
    {
      goto LABEL_16;
    }

    v9 = v7 + 1;
    v8 = v4 + (v9 & 0x7FFFFFFFFFFFFFF8);
    v10 = vdupq_n_s32(v6);
    v11 = v4 + 1;
    v12 = v9 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v11[-1] = v10;
      *v11 = v10;
      v11 += 2;
      v12 -= 8;
    }

    while (v12);
    if (v9 != (v9 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_16:
      do
      {
        *v8++ = v6;
      }

      while (v8 != (v4 + 4 * a2));
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  result = vcvtq_u64_f64(vcvtq_f64_f32(vmul_n_f32(*(a1 + 16), a2)));
  *a1 = result;
  *(a1 + 24) = 0;
  return result;
}

void sub_2B6D50(int *a1, unsigned int a2, int a3, uint64_t a4)
{
  v6 = (a1 - *a1);
  v7 = *v6;
  if (v7 < 0xB)
  {
    if (v7 < 7)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!v6[5])
  {
    if (v7 >= 0xD)
    {
      v8 = v6[6] != 0;
      goto LABEL_9;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v8 = 1;
LABEL_9:
  v9 = v6[3];
  if (v6[3])
  {
    v10 = (a1 + v9 + *(a1 + v9));
    if (*v10)
    {
      v52 = *v10;
      v50 = *(a1 + v9);
      v11 = *(v10 + 2);
      v12 = *(v10 + 3);
      v13 = sub_57A90(a2);
      v14 = a2 & ~(-1 << (v13 & 0xFE));
      v15 = sub_581D8(v14);
      v16 = sub_581D8(v14 >> 1);
      v17 = 1 << -(v13 >> 1);
      if (v13 < 2)
      {
        v17 = -2;
      }

      v18 = (v17 * v15 + 4 * v11);
      LODWORD(v19) = v17 * v16 + 4 * v12;
      if (v19 >= 0xFFFFFFFE)
      {
        v19 = 4294967294;
      }

      else
      {
        v19 = v19;
      }

      v55 = v18 | (v19 << 32);
      v56 = 0x7FFFFFFF;
      if (v8)
      {
        v20 = (a1 - *a1);
        if (*v20 >= 0xDu && v20[6])
        {
          v21 = *(a1 + v20[6] + *(a1 + v20[6]) + 4);
        }

        else
        {
          v33 = *(a1 + v20[5] + *(a1 + v20[5]) + 4);
          if (v33 == 0xFFFF)
          {
LABEL_37:
            sub_2B7150(a4, &v55);
            if (v52 == 1)
            {
              return;
            }

            v35 = 0;
            v53 = v52 - 1;
            for (i = v9 + v50 + 10; ; i += 4)
            {
              v38 = *(a1 + i - 2);
              if (*(a1 + i - 6) == v38)
              {
                v38 = *(a1 + i - 6);
                if (*(a1 + i - 4) == *(a1 + i))
                {
                  goto LABEL_44;
                }
              }

              v39 = *(a1 + i);
              v40 = sub_57A90(a2);
              v41 = a2 & ~(-1 << (v40 & 0xFE));
              v42 = sub_581D8(v41);
              v43 = sub_581D8(v41 >> 1);
              v44 = 1 << -(v40 >> 1);
              if (v40 < 2)
              {
                v44 = -2;
              }

              v45 = (v44 * v42 + 4 * v38);
              LODWORD(v46) = v44 * v43 + 4 * v39;
              if (v46 >= 0xFFFFFFFE)
              {
                v46 = 4294967294;
              }

              else
              {
                v46 = v46;
              }

              v55 = v45 | (v46 << 32);
              v56 = 0x7FFFFFFF;
              v47 = (a1 - *a1);
              if (*v47 >= 0xDu && v47[6])
              {
                v37 = *(&a1[v35 + 2] + v47[6] + *(a1 + v47[6]));
              }

              else
              {
                v48 = *(a1 + 2 * v35 + v47[5] + *(a1 + v47[5]) + 6);
                if (v48 == 0xFFFF)
                {
                  goto LABEL_43;
                }

                v49 = v47[4];
                if (v49)
                {
                  LODWORD(v49) = *(a1 + v49);
                }

                v37 = v48 + a3 + v49;
              }

              v56 = v37;
LABEL_43:
              sub_2B7150(a4, &v55);
LABEL_44:
              if (v53 == ++v35)
              {
                return;
              }
            }
          }

          v34 = v20[4];
          if (v34)
          {
            LODWORD(v34) = *(a1 + v34);
          }

          v21 = v33 + a3 + v34;
        }

        v56 = v21;
        goto LABEL_37;
      }

      sub_2B7150(a4, &v55);
      if (v52 != 1)
      {
        v22 = v52 - 1;
        v23 = (a1 + v50 + v9 + 10);
        do
        {
          v32 = *(v23 - 1);
          if (*(v23 - 3) != v32 || (v32 = *(v23 - 3), *(v23 - 2) != *v23))
          {
            v24 = *v23;
            v25 = sub_57A90(a2);
            v26 = a2 & ~(-1 << (v25 & 0xFE));
            v27 = sub_581D8(v26);
            v28 = sub_581D8(v26 >> 1);
            v29 = 1 << -(v25 >> 1);
            if (v25 < 2)
            {
              v29 = -2;
            }

            v30 = (v29 * v27 + 4 * v32);
            LODWORD(v31) = v29 * v28 + 4 * v24;
            if (v31 >= 0xFFFFFFFE)
            {
              v31 = 4294967294;
            }

            else
            {
              v31 = v31;
            }

            v55 = v30 | (v31 << 32);
            v56 = 0x7FFFFFFF;
            sub_2B7150(a4, &v55);
          }

          v23 += 2;
          --v22;
        }

        while (v22);
      }
    }
  }
}

void sub_2B7150(uint64_t a1, unsigned int *a2)
{
  v4 = *a1;
  v5 = *v4;
  if (*v4 == -1 && HIDWORD(*v4) == -1)
  {
    v38 = *a2;
    v4[2] = a2[2];
    *v4 = v38;
  }

  else
  {
    v7 = *(a1 + 8);
    v8.i64[0] = v5;
    v8.i64[1] = HIDWORD(v5);
    v9 = vcvtq_f64_u64(v8);
    v8.i64[0] = *a2;
    v8.i64[1] = HIDWORD(*a2);
    v10 = vsubq_f64(vcvtq_f64_u64(v8), v9);
    v11 = vmulq_f64(v10, v10);
    v12 = vaddvq_f64(v11);
    if (v12 == 0.0)
    {
      goto LABEL_9;
    }

    if (v12 <= 0.0)
    {
      v12 = -v12;
    }

    if (v12 < 2.22044605e-16)
    {
LABEL_9:
      v13 = 0.0;
    }

    else
    {
      v39.i64[0] = *v7;
      v39.i64[1] = HIDWORD(*v7);
      v40 = vmulq_f64(v10, vsubq_f64(vcvtq_f64_u64(v39), v9));
      *&v13 = *&vdivq_f64(vaddq_f64(v40, vdupq_laneq_s64(v40, 1)), vaddq_f64(v11, vdupq_laneq_s64(v11, 1)));
    }

    if (v13 <= 1.0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1.0;
    }

    v15 = v13 < 0.0;
    v16 = 0.0;
    if (!v15)
    {
      v16 = v14;
    }

    v17 = sub_6EFC0(v4, a2, v16);
    v19 = v18;
    LODWORD(v20) = v7[1];
    v21 = exp(3.14159265 - v20 * 6.28318531 / 4294967300.0);
    v22 = atan((v21 - 1.0 / v21) * 0.5) * 57.2957795 * 0.0174532925;
    v23 = exp(3.14159265 - HIDWORD(v17) * 6.28318531 / 4294967300.0);
    v24 = atan((v23 - 1.0 / v23) * 0.5) * 57.2957795 * 0.0174532925;
    v25.i64[0] = *v7;
    v25.i64[1] = v17;
    v26 = vmulq_f64(vaddq_f64(vdivq_f64(vmulq_f64(vcvtq_f64_u64(v25), vdupq_n_s64(0x4076800000000000uLL)), vdupq_n_s64(0x41EFFFFFFFE00000uLL)), vdupq_n_s64(0xC066800000000000)), vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v41 = vsubq_f64(v26, vdupq_laneq_s64(v26, 1)).f64[0];
    v27 = sin((v22 - v24) * 0.5);
    v28 = v27 * v27;
    v29 = cos(v22);
    v30 = v29 * cos(v24);
    v31 = sin(0.5 * v41);
    v32 = atan2(sqrt(v31 * v31 * v30 + v28), sqrt(1.0 - (v31 * v31 * v30 + v28)));
    v33 = (v32 + v32) * 6372797.56;
    v34 = *(a1 + 16);
    if (v33 < *v34)
    {
      *v34 = v33;
      v35 = *(a1 + 24);
      *v35 = v17;
      *(v35 + 8) = v19;
      **(a1 + 32) = **(a1 + 40);
    }

    v36 = *a1;
    v37 = *a2;
    v36[2] = a2[2];
    *v36 = v37;
    ++**(a1 + 40);
  }
}

void sub_2B7420()
{
  exception = __cxa_allocate_exception(8uLL);
}

void sub_2B746C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    sub_1794();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    sub_1808();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_2B7584(uint64_t *a1, uint64_t ***a2, uint64_t a3)
{
  *v21 = 0u;
  *__p = 0u;
  v23 = 1065353216;
  v20[0] = a1;
  v20[1] = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_2B8B58(a2, 15, &v17);
  v5 = v17;
  v6 = v18;
  if (v17 != v18)
  {
    do
    {
      v7 = *v5;
      if (sub_2D5204(*a1))
      {
        v8 = sub_2B4D24(a1, v7, 1);
        v9 = &v8[-*v8];
        if (*v9 < 5u)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v9 + 2);
          if (v10)
          {
            v10 = (v10 + v8 + *(v10 + v8));
          }
        }

        v11 = *v10;
        v24[0] = v21;
        v24[1] = a1;
        v24[2] = v20;
        v24[3] = a3;
        if (v11)
        {
          v12 = 4 * v11;
          v13 = v10 + 1;
          do
          {
            sub_2BB4E4(v24, (v13 + *v13));
            ++v13;
            v12 -= 4;
          }

          while (v12);
        }
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v17;
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }

  v14 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v21[0];
  v21[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void sub_2B76E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_11BD8(&a15);
  _Unwind_Resume(a1);
}

void sub_2B7710(uint64_t *a1, uint64_t ***a2, uint64_t a3)
{
  *v21 = 0u;
  *__p = 0u;
  v23 = 1065353216;
  v20[0] = a1;
  v20[1] = a2;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  sub_2B8B58(a2, 15, &v17);
  sub_2B889C(&v17);
  v5 = v17;
  v6 = v18;
  if (v17 != v18)
  {
    do
    {
      v7 = *v5;
      if (sub_2D5204(*a1))
      {
        v8 = sub_2B4D24(a1, v7, 1);
        v9 = &v8[-*v8];
        if (*v9 < 5u)
        {
          v10 = 0;
        }

        else
        {
          v10 = *(v9 + 2);
          if (v10)
          {
            v10 = (v10 + v8 + *(v10 + v8));
          }
        }

        v11 = *v10;
        v24[0] = v21;
        v24[1] = a1;
        v24[2] = v20;
        v24[3] = a3;
        if (v11)
        {
          v12 = 4 * v11;
          v13 = v10 + 1;
          do
          {
            sub_2BBC6C(v24, (v13 + *v13));
            ++v13;
            v12 -= 4;
          }

          while (v12);
        }
      }

      ++v5;
    }

    while (v5 != v6);
    v5 = v17;
  }

  if (v5)
  {
    v18 = v5;
    operator delete(v5);
  }

  v14 = __p[0];
  if (__p[0])
  {
    do
    {
      v15 = *v14;
      operator delete(v14);
      v14 = v15;
    }

    while (v15);
  }

  v16 = v21[0];
  v21[0] = 0;
  if (v16)
  {
    operator delete(v16);
  }
}

void sub_2B7878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_11BD8(&a15);
  _Unwind_Resume(a1);
}

void sub_2B78A8(uint64_t *a1, uint64_t ****a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      sub_2B7584(a1, v3, a3);
      v3 += 3;
    }

    while (v3 != v4);
  }
}

void sub_2B78FC(uint64_t *a1, uint64_t ****a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      sub_2B7710(a1, v3, a3);
      v3 += 3;
    }

    while (v3 != v4);
  }
}

uint64_t sub_2B7950(uint64_t a1, __int128 *a2)
{
  v3 = 0;
  v4 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  *a1 = v4;
  do
  {
    v5 = a1 + v3;
    *(v5 + 16) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = 0;
    *(v5 + 48) = 0;
    v3 += 48;
  }

  while (v3 != 3840);
  *(a1 + 3856) = 0u;
  v6 = v4;
  if (v4)
  {
    v6 = sub_2D5658(v4);
  }

  *(a1 + 3872) = v6;
  return a1;
}

double sub_2B79D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2B7A7C(a1, a2 & 0xFFFFFFFFFFFFLL, &v6);
  *a3 = a1;
  result = *&v6;
  *(a3 + 8) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = 0;
  return result;
}

double sub_2B7A20@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIWORD(a2);
  sub_2B7A7C(a1, a2 & 0xFFFFFFFFFFFFLL, &v7);
  *a3 = a1;
  result = *&v7;
  *(a3 + 8) = v7;
  *(a3 + 24) = v8;
  *(a3 + 32) = v5;
  return result;
}

void sub_2B7A7C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_2AF704(a1, a2, 0);
  v7 = &v6[-*v6];
  if (*v7 >= 5u && (v8 = *(v7 + 2)) != 0)
  {
    v9 = &v6[v8 + *&v6[v8]];
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_2B53A8(v9, a2);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (sub_2B817C(a1, a2))
  {
    v11 = (v10 - *v10);
    v12 = *v11;
    if (v12 >= 0x23)
    {
      if (v11[17])
      {
        if (*(v10 + v11[17] + *(v10 + v11[17])))
        {
          operator new();
        }

        return;
      }

      if (v12 >= 0x83)
      {
        v13 = v11[65];
        if (v13)
        {
          if (*(v10 + v13 + *(v10 + v13)) == -1)
          {
            operator new();
          }
        }
      }
    }

    operator new();
  }
}

void sub_2B7EE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B7F14(uint64_t a1, unint64_t a2, void *a3)
{
  a3[1] = *a3;
  sub_2B7A7C(a1, a2, &v7);
  v4 = v8 - v7 + ((a3[1] - *a3) >> 2);
  if (v4 > (a3[2] - *a3) >> 2)
  {
    if (!(v4 >> 62))
    {
      operator new();
    }

    sub_1794();
  }

  v5 = v7;
  v6 = v8;
  v10 = a3;
  if (v7 != v8)
  {
    do
    {
      v9 = *v5;
      sub_247FC(&v10, &v9);
      ++v5;
    }

    while (v5 != v6);
    v5 = v7;
  }

  if (v5)
  {
    v8 = v5;
    operator delete(v5);
  }
}

void sub_2B8024(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_2B8044(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  sub_2B7F14(a1, a2 & 0xFFFFFFFFFFFFLL, a3);
  if ((a2 & 0xFF000000000000) == 0x1000000000000)
  {
    v5 = *a3;
    v6 = a3[1];
    v7 = (v6 - 4);
    if (*a3 != v6 && v7 > v5)
    {
      v9 = v6 - 8;
      if (v6 - 8 <= v5 + 4)
      {
        v9 = v5 + 4;
      }

      v10 = v9 - 4;
      if (v10 == v5)
      {
        v11 = *a3;
      }

      else
      {
        v11 = v5 + 1;
      }

      v12 = v10 == v5;
      v13 = (v10 - v11) >> 3;
      if (!v12)
      {
        ++v13;
      }

      if (v13 < 0x13 || v5 < v6 && v6 - 4 * v13 - 4 < v5 + 4 * v13 + 4)
      {
        goto LABEL_20;
      }

      v14 = v13 + 1;
      v15 = 4 * (v14 & 0x7FFFFFFFFFFFFFF8);
      v7 = (v7 - v15);
      v16 = v5 + v15;
      v17 = (v5 + 16);
      v18 = (v6 - 16);
      v19 = v14 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v20 = v17[-1];
        v21 = *v17;
        v22 = vrev64q_s32(*v18);
        v23 = vrev64q_s32(v18[-1]);
        v17[-1] = vextq_s8(v22, v22, 8uLL);
        *v17 = vextq_s8(v23, v23, 8uLL);
        v24 = vrev64q_s32(v20);
        v25 = vrev64q_s32(v21);
        v18[-1] = vextq_s8(v25, v25, 8uLL);
        *v18 = vextq_s8(v24, v24, 8uLL);
        v17 += 2;
        v18 -= 2;
        v19 -= 8;
      }

      while (v19);
      v5 = v16;
      if (v14 != (v14 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_20:
        v26 = v5 + 4;
        do
        {
          v27 = *(v26 - 4);
          *(v26 - 4) = *v7;
          *v7-- = v27;
          v28 = v26 >= v7;
          v26 += 4;
        }

        while (!v28);
      }
    }
  }
}

uint64_t sub_2B817C(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 3872) != 1)
  {
    return 1;
  }

  v4 = sub_2AF704(a1, a2, 0);
  v5 = &v4[-*v4];
  if (*v5 >= 5u && (v6 = *(v5 + 2)) != 0)
  {
    v7 = &v4[v6 + *&v4[v6]];
  }

  else
  {
    v7 = 0;
  }

  v9 = sub_2B53A8(v7, a2);
  v10 = (v9 - *v9);
  v11 = *v10;
  if (v11 < 0x23)
  {
    return 0;
  }

  if (v10[17])
  {
    v12 = (v9 + v10[17] + *(v9 + v10[17]));
    v13 = *v12;
    if (v13)
    {
      v14 = v12 + 1;
      v15 = 8 * v13 - 8;
      do
      {
        v14 += 2;
        result = sub_2D5204(*a1);
        if (result)
        {
          v16 = v15 == 0;
        }

        else
        {
          v16 = 1;
        }

        v15 -= 8;
      }

      while (!v16);
      return result;
    }

    return 1;
  }

  if (v11 < 0x7F)
  {
    return 0;
  }

  if (v10[63])
  {
    v17 = v9;
    v18 = (a2 << (2 * (*(v9 + v10[63]) & 0xF))) + (*(v9 + v10[63]) >> 4);
    result = sub_2D5204(*a1);
    if (!result)
    {
      return result;
    }

    goto LABEL_20;
  }

  if (v11 < 0x81)
  {
    return 0;
  }

  v42 = v10[64];
  if (!v42)
  {
    return 0;
  }

  v17 = v9;
  v18 = *(v9 + v42);
  result = sub_2D5204(*a1);
  if (!result)
  {
    return result;
  }

LABEL_20:
  v19 = (v17 - *v17);
  if (*v19 < 0x83u)
  {
    return 1;
  }

  v20 = v19[65];
  if (!v20)
  {
    return 1;
  }

  v21 = *(v17 + v20);
  v22 = *(v17 + v20 + v21);
  if (!v22)
  {
    return 1;
  }

  v23 = 4 * v22 - 4;
  v24 = (v17 + v21 + v20 + 4);
  do
  {
    v25 = *v24++;
    v26 = sub_57A90(v18);
    v27 = v26 >> 1;
    v28 = v26 & 0xFE;
    v29 = v18 & ~(-1 << (v26 & 0xFE));
    v30 = sub_581D8(v29);
    v31 = sub_581D8(v29 >> 1);
    v32 = v30 + v25;
    v33 = v31 + (v25 >> 8);
    v34 = ((((((v32 & ~(v32 >> 31)) - v32 + (v32 >> 31)) >> v27) + (v32 >> 31)) << v27) + v32) % (1 << v27);
    v35 = ((((((v33 & ~(v33 >> 31)) - v33 + (v33 >> 31)) >> v27) + (v33 >> 31)) << v27) + v33) % (1 << v27);
    v36 = -1 << v27;
    v37 = ~(-1 << v27);
    if (v37 < v34)
    {
      v38 = ~v36;
    }

    else
    {
      v38 = v34;
    }

    if (v37 < v35)
    {
      v39 = ~v36;
    }

    else
    {
      v39 = v35;
    }

    sub_58168(v38, v39);
    v18 = v40 | (1 << v28);
    result = sub_2D5204(*a1);
    if (result)
    {
      v41 = v23 == 0;
    }

    else
    {
      v41 = 1;
    }

    v23 -= 4;
  }

  while (!v41);
  return result;
}

int *sub_2B8438(void ***a1, unint64_t a2)
{
  result = sub_2AF704(a1, a2, 1);
  if (result)
  {
    v5 = (result - *result);
    if (*v5 < 5u)
    {
      return 0;
    }

    v6 = v5[2];
    if (!v6 || *(result + v6 + *(result + v6)) <= HIDWORD(a2))
    {
      return 0;
    }

    sub_2B7A7C(a1, a2, &__p);
    v7 = __p;
    v8 = v13;
    if (__p == v13)
    {
LABEL_9:
      result = sub_2B85B8(a1, *v7, 0);
      if (result)
      {
        result = sub_2B85B8(a1, *(v13 - 1), 1);
      }

      v10 = __p;
      if (__p)
      {
LABEL_16:
        v13 = v10;
        v11 = result;
        operator delete(v10);
        return v11;
      }
    }

    else
    {
      while (1)
      {
        v14 = *v7;
        v15[0] = sub_374F8(&v14);
        v15[1] = v9;
        if (sub_80B60(a1, v15) == 1)
        {
          break;
        }

        if (++v7 == v8)
        {
          v7 = __p;
          goto LABEL_9;
        }
      }

      result = 0;
      v10 = __p;
      if (__p)
      {
        goto LABEL_16;
      }
    }
  }

  return result;
}

void sub_2B8598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2B85B8(void ***a1, unint64_t a2, int a3)
{
  LODWORD(v30) = a2;
  v32[0] = sub_374F8(&v30);
  v32[1] = v6;
  if (!sub_80B60(a1, v32))
  {
    return 1;
  }

  v7 = sub_2B4D24(a1, a2, 0);
  v8 = &v7[-*v7];
  if (*v8 < 5u)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v8 + 2);
    if (v9)
    {
      v9 += &v7[*&v7[v9]];
    }
  }

  v11 = (v9 + 4 * HIDWORD(a2) + 4 + *(v9 + 4 * HIDWORD(a2) + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13);
    v15 = *v14;
    if (a3)
    {
      v16 = *(v14 + v15) - 1;
    }

    else
    {
      v16 = 0;
    }

    v19 = sub_2B8750((v14 + v15), v16);
    v20 = *v19;
    v21 = v19[1];
    v22 = sub_57A90(a2);
    v23 = a2 & ~(-1 << (v22 & 0xFE));
    v24 = sub_581D8(v23);
    v25 = sub_581D8(v23 >> 1);
    v26 = 1 << -(v22 >> 1);
    if (v22 < 2)
    {
      v26 = -2;
    }

    v27 = v26 * v25;
    v18 = (v26 * v24 + 4 * v20);
    v28 = v27 + 4 * v21;
    if (v28 >= 0xFFFFFFFE)
    {
      v29 = 4294967294;
    }

    else
    {
      v29 = v28;
    }

    v17 = v29 << 32;
  }

  else
  {
    v17 = 0xFFFFFFFF00000000;
    v18 = 0xFFFFFFFFLL;
  }

  v30 = v18 | v17;
  v31 = 0x7FFFFFFF;
  return sub_7FDC0(a1, &v30);
}

uint64_t sub_2B8750(unsigned int *a1, unsigned int a2)
{
  if (!a1 || *a1 <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v8, a2);
    sub_23E08("Flatbuffer vector requested index ", &v8, &v9);
    sub_30F54(" is out of range", &v9, &v10);
    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v5 = &v10;
    }

    else
    {
      v5 = v10.__r_.__value_.__r.__words[0];
    }

    if ((v10.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v10.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v10.__r_.__value_.__l.__size_;
    }

    v7 = sub_2D390(exception, v5, size);
  }

  return &a1[a2 + 1];
}

void sub_2B881C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void sub_2B889C(void *a1)
{
  v39 = (a1[1] - *a1) >> 2;
  if (v39 >= 2)
  {
    for (i = 1; i != v39; ++i)
    {
      v3 = i - 1;
      v4 = *a1;
      v5 = sub_57A90(*(*a1 + 4 * (i - 1)));
      v6 = sub_581D8((v4[i - 1] & ~(-1 << (v5 & 0xFE))) >> 1);
      v7 = *a1;
      v8 = sub_57A90(*(*a1 + 4 * i));
      if (v6 >= sub_581D8((v7[i] & ~(-1 << (v8 & 0xFE))) >> 1))
      {
        v9 = *a1;
        v10 = sub_57A90(*(*a1 + 4 * i));
        v11 = sub_581D8(v9[i] & ~(-1 << (v10 & 0xFE)));
        v12 = *a1;
        v13 = sub_57A90(*(*a1 + 4 * v3));
        v14 = v11 - sub_581D8(v12[v3] & ~(-1 << (v13 & 0xFE)));
        v15 = v14 <= 1 ? 1 : v14;
        if (v14 >= 2)
        {
          v16 = 1;
          do
          {
            v18 = *a1;
            v19 = sub_57A90(*(*a1 + 4 * v3));
            v20 = v19 >> 1;
            v21 = v19 & 0xFE;
            LODWORD(v18) = v18[v3] & ~(-1 << (v19 & 0xFE));
            v22 = sub_581D8(v18);
            v23 = sub_581D8(v18 >> 1);
            v24 = ((((((v23 & ~(v23 >> 31)) - v23 + (v23 >> 31)) >> v20) + (v23 >> 31)) << v20) + v23) % (1 << v20);
            v25 = -1 << v20;
            v26 = ~(-1 << v20);
            if (v26 < (((((((v22 + v16) & ~((v22 + v16) >> 31)) - (v22 + v16) + ((v22 + v16) >> 31)) >> v20) + ((v22 + v16) >> 31)) << v20) + v22 + v16) % (1 << v20))
            {
              v27 = ~v25;
            }

            else
            {
              v27 = (((((((v22 + v16) & ~((v22 + v16) >> 31)) - (v22 + v16) + ((v22 + v16) >> 31)) >> v20) + ((v22 + v16) >> 31)) << v20) + v22 + v16) % (1 << v20);
            }

            if (v26 < v24)
            {
              v28 = ~v25;
            }

            else
            {
              v28 = v24;
            }

            sub_58168(v27, v28);
            v30 = v29 | (1 << v21);
            v32 = a1[1];
            v31 = a1[2];
            if (v32 < v31)
            {
              *v32 = v30;
              v17 = (v32 + 1);
            }

            else
            {
              v33 = *a1;
              v34 = v32 - *a1;
              v35 = v34 >> 2;
              v36 = (v34 >> 2) + 1;
              if (v36 >> 62)
              {
                sub_1794();
              }

              v37 = v31 - v33;
              if (v37 >> 1 > v36)
              {
                v36 = v37 >> 1;
              }

              if (v37 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v38 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v38 = v36;
              }

              if (v38)
              {
                if (!(v38 >> 62))
                {
                  operator new();
                }

                sub_1808();
              }

              *(4 * v35) = v30;
              v17 = 4 * v35 + 4;
              memcpy(0, v33, v34);
              *a1 = 0;
              a1[1] = v17;
              a1[2] = 0;
              if (v33)
              {
                operator delete(v33);
              }
            }

            a1[1] = v17;
            ++v16;
          }

          while (v16 != v15);
        }
      }
    }
  }
}

void sub_2B8B58(uint64_t ***a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if (*a1 != a1[1])
  {
    v4 = *v3;
    v5 = v3[1];
    if (*v3 != v5)
    {
      v22 = 0;
      v23 = 0;
      v24 = 0;
      if (0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 2) > 1)
      {
        v16 = *v3 + 12;
        __p = **v3;
        __p_8 = *(v16 - 4);
        __p_12 = *v16;
        v28 = *(v16 + 8);
        memset(v21, 0, sizeof(v21));
        operator new();
      }

      v7 = a3[1];
      v8 = 126 - 2 * __clz((v7 - *a3) >> 2);
      if (v7 == *a3)
      {
        v9 = 0;
      }

      else
      {
        v9 = v8;
      }

      sub_2B91D0(*a3, v7, v21, v9, 1);
      v10 = a3[1];
      if (*a3 != v10)
      {
        v11 = (*a3 + 4);
        while (v11 != v10)
        {
          v12 = *(v11 - 1);
          v13 = *v11++;
          if (v12 == v13)
          {
            v14 = v11 - 2;
            while (v11 != v10)
            {
              v15 = v12;
              v12 = *v11;
              if (v15 != *v11)
              {
                v14[1] = v12;
                ++v14;
              }

              ++v11;
            }

            if (v14 + 1 != v10)
            {
              a3[1] = (v14 + 1);
            }

            break;
          }
        }
      }

      v17 = v22;
      if (v22)
      {
        v18 = v23;
        v19 = v22;
        if (v23 != v22)
        {
          do
          {
            v20 = *(v18 - 3);
            if (v20)
            {
              *(v18 - 2) = v20;
              operator delete(v20);
            }

            v18 -= 32;
          }

          while (v18 != v17);
          v19 = v22;
        }

        v23 = v17;
        operator delete(v19);
      }
    }
  }
}

void sub_2B8E38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_37484(va);
  _Unwind_Resume(a1);
}

void sub_2B8E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_37484(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_2B8E88(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a3[1];
    do
    {
      while (v6 >= a3[2])
      {
        v6 = sub_2B8FD4(a3, v5);
        a3[1] = v6;
        v5 += 32;
        if (v5 == a2)
        {
          return a2;
        }
      }

      v7 = *v5;
      *(v6 + 8) = 0;
      *v6 = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      v9 = *(v5 + 8);
      v8 = *(v5 + 16);
      if (v8 != v9)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v8 - v9) >> 2) < 0x1555555555555556)
        {
          operator new();
        }

        sub_1794();
      }

      v6 += 32;
      a3[1] = v6;
      a3[1] = v6;
      v5 += 32;
    }

    while (v5 != a2);
  }

  return a2;
}

void sub_2B8FB0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t sub_2B8FD4(uint64_t *a1, int *a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1794();
  }

  v5 = a1[2] - *a1;
  if (v5 >> 4 > v3)
  {
    v3 = v5 >> 4;
  }

  if (v5 >= 0x7FFFFFFFFFFFFFE0)
  {
    v6 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (!(v6 >> 59))
    {
      operator new();
    }

    sub_1808();
  }

  v7 = 32 * v2;
  v8 = *a2;
  *&dword_8[8 * v2] = 0;
  *v7 = v8;
  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  v10 = *(a2 + 1);
  v9 = *(a2 + 2);
  if (v9 != v10)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v9 - v10) >> 2) < 0x1555555555555556)
    {
      operator new();
    }

    sub_1794();
  }

  v11 = v7 + 32;
  v12 = *a1;
  v13 = a1[1];
  v14 = v7 + *a1 - v13;
  if (v13 != *a1)
  {
    v15 = *a1;
    v16 = v14;
    do
    {
      *v16 = *v15;
      *(v16 + 16) = 0;
      *(v16 + 24) = 0;
      *(v16 + 8) = 0;
      *(v16 + 8) = *(v15 + 1);
      *(v16 + 24) = v15[3];
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = 0;
      v15 += 4;
      v16 += 32;
    }

    while (v15 != v13);
    do
    {
      v17 = v12[1];
      if (v17)
      {
        v12[2] = v17;
        operator delete(v17);
      }

      v12 += 4;
    }

    while (v12 != v13);
    v12 = *a1;
  }

  *a1 = v14;
  a1[1] = v11;
  a1[2] = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v11;
}

void sub_2B91AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 16) = v5;
    operator delete(v5);
  }

  sub_37A3C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_2B91D0(uint64_t result, unsigned int *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v92 = a2 - 1;
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 > 2)
    {
      switch(v12)
      {
        case 3uLL:

          return sub_2B991C(v9, v9 + 1, v92);
        case 4uLL:

          return sub_2B9C28(v9, v9 + 1, v9 + 2, v92);
        case 5uLL:

          return sub_2B9E7C(v9, v9 + 1, v9 + 2, v9 + 3, v92);
      }
    }

    else
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v31 = *(a2 - 1);
        v32 = *v9;
        v33 = sub_57A90(v31);
        v34 = sub_581D8((v31 & ~(-1 << (v33 & 0xFE))) >> 1);
        v35 = sub_57A90(v31);
        v36 = sub_581D8(v31 & ~(-1 << (v35 & 0xFE)));
        v37 = sub_57A90(v32);
        v38 = sub_581D8((v32 & ~(-1 << (v37 & 0xFE))) >> 1);
        v39 = sub_57A90(v32);
        result = sub_581D8(v32 & ~(-1 << (v39 & 0xFE)));
        v40 = v36 < result;
        if (v34 != v38)
        {
          v40 = v34 < v38;
        }

        if (v40)
        {
          v41 = *v9;
          *v9 = *(a2 - 1);
          *(a2 - 1) = v41;
        }

        return result;
      }
    }

    if (v12 <= 23)
    {
      break;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        return sub_2BACA4(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = v12 >> 1;
    v14 = &v9[v12 >> 1];
    if (v12 < 0x81)
    {
      sub_2B991C(&v9[v12 >> 1], v9, v92);
      if (a5)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_2B991C(v9, &v9[v12 >> 1], v92);
      v15 = v9 + 1;
      v16 = v13;
      sub_2B991C(v8 + 1, &v8[v16 - 1], a2 - 2);
      sub_2B991C(v8 + 2, &v15[v16], a2 - 3);
      sub_2B991C(&v8[v16 - 1], v14, &v15[v16]);
      v17 = *v8;
      *v8 = v8[v16];
      v8[v16] = v17;
      if (a5)
      {
        goto LABEL_20;
      }
    }

    v18 = *(v8 - 1);
    v19 = *v8;
    v20 = sub_57A90(v18);
    v21 = sub_581D8((v18 & ~(-1 << (v20 & 0xFE))) >> 1);
    v22 = sub_57A90(v18);
    v23 = sub_581D8(v18 & ~(-1 << (v22 & 0xFE)));
    v24 = sub_57A90(v19);
    v25 = sub_581D8((v19 & ~(-1 << (v24 & 0xFE))) >> 1);
    v26 = sub_57A90(v19);
    v27 = v23 < sub_581D8(v19 & ~(-1 << (v26 & 0xFE)));
    if (v21 != v25)
    {
      v27 = v21 < v25;
    }

    if (!v27)
    {
      result = sub_2BA17C(v8, a2);
      v9 = result;
      goto LABEL_25;
    }

LABEL_20:
    v28 = sub_2BA598(v8, a2);
    if ((v29 & 1) == 0)
    {
      goto LABEL_23;
    }

    v30 = sub_2BA938(v8, v28);
    v9 = v28 + 1;
    result = sub_2BA938(v28 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v28;
      if (v30)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v30)
    {
LABEL_23:
      result = sub_2B91D0(v8, v28, a3, -v11, a5 & 1);
      v9 = v28 + 1;
LABEL_25:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v42 = v9 + 1;
  v44 = v9 == a2 || v42 == a2;
  if (a5)
  {
    if (!v44)
    {
      v45 = 0;
      v46 = v9;
      do
      {
        v49 = *v46;
        v48 = v46[1];
        v46 = v42;
        v50 = sub_57A90(v48);
        v51 = sub_581D8((v48 & ~(-1 << (v50 & 0xFE))) >> 1);
        v52 = sub_57A90(v48);
        v53 = sub_581D8(v48 & ~(-1 << (v52 & 0xFE)));
        v54 = sub_57A90(v49);
        v55 = sub_581D8((v49 & ~(-1 << (v54 & 0xFE))) >> 1);
        v56 = sub_57A90(v49);
        result = sub_581D8(v49 & ~(-1 << (v56 & 0xFE)));
        v57 = v53 < result;
        if (v51 != v55)
        {
          v57 = v51 < v55;
        }

        if (v57)
        {
          v93 = v46;
          v58 = *v46;
          v59 = v45;
          do
          {
            *(v9 + v59 + 4) = *(v9 + v59);
            if (!v59)
            {
              v47 = v9;
              goto LABEL_51;
            }

            v60 = *(v9 + v59 - 4);
            v61 = sub_57A90(v58);
            v62 = sub_581D8((v58 & ~(-1 << (v61 & 0xFE))) >> 1);
            v63 = sub_57A90(v58);
            v64 = sub_581D8(v58 & ~(-1 << (v63 & 0xFE)));
            v65 = sub_57A90(v60);
            v66 = sub_581D8((v60 & ~(-1 << (v65 & 0xFE))) >> 1);
            v67 = sub_57A90(v60);
            result = sub_581D8(v60 & ~(-1 << (v67 & 0xFE)));
            v68 = v64 < result;
            if (v62 != v66)
            {
              v68 = v62 < v66;
            }

            v59 -= 4;
          }

          while (v68);
          v47 = (v9 + v59 + 4);
LABEL_51:
          *v47 = v58;
          v46 = v93;
        }

        v42 = v46 + 1;
        v45 += 4;
      }

      while (v46 + 1 != a2);
    }
  }

  else if (!v44)
  {
    do
    {
      v70 = *v8;
      v69 = v8[1];
      v8 = v42;
      v71 = sub_57A90(v69);
      v72 = sub_581D8((v69 & ~(-1 << (v71 & 0xFE))) >> 1);
      v73 = sub_57A90(v69);
      v74 = sub_581D8(v69 & ~(-1 << (v73 & 0xFE)));
      v75 = sub_57A90(v70);
      v76 = sub_581D8((v70 & ~(-1 << (v75 & 0xFE))) >> 1);
      v77 = sub_57A90(v70);
      result = sub_581D8(v70 & ~(-1 << (v77 & 0xFE)));
      v78 = v74 < result;
      if (v72 != v76)
      {
        v78 = v72 < v76;
      }

      if (v78)
      {
        v79 = *v8;
        v80 = v8;
        do
        {
          v81 = v80;
          v82 = *--v80;
          *v81 = v82;
          v83 = *(v81 - 2);
          v84 = sub_57A90(v79);
          v85 = sub_581D8((v79 & ~(-1 << (v84 & 0xFE))) >> 1);
          v86 = sub_57A90(v79);
          v87 = sub_581D8(v79 & ~(-1 << (v86 & 0xFE)));
          v88 = sub_57A90(v83);
          v89 = sub_581D8((v83 & ~(-1 << (v88 & 0xFE))) >> 1);
          v90 = sub_57A90(v83);
          result = sub_581D8(v83 & ~(-1 << (v90 & 0xFE)));
          v91 = v87 < result;
          if (v85 != v89)
          {
            v91 = v85 < v89;
          }
        }

        while (v91);
        *v80 = v79;
      }

      v42 = v8 + 1;
    }

    while (v8 + 1 != a2);
  }

  return result;
}

uint64_t sub_2B991C(unsigned int *a1, unsigned int *a2, unsigned int *a3)
{
  v6 = *a2;
  v7 = *a1;
  v8 = sub_57A90(*a2);
  v9 = sub_581D8((v6 & ~(-1 << (v8 & 0xFE))) >> 1);
  v10 = sub_57A90(v6);
  v11 = sub_581D8(v6 & ~(-1 << (v10 & 0xFE)));
  v12 = sub_57A90(v7);
  v13 = sub_581D8((v7 & ~(-1 << (v12 & 0xFE))) >> 1);
  v14 = sub_57A90(v7);
  v15 = v11 < sub_581D8(v7 & ~(-1 << (v14 & 0xFE)));
  if (v9 == v13)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9 < v13;
  }

  v17 = *a3;
  v18 = *a2;
  v19 = sub_57A90(*a3);
  v20 = sub_581D8((v17 & ~(-1 << (v19 & 0xFE))) >> 1);
  v21 = sub_57A90(v17);
  v22 = sub_581D8(v17 & ~(-1 << (v21 & 0xFE)));
  v23 = sub_57A90(v18);
  v24 = sub_581D8((v18 & ~(-1 << (v23 & 0xFE))) >> 1);
  v25 = sub_57A90(v18);
  v26 = v22 < sub_581D8(v18 & ~(-1 << (v25 & 0xFE)));
  if (v20 != v24)
  {
    v26 = v20 < v24;
  }

  if (v16)
  {
    v27 = *a1;
    if (v26)
    {
      *a1 = *a3;
      *a3 = v27;
    }

    else
    {
      *a1 = *a2;
      *a2 = v27;
      v40 = *a3;
      v41 = sub_57A90(*a3);
      v42 = sub_581D8((v40 & ~(-1 << (v41 & 0xFE))) >> 1);
      v43 = sub_57A90(v40);
      v44 = sub_581D8(v40 & ~(-1 << (v43 & 0xFE)));
      v45 = sub_57A90(v27);
      v46 = sub_581D8((v27 & ~(-1 << (v45 & 0xFE))) >> 1);
      v47 = sub_57A90(v27);
      v48 = v44 < sub_581D8(v27 & ~(-1 << (v47 & 0xFE)));
      if (v42 != v46)
      {
        v48 = v42 < v46;
      }

      if (v48)
      {
        v49 = *a2;
        *a2 = *a3;
        *a3 = v49;
      }
    }

    return 1;
  }

  if (v26)
  {
    v28 = *a2;
    *a2 = *a3;
    *a3 = v28;
    v29 = *a2;
    v30 = *a1;
    v31 = sub_57A90(*a2);
    v32 = sub_581D8((v29 & ~(-1 << (v31 & 0xFE))) >> 1);
    v33 = sub_57A90(v29);
    v34 = sub_581D8(v29 & ~(-1 << (v33 & 0xFE)));
    v35 = sub_57A90(v30);
    v36 = sub_581D8((v30 & ~(-1 << (v35 & 0xFE))) >> 1);
    v37 = sub_57A90(v30);
    v38 = v34 < sub_581D8(v30 & ~(-1 << (v37 & 0xFE)));
    if (v32 != v36)
    {
      v38 = v32 < v36;
    }

    if (v38)
    {
      v39 = *a1;
      *a1 = *a2;
      *a2 = v39;
    }

    return 1;
  }

  return 0;
}

uint64_t sub_2B9C28(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4)
{
  sub_2B991C(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = sub_57A90(*a4);
  v11 = sub_581D8((v8 & ~(-1 << (v10 & 0xFE))) >> 1);
  v12 = sub_57A90(v8);
  v13 = sub_581D8(v8 & ~(-1 << (v12 & 0xFE)));
  v14 = sub_57A90(v9);
  v15 = sub_581D8((v9 & ~(-1 << (v14 & 0xFE))) >> 1);
  v16 = sub_57A90(v9);
  result = sub_581D8(v9 & ~(-1 << (v16 & 0xFE)));
  v18 = v13 < result;
  if (v11 != v15)
  {
    v18 = v11 < v15;
  }

  if (v18)
  {
    v19 = *a3;
    *a3 = *a4;
    *a4 = v19;
    v20 = *a3;
    v21 = *a2;
    v22 = sub_57A90(*a3);
    v23 = sub_581D8((v20 & ~(-1 << (v22 & 0xFE))) >> 1);
    v24 = sub_57A90(v20);
    v25 = sub_581D8(v20 & ~(-1 << (v24 & 0xFE)));
    v26 = sub_57A90(v21);
    v27 = sub_581D8((v21 & ~(-1 << (v26 & 0xFE))) >> 1);
    v28 = sub_57A90(v21);
    result = sub_581D8(v21 & ~(-1 << (v28 & 0xFE)));
    v29 = v25 < result;
    if (v23 != v27)
    {
      v29 = v23 < v27;
    }

    if (v29)
    {
      v30 = *a2;
      *a2 = *a3;
      *a3 = v30;
      v31 = *a2;
      v32 = *a1;
      v33 = sub_57A90(*a2);
      v34 = sub_581D8((v31 & ~(-1 << (v33 & 0xFE))) >> 1);
      v35 = sub_57A90(v31);
      v36 = sub_581D8(v31 & ~(-1 << (v35 & 0xFE)));
      v37 = sub_57A90(v32);
      v38 = sub_581D8((v32 & ~(-1 << (v37 & 0xFE))) >> 1);
      v39 = sub_57A90(v32);
      result = sub_581D8(v32 & ~(-1 << (v39 & 0xFE)));
      v40 = v36 < result;
      if (v34 != v38)
      {
        v40 = v34 < v38;
      }

      if (v40)
      {
        v41 = *a1;
        *a1 = *a2;
        *a2 = v41;
      }
    }
  }

  return result;
}

uint64_t sub_2B9E7C(unsigned int *a1, unsigned int *a2, unsigned int *a3, unsigned int *a4, unsigned int *a5)
{
  sub_2B9C28(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = sub_57A90(*a5);
  v13 = sub_581D8((v10 & ~(-1 << (v12 & 0xFE))) >> 1);
  v14 = sub_57A90(v10);
  v15 = sub_581D8(v10 & ~(-1 << (v14 & 0xFE)));
  v16 = sub_57A90(v11);
  v17 = sub_581D8((v11 & ~(-1 << (v16 & 0xFE))) >> 1);
  v18 = sub_57A90(v11);
  result = sub_581D8(v11 & ~(-1 << (v18 & 0xFE)));
  v20 = v15 < result;
  if (v13 != v17)
  {
    v20 = v13 < v17;
  }

  if (v20)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    v24 = sub_57A90(*a4);
    v25 = sub_581D8((v22 & ~(-1 << (v24 & 0xFE))) >> 1);
    v26 = sub_57A90(v22);
    v27 = sub_581D8(v22 & ~(-1 << (v26 & 0xFE)));
    v28 = sub_57A90(v23);
    v29 = sub_581D8((v23 & ~(-1 << (v28 & 0xFE))) >> 1);
    v30 = sub_57A90(v23);
    result = sub_581D8(v23 & ~(-1 << (v30 & 0xFE)));
    v31 = v27 < result;
    if (v25 != v29)
    {
      v31 = v25 < v29;
    }

    if (v31)
    {
      v32 = *a3;
      *a3 = *a4;
      *a4 = v32;
      v33 = *a3;
      v34 = *a2;
      v35 = sub_57A90(*a3);
      v36 = sub_581D8((v33 & ~(-1 << (v35 & 0xFE))) >> 1);
      v37 = sub_57A90(v33);
      v38 = sub_581D8(v33 & ~(-1 << (v37 & 0xFE)));
      v39 = sub_57A90(v34);
      v40 = sub_581D8((v34 & ~(-1 << (v39 & 0xFE))) >> 1);
      v41 = sub_57A90(v34);
      result = sub_581D8(v34 & ~(-1 << (v41 & 0xFE)));
      v42 = v38 < result;
      if (v36 != v40)
      {
        v42 = v36 < v40;
      }

      if (v42)
      {
        v43 = *a2;
        *a2 = *a3;
        *a3 = v43;
        v44 = *a2;
        v45 = *a1;
        v46 = sub_57A90(*a2);
        v47 = sub_581D8((v44 & ~(-1 << (v46 & 0xFE))) >> 1);
        v48 = sub_57A90(v44);
        v49 = sub_581D8(v44 & ~(-1 << (v48 & 0xFE)));
        v50 = sub_57A90(v45);
        v51 = sub_581D8((v45 & ~(-1 << (v50 & 0xFE))) >> 1);
        v52 = sub_57A90(v45);
        result = sub_581D8(v45 & ~(-1 << (v52 & 0xFE)));
        v53 = v49 < result;
        if (v47 != v51)
        {
          v53 = v47 < v51;
        }

        if (v53)
        {
          v54 = *a1;
          *a1 = *a2;
          *a2 = v54;
        }
      }
    }
  }

  return result;
}

unsigned int *sub_2BA17C(unsigned int *a1, unsigned int *a2)
{
  v2 = a2;
  v4 = *a1;
  v5 = *(a2 - 1);
  v6 = sub_57A90(*a1);
  v7 = sub_581D8((v4 & ~(-1 << (v6 & 0xFE))) >> 1);
  v8 = sub_57A90(v4);
  v9 = sub_581D8(v4 & ~(-1 << (v8 & 0xFE)));
  v10 = sub_57A90(v5);
  v11 = sub_581D8((v5 & ~(-1 << (v10 & 0xFE))) >> 1);
  v12 = sub_57A90(v5);
  v13 = v9 < sub_581D8(v5 & ~(-1 << (v12 & 0xFE)));
  if (v7 != v11)
  {
    v13 = v7 < v11;
  }

  if (v13)
  {
    v14 = a1;
    do
    {
      v15 = v14[1];
      ++v14;
      v16 = sub_57A90(v4);
      v17 = sub_581D8((v4 & ~(-1 << (v16 & 0xFE))) >> 1);
      v18 = sub_57A90(v4);
      v19 = sub_581D8(v4 & ~(-1 << (v18 & 0xFE)));
      v20 = sub_57A90(v15);
      v21 = sub_581D8((v15 & ~(-1 << (v20 & 0xFE))) >> 1);
      v22 = sub_57A90(v15);
      v23 = v19 < sub_581D8(v15 & ~(-1 << (v22 & 0xFE)));
      if (v17 != v21)
      {
        v23 = v17 < v21;
      }
    }

    while (!v23);
  }

  else
  {
    v24 = a1 + 1;
    do
    {
      v14 = v24;
      if (v24 >= v2)
      {
        break;
      }

      ++v24;
      v25 = *v14;
      v26 = sub_57A90(v4);
      v27 = sub_581D8((v4 & ~(-1 << (v26 & 0xFE))) >> 1);
      v28 = sub_57A90(v4);
      v29 = sub_581D8(v4 & ~(-1 << (v28 & 0xFE)));
      v30 = sub_57A90(v25);
      v31 = sub_581D8((v25 & ~(-1 << (v30 & 0xFE))) >> 1);
      v32 = sub_57A90(v25);
      v33 = v29 < sub_581D8(v25 & ~(-1 << (v32 & 0xFE)));
      if (v27 != v31)
      {
        v33 = v27 < v31;
      }
    }

    while (!v33);
  }

  if (v14 < v2)
  {
    do
    {
      v34 = *--v2;
      v35 = sub_57A90(v4);
      v36 = sub_581D8((v4 & ~(-1 << (v35 & 0xFE))) >> 1);
      v37 = sub_57A90(v4);
      v38 = sub_581D8(v4 & ~(-1 << (v37 & 0xFE)));
      v39 = sub_57A90(v34);
      v40 = sub_581D8((v34 & ~(-1 << (v39 & 0xFE))) >> 1);
      v41 = sub_57A90(v34);
      v42 = v38 < sub_581D8(v34 & ~(-1 << (v41 & 0xFE)));
      if (v36 != v40)
      {
        v42 = v36 < v40;
      }
    }

    while (v42);
  }

  while (v14 < v2)
  {
    v43 = *v14;
    *v14 = *v2;
    *v2 = v43;
    do
    {
      v44 = v14[1];
      ++v14;
      v45 = sub_57A90(v4);
      v46 = sub_581D8((v4 & ~(-1 << (v45 & 0xFE))) >> 1);
      v47 = sub_57A90(v4);
      v48 = sub_581D8(v4 & ~(-1 << (v47 & 0xFE)));
      v49 = sub_57A90(v44);
      v50 = sub_581D8((v44 & ~(-1 << (v49 & 0xFE))) >> 1);
      v51 = sub_57A90(v44);
      v52 = v48 < sub_581D8(v44 & ~(-1 << (v51 & 0xFE)));
      if (v46 != v50)
      {
        v52 = v46 < v50;
      }
    }

    while (!v52);
    do
    {
      v53 = *--v2;
      v54 = sub_57A90(v4);
      v55 = sub_581D8((v4 & ~(-1 << (v54 & 0xFE))) >> 1);
      v56 = sub_57A90(v4);
      v57 = sub_581D8(v4 & ~(-1 << (v56 & 0xFE)));
      v58 = sub_57A90(v53);
      v59 = sub_581D8((v53 & ~(-1 << (v58 & 0xFE))) >> 1);
      v60 = sub_57A90(v53);
      v61 = v57 < sub_581D8(v53 & ~(-1 << (v60 & 0xFE)));
      if (v55 != v59)
      {
        v61 = v55 < v59;
      }
    }

    while (v61);
  }

  if (v14 - 1 != a1)
  {
    *a1 = *(v14 - 1);
  }

  *(v14 - 1) = v4;
  return v14;
}

unsigned int *sub_2BA598(unsigned int *a1, unsigned int *a2)
{
  v4 = 0;
  v5 = *a1;
  do
  {
    v6 = a1[v4 + 1];
    v7 = sub_57A90(v6);
    v8 = sub_581D8((v6 & ~(-1 << (v7 & 0xFE))) >> 1);
    v9 = sub_57A90(v6);
    v10 = sub_581D8(v6 & ~(-1 << (v9 & 0xFE)));
    v11 = sub_57A90(v5);
    v12 = sub_581D8((v5 & ~(-1 << (v11 & 0xFE))) >> 1);
    v13 = sub_57A90(v5);
    v14 = v10 < sub_581D8(v5 & ~(-1 << (v13 & 0xFE)));
    if (v8 != v12)
    {
      v14 = v8 < v12;
    }

    ++v4;
  }

  while (v14);
  v15 = &a1[v4];
  v16 = &a1[v4 - 1];
  if (v4 == 1)
  {
    do
    {
      if (v15 >= a2)
      {
        break;
      }

      v26 = *--a2;
      v27 = sub_57A90(v26);
      v28 = sub_581D8((v26 & ~(-1 << (v27 & 0xFE))) >> 1);
      v29 = sub_57A90(v26);
      v30 = sub_581D8(v26 & ~(-1 << (v29 & 0xFE)));
      v31 = sub_57A90(v5);
      v32 = sub_581D8((v5 & ~(-1 << (v31 & 0xFE))) >> 1);
      v33 = sub_57A90(v5);
      v34 = v30 < sub_581D8(v5 & ~(-1 << (v33 & 0xFE)));
      if (v28 != v32)
      {
        v34 = v28 < v32;
      }
    }

    while (!v34);
  }

  else
  {
    do
    {
      v17 = *--a2;
      v18 = sub_57A90(v17);
      v19 = sub_581D8((v17 & ~(-1 << (v18 & 0xFE))) >> 1);
      v20 = sub_57A90(v17);
      v21 = sub_581D8(v17 & ~(-1 << (v20 & 0xFE)));
      v22 = sub_57A90(v5);
      v23 = sub_581D8((v5 & ~(-1 << (v22 & 0xFE))) >> 1);
      v24 = sub_57A90(v5);
      v25 = v21 < sub_581D8(v5 & ~(-1 << (v24 & 0xFE)));
      if (v19 != v23)
      {
        v25 = v19 < v23;
      }
    }

    while (!v25);
  }

  if (v15 < a2)
  {
    v35 = v15;
    v36 = a2;
    do
    {
      v37 = *v35;
      *v35 = *v36;
      *v36 = v37;
      do
      {
        v38 = v35[1];
        ++v35;
        v39 = sub_57A90(v38);
        v40 = sub_581D8((v38 & ~(-1 << (v39 & 0xFE))) >> 1);
        v41 = sub_57A90(v38);
        v42 = sub_581D8(v38 & ~(-1 << (v41 & 0xFE)));
        v43 = sub_57A90(v5);
        v44 = sub_581D8((v5 & ~(-1 << (v43 & 0xFE))) >> 1);
        v45 = sub_57A90(v5);
        v46 = v42 < sub_581D8(v5 & ~(-1 << (v45 & 0xFE)));
        if (v40 != v44)
        {
          v46 = v40 < v44;
        }
      }

      while (v46);
      do
      {
        v47 = *--v36;
        v48 = sub_57A90(v47);
        v49 = sub_581D8((v47 & ~(-1 << (v48 & 0xFE))) >> 1);
        v50 = sub_57A90(v47);
        v51 = sub_581D8(v47 & ~(-1 << (v50 & 0xFE)));
        v52 = sub_57A90(v5);
        v53 = sub_581D8((v5 & ~(-1 << (v52 & 0xFE))) >> 1);
        v54 = sub_57A90(v5);
        v55 = v51 < sub_581D8(v5 & ~(-1 << (v54 & 0xFE)));
        if (v49 != v53)
        {
          v55 = v49 < v53;
        }
      }

      while (!v55);
    }

    while (v35 < v36);
    v16 = v35 - 1;
  }

  if (v16 != a1)
  {
    *a1 = *v16;
  }

  *v16 = v5;
  return v16;
}

BOOL sub_2BA938(unsigned int *a1, unsigned int *a2)
{
  v2 = a2;
  v4 = a2 - a1;
  if (v4 <= 2)
  {
    if (v4 >= 2)
    {
      if (v4 == 2)
      {
        v5 = *(a2 - 1);
        v6 = *a1;
        v7 = sub_57A90(v5);
        v8 = sub_581D8((v5 & ~(-1 << (v7 & 0xFE))) >> 1);
        v9 = sub_57A90(v5);
        v10 = sub_581D8(v5 & ~(-1 << (v9 & 0xFE)));
        v11 = sub_57A90(v6);
        v12 = sub_581D8((v6 & ~(-1 << (v11 & 0xFE))) >> 1);
        v13 = sub_57A90(v6);
        v14 = v10 < sub_581D8(v6 & ~(-1 << (v13 & 0xFE)));
        if (v8 != v12)
        {
          v14 = v8 < v12;
        }

        if (v14)
        {
          v15 = *a1;
          *a1 = *(v2 - 1);
          *(v2 - 1) = v15;
        }

        return 1;
      }

      goto LABEL_13;
    }

    return 1;
  }

  switch(v4)
  {
    case 3:
      sub_2B991C(a1, a1 + 1, a2 - 1);
      return 1;
    case 4:
      sub_2B9C28(a1, a1 + 1, a1 + 2, a2 - 1);
      return 1;
    case 5:
      sub_2B9E7C(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
  }

LABEL_13:
  v16 = a1 + 2;
  sub_2B991C(a1, a1 + 1, a1 + 2);
  v17 = a1 + 3;
  if (a1 + 3 == v2)
  {
    return 1;
  }

  v18 = 0;
  v19 = 0;
  v42 = v2;
  while (1)
  {
    v20 = *v17;
    v21 = *v16;
    v22 = sub_57A90(*v17);
    v23 = sub_581D8((v20 & ~(-1 << (v22 & 0xFE))) >> 1);
    v24 = sub_57A90(v20);
    v25 = sub_581D8(v20 & ~(-1 << (v24 & 0xFE)));
    v26 = sub_57A90(v21);
    v27 = sub_581D8((v21 & ~(-1 << (v26 & 0xFE))) >> 1);
    v28 = sub_57A90(v21);
    v29 = v25 < sub_581D8(v21 & ~(-1 << (v28 & 0xFE)));
    if (v23 != v27)
    {
      v29 = v23 < v27;
    }

    if (v29)
    {
      break;
    }

LABEL_26:
    v16 = v17;
    v18 += 4;
    if (++v17 == v2)
    {
      return 1;
    }
  }

  v43 = v19;
  v30 = *v17;
  v31 = v18;
  do
  {
    *(a1 + v31 + 12) = *(a1 + v31 + 8);
    if (v31 == -8)
    {
      *a1 = v30;
      v19 = v43 + 1;
      v2 = v42;
      if (v43 != 7)
      {
        goto LABEL_26;
      }

      return v17 + 1 == v2;
    }

    v32 = *(a1 + v31 + 4);
    v33 = sub_57A90(v30);
    v34 = sub_581D8((v30 & ~(-1 << (v33 & 0xFE))) >> 1);
    v35 = sub_57A90(v30);
    v36 = sub_581D8(v30 & ~(-1 << (v35 & 0xFE)));
    v37 = sub_57A90(v32);
    v38 = sub_581D8((v32 & ~(-1 << (v37 & 0xFE))) >> 1);
    v39 = sub_57A90(v32);
    v40 = v36 < sub_581D8(v32 & ~(-1 << (v39 & 0xFE)));
    if (v34 != v38)
    {
      v40 = v34 < v38;
    }

    v31 -= 4;
  }

  while (v40);
  *(a1 + v31 + 12) = v30;
  v19 = v43 + 1;
  v2 = v42;
  if (v43 != 7)
  {
    goto LABEL_26;
  }

  return v17 + 1 == v2;
}

unsigned int *sub_2BACA4(unsigned int *a1, unsigned int *a2, unsigned int *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        sub_2BAFCC(v7, a4, v8, v11--);
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
        v13 = a3;
        v14 = *v12;
        v15 = v8;
        v16 = *v7;
        v17 = sub_57A90(*v12);
        v18 = sub_581D8((v14 & ~(-1 << (v17 & 0xFE))) >> 1);
        v19 = sub_57A90(v14);
        v20 = sub_581D8(v14 & ~(-1 << (v19 & 0xFE)));
        v21 = sub_57A90(v16);
        v22 = sub_581D8((v16 & ~(-1 << (v21 & 0xFE))) >> 1);
        v23 = v16 & ~(-1 << (sub_57A90(v16) & 0xFE));
        v8 = v15;
        v24 = v20 < sub_581D8(v23);
        if (v18 != v22)
        {
          v24 = v18 < v22;
        }

        if (v24)
        {
          v25 = *v12;
          *v12 = *v7;
          *v7 = v25;
          sub_2BAFCC(v7, a4, v15, v7);
        }

        ++v12;
        a3 = v13;
      }

      while (v12 != v13);
    }

    if (v8 < 2)
    {
      return v12;
    }

    else
    {
      v47 = v12;
      v48 = v7;
      do
      {
        while (1)
        {
          v27 = 0;
          v49 = *v7;
          v28 = (v8 - 2) >> 1;
          v29 = v7;
          v52 = v8;
          v50 = v6;
          v51 = v28;
          do
          {
            while (1)
            {
              v43 = &v29[v27];
              v42 = v43 + 1;
              v44 = (2 * v27) | 1;
              v45 = 2 * v27 + 2;
              if (v45 < v8)
              {
                break;
              }

              v27 = (2 * v27) | 1;
              *v29 = *v42;
              v29 = v43 + 1;
              if (v44 > v28)
              {
                goto LABEL_27;
              }
            }

            v31 = v43[2];
            v30 = v43 + 2;
            v32 = *(v30 - 1);
            v33 = sub_57A90(v32);
            v34 = sub_581D8((v32 & ~(-1 << (v33 & 0xFE))) >> 1);
            v35 = sub_57A90(v32);
            v36 = sub_581D8(v32 & ~(-1 << (v35 & 0xFE)));
            v37 = sub_57A90(v31);
            v38 = sub_581D8((v31 & ~(-1 << (v37 & 0xFE))) >> 1);
            v39 = sub_57A90(v31);
            v40 = v36 >= sub_581D8(v31 & ~(-1 << (v39 & 0xFE)));
            v28 = v51;
            v8 = v52;
            v41 = !v40;
            if (v34 != v38)
            {
              v41 = v34 < v38;
            }

            if (v41)
            {
              v42 = v30;
              v27 = v45;
            }

            else
            {
              v27 = v44;
            }

            *v29 = *v42;
            v29 = v42;
          }

          while (v27 <= v51);
LABEL_27:
          v6 = v50 - 1;
          if (v42 == v50 - 1)
          {
            break;
          }

          *v42 = *v6;
          *v6 = v49;
          v7 = v48;
          sub_2BB338(v48, (v42 + 1), a4, (v42 - v48 + 4) >> 2);
          v26 = v8-- <= 2;
          if (v26)
          {
            return v47;
          }
        }

        *v42 = v49;
        v7 = v48;
        v26 = v8-- <= 2;
      }

      while (!v26);
      return v47;
    }
  }

  return a3;
}

uint64_t sub_2BAFCC(uint64_t result, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v64 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - result) >> 2)
    {
      v6 = a3;
      v7 = (a4 - result) >> 1;
      v8 = v7 + 1;
      v62 = result;
      v9 = (result + 4 * (v7 + 1));
      v10 = v7 + 2;
      if (v7 + 2 < a3)
      {
        v11 = *v9;
        v12 = v9[1];
        v13 = sub_57A90(*v9);
        v14 = sub_581D8((v11 & ~(-1 << (v13 & 0xFE))) >> 1);
        v15 = sub_57A90(v11);
        v16 = sub_581D8(v11 & ~(-1 << (v15 & 0xFE)));
        v17 = sub_57A90(v12);
        v18 = sub_581D8((v12 & ~(-1 << (v17 & 0xFE))) >> 1);
        v19 = sub_57A90(v12);
        v20 = v16 < sub_581D8(v12 & ~(-1 << (v19 & 0xFE)));
        v21 = v14 >= v18;
        v22 = v14 == v18;
        v6 = a3;
        v23 = !v21;
        if (!v22)
        {
          v20 = v23;
        }

        if (v20)
        {
          ++v9;
          v8 = v10;
        }
      }

      v24 = *v9;
      v25 = *v5;
      v26 = sub_57A90(*v9);
      v27 = sub_581D8((v24 & ~(-1 << (v26 & 0xFE))) >> 1);
      v28 = sub_57A90(v24);
      v29 = sub_581D8(v24 & ~(-1 << (v28 & 0xFE)));
      v30 = sub_57A90(v25);
      v31 = sub_581D8((v25 & ~(-1 << (v30 & 0xFE))) >> 1);
      v32 = sub_57A90(v25);
      result = sub_581D8(v25 & ~(-1 << (v32 & 0xFE)));
      v33 = v29 < result;
      if (v27 != v31)
      {
        v33 = v27 < v31;
      }

      v34 = v62;
      if (!v33)
      {
        v35 = *v5;
        v36 = v9;
        do
        {
          v59 = v36;
          *v5 = *v36;
          if (v64 < v8)
          {
            break;
          }

          v49 = (2 * v8) | 1;
          v48 = (v34 + 4 * v49);
          v60 = 2 * v8 + 2;
          if (v60 < v6)
          {
            v37 = *v48;
            v39 = v48 + 1;
            v38 = v48[1];
            v63 = (v34 + 4 * v49);
            v40 = sub_57A90(*v48);
            v41 = sub_581D8((v37 & ~(-1 << (v40 & 0xFE))) >> 1);
            v42 = sub_57A90(v37);
            v43 = sub_581D8(v37 & ~(-1 << (v42 & 0xFE)));
            v44 = sub_57A90(v38);
            v45 = sub_581D8((v38 & ~(-1 << (v44 & 0xFE))) >> 1);
            v46 = sub_57A90(v38);
            v47 = v43 < sub_581D8(v38 & ~(-1 << (v46 & 0xFE)));
            if (v41 != v45)
            {
              v47 = v41 < v45;
            }

            v34 = v62;
            v48 = v63;
            if (v47)
            {
              v48 = v39;
            }

            v6 = a3;
            if (v47)
            {
              v49 = v60;
            }
          }

          v50 = *v48;
          v36 = v48;
          v51 = sub_57A90(*v48);
          v52 = sub_581D8((v50 & ~(-1 << (v51 & 0xFE))) >> 1);
          v53 = sub_57A90(v50);
          v54 = sub_581D8(v50 & ~(-1 << (v53 & 0xFE)));
          v55 = sub_57A90(v35);
          v56 = sub_581D8((v35 & ~(-1 << (v55 & 0xFE))) >> 1);
          v57 = sub_57A90(v35);
          result = sub_581D8(v35 & ~(-1 << (v57 & 0xFE)));
          v58 = v54 < result;
          if (v52 != v56)
          {
            v58 = v52 < v56;
          }

          v5 = v59;
          v8 = v49;
        }

        while (!v58);
        *v59 = v35;
      }
    }
  }

  return result;
}

uint64_t sub_2BB338(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v5 = result;
    v6 = v4 >> 1;
    v7 = (result + 4 * (v4 >> 1));
    v8 = *v7;
    v9 = (a2 - 4);
    v10 = *(a2 - 4);
    v11 = sub_57A90(*v7);
    v12 = sub_581D8((v8 & ~(-1 << (v11 & 0xFE))) >> 1);
    v13 = sub_57A90(v8);
    v14 = sub_581D8(v8 & ~(-1 << (v13 & 0xFE)));
    v15 = sub_57A90(v10);
    v16 = sub_581D8((v10 & ~(-1 << (v15 & 0xFE))) >> 1);
    v17 = sub_57A90(v10);
    result = sub_581D8(v10 & ~(-1 << (v17 & 0xFE)));
    v18 = v14 < result;
    if (v12 != v16)
    {
      v18 = v12 < v16;
    }

    if (v18)
    {
      v19 = *v9;
      do
      {
        v20 = v7;
        *v9 = *v7;
        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (v5 + 4 * v6);
        v21 = *v7;
        v22 = sub_57A90(*v7);
        v23 = sub_581D8((v21 & ~(-1 << (v22 & 0xFE))) >> 1);
        v24 = sub_57A90(v21);
        v25 = sub_581D8(v21 & ~(-1 << (v24 & 0xFE)));
        v26 = sub_57A90(v19);
        v27 = sub_581D8((v19 & ~(-1 << (v26 & 0xFE))) >> 1);
        v28 = sub_57A90(v19);
        result = sub_581D8(v19 & ~(-1 << (v28 & 0xFE)));
        v29 = v25 < result;
        if (v23 != v27)
        {
          v29 = v23 < v27;
        }

        v9 = v20;
      }

      while (v29);
      *v20 = v19;
    }
  }

  return result;
}

void sub_2BB4E4(uint64_t a1, int *a2)
{
  v24 = *(a2 + *(a2 - *a2 + 4));
  v4 = *(a1 + 8);
  sub_2BB8F4(*a1, &v24);
  if (v5)
  {
    sub_2B7A7C(v4, v24, &__p);
    v6 = __p;
    if (__p != v23)
    {
      v7 = sub_2BB6E0(*(a1 + 16), *__p, 0);
      v8 = sub_2BB6E0(*(a1 + 16), *(v23 - 1), 1);
      if (v7 != v8)
      {
        v9 = v8 ^ 1;
        v10 = *(a1 + 24);
        v11 = __ROR8__(*(a2 + *(a2 - *a2 + 4)), 32);
        v12 = *(v10 + 8);
        v13 = *(v10 + 16);
        if (v12 >= v13)
        {
          v15 = *v10;
          v16 = v12 - *v10;
          v17 = v16 >> 3;
          v18 = (v16 >> 3) + 1;
          if (v18 >> 61)
          {
            sub_1794();
          }

          v19 = v13 - v15;
          if (v19 >> 2 > v18)
          {
            v18 = v19 >> 2;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v20 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v20 = v18;
          }

          if (v20)
          {
            if (!(v20 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v21 = 8 * v17;
          *v21 = HIDWORD(v11);
          *(v21 + 4) = v11;
          *(v21 + 6) = v9;
          v14 = 8 * v17 + 8;
          memcpy(0, v15, v16);
          *v10 = 0;
          *(v10 + 8) = v14;
          *(v10 + 16) = 0;
          if (v15)
          {
            operator delete(v15);
          }
        }

        else
        {
          *v12 = HIDWORD(v11);
          *(v12 + 4) = v11;
          v14 = v12 + 8;
          *(v12 + 6) = v9;
        }

        *(v10 + 8) = v14;
      }

      v6 = __p;
    }

    if (v6)
    {
      v23 = v6;
      operator delete(v6);
    }
  }
}

void sub_2BB6BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2BB6E0(uint64_t *a1, unint64_t a2, int a3)
{
  v6 = sub_2B4D24(*a1, a2, 0);
  v9 = &v6[-*v6];
  if (*v9 < 5u)
  {
    v10 = 0;
  }

  else
  {
    v10 = *(v9 + 2);
    if (v10)
    {
      v10 += &v6[*&v6[v10]];
    }
  }

  v11 = (v10 + 4 * HIDWORD(a2) + 4 + *(v10 + 4 * HIDWORD(a2) + 4));
  v12 = (v11 - *v11);
  if (*v12 >= 7u && (v13 = v12[3]) != 0)
  {
    v14 = (v11 + v13);
    v15 = *v14;
    if (a3)
    {
      v16 = *(v14 + v15) - 1;
    }

    else
    {
      v16 = 0;
    }

    v28 = sub_2B8750((v14 + v15), v16);
    v29 = *v28;
    v30 = v28[1];
    v31 = sub_57A90(a2);
    v32 = a2 & ~(-1 << (v31 & 0xFE));
    v33 = sub_581D8(v32);
    v34 = sub_581D8(v32 >> 1);
    v35 = 1 << -(v31 >> 1);
    if (v31 < 2)
    {
      v35 = -2;
    }

    v36 = v35 * v33 + 4 * v29;
    v17 = v35 * v34 + 4 * v30;
    if (v17 >= 0xFFFFFFFE)
    {
      v17 = -2;
    }

    v18 = v36;
    v37 = a1[1];
    v20 = *v37;
    v21 = *(v37 + 8);
    if (*v37 == v21)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v17 = -1;
    v18 = 4294967300.0;
    v19 = a1[1];
    v20 = *v19;
    v21 = *(v19 + 8);
    if (*v19 == v21)
    {
LABEL_28:
      v22 = 0;
      return v22 & 1;
    }
  }

  v22 = 0;
  do
  {
    v23 = v20[1];
    v24 = (*v20 + 12);
    if (*v20 != v23 && v24 != v23)
    {
      do
      {
        v26 = *(v24 - 2);
        v27 = v24[1];
        if (v26 < v17 != v27 < v17)
        {
          LODWORD(v7) = *v24;
          LODWORD(v8) = *(v24 - 3);
          v8 = *&v8;
          v7 = (v17 - v26) / (v27 - v26) * (*&v7 - v8) + v8;
          if (v7 < v18)
          {
            v22 ^= 1u;
          }
        }

        v24 += 3;
      }

      while (v24 != v23);
    }

    v20 += 3;
  }

  while (v20 != v21);
  return v22 & 1;
}

uint64_t *sub_2BB8F4(void *a1, void *a2)
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

void sub_2BBC6C(uint64_t a1, int *a2)
{
  v36 = *(a2 + *(a2 - *a2 + 4));
  v4 = *(a1 + 8);
  sub_2BB8F4(*a1, &v36);
  if (v5)
  {
    sub_2B7A7C(v4, v36, &v34);
    v6 = v35;
    v7 = v34;
    if (v34 != v35)
    {
      v8 = *(a1 + 16);
      while (1)
      {
        v9 = *v7;
        if (!sub_2BB6E0(v8, *v7, 0) || (sub_2BB6E0(v8, v9, 1) & 1) == 0)
        {
          break;
        }

        if (++v7 == v6)
        {
          v10 = *(a1 + 24);
          v11 = __ROR8__(*(a2 + *(a2 - *a2 + 4)), 32);
          v12 = *(v10 + 8);
          v13 = *(v10 + 16);
          if (v12 >= v13)
          {
            v15 = *v10;
            v16 = v12 - *v10;
            v17 = v16 >> 3;
            v18 = (v16 >> 3) + 1;
            if (v18 >> 61)
            {
              sub_1794();
            }

            v19 = v13 - v15;
            if (v19 >> 2 > v18)
            {
              v18 = v19 >> 2;
            }

            if (v19 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v18;
            }

            if (v20)
            {
              if (!(v20 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v21 = 8 * v17;
            *v21 = HIDWORD(v11);
            *(v21 + 4) = v11;
            *(v21 + 6) = 0;
            v14 = 8 * v17 + 8;
            memcpy(0, v15, v16);
            *v10 = 0;
            *(v10 + 8) = v14;
            *(v10 + 16) = 0;
            if (v15)
            {
              operator delete(v15);
            }
          }

          else
          {
            *v12 = HIDWORD(v11);
            *(v12 + 4) = v11;
            v14 = v12 + 8;
            *(v12 + 6) = 0;
          }

          *(v10 + 8) = v14;
          v22 = *(a1 + 24);
          v23 = __ROR8__(*(a2 + *(a2 - *a2 + 4)), 32);
          v24 = *(v22 + 8);
          v25 = *(v22 + 16);
          if (v24 >= v25)
          {
            v27 = *v22;
            v28 = v24 - *v22;
            v29 = v28 >> 3;
            v30 = (v28 >> 3) + 1;
            if (v30 >> 61)
            {
              sub_1794();
            }

            v31 = v25 - v27;
            if (v31 >> 2 > v30)
            {
              v30 = v31 >> 2;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v32 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              if (!(v32 >> 61))
              {
                operator new();
              }

              sub_1808();
            }

            v33 = 8 * v29;
            *v33 = HIDWORD(v23);
            *(v33 + 4) = v23;
            *(v33 + 6) = 1;
            v26 = 8 * v29 + 8;
            memcpy(0, v27, v28);
            *v22 = 0;
            *(v22 + 8) = v26;
            *(v22 + 16) = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            *v24 = HIDWORD(v23);
            *(v24 + 4) = v23;
            *(v24 + 6) = 1;
            v26 = v24 + 8;
          }

          *(v22 + 8) = v26;
          break;
        }
      }

      v7 = v34;
    }

    if (v7)
    {
      v35 = v7;
      operator delete(v7);
    }
  }
}

void sub_2BBF60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_2BBF84(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 312);
    v5 = *(v3 + 320);
    v6 = (v5 - v4) >> 6;
    if (v6 >= 1)
    {
      v7 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v8 = a2 & 0xFF000000000000;
      if (v5 - v4 != 64)
      {
        if (v8)
        {
          v9 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v9 = v7 + 1;
        }

        do
        {
          v10 = (16 * v6) & 0xFFFFFFFFFFFFFFC0;
          _X16 = v4 + v10;
          __asm { PRFM            #0, [X16] }

          v17 = &v4[16 * (v6 >> 1)];
          _X15 = v17 + v10;
          __asm { PRFM            #0, [X15] }

          v20 = (*v17 << 32) | (*(v17 + 2) << 16);
          if (!*(v17 + 6))
          {
            ++v20;
          }

          if (v20 >= v9)
          {
            v21 = 0;
          }

          else
          {
            v21 = v6 >> 1;
          }

          v4 += 16 * v21;
          v6 -= v6 >> 1;
        }

        while (v6 > 1);
      }

      v22 = (*v4 << 32) | (*(v4 + 2) << 16);
      if (!*(v4 + 6))
      {
        ++v22;
      }

      if (!v8)
      {
        ++v7;
      }

      v4 += 16 * (v22 < v7);
    }

    if (v5 != v4 && *v4 == a2 && *(v4 + 2) == WORD2(a2) && *(v4 + 6) == BYTE6(a2))
    {
      v23 = v4 + 6;
      do
      {
        v24 = v23 - 6;
        if (*(v23 - 6) != a2 || *(v23 - 10) != WORD2(a2) || *(v23 - 18) != BYTE6(a2))
        {
          break;
        }

        if ((*(v23 - 4) & (1 << a3)) != 0)
        {
          return *(v23 - 1) & 0xFFFFFFFFFFFFFF00 | *(v23 - 1);
        }

        v23 += 16;
      }

      while (v24 + 16 != v5);
    }
  }

  return 0;
}

unint64_t sub_2BC10C(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 312);
    v5 = *(v3 + 320);
    v6 = (v5 - v4) >> 6;
    if (v6 >= 1)
    {
      v7 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v8 = a2 & 0xFF000000000000;
      if (v5 - v4 != 64)
      {
        if (v8)
        {
          v9 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v9 = v7 + 1;
        }

        do
        {
          v10 = (16 * v6) & 0xFFFFFFFFFFFFFFC0;
          _X16 = v4 + v10;
          __asm { PRFM            #0, [X16] }

          v17 = &v4[16 * (v6 >> 1)];
          _X15 = v17 + v10;
          __asm { PRFM            #0, [X15] }

          v20 = (*v17 << 32) | (*(v17 + 2) << 16);
          if (!*(v17 + 6))
          {
            ++v20;
          }

          if (v20 >= v9)
          {
            v21 = 0;
          }

          else
          {
            v21 = v6 >> 1;
          }

          v4 += 16 * v21;
          v6 -= v6 >> 1;
        }

        while (v6 > 1);
      }

      v22 = (*v4 << 32) | (*(v4 + 2) << 16);
      if (!*(v4 + 6))
      {
        ++v22;
      }

      if (!v8)
      {
        ++v7;
      }

      v4 += 16 * (v22 < v7);
    }

    if (v5 != v4 && *v4 == a2 && *(v4 + 2) == WORD2(a2) && *(v4 + 6) == BYTE6(a2))
    {
      v23 = v4 + 10;
      do
      {
        v24 = v23 - 10;
        if (*(v23 - 10) != a2 || *(v23 - 18) != WORD2(a2) || *(v23 - 34) != BYTE6(a2))
        {
          break;
        }

        if ((*(v23 - 8) & (1 << a3)) != 0)
        {
          return *(v23 - 1) & 0xFFFFFFFFFFFFFF00 | *(v23 - 1);
        }

        v23 += 16;
      }

      while (v24 + 16 != v5);
    }
  }

  return 0;
}

unint64_t sub_2BC294(uint64_t *a1, unint64_t a2, char a3)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = *(v3 + 312);
    v5 = *(v3 + 320);
    v6 = (v5 - v4) >> 6;
    if (v6 >= 1)
    {
      v7 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v8 = a2 & 0xFF000000000000;
      if (v5 - v4 != 64)
      {
        if (v8)
        {
          v9 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v9 = v7 + 1;
        }

        do
        {
          v10 = (16 * v6) & 0xFFFFFFFFFFFFFFC0;
          _X16 = v4 + v10;
          __asm { PRFM            #0, [X16] }

          v17 = &v4[16 * (v6 >> 1)];
          _X15 = v17 + v10;
          __asm { PRFM            #0, [X15] }

          v20 = (*v17 << 32) | (*(v17 + 2) << 16);
          if (!*(v17 + 6))
          {
            ++v20;
          }

          if (v20 >= v9)
          {
            v21 = 0;
          }

          else
          {
            v21 = v6 >> 1;
          }

          v4 += 16 * v21;
          v6 -= v6 >> 1;
        }

        while (v6 > 1);
      }

      v22 = (*v4 << 32) | (*(v4 + 2) << 16);
      if (!*(v4 + 6))
      {
        ++v22;
      }

      if (!v8)
      {
        ++v7;
      }

      v4 += 16 * (v22 < v7);
    }

    if (v5 != v4 && *v4 == a2 && *(v4 + 2) == WORD2(a2) && *(v4 + 6) == BYTE6(a2))
    {
      v23 = v4 + 14;
      do
      {
        v24 = v23 - 14;
        if (*(v23 - 14) != a2 || *(v23 - 26) != WORD2(a2) || *(v23 - 50) != BYTE6(a2))
        {
          break;
        }

        if ((*(v23 - 12) & (1 << a3)) != 0)
        {
          return *(v23 - 1) & 0xFFFFFFFFFFFFFF00 | *(v23 - 1);
        }

        v23 += 16;
      }

      while (v24 + 16 != v5);
    }
  }

  return 0;
}

void sub_2BC41C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v4 = a3[1];
  *(a1 + 16) = *a3;
  *(a1 + 24) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 32) = 0;
  sub_2BFA5C(a1 + 34, *a1 != 0, a4);
}

void sub_2BC4E0(_Unwind_Exception *a1)
{
  sub_1F1A8(v2);
  sub_1F1A8(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_2BC500(uint64_t a1)
{
  if (*a1)
  {
    return *(*a1 + 544);
  }

  else
  {
    return 0x7FFFFFFFLL;
  }
}

void *sub_2BC518(void *a1)
{
  if (*a1)
  {
    return (*a1 + 560);
  }

  else
  {
    return &unk_22902F8;
  }
}

void *sub_2BC534(void *a1)
{
  if (*a1)
  {
    return (*a1 + 584);
  }

  else
  {
    return &unk_2290310;
  }
}

double sub_2BC550(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = -1.0;
  if (*a1)
  {
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = (v5 - v4) >> 4;
    if (v6 >= 1)
    {
      if (v5 - v4 != 16)
      {
        do
        {
          v7 = (4 * v6) & 0xFFFFFFFFFFFFFFF0;
          _X14 = v4 + v7;
          __asm { PRFM            #0, [X14] }

          v14 = (v4 + 16 * (v6 >> 1));
          _X13 = v14 + v7;
          __asm { PRFM            #0, [X13] }

          if (*v14 >= a2)
          {
            v17 = 0;
          }

          else
          {
            v17 = v6 >> 1;
          }

          v4 += 16 * v17;
          v6 -= v6 >> 1;
        }

        while (v6 > 1);
      }

      v4 += 16 * (*v4 < a2);
    }

    if (v5 != v4 && *v4 == a2)
    {
      while (*v4 == a2)
      {
        if ((*(v4 + 8) & (1 << *(a1 + 34))) != 0)
        {
          LODWORD(result) = *(v4 + 12);
          return *&result;
        }

        v4 += 16;
        if (v4 == v5)
        {
          return result;
        }
      }
    }
  }

  return result;
}

double sub_2BC618(uint64_t *a1, uint64_t a2, char a3)
{
  v3 = *a1;
  result = -1.0;
  if (*a1)
  {
    v5 = *(v3 + 8);
    v6 = *(v3 + 16);
    v7 = (v6 - v5) >> 4;
    if (v7 >= 1)
    {
      if (v6 - v5 != 16)
      {
        do
        {
          v8 = (4 * v7) & 0xFFFFFFFFFFFFFFF0;
          _X13 = v5 + v8;
          __asm { PRFM            #0, [X13] }

          v15 = (v5 + 16 * (v7 >> 1));
          _X12 = v15 + v8;
          __asm { PRFM            #0, [X12] }

          if (*v15 >= a2)
          {
            v18 = 0;
          }

          else
          {
            v18 = v7 >> 1;
          }

          v5 += 16 * v18;
          v7 -= v7 >> 1;
        }

        while (v7 > 1);
      }

      v5 += 16 * (*v5 < a2);
    }

    if (v6 != v5 && *v5 == a2)
    {
      while (*v5 == a2)
      {
        if ((*(v5 + 8) & (1 << a3)) != 0)
        {
          LODWORD(result) = *(v5 + 12);
          return *&result;
        }

        v5 += 16;
        if (v5 == v6)
        {
          return result;
        }
      }
    }
  }

  return result;
}

double sub_2BC6DC(unsigned __int8 *a1, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return -1.0;
  }

  v3 = &unk_2290328;
  if (*a1)
  {
    v5 = sub_2BEA04(a1, a2, a3, a1[38]);
    if (*(*a1 + 40) != v5)
    {
      v3 = v5;
    }
  }

  return v3[5];
}

double sub_2BC738(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return -9.22337204e18;
  }

  v6[0] = 0;
  v6[1] = 0;
  v2 = &unk_2290328;
  if (*a1)
  {
    v4 = sub_2BEA04(a1, a2, v6, a1[38]);
    if (*(*a1 + 40) != v4)
    {
      v2 = v4;
    }
  }

  return v2[6];
}

uint64_t sub_2BC7A8(unsigned __int8 *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v6[0] = 0;
  v6[1] = 0;
  v2 = &unk_2290328;
  if (*a1)
  {
    v4 = sub_2BEA04(a1, a2, v6, 0);
    if (*(*a1 + 40) != v4)
    {
      v2 = v4;
    }
  }

  return *(v2 + 28);
}

void sub_2BC814(uint64_t a1@<X0>, uint64_t a2@<X1>, __n128 **a3@<X8>)
{
  if (*a1)
  {
    v3 = *(a1 + 36);
    v4 = *(a1 + 37);
    if (v4 == v3)
    {

      sub_2BC93C(a1, a2, v3, a3);
    }

    else
    {
      sub_2BC93C(a1, a2, v3, v10);
      sub_2BC93C(a1, a2, v4, __p);
      sub_2BCB50(v10, __p, a3);
      if (__p[0])
      {
        operator delete(__p[0]);
      }

      v8 = v10[0];
      if (v10[0])
      {

        operator delete(v8);
      }
    }
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }
}

void sub_2BC8F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12)
{
  if (__p)
  {
    operator delete(__p);
    v13 = a12;
    if (!a12)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v13 = a12;
    if (!a12)
    {
      goto LABEL_3;
    }
  }

  operator delete(v13);
  _Unwind_Resume(exception_object);
}

void sub_2BC93C(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, void *a4@<X8>)
{
  v7 = *a1;
  v9 = *(*a1 + 56);
  v8 = *(*a1 + 64);
  v10 = (v8 - v9) >> 5;
  if (v10 >= 1)
  {
    if (v8 - v9 != 32)
    {
      do
      {
        v11 = (8 * v10) & 0xFFFFFFFFFFFFFFE0;
        _X13 = v9 + v11;
        __asm { PRFM            #0, [X13] }

        v18 = (v9 + 32 * (v10 >> 1));
        _X12 = v18 + v11;
        __asm { PRFM            #0, [X12] }

        if (*v18 >= a2)
        {
          v21 = 0;
        }

        else
        {
          v21 = v10 >> 1;
        }

        v9 += 32 * v21;
        v10 -= v10 >> 1;
      }

      while (v10 > 1);
    }

    v9 += 32 * (*v9 < a2);
  }

  if (v8 == v9 || *v9 != a2)
  {
    a4[1] = 0;
    a4[2] = 0;
  }

  else
  {
    v22 = 0;
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    v23 = 1 << a3;
    do
    {
      if (*v9 != a2)
      {
        break;
      }

      if ((*(v9 + 8) & v23) != 0)
      {
        v25 = a4[2];
        if (v22 < v25)
        {
          v24 = *(v9 + 16);
          *v22 = *v9;
          *(v22 + 16) = v24;
          v22 += 32;
        }

        else
        {
          v26 = v22;
          v27 = v22 >> 5;
          v28 = v27 + 1;
          if ((v27 + 1) >> 59)
          {
            *a4 = 0;
            sub_1794();
          }

          if (v25 >> 4 > v28)
          {
            v28 = v25 >> 4;
          }

          if (v25 >= 0x7FFFFFFFFFFFFFE0)
          {
            v29 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v29 = v28;
          }

          if (v29)
          {
            if (!(v29 >> 59))
            {
              operator new();
            }

            *a4 = 0;
            sub_1808();
          }

          v30 = (32 * v27);
          v31 = *(v9 + 16);
          *v30 = *v9;
          v30[1] = v31;
          v22 = 32 * v27 + 32;
          memcpy(0, 0, v26);
          a4[1] = v22;
          a4[2] = 0;
        }

        a4[1] = v22;
        v7 = *a1;
      }

      v9 += 32;
    }

    while (v9 != *(v7 + 64));
  }

  *a4 = 0;
}

void sub_2BCB28(_Unwind_Exception *exception_object)
{
  *v1 = v2;
  if (v2)
  {
    v1[1] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(exception_object);
}

double sub_2BCB50@<D0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, __n128 **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *a1;
  v6 = a1[1];
  v7 = ((a2[1] - *a2) >> 5) + ((v6 - *a1) >> 5);
  if (v7)
  {
    if (!(v7 >> 59))
    {
      operator new();
    }

    sub_1794();
  }

  v10 = 0;
  v11 = 0;
  if (v5 == v6)
  {
    v9 = *a2;
    v8 = a2[1];
    if (*a2 == v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    do
    {
      if (*(v5 + 12) != 1)
      {
        sub_2C3744(a3, v5);
      }

      v5 += 32;
    }

    while (v5 != v6);
    v10 = *a3;
    v11 = a3[1];
    v9 = *a2;
    v8 = a2[1];
    if (v9 == v8)
    {
LABEL_12:
      v13 = v10;
      if (v11 == v10)
      {
        return result;
      }

      goto LABEL_18;
    }
  }

  do
  {
    if (*(v9 + 12) == 1)
    {
      sub_2C3744(a3, v9);
    }

    v9 += 32;
  }

  while (v9 != v8);
  v13 = *a3;
  if (v11 != v10)
  {
LABEL_18:
    v14 = a3[1];
    if (v14 - v13 != v11 - v10)
    {
      v15 = 126 - 2 * __clz((v14 - v13) >> 5);
      if (v14 == v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      *&result = sub_2C3864(v13, v14, v16, 1).n128_u64[0];
    }
  }

  return result;
}

void sub_2BCCF4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2BCD20(uint64_t *a1, unint64_t a2, uint64_t a3, char a4)
{
  v4 = *a1;
  if (*a1 && *(a1 + 39) == 1)
  {
    v5 = *(v4 + 200);
    v6 = *(v4 + 208);
    v7 = v6 - v5;
    if (v6 - v5 >= 40)
    {
      v8 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
      v9 = a2 & 0xFF000000000000;
      if (v7 != 40)
      {
        v10 = 0xCCCCCCCCCCCCCCCDLL * (v7 >> 3);
        if (v9)
        {
          v11 = (a2 >> 16) & 0xFFFF0000 | (a2 << 32);
        }

        else
        {
          v11 = v8 + 1;
        }

        do
        {
          v12 = 10 * (v10 >> 2);
          _X17 = &v5[v12];
          __asm { PRFM            #0, [X17] }

          v19 = &v5[10 * (v10 >> 1)];
          _X16 = &v19[v12];
          __asm { PRFM            #0, [X16] }

          v22 = (*v19 << 32) | (*(v19 + 2) << 16);
          if (!*(v19 + 6))
          {
            ++v22;
          }

          if (v22 >= v11)
          {
            v23 = 0;
          }

          else
          {
            v23 = v10 >> 1;
          }

          v5 += 10 * v23;
          v10 -= v10 >> 1;
        }

        while (v10 > 1);
      }

      v24 = (*v5 << 32) | (*(v5 + 2) << 16);
      if (!*(v5 + 6))
      {
        ++v24;
      }

      if (!v9)
      {
        ++v8;
      }

      v5 += 10 * (v24 < v8);
    }

    if (v5 != v6)
    {
      while (*v5 == a2 && *(v5 + 2) == WORD2(a2) && *(v5 + 6) == BYTE6(a2))
      {
        if ((v5[4] & (1 << a4)) != 0 && v5[2] == a3 && *(v5 + 6) == WORD2(a3) && *(v5 + 14) == BYTE6(a3))
        {
          v25 = *(v5 + 16);
          if (v25 == 0xFFFF || v25 < *(a1 + 20))
          {
            return 1;
          }
        }

        v5 += 10;
        if (v5 == v6)
        {
          return 0;
        }
      }
    }
  }

  return 0;
}

void sub_2BCEB4(void *a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (!*a1)
  {
    return;
  }

  v6 = a2;
  v50 = *a1 + 272;
  __p = 0;
  v52 = 0;
  v53 = 0;
  v8 = sub_57A90(a2);
  if (v8 >= 2)
  {
    v12 = v8 >> 1;
    v48 = v6;
    do
    {
      v13 = sub_57A90(v6);
      v14 = sub_2BD360(&v50, v6 >> ((v13 - 2 * v12) & 0xFE));
      v49 = v12;
      v16 = *v14;
      v15 = v14[1];
      while (v16 != v15)
      {
        v18 = *v16;
        v19 = nullsub_1(v50);
        v20 = v19[1];
        if (!v20)
        {
          goto LABEL_65;
        }

        v21 = vcnt_s8(v20);
        v21.i16[0] = vaddlv_u8(v21);
        if (v21.u32[0] > 1uLL)
        {
          v22 = v18;
          if (v20 <= v18)
          {
            v22 = v18 % v20;
          }
        }

        else
        {
          v22 = (v20 - 1) & v18;
        }

        v23 = *(*v19 + 8 * v22);
        if (!v23 || (v24 = *v23) == 0)
        {
LABEL_65:
          sub_49EC("unordered_map::at: key not found");
        }

        if (v21.u32[0] < 2uLL)
        {
          v25 = v20 - 1;
          while (1)
          {
            v26 = v24[1];
            if (v26 == v18)
            {
              if (*(v24 + 4) == v18)
              {
                goto LABEL_28;
              }
            }

            else if ((v26 & v25) != v22)
            {
              goto LABEL_65;
            }

            v24 = *v24;
            if (!v24)
            {
              goto LABEL_65;
            }
          }
        }

        while (1)
        {
          v32 = v24[1];
          if (v32 == v18)
          {
            break;
          }

          if (v32 >= v20)
          {
            v32 %= v20;
          }

          if (v32 != v22)
          {
            goto LABEL_65;
          }

LABEL_31:
          v24 = *v24;
          if (!v24)
          {
            goto LABEL_65;
          }
        }

        if (*(v24 + 4) != v18)
        {
          goto LABEL_31;
        }

LABEL_28:
        v27 = v24[3] + (HIDWORD(v18) << 6);
        v29 = *(v27 + 40);
        v28 = *(v27 + 48);
        if ((v28 - v29) >= 4)
        {
          v30 = *v29;
          v31 = 1;
        }

        else
        {
          v30 = 0;
          v31 = 0;
        }

        v33 = &v29[v31];
        if ((v33 + 1) <= v28)
        {
          v34 = *v33;
          v35 = *a1 + 224;
          v36 = a5[1];
          v37 = a5[2];
          if (v36 >= v37)
          {
            goto LABEL_42;
          }

LABEL_12:
          *v36 = v35;
          *(v36 + 8) = v30;
          v17 = v36 + 24;
          *(v36 + 16) = v34;
          goto LABEL_13;
        }

        v34 = 0;
        v35 = *a1 + 224;
        v36 = a5[1];
        v37 = a5[2];
        if (v36 < v37)
        {
          goto LABEL_12;
        }

LABEL_42:
        v38 = *a5;
        v39 = 0xAAAAAAAAAAAAAAABLL * ((v36 - *a5) >> 3);
        v40 = v39 + 1;
        if (v39 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        v41 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v38) >> 3);
        if (2 * v41 > v40)
        {
          v40 = 2 * v41;
        }

        if (v41 >= 0x555555555555555)
        {
          v42 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          if (v42 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v43 = 8 * ((v36 - *a5) >> 3);
        *v43 = v35;
        *(v43 + 8) = v30;
        *(v43 + 16) = v34;
        v17 = 24 * v39 + 24;
        v44 = (24 * v39 - (v36 - v38));
        memcpy(v44, v38, v36 - v38);
        *a5 = v44;
        a5[1] = v17;
        a5[2] = 0;
        if (v38)
        {
          operator delete(v38);
        }

LABEL_13:
        a5[1] = v17;
        ++v16;
      }

      v12 = v49 - 1;
      v6 = v48;
    }

    while (v49 != 1);
  }

  sub_2BD490(a5);
  v9 = *a5;
  v10 = a5[1];
  if (*a5 != v10)
  {
    v11 = 1 << a4;
    while (sub_38F51C(**v9 + 704 * *(v9 + 8), a3) && (*(**v9 + 704 * *(v9 + 8) + 464) & v11) != 0)
    {
      v9 += 24;
      if (v9 == v10)
      {
        v9 = v10;
        goto LABEL_60;
      }
    }

    if (v9 != v10)
    {
      for (i = v9 + 24; i != v10; i += 24)
      {
        if (sub_38F51C(**i + 704 * *(i + 8), a3) && (*(**i + 704 * *(i + 8) + 464) & v11) != 0)
        {
          *v9 = *i;
          *(v9 + 16) = *(i + 16);
          v9 += 24;
        }
      }
    }
  }

LABEL_60:
  if (v9 != a5[1])
  {
    a5[1] = v9;
  }

  if (__p)
  {
    v52 = __p;
    operator delete(__p);
  }
}

void sub_2BD304(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
    v17 = *v15;
    if (!*v15)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v17 = *v15;
    if (!*v15)
    {
      goto LABEL_3;
    }
  }

  *(v15 + 8) = v17;
  operator delete(v17);
  _Unwind_Resume(exception_object);
}

uint64_t *sub_2BD360(void *a1, unsigned int a2)
{
  v4 = nullsub_1(*a1);
  v5 = v4[1];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a2;
    if (v5 <= a2)
    {
      v7 = a2 % v5;
    }
  }

  else
  {
    v7 = (v5 - 1) & a2;
  }

  v8 = *(*v4 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_21:
    nullsub_1(*a1);
    return a1 + 1;
  }

  if (v6.u32[0] < 2uLL)
  {
    v10 = v5 - 1;
    while (1)
    {
      v11 = v9[1];
      if (v11 == a2)
      {
        if (*(v9 + 4) == a2)
        {
          goto LABEL_22;
        }
      }

      else if ((v11 & v10) != v7)
      {
        goto LABEL_21;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_21;
      }
    }
  }

  while (1)
  {
    v12 = v9[1];
    if (v12 == a2)
    {
      break;
    }

    if (v12 >= v5)
    {
      v12 %= v5;
    }

    if (v12 != v7)
    {
      goto LABEL_21;
    }

LABEL_16:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_21;
    }
  }

  if (*(v9 + 4) != a2)
  {
    goto LABEL_16;
  }

LABEL_22:
  nullsub_1(*a1);
  return v9 + 6;
}

void sub_2BD490(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v3 - v2) >> 3));
  if (v3 == v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_2C1FDC(v2, v3, &v16, v5, 1);
  v7 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
LABEL_28:
    if (v7 != v6)
    {
      a1[1] = v7;
    }
  }

  else
  {
    v8 = v7 - 24;
    while (v8 + 48 != v6)
    {
      v9 = *(v8 + 24);
      v10 = *(v8 + 32);
      v8 += 24;
      if (v9 == *(v8 + 24) && v10 == *(v8 + 32) && *(v8 + 16) == *(v8 + 40))
      {
        v13 = v8 + 48;
        if (v8 + 48 != v6)
        {
          do
          {
            if (*v8 != *v13 || *(v8 + 8) != *(v13 + 8) || *(v8 + 16) != *(v13 + 16))
            {
              *(v8 + 24) = *v13;
              *(v8 + 40) = *(v13 + 16);
              v8 += 24;
            }

            v13 += 24;
          }

          while (v13 != v6);
          v6 = a1[1];
        }

        v7 = v8 + 24;
        goto LABEL_28;
      }
    }
  }
}

void sub_2BD5C4(void *a1@<X0>, unsigned int a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (*a1)
  {
    if ((sub_57A90(a2) & 0xFFFFFFFE) == 0x1E)
    {
      operator new();
    }

    if (sub_57A90(a2) <= 0x1D)
    {
      sub_57A90(a2);
      operator new();
    }

    sub_2BD490(a5);
    v7 = *a5;
    v8 = a5[1];
    if (*a5 != v8)
    {
      v9 = 1 << a4;
      while (sub_38F51C(**v7 + 704 * *(v7 + 8), a3) && (*(**v7 + 704 * *(v7 + 8) + 464) & v9) != 0)
      {
        v7 += 24;
        if (v7 == v8)
        {
          v7 = v8;
          goto LABEL_18;
        }
      }

      if (v7 != v8)
      {
        for (i = v7 + 24; i != v8; i += 24)
        {
          if (sub_38F51C(**i + 704 * *(i + 8), a3) && (*(**i + 704 * *(i + 8) + 464) & v9) != 0)
          {
            *v7 = *i;
            *(v7 + 16) = *(i + 16);
            v7 += 24;
          }
        }
      }
    }

LABEL_18:
    if (v7 != a5[1])
    {
      a5[1] = v7;
    }
  }
}

void sub_2BDB14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
    v19 = *v17;
    if (!*v17)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v19 = *v17;
    if (!*v17)
    {
      goto LABEL_3;
    }
  }

  *(v17 + 8) = v19;
  operator delete(v19);
  _Unwind_Resume(exception_object);
}