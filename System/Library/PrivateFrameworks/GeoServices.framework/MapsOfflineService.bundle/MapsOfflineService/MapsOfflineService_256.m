uint64_t sub_FBD46C(void *a1, int a2, int a3)
{
  v3 = a1[25];
  v4 = (v3 + 8);
  v5 = a1[26] - v3 - 16;
  v6 = v5 >> 3;
  if (v5 >> 3 >= 1)
  {
    if (v5 != 8)
    {
      do
      {
        v7 = (2 * v6) & 0xFFFFFFFFFFFFFFF8;
        _X12 = v4 + v7;
        __asm { PRFM            #0, [X12] }

        v14 = &v4[2 * (v6 >> 1)];
        _X11 = v14 + v7;
        __asm { PRFM            #0, [X11] }

        if (*v14 >= a3)
        {
          v17 = 0;
        }

        else
        {
          v17 = v6 >> 1;
        }

        v4 += 2 * v17;
        v6 -= v6 >> 1;
      }

      while (v6 > 1);
    }

    v4 += 2 * (*v4 < a3);
  }

  v18 = *(v4 - 2);
  v19 = *v4 - v18;
  if (*v4 == v18)
  {
    v20 = *(v4 - 1);
    goto LABEL_17;
  }

  v21 = v4[1];
  v22 = *(v4 - 1);
  v23 = (a3 - v18) / v19 * (v21 - v22);
  if (v23 >= 0.0)
  {
    if (v23 < 4.50359963e15)
    {
      v24 = (v23 + v23) + 1;
      goto LABEL_15;
    }
  }

  else if (v23 > -4.50359963e15)
  {
    v24 = (v23 + v23) - 1 + (((v23 + v23) - 1) >> 63);
LABEL_15:
    v23 = (v24 >> 1);
  }

  v20 = v22 + v23;
LABEL_17:
  v25 = v20 + a2;
  v26 = a1[22];
  v27 = (v26 + 8);
  v28 = a1[23] - v26 - 16;
  v29 = v28 >> 3;
  if (v28 >> 3 >= 1)
  {
    if (v28 != 8)
    {
      do
      {
        v30 = (2 * v29) & 0xFFFFFFFFFFFFFFF8;
        _X13 = v27 + v30;
        __asm { PRFM            #0, [X13] }

        v33 = &v27[2 * (v29 >> 1)];
        _X12 = v33 + v30;
        __asm { PRFM            #0, [X12] }

        if (*v33 >= v25)
        {
          v36 = 0;
        }

        else
        {
          v36 = v29 >> 1;
        }

        v27 += 2 * v36;
        v29 -= v29 >> 1;
      }

      while (v29 > 1);
    }

    v27 += 2 * (*v27 < v25);
  }

  v37 = *(v27 - 2);
  v38 = *v27 - v37;
  if (*v27 == v37)
  {
    return (*(v27 - 1) - a3);
  }

  v40 = v27[1];
  v41 = *(v27 - 1);
  v42 = (v25 - v37) / v38 * (v40 - v41);
  if (v42 >= 0.0)
  {
    if (v42 < 4.50359963e15)
    {
      v43 = (v42 + v42) + 1;
      goto LABEL_31;
    }
  }

  else if (v42 > -4.50359963e15)
  {
    v43 = (v42 + v42) - 1 + (((v42 + v42) - 1) >> 63);
LABEL_31:
    v42 = (v43 >> 1);
  }

  return (v41 + v42 - a3);
}

uint64_t sub_FBD684(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  *(a1 + 72) = 0u;
  v7 = (a1 + 72);
  *(a1 + 16) = v4;
  *(a1 + 88) = 0u;
  *(a1 + 104) = *(a2 + 104);
  prime = *(a2 + 80);
  if (prime == 1)
  {
    prime = 2;
LABEL_17:
    sub_B07C(v7, prime);
    goto LABEL_18;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(*(a2 + 80));
    v9 = *(a1 + 80);
    v10 = prime >= *&v9;
    if (prime > *&v9)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v9 = 0;
    v10 = 1;
    if (prime)
    {
      goto LABEL_17;
    }
  }

  if (!v10)
  {
    v11 = vcvtps_u32_f32(*(a1 + 96) / *(a1 + 104));
    if (*&v9 < 3uLL || (v12 = vcnt_s8(v9), v12.i16[0] = vaddlv_u8(v12), v12.u32[0] > 1uLL))
    {
      v11 = std::__next_prime(v11);
    }

    else
    {
      v13 = 1 << -__clz(v11 - 1);
      if (v11 >= 2)
      {
        v11 = v13;
      }
    }

    if (prime <= v11)
    {
      prime = v11;
    }

    if (prime < *&v9)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
  for (i = *(a2 + 88); i; i = *i)
  {
    sub_FBD9B0(v7, i + 16);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  v16 = *(a2 + 112);
  v15 = *(a2 + 120);
  if (v15 != v16)
  {
    if (((v15 - v16) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  v18 = *(a2 + 136);
  v17 = *(a2 + 144);
  if (v17 != v18)
  {
    if (((v17 - v18) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  v20 = *(a2 + 160);
  v19 = *(a2 + 168);
  if (v19 != v20)
  {
    if (((v19 - v20) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1794();
  }

  return a1;
}

void sub_FBD918(_Unwind_Exception *a1)
{
  v7 = *v3;
  if (*v3)
  {
    v1[21] = v7;
    operator delete(v7);
    v8 = *v5;
    if (!*v5)
    {
LABEL_3:
      v9 = *v4;
      if (!*v4)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v8 = *v5;
    if (!*v5)
    {
      goto LABEL_3;
    }
  }

  v1[18] = v8;
  operator delete(v8);
  v9 = *v4;
  if (!*v4)
  {
LABEL_4:
    sub_11BD8(v2);
    _Unwind_Resume(a1);
  }

LABEL_7:
  v1[15] = v9;
  operator delete(v9);
  sub_11BD8(v2);
  _Unwind_Resume(a1);
}

uint64_t **sub_FBD9B0(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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
        if (*(v7 + 16) == v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_FBDCEC(uint64_t a1)
{
  *a1 = 1;
  *(a1 + 8) = xmmword_22AEAB0;
  *(a1 + 24) = 0x4041800000000000;
  *(a1 + 32) = 9000;
  __asm { FMOV            V0.2D, #1.0 }

  *(a1 + 40) = _Q0;
  *(a1 + 56) = 675;
  *(a1 + 64) = 0x4008000000000000;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 1065353216;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  operator new();
}

void sub_FBDFE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11)
{
  v14 = v11[20];
  if (v14)
  {
    v11[21] = v14;
    operator delete(v14);
    v15 = *v12;
    if (!*v12)
    {
LABEL_3:
      v16 = *a10;
      if (!*a10)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v15 = *v12;
    if (!*v12)
    {
      goto LABEL_3;
    }
  }

  v11[18] = v15;
  operator delete(v15);
  v16 = *a10;
  if (!*a10)
  {
LABEL_5:
    sub_11BD8(a11);
    _Unwind_Resume(a1);
  }

LABEL_4:
  v11[15] = v16;
  operator delete(v16);
  goto LABEL_5;
}

void sub_FBE618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_FBE660(uint64_t a1, uint64_t a2)
{
  memset(__p, 0, sizeof(__p));
  sub_3AEC94(a2, &qword_278CB28, __p);
  sub_FBDCEC(a1);
}

void sub_FBE710(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1A104(va);
  _Unwind_Resume(a1);
}

void sub_FBE724(void *a1, uint64_t a2, double *a3)
{
  v8 = 0;
  LOBYTE(__p) = 0;
  sub_5FB24(a1, a2, &__p, v9);
  if (v8 < 0)
  {
    operator delete(__p);
    v6 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v6 = v9[1];
    }

    if (!v6)
    {
LABEL_5:
      if ((v5 & 0x80) == 0)
      {
        return;
      }

LABEL_11:
      operator delete(v9[0]);
      return;
    }
  }

  else
  {
    v4 = v10;
    v5 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v4 = v9[1];
    }

    if (!v4)
    {
      goto LABEL_5;
    }
  }

  *a3 = sub_FBECE0(v9);
  if ((v10 & 0x80) != 0)
  {
    goto LABEL_11;
  }
}

void sub_FBE7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_FBE800(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  result = sub_5FC3C(a1, a2);
  if (result)
  {
    result = sub_5F680(a1, a2);
    v9 = *result;
    v8 = *(result + 8);
    v20 = v8;
    while (1)
    {
      if (v9 == v8)
      {
        return result;
      }

      if (*(v9 + 8) != 5)
      {
        sub_5AF20();
      }

      v21 = v9;
      v10 = *v9;
      v11 = sub_588E0(*v9);
      result = sub_5FC5C();
      v22 = result;
      if (v11 == result)
      {
        goto LABEL_3;
      }

      while (2)
      {
        for (i = 0; i != 55; ++i)
        {
          v14 = *(a4 + 8 * i);
          result = strlen(v14);
          v15 = result;
          v16 = *(v11 + 39);
          if (v16 < 0)
          {
            v17 = *(v11 + 16);
            if (result != *(v11 + 24))
            {
              continue;
            }
          }

          else
          {
            v17 = (v11 + 16);
            if (result != v16)
            {
              continue;
            }
          }

          if (result)
          {
            while (1)
            {
              v18 = *v14;
              v19 = __toupper(*v17);
              result = __toupper(v18);
              if (v19 != result)
              {
                break;
              }

              ++v17;
              ++v14;
              if (!--v15)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
LABEL_10:
            v13 = sub_63D34(v10, v11 + 16);
            v24 = i;
            v25 = &v24;
            result = sub_FBEE28(a3, &v24);
            *(result + 24) = v13;
          }
        }

        v11 = *v11;
        if (v11 != v22)
        {
          continue;
        }

        break;
      }

LABEL_3:
      v8 = v20;
      v9 = v21 + 16;
    }
  }

  return result;
}

char *sub_FBE99C(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = a1[2];
  v6 = *a1;
  result = v6;
  if (a4 > (v5 - v6) >> 3)
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

    if (!(a4 >> 61))
    {
      v9 = v5 >> 2;
      if (v5 >> 2 <= a4)
      {
        v9 = a4;
      }

      v10 = v5 >= 0x7FFFFFFFFFFFFFF8;
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
  if (a4 > (v12 - v6) >> 3)
  {
    v13 = (a2 + v12 - v6);
    v14 = v12 - v6;
    if (v12 == v6)
    {
      v19 = a1[1];
      v20 = v19;
      if (v13 == a3)
      {
        goto LABEL_39;
      }

LABEL_29:
      v32 = &v12[a2];
      v33 = a3 + v6 - &v12[a2] - 8;
      if (v33 >= 0x38)
      {
        v35 = &v6[v19] - v32;
        v20 = v19;
        if (v35 >= 0x20)
        {
          v36 = (v33 >> 3) + 1;
          v37 = 8 * (v36 & 0x3FFFFFFFFFFFFFFCLL);
          v13 = (v13 + v37);
          v20 = &v19[v37];
          v38 = v19 + 16;
          v39 = (v14 + a2 + 16);
          v40 = v36 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v41 = *v39;
            *(v38 - 1) = *(v39 - 1);
            *v38 = v41;
            v38 += 2;
            v39 += 2;
            v40 -= 4;
          }

          while (v40);
          if (v36 == (v36 & 0x3FFFFFFFFFFFFFFCLL))
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        v20 = v19;
      }

      do
      {
        v42 = *v13++;
        *v20 = v42;
        v20 += 8;
      }

      while (v13 != a3);
LABEL_39:
      a1[1] = v20;
      return result;
    }

    v15 = v14 - 8;
    if ((v14 - 8) >= 0x58)
    {
      v21 = (v15 & 0xFFFFFFFFFFFFFFF8) + 8;
      v22 = v6 < a2 + v21 && &v6[v21] > a2;
      v16 = a2;
      if (!v22)
      {
        v23 = (v15 >> 3) + 1;
        v24 = 8 * (v23 & 0x3FFFFFFFFFFFFFF8);
        result = &v6[v24];
        v16 = (a2 + v24);
        v25 = (a2 + 32);
        v26 = v6 + 32;
        v27 = v23 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v29 = *(v25 - 2);
          v28 = *(v25 - 1);
          v31 = *v25;
          v30 = v25[1];
          v25 += 4;
          *(v26 - 2) = v29;
          *(v26 - 1) = v28;
          *v26 = v31;
          v26[1] = v30;
          v26 += 4;
          v27 -= 8;
        }

        while (v27);
        if (v23 == (v23 & 0x3FFFFFFFFFFFFFF8))
        {
LABEL_28:
          v19 = a1[1];
          v20 = v19;
          if (v13 == a3)
          {
            goto LABEL_39;
          }

          goto LABEL_29;
        }
      }
    }

    else
    {
      v16 = a2;
    }

    do
    {
      *result = *v16;
      *(result + 1) = *(v16++ + 1);
      result += 8;
    }

    while (v16 != v13);
    goto LABEL_28;
  }

  if (a2 != a3)
  {
    v17 = a3 - a2 - 8;
    if (v17 >= 0x58)
    {
      v34 = (v17 & 0xFFFFFFFFFFFFFFF8) + 8;
      if (v6 >= a2 + v34 || &v6[v34] <= a2)
      {
        v43 = (v17 >> 3) + 1;
        v44 = 8 * (v43 & 0x3FFFFFFFFFFFFFF8);
        result = &v6[v44];
        v18 = (a2 + v44);
        v45 = (a2 + 32);
        v46 = v6 + 32;
        v47 = v43 & 0x3FFFFFFFFFFFFFF8;
        do
        {
          v49 = *(v45 - 2);
          v48 = *(v45 - 1);
          v51 = *v45;
          v50 = v45[1];
          v45 += 4;
          *(v46 - 2) = v49;
          *(v46 - 1) = v48;
          *v46 = v51;
          v46[1] = v50;
          v46 += 4;
          v47 -= 8;
        }

        while (v47);
        if (v43 == (v43 & 0x3FFFFFFFFFFFFFF8))
        {
          goto LABEL_44;
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
      *(result + 1) = *(v18++ + 1);
      result += 8;
    }

    while (v18 != a3);
  }

LABEL_44:
  a1[1] = result;
  return result;
}

double sub_FBECE0(__int128 *a1)
{
  v1 = *(a1 + 23);
  if (v1 < 0)
  {
    if (*(a1 + 1) == 7 && **a1 == 1635151465 && *(*a1 + 3) == 1684630625)
    {
      return -1.0;
    }

    if (*(a1 + 1) == 7)
    {
      v3 = *a1;
LABEL_16:
      v5 = *v3;
      v6 = *(v3 + 3);
      if (v5 != 1096175177 || v6 != 1145654337)
      {
        goto LABEL_20;
      }

      return -1.0;
    }
  }

  else if (v1 == 7)
  {
    v2 = *a1 == 1635151465 && *(a1 + 3) == 1684630625;
    v3 = a1;
    if (v2)
    {
      return -1.0;
    }

    goto LABEL_16;
  }

LABEL_20:
  sub_71628(a1, &v10);
  result = sub_669B4(&__p, v10);
  if (v12 < 0)
  {
    v9 = result;
    operator delete(__p);
    return v9;
  }

  return result;
}

void sub_FBEE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **sub_FBEE28(void *a1, unsigned __int8 *a2)
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
      v5 = v2 % a1[1];
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
        if (*(v7 + 16) == v2)
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

  if (*(v7 + 16) != v2)
  {
    goto LABEL_12;
  }

  return v7;
}

void sub_FBF16C(void *a1, uint64_t a2, void *a3)
{
  if (sub_5FC3C(a1, a2))
  {
    a3[1] = *a3;
    v6 = sub_5F680(a1, a2);
    v7 = *v6;
    v8 = v6[1];
    if (*v6 != v8)
    {
      while (1)
      {
        if (*(v7 + 8) != 5)
        {
          sub_5AF20();
        }

        v9 = *v7;
        v25 = 9;
        strcpy(__p, "threshold");
        v10 = sub_5F8FC(v9, __p);
        v11 = sub_92B264(v10);
        if (v25 < 0)
        {
          operator delete(__p[0]);
        }

        v25 = 5;
        strcpy(__p, "value");
        v12 = sub_5F8FC(v9, __p);
        v13 = sub_92B264(v12);
        if (v25 < 0)
        {
          operator delete(__p[0]);
          v15 = a3[1];
          v14 = a3[2];
          if (v15 < v14)
          {
            goto LABEL_4;
          }

LABEL_12:
          v16 = *a3;
          v17 = v15 - *a3;
          v18 = v17 >> 3;
          v19 = (v17 >> 3) + 1;
          if (v19 >> 61)
          {
            sub_1794();
          }

          v20 = v14 - v16;
          if (v20 >> 2 > v19)
          {
            v19 = v20 >> 2;
          }

          if (v20 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v19;
          }

          if (v21)
          {
            if (!(v21 >> 61))
            {
              operator new();
            }

            sub_1808();
          }

          v22 = (8 * v18);
          *v22 = v11;
          v22[1] = v13;
          v23 = 8 * v18 + 8;
          memcpy(0, v16, v17);
          *a3 = 0;
          a3[1] = v23;
          a3[2] = 0;
          if (v16)
          {
            operator delete(v16);
          }

          a3[1] = v23;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }

        else
        {
          v15 = a3[1];
          v14 = a3[2];
          if (v15 >= v14)
          {
            goto LABEL_12;
          }

LABEL_4:
          *v15 = v11;
          v15[1] = v13;
          a3[1] = v15 + 2;
          v7 += 16;
          if (v7 == v8)
          {
            return;
          }
        }
      }
    }
  }
}

void sub_FBF37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_FBF404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, char a7)
{
  *result = a3;
  *(result + 8) = a4;
  *(result + 16) = a2;
  *(result + 24) = a5;
  *(result + 28) = a6;
  *(result + 32) = -1;
  *(result + 40) = -1;
  *(result + 48) = a7;
  *(result + 49) = 0;
  *(result + 52) = 0;
  *(result + 56) = 0;
  return result;
}

uint64_t sub_FBF440(uint64_t result)
{
  *(result + 52) = 0;
  *(result + 56) = 0;
  *(result + 49) = 0;
  return result;
}

void sub_FBF458()
{
  byte_27C02C7 = 3;
  LODWORD(qword_27C02B0) = 5136193;
  byte_27C02DF = 3;
  LODWORD(qword_27C02C8) = 5136194;
  byte_27C02F7 = 3;
  LODWORD(qword_27C02E0) = 5136195;
  byte_27C030F = 15;
  strcpy(&qword_27C02F8, "vehicle_mass_kg");
  byte_27C0327 = 21;
  strcpy(&xmmword_27C0310, "vehicle_cargo_mass_kg");
  byte_27C033F = 19;
  strcpy(&qword_27C0328, "vehicle_aux_power_w");
  byte_27C0357 = 15;
  strcpy(&qword_27C0340, "dcdc_efficiency");
  strcpy(&qword_27C0358, "drive_train_efficiency");
  HIBYTE(word_27C036E) = 22;
  operator new();
}

void sub_FBF634(_Unwind_Exception *a1)
{
  if (SHIBYTE(word_27C036E) < 0)
  {
    sub_21E5EE4();
  }

  sub_21E5EF0();
  _Unwind_Resume(a1);
}

void *sub_FBF654(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (!sub_5FC6C(a3))
  {
    sub_FC0900(v6, a3, a4, &v23);
    v6[11] = 0xD4BFB52FED4BFB53 * ((v6[6] - v6[5]) >> 3);
    operator new();
  }

  sub_FC0900(v6, a2, a4, &v34);
  v7 = v34;
  if (v34)
  {
    v8 = v35;
    v9 = v34;
    if (v35 != v34)
    {
      do
      {
        v10 = *(v8 - 24);
        if (v10)
        {
          do
          {
            v12 = *v10;
            v13 = *(v10 + 12);
            if (v13 != -1)
            {
              (off_2674CE0[v13])(v24, v10 + 5);
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

        v11 = *(v8 - 40);
        *(v8 - 40) = 0;
        if (v11)
        {
          operator delete(v11);
        }

        v8 -= 48;
      }

      while (v8 != v7);
      v9 = v34;
      v6 = a1;
    }

    v35 = v7;
    operator delete(v9);
  }

  v6[11] = 0;
  sub_FC1228(v6);
  if (sub_7E7E4(1u))
  {
    sub_19594F8(v24);
    sub_4A5C(v24, "No preprocessed cost functions in the data. Registered ", 55);
    v14 = std::ostream::operator<<();
    sub_4A5C(v14, " cost functions from the current cost function JSON config.", 59);
    if ((v33 & 0x10) != 0)
    {
      v16 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v16 = v29;
      }

      v17 = v28;
      v15 = v16 - v28;
      if (v16 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v15 = 0;
        BYTE7(v22) = 0;
LABEL_29:
        *(v21 + v15) = 0;
        sub_7E854(v21, 1u);
        v6 = a1;
        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        return v6;
      }

      v17 = v26;
      v15 = v27 - v26;
      if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    BYTE7(v22) = v15;
    if (v15)
    {
      memmove(v21, v17, v15);
    }

    goto LABEL_29;
  }

  return v6;
}

void sub_FC06FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a41);
  v47 = *a9;
  if (*a9)
  {
    a17[19] = v47;
    operator delete(v47);
    sub_23D9C(a12);
    v48 = a17[8];
    if (!v48)
    {
LABEL_5:
      sub_FC9F64(a10);
      sub_11BD8(a17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_23D9C(a12);
    v48 = a17[8];
    if (!v48)
    {
      goto LABEL_5;
    }
  }

  a17[9] = v48;
  operator delete(v48);
  sub_FC9F64(a10);
  sub_11BD8(a17);
  _Unwind_Resume(a1);
}

void sub_FC0900(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  HIBYTE(v86) = 14;
  strcpy(&v85, "cost_functions");
  v5 = sub_5FAAC(a2, &v85, a2);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  v6 = *(a1 + 40);
  v71 = (a1 + 40);
  v7 = *(a1 + 48);
  if (v7 != v6)
  {
    v8 = v7 - 1744;
    do
    {
      sub_3BE944((v8 + 24));
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v9 = v8 - 8;
      v8 -= 1752;
    }

    while (v9 != v6);
  }

  v70 = a1;
  *(a1 + 48) = v6;
  *v82 = 0u;
  v83 = 0u;
  v84 = 1065353216;
  __p = 0;
  v80 = 0;
  v81 = 0;
  v80 = sub_1CEE8(&__p, "standard");
LABEL_10:
  v10 = *(&v83 + 1);
  if (v10 < sub_5FC64(v5))
  {
    v11 = sub_588E0(v5);
    v12 = sub_5FC5C();
    if (v11 == v12)
    {
      goto LABEL_100;
    }

    v13 = 0;
    while (1)
    {
      v14 = (v11 + 16);
      sub_FC142C(v11 + 16, v5, v82, &v74);
      if (!sub_5FC6C(&v74))
      {
        break;
      }

      v15 = v76;
      if (v76)
      {
        goto LABEL_65;
      }

LABEL_62:
      v42 = v74;
      v74 = 0;
      if (v42)
      {
        operator delete(v42);
      }

      v11 = *v11;
      if (v11 == v12)
      {
        if (v13)
        {
          goto LABEL_10;
        }

LABEL_100:
        exception = __cxa_allocate_exception(0x40uLL);
        v69 = sub_2D390(exception, "initial processing of cost functions json failed, parents inconsistent", 0x46uLL);
      }
    }

    *&v85 = v11 + 16;
    v16 = sub_8E484(v82, v11 + 16);
    v17 = v16;
    if (v16[8])
    {
      v18 = v16[7];
      if (v18)
      {
        do
        {
          v26 = *v18;
          v27 = *(v18 + 12);
          if (v27 != -1)
          {
            (off_2674CE0[v27])(&v85, v18 + 5);
          }

          *(v18 + 12) = -1;
          if (*(v18 + 39) < 0)
          {
            operator delete(v18[2]);
          }

          operator delete(v18);
          v18 = v26;
        }

        while (v26);
      }

      v17[7] = 0;
      v19 = v17[6];
      if (v19)
      {
        bzero(v17[5], 8 * v19);
      }

      v17[8] = 0;
    }

    v20 = v74;
    v74 = 0;
    v21 = v17[5];
    v17[5] = v20;
    if (v21)
    {
      operator delete(v21);
    }

    v22 = v75;
    v23 = v76;
    v17[7] = v76;
    v17[6] = v22;
    v75 = 0;
    v24 = v77;
    v17[8] = v77;
    *(v17 + 18) = v78;
    if (v24)
    {
      v25 = v23[1];
      if ((v22 & (v22 - 1)) != 0)
      {
        if (v25 >= v22)
        {
          v25 %= v22;
        }
      }

      else
      {
        v25 &= v22 - 1;
      }

      v17[5][v25] = (v17 + 7);
      v76 = 0;
      v77 = 0;
    }

    v28 = *(v11 + 39);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v11 + 24);
    }

    if (v28 != 8)
    {
      goto LABEL_41;
    }

    v30 = *v14;
    if (v29 >= 0)
    {
      v30 = (v11 + 16);
    }

    if (*v30 != 0x647261646E617473)
    {
LABEL_41:
      v31 = v80;
      if (v80 >= v81)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v80 - __p) >> 3) + 1;
        if (v34 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v81 - __p) >> 3) > v34)
        {
          v34 = 0x5555555555555556 * ((v81 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v81 - __p) >> 3) >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v34;
        }

        p_p = &__p;
        if (v35)
        {
          if (v35 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v38 = (8 * ((v80 - __p) >> 3));
        *&v85 = 0;
        *(&v85 + 1) = v38;
        v39 = 0;
        v86 = v38;
        v87 = 0;
        if ((v29 & 0x80) != 0)
        {
          sub_325C(v38, *(v11 + 16), *(v11 + 24));
          v38 = *(&v85 + 1);
          v37 = v86;
          v39 = v87;
        }

        else
        {
          v36 = *v14;
          *&dword_10[2 * ((v80 - __p) >> 3)] = *(v11 + 32);
          *v38 = v36;
          v37 = v38;
        }

        v33 = v37 + 24;
        v40 = &v38[-(v80 - __p)];
        memcpy(v40, __p, v80 - __p);
        v41 = __p;
        __p = v40;
        v80 = v33;
        v81 = v39;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        if (v29 < 0)
        {
          sub_325C(v80, *v14, *(v11 + 24));
        }

        else
        {
          v32 = *v14;
          *(v80 + 2) = *(v11 + 32);
          *v31 = v32;
        }

        v33 = v31 + 24;
      }

      v80 = v33;
    }

    ++v13;
    v15 = v76;
    if (!v76)
    {
      goto LABEL_62;
    }

    do
    {
LABEL_65:
      v43 = *v15;
      v44 = *(v15 + 12);
      if (v44 != -1)
      {
        (off_2674CE0[v44])(&v85, v15 + 5);
      }

      *(v15 + 12) = -1;
      if (*(v15 + 39) < 0)
      {
        operator delete(v15[2]);
      }

      operator delete(v15);
      v15 = v43;
    }

    while (v43);
    goto LABEL_62;
  }

  v45 = v80;
  v46 = __p + 24;
  v47 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v80 - (__p + 24)) >> 3));
  v48 = v80 == __p + 24;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  sub_79630(v46, v45, &v85, v49, 1);
  v50 = __p;
  if (__p != v80)
  {
    v51 = sub_8DE74(v82, __p);
    v52 = sub_FC1660(a3, (v51 + 5));
    LODWORD(v74) = v52;
    v53 = *(v70 + 96);
    if (v53 <= v52)
    {
      v53 = v52;
    }

    *(v70 + 96) = v53;
    v54 = a4[1];
    if (v54 >= a4[2])
    {
      v55 = sub_FC9FE8(a4, &v74, (v51 + 5));
    }

    else
    {
      *v54 = v52;
      sub_5ADDC((v54 + 2), (v51 + 5));
      v55 = (v54 + 12);
    }

    a4[1] = v55;
    v57 = *(v70 + 40);
    v56 = *(v70 + 48);
    *&v85 = v50;
    sub_EDE7E0((v70 + 104), v50)[5] = (0xD4BFB52FED4BFB53 * ((v56 - v57) >> 3));
    v59 = *(v70 + 40);
    v58 = *(v70 + 48);
    *&v85 = &v74;
    sub_FCC494(v70, &v74)[3] = 0xD4BFB52FED4BFB53 * ((v58 - v59) >> 3);
    v60 = *(v70 + 48);
    if (v60 < *(v70 + 56))
    {
      if (*(v50 + 23) < 0)
      {
        sub_325C(&v85, *v50, v50[1]);
      }

      else
      {
        v61 = *v50;
        v86 = v50[2];
        v85 = v61;
      }

      sub_FD0348(v60, (v51 + 5), &v85, v74);
    }

    sub_FCA3A8(v71, (v51 + 5), v50, &v74);
  }

  if (__p)
  {
    v62 = v80;
    v63 = __p;
    if (v80 != __p)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v50);
      v63 = __p;
    }

    v80 = v50;
    operator delete(v63);
  }

  v65 = v83;
  if (v83)
  {
    do
    {
      v66 = *v65;
      sub_8DBE8((v65 + 2));
      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v67 = v82[0];
  v82[0] = 0;
  if (v67)
  {
    operator delete(v67);
  }
}

void sub_FC1054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void **);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_FC113C(a5);
  sub_1A104(va);
  sub_8E8D8(va1);
  _Unwind_Resume(a1);
}

void **sub_FC113C(void **a1)
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
            v7 = *v5;
            v8 = *(v5 + 12);
            if (v8 != -1)
            {
              (off_2674CE0[v8])(&v10, v5 + 5);
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

        v6 = *(v3 - 5);
        *(v3 - 5) = 0;
        if (v6)
        {
          operator delete(v6);
        }

        v3 -= 48;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_FC1228(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 72);
    do
    {
      v4 = *(a1 + 80);
      if (v3 < v4)
      {
        *v3++ = *(v2 + 4);
      }

      else
      {
        v5 = *(a1 + 64);
        v6 = v3 - v5;
        v7 = (v3 - v5) >> 2;
        v8 = v7 + 1;
        if ((v7 + 1) >> 62)
        {
          sub_1794();
        }

        v9 = v4 - v5;
        if (v9 >> 1 > v8)
        {
          v8 = v9 >> 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (!(v10 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v11 = v7;
        v12 = (4 * v7);
        v13 = &v12[-v11];
        *v12 = *(v2 + 4);
        v3 = v12 + 1;
        memcpy(v13, v5, v6);
        *(a1 + 64) = v13;
        *(a1 + 72) = v3;
        *(a1 + 80) = 0;
        if (v5)
        {
          operator delete(v5);
        }
      }

      *(a1 + 72) = v3;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 72);
  }

  v14 = *(a1 + 64);
  v15 = 126 - 2 * __clz((v3 - v14) >> 2);
  if (v3 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_1C4C(v14, v3, &v25, v16, 1);
  v17 = *(a1 + 144);
  v18 = ((*(a1 + 96) + 1) * (*(a1 + 96) + 1));
  v19 = (*(a1 + 152) - v17) >> 3;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(a1 + 152) = v17 + 8 * v18;
    }
  }

  else
  {
    sub_30B70(a1 + 144, v18 - v19);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  while (v20 != v21)
  {
    v22 = *(a1 + 40);
    for (i = *(a1 + 48); v22 != i; v22 += 438)
    {
      v24 = sub_FC1DF0(v20, v22);
      *sub_FC3114((a1 + 144), (*v20 + *v20 * *(a1 + 96) + *v22)) = v24;
    }

    v20 += 438;
  }
}

void sub_FC142C(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if (sub_8DCBC(a3, a1))
  {

    sub_5F328(a4);
    return;
  }

  v8 = *(a1 + 23);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 8);
  }

  if (v8 == 8)
  {
    v10 = v9 >= 0 ? a1 : *a1;
    if (*v10 == 0x647261646E617473)
    {
      v14 = sub_5F5AC(a2, a1);
      v15 = sub_5ADDC(a4, v14);
      sub_FC969C(v15);
      return;
    }
  }

  v11 = sub_5F5AC(a2, a1);
  v19 = 6;
  strcpy(v18, "parent");
  *__p = 0x647261646E617473;
  memset(&__p[8], 0, 15);
  v17 = 8;
  sub_5FB24(v11, v18, __p, v20);
  if (v17 < 0)
  {
    operator delete(*__p);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v19 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v18[0]);
LABEL_14:
  v12 = sub_8DCBC(a3, v20);
  if (v12)
  {
    sub_5ADDC(a4, (v12 + 5));
    v13 = sub_5F5AC(a2, a1);
    sub_5FC7C(a4, v13);
    sub_FC969C(a4);
  }

  else
  {
    sub_5F328(a4);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_FC1608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_FC1660(uint64_t a1, uint64_t a2)
{
  std::mutex::lock(a1);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while ((sub_608F4(v4, a2) & 1) == 0)
    {
      v4 += 40;
      if (v4 == v5)
      {
        v4 = v5;
        break;
      }
    }

    v5 = *(a1 + 72);
  }

  if (v4 == v5)
  {
    v7 = *(sub_74700() + 2);
    *(sub_74700() + 2) = 0;
    v8 = *(a1 + 72);
    if (v8 >= *(a1 + 80))
    {
      v9 = sub_8D2B4((a1 + 64), a2);
    }

    else
    {
      sub_5ADDC(*(a1 + 72), a2);
      v9 = v8 + 40;
      *(a1 + 72) = v8 + 40;
    }

    *(a1 + 72) = v9;
    *(sub_74700() + 2) = v7;
    v6 = sub_2FEF94(0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 72) - *(a1 + 64)) >> 3) - 1);
  }

  else
  {
    v6 = sub_314EB0(0xCCCCCCCCCCCCCCCDLL * ((v4 - *(a1 + 64)) >> 3));
  }

  v10 = v6;
  std::mutex::unlock(a1);
  return v10;
}

void sub_FC1770(_Unwind_Exception *a1)
{
  *(v1 + 72) = v2;
  std::mutex::unlock(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_FC17C8(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_24;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_24:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v2 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == v3)
      {
        if (*(v7 + 4) == v3)
        {
          goto LABEL_14;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_24;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v13 = v7[1];
    if (v13 == v3)
    {
      break;
    }

    if (v13 >= *&v2)
    {
      v13 %= *&v2;
    }

    if (v13 != v5)
    {
      goto LABEL_24;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = v7[3];
  v11 = a1 + 5;

  return sub_FC18D4(v11, v10);
}

uint64_t sub_FC18D4(void *a1, unint64_t a2)
{
  if (0xD4BFB52FED4BFB53 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xD4BFB52FED4BFB53 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 1752 * a2;
}

void sub_FC1A10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_FC1AF0(uint64_t a1, uint64_t a2)
{
  v3 = sub_EDE628((a1 + 104), a2);
  if (!v3)
  {
    return *(a1 + 40);
  }

  v4 = v3[5];

  return sub_FC18D4((a1 + 40), v4);
}

uint64_t sub_FC1B44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if ((*a3 & *sub_FC1BF4((a1 + 144), a2 + a2 * *(a1 + 96) + *v4)) == 0)
      {
        return *v4;
      }

      if (++v4 == v5)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_FC1BF4(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_FC1D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_FC1DF0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 344);
  v5 = *(a2 + 344);
  if (v4 == v5)
  {
    goto LABEL_381;
  }

  v6 = v4 - v5;
  if (v6 <= 0.0)
  {
    v6 = -v6;
  }

  if (v6 < 2.22044605e-16)
  {
LABEL_381:
    v8 = *(a1 + 360);
    v7 = *(a1 + 368);
    v9 = *(a2 + 360);
    if (v7 - v8 == *(a2 + 368) - v9)
    {
      if (v8 == v7)
      {
LABEL_22:
        v18 = *(a1 + 384);
        v17 = *(a1 + 392);
        v19 = *(a2 + 384);
        if (v17 - v18 == *(a2 + 392) - v19)
        {
          if (v18 == v17)
          {
LABEL_40:
            v30 = *(a1 + 408);
            v29 = *(a1 + 416);
            v31 = *(a2 + 408);
            if (v29 - v30 == *(a2 + 416) - v31)
            {
              if (v30 == v29)
              {
LABEL_58:
                v41 = *(a1 + 992);
                v42 = *(a1 + 984);
                v43 = *(a2 + 984);
                if (v41 - v42 == *(a2 + 992) - v43)
                {
                  if (v42 == v41)
                  {
LABEL_65:
                    v44 = *(a1 + 768);
                    v45 = *(a2 + 768);
                    if (v44 == v45)
                    {
                      goto LABEL_77;
                    }

                    v46 = v44 - v45;
                    if (v46 <= 0.0)
                    {
                      v46 = -v46;
                    }

                    if (v46 < 2.22044605e-16)
                    {
LABEL_77:
                      v47 = *(a1 + 776);
                      v48 = *(a2 + 776);
                      if (v47 == v48)
                      {
                        goto LABEL_382;
                      }

                      v49 = v47 - v48;
                      if (v49 <= 0.0)
                      {
                        v49 = -v49;
                      }

                      if (v49 < 2.22044605e-16)
                      {
LABEL_382:
                        v50 = *(a1 + 784);
                        v51 = *(a2 + 784);
                        if (v50 == v51)
                        {
                          goto LABEL_383;
                        }

                        v52 = v50 - v51;
                        if (v52 <= 0.0)
                        {
                          v52 = -v52;
                        }

                        if (v52 < 2.22044605e-16)
                        {
LABEL_383:
                          if (!sub_FCA834((a1 + 792), (a2 + 792)))
                          {
                            v53 = 0;
                            if (*(a1 + 1216) == *(a2 + 1216))
                            {
                              goto LABEL_79;
                            }

LABEL_93:
                            v53 |= 4uLL;
                            goto LABEL_94;
                          }
                        }
                      }
                    }
                  }

                  else
                  {
                    while (*v42 == *v43 && *(v42 + 8) == *(v43 + 8) && *(v42 + 12) == *(v43 + 12) && *(v42 + 16) == *(v43 + 16))
                    {
                      v42 += 24;
                      v43 += 24;
                      if (v42 == v41)
                      {
                        goto LABEL_65;
                      }
                    }
                  }
                }
              }

              else
              {
                while (*v30 == *v31)
                {
                  v32 = v30[1];
                  v33 = v31[1];
                  if (v32 != v33)
                  {
                    v34 = v32 - v33;
                    if (v34 <= 0.0)
                    {
                      v34 = -v34;
                    }

                    if (v34 >= 2.22044605e-16)
                    {
                      break;
                    }
                  }

                  v35 = v30[2];
                  v36 = v31[2];
                  if (v35 != v36)
                  {
                    v37 = v35 - v36;
                    if (v37 <= 0.0)
                    {
                      v37 = -v37;
                    }

                    if (v37 >= 2.22044605e-16)
                    {
                      break;
                    }
                  }

                  v38 = v30[3];
                  v39 = v31[3];
                  if (v38 != v39)
                  {
                    v40 = v38 - v39;
                    if (v40 <= 0.0)
                    {
                      v40 = -v40;
                    }

                    if (v40 >= 2.22044605e-16)
                    {
                      break;
                    }
                  }

                  v30 += 4;
                  v31 += 4;
                  if (v30 == v29)
                  {
                    goto LABEL_58;
                  }
                }
              }
            }
          }

          else
          {
            while (*v18 == *v19)
            {
              v20 = *(v18 + 8);
              v21 = *(v19 + 8);
              if (v20 != v21)
              {
                v22 = v20 - v21;
                if (v22 <= 0.0)
                {
                  v22 = -v22;
                }

                if (v22 >= 2.22044605e-16)
                {
                  break;
                }
              }

              v23 = *(v18 + 16);
              v24 = *(v19 + 16);
              if (v23 != v24)
              {
                v25 = v23 - v24;
                if (v25 <= 0.0)
                {
                  v25 = -v25;
                }

                if (v25 >= 2.22044605e-16)
                {
                  break;
                }
              }

              v26 = *(v18 + 24);
              v27 = *(v19 + 24);
              if (v26 != v27)
              {
                v28 = v26 - v27;
                if (v28 <= 0.0)
                {
                  v28 = -v28;
                }

                if (v28 >= 2.22044605e-16)
                {
                  break;
                }
              }

              v18 += 32;
              v19 += 32;
              if (v18 == v17)
              {
                goto LABEL_40;
              }
            }
          }
        }
      }

      else
      {
        while (1)
        {
          if (*v8 != *v9)
          {
            v10 = *v8 - *v9;
            if (v10 <= 0.0)
            {
              v10 = -v10;
            }

            if (v10 >= 2.22044605e-16)
            {
              break;
            }
          }

          v11 = v8[1];
          v12 = v9[1];
          if (v11 != v12)
          {
            v13 = v11 - v12;
            if (v13 <= 0.0)
            {
              v13 = -v13;
            }

            if (v13 >= 2.22044605e-16)
            {
              break;
            }
          }

          v14 = v8[2];
          v15 = v9[2];
          if (v14 != v15)
          {
            v16 = v14 - v15;
            if (v16 <= 0.0)
            {
              v16 = -v16;
            }

            if (v16 >= 2.22044605e-16)
            {
              break;
            }
          }

          v8 += 3;
          v9 += 3;
          if (v8 == v7)
          {
            goto LABEL_22;
          }
        }
      }
    }
  }

  v53 = 2;
  if (*(a1 + 1216) != *(a2 + 1216))
  {
    goto LABEL_93;
  }

LABEL_79:
  if (*(a1 + 1220) != *(a2 + 1220) || *(a1 + 1224) != *(a2 + 1224))
  {
    goto LABEL_93;
  }

  v54 = *(a1 + 88);
  v55 = *(a2 + 88);
  if (v54 != v55)
  {
    v56 = v54 - v55;
    if (v56 <= 0.0)
    {
      v56 = -v56;
    }

    if (v56 >= 2.22044605e-16)
    {
      goto LABEL_93;
    }
  }

  v57 = *(a1 + 96);
  v58 = *(a2 + 96);
  if (v57 != v58)
  {
    v59 = v57 - v58;
    if (v59 <= 0.0)
    {
      v59 = -v59;
    }

    if (v59 >= 2.22044605e-16)
    {
      goto LABEL_93;
    }
  }

  v60 = *(a1 + 104);
  v61 = *(a2 + 104);
  if (v60 != v61)
  {
    v62 = v60 - v61;
    if (v62 <= 0.0)
    {
      v62 = -v62;
    }

    if (v62 >= 2.22044605e-16)
    {
      goto LABEL_93;
    }
  }

LABEL_94:
  v63 = *(a1 + 112);
  v64 = *(a2 + 112);
  if (v63 != v64)
  {
    v65 = v63 - v64;
    if (v65 <= 0.0)
    {
      v65 = -v65;
    }

    if (v65 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v66 = *(a1 + 120);
  v67 = *(a2 + 120);
  if (v66 != v67)
  {
    v68 = v66 - v67;
    if (v68 <= 0.0)
    {
      v68 = -v68;
    }

    if (v68 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v69 = *(a1 + 128);
  v70 = *(a2 + 128);
  if (v69 != v70)
  {
    v71 = v69 - v70;
    if (v71 <= 0.0)
    {
      v71 = -v71;
    }

    if (v71 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v72 = *(a1 + 136);
  v73 = *(a2 + 136);
  if (v72 != v73)
  {
    v74 = v72 - v73;
    if (v74 <= 0.0)
    {
      v74 = -v74;
    }

    if (v74 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v75 = *(a1 + 144);
  v76 = *(a2 + 144);
  if (v75 != v76)
  {
    v77 = v75 - v76;
    if (v77 <= 0.0)
    {
      v77 = -v77;
    }

    if (v77 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v78 = *(a1 + 152);
  v79 = *(a2 + 152);
  if (v78 != v79)
  {
    v80 = v78 - v79;
    if (v80 <= 0.0)
    {
      v80 = -v80;
    }

    if (v80 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v81 = *(a1 + 160);
  v82 = *(a2 + 160);
  if (v81 != v82)
  {
    v83 = v81 - v82;
    if (v83 <= 0.0)
    {
      v83 = -v83;
    }

    if (v83 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v84 = *(a1 + 168);
  v85 = *(a2 + 168);
  if (v84 != v85)
  {
    v86 = v84 - v85;
    if (v86 <= 0.0)
    {
      v86 = -v86;
    }

    if (v86 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v87 = *(a1 + 176);
  v88 = *(a2 + 176);
  if (v87 != v88)
  {
    v89 = v87 - v88;
    if (v89 <= 0.0)
    {
      v89 = -v89;
    }

    if (v89 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v90 = *(a1 + 184);
  v91 = *(a2 + 184);
  if (v90 != v91)
  {
    v92 = v90 - v91;
    if (v92 <= 0.0)
    {
      v92 = -v92;
    }

    if (v92 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v93 = *(a1 + 192);
  v94 = *(a2 + 192);
  if (v93 != v94)
  {
    v95 = v93 - v94;
    if (v95 <= 0.0)
    {
      v95 = -v95;
    }

    if (v95 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v96 = *(a1 + 200);
  v97 = *(a2 + 200);
  if (v96 != v97)
  {
    v98 = v96 - v97;
    if (v98 <= 0.0)
    {
      v98 = -v98;
    }

    if (v98 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v99 = *(a1 + 208);
  v100 = *(a2 + 208);
  if (v99 != v100)
  {
    v101 = v99 - v100;
    if (v101 <= 0.0)
    {
      v101 = -v101;
    }

    if (v101 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v102 = *(a1 + 216);
  v103 = *(a2 + 216);
  if (v102 != v103)
  {
    v104 = v102 - v103;
    if (v104 <= 0.0)
    {
      v104 = -v104;
    }

    if (v104 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v105 = *(a1 + 224);
  v106 = *(a2 + 224);
  if (v105 != v106)
  {
    v107 = v105 - v106;
    if (v107 <= 0.0)
    {
      v107 = -v107;
    }

    if (v107 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v108 = *(a1 + 232);
  v109 = *(a2 + 232);
  if (v108 != v109)
  {
    v110 = v108 - v109;
    if (v110 <= 0.0)
    {
      v110 = -v110;
    }

    if (v110 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v111 = *(a1 + 240);
  v112 = *(a2 + 240);
  if (v111 != v112)
  {
    v113 = v111 - v112;
    if (v113 <= 0.0)
    {
      v113 = -v113;
    }

    if (v113 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  v114 = *(a1 + 248);
  v115 = *(a2 + 248);
  if (v114 != v115)
  {
    v116 = v114 - v115;
    if (v116 <= 0.0)
    {
      v116 = -v116;
    }

    if (v116 >= 2.22044605e-16)
    {
      goto LABEL_172;
    }
  }

  if (!sub_FCA6D8((a1 + 256), a2 + 256) || !sub_FCA6D8((a1 + 280), a2 + 280) || !sub_FCA6D8((a1 + 304), a2 + 304) || *(a1 + 328) != *(a2 + 328) || *(a1 + 332) != *(a2 + 332) || *(a1 + 336) != *(a2 + 336))
  {
LABEL_172:
    v53 |= 8uLL;
  }

  if (sub_FCA948(a1 + 1528, a2 + 1528))
  {
    v117 = *(a1 + 1584);
    v118 = *(a1 + 1576);
    v119 = *(a2 + 1576);
    if (v117 - v118 == *(a2 + 1584) - v119)
    {
      if (v118 == v117)
      {
        goto LABEL_182;
      }

      while (*v118 == *v119 && *(v118 + 4) == *(v119 + 4) && *(v118 + 8) == *(v119 + 8))
      {
        v118 += 16;
        v119 += 16;
        if (v118 == v117)
        {
          goto LABEL_182;
        }
      }
    }
  }

  v53 |= 0x10uLL;
LABEL_182:
  v120 = *(a1 + 1608);
  v121 = *(a1 + 1600);
  v122 = *(a2 + 1600);
  if (v120 - v121 != *(a2 + 1608) - v122)
  {
    goto LABEL_190;
  }

  if (v121 != v120)
  {
    while (*v121 == *v122 && *(v121 + 4) == *(v122 + 4) && *(v121 + 8) == *(v122 + 8))
    {
      v121 += 16;
      v122 += 16;
      if (v121 == v120)
      {
        goto LABEL_188;
      }
    }

LABEL_190:
    v53 |= 0x800uLL;
    if (*(a1 + 1264) == *(a2 + 1264))
    {
      goto LABEL_191;
    }

LABEL_193:
    v53 |= 0x20uLL;
    goto LABEL_194;
  }

LABEL_188:
  if (*(a1 + 1264) != *(a2 + 1264))
  {
    goto LABEL_193;
  }

LABEL_191:
  if (*(a1 + 1268) != *(a2 + 1268) || *(a1 + 1272) != *(a2 + 1272))
  {
    goto LABEL_193;
  }

LABEL_194:
  if (*(a1 + 1280) != *(a2 + 1280) || *(a1 + 1284) != *(a2 + 1284) || *(a1 + 1288) != *(a2 + 1288))
  {
    v53 |= 0x40uLL;
  }

  v123 = *(a1 + 480);
  v124 = *(a2 + 480);
  if (v123 != v124)
  {
    v125 = v123 - v124;
    if (v125 <= 0.0)
    {
      v125 = -v125;
    }

    if (v125 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v126 = *(a1 + 488);
  v127 = *(a2 + 488);
  if (v126 != v127)
  {
    v128 = v126 - v127;
    if (v128 <= 0.0)
    {
      v128 = -v128;
    }

    if (v128 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v129 = *(a1 + 496);
  v130 = *(a2 + 496);
  if (v129 != v130)
  {
    v131 = v129 - v130;
    if (v131 <= 0.0)
    {
      v131 = -v131;
    }

    if (v131 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v132 = *(a1 + 504);
  v133 = *(a2 + 504);
  if (v132 != v133)
  {
    v134 = v132 - v133;
    if (v134 <= 0.0)
    {
      v134 = -v134;
    }

    if (v134 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v135 = *(a1 + 512);
  v136 = *(a2 + 512);
  if (v135 != v136)
  {
    v137 = v135 - v136;
    if (v137 <= 0.0)
    {
      v137 = -v137;
    }

    if (v137 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v138 = *(a1 + 520);
  v139 = *(a2 + 520);
  if (v138 != v139)
  {
    v140 = v138 - v139;
    if (v140 <= 0.0)
    {
      v140 = -v140;
    }

    if (v140 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v141 = *(a1 + 528);
  v142 = *(a2 + 528);
  if (v141 != v142)
  {
    v143 = v141 - v142;
    if (v143 <= 0.0)
    {
      v143 = -v143;
    }

    if (v143 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v144 = *(a1 + 536);
  v145 = *(a2 + 536);
  if (v144 != v145)
  {
    v146 = v144 - v145;
    if (v146 <= 0.0)
    {
      v146 = -v146;
    }

    if (v146 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v147 = *(a1 + 544);
  v148 = *(a2 + 544);
  if (v147 != v148)
  {
    v149 = v147 - v148;
    if (v149 <= 0.0)
    {
      v149 = -v149;
    }

    if (v149 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v150 = *(a1 + 552);
  v151 = *(a2 + 552);
  if (v150 != v151)
  {
    v152 = v150 - v151;
    if (v152 <= 0.0)
    {
      v152 = -v152;
    }

    if (v152 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v153 = *(a1 + 560);
  v154 = *(a2 + 560);
  if (v153 != v154)
  {
    v155 = v153 - v154;
    if (v155 <= 0.0)
    {
      v155 = -v155;
    }

    if (v155 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v156 = *(a1 + 568);
  v157 = *(a2 + 568);
  if (v156 != v157)
  {
    v158 = v156 - v157;
    if (v158 <= 0.0)
    {
      v158 = -v158;
    }

    if (v158 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v159 = *(a1 + 576);
  v160 = *(a2 + 576);
  if (v159 != v160)
  {
    v161 = v159 - v160;
    if (v161 <= 0.0)
    {
      v161 = -v161;
    }

    if (v161 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v162 = *(a1 + 584);
  v163 = *(a2 + 584);
  if (v162 != v163)
  {
    v164 = v162 - v163;
    if (v164 <= 0.0)
    {
      v164 = -v164;
    }

    if (v164 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v165 = *(a1 + 592);
  v166 = *(a2 + 592);
  if (v165 != v166)
  {
    v167 = v165 - v166;
    if (v167 <= 0.0)
    {
      v167 = -v167;
    }

    if (v167 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v168 = *(a1 + 600);
  v169 = *(a2 + 600);
  if (v168 != v169)
  {
    v170 = v168 - v169;
    if (v170 <= 0.0)
    {
      v170 = -v170;
    }

    if (v170 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v171 = *(a1 + 608);
  v172 = *(a2 + 608);
  if (v171 != v172)
  {
    v173 = v171 - v172;
    if (v173 <= 0.0)
    {
      v173 = -v173;
    }

    if (v173 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  v174 = *(a1 + 616);
  v175 = *(a2 + 616);
  if (v174 != v175)
  {
    v176 = v174 - v175;
    if (v176 <= 0.0)
    {
      v176 = -v176;
    }

    if (v176 >= 2.22044605e-16)
    {
      goto LABEL_275;
    }
  }

  if (sub_FCA834((a1 + 816), (a2 + 816)) || sub_FCA834((a1 + 624), (a2 + 624)) || sub_FCA834((a1 + 648), (a2 + 648)) || sub_FCA834((a1 + 672), (a2 + 672)) || sub_FCA834((a1 + 696), (a2 + 696)))
  {
LABEL_275:
    v53 |= 1uLL;
  }

  if (*(a1 + 939) != *(a2 + 939) || *(a1 + 968) != *(a2 + 968) || *(a1 + 972) != *(a2 + 972) || *(a1 + 976) != *(a2 + 976))
  {
    v53 |= 0x100uLL;
  }

  if (*(a1 + 1296) != *(a2 + 1296) || *(a1 + 1300) != *(a2 + 1300) || *(a1 + 1304) != *(a2 + 1304))
  {
    goto LABEL_296;
  }

  v177 = *(a1 + 840);
  v178 = *(a2 + 840);
  if (v177 != v178)
  {
    v179 = v177 - v178;
    if (v179 <= 0.0)
    {
      v179 = -v179;
    }

    if (v179 >= 2.22044605e-16)
    {
      goto LABEL_296;
    }
  }

  v180 = *(a1 + 848);
  v181 = *(a2 + 848);
  if (v180 != v181)
  {
    v182 = v180 - v181;
    if (v182 <= 0.0)
    {
      v182 = -v182;
    }

    if (v182 >= 2.22044605e-16)
    {
      goto LABEL_296;
    }
  }

  v183 = *(a1 + 856);
  v184 = *(a2 + 856);
  if (v183 != v184)
  {
    v185 = v183 - v184;
    if (v185 <= 0.0)
    {
      v185 = -v185;
    }

    if (v185 >= 2.22044605e-16)
    {
LABEL_296:
      v53 |= 0x200uLL;
    }
  }

  if (*(a1 + 1312) != *(a2 + 1312) || *(a1 + 1316) != *(a2 + 1316) || *(a1 + 1320) != *(a2 + 1320) || (v186 = *(a1 + 872), v187 = *(a1 + 864), v188 = *(a2 + 864), v186 - v187 != *(a2 + 872) - v188))
  {
LABEL_316:
    v53 |= 0x400uLL;
    goto LABEL_317;
  }

  for (; v187 != v186; v188 += 3)
  {
    if (*v187 != *v188)
    {
      v189 = *v187 - *v188;
      if (v189 <= 0.0)
      {
        v189 = -v189;
      }

      if (v189 >= 2.22044605e-16)
      {
        goto LABEL_316;
      }
    }

    v190 = v187[1];
    v191 = v188[1];
    if (v190 != v191)
    {
      v192 = v190 - v191;
      if (v192 <= 0.0)
      {
        v192 = -v192;
      }

      if (v192 >= 2.22044605e-16)
      {
        goto LABEL_316;
      }
    }

    v193 = v187[2];
    v194 = v188[2];
    if (v193 != v194)
    {
      v195 = v193 - v194;
      if (v195 <= 0.0)
      {
        v195 = -v195;
      }

      if (v195 >= 2.22044605e-16)
      {
        goto LABEL_316;
      }
    }

    v187 += 3;
  }

LABEL_317:
  v196 = *(a1 + 1336);
  v197 = *(a1 + 1328);
  v198 = *(a2 + 1328);
  if (v196 - v197 != *(a2 + 1336) - v198)
  {
    return v53 | 1;
  }

  if (v197 != v196)
  {
    while (*v197 == *v198 && *(v197 + 4) == *(v198 + 4) && *(v197 + 8) == *(v198 + 8))
    {
      v197 += 16;
      v198 += 16;
      if (v197 == v196)
      {
        goto LABEL_323;
      }
    }

    return v53 | 1;
  }

LABEL_323:
  v199 = *(a1 + 1360);
  v200 = *(a1 + 1352);
  v201 = *(a2 + 1352);
  if (v199 - v200 != *(a2 + 1360) - v201)
  {
    return v53 | 1;
  }

  if (v200 != v199)
  {
    while (*v200 == *v201 && *(v200 + 4) == *(v201 + 4) && *(v200 + 8) == *(v201 + 8))
    {
      v200 += 16;
      v201 += 16;
      if (v200 == v199)
      {
        goto LABEL_329;
      }
    }

    return v53 | 1;
  }

LABEL_329:
  if (*(a1 + 1376) != *(a2 + 1376))
  {
    return v53 | 1;
  }

  if (!sub_FCAA48((a1 + 1384), (a2 + 1384)))
  {
    return v53 | 1;
  }

  if (*(a1 + 1496) != *(a2 + 1496))
  {
    return v53 | 1;
  }

  v202 = *(a1 + 1512);
  v203 = *(a1 + 1504);
  v204 = *(a2 + 1504);
  if (v202 - v203 != *(a2 + 1512) - v204)
  {
    return v53 | 1;
  }

  if (v203 != v202)
  {
    while (*v203 == *v204 && *(v203 + 8) == *(v204 + 8) && *(v203 + 12) == *(v204 + 12) && *(v203 + 16) == *(v204 + 16))
    {
      v203 += 24;
      v204 += 24;
      if (v203 == v202)
      {
        goto LABEL_339;
      }
    }

    return v53 | 1;
  }

LABEL_339:
  if (*(a1 + 1498) != *(a2 + 1498) || *(a1 + 1497) != *(a2 + 1497))
  {
    return v53 | 1;
  }

  v205 = *(a1 + 40);
  v206 = *(a2 + 40);
  if (v205 != v206)
  {
    v207 = v205 - v206;
    if (v207 <= 0.0)
    {
      v207 = -v207;
    }

    if (v207 >= 2.22044605e-16)
    {
      return v53 | 1;
    }
  }

  v208 = *(a1 + 48);
  v209 = *(a2 + 48);
  if (v208 != v209)
  {
    v210 = v208 - v209;
    if (v210 <= 0.0)
    {
      v210 = -v210;
    }

    if (v210 >= 2.22044605e-16)
    {
      return v53 | 1;
    }
  }

  v211 = *(a1 + 56);
  v212 = *(a2 + 56);
  if (v211 != v212)
  {
    v213 = v211 - v212;
    if (v213 <= 0.0)
    {
      v213 = -v213;
    }

    if (v213 >= 2.22044605e-16)
    {
      return v53 | 1;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || sub_FCA834((a1 + 64), (a2 + 64)) || !sub_FCA60C((a1 + 888), a2 + 888) || !sub_FCA60C((a1 + 912), a2 + 912) || *(a1 + 936) != *(a2 + 936) || *(a1 + 937) != *(a2 + 937) || *(a1 + 938) != *(a2 + 938) || *(a1 + 1008) != *(a2 + 1008) || *(a1 + 1012) != *(a2 + 1012) || *(a1 + 1016) != *(a2 + 1016) || !sub_FCAE04((a1 + 1088), (a2 + 1088)) || !sub_FCB158((a1 + 1024), (a2 + 1024)) || *(a1 + 1232) != *(a2 + 1232) || *(a1 + 1236) != *(a2 + 1236) || *(a1 + 1240) != *(a2 + 1240) || *(a1 + 1248) != *(a2 + 1248) || *(a1 + 1252) != *(a2 + 1252) || *(a1 + 1256) != *(a2 + 1256) || sub_FCA834((a1 + 720), (a2 + 720)) || sub_FCA834((a1 + 744), (a2 + 744)) || !sub_FCA6D8((a1 + 432), a2 + 432) || (sub_FCA6D8((a1 + 456), a2 + 456) & 1) == 0)
  {
    return v53 | 1;
  }

  return v53;
}

uint64_t sub_FC3114(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_FC3230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_FC3310(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (!sub_5FC6C(a3))
  {
    sub_FC45A8(v6, a3, a4, &v23);
    v6[11] = 0xFCFCFCFCFCFCFCFDLL * ((v6[6] - v6[5]) >> 4);
    operator new();
  }

  sub_FC45A8(v6, a2, a4, &v34);
  v7 = v34;
  if (v34)
  {
    v8 = v35;
    v9 = v34;
    if (v35 != v34)
    {
      do
      {
        v10 = *(v8 - 24);
        if (v10)
        {
          do
          {
            v12 = *v10;
            v13 = *(v10 + 12);
            if (v13 != -1)
            {
              (off_2674CE0[v13])(v24, v10 + 5);
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

        v11 = *(v8 - 40);
        *(v8 - 40) = 0;
        if (v11)
        {
          operator delete(v11);
        }

        v8 -= 48;
      }

      while (v8 != v7);
      v9 = v34;
      v6 = a1;
    }

    v35 = v7;
    operator delete(v9);
  }

  v6[11] = 0;
  sub_FC4DF8(v6);
  if (sub_7E7E4(1u))
  {
    sub_19594F8(v24);
    sub_4A5C(v24, "No preprocessed cost functions in the data. Registered ", 55);
    v14 = std::ostream::operator<<();
    sub_4A5C(v14, " cost functions from the current cost function JSON config.", 59);
    if ((v33 & 0x10) != 0)
    {
      v16 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v16 = v29;
      }

      v17 = v28;
      v15 = v16 - v28;
      if (v16 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v15 = 0;
        BYTE7(v22) = 0;
LABEL_29:
        *(v21 + v15) = 0;
        sub_7E854(v21, 1u);
        v6 = a1;
        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        return v6;
      }

      v17 = v26;
      v15 = v27 - v26;
      if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    BYTE7(v22) = v15;
    if (v15)
    {
      memmove(v21, v17, v15);
    }

    goto LABEL_29;
  }

  return v6;
}

void sub_FC43A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void **a11, void **a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a43);
  v49 = *a11;
  if (*a11)
  {
    a19[19] = v49;
    operator delete(v49);
    sub_23D9C(a14);
    v50 = a19[8];
    if (!v50)
    {
LABEL_5:
      sub_FCB84C(a12);
      sub_11BD8(a19);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_23D9C(a14);
    v50 = a19[8];
    if (!v50)
    {
      goto LABEL_5;
    }
  }

  a19[9] = v50;
  operator delete(v50);
  sub_FCB84C(a12);
  sub_11BD8(a19);
  _Unwind_Resume(a1);
}

void sub_FC45A8(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  HIBYTE(v89) = 14;
  strcpy(&v88, "cost_functions");
  v6 = sub_5FAAC(a2, &v88, a2);
  if (SHIBYTE(v89) < 0)
  {
    operator delete(v88);
  }

  v7 = *(a1 + 40);
  v74 = (a1 + 40);
  v8 = *(a1 + 48);
  if (v8 != v7)
  {
    v9 = v8 - 1352;
    do
    {
      v11 = *(v9 + 1328);
      if (v11)
      {
        *(v9 + 1336) = v11;
        operator delete(v11);
      }

      v12 = *(v9 + 1304);
      if (v12)
      {
        *(v9 + 1312) = v12;
        operator delete(v12);
      }

      sub_3BECA4((v9 + 24));
      if (*(v9 + 23) < 0)
      {
        operator delete(*v9);
      }

      v10 = v9 - 8;
      v9 -= 1360;
    }

    while (v10 != v7);
  }

  v73 = a1;
  *(a1 + 48) = v7;
  *v85 = 0u;
  v86 = 0u;
  v87 = 1065353216;
  __p = 0;
  v83 = 0;
  v84 = 0;
  v83 = sub_1CEE8(&__p, "standard");
  v76 = a4;
LABEL_14:
  v13 = *(&v86 + 1);
  if (v13 < sub_5FC64(v6))
  {
    v14 = sub_588E0(v6);
    v15 = sub_5FC5C();
    if (v14 == v15)
    {
      goto LABEL_104;
    }

    v16 = 0;
    while (1)
    {
      v17 = (v14 + 16);
      sub_FC142C(v14 + 16, v6, v85, &v77);
      if (!sub_5FC6C(&v77))
      {
        break;
      }

      v18 = v79;
      if (v79)
      {
        goto LABEL_69;
      }

LABEL_66:
      v45 = v77;
      v77 = 0;
      if (v45)
      {
        operator delete(v45);
      }

      v14 = *v14;
      if (v14 == v15)
      {
        a4 = v76;
        if (v16)
        {
          goto LABEL_14;
        }

LABEL_104:
        exception = __cxa_allocate_exception(0x40uLL);
        v72 = sub_2D390(exception, "initial processing of cost functions json failed, parents inconsistent", 0x46uLL);
      }
    }

    *&v88 = v14 + 16;
    v19 = sub_8E484(v85, v14 + 16);
    v20 = v19;
    if (v19[8])
    {
      v21 = v19[7];
      if (v21)
      {
        do
        {
          v29 = *v21;
          v30 = *(v21 + 12);
          if (v30 != -1)
          {
            (off_2674CE0[v30])(&v88, v21 + 5);
          }

          *(v21 + 12) = -1;
          if (*(v21 + 39) < 0)
          {
            operator delete(v21[2]);
          }

          operator delete(v21);
          v21 = v29;
        }

        while (v29);
      }

      v20[7] = 0;
      v22 = v20[6];
      if (v22)
      {
        bzero(v20[5], 8 * v22);
      }

      v20[8] = 0;
    }

    v23 = v77;
    v77 = 0;
    v24 = v20[5];
    v20[5] = v23;
    if (v24)
    {
      operator delete(v24);
    }

    v25 = v78;
    v26 = v79;
    v20[7] = v79;
    v20[6] = v25;
    v78 = 0;
    v27 = v80;
    v20[8] = v80;
    *(v20 + 18) = v81;
    if (v27)
    {
      v28 = v26[1];
      if ((v25 & (v25 - 1)) != 0)
      {
        if (v28 >= v25)
        {
          v28 %= v25;
        }
      }

      else
      {
        v28 &= v25 - 1;
      }

      v20[5][v28] = (v20 + 7);
      v79 = 0;
      v80 = 0;
    }

    v31 = *(v14 + 39);
    v32 = v31;
    if ((v31 & 0x80u) != 0)
    {
      v31 = *(v14 + 24);
    }

    if (v31 != 8)
    {
      goto LABEL_45;
    }

    v33 = *v17;
    if (v32 >= 0)
    {
      v33 = (v14 + 16);
    }

    if (*v33 != 0x647261646E617473)
    {
LABEL_45:
      v34 = v83;
      if (v83 >= v84)
      {
        v37 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __p) >> 3) + 1;
        if (v37 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v84 - __p) >> 3) > v37)
        {
          v37 = 0x5555555555555556 * ((v84 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v84 - __p) >> 3) >= 0x555555555555555)
        {
          v38 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v38 = v37;
        }

        p_p = &__p;
        if (v38)
        {
          if (v38 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v41 = (8 * ((v83 - __p) >> 3));
        *&v88 = 0;
        *(&v88 + 1) = v41;
        v42 = 0;
        v89 = v41;
        v90 = 0;
        if ((v32 & 0x80) != 0)
        {
          sub_325C(v41, *(v14 + 16), *(v14 + 24));
          v41 = *(&v88 + 1);
          v40 = v89;
          v42 = v90;
        }

        else
        {
          v39 = *v17;
          *&dword_10[2 * ((v83 - __p) >> 3)] = *(v14 + 32);
          *v41 = v39;
          v40 = v41;
        }

        v36 = v40 + 24;
        v43 = &v41[-(v83 - __p)];
        memcpy(v43, __p, v83 - __p);
        v44 = __p;
        __p = v43;
        v83 = v36;
        v84 = v42;
        if (v44)
        {
          operator delete(v44);
        }
      }

      else
      {
        if (v32 < 0)
        {
          sub_325C(v83, *v17, *(v14 + 24));
        }

        else
        {
          v35 = *v17;
          *(v83 + 2) = *(v14 + 32);
          *v34 = v35;
        }

        v36 = v34 + 24;
      }

      v83 = v36;
    }

    ++v16;
    v18 = v79;
    if (!v79)
    {
      goto LABEL_66;
    }

    do
    {
LABEL_69:
      v46 = *v18;
      v47 = *(v18 + 12);
      if (v47 != -1)
      {
        (off_2674CE0[v47])(&v88, v18 + 5);
      }

      *(v18 + 12) = -1;
      if (*(v18 + 39) < 0)
      {
        operator delete(v18[2]);
      }

      operator delete(v18);
      v18 = v46;
    }

    while (v46);
    goto LABEL_66;
  }

  v48 = v83;
  v49 = __p + 24;
  v50 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v83 - (__p + 24)) >> 3));
  v51 = v83 == __p + 24;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v51)
  {
    v52 = 0;
  }

  else
  {
    v52 = v50;
  }

  sub_79630(v49, v48, &v88, v52, 1);
  v53 = __p;
  if (__p != v83)
  {
    v54 = sub_8DE74(v85, __p);
    v55 = sub_FC1660(a3, (v54 + 5));
    LODWORD(v77) = v55;
    v56 = *(v73 + 96);
    if (v56 <= v55)
    {
      v56 = v55;
    }

    *(v73 + 96) = v56;
    v57 = a4[1];
    if (v57 >= a4[2])
    {
      v58 = sub_FC9FE8(a4, &v77, (v54 + 5));
    }

    else
    {
      *v57 = v55;
      sub_5ADDC((v57 + 2), (v54 + 5));
      v58 = (v57 + 12);
    }

    a4[1] = v58;
    v60 = *(v73 + 40);
    v59 = *(v73 + 48);
    *&v88 = v53;
    sub_EDE7E0((v73 + 104), v53)[5] = (0xFCFCFCFCFCFCFCFDLL * ((v59 - v60) >> 4));
    v62 = *(v73 + 40);
    v61 = *(v73 + 48);
    *&v88 = &v77;
    sub_FCC494(v73, &v77)[3] = 0xFCFCFCFCFCFCFCFDLL * ((v61 - v62) >> 4);
    v63 = *(v73 + 48);
    if (v63 < *(v73 + 56))
    {
      if (*(v53 + 23) < 0)
      {
        sub_325C(&v88, *v53, v53[1]);
      }

      else
      {
        v64 = *v53;
        v89 = v53[2];
        v88 = v64;
      }

      sub_FDDF9C(v63, (v54 + 5), &v88, v77);
    }

    sub_FCB8F0(v74, (v54 + 5), v53, &v77);
  }

  if (__p)
  {
    v65 = v83;
    v66 = __p;
    if (v83 != __p)
    {
      do
      {
        v67 = *(v65 - 1);
        v65 -= 3;
        if (v67 < 0)
        {
          operator delete(*v65);
        }
      }

      while (v65 != v53);
      v66 = __p;
    }

    v83 = v53;
    operator delete(v66);
  }

  v68 = v86;
  if (v86)
  {
    do
    {
      v69 = *v68;
      sub_8DBE8((v68 + 2));
      operator delete(v68);
      v68 = v69;
    }

    while (v69);
  }

  v70 = v85[0];
  v85[0] = 0;
  if (v70)
  {
    operator delete(v70);
  }
}

void sub_FC4D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void **);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  sub_FC113C(v10);
  sub_1A104(va);
  sub_8E8D8(va1);
  _Unwind_Resume(a1);
}

void sub_FC4DF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 72);
    do
    {
      v4 = *(a1 + 80);
      if (v3 < v4)
      {
        *v3++ = *(v2 + 4);
      }

      else
      {
        v5 = *(a1 + 64);
        v6 = v3 - v5;
        v7 = (v3 - v5) >> 2;
        v8 = v7 + 1;
        if ((v7 + 1) >> 62)
        {
          sub_1794();
        }

        v9 = v4 - v5;
        if (v9 >> 1 > v8)
        {
          v8 = v9 >> 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (!(v10 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v11 = v7;
        v12 = (4 * v7);
        v13 = &v12[-v11];
        *v12 = *(v2 + 4);
        v3 = v12 + 1;
        memcpy(v13, v5, v6);
        *(a1 + 64) = v13;
        *(a1 + 72) = v3;
        *(a1 + 80) = 0;
        if (v5)
        {
          operator delete(v5);
        }
      }

      *(a1 + 72) = v3;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 72);
  }

  v14 = *(a1 + 64);
  v15 = 126 - 2 * __clz((v3 - v14) >> 2);
  if (v3 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_1C4C(v14, v3, &v25, v16, 1);
  v17 = *(a1 + 144);
  v18 = ((*(a1 + 96) + 1) * (*(a1 + 96) + 1));
  v19 = (*(a1 + 152) - v17) >> 3;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(a1 + 152) = v17 + 8 * v18;
    }
  }

  else
  {
    sub_30B70(a1 + 144, v18 - v19);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  while (v20 != v21)
  {
    v22 = *(a1 + 40);
    for (i = *(a1 + 48); v22 != i; v22 += 340)
    {
      v24 = sub_FC5618(v20, v22);
      *sub_FC65DC((a1 + 144), (*v20 + *v20 * *(a1 + 96) + *v22)) = v24;
    }

    v20 += 340;
  }
}

uint64_t sub_FC5000(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_24;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_24:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v2 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == v3)
      {
        if (*(v7 + 4) == v3)
        {
          goto LABEL_14;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_24;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v13 = v7[1];
    if (v13 == v3)
    {
      break;
    }

    if (v13 >= *&v2)
    {
      v13 %= *&v2;
    }

    if (v13 != v5)
    {
      goto LABEL_24;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = v7[3];
  v11 = a1 + 5;

  return sub_FC510C(v11, v10);
}

uint64_t sub_FC510C(void *a1, unint64_t a2)
{
  if (0xFCFCFCFCFCFCFCFDLL * ((a1[1] - *a1) >> 4) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xFCFCFCFCFCFCFCFDLL * ((a1[1] - *a1) >> 4));
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

  return *a1 + 1360 * a2;
}

void sub_FC5248(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_FC5328(uint64_t a1, uint64_t a2)
{
  v3 = sub_EDE628((a1 + 104), a2);
  if (!v3)
  {
    return *(a1 + 40);
  }

  v4 = v3[5];

  return sub_FC510C((a1 + 40), v4);
}

uint64_t sub_FC537C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if ((*a3 & *sub_FC541C((a1 + 144), a2 + a2 * *(a1 + 96) + *v4)) == 0)
      {
        return *v4;
      }

      if (++v4 == v5)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_FC541C(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_FC5538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_FC5618(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 920) != *(a2 + 920) || *(a1 + 924) != *(a2 + 924) || *(a1 + 928) != *(a2 + 928))
  {
    goto LABEL_16;
  }

  v4 = *(a1 + 384);
  v5 = *(a2 + 384);
  if (v4 != v5)
  {
    v6 = v4 - v5;
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 >= 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  v7 = *(a1 + 392);
  v8 = *(a2 + 392);
  if (v7 != v8)
  {
    v9 = v7 - v8;
    if (v9 <= 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 2.22044605e-16)
    {
      goto LABEL_16;
    }
  }

  v10 = *(a1 + 400);
  v11 = *(a2 + 400);
  if (v10 == v11)
  {
    goto LABEL_21;
  }

  v12 = v10 - v11;
  if (v12 <= 0.0)
  {
    v12 = -v12;
  }

  if (v12 < 2.22044605e-16)
  {
LABEL_21:
    v13 = 0;
    if (*(a1 + 936) != *(a2 + 936))
    {
      goto LABEL_22;
    }
  }

  else
  {
LABEL_16:
    v13 = 4;
    if (*(a1 + 936) != *(a2 + 936))
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 940) == *(a2 + 940) && *(a1 + 944) == *(a2 + 944))
  {
    if (*(a1 + 824) == *(a2 + 824))
    {
      goto LABEL_23;
    }

LABEL_37:
    v13 |= 1uLL;
    goto LABEL_38;
  }

LABEL_22:
  v13 |= 0x400000uLL;
  if (*(a1 + 824) != *(a2 + 824))
  {
    goto LABEL_37;
  }

LABEL_23:
  if (*(a1 + 828) != *(a2 + 828) || *(a1 + 832) != *(a2 + 832))
  {
    goto LABEL_37;
  }

  v14 = *(a1 + 312);
  v15 = *(a2 + 312);
  if (v14 != v15)
  {
    v16 = v14 - v15;
    if (v16 <= 0.0)
    {
      v16 = -v16;
    }

    if (v16 >= 2.22044605e-16)
    {
      goto LABEL_37;
    }
  }

  v17 = *(a1 + 320);
  v18 = *(a2 + 320);
  if (v17 != v18)
  {
    v19 = v17 - v18;
    if (v19 <= 0.0)
    {
      v19 = -v19;
    }

    if (v19 >= 2.22044605e-16)
    {
      goto LABEL_37;
    }
  }

  v20 = *(a1 + 328);
  v21 = *(a2 + 328);
  if (v20 != v21)
  {
    v22 = v20 - v21;
    if (v22 <= 0.0)
    {
      v22 = -v22;
    }

    if (v22 >= 2.22044605e-16)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (*(a1 + 856) != *(a2 + 856) || *(a1 + 860) != *(a2 + 860) || *(a1 + 864) != *(a2 + 864))
  {
    goto LABEL_53;
  }

  v23 = *(a1 + 336);
  v24 = *(a2 + 336);
  if (v23 != v24)
  {
    v25 = v23 - v24;
    if (v25 <= 0.0)
    {
      v25 = -v25;
    }

    if (v25 >= 2.22044605e-16)
    {
      goto LABEL_53;
    }
  }

  v26 = *(a1 + 344);
  v27 = *(a2 + 344);
  if (v26 != v27)
  {
    v28 = v26 - v27;
    if (v28 <= 0.0)
    {
      v28 = -v28;
    }

    if (v28 >= 2.22044605e-16)
    {
      goto LABEL_53;
    }
  }

  v29 = *(a1 + 352);
  v30 = *(a2 + 352);
  if (v29 != v30)
  {
    v31 = v29 - v30;
    if (v31 <= 0.0)
    {
      v31 = -v31;
    }

    if (v31 >= 2.22044605e-16)
    {
LABEL_53:
      v13 |= 2uLL;
    }
  }

  if (*(a1 + 776) != *(a2 + 776) || *(a1 + 780) != *(a2 + 780) || *(a1 + 784) != *(a2 + 784) || *(a1 + 792) != *(a2 + 792) || *(a1 + 796) != *(a2 + 796) || *(a1 + 800) != *(a2 + 800))
  {
    v13 |= 8uLL;
  }

  v32 = *(a1 + 40);
  v33 = *(a2 + 40);
  if (v32 == v33)
  {
    goto LABEL_315;
  }

  v34 = v32 - v33;
  if (v34 <= 0.0)
  {
    v34 = -v34;
  }

  if (v34 < 2.22044605e-16)
  {
LABEL_315:
    v35 = *(a1 + 48);
    v36 = *(a2 + 48);
    if (v35 == v36)
    {
      goto LABEL_316;
    }

    v37 = v35 - v36;
    if (v37 <= 0.0)
    {
      v37 = -v37;
    }

    if (v37 < 2.22044605e-16)
    {
LABEL_316:
      v39 = *(a1 + 216);
      v38 = *(a1 + 224);
      v40 = *(a2 + 216);
      if (v38 - v39 == *(a2 + 224) - v40)
      {
        if (v39 == v38)
        {
          goto LABEL_86;
        }

        while (1)
        {
          if (*v39 != *v40)
          {
            v41 = *v39 - *v40;
            if (v41 <= 0.0)
            {
              v41 = -v41;
            }

            if (v41 >= 2.22044605e-16)
            {
              break;
            }
          }

          v42 = v39[1];
          v43 = v40[1];
          if (v42 != v43)
          {
            v44 = v42 - v43;
            if (v44 <= 0.0)
            {
              v44 = -v44;
            }

            if (v44 >= 2.22044605e-16)
            {
              break;
            }
          }

          v45 = v39[2];
          v46 = v40[2];
          if (v45 != v46)
          {
            v47 = v45 - v46;
            if (v47 <= 0.0)
            {
              v47 = -v47;
            }

            if (v47 >= 2.22044605e-16)
            {
              break;
            }
          }

          v39 += 3;
          v40 += 3;
          if (v39 == v38)
          {
            goto LABEL_86;
          }
        }
      }
    }
  }

  v13 |= 0x10uLL;
LABEL_86:
  if (*(a1 + 206) == *(a2 + 206))
  {
    v48 = v13;
  }

  else
  {
    v48 = v13 | 0x20;
  }

  if (*(a1 + 576) == *(a2 + 576))
  {
    v50 = *(a1 + 480);
    v49 = *(a1 + 488);
    v51 = *(a2 + 480);
    if (v49 - v50 == *(a2 + 488) - v51)
    {
      if (v50 == v49)
      {
LABEL_96:
        v52 = *(a1 + 560);
        v53 = *(a1 + 552);
        v54 = *(a2 + 552);
        if (v52 - v53 == *(a2 + 560) - v54)
        {
          if (v53 == v52)
          {
LABEL_102:
            v56 = *(a1 + 504);
            v55 = *(a1 + 512);
            v57 = *(a2 + 504);
            if (v55 - v56 == *(a2 + 512) - v57)
            {
              if (v56 == v55)
              {
LABEL_108:
                if (*(a1 + 808) == *(a2 + 808) && *(a1 + 812) == *(a2 + 812) && *(a1 + 816) == *(a2 + 816) && *(a1 + 578) == *(a2 + 578) && *(a1 + 616) == *(a2 + 616) && !sub_FCA834((a1 + 624), (a1 + 624)) && sub_FCA8D8((a1 + 648), (a2 + 648)) && (sub_FCA7B4((a1 + 592), (a2 + 592)) & 1) != 0)
                {
                  goto LABEL_117;
                }
              }

              else
              {
                while (*v56 == *v57 && *(v56 + 4) == *(v57 + 4) && *(v56 + 8) == *(v57 + 8))
                {
                  v56 += 16;
                  v57 += 16;
                  if (v56 == v55)
                  {
                    goto LABEL_108;
                  }
                }
              }
            }
          }

          else
          {
            while (*v53 == *v54 && *(v53 + 4) == *(v54 + 4) && *(v53 + 8) == *(v54 + 8))
            {
              v53 += 16;
              v54 += 16;
              if (v53 == v52)
              {
                goto LABEL_102;
              }
            }
          }
        }
      }

      else
      {
        while (*v50 == *v51 && *(v50 + 4) == *(v51 + 4) && *(v50 + 8) == *(v51 + 8))
        {
          v50 += 16;
          v51 += 16;
          if (v50 == v49)
          {
            goto LABEL_96;
          }
        }
      }
    }
  }

  v48 |= 0x40uLL;
LABEL_117:
  v58 = *(a1 + 536);
  v59 = *(a1 + 528);
  v60 = *(a2 + 528);
  if (v58 - v59 != *(a2 + 536) - v60)
  {
    goto LABEL_128;
  }

  if (v59 != v58)
  {
    while (*v59 == *v60 && *(v59 + 4) == *(v60 + 4) && *(v59 + 8) == *(v60 + 8))
    {
      v59 += 16;
      v60 += 16;
      if (v59 == v58)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_128;
  }

LABEL_123:
  if (*(a1 + 152) != *(a2 + 152))
  {
    goto LABEL_128;
  }

  v61 = *(a1 + 160);
  v62 = *(a2 + 160);
  if (v61 != v62)
  {
    v63 = v61 - v62;
    if (v63 <= 0.0)
    {
      v63 = -v63;
    }

    if (v63 >= 2.22044605e-16)
    {
LABEL_128:
      v48 |= 0x1000uLL;
    }
  }

  if (*(a1 + 448) != *(a2 + 448))
  {
    goto LABEL_134;
  }

  v64 = *(a1 + 456);
  v65 = *(a2 + 456);
  if (v64 != v65)
  {
    v66 = v64 - v65;
    if (v66 <= 0.0)
    {
      v66 = -v66;
    }

    if (v66 >= 2.22044605e-16)
    {
LABEL_134:
      v48 |= 0x80uLL;
    }
  }

  if (*(a1 + 437) != *(a2 + 437))
  {
    goto LABEL_140;
  }

  v67 = *(a1 + 440);
  v68 = *(a2 + 440);
  if (v67 != v68)
  {
    v69 = v67 - v68;
    if (v69 <= 0.0)
    {
      v69 = -v69;
    }

    if (v69 >= 2.22044605e-16)
    {
LABEL_140:
      v48 |= 0x100uLL;
    }
  }

  if (*(a2 + 432) != *(a1 + 432))
  {
    v48 |= 0x100uLL;
  }

  if (*(a1 + 968) != *(a2 + 968) || *(a1 + 972) != *(a2 + 972) || *(a1 + 976) != *(a2 + 976) || *(a1 + 984) != *(a2 + 984) || *(a1 + 988) != *(a2 + 988) || *(a1 + 992) != *(a2 + 992))
  {
    v48 |= 0x800uLL;
  }

  v71 = *(a1 + 264);
  v70 = *(a1 + 272);
  v72 = *(a2 + 264);
  if (v70 - v71 != *(a2 + 272) - v72)
  {
LABEL_166:
    v48 |= 0x80000uLL;
    goto LABEL_167;
  }

  for (; v71 != v70; v72 += 3)
  {
    if (*v71 != *v72)
    {
      v73 = *v71 - *v72;
      if (v73 <= 0.0)
      {
        v73 = -v73;
      }

      if (v73 >= 2.22044605e-16)
      {
        goto LABEL_166;
      }
    }

    v74 = v71[1];
    v75 = v72[1];
    if (v74 != v75)
    {
      v76 = v74 - v75;
      if (v76 <= 0.0)
      {
        v76 = -v76;
      }

      if (v76 >= 2.22044605e-16)
      {
        goto LABEL_166;
      }
    }

    v77 = v71[2];
    v78 = v72[2];
    if (v77 != v78)
    {
      v79 = v77 - v78;
      if (v79 <= 0.0)
      {
        v79 = -v79;
      }

      if (v79 >= 2.22044605e-16)
      {
        goto LABEL_166;
      }
    }

    v71 += 3;
  }

LABEL_167:
  if (*(a1 + 672) != *(a2 + 672) || *(a1 + 676) != *(a2 + 676) || *(a1 + 680) != *(a2 + 680))
  {
    v48 |= 0x100000uLL;
  }

  if (*(a1 + 577) != *(a2 + 577))
  {
    goto LABEL_254;
  }

  v80 = *(a1 + 744);
  v81 = *(a1 + 736);
  v82 = *(a2 + 736);
  if (v80 - v81 != *(a2 + 744) - v82)
  {
    goto LABEL_254;
  }

  for (; v81 != v80; v82 += 3)
  {
    if (*v81 != *v82)
    {
      v83 = *v81 - *v82;
      if (v83 <= 0.0)
      {
        v83 = -v83;
      }

      if (v83 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v84 = v81[1];
    v85 = v82[1];
    if (v84 != v85)
    {
      v86 = v84 - v85;
      if (v86 <= 0.0)
      {
        v86 = -v86;
      }

      if (v86 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v87 = v81[2];
    v88 = v82[2];
    if (v87 != v88)
    {
      v89 = v87 - v88;
      if (v89 <= 0.0)
      {
        v89 = -v89;
      }

      if (v89 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v81 += 3;
  }

  v90 = *(a1 + 56);
  v91 = *(a2 + 56);
  if (v90 != v91)
  {
    v92 = v90 - v91;
    if (v92 <= 0.0)
    {
      v92 = -v92;
    }

    if (v92 >= 2.22044605e-16)
    {
      goto LABEL_254;
    }
  }

  v93 = *(a1 + 64);
  v94 = *(a2 + 64);
  if (v93 != v94)
  {
    v95 = v93 - v94;
    if (v95 <= 0.0)
    {
      v95 = -v95;
    }

    if (v95 >= 2.22044605e-16)
    {
      goto LABEL_254;
    }
  }

  if (!sub_FCBAA0((a1 + 72), (a2 + 72)))
  {
    goto LABEL_254;
  }

  v97 = *(a1 + 240);
  v96 = *(a1 + 248);
  v98 = *(a2 + 240);
  if (v96 - v97 != *(a2 + 248) - v98)
  {
    goto LABEL_254;
  }

  for (; v97 != v96; v98 += 3)
  {
    if (*v97 != *v98)
    {
      v99 = *v97 - *v98;
      if (v99 <= 0.0)
      {
        v99 = -v99;
      }

      if (v99 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v100 = v97[1];
    v101 = v98[1];
    if (v100 != v101)
    {
      v102 = v100 - v101;
      if (v102 <= 0.0)
      {
        v102 = -v102;
      }

      if (v102 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v103 = v97[2];
    v104 = v98[2];
    if (v103 != v104)
    {
      v105 = v103 - v104;
      if (v105 <= 0.0)
      {
        v105 = -v105;
      }

      if (v105 >= 2.22044605e-16)
      {
        goto LABEL_254;
      }
    }

    v97 += 3;
  }

  if (sub_FCA834((a1 + 288), (a2 + 288)) || sub_FCA834((a1 + 360), (a2 + 360)) || sub_FCA834((a1 + 408), (a2 + 408)) || *(a2 + 432) != *(a1 + 432) || *(a1 + 435) != *(a2 + 435) || *(a1 + 436) != *(a2 + 436) || !sub_FCA8D8((a1 + 688), (a2 + 688)) || !sub_FCA8D8((a1 + 712), (a2 + 712)) || *(a1 + 1096) != *(a2 + 1096) || *(a1 + 1100) != *(a2 + 1100) || *(a1 + 1104) != *(a2 + 1104) || *(a1 + 872) != *(a2 + 872) || *(a1 + 876) != *(a2 + 876) || *(a1 + 880) != *(a2 + 880) || *(a1 + 888) != *(a2 + 888) || *(a1 + 892) != *(a2 + 892) || *(a1 + 896) != *(a2 + 896) || *(a1 + 904) != *(a2 + 904) || *(a1 + 908) != *(a2 + 908) || *(a1 + 912) != *(a2 + 912) || *(a1 + 1000) != *(a2 + 1000) || *(a1 + 1004) != *(a2 + 1004) || *(a1 + 1008) != *(a2 + 1008) || *(a1 + 1016) != *(a2 + 1016) || *(a1 + 1020) != *(a2 + 1020) || *(a1 + 1024) != *(a2 + 1024) || *(a1 + 205) != *(a2 + 205) || *(a1 + 208) != *(a2 + 208) || *(a1 + 464) != *(a2 + 464))
  {
    goto LABEL_254;
  }

  v106 = *(a1 + 472);
  v107 = *(a2 + 472);
  if (v106 != v107)
  {
    v108 = v106 - v107;
    if (v108 <= 0.0)
    {
      v108 = -v108;
    }

    if (v108 >= 2.22044605e-16)
    {
      goto LABEL_254;
    }
  }

  if (*(a1 + 1112) != *(a2 + 1112) || *(a1 + 1116) != *(a2 + 1116) || *(a1 + 1120) != *(a2 + 1120) || *(a1 + 1128) != *(a2 + 1128) || *(a1 + 1132) != *(a2 + 1132) || *(a1 + 1136) != *(a2 + 1136))
  {
LABEL_254:
    v48 |= 0x200uLL;
  }

  if (!sub_FCA948(a1 + 1312, a2 + 1312))
  {
    goto LABEL_264;
  }

  v109 = *(a1 + 696);
  v110 = *(a1 + 688);
  v111 = *(a2 + 688);
  if (v109 - v110 != *(a2 + 696) - v111)
  {
    goto LABEL_264;
  }

  if (v110 != v109)
  {
    while (*v110 == *v111 && *(v110 + 4) == *(v111 + 4) && *(v110 + 8) == *(v111 + 8))
    {
      v110 += 16;
      v111 += 16;
      if (v110 == v109)
      {
        goto LABEL_262;
      }
    }

LABEL_264:
    v48 |= 0x400uLL;
    if (*(a1 + 952) == *(a2 + 952))
    {
      goto LABEL_265;
    }

LABEL_267:
    v48 |= 0x10000uLL;
    goto LABEL_268;
  }

LABEL_262:
  if (*(a1 + 952) != *(a2 + 952))
  {
    goto LABEL_267;
  }

LABEL_265:
  if (*(a1 + 956) != *(a2 + 956) || *(a1 + 960) != *(a2 + 960))
  {
    goto LABEL_267;
  }

LABEL_268:
  if (*(a1 + 840) != *(a2 + 840) || *(a1 + 844) != *(a2 + 844) || *(a1 + 848) != *(a2 + 848))
  {
    v48 |= 0x20000uLL;
  }

  if (*(a1 + 1032) != *(a2 + 1032) || *(a1 + 1036) != *(a2 + 1036) || *(a1 + 1040) != *(a2 + 1040) || *(a1 + 1048) != *(a2 + 1048) || *(a1 + 1052) != *(a2 + 1052) || *(a1 + 1056) != *(a2 + 1056))
  {
    v48 |= 0x40000uLL;
  }

  v112 = *(a1 + 176);
  if ((v112 ^ *(a2 + 176)))
  {
    v113 = v48 | 0x2000;
  }

  else
  {
    v113 = v48;
  }

  if (v112 == 1 && (*(a2 + 176) & 1) != 0 && *(a1 + 184) != *(a2 + 184))
  {
    v113 = v48 | 0x2000;
  }

  v114 = *(a1 + 177);
  v115 = v113 | 0x4000;
  if ((v114 ^ *(a2 + 177)))
  {
    v113 |= 0x4000uLL;
  }

  if (v114 == 1 && (*(a2 + 177) & 1) != 0 && (*(a1 + 179) != *(a2 + 179) || *(a1 + 178) != *(a2 + 178)))
  {
    v113 = v115;
  }

  v116 = *(a1 + 1144);
  if (v116 || *(a1 + 1148))
  {
    v117 = 1;
    v118 = *(a2 + 1144);
    v119 = *(a2 + 1148);
    if (!*(a2 + 1144))
    {
      goto LABEL_296;
    }
  }

  else
  {
    v117 = *(a1 + 1152) != 0;
    v118 = *(a2 + 1144);
    v119 = *(a2 + 1148);
    if (!*(a2 + 1144))
    {
LABEL_296:
      if ((v117 ^ (*(a2 + 1152) != 0)))
      {
        goto LABEL_309;
      }

      goto LABEL_300;
    }
  }

  if (!v117)
  {
LABEL_309:
    v113 |= 0x200000uLL;
    goto LABEL_310;
  }

LABEL_300:
  if (v116 || *(a1 + 1148) || *(a1 + 1152))
  {
    v120 = *(a2 + 1152);
    if ((v118 || v119 || v120) && (v116 != v118 || *(a1 + 1148) != v119 || *(a1 + 1152) != v120))
    {
      goto LABEL_309;
    }
  }

LABEL_310:
  if (*(a1 + 34) == *(a2 + 34))
  {
    return v113;
  }

  else
  {
    return v113 | 0x800000;
  }
}

uint64_t sub_FC65DC(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_FC66F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void *sub_FC67D8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = a1;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  *(a1 + 40) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 84) = 0u;
  *(a1 + 136) = 1065353216;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  if (!sub_5FC6C(a3))
  {
    sub_FC7A84(v6, a3, a4, &v23);
    v6[11] = 0xDAB7EC1DD3431B57 * ((v6[6] - v6[5]) >> 3);
    operator new();
  }

  sub_FC7A84(v6, a2, a4, &v34);
  v7 = v34;
  if (v34)
  {
    v8 = v35;
    v9 = v34;
    if (v35 != v34)
    {
      do
      {
        v10 = *(v8 - 24);
        if (v10)
        {
          do
          {
            v12 = *v10;
            v13 = *(v10 + 12);
            if (v13 != -1)
            {
              (off_2674CE0[v13])(v24, v10 + 5);
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

        v11 = *(v8 - 40);
        *(v8 - 40) = 0;
        if (v11)
        {
          operator delete(v11);
        }

        v8 -= 48;
      }

      while (v8 != v7);
      v9 = v34;
      v6 = a1;
    }

    v35 = v7;
    operator delete(v9);
  }

  v6[11] = 0;
  sub_FC82C0(v6);
  if (sub_7E7E4(1u))
  {
    sub_19594F8(v24);
    sub_4A5C(v24, "No preprocessed cost functions in the data. Registered ", 55);
    v14 = std::ostream::operator<<();
    sub_4A5C(v14, " cost functions from the current cost function JSON config.", 59);
    if ((v33 & 0x10) != 0)
    {
      v16 = v32;
      if (v32 < v29)
      {
        v32 = v29;
        v16 = v29;
      }

      v17 = v28;
      v15 = v16 - v28;
      if (v16 - v28 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_36;
      }
    }

    else
    {
      if ((v33 & 8) == 0)
      {
        v15 = 0;
        BYTE7(v22) = 0;
LABEL_29:
        *(v21 + v15) = 0;
        sub_7E854(v21, 1u);
        v6 = a1;
        if (SBYTE7(v22) < 0)
        {
          operator delete(v21[0]);
        }

        if (v31 < 0)
        {
          operator delete(v30);
        }

        std::locale::~locale(&v25);
        std::ostream::~ostream();
        std::ios::~ios();
        return v6;
      }

      v17 = v26;
      v15 = v27 - v26;
      if ((v27 - v26) > 0x7FFFFFFFFFFFFFF7)
      {
LABEL_36:
        sub_3244();
      }
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    BYTE7(v22) = v15;
    if (v15)
    {
      memmove(v21, v17, v15);
    }

    goto LABEL_29;
  }

  return v6;
}

void sub_FC7880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, void **a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  sub_1959728(&a41);
  v47 = *a9;
  if (*a9)
  {
    a17[19] = v47;
    operator delete(v47);
    sub_23D9C(a12);
    v48 = a17[8];
    if (!v48)
    {
LABEL_5:
      sub_FCC220(a10);
      sub_11BD8(a17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    sub_23D9C(a12);
    v48 = a17[8];
    if (!v48)
    {
      goto LABEL_5;
    }
  }

  a17[9] = v48;
  operator delete(v48);
  sub_FCC220(a10);
  sub_11BD8(a17);
  _Unwind_Resume(a1);
}

void sub_FC7A84(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  HIBYTE(v86) = 14;
  strcpy(&v85, "cost_functions");
  v5 = sub_5FAAC(a2, &v85, a2);
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  v6 = *(a1 + 40);
  v71 = (a1 + 40);
  v7 = *(a1 + 48);
  if (v7 != v6)
  {
    v8 = v7 - 816;
    do
    {
      sub_3BEF14((v8 + 24));
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      v9 = v8 - 8;
      v8 -= 824;
    }

    while (v9 != v6);
  }

  v70 = a1;
  *(a1 + 48) = v6;
  *v82 = 0u;
  v83 = 0u;
  v84 = 1065353216;
  __p = 0;
  v80 = 0;
  v81 = 0;
  v80 = sub_1CEE8(&__p, "standard");
LABEL_10:
  v10 = *(&v83 + 1);
  if (v10 < sub_5FC64(v5))
  {
    v11 = sub_588E0(v5);
    v12 = sub_5FC5C();
    if (v11 == v12)
    {
      goto LABEL_100;
    }

    v13 = 0;
    while (1)
    {
      v14 = (v11 + 16);
      sub_FC142C(v11 + 16, v5, v82, &v74);
      if (!sub_5FC6C(&v74))
      {
        break;
      }

      v15 = v76;
      if (v76)
      {
        goto LABEL_65;
      }

LABEL_62:
      v42 = v74;
      v74 = 0;
      if (v42)
      {
        operator delete(v42);
      }

      v11 = *v11;
      if (v11 == v12)
      {
        if (v13)
        {
          goto LABEL_10;
        }

LABEL_100:
        exception = __cxa_allocate_exception(0x40uLL);
        v69 = sub_2D390(exception, "initial processing of cost functions json failed, parents inconsistent", 0x46uLL);
      }
    }

    *&v85 = v11 + 16;
    v16 = sub_8E484(v82, v11 + 16);
    v17 = v16;
    if (v16[8])
    {
      v18 = v16[7];
      if (v18)
      {
        do
        {
          v26 = *v18;
          v27 = *(v18 + 12);
          if (v27 != -1)
          {
            (off_2674CE0[v27])(&v85, v18 + 5);
          }

          *(v18 + 12) = -1;
          if (*(v18 + 39) < 0)
          {
            operator delete(v18[2]);
          }

          operator delete(v18);
          v18 = v26;
        }

        while (v26);
      }

      v17[7] = 0;
      v19 = v17[6];
      if (v19)
      {
        bzero(v17[5], 8 * v19);
      }

      v17[8] = 0;
    }

    v20 = v74;
    v74 = 0;
    v21 = v17[5];
    v17[5] = v20;
    if (v21)
    {
      operator delete(v21);
    }

    v22 = v75;
    v23 = v76;
    v17[7] = v76;
    v17[6] = v22;
    v75 = 0;
    v24 = v77;
    v17[8] = v77;
    *(v17 + 18) = v78;
    if (v24)
    {
      v25 = v23[1];
      if ((v22 & (v22 - 1)) != 0)
      {
        if (v25 >= v22)
        {
          v25 %= v22;
        }
      }

      else
      {
        v25 &= v22 - 1;
      }

      v17[5][v25] = (v17 + 7);
      v76 = 0;
      v77 = 0;
    }

    v28 = *(v11 + 39);
    v29 = v28;
    if ((v28 & 0x80u) != 0)
    {
      v28 = *(v11 + 24);
    }

    if (v28 != 8)
    {
      goto LABEL_41;
    }

    v30 = *v14;
    if (v29 >= 0)
    {
      v30 = (v11 + 16);
    }

    if (*v30 != 0x647261646E617473)
    {
LABEL_41:
      v31 = v80;
      if (v80 >= v81)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * ((v80 - __p) >> 3) + 1;
        if (v34 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1794();
        }

        if (0x5555555555555556 * ((v81 - __p) >> 3) > v34)
        {
          v34 = 0x5555555555555556 * ((v81 - __p) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v81 - __p) >> 3) >= 0x555555555555555)
        {
          v35 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v35 = v34;
        }

        p_p = &__p;
        if (v35)
        {
          if (v35 <= 0xAAAAAAAAAAAAAAALL)
          {
            operator new();
          }

          sub_1808();
        }

        v38 = (8 * ((v80 - __p) >> 3));
        *&v85 = 0;
        *(&v85 + 1) = v38;
        v39 = 0;
        v86 = v38;
        v87 = 0;
        if ((v29 & 0x80) != 0)
        {
          sub_325C(v38, *(v11 + 16), *(v11 + 24));
          v38 = *(&v85 + 1);
          v37 = v86;
          v39 = v87;
        }

        else
        {
          v36 = *v14;
          *&dword_10[2 * ((v80 - __p) >> 3)] = *(v11 + 32);
          *v38 = v36;
          v37 = v38;
        }

        v33 = v37 + 24;
        v40 = &v38[-(v80 - __p)];
        memcpy(v40, __p, v80 - __p);
        v41 = __p;
        __p = v40;
        v80 = v33;
        v81 = v39;
        if (v41)
        {
          operator delete(v41);
        }
      }

      else
      {
        if (v29 < 0)
        {
          sub_325C(v80, *v14, *(v11 + 24));
        }

        else
        {
          v32 = *v14;
          *(v80 + 2) = *(v11 + 32);
          *v31 = v32;
        }

        v33 = v31 + 24;
      }

      v80 = v33;
    }

    ++v13;
    v15 = v76;
    if (!v76)
    {
      goto LABEL_62;
    }

    do
    {
LABEL_65:
      v43 = *v15;
      v44 = *(v15 + 12);
      if (v44 != -1)
      {
        (off_2674CE0[v44])(&v85, v15 + 5);
      }

      *(v15 + 12) = -1;
      if (*(v15 + 39) < 0)
      {
        operator delete(v15[2]);
      }

      operator delete(v15);
      v15 = v43;
    }

    while (v43);
    goto LABEL_62;
  }

  v45 = v80;
  v46 = __p + 24;
  v47 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v80 - (__p + 24)) >> 3));
  v48 = v80 == __p + 24;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v48)
  {
    v49 = 0;
  }

  else
  {
    v49 = v47;
  }

  sub_79630(v46, v45, &v85, v49, 1);
  v50 = __p;
  if (__p != v80)
  {
    v51 = sub_8DE74(v82, __p);
    v52 = sub_FC1660(a3, (v51 + 5));
    LODWORD(v74) = v52;
    v53 = *(v70 + 96);
    if (v53 <= v52)
    {
      v53 = v52;
    }

    *(v70 + 96) = v53;
    v54 = a4[1];
    if (v54 >= a4[2])
    {
      v55 = sub_FC9FE8(a4, &v74, (v51 + 5));
    }

    else
    {
      *v54 = v52;
      sub_5ADDC((v54 + 2), (v51 + 5));
      v55 = (v54 + 12);
    }

    a4[1] = v55;
    v57 = *(v70 + 40);
    v56 = *(v70 + 48);
    *&v85 = v50;
    sub_EDE7E0((v70 + 104), v50)[5] = (0xDAB7EC1DD3431B57 * ((v56 - v57) >> 3));
    v59 = *(v70 + 40);
    v58 = *(v70 + 48);
    *&v85 = &v74;
    sub_FCC494(v70, &v74)[3] = 0xDAB7EC1DD3431B57 * ((v58 - v59) >> 3);
    v60 = *(v70 + 48);
    if (v60 < *(v70 + 56))
    {
      if (*(v50 + 23) < 0)
      {
        sub_325C(&v85, *v50, v50[1]);
      }

      else
      {
        v61 = *v50;
        v86 = v50[2];
        v85 = v61;
      }

      sub_102B900(v60, (v51 + 5), &v85, v74);
    }

    sub_FCC2A4(v71, (v51 + 5), v50, &v74);
  }

  if (__p)
  {
    v62 = v80;
    v63 = __p;
    if (v80 != __p)
    {
      do
      {
        v64 = *(v62 - 1);
        v62 -= 3;
        if (v64 < 0)
        {
          operator delete(*v62);
        }
      }

      while (v62 != v50);
      v63 = __p;
    }

    v80 = v50;
    operator delete(v63);
  }

  v65 = v83;
  if (v83)
  {
    do
    {
      v66 = *v65;
      sub_8DBE8((v65 + 2));
      operator delete(v65);
      v65 = v66;
    }

    while (v66);
  }

  v67 = v82[0];
  v82[0] = 0;
  if (v67)
  {
    operator delete(v67);
  }
}

void sub_FC81D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void **);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  sub_FC113C(a5);
  sub_1A104(va);
  sub_8E8D8(va1);
  _Unwind_Resume(a1);
}

void sub_FC82C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(a1 + 72);
    do
    {
      v4 = *(a1 + 80);
      if (v3 < v4)
      {
        *v3++ = *(v2 + 4);
      }

      else
      {
        v5 = *(a1 + 64);
        v6 = v3 - v5;
        v7 = (v3 - v5) >> 2;
        v8 = v7 + 1;
        if ((v7 + 1) >> 62)
        {
          sub_1794();
        }

        v9 = v4 - v5;
        if (v9 >> 1 > v8)
        {
          v8 = v9 >> 1;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v8;
        }

        if (v10)
        {
          if (!(v10 >> 62))
          {
            operator new();
          }

          sub_1808();
        }

        v11 = v7;
        v12 = (4 * v7);
        v13 = &v12[-v11];
        *v12 = *(v2 + 4);
        v3 = v12 + 1;
        memcpy(v13, v5, v6);
        *(a1 + 64) = v13;
        *(a1 + 72) = v3;
        *(a1 + 80) = 0;
        if (v5)
        {
          operator delete(v5);
        }
      }

      *(a1 + 72) = v3;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v3 = *(a1 + 72);
  }

  v14 = *(a1 + 64);
  v15 = 126 - 2 * __clz((v3 - v14) >> 2);
  if (v3 == v14)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  sub_1C4C(v14, v3, &v25, v16, 1);
  v17 = *(a1 + 144);
  v18 = ((*(a1 + 96) + 1) * (*(a1 + 96) + 1));
  v19 = (*(a1 + 152) - v17) >> 3;
  if (v18 <= v19)
  {
    if (v18 < v19)
    {
      *(a1 + 152) = v17 + 8 * v18;
    }
  }

  else
  {
    sub_30B70(a1 + 144, v18 - v19);
  }

  v20 = *(a1 + 40);
  v21 = *(a1 + 48);
  while (v20 != v21)
  {
    v22 = *(a1 + 40);
    for (i = *(a1 + 48); v22 != i; v22 += 206)
    {
      v24 = sub_FC8AE0(v20, v22);
      *sub_FC94A0((a1 + 144), (*v20 + *v20 * *(a1 + 96) + *v22)) = v24;
    }

    v20 += 206;
  }
}

uint64_t sub_FC84C8(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    goto LABEL_24;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_24:
    sub_49EC("unordered_map::at: key not found");
  }

  if (v4.u32[0] < 2uLL)
  {
    v8 = *&v2 - 1;
    while (1)
    {
      v9 = v7[1];
      if (v9 == v3)
      {
        if (*(v7 + 4) == v3)
        {
          goto LABEL_14;
        }
      }

      else if ((v9 & v8) != v5)
      {
        goto LABEL_24;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_24;
      }
    }
  }

  while (1)
  {
    v13 = v7[1];
    if (v13 == v3)
    {
      break;
    }

    if (v13 >= *&v2)
    {
      v13 %= *&v2;
    }

    if (v13 != v5)
    {
      goto LABEL_24;
    }

LABEL_18:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_24;
    }
  }

  if (*(v7 + 4) != v3)
  {
    goto LABEL_18;
  }

LABEL_14:
  v10 = v7[3];
  v11 = a1 + 5;

  return sub_FC85D4(v11, v10);
}

uint64_t sub_FC85D4(void *a1, unint64_t a2)
{
  if (0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3) <= a2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, 0xDAB7EC1DD3431B57 * ((a1[1] - *a1) >> 3));
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

  return *a1 + 824 * a2;
}

void sub_FC8710(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_FC87F0(uint64_t a1, uint64_t a2)
{
  v3 = sub_EDE628((a1 + 104), a2);
  if (!v3)
  {
    return *(a1 + 40);
  }

  v4 = v3[5];

  return sub_FC85D4((a1 + 40), v4);
}

uint64_t sub_FC8844(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  if (v4 != v5)
  {
    while (*v4 != a2)
    {
      if ((*a3 & *sub_FC88E4((a1 + 144), a2 + a2 * *(a1 + 96) + *v4)) == 0)
      {
        return *v4;
      }

      if (++v4 == v5)
      {
        return a2;
      }
    }
  }

  return a2;
}

uint64_t sub_FC88E4(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_FC8A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_FC8AE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 128);
  v5 = *(a2 + 128);
  if (v4 != v5)
  {
    v6 = v4 - v5;
    if (v6 <= 0.0)
    {
      v6 = -v6;
    }

    if (v6 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  v7 = *(a1 + 136);
  v8 = *(a2 + 136);
  if (v7 != v8)
  {
    v9 = v7 - v8;
    if (v9 <= 0.0)
    {
      v9 = -v9;
    }

    if (v9 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  v10 = *(a1 + 144);
  v11 = *(a2 + 144);
  if (v10 != v11)
  {
    v12 = v10 - v11;
    if (v12 <= 0.0)
    {
      v12 = -v12;
    }

    if (v12 >= 2.22044605e-16)
    {
      goto LABEL_22;
    }
  }

  if (*(a1 + 448) != *(a2 + 448) || *(a1 + 452) != *(a2 + 452) || *(a1 + 456) != *(a2 + 456) || *(a1 + 619) != *(a2 + 619))
  {
    goto LABEL_22;
  }

  if (!*(a1 + 619))
  {
    goto LABEL_31;
  }

  v13 = *(a1 + 624);
  v14 = *(a2 + 624);
  if (v13 == v14)
  {
    goto LABEL_31;
  }

  v15 = v13 - v14;
  if (v15 <= 0.0)
  {
    v15 = -v15;
  }

  if (v15 < 2.22044605e-16)
  {
LABEL_31:
    v16 = 0;
    if (!sub_FCA948(a1 + 480, a2 + 480))
    {
      goto LABEL_32;
    }
  }

  else
  {
LABEL_22:
    v16 = 1;
    if (!sub_FCA948(a1 + 480, a2 + 480))
    {
      goto LABEL_32;
    }
  }

  v17 = *(a1 + 560);
  v18 = *(a1 + 552);
  v19 = *(a2 + 552);
  if (v17 - v18 == *(a2 + 560) - v19)
  {
    if (v18 == v17)
    {
LABEL_29:
      v20 = *(a1 + 224);
      v21 = *(a2 + 224);
      if (v20 == v21)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    while (*v18 == *v19 && *(v18 + 4) == *(v19 + 4) && *(v18 + 8) == *(v19 + 8))
    {
      v18 += 16;
      v19 += 16;
      if (v18 == v17)
      {
        goto LABEL_29;
      }
    }
  }

LABEL_32:
  v16 |= 2uLL;
  v20 = *(a1 + 224);
  v21 = *(a2 + 224);
  if (v20 == v21)
  {
    goto LABEL_36;
  }

LABEL_33:
  v22 = v20 - v21;
  if (v22 <= 0.0)
  {
    v22 = -v22;
  }

  if (v22 < 2.22044605e-16)
  {
LABEL_36:
    v23 = *(a1 + 232);
    v24 = *(a2 + 232);
    if (v23 == v24)
    {
      goto LABEL_44;
    }

    v25 = v23 - v24;
    if (v25 <= 0.0)
    {
      v25 = -v25;
    }

    if (v25 < 2.22044605e-16)
    {
LABEL_44:
      v26 = *(a1 + 240);
      v27 = *(a2 + 240);
      if (v26 == v27)
      {
        goto LABEL_190;
      }

      v28 = v26 - v27;
      if (v28 <= 0.0)
      {
        v28 = -v28;
      }

      if (v28 < 2.22044605e-16)
      {
LABEL_190:
        if (*(a1 + 416) == *(a2 + 416))
        {
          goto LABEL_46;
        }
      }
    }
  }

  v16 |= 0x20uLL;
LABEL_46:
  if (!sub_FCA948(a1 + 480, a2 + 480))
  {
    goto LABEL_65;
  }

  v29 = *(a1 + 560);
  v30 = *(a1 + 552);
  v31 = *(a2 + 552);
  if (v29 - v30 != *(a2 + 560) - v31)
  {
    goto LABEL_65;
  }

  if (v30 != v29)
  {
    while (*v30 == *v31 && *(v30 + 4) == *(v31 + 4) && *(v30 + 8) == *(v31 + 8))
    {
      v30 += 16;
      v31 += 16;
      if (v30 == v29)
      {
        goto LABEL_53;
      }
    }

    goto LABEL_65;
  }

LABEL_53:
  v32 = *(a1 + 200);
  v33 = *(a2 + 200);
  if (v32 != v33)
  {
    v34 = v32 - v33;
    if (v34 <= 0.0)
    {
      v34 = -v34;
    }

    if (v34 >= 2.22044605e-16)
    {
      goto LABEL_65;
    }
  }

  v35 = *(a1 + 208);
  v36 = *(a2 + 208);
  if (v35 != v36)
  {
    v37 = v35 - v36;
    if (v37 <= 0.0)
    {
      v37 = -v37;
    }

    if (v37 >= 2.22044605e-16)
    {
      goto LABEL_65;
    }
  }

  v38 = *(a1 + 216);
  v39 = *(a2 + 216);
  if (v38 != v39)
  {
    v40 = v38 - v39;
    if (v40 <= 0.0)
    {
      v40 = -v40;
    }

    if (v40 >= 2.22044605e-16)
    {
LABEL_65:
      v16 |= 4uLL;
    }
  }

  if (*(a1 + 800) != *(a2 + 800) || *(a1 + 801) != *(a2 + 801) || *(a1 + 808) != *(a2 + 808) || *(a1 + 812) != *(a2 + 812) || *(a1 + 816) != *(a2 + 816))
  {
    v16 |= 8uLL;
  }

  v41 = *(a1 + 40);
  v42 = *(a2 + 40);
  if (v41 != v42)
  {
    v43 = v41 - v42;
    if (v43 <= 0.0)
    {
      v43 = -v43;
    }

    if (v43 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v44 = *(a1 + 48);
  v45 = *(a2 + 48);
  if (v44 != v45)
  {
    v46 = v44 - v45;
    if (v46 <= 0.0)
    {
      v46 = -v46;
    }

    if (v46 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v47 = *(a1 + 56);
  v48 = *(a2 + 56);
  if (v47 != v48)
  {
    v49 = v47 - v48;
    if (v49 <= 0.0)
    {
      v49 = -v49;
    }

    if (v49 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v50 = *(a1 + 64);
  v51 = *(a2 + 64);
  if (v50 != v51)
  {
    v52 = v50 - v51;
    if (v52 <= 0.0)
    {
      v52 = -v52;
    }

    if (v52 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v53 = *(a1 + 72);
  v54 = *(a2 + 72);
  if (v53 != v54)
  {
    v55 = v53 - v54;
    if (v55 <= 0.0)
    {
      v55 = -v55;
    }

    if (v55 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  v56 = *(a1 + 80);
  v57 = *(a2 + 80);
  if (v56 != v57)
  {
    v58 = v56 - v57;
    if (v58 <= 0.0)
    {
      v58 = -v58;
    }

    if (v58 >= 2.22044605e-16)
    {
      goto LABEL_116;
    }
  }

  if (*(a1 + 112) != *(a2 + 112) || *(a1 + 116) != *(a2 + 116) || *(a1 + 120) != *(a2 + 120) || (v60 = *(a1 + 88), v59 = *(a1 + 96), v61 = *(a2 + 88), v59 - v60 != *(a2 + 96) - v61))
  {
LABEL_116:
    v16 |= 0x40uLL;
    goto LABEL_117;
  }

  if (v60 != v59)
  {
    while (*v60 == *v61)
    {
      v62 = v60[1];
      v63 = v61[1];
      if (v62 != v63)
      {
        v64 = v62 - v63;
        if (v64 <= 0.0)
        {
          v64 = -v64;
        }

        if (v64 >= 2.22044605e-16)
        {
          break;
        }
      }

      v65 = v60[2];
      v66 = v61[2];
      if (v65 != v66)
      {
        v67 = v65 - v66;
        if (v67 <= 0.0)
        {
          v67 = -v67;
        }

        if (v67 >= 2.22044605e-16)
        {
          break;
        }
      }

      v68 = v60[3];
      v69 = v61[3];
      if (v68 != v69)
      {
        v70 = v68 - v69;
        if (v70 <= 0.0)
        {
          v70 = -v70;
        }

        if (v70 >= 2.22044605e-16)
        {
          break;
        }
      }

      v60 += 4;
      v61 += 4;
      if (v60 == v59)
      {
        goto LABEL_117;
      }
    }

    goto LABEL_116;
  }

LABEL_117:
  v71 = *(a1 + 296);
  v72 = *(a2 + 296);
  if (v71 != v72)
  {
    v73 = v71 - v72;
    if (v73 <= 0.0)
    {
      v73 = -v73;
    }

    if (v73 >= 2.22044605e-16)
    {
      goto LABEL_132;
    }
  }

  v74 = *(a1 + 304);
  v75 = *(a2 + 304);
  if (v74 != v75)
  {
    v76 = v74 - v75;
    if (v76 <= 0.0)
    {
      v76 = -v76;
    }

    if (v76 >= 2.22044605e-16)
    {
      goto LABEL_132;
    }
  }

  v77 = *(a1 + 312);
  v78 = *(a2 + 312);
  if (v77 != v78)
  {
    v79 = v77 - v78;
    if (v79 <= 0.0)
    {
      v79 = -v79;
    }

    if (v79 >= 2.22044605e-16)
    {
      goto LABEL_132;
    }
  }

  if (*(a1 + 464) != *(a2 + 464) || *(a1 + 468) != *(a2 + 468) || *(a1 + 472) != *(a2 + 472))
  {
LABEL_132:
    v16 |= 0x100uLL;
  }

  v80 = *(a1 + 32);
  v81 = *(a2 + 32);
  if (v80 != v81)
  {
    v82 = v80 - v81;
    if (v82 <= 0.0)
    {
      v82 = -v82;
    }

    if (v82 >= 2.22044605e-16)
    {
      return v16 | 0x10;
    }
  }

  v84 = *(a1 + 424);
  v83 = *(a1 + 432);
  v85 = *(a2 + 424);
  if (v83 - v84 != *(a2 + 432) - v85)
  {
    return v16 | 0x10;
  }

  if (v84 != v83)
  {
    while (*v84 == *v85 && *(v84 + 8) == *(v85 + 8) && *(v84 + 12) == *(v85 + 12) && *(v84 + 16) == *(v85 + 16))
    {
      v84 += 24;
      v85 += 24;
      if (v84 == v83)
      {
        goto LABEL_144;
      }
    }

    return v16 | 0x10;
  }

LABEL_144:
  v87 = *(a1 + 272);
  v86 = *(a1 + 280);
  v88 = *(a2 + 272);
  if (v86 - v87 != *(a2 + 280) - v88)
  {
    return v16 | 0x10;
  }

  if (v87 != v86)
  {
    while (1)
    {
      if (*v87 != *v88)
      {
        v89 = *v87 - *v88;
        if (v89 <= 0.0)
        {
          v89 = -v89;
        }

        if (v89 >= 2.22044605e-16)
        {
          break;
        }
      }

      v90 = v87[1];
      v91 = v88[1];
      if (v90 != v91)
      {
        v92 = v90 - v91;
        if (v92 <= 0.0)
        {
          v92 = -v92;
        }

        if (v92 >= 2.22044605e-16)
        {
          break;
        }
      }

      v93 = v87[2];
      v94 = v88[2];
      if (v93 != v94)
      {
        v95 = v93 - v94;
        if (v95 <= 0.0)
        {
          v95 = -v95;
        }

        if (v95 >= 2.22044605e-16)
        {
          break;
        }
      }

      v87 += 3;
      v88 += 3;
      if (v87 == v86)
      {
        goto LABEL_161;
      }
    }

    return v16 | 0x10;
  }

LABEL_161:
  v96 = *(a1 + 536);
  v97 = *(a1 + 528);
  v98 = *(a2 + 528);
  if (v96 - v97 != *(a2 + 536) - v98)
  {
    return v16 | 0x10;
  }

  if (v97 != v96)
  {
    while (*v97 == *v98 && *(v97 + 4) == *(v98 + 4) && *(v97 + 8) == *(v98 + 8))
    {
      v97 += 16;
      v98 += 16;
      if (v97 == v96)
      {
        goto LABEL_167;
      }
    }

    return v16 | 0x10;
  }

LABEL_167:
  if (*(a1 + 616) != *(a2 + 616) || *(a1 + 617) != *(a2 + 617) || *(a1 + 618) != *(a2 + 618) || !sub_FCA6D8((a1 + 320), a2 + 320) || !sub_FCA6D8((a1 + 344), a2 + 344) || !sub_FCA6D8((a1 + 368), a2 + 368) || !sub_FCA7B4((a1 + 576), (a2 + 576)) || sub_FCA834((a1 + 712), (a2 + 712)) || *(a1 + 784) != *(a2 + 784) || *(a1 + 788) != *(a2 + 788) || *(a1 + 792) != *(a2 + 792) || sub_FCA834((a1 + 392), (a2 + 392)) || *(a1 + 600) != *(a2 + 600) || *(a1 + 604) != *(a2 + 604) || *(a1 + 608) != *(a2 + 608) || *(a1 + 176) != *(a2 + 176) || *(a1 + 180) != *(a2 + 180) || *(a1 + 184) != *(a2 + 184) || *(a1 + 192) != *(a2 + 192))
  {
    return v16 | 0x10;
  }

  return v16;
}

uint64_t sub_FC94A0(void *a1, unint64_t a2)
{
  if (a2 >= (a1[1] - *a1) >> 3)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    std::to_string(&v14, a2);
    sub_23E08("Out-of-bounds access in Vector::at with index=", &v14, &v15);
    sub_30F54(",size=", &v15, &v16);
    std::to_string(&v13, (a1[1] - *a1) >> 3);
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

  return *a1 + 8 * a2;
}

void sub_FC95BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

void sub_FC969C(uint64_t *a1)
{
  v6 = 6;
  strcpy(v5, "parent");
  v2 = sub_62C28(a1, v5);
  if (v2)
  {
    sub_24C14(a1, v2, &__p);
    v3 = __p;
    __p = 0;
    if (v3)
    {
      if (v8 == 1)
      {
        v4 = *(v3 + 12);
        if (v4 != -1)
        {
          (off_2674CE0[v4])(&v9, v3 + 5);
        }

        *(v3 + 12) = -1;
        if (*(v3 + 39) < 0)
        {
          operator delete(v3[2]);
        }
      }

      operator delete(v3);
    }
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_FC9780(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0xD4BFB52FED4BFB53 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x2568095A025680)
  {
    if (0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3);
    }

    if (0xD4BFB52FED4BFB53 * ((a1[2] - *a1) >> 3) >= 0x12B404AD012B40)
    {
      v7 = 0x2568095A025680;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x2568095A025680)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FD0348(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FC99AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FC99E4(va);
  _Unwind_Resume(a1);
}

void sub_FC99C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_FC99E4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_FC99E4(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1752;
    sub_3BE944((i - 1720));
    if (*(i - 1721) < 0)
    {
      operator delete(*(i - 1744));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_FC9A5C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v7;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  v8 = *(a2 + 96);
  v9 = *(a2 + 112);
  v10 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v10;
  *(a1 + 96) = v8;
  *(a1 + 112) = v9;
  v11 = *(a2 + 160);
  v12 = *(a2 + 176);
  v13 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v13;
  *(a1 + 160) = v11;
  *(a1 + 176) = v12;
  *(a1 + 240) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = 0;
  *(a2 + 224) = 0u;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 248) = *(a2 + 248);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a2 + 248) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = 0;
  *(a2 + 272) = 0u;
  v14 = *(a2 + 312);
  *(a1 + 296) = *(a2 + 296);
  *(a1 + 312) = v14;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 328) = *(a2 + 328);
  *(a1 + 336) = *(a2 + 336);
  *(a2 + 344) = 0;
  *(a2 + 328) = 0u;
  *(a1 + 368) = 0;
  *(a1 + 352) = 0u;
  *(a1 + 352) = *(a2 + 352);
  *(a1 + 368) = *(a2 + 368);
  *(a2 + 368) = 0;
  *(a2 + 352) = 0u;
  *(a1 + 392) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  *(a2 + 392) = 0;
  *(a2 + 376) = 0u;
  *(a1 + 416) = 0;
  *(a1 + 400) = 0u;
  *(a1 + 400) = *(a2 + 400);
  *(a1 + 416) = *(a2 + 416);
  *(a2 + 416) = 0;
  *(a2 + 400) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 424) = 0u;
  *(a1 + 424) = *(a2 + 424);
  *(a1 + 432) = *(a2 + 432);
  *(a2 + 440) = 0;
  *(a2 + 424) = 0u;
  memcpy((a1 + 448), (a2 + 448), 0x180uLL);
  *(a1 + 832) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 832) = *(a2 + 832);
  *(a1 + 848) = *(a2 + 848);
  *(a2 + 832) = 0u;
  *(a2 + 848) = 0;
  *(a1 + 872) = 0;
  *(a1 + 856) = 0u;
  *(a1 + 856) = *(a2 + 856);
  *(a1 + 864) = *(a2 + 864);
  *(a2 + 856) = 0u;
  *(a2 + 872) = 0;
  *(a1 + 896) = 0;
  *(a1 + 880) = 0u;
  *(a1 + 880) = *(a2 + 880);
  *(a1 + 896) = *(a2 + 896);
  *(a2 + 880) = 0u;
  *(a2 + 896) = 0;
  v16 = *(a2 + 920);
  v15 = *(a2 + 936);
  *(a1 + 904) = *(a2 + 904);
  *(a1 + 920) = v16;
  *(a1 + 936) = v15;
  *(a1 + 960) = 0u;
  *(a1 + 952) = 0;
  *(a1 + 952) = *(a2 + 952);
  *(a1 + 960) = *(a2 + 960);
  *(a2 + 968) = 0;
  *(a2 + 952) = 0u;
  *(a1 + 976) = *(a2 + 976);
  v18 = *(a2 + 992);
  v17 = *(a2 + 1008);
  v19 = *(a2 + 1024);
  *(a1 + 1033) = *(a2 + 1033);
  *(a1 + 1008) = v17;
  *(a1 + 1024) = v19;
  *(a1 + 992) = v18;
  v20 = *(a2 + 1072);
  v21 = *(a2 + 1088);
  *(a1 + 1056) = *(a2 + 1056);
  *(a1 + 1088) = v21;
  *(a1 + 1072) = v20;
  *(a1 + 1104) = 0;
  *(a1 + 1112) = 0u;
  *(a1 + 1104) = *(a2 + 1104);
  *(a1 + 1120) = *(a2 + 1120);
  *(a2 + 1104) = 0u;
  *(a2 + 1120) = 0;
  *(a1 + 1128) = *(a2 + 1128);
  *(a1 + 1152) = 0u;
  *(a1 + 1144) = 0;
  *(a1 + 1144) = *(a2 + 1144);
  *(a1 + 1152) = *(a2 + 1152);
  *(a2 + 1160) = 0;
  *(a2 + 1144) = 0u;
  *(a1 + 1168) = *(a2 + 1168);
  v22 = *(a2 + 1200);
  v23 = *(a2 + 1216);
  *(a1 + 1184) = *(a2 + 1184);
  *(a1 + 1216) = v23;
  *(a1 + 1200) = v22;
  v24 = *(a2 + 1232);
  v25 = *(a2 + 1248);
  v26 = *(a2 + 1264);
  *(a1 + 1280) = *(a2 + 1280);
  *(a1 + 1264) = v26;
  *(a1 + 1248) = v25;
  *(a1 + 1232) = v24;
  *(a1 + 1296) = 0;
  *(a1 + 1304) = 0u;
  *(a1 + 1296) = *(a2 + 1296);
  *(a1 + 1312) = *(a2 + 1312);
  *(a2 + 1312) = 0;
  *(a2 + 1296) = 0u;
  *(a1 + 1336) = 0;
  *(a1 + 1320) = 0u;
  *(a1 + 1320) = *(a2 + 1320);
  *(a1 + 1328) = *(a2 + 1328);
  *(a2 + 1336) = 0;
  *(a2 + 1320) = 0u;
  *(a1 + 1344) = *(a2 + 1344);
  v27 = *(a2 + 1352);
  *(a1 + 1357) = *(a2 + 1357);
  *(a1 + 1352) = v27;
  *(a1 + 1368) = 0;
  *(a1 + 1376) = 0u;
  *(a1 + 1368) = *(a2 + 1368);
  *(a1 + 1376) = *(a2 + 1376);
  *(a2 + 1384) = 0;
  *(a2 + 1368) = 0u;
  *(a1 + 1408) = 0;
  *(a1 + 1392) = 0u;
  *(a1 + 1392) = *(a2 + 1392);
  *(a1 + 1408) = *(a2 + 1408);
  *(a2 + 1408) = 0;
  *(a2 + 1392) = 0u;
  *(a1 + 1432) = 0;
  *(a1 + 1416) = 0u;
  *(a1 + 1416) = *(a2 + 1416);
  *(a1 + 1424) = *(a2 + 1424);
  *(a2 + 1432) = 0;
  *(a2 + 1416) = 0u;
  *(a1 + 1456) = 0;
  *(a1 + 1440) = 0u;
  *(a1 + 1440) = *(a2 + 1440);
  *(a1 + 1456) = *(a2 + 1456);
  *(a2 + 1456) = 0;
  *(a2 + 1440) = 0u;
  v28 = *(a2 + 1464);
  *(a1 + 1466) = *(a2 + 1466);
  *(a1 + 1464) = v28;
  *(a1 + 1472) = 0;
  *(a1 + 1480) = 0u;
  *(a1 + 1472) = *(a2 + 1472);
  *(a1 + 1488) = *(a2 + 1488);
  *(a2 + 1488) = 0;
  *(a2 + 1472) = 0u;
  *(a1 + 1512) = 0;
  *(a1 + 1496) = 0u;
  *(a1 + 1496) = *(a2 + 1496);
  *(a1 + 1504) = *(a2 + 1504);
  *(a2 + 1512) = 0;
  *(a2 + 1496) = 0u;
  *(a1 + 1536) = 0;
  *(a1 + 1520) = 0u;
  *(a1 + 1520) = *(a2 + 1520);
  *(a1 + 1536) = *(a2 + 1536);
  *(a2 + 1536) = 0;
  *(a2 + 1520) = 0u;
  *(a1 + 1560) = 0;
  *(a1 + 1544) = 0u;
  *(a1 + 1544) = *(a2 + 1544);
  *(a1 + 1552) = *(a2 + 1552);
  *(a2 + 1560) = 0;
  *(a2 + 1544) = 0u;
  *(a1 + 1584) = 0;
  *(a1 + 1568) = 0u;
  *(a1 + 1568) = *(a2 + 1568);
  *(a1 + 1584) = *(a2 + 1584);
  *(a2 + 1584) = 0;
  *(a2 + 1568) = 0u;
  v29 = *(a2 + 1704);
  v31 = *(a2 + 1656);
  v30 = *(a2 + 1672);
  *(a1 + 1688) = *(a2 + 1688);
  *(a1 + 1704) = v29;
  *(a1 + 1656) = v31;
  *(a1 + 1672) = v30;
  v32 = *(a2 + 1592);
  v33 = *(a2 + 1608);
  v34 = *(a2 + 1640);
  *(a1 + 1624) = *(a2 + 1624);
  *(a1 + 1640) = v34;
  *(a1 + 1592) = v32;
  *(a1 + 1608) = v33;
  return a1;
}

void **sub_FC9F64(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 1744;
      do
      {
        sub_3BE944((v5 + 24));
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v6 = (v5 - 8);
        v5 -= 1752;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_FC9FE8(uint64_t *a1, _DWORD *a2, uint64_t a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4);
  v4 = v3 + 1;
  if (v3 + 1 > 0x555555555555555)
  {
    sub_1794();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 4) > v4)
  {
    v4 = 0x5555555555555556 * ((a1[2] - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v4;
  }

  if (v6)
  {
    if (v6 <= 0x555555555555555)
    {
      operator new();
    }

    sub_1808();
  }

  *(16 * ((a1[1] - *a1) >> 4)) = *a2;
  sub_5ADDC(48 * v3 + 8, a3);
  v7 = a1[1];
  v8 = 48 * v3 + *a1 - v7;
  sub_FCA138(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  a1[1] = 48 * v3 + 48;
  a1[2] = 0;
  if (v9)
  {
    operator delete(v9);
  }

  return 48 * v3 + 48;
}

void sub_FCA124(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FCA294(va);
  _Unwind_Resume(a1);
}

void sub_FCA138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    do
    {
      v8 = a2 + v6;
      v9 = a4 + v6;
      v10 = *(a2 + v6);
      v11 = *(a2 + v6 + 8);
      v12 = *(a2 + v6 + 16);
      *(v8 + 8) = 0;
      *(v9 + 8) = v11;
      *(v9 + 16) = v12;
      *(v8 + 16) = 0;
      v13 = *(a2 + v6 + 32);
      v14 = *(a2 + v6 + 40);
      v15 = *(a2 + v6 + 24);
      *v9 = v10;
      *(a4 + v6 + 24) = v15;
      *(v9 + 32) = v13;
      *(v9 + 40) = v14;
      if (v13)
      {
        v7 = *(v15 + 8);
        v16 = *(v9 + 16);
        if ((v16 & (v16 - 1)) != 0)
        {
          if (v7 >= v16)
          {
            v7 %= v16;
          }
        }

        else
        {
          v7 &= v16 - 1;
        }

        *(v11 + 8 * v7) = a4 + v6 + 24;
        *(a2 + v6 + 24) = 0;
        *(a2 + v6 + 32) = 0;
      }

      v6 += 48;
    }

    while (a2 + v6 != a3);
    if (a2 != a3)
    {
      do
      {
        v17 = *(v5 + 24);
        if (v17)
        {
          do
          {
            v19 = *v17;
            v20 = *(v17 + 12);
            if (v20 != -1)
            {
              (off_2674CE0[v20])(&v21, v17 + 5);
            }

            *(v17 + 12) = -1;
            if (*(v17 + 39) < 0)
            {
              operator delete(v17[2]);
            }

            operator delete(v17);
            v17 = v19;
          }

          while (v19);
        }

        v18 = *(v5 + 8);
        *(v5 + 8) = 0;
        if (v18)
        {
          operator delete(v18);
        }

        v5 += 48;
      }

      while (v5 != a3);
    }
  }
}

uint64_t sub_FCA294(uint64_t a1)
{
  sub_FCA2CC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_FCA2CC(uint64_t a1, uint64_t a2)
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
          (off_2674CE0[v8])(&v9, v5 + 5);
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

void sub_FCA3A8(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0xD4BFB52FED4BFB53 * ((a1[1] - *a1) >> 3) + 1;
  if (v4 <= 0x2568095A025680)
  {
    if (0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3) > v4)
    {
      v4 = 0xA97F6A5FDA97F6A6 * ((a1[2] - *a1) >> 3);
    }

    if (0xD4BFB52FED4BFB53 * ((a1[2] - *a1) >> 3) >= 0x12B404AD012B40)
    {
      v7 = 0x2568095A025680;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x2568095A025680)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 8 * ((a1[1] - *a1) >> 3);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FD0348(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCA5D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_FC99E4(va);
  _Unwind_Resume(a1);
}

void sub_FCA5E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_FC99E4(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_FCA60C(double **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (1)
    {
      if (*v3 != *v4)
      {
        v5 = *v3 - *v4;
        if (v5 <= 0.0)
        {
          v5 = -v5;
        }

        if (v5 >= 2.22044605e-16)
        {
          break;
        }
      }

      v6 = v3[1];
      v7 = v4[1];
      if (v6 != v7)
      {
        v8 = v6 - v7;
        if (v8 <= 0.0)
        {
          v8 = -v8;
        }

        if (v8 >= 2.22044605e-16)
        {
          break;
        }
      }

      v9 = v3[2];
      v10 = v4[2];
      if (v9 != v10)
      {
        v11 = v9 - v10;
        if (v11 <= 0.0)
        {
          v11 = -v11;
        }

        if (v11 >= 2.22044605e-16)
        {
          break;
        }
      }

      v3 += 3;
      v4 += 3;
      if (v3 == v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_FCA6D8(double **a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 != *(a2 + 8) - *a2)
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (*v3 == *v4)
    {
      v5 = v3[1];
      v6 = v4[1];
      if (v5 != v6)
      {
        v7 = v5 - v6;
        if (v7 <= 0.0)
        {
          v7 = -v7;
        }

        if (v7 >= 2.22044605e-16)
        {
          break;
        }
      }

      v8 = v3[2];
      v9 = v4[2];
      if (v8 != v9)
      {
        v10 = v8 - v9;
        if (v10 <= 0.0)
        {
          v10 = -v10;
        }

        if (v10 >= 2.22044605e-16)
        {
          break;
        }
      }

      v11 = v3[3];
      v12 = v4[3];
      if (v11 != v12)
      {
        v13 = v11 - v12;
        if (v13 <= 0.0)
        {
          v13 = -v13;
        }

        if (v13 >= 2.22044605e-16)
        {
          break;
        }
      }

      v3 += 4;
      v4 += 4;
      if (v3 == v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_FCA7B4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    while (*v3 == *v4 && *(v3 + 8) == *(v4 + 8) && *(v3 + 12) == *(v4 + 12) && *(v3 + 16) == *(v4 + 16))
    {
      v3 += 24;
      v4 += 24;
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL sub_FCA834(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    v2 = *a1 - *a2;
    if (v2 <= 0.0)
    {
      v2 = -v2;
    }

    if (v2 >= 2.22044605e-16)
    {
      return 1;
    }
  }

  v3 = a1[1];
  v4 = a2[1];
  if (v3 != v4)
  {
    v5 = v3 - v4;
    if (v5 <= 0.0)
    {
      v5 = -v5;
    }

    if (v5 >= 2.22044605e-16)
    {
      return 1;
    }
  }

  v6 = a1[2];
  v7 = a2[2];
  if (v6 == v7)
  {
    return 0;
  }

  v9 = v6 - v7;
  if (v9 <= 0.0)
  {
    v9 = -v9;
  }

  return v9 >= 2.22044605e-16;
}

uint64_t sub_FCA8D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  if (v2 - *a1 == a2[1] - *a2)
  {
    if (v3 == v2)
    {
      return 1;
    }

    while (*v3 == *v4 && *(v3 + 4) == *(v4 + 4) && *(v3 + 8) == *(v4 + 8))
    {
      v3 += 16;
      v4 += 16;
      if (v3 == v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_FCA948(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *a2;
  if ((v2 - *a1) != (*(a2 + 8) - *a2))
  {
    return 0;
  }

  if (v3 != v2)
  {
    while (*v3 == *v4 && v3[1] == v4[1] && v3[2] == v4[2] && v3[3] == v4[3])
    {
      v3 += 4;
      v4 += 4;
      if (v3 == v2)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

LABEL_8:
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  v7 = *(a2 + 24);
  if (v5 - v6 != *(a2 + 32) - v7)
  {
    return 0;
  }

  result = 1;
  if (v6 != v5)
  {
    while (*v6 == *v7 && *(v6 + 8) == *(v7 + 8) && *(v6 + 16) == *(v7 + 16) && *(v6 + 24) == *(v7 + 24) && *(v6 + 32) == *(v7 + 32))
    {
      v6 += 40;
      v7 += 40;
      if (v6 == v5)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_FCAA48(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v18[0] = a1;
  v18[1] = a1 + 1;
  v18[2] = a1 + 2;
  v18[3] = a1 + 3;
  v18[4] = a1 + 4;
  v18[5] = a1 + 5;
  v18[6] = a1 + 6;
  v18[7] = a1 + 7;
  v18[8] = a1 + 8;
  v18[9] = a1 + 9;
  v18[10] = a1 + 10;
  v18[11] = a1 + 11;
  v18[12] = a1 + 12;
  v18[13] = a1 + 16;
  v19 = (a1 + 40);
  v20 = a1 + 64;
  v21 = (a1 + 88);
  v14[0] = a2;
  v14[1] = a2 + 1;
  v14[2] = a2 + 2;
  v14[3] = a2 + 3;
  v14[4] = a2 + 4;
  v14[5] = a2 + 5;
  v14[6] = a2 + 6;
  v14[7] = a2 + 7;
  v14[8] = a2 + 8;
  v14[9] = a2 + 9;
  v14[10] = a2 + 10;
  v14[11] = a2 + 11;
  v14[12] = a2 + 12;
  v14[13] = a2 + 16;
  v15 = (a2 + 40);
  v16 = a2 + 64;
  v17 = (a2 + 88);
  if (sub_FCAC6C(&v22, v18, v14))
  {
    v3 = *v19;
    v2 = v19[1];
    v4 = *v15;
    if (v2 - *v19 == v15[1] - *v15)
    {
      if (v3 == v2)
      {
LABEL_10:
        v7 = *v20;
        v6 = *(v20 + 1);
        v8 = *v16;
        if ((v6 - *v20) == (*(v16 + 1) - *v16))
        {
          if (v7 == v6)
          {
LABEL_18:
            v11 = *v21;
            v10 = v21[1];
            v12 = *v17;
            if (v10 - *v21 == v17[1] - *v17)
            {
              result = 1;
              if (v11 == v10)
              {
                return result;
              }

              while (*v11 == *v12 && *(v11 + 8) == *(v12 + 8) && *(v11 + 12) == *(v12 + 12) && *(v11 + 16) == *(v12 + 16))
              {
                v11 += 24;
                v12 += 24;
                if (v11 == v10)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            while (*v7 == *v8 && v7[1] == v8[1])
            {
              v7 += 2;
              v8 += 2;
              if (v7 == v6)
              {
                goto LABEL_18;
              }
            }
          }
        }
      }

      else
      {
        while (*v3 == *v4 && *(v3 + 8) == *(v4 + 8))
        {
          v3 += 16;
          v4 += 16;
          if (v3 == v2)
          {
            goto LABEL_10;
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_FCAC6C(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 != **a3)
  {
    return 0;
  }

  if (*a2[1] != *a3[1])
  {
    return 0;
  }

  if (*a2[2] != *a3[2])
  {
    return 0;
  }

  if (*a2[3] != *a3[3])
  {
    return 0;
  }

  if (*a2[4] != *a3[4])
  {
    return 0;
  }

  if (*a2[5] != *a3[5])
  {
    return 0;
  }

  if (*a2[6] != *a3[6])
  {
    return 0;
  }

  if (*a2[7] != *a3[7])
  {
    return 0;
  }

  if (*a2[8] != *a3[8])
  {
    return 0;
  }

  if (*a2[9] != *a3[9])
  {
    return 0;
  }

  if (*a2[10] != *a3[10])
  {
    return 0;
  }

  if (*a2[11] != *a3[11])
  {
    return 0;
  }

  if (*a2[12] != *a3[12])
  {
    return 0;
  }

  v4 = *a2[13];
  v3 = *(a2[13] + 1);
  v5 = *a3[13];
  if (v3 - v4 != *(a3[13] + 1) - v5)
  {
    return 0;
  }

  if (v4 == v3)
  {
    return 1;
  }

  do
  {
    v6 = *v4;
    v7 = v4[1];
    v4 += 2;
    v8 = *v5;
    v9 = v5[1];
    v5 += 2;
    result = v7 == v9 && v6 == v8;
  }

  while (result && v4 != v3);
  return result;
}

uint64_t sub_FCAE04(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v5[0] = a1;
  v5[1] = a1 + 1;
  v5[2] = a1 + 2;
  v5[3] = a1 + 3;
  v5[4] = a1 + 4;
  v5[5] = a1 + 5;
  v5[6] = a1 + 8;
  v5[7] = a1 + 16;
  v5[8] = a1 + 24;
  v5[9] = a1 + 32;
  v5[10] = a1 + 40;
  v5[11] = a1 + 48;
  v5[12] = a1 + 72;
  v5[13] = a1 + 88;
  v6 = a1 + 112;
  v3[0] = a2;
  v3[1] = a2 + 1;
  v3[2] = a2 + 2;
  v3[3] = a2 + 3;
  v3[4] = a2 + 4;
  v3[5] = a2 + 5;
  v3[6] = a2 + 8;
  v3[7] = a2 + 16;
  v3[8] = a2 + 24;
  v3[9] = a2 + 32;
  v3[10] = a2 + 40;
  v3[11] = a2 + 48;
  v3[12] = a2 + 72;
  v3[13] = a2 + 88;
  v4 = a2 + 112;
  result = sub_FCAF38(&v7, v5, v3);
  if (result)
  {
    return *v6 == *v4 && *(v6 + 1) == *(v4 + 1) && *(v6 + 1) == *(v4 + 1);
  }

  return result;
}

uint64_t sub_FCAF38(uint64_t a1, unsigned __int8 **a2, unsigned __int8 **a3)
{
  if (**a2 == **a3 && *a2[1] == *a3[1] && *a2[2] == *a3[2] && *a2[3] == *a3[3] && *a2[4] == *a3[4] && *a2[5] == *a3[5] && *a2[6] == *a3[6] && *a2[7] == *a3[7] && *a2[8] == *a3[8] && *a2[9] == *a3[9] && *a2[10] == *a3[10])
  {
    v4 = *a2[11];
    v3 = *(a2[11] + 1);
    v5 = *a3[11];
    if (v3 - v4 == *(a3[11] + 1) - v5)
    {
      if (v4 == v3)
      {
LABEL_18:
        v6 = a2[12];
        v7 = a3[12];
        if (*v6 == *v7 && *(v6 + 1) == *(v7 + 1) && *(v6 + 1) == *(v7 + 1))
        {
          v9 = *a2[13];
          v8 = *(a2[13] + 1);
          v10 = *a3[13];
          if (v8 - v9 == *(a3[13] + 1) - v10)
          {
            result = 1;
            if (v9 == v8)
            {
              return result;
            }

            while (*v9 == *v10 && *(v9 + 4) == *(v10 + 4) && *(v9 + 8) == *(v10 + 8))
            {
              v9 += 16;
              v10 += 16;
              if (v9 == v8)
              {
                return result;
              }
            }
          }
        }
      }

      else
      {
        while (*v4 == *v5 && *(v4 + 4) == *(v5 + 4) && *(v4 + 8) == *(v5 + 8))
        {
          v4 += 16;
          v5 += 16;
          if (v4 == v3)
          {
            goto LABEL_18;
          }
        }
      }
    }
  }

  return 0;
}

BOOL sub_FCB158(double *a1, double *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1))
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2 != v3)
  {
    v4 = v2 - v3;
    if (v4 <= 0.0)
    {
      v4 = -v4;
    }

    if (v4 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v5 = a1[2];
  v6 = a2[2];
  if (v5 != v6)
  {
    v7 = v5 - v6;
    if (v7 <= 0.0)
    {
      v7 = -v7;
    }

    if (v7 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v8 = a1[3];
  v9 = a2[3];
  if (v8 != v9)
  {
    v10 = v8 - v9;
    if (v10 <= 0.0)
    {
      v10 = -v10;
    }

    if (v10 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v11 = a1[4];
  v12 = a2[4];
  if (v11 != v12)
  {
    v13 = v11 - v12;
    if (v13 <= 0.0)
    {
      v13 = -v13;
    }

    if (v13 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v14 = a1[5];
  v15 = a2[5];
  if (v14 != v15)
  {
    v16 = v14 - v15;
    if (v16 <= 0.0)
    {
      v16 = -v16;
    }

    if (v16 >= 2.22044605e-16)
    {
      return 0;
    }
  }

  v17 = a1[6];
  v18 = a2[6];
  if (v17 == v18)
  {
    return 1;
  }

  v20 = v17 - v18;
  if (v20 <= 0.0)
  {
    v20 = -v20;
  }

  return v20 < 2.22044605e-16;
}

void sub_FCB2AC(void *a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4 = 0xFCFCFCFCFCFCFCFDLL * ((a1[1] - *a1) >> 4) + 1;
  if (v4 <= 0x30303030303030)
  {
    if (0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4) > v4)
    {
      v4 = 0xF9F9F9F9F9F9F9FALL * ((a1[2] - *a1) >> 4);
    }

    if (0xFCFCFCFCFCFCFCFDLL * ((a1[2] - *a1) >> 4) >= 0x18181818181818)
    {
      v7 = 0x30303030303030;
    }

    else
    {
      v7 = v4;
    }

    if (v7)
    {
      if (v7 <= 0x30303030303030)
      {
        operator new();
      }

      sub_1808();
    }

    v8 = 16 * ((a1[1] - *a1) >> 4);
    if (*(a3 + 23) < 0)
    {
      sub_325C(__p, *a3, *(a3 + 8));
    }

    else
    {
      *__p = *a3;
      v10 = *(a3 + 16);
    }

    sub_FDDF9C(v8, a2, __p, *a4);
  }

  sub_1794();
}

void sub_FCB424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    sub_FCB45C(&a10);
    _Unwind_Resume(a1);
  }

  sub_FCB45C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_FCB45C(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1360;
    v4 = *(i - 24);
    if (v4)
    {
      *(i - 16) = v4;
      operator delete(v4);
    }

    v5 = *(i - 48);
    if (v5)
    {
      *(i - 40) = v5;
      operator delete(v5);
    }

    sub_3BECA4((i - 1328));
    if (*(i - 1329) < 0)
    {
      operator delete(*(i - 1352));
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_FCB4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0u;
      *(v7 + 8) = 0;
      v9 = *(v7 + 160);
      v10 = *(v7 + 176);
      v11 = *(v7 + 208);
      *(a4 + 192) = *(v7 + 192);
      v12 = *(v7 + 32);
      v13 = *(v7 + 48);
      v14 = *(v7 + 80);
      *(a4 + 64) = *(v7 + 64);
      *(a4 + 80) = v14;
      *(a4 + 32) = v12;
      *(a4 + 48) = v13;
      v15 = *(v7 + 96);
      v16 = *(v7 + 112);
      v17 = *(v7 + 144);
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 144) = v17;
      *(a4 + 96) = v15;
      *(a4 + 112) = v16;
      *(a4 + 208) = v11;
      *(a4 + 160) = v9;
      *(a4 + 176) = v10;
      *(a4 + 232) = 0;
      *(a4 + 216) = 0u;
      *(a4 + 216) = *(v7 + 216);
      *(a4 + 232) = *(v7 + 232);
      *(v7 + 232) = 0;
      *(v7 + 216) = 0u;
      *(a4 + 256) = 0;
      *(a4 + 240) = 0u;
      *(a4 + 240) = *(v7 + 240);
      *(a4 + 256) = *(v7 + 256);
      *(v7 + 256) = 0;
      *(v7 + 240) = 0u;
      *(a4 + 280) = 0;
      *(a4 + 264) = 0u;
      *(a4 + 264) = *(v7 + 264);
      *(a4 + 272) = *(v7 + 272);
      *(v7 + 280) = 0;
      *(v7 + 264) = 0u;
      v18 = *(v7 + 288);
      v19 = *(v7 + 304);
      v20 = *(v7 + 336);
      *(a4 + 320) = *(v7 + 320);
      *(a4 + 336) = v20;
      *(a4 + 288) = v18;
      *(a4 + 304) = v19;
      v21 = *(v7 + 352);
      v22 = *(v7 + 368);
      v23 = *(v7 + 400);
      *(a4 + 384) = *(v7 + 384);
      *(a4 + 400) = v23;
      *(a4 + 352) = v21;
      *(a4 + 368) = v22;
      v24 = *(v7 + 416);
      v25 = *(v7 + 432);
      v26 = *(v7 + 464);
      *(a4 + 448) = *(v7 + 448);
      *(a4 + 464) = v26;
      *(a4 + 416) = v24;
      *(a4 + 432) = v25;
      *(a4 + 496) = 0;
      *(a4 + 480) = 0u;
      *(a4 + 480) = *(v7 + 480);
      *(a4 + 496) = *(v7 + 496);
      *(v7 + 496) = 0;
      *(v7 + 480) = 0u;
      *(a4 + 520) = 0;
      *(a4 + 504) = 0u;
      *(a4 + 504) = *(v7 + 504);
      *(a4 + 512) = *(v7 + 512);
      *(v7 + 520) = 0;
      *(v7 + 504) = 0u;
      *(a4 + 544) = 0;
      *(a4 + 528) = 0u;
      *(a4 + 528) = *(v7 + 528);
      *(a4 + 544) = *(v7 + 544);
      *(v7 + 544) = 0;
      *(v7 + 528) = 0u;
      *(a4 + 568) = 0;
      *(a4 + 552) = 0u;
      *(a4 + 552) = *(v7 + 552);
      *(a4 + 560) = *(v7 + 560);
      *(v7 + 568) = 0;
      *(v7 + 552) = 0u;
      *(a4 + 576) = *(v7 + 576);
      *(a4 + 600) = 0u;
      *(a4 + 592) = 0;
      *(a4 + 592) = *(v7 + 592);
      *(a4 + 608) = *(v7 + 608);
      *(v7 + 608) = 0;
      *(v7 + 592) = 0u;
      v27 = *(v7 + 632);
      *(a4 + 616) = *(v7 + 616);
      *(a4 + 632) = v27;
      *(a4 + 648) = 0;
      *(a4 + 656) = 0u;
      *(a4 + 648) = *(v7 + 648);
      *(a4 + 656) = *(v7 + 656);
      *(v7 + 664) = 0;
      *(v7 + 648) = 0u;
      *(a4 + 672) = *(v7 + 672);
      *(a4 + 696) = 0u;
      *(a4 + 688) = 0;
      *(a4 + 688) = *(v7 + 688);
      *(a4 + 704) = *(v7 + 704);
      *(v7 + 704) = 0;
      *(v7 + 688) = 0u;
      *(a4 + 728) = 0;
      *(a4 + 712) = 0u;
      *(a4 + 712) = *(v7 + 712);
      *(a4 + 720) = *(v7 + 720);
      *(v7 + 728) = 0;
      *(v7 + 712) = 0u;
      *(a4 + 752) = 0;
      *(a4 + 736) = 0u;
      *(a4 + 736) = *(v7 + 736);
      *(a4 + 752) = *(v7 + 752);
      *(v7 + 752) = 0;
      *(v7 + 736) = 0u;
      memcpy((a4 + 760), (v7 + 760), 0x228uLL);
      *(a4 + 1312) = 0;
      *(a4 + 1320) = 0u;
      *(a4 + 1312) = *(v7 + 1312);
      *(a4 + 1328) = *(v7 + 1328);
      *(v7 + 1312) = 0u;
      *(v7 + 1328) = 0;
      *(a4 + 1352) = 0;
      *(a4 + 1336) = 0u;
      *(a4 + 1336) = *(v7 + 1336);
      *(a4 + 1344) = *(v7 + 1344);
      *(v7 + 1336) = 0u;
      *(v7 + 1352) = 0;
      v7 += 1360;
      a4 += 1360;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      v28 = *(v6 + 1336);
      if (v28)
      {
        *(v6 + 1344) = v28;
        operator delete(v28);
      }

      v29 = *(v6 + 1312);
      if (v29)
      {
        *(v6 + 1320) = v29;
        operator delete(v29);
      }

      sub_3BECA4((v6 + 32));
      if (*(v6 + 31) < 0)
      {
        operator delete(*(v6 + 8));
      }

      v6 += 1360;
    }
  }
}

void **sub_FCB84C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = v3 - 1352;
      do
      {
        v7 = *(v5 + 1328);
        if (v7)
        {
          *(v5 + 1336) = v7;
          operator delete(v7);
        }

        v8 = *(v5 + 1304);
        if (v8)
        {
          *(v5 + 1312) = v8;
          operator delete(v8);
        }

        sub_3BECA4((v5 + 24));
        if (*(v5 + 23) < 0)
        {
          operator delete(*v5);
        }

        v6 = (v5 - 8);
        v5 -= 1360;
      }

      while (v6 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}