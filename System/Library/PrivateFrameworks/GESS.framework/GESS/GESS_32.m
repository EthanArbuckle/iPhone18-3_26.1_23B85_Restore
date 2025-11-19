void sub_24BF1A8E0(uint64_t **a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v11 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 8);
  v10[0] = *a2;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v9, 0, sizeof(v9));
  sub_24BCC9984(v9, v10, &v11, 1uLL);
  sub_24BE7F218(v10);
  sub_24BF19814(a1, v9, a3, a4);
  v10[0] = v9;
  sub_24BCC961C(v10);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_24BF1A9A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_24BCC961C(va);
  _Unwind_Resume(a1);
}

void sub_24BF1A9D0(uint64_t **a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_24BF1A0BC(*a1, *a1 + 2);
  sub_24BF1A1D4(v8, v8 + 2, a2, v9);

  sub_24BF1A8E0(a1, a2, a3, a4);
}

void sub_24BF1AA60(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AAC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AADC(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AB3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AB58(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1ABB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1ABD4(uint64_t a1, uint64_t **a2, uint64_t **a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A138(a2, a3, &__p, *(**a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AC38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AC54(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1ACB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1ACD0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AD30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AD4C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1ADAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1ADC8(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AE44(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AEC0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AF20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AF3C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1AF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1AFB8(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B018(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B034(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B0B0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B12C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B18C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B1A8(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B224(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B2A0(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B31C(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  sub_24BFB7ED4(a1);
  sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_24BF1B37C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B398(uint64_t a1, uint64_t **a2, uint64_t *a3)
{
  v5 = *(a1 + 20);
  if (v5 <= 1)
  {
    if (v5 > 1)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v5 == 2 || v5 == 3 || v5 == 4)
  {
LABEL_7:
    sub_24BFB7ED4(a1);
    sub_24BF1A9D0(a2, a3, &__p, *(*a3 + 64) + 8);
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }
}

void sub_24BF1B4C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1B4F4(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a1[1];
  v21[0] = *a1;
  v21[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a2[1];
  v21[2] = *a2;
  v21[3] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v21[4] = *a3;
  v21[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = 0;
  v15 = 0;
  v16 = 0;
  sub_24BCC9984(&v14, v21, &v22, 3uLL);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v8 = v14;
  v9 = v15;
  if (v14 != v15)
  {
    v10 = 0;
    do
    {
      v11 = *v8;
      if (v10 >= v19)
      {
        v10 = sub_24BF1B6D8(&v17, (v11 + 24));
      }

      else
      {
        *v10 = 0;
        v10[1] = 0;
        v10[2] = 0;
        sub_24BD7E680(v10, *(v11 + 24), *(v11 + 32), (*(v11 + 32) - *(v11 + 24)) >> 3);
        v10 += 3;
      }

      v18 = v10;
      v8 += 2;
    }

    while (v8 != v9);
    v8 = v14;
  }

  sub_24BF0F860(a4, *v8, &v17, 0x7FFFFFFFLL);
  v20 = &v17;
  sub_24BC8EE84(&v20);
  v17 = &v14;
  sub_24BCC961C(&v17);
  for (i = 4; i != -2; i -= 2)
  {
    sub_24BE7F218(&v21[i]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_24BF1B678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, void ***a15, char a16)
{
  a15 = &a12;
  sub_24BC8EE84(&a15);
  a12 = &a9;
  sub_24BCC961C(&a12);
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(&a16 + i);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BF1B6D8(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_24BC8E01C();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_24BC91DBC(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  sub_24BD7E680(24 * v2, *a2, a2[1], (a2[1] - *a2) >> 3);
  v8 = v16 + 24;
  v9 = *(a1 + 8) - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  *(a1 + 8) = v8;
  v12 = *(a1 + 16);
  *(a1 + 16) = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  sub_24BC91E14(&v14);
  return v8;
}

void sub_24BF1B7F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BC91E14(va);
  _Unwind_Resume(a1);
}

void *sub_24BF1B808(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BD7E680((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_24BD7E680((a1 + 9), *a5, a5[1], (a5[1] - *a5) >> 3);
  return a1;
}

void sub_24BF1B8C0(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF1B90C(uint64_t a1)
{
  v4 = (a1 + 24);
  sub_24BC8EE84(&v4);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void *sub_24BF1B958(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BD7E680((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = 0;
  sub_24BD7E680((a1 + 9), *a5, a5[1], (a5[1] - *a5) >> 3);
  return a1;
}

void sub_24BF1BA10(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1BA5C(std::string *a1, const std::string::value_type *a2, uint64_t a3)
{
  std::string::append(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v8 = *(a3 + 16);
  }

  if (v8 >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if (v8 >= 0)
  {
    v6 = HIBYTE(v8);
  }

  else
  {
    v6 = __p[1];
  }

  std::string::append(a1, v5, v6);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BF1BAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1BB04(std::string *a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4)
{
  std::string::append(a1, a2);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a3, *(a3 + 8));
  }

  else
  {
    *__dst = *a3;
    v10 = *(a3 + 16);
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v8 = *(a4 + 16);
  }

  sub_24BF1BBF4(a1, __dst, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_24BF1BBC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF1BBF4(std::string *a1, const std::string::value_type *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  std::string::append(a1, a2, v6);
  if (*(a3 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v10 = *(a3 + 16);
  }

  if (v10 >= 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  if (v10 >= 0)
  {
    v8 = HIBYTE(v10);
  }

  else
  {
    v8 = __p[1];
  }

  std::string::append(a1, v7, v8);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_24BF1BC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF1BCB4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    *(a1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_24BF1BD18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5[25] = *MEMORY[0x277D85DE8];
  v4 = sub_24BE7E2A4(*(*a3 + 60) * *(*a3 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(a3, v4);
}

void sub_24BF1D970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, char a51)
{
  v53 = STACK[0x290];
  if (STACK[0x290])
  {
    STACK[0x298] = v53;
    operator delete(v53);
  }

  v54 = STACK[0x470];
  if (STACK[0x470])
  {
    STACK[0x478] = v54;
    operator delete(v54);
  }

  *(v51 - 240) = v51 - 232;
  sub_24BCC961C((v51 - 240));
  sub_24BE7F218(&STACK[0x2A8]);
  sub_24BE7F218(&STACK[0x418]);
  sub_24BCE1400(&STACK[0x2F8]);
  sub_24BE7F218(&STACK[0x278]);
  v55 = STACK[0x428];
  if (STACK[0x428])
  {
    STACK[0x430] = v55;
    operator delete(v55);
  }

  sub_24BE7F218(&STACK[0x250]);
  sub_24BE7F218(&a25);
  sub_24BE7F218(&a47);
  sub_24BE7F218(&a49);
  STACK[0x2F8] = &a51;
  sub_24BCC961C(&STACK[0x2F8]);
  _Unwind_Resume(a1);
}

void sub_24BF1DFE4(int *a1, uint64_t a2, int ***a3, int ***a4, uint64_t **a5, int **a6, int **a7, int **a8, int **a9, int a10, char a11)
{
  v173[31] = *MEMORY[0x277D85DE8];
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  v11 = *a3;
  v12 = **a3;
  v13 = (*a3)[1] - v12;
  if (!v13)
  {
    goto LABEL_122;
  }

  v14 = *v12;
  LODWORD(v127) = *v12;
  if (v13 <= 0xC)
  {
    goto LABEL_122;
  }

  v16 = v12[3];
  DWORD1(v127) = v16;
  v17 = *a4;
  v19 = **a4;
  v18 = (*a4)[1];
  v20 = v18 - v19;
  if (v18 == v19)
  {
    goto LABEL_122;
  }

  v21 = *v19;
  DWORD2(v127) = *v19;
  v22 = v12[1];
  HIDWORD(v127) = v22;
  v23 = v12[2];
  LODWORD(v128) = v23;
  if (v20 <= 4)
  {
    goto LABEL_122;
  }

  v120 = v19[1];
  DWORD1(v128) = v120;
  if (v20 == 8 || (v119 = v19[2], DWORD2(v128) = v119, v24 = *a5, v25 = **a5, v26 = (*a5)[1] - v25, v26 <= 4) || (v27 = *(v25 + 4), HIDWORD(v128) = v27, v26 == 8))
  {
LABEL_122:
    sub_24BC923C0();
  }

  v29 = *(v25 + 8);
  LODWORD(v129) = v29;
  v30 = *a7;
  v31 = **a7;
  DWORD1(v129) = v31;
  v32 = v30[1];
  DWORD2(v129) = v32;
  v33 = *a6;
  v34 = **a6;
  HIDWORD(v129) = v34;
  v35 = v33[1];
  LODWORD(v130) = v35;
  v36 = *a8;
  v37 = **a8;
  DWORD1(v130) = v37;
  v38 = v36[1];
  DWORD2(v130) = v38;
  v39 = *a9;
  v40 = **a9;
  HIDWORD(v130) = v40;
  v41 = v39[1];
  LODWORD(v131) = v41;
  v42 = v11[3];
  v43 = v11[4];
  v44 = v43 - v42;
  if (v43 == v42)
  {
    goto LABEL_121;
  }

  *(&v131 + 1) = *v42;
  if ((v44 >> 3) <= 1)
  {
    goto LABEL_121;
  }

  *&v132 = *(v42 + 1);
  if (v44 == 16)
  {
    goto LABEL_121;
  }

  *(&v132 + 1) = *(v42 + 2);
  if ((v44 >> 3) <= 3)
  {
    goto LABEL_121;
  }

  *&v133 = *(v42 + 3);
  v45 = v17[3];
  v46 = v17[4];
  v47 = v46 - v45;
  if (v46 == v45)
  {
    goto LABEL_121;
  }

  *(&v133 + 1) = *v45;
  if ((v47 >> 3) <= 1)
  {
    goto LABEL_121;
  }

  *&v134 = *(v45 + 1);
  if (v47 == 16)
  {
    goto LABEL_121;
  }

  *(&v134 + 1) = *(v45 + 2);
  if ((v47 >> 3) <= 3)
  {
    goto LABEL_121;
  }

  *&v135 = *(v45 + 3);
  v48 = v24[3];
  v49 = v24[4];
  v50 = v49 - v48;
  if (v49 == v48 || (*(&v135 + 1) = *v48, (v50 >> 3) <= 1) || (*&v136 = *(v48 + 1), v50 == 16) || (v121 = v16, *(&v136 + 1) = *(v48 + 2), (v50 >> 3) <= 3))
  {
LABEL_121:
    sub_24BC923C0();
  }

  v51 = a10;
  *&v137 = *(v48 + 3);
  DWORD2(v137) = a10;
  BYTE12(v137) = a11;
  v53 = v40 != 1 || v41 != 1;
  if (a10 >= 2)
  {
    v54 = v21 / a10;
    if (v53 || v121 / a10 >= 5 && ((v121 / a10) & 0xF) != 0 || v54 >= 17 && (v54 & 0xF) != 0)
    {
      v55 = a5[1];
      v125[4] = v24;
      v125[5] = v55;
      if (v55)
      {
        atomic_fetch_add_explicit(v55 + 1, 1uLL, memory_order_relaxed);
        v17 = *a4;
        v21 = DWORD2(v127);
        v51 = DWORD2(v137);
      }

      v56 = v51 * (v17[6] / v21);
      LODWORD(v171) = v24[6] / v21;
      HIDWORD(v171) = v56;
      v151 = 0;
      v149 = 0;
      v150 = 0;
      sub_24BCC9910(&v149, &v171, v172, 2uLL);
      v148 = 0;
      __p[0] = 0;
      __p[1] = 0;
      sub_24BCC9A1C(__p, v149, v150, (v150 - v149) >> 2);
      v57 = (*a3)[7];
      v141 = 0;
      v140 = 0;
      v146 = 0;
      v144 = 0;
      v145 = 0;
      sub_24BE7E8D4();
    }

    v117 = a5[1];
    v126[0] = v24;
    v126[1] = v117;
    if (v117)
    {
      atomic_fetch_add_explicit(v117 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BF21280(a1, a2, a3, a4, v126, &v127);
  }

  if ((a11 & 1) == 0 && v31 == 1 && v32 == 1 && v37 == 1 && v38 == 1)
  {
    v58 = v120 != 3 || v53;
    if (!v58 && v119 == 3 && (v16 & 0x1F) == 0 && (v21 & 0x1F) == 0 && (v22 * v14 * v23) >= 0x1000 && v21 + v16 >= 256)
    {
      v59 = a5[1];
      v125[2] = v24;
      v125[3] = v59;
      if (v59)
      {
        atomic_fetch_add_explicit(v59 + 1, 1uLL, memory_order_relaxed);
        v22 = HIDWORD(v127);
        v23 = v128;
        v34 = HIDWORD(v129);
        v35 = v130;
      }

      LODWORD(v171) = v14;
      HIDWORD(v171) = v22 + 2 * v34;
      v172[0] = v23 + 2 * v35;
      v172[1] = v16;
      v146 = 0;
      v144 = 0;
      v145 = 0;
      sub_24BCC9910(&v144, &v171, v173, 4uLL);
      v60 = v144;
      v61 = 715827883 * (*(v144 + 1) + 3);
      v62 = 715827883 * (*(v144 + 2) + 3);
      *(v144 + 1) = 6 * (HIDWORD(v61) + (v61 >> 63)) + 2;
      v60[2] = 6 * (HIDWORD(v62) + (v62 >> 63)) + 2;
      v170 = 0;
      v169[1] = 0;
      v169[0] = 0;
      sub_24BCC9A1C(v169, v60, v145, (v145 - v60) >> 2);
      v63 = (*a3)[7];
      v143 = 0;
      v142 = 0;
      v168 = 0;
      v166 = 0;
      v167 = 0;
      sub_24BE7E8D4();
    }
  }

  if (v53)
  {
    v64 = v16 & 0xF;
  }

  else
  {
    v64 = v16 & 0xF;
    if (v16 >= 5 && (v16 & 0xF) != 0)
    {
      goto LABEL_110;
    }

    if (v21 < 17 || (v21 & 0xF) == 0)
    {
      v116 = a5[1];
      v125[0] = v24;
      v125[1] = v116;
      if (v116)
      {
        atomic_fetch_add_explicit(v116 + 1, 1uLL, memory_order_relaxed);
      }

      sub_24BF21280(a1, a2, a3, a4, v125, &v127);
    }
  }

  if (!(v64 | v21 & 0xF))
  {
    v65 = a5[1];
    v124[0] = v24;
    v124[1] = v65;
    v118 = a1;
    if (v65)
    {
      atomic_fetch_add_explicit(v65 + 1, 1uLL, memory_order_relaxed);
      v21 = DWORD2(v127);
      v120 = DWORD1(v128);
      v27 = HIDWORD(v128);
      v119 = DWORD2(v128);
      v40 = HIDWORD(v130);
      v29 = v129;
      v37 = DWORD1(v130);
    }

    v66 = sub_24BF2182C(v40, v37);
    v67 = sub_24BF2182C(v131, SDWORD2(v130));
    v68 = sub_24BF2182C(SHIDWORD(v130), SDWORD1(v129));
    v69 = sub_24BF2182C(v131, SDWORD2(v129));
    v70 = v66 / SDWORD1(v130);
    v71 = v67 / SDWORD2(v130);
    v72 = (v68 / SDWORD1(v129));
    v73 = (v69 / SDWORD2(v129));
    LODWORD(v161) = v70;
    HIDWORD(v161) = v67 / SDWORD2(v130);
    LODWORD(v162) = v72;
    HIDWORD(v162) = v69 / SDWORD2(v129);
    LODWORD(v163) = (v72 + HIDWORD(v128) - 1) / v72;
    HIDWORD(v163) = (v73 + v129 - 1) / v73;
    v74 = v127 * HIDWORD(v163) * v163;
    v164 = HIDWORD(v163) * v163;
    v165 = v74;
    sub_24BF21894(&v149, v72);
    sub_24BF21894(__p, v73);
    v75 = BYTE12(v137);
    if (BYTE12(v137))
    {
      v76 = -DWORD1(v130);
    }

    else
    {
      v76 = DWORD1(v130);
    }

    if (BYTE12(v137))
    {
      v77 = -DWORD2(v130);
    }

    else
    {
      v77 = DWORD2(v130);
    }

    if (BYTE12(v137))
    {
      v78 = (DWORD1(v128) - 1) * DWORD1(v130);
    }

    else
    {
      v78 = 0;
    }

    v79 = (DWORD2(v128) - 1) * DWORD2(v130);
    if (!BYTE12(v137))
    {
      v79 = 0;
    }

    if (v72 >= 1)
    {
      v80 = 0;
      v81 = v149;
      do
      {
        v82 = DWORD1(v128);
        if (SDWORD1(v128) < 1)
        {
          v83 = 0;
        }

        else
        {
          v83 = 0;
          v84 = v78 - HIDWORD(v129) + DWORD1(v129) * v80;
          do
          {
            if (!(v84 % SHIDWORD(v130)))
            {
              goto LABEL_76;
            }

            ++v83;
            v84 += v76;
          }

          while (DWORD1(v128) != v83);
          v83 = DWORD1(v128);
        }

LABEL_76:
        v85 = &v81[8 * v80];
        *v85 = v83;
        *(v85 + 1) = (v82 + v70 + ~v83) / v70;
        ++v80;
      }

      while (v80 != v72);
    }

    if (v73 >= 1)
    {
      v86 = 0;
      v87 = __p[0];
      do
      {
        v88 = DWORD2(v128);
        if (SDWORD2(v128) < 1)
        {
          v89 = 0;
        }

        else
        {
          v89 = 0;
          v90 = v79 - v130 + DWORD2(v129) * v86;
          do
          {
            if (!(v90 % v131))
            {
              goto LABEL_85;
            }

            ++v89;
            v90 += v77;
          }

          while (DWORD2(v128) != v89);
          v89 = DWORD2(v128);
        }

LABEL_85:
        v91 = &v87[8 * v86];
        *v91 = v89;
        *(v91 + 1) = (v88 + v71 + ~v89) / v71;
        ++v86;
      }

      while (v86 != v73);
    }

    if (v74 >= 0x2000 && SDWORD1(v127) > 63)
    {
      v92 = 64;
    }

    else
    {
      v92 = 32;
    }

    if (v74 >= 0x2000 && SDWORD1(v127) > 63 && v21 > 63)
    {
      v93 = 64;
    }

    else
    {
      v93 = 32;
    }

    v94 = DWORD1(v127) + 30;
    if (SDWORD1(v127) >= -15)
    {
      v94 = DWORD1(v127) + 15;
    }

    v95 = v94 >> 4;
    v96 = DWORD2(v130) * DWORD2(v132);
    v97 = v75 == 0;
    if (v75)
    {
      v98 = -1;
    }

    else
    {
      v98 = 1;
    }

    v99 = v96 * v98;
    if (v97)
    {
      v96 = -v96;
    }

    v152 = v27 * v14 * v29;
    v153 = v21;
    v154 = v120 * v121 * v119;
    v155 = v95;
    v156 = v99;
    v157 = (DWORD1(v130) * v132 - (DWORD2(v128) - 1) * DWORD2(v130) * DWORD2(v132)) * v98;
    v158 = DWORD1(v130) * v132 * v98 - DWORD1(v130) * v132 * v98 * DWORD1(v128) + (DWORD2(v128) - 1) * v96 + 16;
    v159 = (v21 + v93 - 1) / v93;
    *&v160 = ((v74 + v92 - 1) / v92);
    sub_24BCE1268(&v171);
    v100 = sub_24BC95264(&v171, "implicit_gemm_conv_2d_general_", 30);
    sub_24BFB7BD8(v124, &v144);
    if (v146 >= 0)
    {
      v101 = &v144;
    }

    else
    {
      v101 = v144;
    }

    if (v146 >= 0)
    {
      v102 = HIBYTE(v146);
    }

    else
    {
      v102 = v145;
    }

    v103 = sub_24BC95264(v100, v101, v102);
    v104 = sub_24BC95264(v103, "_bm", 3);
    v105 = MEMORY[0x24C2543C0](v104, v92);
    v106 = sub_24BC95264(v105, "_bn", 3);
    v107 = MEMORY[0x24C2543C0](v106, v93);
    v108 = sub_24BC95264(v107, "_bk", 3);
    v109 = MEMORY[0x24C2543C0](v108, 16);
    v110 = sub_24BC95264(v109, "_wm", 3);
    v111 = MEMORY[0x24C2543C0](v110, 2);
    v112 = sub_24BC95264(v111, "_wn", 3);
    MEMORY[0x24C2543C0](v112, 2);
    if (SHIBYTE(v146) < 0)
    {
      operator delete(v144);
    }

    sub_24BF5488C(a2, *v118);
    std::stringbuf::str();
    sub_24BF88804(a2, &v144, v124, v92, v93, 16, 2, 2);
  }

LABEL_110:
  v113 = a5[1];
  if (v113)
  {
    atomic_fetch_add_explicit(v113 + 1, 1uLL, memory_order_relaxed);
    v21 = DWORD2(v127);
    v17 = *a4;
  }

  v114 = v17[6] / v21;
  LODWORD(v171) = v24[6] / v21;
  HIDWORD(v171) = v114;
  v163 = 0;
  v161 = 0;
  v162 = 0;
  sub_24BCC9910(&v161, &v171, v172, 2uLL);
  v151 = 0;
  v149 = 0;
  v150 = 0;
  sub_24BCC9A1C(&v149, v161, v162, (v162 - v161) >> 2);
  v115 = (*a3)[7];
  v139 = 0;
  v138 = 0;
  v148 = 0;
  __p[0] = 0;
  __p[1] = 0;
  sub_24BE7E8D4();
}

void sub_24BF21280(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 168);
  v8 = *(a6 + 4) / v7;
  v9 = *(a6 + 8) / v7;
  v10 = *(a6 + 28) * *a6 * *(a6 + 32);
  v11 = *(a6 + 20);
  v12 = *(a6 + 24);
  v13 = v12 * v11;
  v14 = v12 * v11 * v8;
  v15 = v8 <= 63 || v10 <= 0x1FFF;
  if (v15)
  {
    v16 = 32;
  }

  else
  {
    v16 = 64;
  }

  if (v9 <= 63)
  {
    v17 = v16;
  }

  else
  {
    v17 = 64;
  }

  if (v9 >= 17)
  {
    v18 = v17;
  }

  else
  {
    v18 = 8;
  }

  if (v9 < 17)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v58 = v19;
  if (v9 >= 17)
  {
    v20 = 2;
  }

  else
  {
    v20 = 4;
  }

  if (v8 > 2)
  {
    if (v8 <= 4)
    {
      v23 = 0;
      v24 = 0;
      v25 = 4 * v13;
      v26 = v25 + 15;
      v15 = v25 < -15;
      v27 = v25 + 30;
      if (!v15)
      {
        v27 = v26;
      }

      v22 = v27 >> 4;
LABEL_31:
      v30 = *(a6 + 56) * *(a6 + 88);
      v31 = *(a6 + 52) * *(a6 + 80);
      v32 = v30 * (v12 - 1);
      if (*(a6 + 172))
      {
        v33 = -1;
      }

      else
      {
        v33 = 1;
      }

      v34 = v30 * v33;
      v35 = (v31 - v32) * v33;
      if (!*(a6 + 172))
      {
        v32 = -v32;
      }

      v63 = *(a6 + 28) * *a6 * *(a6 + 32);
      v64 = v9;
      v65 = v14;
      v66 = v22;
      v67 = v34;
      v68 = v35;
      v69 = v32 + (v33 - v33 * v11) * v31 + 16;
      v70 = (v9 + v18 - 1) / v18;
      v71 = ((v10 + v16 - 1) / v16);
      sub_24BCE1268(&v62);
      v36 = sub_24BC95264(&v62, "implicit_gemm_conv_2d_", 22);
      sub_24BFB7BD8(a5, __p);
      if ((v61 & 0x80u) == 0)
      {
        v37 = __p;
      }

      else
      {
        v37 = __p[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v38 = v61;
      }

      else
      {
        v38 = __p[1];
      }

      v39 = sub_24BC95264(v36, v37, v38);
      v40 = sub_24BC95264(v39, "_bm", 3);
      v41 = MEMORY[0x24C2543C0](v40, v16);
      v42 = sub_24BC95264(v41, "_bn", 3);
      v43 = MEMORY[0x24C2543C0](v42, v18);
      v44 = sub_24BC95264(v43, "_bk", 3);
      v45 = MEMORY[0x24C2543C0](v44, 16);
      v46 = sub_24BC95264(v45, "_wm", 3);
      v47 = MEMORY[0x24C2543C0](v46, v20);
      v48 = sub_24BC95264(v47, "_wn", 3);
      v49 = MEMORY[0x24C2543C0](v48, v58);
      v50 = sub_24BC95264(v49, "_channel_", 9);
      if (v23)
      {
        sub_24BC836D4(&v59, "l");
      }

      else
      {
        std::to_string(&v59, v8);
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &v59;
      }

      else
      {
        v51 = v59.__r_.__value_.__r.__words[0];
      }

      if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v59.__r_.__value_.__l.__size_;
      }

      v53 = sub_24BC95264(v50, v51, size);
      v54 = sub_24BC95264(v53, "_filter_", 8);
      if (v24)
      {
        v55 = 115;
      }

      else
      {
        v55 = 108;
      }

      v72[0] = v55;
      sub_24BC95264(v54, v72, 1);
      if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v59.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(__p[0]);
      }

      sub_24BF5488C(a2, *a1);
      std::stringbuf::str();
      sub_24BF88654(a2, __p, a5, v16, v18, 16, v20, v58, v8, v24);
    }

    v28 = v8 + 15;
    v8 = 0;
    v22 = v13 * (v28 >> 4);
  }

  else
  {
    v21 = v14 + 15;
    if (v14 < -15)
    {
      v21 = v14 + 30;
    }

    v22 = v21 >> 4;
  }

  v23 = v8 == 0;
  v29 = v8 == 0 && v11 < 17;
  if (v29)
  {
    v8 = 0;
  }

  v24 = v29 && v12 < 17;
  goto LABEL_31;
}

void sub_24BF217CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  sub_24BCE1400(&a31);
  _Unwind_Resume(a1);
}

uint64_t sub_24BF2182C(int a1, int a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    if (a1 == 0x80000000)
    {
      v3 = 0;
    }

    else
    {
      v3 = -a1;
    }

    if (a1 >= 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = v3;
    }

    if (a2 == 0x80000000)
    {
      v5 = 0;
    }

    else
    {
      v5 = -a2;
    }

    if (a2 >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = v5;
    }

    return v4 / sub_24BDC2814(v4, v6) * v6;
  }

  return v2;
}

void *sub_24BF21894(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC91F24(result, a2);
  }

  return result;
}

void sub_24BF218F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF21920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = v10;

  sub_24BCC961C(&a10);
}

void sub_24BF21938(uint64_t a1)
{
  v2 = sub_24BF2190C(a1);
  if (v2)
  {
    *(v10 + 8) = v2;
    operator delete(v2);
  }

  v11 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v11;
    operator delete(v11);
  }

  sub_24BF21920(v11, v3, v4, v5, v6, v7, v8, v9, v12, v13);
}

void sub_24BF21980(uint64_t *a1, uint64_t *a2, int a3, uint64_t a4)
{
  v19[4] = *MEMORY[0x277D85DE8];
  if (a3 != 1)
  {
    v10 = sub_24BE7E2A4(*(*a2 + 60) * *(*a2 + 48));
    v18[0] = &off_285F93798;
    v18[1] = sub_24BE7E1F0;
    v18[3] = v18;
    sub_24BE7EE1C(a2, v10);
  }

  v7 = a1[1];
  if (!v7)
  {
    v8 = *a1;
    goto LABEL_11;
  }

  v8 = *a1;
  if (*(v7 + 8) || (v9 = v8[18]) == 0 || *(v9 + 8) || ((*(*a2 + 56) ^ v8[7]) & 0xFF00000000) != 0)
  {
LABEL_11:
    v11 = sub_24BE7E2A4(*(*a2 + 60) * v8[20]);
    v12 = *a1;
    v13 = *(*a1 + 160);
    memset(__p, 0, sizeof(__p));
    sub_24BD7E680(__p, *(v12 + 24), *(v12 + 32), (*(v12 + 32) - *(v12 + 24)) >> 3);
    v14 = *(*a1 + 168);
    v19[0] = &off_285F93798;
    v19[1] = sub_24BE7E1F0;
    v19[3] = v19;
    sub_24BE7F25C(a2, v11);
  }

  v17[0] = *a1;
  v17[1] = v7;
  atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  sub_24BE7F46C(a2, v17);
  sub_24BE7F218(v17);
  if (*(*a1 + 56) != *(*a2 + 56))
  {
    sub_24BF21C54(a1, a2, *a1, *a1 + 24, *a2 + 24, 0, 0, 1, a4);
  }

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BF21C54(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  if (*(*a2 + 48))
  {
    v11 = result;
    v35 = a8;
    v36 = a3;
    v37 = a4;
    v38 = a5;
    sub_24BF22E70(&v35, &v33);
    v32 = (v34 - v33) >> 2;
    v12 = 0xFFFFFFFFLL;
    if ((a8 & 0xFFFFFFFE) == 2)
    {
      v12 = 0x7FFFFFFFLL;
    }

    v23 = v12;
    v24 = *(*a2 + 160);
    v13 = *(a9 + 4);
    v14 = sub_24BF55DE0();
    memset(&v31, 0, sizeof(v31));
    if (a8 <= 1)
    {
      if (!a8)
      {
        v15 = "s";
        v16 = "s2";
        goto LABEL_14;
      }

      if (a8 == 1)
      {
        v15 = "v";
        v16 = "v2";
LABEL_14:
        if (v24 <= v23)
        {
          v18 = v15;
        }

        else
        {
          v18 = v16;
        }

        MEMORY[0x24C2541D0](&v31, v18);
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (a8 == 2)
    {
      v17 = "g";
    }

    else
    {
      if (a8 != 3)
      {
LABEL_11:
        if ((a8 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_21;
      }

      v17 = "gg";
    }

    MEMORY[0x24C2541D0](&v31, v17);
LABEL_21:
    v19 = (v34 - v33) >> 2;
    if (v19 > 3)
    {
      if (v24 <= v23)
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      std::to_string(&v29, v22);
      sub_24BF1BA5C(&v31, "n", &v29);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::to_string(&v30, v19);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v30;
      }

      else
      {
        v20 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      std::string::append(&v31, v20, size);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    if (v24 > v23)
    {
      std::string::append(&v31, "large");
    }

LABEL_38:
    sub_24BFB7BD8(v11, v27);
    sub_24BFB7BD8(a2, __p);
    sub_24BF1BB04(&v31, "_copy", v27, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    sub_24BF86F78(v14, &v31);
  }

  return result;
}

void sub_24BF22228(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_free_exception(v50);
  if (__p)
  {
    operator delete(__p);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (*(v51 - 201) < 0)
  {
    operator delete(*(v51 - 224));
  }

  sub_24BEB0EA8(v51 - 192);
  _Unwind_Resume(a1);
}

void sub_24BF22310(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v12 = *a2;
  v13 = *(*a2 + 24);
  v14 = *(v12 + 32);
  v16 = 0;
  v17 = 0;
  __p = 0;
  sub_24BF233CC(&__p, v13, v14, (v14 - v13) >> 3);
  sub_24BF223D0(a1, a2, *a1, a3, &__p, a4, 0, a5, a6);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }
}

void sub_24BF223B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF223D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  if (*(*a2 + 48))
  {
    v11 = result;
    v35 = a8;
    v36 = a3;
    v37 = a4;
    v38 = a5;
    sub_24BF23440(&v35, &v33);
    v32 = (v34 - v33) >> 2;
    v12 = 0xFFFFFFFFLL;
    if ((a8 & 0xFFFFFFFE) == 2)
    {
      v12 = 0x7FFFFFFFLL;
    }

    v23 = v12;
    v24 = *(*a2 + 160);
    v13 = *(a9 + 4);
    v14 = sub_24BF55DE0();
    memset(&v31, 0, sizeof(v31));
    if (a8 <= 1)
    {
      if (!a8)
      {
        v15 = "s";
        v16 = "s2";
        goto LABEL_14;
      }

      if (a8 == 1)
      {
        v15 = "v";
        v16 = "v2";
LABEL_14:
        if (v24 <= v23)
        {
          v18 = v15;
        }

        else
        {
          v18 = v16;
        }

        MEMORY[0x24C2541D0](&v31, v18);
        goto LABEL_38;
      }

      goto LABEL_11;
    }

    if (a8 == 2)
    {
      v17 = "g";
    }

    else
    {
      if (a8 != 3)
      {
LABEL_11:
        if ((a8 & 0xFFFFFFFE) != 2)
        {
          goto LABEL_38;
        }

        goto LABEL_21;
      }

      v17 = "gg";
    }

    MEMORY[0x24C2541D0](&v31, v17);
LABEL_21:
    v19 = (v34 - v33) >> 2;
    if (v19 > 3)
    {
      if (v24 <= v23)
      {
        v22 = 2;
      }

      else
      {
        v22 = 4;
      }

      std::to_string(&v29, v22);
      sub_24BF1BA5C(&v31, "n", &v29);
      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      std::to_string(&v30, v19);
      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v30;
      }

      else
      {
        v20 = v30.__r_.__value_.__r.__words[0];
      }

      if ((v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v30.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v30.__r_.__value_.__l.__size_;
      }

      std::string::append(&v31, v20, size);
      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }

    if (v24 > v23)
    {
      std::string::append(&v31, "large");
    }

LABEL_38:
    sub_24BFB7BD8(v11, v27);
    sub_24BFB7BD8(a2, __p);
    sub_24BF1BB04(&v31, "_copy", v27, __p);
    if (v26 < 0)
    {
      operator delete(__p[0]);
    }

    if (v28 < 0)
    {
      operator delete(v27[0]);
    }

    sub_24BF86F78(v14, &v31);
  }

  return result;
}

void sub_24BF229A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  __cxa_free_exception(v50);
  if (__p)
  {
    operator delete(__p);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (*(v51 - 201) < 0)
  {
    operator delete(*(v51 - 224));
  }

  sub_24BEB0EA8(v51 - 192);
  _Unwind_Resume(a1);
}

void sub_24BF22A8C(uint64_t a1, uint64_t a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v2 = *(*a2 + 48);
  if (v2)
  {
    v4 = sub_24BE7E2A4(*(*a2 + 60) * v2);
    v6[0] = &off_285F93798;
    v6[1] = sub_24BE7E1F0;
    v6[3] = v6;
    sub_24BE7EE1C(a2, v4);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_24BF22DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 105) < 0)
  {
    operator delete(*(v40 - 128));
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF22E70(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v17 = 0;
    v18 = 0;
    __p = 0;
    sub_24BD7E680(&__p, *v4, v4[1], (v4[1] - *v4) >> 3);
    v6 = *(a1 + 24);
    v20[0] = 0;
    v20[1] = 0;
    v19 = 0;
    sub_24BD7E680(&v19, *v6, v6[1], (v6[1] - *v6) >> 3);
    memset(v10, 0, sizeof(v10));
    sub_24BF2309C(v10, &__p, &v21, 2uLL);
    sub_24BF0F860(&v11, v5, v10, 0x7FFFFFFFLL);
    v15 = v10;
    sub_24BC8EE84(&v15);
    for (i = 0; i != -6; i -= 3)
    {
      v8 = v20[i - 1];
      if (v8)
      {
        v20[i] = v8;
        operator delete(v8);
      }
    }

    sub_24BF231D8(a2, &v11, v14, v14 + 3);
    __p = &v14;
    sub_24BC8EE84(&__p);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_24BF23298(a2, &__p, &v11, &v11);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BF2309C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BF23104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BF23124(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BD7E680(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BF104A0(v8);
  return v4;
}

void *sub_24BF231D8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BD7E680((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_24BF23264(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF23298(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BD7E680((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BD7E680((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_24BF23324(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF23358(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BF233B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF233CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BF23424(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF23440(uint64_t a1@<X0>, void *a2@<X8>)
{
  v21 = *MEMORY[0x277D85DE8];
  if ((*a1 & 0xFFFFFFFE) == 2)
  {
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    v17 = 0;
    v18 = 0;
    __p = 0;
    sub_24BF0B3A4(&__p, *v4, v4[1], (v4[1] - *v4) >> 3);
    v6 = *(a1 + 24);
    v20[0] = 0;
    v20[1] = 0;
    v19 = 0;
    sub_24BF0B3A4(&v19, *v6, v6[1], (v6[1] - *v6) >> 3);
    memset(v10, 0, sizeof(v10));
    sub_24BF2366C(v10, &__p, &v21, 2uLL);
    sub_24BF0F438(&v11, v5, v10, 0x7FFFFFFFLL);
    v15 = v10;
    sub_24BC8EE84(&v15);
    for (i = 0; i != -6; i -= 3)
    {
      v8 = v20[i - 1];
      if (v8)
      {
        v20[i] = v8;
        operator delete(v8);
      }
    }

    sub_24BF237A8(a2, &v11, v14, v14 + 3);
    __p = &v14;
    sub_24BC8EE84(&__p);
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    sub_24BF23868(a2, &__p, &v11, &v11);
    if (__p)
    {
      v17 = __p;
      operator delete(__p);
    }
  }

  if (v11)
  {
    v12 = v11;
    operator delete(v11);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t sub_24BF2366C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCA04D4(result, a4);
  }

  return result;
}

void sub_24BF236D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_24BC8EE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_24BF236F4(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v11 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  v9 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      *v4 = 0;
      v4[1] = 0;
      v4[2] = 0;
      sub_24BF0B3A4(v4, *v6, v6[1], (v6[1] - *v6) >> 3);
      v6 += 3;
      v4 = v11 + 3;
      v11 += 3;
    }

    while (v6 != a3);
  }

  v9 = 1;
  sub_24BF10200(v8);
  return v4;
}

void *sub_24BF237A8(void *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_24BCC9A1C(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BF0B3A4((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BF0B3A4((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_24BF23834(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BF23868(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  sub_24BF0B3A4((a1 + 3), *a3, a3[1], (a3[1] - *a3) >> 3);
  a1[6] = 0;
  a1[7] = 0;
  a1[8] = 0;
  sub_24BF0B3A4((a1 + 6), *a4, a4[1], (a4[1] - *a4) >> 3);
  return a1;
}

void sub_24BF238F4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v4;
    operator delete(v4);
  }

  v5 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BF23928(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC91F24(result, a4);
  }

  return result;
}

void sub_24BF23988(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BF239A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v61 = *MEMORY[0x277D85DE8];
  v51 = 0uLL;
  v52 = 0;
  v4 = *a3;
  if (*a3 != a3[1])
  {
    v5 = sub_24BE7E2A4(*(*v4 + 60) * *(*v4 + 48));
    v57[0] = &off_285F93798;
    v57[1] = sub_24BE7E1F0;
    v57[3] = v57;
    sub_24BE7EE1C(v4, v5);
  }

  v48 = 0;
  v49 = 0;
  v50 = 0;
  v7 = *a2;
  v6 = *(a2 + 8);
  if (*a2 != v6)
  {
    do
    {
      v8 = *v7;
      if (*(a1 + 120) == 1 && (*(v8 + 168) & 2) == 0)
      {
        v59 = 0;
        v58 = 0uLL;
        sub_24BCC9A1C(&v58, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 2);
        v9 = *(*v7 + 56);
        v55 = 0;
        v56 = 0;
        v53[1] = 0;
        v54 = 0;
        v53[0] = 0;
        sub_24BE7E8D4();
      }

      v10 = v7[1];
      *&v47 = *v7;
      *(&v47 + 1) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      sub_24BCC3A64(&v48, &v47);
      sub_24BE7F218(&v47);
      v7 += 2;
    }

    while (v7 != v6);
  }

  v11 = *(a1 + 12);
  v12 = sub_24BF55DE0();
  *&v58 = &unk_285F9EC90;
  *(&v58 + 1) = a1;
  v60 = &v58;
  v13 = sub_24BF5563C(v12, a1 + 48, &v58);
  sub_24BD12278(&v58);
  HIBYTE(v59) = 0;
  LOBYTE(v58) = 0;
  v53[0] = 0;
  v53[1] = 0;
  v54 = 0;
  __p = 0;
  v45 = 0;
  v46 = 0;
  v14 = sub_24BF55AF4(v12, (a1 + 48), v13, &v58, v53, &__p);
  if (__p)
  {
    v45 = __p;
    operator delete(__p);
  }

  if (v53[0])
  {
    v53[1] = v53[0];
    operator delete(v53[0]);
  }

  if (SHIBYTE(v59) < 0)
  {
    operator delete(v58);
  }

  v15 = sub_24BF5488C(v12, *(a1 + 8));
  [*v15 MTL:v14 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v15)];
  v38 = v12;
  v41 = a1;
  v16 = v48;
  if (v49 == v48)
  {
    v23 = 0;
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v40 = v15;
    do
    {
      v21 = *(v41 + 96);
      v22 = sub_24BF53508(v15, (v16 + v17), v20, 0);
      v23 = v20 + 1;
      v24 = *(v16 + v17);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 - *v24;
      if (v25 != *v24)
      {
        LODWORD(v58) = v27 >> 2;
        if (*(v21 + v18) == 1)
        {
          v22 = [*v15 MTL:v26 :((v27 << 30) >> 30) & 0xFFFFFFFFFFFFFFFCLL Private:v23 :v38 Selector:? :?s_ksetBytes_length_atIndex_(v22)];
          v23 = v20 + 2;
          v15 = v40;
        }

        v28 = v21 + v18;
        if (*(v28 + 1) == 1)
        {
          v29 = *(v16 + v17);
          v22 = [*v15 MTL:*(v29 + 24) :8 * v58 Private:v23++ :? Selector:? :?s_ksetBytes_length_atIndex_(v22)];
          v15 = v40;
        }

        if (*(v28 + 2) == 1)
        {
          [*v15 MTL:&v58 :4 Private:v23++ :? Selector:? :?s_ksetBytes_length_atIndex_(v22)];
          v15 = v40;
        }
      }

      ++v19;
      v16 = v48;
      v18 += 3;
      v17 += 16;
      v20 = v23;
    }

    while (v19 < (v49 - v48) >> 4);
  }

  v31 = *a3;
  v30 = a3[1];
  if (*a3 != v30)
  {
    do
    {
      sub_24BF535E8(v15, v31, v23++, 0);
      v31 += 2;
    }

    while (v31 != v30);
  }

  v32 = *(v41 + 92);
  v33 = *(v41 + 80);
  if (v33 < v32)
  {
    v32 = *(v41 + 80);
  }

  v34 = *(v41 + 72);
  v35 = vmin_s32(v34, *(v41 + 84));
  *&v36 = v35.i32[0];
  *(&v36 + 1) = v35.i32[1];
  *&v58 = v34.i32[0];
  *(&v58 + 1) = v34.i32[1];
  v59 = v33;
  *v53 = v36;
  v54 = v32;
  sub_24BF53770(v15, &v58, v53);
  v42 = v51;
  v43 = v52;
  v51 = 0uLL;
  v52 = 0;
  sub_24BF54278(v38, &v42, *(v41 + 8));
  *&v58 = &v42;
  sub_24BCC961C(&v58);
  *&v58 = &v48;
  sub_24BCC961C(&v58);
  *&v58 = &v51;
  sub_24BCC961C(&v58);
  v37 = *MEMORY[0x277D85DE8];
}

void sub_24BF23FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, char **a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  *(v35 - 136) = v34;
  sub_24BCC961C((v35 - 136));
  a20 = &a22;
  sub_24BCC961C(&a20);
  a22 = &a25;
  sub_24BCC961C(&a22);
  _Unwind_Resume(a1);
}

void sub_24BF240D4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Custom Metal kernels only run on GPU.");
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

uint64_t sub_24BF24144(uint64_t a1)
{
  *a1 = &unk_285F9EC18;
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_24BF241B4(uint64_t a1)
{
  *a1 = &unk_285F9EC18;
  v2 = *(a1 + 96);
  if (v2)
  {
    *(a1 + 104) = v2;
    operator delete(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BF242B4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F9EC90;
  a2[1] = v2;
  return result;
}

uint64_t sub_24BF242E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_24BFB7B5C();

  return std::operator+<char>();
}

uint64_t sub_24BF24320(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F9ECF0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t MTL::Private::Selector::s_kbeginScope(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F0794B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0794B0))
  {
    qword_27F0794A8 = sel_registerName("beginScope");
    __cxa_guard_release(&qword_27F0794B0);
  }

  return qword_27F0794A8;
}

uint64_t MTL::Private::Selector::s_kendScope(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F0794C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0794C0))
  {
    qword_27F0794B8 = sel_registerName("endScope");
    __cxa_guard_release(&qword_27F0794C0);
  }

  return qword_27F0794B8;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureBoundingBoxGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0794D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0794D0))
  {
    qword_27F0794C8 = objc_lookUpClass("MTLAccelerationStructureBoundingBoxGeometryDescriptor");
    __cxa_guard_release(&qword_27F0794D0);
  }

  return qword_27F0794C8;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureCurveGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0794E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0794E0))
  {
    qword_27F0794D8 = objc_lookUpClass("MTLAccelerationStructureCurveGeometryDescriptor");
    __cxa_guard_release(&qword_27F0794E0);
  }

  return qword_27F0794D8;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0794F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0794F0))
  {
    qword_27F0794E8 = objc_lookUpClass("MTLAccelerationStructureDescriptor");
    __cxa_guard_release(&qword_27F0794F0);
  }

  return qword_27F0794E8;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079500))
  {
    qword_27F0794F8 = objc_lookUpClass("MTLAccelerationStructureGeometryDescriptor");
    __cxa_guard_release(&qword_27F079500);
  }

  return qword_27F0794F8;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureMotionBoundingBoxGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079510))
  {
    qword_27F079508 = objc_lookUpClass("MTLAccelerationStructureMotionBoundingBoxGeometryDescriptor");
    __cxa_guard_release(&qword_27F079510);
  }

  return qword_27F079508;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureMotionCurveGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079520))
  {
    qword_27F079518 = objc_lookUpClass("MTLAccelerationStructureMotionCurveGeometryDescriptor");
    __cxa_guard_release(&qword_27F079520);
  }

  return qword_27F079518;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureMotionTriangleGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079530))
  {
    qword_27F079528 = objc_lookUpClass("MTLAccelerationStructureMotionTriangleGeometryDescriptor");
    __cxa_guard_release(&qword_27F079530);
  }

  return qword_27F079528;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructurePassDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079540))
  {
    qword_27F079538 = objc_lookUpClass("MTLAccelerationStructurePassDescriptor");
    __cxa_guard_release(&qword_27F079540);
  }

  return qword_27F079538;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructurePassSampleBufferAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079550))
  {
    qword_27F079548 = objc_lookUpClass("MTLAccelerationStructurePassSampleBufferAttachmentDescriptor");
    __cxa_guard_release(&qword_27F079550);
  }

  return qword_27F079548;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079560))
  {
    qword_27F079558 = objc_lookUpClass("MTLAccelerationStructurePassSampleBufferAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F079560);
  }

  return qword_27F079558;
}

uint64_t MTL::Private::Class::s_kMTLAccelerationStructureTriangleGeometryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079570))
  {
    qword_27F079568 = objc_lookUpClass("MTLAccelerationStructureTriangleGeometryDescriptor");
    __cxa_guard_release(&qword_27F079570);
  }

  return qword_27F079568;
}

uint64_t MTL::Private::Class::s_kMTLArchitecture(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079580))
  {
    qword_27F079578 = objc_lookUpClass("MTLArchitecture");
    __cxa_guard_release(&qword_27F079580);
  }

  return qword_27F079578;
}

uint64_t MTL::Private::Class::s_kMTLArgument(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079590))
  {
    qword_27F079588 = objc_lookUpClass("MTLArgument");
    __cxa_guard_release(&qword_27F079590);
  }

  return qword_27F079588;
}

uint64_t MTL::Private::Class::s_kMTLArgumentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0795A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0795A0))
  {
    qword_27F079598 = objc_lookUpClass("MTLArgumentDescriptor");
    __cxa_guard_release(&qword_27F0795A0);
  }

  return qword_27F079598;
}

uint64_t MTL::Private::Class::s_kMTLArrayType(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0795B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0795B0))
  {
    qword_27F0795A8 = objc_lookUpClass("MTLArrayType");
    __cxa_guard_release(&qword_27F0795B0);
  }

  return qword_27F0795A8;
}

uint64_t MTL::Private::Class::s_kMTLAttribute(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0795C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0795C0))
  {
    qword_27F0795B8 = objc_lookUpClass("MTLAttribute");
    __cxa_guard_release(&qword_27F0795C0);
  }

  return qword_27F0795B8;
}

uint64_t MTL::Private::Class::s_kMTLAttributeDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0795D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0795D0))
  {
    qword_27F0795C8 = objc_lookUpClass("MTLAttributeDescriptor");
    __cxa_guard_release(&qword_27F0795D0);
  }

  return qword_27F0795C8;
}

uint64_t MTL::Private::Class::s_kMTLAttributeDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0795E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0795E0))
  {
    qword_27F0795D8 = objc_lookUpClass("MTLAttributeDescriptorArray");
    __cxa_guard_release(&qword_27F0795E0);
  }

  return qword_27F0795D8;
}

uint64_t MTL::Private::Class::s_kMTLBinaryArchiveDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0795F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0795F0))
  {
    qword_27F0795E8 = objc_lookUpClass("MTLBinaryArchiveDescriptor");
    __cxa_guard_release(&qword_27F0795F0);
  }

  return qword_27F0795E8;
}

uint64_t MTL::Private::Class::s_kMTLBlitPassDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079600))
  {
    qword_27F0795F8 = objc_lookUpClass("MTLBlitPassDescriptor");
    __cxa_guard_release(&qword_27F079600);
  }

  return qword_27F0795F8;
}

uint64_t MTL::Private::Class::s_kMTLBlitPassSampleBufferAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079610))
  {
    qword_27F079608 = objc_lookUpClass("MTLBlitPassSampleBufferAttachmentDescriptor");
    __cxa_guard_release(&qword_27F079610);
  }

  return qword_27F079608;
}

uint64_t MTL::Private::Class::s_kMTLBlitPassSampleBufferAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079620))
  {
    qword_27F079618 = objc_lookUpClass("MTLBlitPassSampleBufferAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F079620);
  }

  return qword_27F079618;
}

uint64_t MTL::Private::Class::s_kMTLBufferLayoutDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079630))
  {
    qword_27F079628 = objc_lookUpClass("MTLBufferLayoutDescriptor");
    __cxa_guard_release(&qword_27F079630);
  }

  return qword_27F079628;
}

uint64_t MTL::Private::Class::s_kMTLBufferLayoutDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079640))
  {
    qword_27F079638 = objc_lookUpClass("MTLBufferLayoutDescriptorArray");
    __cxa_guard_release(&qword_27F079640);
  }

  return qword_27F079638;
}

uint64_t MTL::Private::Class::s_kMTLCaptureDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079650))
  {
    qword_27F079648 = objc_lookUpClass("MTLCaptureDescriptor");
    __cxa_guard_release(&qword_27F079650);
  }

  return qword_27F079648;
}

uint64_t MTL::Private::Class::s_kMTLCaptureManager(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079660))
  {
    qword_27F079658 = objc_lookUpClass("MTLCaptureManager");
    __cxa_guard_release(&qword_27F079660);
  }

  return qword_27F079658;
}

uint64_t MTL::Private::Class::s_kMTLCommandBufferDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079670))
  {
    qword_27F079668 = objc_lookUpClass("MTLCommandBufferDescriptor");
    __cxa_guard_release(&qword_27F079670);
  }

  return qword_27F079668;
}

uint64_t MTL::Private::Class::s_kMTLCommandQueueDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079680))
  {
    qword_27F079678 = objc_lookUpClass("MTLCommandQueueDescriptor");
    __cxa_guard_release(&qword_27F079680);
  }

  return qword_27F079678;
}

uint64_t MTL::Private::Class::s_kMTLCompileOptions(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079690))
  {
    qword_27F079688 = objc_lookUpClass("MTLCompileOptions");
    __cxa_guard_release(&qword_27F079690);
  }

  return qword_27F079688;
}

uint64_t MTL::Private::Class::s_kMTLComputePassDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0796A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0796A0))
  {
    qword_27F079698 = objc_lookUpClass("MTLComputePassDescriptor");
    __cxa_guard_release(&qword_27F0796A0);
  }

  return qword_27F079698;
}

uint64_t MTL::Private::Class::s_kMTLComputePassSampleBufferAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0796B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0796B0))
  {
    qword_27F0796A8 = objc_lookUpClass("MTLComputePassSampleBufferAttachmentDescriptor");
    __cxa_guard_release(&qword_27F0796B0);
  }

  return qword_27F0796A8;
}

uint64_t MTL::Private::Class::s_kMTLComputePassSampleBufferAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0796C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0796C0))
  {
    qword_27F0796B8 = objc_lookUpClass("MTLComputePassSampleBufferAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F0796C0);
  }

  return qword_27F0796B8;
}

uint64_t MTL::Private::Class::s_kMTLComputePipelineDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0796D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0796D0))
  {
    qword_27F0796C8 = objc_lookUpClass("MTLComputePipelineDescriptor");
    __cxa_guard_release(&qword_27F0796D0);
  }

  return qword_27F0796C8;
}

uint64_t MTL::Private::Class::s_kMTLComputePipelineReflection(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0796E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0796E0))
  {
    qword_27F0796D8 = objc_lookUpClass("MTLComputePipelineReflection");
    __cxa_guard_release(&qword_27F0796E0);
  }

  return qword_27F0796D8;
}

uint64_t MTL::Private::Class::s_kMTLCounterSampleBufferDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0796F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0796F0))
  {
    qword_27F0796E8 = objc_lookUpClass("MTLCounterSampleBufferDescriptor");
    __cxa_guard_release(&qword_27F0796F0);
  }

  return qword_27F0796E8;
}

uint64_t MTL::Private::Class::s_kMTLDepthStencilDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079700))
  {
    qword_27F0796F8 = objc_lookUpClass("MTLDepthStencilDescriptor");
    __cxa_guard_release(&qword_27F079700);
  }

  return qword_27F0796F8;
}

uint64_t MTL::Private::Class::s_kMTLFunctionConstant(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079710))
  {
    qword_27F079708 = objc_lookUpClass("MTLFunctionConstant");
    __cxa_guard_release(&qword_27F079710);
  }

  return qword_27F079708;
}

uint64_t MTL::Private::Class::s_kMTLFunctionConstantValues(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079720))
  {
    qword_27F079718 = objc_lookUpClass("MTLFunctionConstantValues");
    __cxa_guard_release(&qword_27F079720);
  }

  return qword_27F079718;
}

uint64_t MTL::Private::Class::s_kMTLFunctionDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079730))
  {
    qword_27F079728 = objc_lookUpClass("MTLFunctionDescriptor");
    __cxa_guard_release(&qword_27F079730);
  }

  return qword_27F079728;
}

uint64_t MTL::Private::Class::s_kMTLFunctionStitchingAttributeAlwaysInline(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079740))
  {
    qword_27F079738 = objc_lookUpClass("MTLFunctionStitchingAttributeAlwaysInline");
    __cxa_guard_release(&qword_27F079740);
  }

  return qword_27F079738;
}

uint64_t MTL::Private::Class::s_kMTLFunctionStitchingFunctionNode(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079750))
  {
    qword_27F079748 = objc_lookUpClass("MTLFunctionStitchingFunctionNode");
    __cxa_guard_release(&qword_27F079750);
  }

  return qword_27F079748;
}

uint64_t MTL::Private::Class::s_kMTLFunctionStitchingGraph(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079760))
  {
    qword_27F079758 = objc_lookUpClass("MTLFunctionStitchingGraph");
    __cxa_guard_release(&qword_27F079760);
  }

  return qword_27F079758;
}

uint64_t MTL::Private::Class::s_kMTLFunctionStitchingInputNode(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079770))
  {
    qword_27F079768 = objc_lookUpClass("MTLFunctionStitchingInputNode");
    __cxa_guard_release(&qword_27F079770);
  }

  return qword_27F079768;
}

uint64_t MTL::Private::Class::s_kMTLHeapDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079780))
  {
    qword_27F079778 = objc_lookUpClass("MTLHeapDescriptor");
    __cxa_guard_release(&qword_27F079780);
  }

  return qword_27F079778;
}

uint64_t MTL::Private::Class::s_kMTLIOCommandQueueDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079790))
  {
    qword_27F079788 = objc_lookUpClass("MTLIOCommandQueueDescriptor");
    __cxa_guard_release(&qword_27F079790);
  }

  return qword_27F079788;
}

uint64_t MTL::Private::Class::s_kMTLIndirectCommandBufferDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0797A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0797A0))
  {
    qword_27F079798 = objc_lookUpClass("MTLIndirectCommandBufferDescriptor");
    __cxa_guard_release(&qword_27F0797A0);
  }

  return qword_27F079798;
}

uint64_t MTL::Private::Class::s_kMTLIndirectInstanceAccelerationStructureDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0797B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0797B0))
  {
    qword_27F0797A8 = objc_lookUpClass("MTLIndirectInstanceAccelerationStructureDescriptor");
    __cxa_guard_release(&qword_27F0797B0);
  }

  return qword_27F0797A8;
}

uint64_t MTL::Private::Class::s_kMTLInstanceAccelerationStructureDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0797C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0797C0))
  {
    qword_27F0797B8 = objc_lookUpClass("MTLInstanceAccelerationStructureDescriptor");
    __cxa_guard_release(&qword_27F0797C0);
  }

  return qword_27F0797B8;
}

uint64_t MTL::Private::Class::s_kMTLIntersectionFunctionDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0797D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0797D0))
  {
    qword_27F0797C8 = objc_lookUpClass("MTLIntersectionFunctionDescriptor");
    __cxa_guard_release(&qword_27F0797D0);
  }

  return qword_27F0797C8;
}

uint64_t MTL::Private::Class::s_kMTLIntersectionFunctionTableDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0797E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0797E0))
  {
    qword_27F0797D8 = objc_lookUpClass("MTLIntersectionFunctionTableDescriptor");
    __cxa_guard_release(&qword_27F0797E0);
  }

  return qword_27F0797D8;
}

uint64_t MTL::Private::Class::s_kMTLLinkedFunctions(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0797F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0797F0))
  {
    qword_27F0797E8 = objc_lookUpClass("MTLLinkedFunctions");
    __cxa_guard_release(&qword_27F0797F0);
  }

  return qword_27F0797E8;
}

uint64_t MTL::Private::Class::s_kMTLLogStateDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079800))
  {
    qword_27F0797F8 = objc_lookUpClass("MTLLogStateDescriptor");
    __cxa_guard_release(&qword_27F079800);
  }

  return qword_27F0797F8;
}

uint64_t MTL::Private::Class::s_kMTLMeshRenderPipelineDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079810))
  {
    qword_27F079808 = objc_lookUpClass("MTLMeshRenderPipelineDescriptor");
    __cxa_guard_release(&qword_27F079810);
  }

  return qword_27F079808;
}

uint64_t MTL::Private::Class::s_kMTLMotionKeyframeData(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079820))
  {
    qword_27F079818 = objc_lookUpClass("MTLMotionKeyframeData");
    __cxa_guard_release(&qword_27F079820);
  }

  return qword_27F079818;
}

uint64_t MTL::Private::Class::s_kMTLPipelineBufferDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079830))
  {
    qword_27F079828 = objc_lookUpClass("MTLPipelineBufferDescriptor");
    __cxa_guard_release(&qword_27F079830);
  }

  return qword_27F079828;
}

uint64_t MTL::Private::Class::s_kMTLPipelineBufferDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079840))
  {
    qword_27F079838 = objc_lookUpClass("MTLPipelineBufferDescriptorArray");
    __cxa_guard_release(&qword_27F079840);
  }

  return qword_27F079838;
}

uint64_t MTL::Private::Class::s_kMTLPointerType(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079850))
  {
    qword_27F079848 = objc_lookUpClass("MTLPointerType");
    __cxa_guard_release(&qword_27F079850);
  }

  return qword_27F079848;
}

uint64_t MTL::Private::Class::s_kMTLPrimitiveAccelerationStructureDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079860))
  {
    qword_27F079858 = objc_lookUpClass("MTLPrimitiveAccelerationStructureDescriptor");
    __cxa_guard_release(&qword_27F079860);
  }

  return qword_27F079858;
}

uint64_t MTL::Private::Class::s_kMTLRasterizationRateLayerArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079870))
  {
    qword_27F079868 = objc_lookUpClass("MTLRasterizationRateLayerArray");
    __cxa_guard_release(&qword_27F079870);
  }

  return qword_27F079868;
}

uint64_t MTL::Private::Class::s_kMTLRasterizationRateLayerDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079880))
  {
    qword_27F079878 = objc_lookUpClass("MTLRasterizationRateLayerDescriptor");
    __cxa_guard_release(&qword_27F079880);
  }

  return qword_27F079878;
}

uint64_t MTL::Private::Class::s_kMTLRasterizationRateMapDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079890))
  {
    qword_27F079888 = objc_lookUpClass("MTLRasterizationRateMapDescriptor");
    __cxa_guard_release(&qword_27F079890);
  }

  return qword_27F079888;
}

uint64_t MTL::Private::Class::s_kMTLRasterizationRateSampleArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0798A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0798A0))
  {
    qword_27F079898 = objc_lookUpClass("MTLRasterizationRateSampleArray");
    __cxa_guard_release(&qword_27F0798A0);
  }

  return qword_27F079898;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0798B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0798B0))
  {
    qword_27F0798A8 = objc_lookUpClass("MTLRenderPassAttachmentDescriptor");
    __cxa_guard_release(&qword_27F0798B0);
  }

  return qword_27F0798A8;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassColorAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0798C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0798C0))
  {
    qword_27F0798B8 = objc_lookUpClass("MTLRenderPassColorAttachmentDescriptor");
    __cxa_guard_release(&qword_27F0798C0);
  }

  return qword_27F0798B8;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassColorAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0798D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0798D0))
  {
    qword_27F0798C8 = objc_lookUpClass("MTLRenderPassColorAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F0798D0);
  }

  return qword_27F0798C8;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassDepthAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0798E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0798E0))
  {
    qword_27F0798D8 = objc_lookUpClass("MTLRenderPassDepthAttachmentDescriptor");
    __cxa_guard_release(&qword_27F0798E0);
  }

  return qword_27F0798D8;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0798F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0798F0))
  {
    qword_27F0798E8 = objc_lookUpClass("MTLRenderPassDescriptor");
    __cxa_guard_release(&qword_27F0798F0);
  }

  return qword_27F0798E8;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassSampleBufferAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079900))
  {
    qword_27F0798F8 = objc_lookUpClass("MTLRenderPassSampleBufferAttachmentDescriptor");
    __cxa_guard_release(&qword_27F079900);
  }

  return qword_27F0798F8;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassSampleBufferAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079910))
  {
    qword_27F079908 = objc_lookUpClass("MTLRenderPassSampleBufferAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F079910);
  }

  return qword_27F079908;
}

uint64_t MTL::Private::Class::s_kMTLRenderPassStencilAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079920))
  {
    qword_27F079918 = objc_lookUpClass("MTLRenderPassStencilAttachmentDescriptor");
    __cxa_guard_release(&qword_27F079920);
  }

  return qword_27F079918;
}

uint64_t MTL::Private::Class::s_kMTLRenderPipelineColorAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079930))
  {
    qword_27F079928 = objc_lookUpClass("MTLRenderPipelineColorAttachmentDescriptor");
    __cxa_guard_release(&qword_27F079930);
  }

  return qword_27F079928;
}

uint64_t MTL::Private::Class::s_kMTLRenderPipelineColorAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079940))
  {
    qword_27F079938 = objc_lookUpClass("MTLRenderPipelineColorAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F079940);
  }

  return qword_27F079938;
}

uint64_t MTL::Private::Class::s_kMTLRenderPipelineDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079950))
  {
    qword_27F079948 = objc_lookUpClass("MTLRenderPipelineDescriptor");
    __cxa_guard_release(&qword_27F079950);
  }

  return qword_27F079948;
}

uint64_t MTL::Private::Class::s_kMTLRenderPipelineFunctionsDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079960))
  {
    qword_27F079958 = objc_lookUpClass("MTLRenderPipelineFunctionsDescriptor");
    __cxa_guard_release(&qword_27F079960);
  }

  return qword_27F079958;
}

uint64_t MTL::Private::Class::s_kMTLRenderPipelineReflection(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079970))
  {
    qword_27F079968 = objc_lookUpClass("MTLRenderPipelineReflection");
    __cxa_guard_release(&qword_27F079970);
  }

  return qword_27F079968;
}

uint64_t MTL::Private::Class::s_kMTLResidencySetDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079980))
  {
    qword_27F079978 = objc_lookUpClass("MTLResidencySetDescriptor");
    __cxa_guard_release(&qword_27F079980);
  }

  return qword_27F079978;
}

uint64_t MTL::Private::Class::s_kMTLResourceStatePassDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079990))
  {
    qword_27F079988 = objc_lookUpClass("MTLResourceStatePassDescriptor");
    __cxa_guard_release(&qword_27F079990);
  }

  return qword_27F079988;
}

uint64_t MTL::Private::Class::s_kMTLResourceStatePassSampleBufferAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0799A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0799A0))
  {
    qword_27F079998 = objc_lookUpClass("MTLResourceStatePassSampleBufferAttachmentDescriptor");
    __cxa_guard_release(&qword_27F0799A0);
  }

  return qword_27F079998;
}

uint64_t MTL::Private::Class::s_kMTLResourceStatePassSampleBufferAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0799B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0799B0))
  {
    qword_27F0799A8 = objc_lookUpClass("MTLResourceStatePassSampleBufferAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F0799B0);
  }

  return qword_27F0799A8;
}

uint64_t MTL::Private::Class::s_kMTLSamplerDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0799C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0799C0))
  {
    qword_27F0799B8 = objc_lookUpClass("MTLSamplerDescriptor");
    __cxa_guard_release(&qword_27F0799C0);
  }

  return qword_27F0799B8;
}

uint64_t MTL::Private::Class::s_kMTLSharedEventHandle(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0799D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0799D0))
  {
    qword_27F0799C8 = objc_lookUpClass("MTLSharedEventHandle");
    __cxa_guard_release(&qword_27F0799D0);
  }

  return qword_27F0799C8;
}

uint64_t MTL::Private::Class::s_kMTLSharedEventListener(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0799E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0799E0))
  {
    qword_27F0799D8 = objc_lookUpClass("MTLSharedEventListener");
    __cxa_guard_release(&qword_27F0799E0);
  }

  return qword_27F0799D8;
}

uint64_t MTL::Private::Class::s_kMTLSharedTextureHandle(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F0799F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F0799F0))
  {
    qword_27F0799E8 = objc_lookUpClass("MTLSharedTextureHandle");
    __cxa_guard_release(&qword_27F0799F0);
  }

  return qword_27F0799E8;
}

uint64_t MTL::Private::Class::s_kMTLStageInputOutputDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A00))
  {
    qword_27F0799F8 = objc_lookUpClass("MTLStageInputOutputDescriptor");
    __cxa_guard_release(&qword_27F079A00);
  }

  return qword_27F0799F8;
}

uint64_t MTL::Private::Class::s_kMTLStencilDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A10))
  {
    qword_27F079A08 = objc_lookUpClass("MTLStencilDescriptor");
    __cxa_guard_release(&qword_27F079A10);
  }

  return qword_27F079A08;
}

uint64_t MTL::Private::Class::s_kMTLStitchedLibraryDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A20))
  {
    qword_27F079A18 = objc_lookUpClass("MTLStitchedLibraryDescriptor");
    __cxa_guard_release(&qword_27F079A20);
  }

  return qword_27F079A18;
}

uint64_t MTL::Private::Class::s_kMTLStructMember(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A30))
  {
    qword_27F079A28 = objc_lookUpClass("MTLStructMember");
    __cxa_guard_release(&qword_27F079A30);
  }

  return qword_27F079A28;
}

uint64_t MTL::Private::Class::s_kMTLStructType(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A40))
  {
    qword_27F079A38 = objc_lookUpClass("MTLStructType");
    __cxa_guard_release(&qword_27F079A40);
  }

  return qword_27F079A38;
}

uint64_t MTL::Private::Class::s_kMTLTextureDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A50))
  {
    qword_27F079A48 = objc_lookUpClass("MTLTextureDescriptor");
    __cxa_guard_release(&qword_27F079A50);
  }

  return qword_27F079A48;
}

uint64_t MTL::Private::Class::s_kMTLTextureReferenceType(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A60))
  {
    qword_27F079A58 = objc_lookUpClass("MTLTextureReferenceType");
    __cxa_guard_release(&qword_27F079A60);
  }

  return qword_27F079A58;
}

uint64_t MTL::Private::Class::s_kMTLTileRenderPipelineColorAttachmentDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A70))
  {
    qword_27F079A68 = objc_lookUpClass("MTLTileRenderPipelineColorAttachmentDescriptor");
    __cxa_guard_release(&qword_27F079A70);
  }

  return qword_27F079A68;
}

uint64_t MTL::Private::Class::s_kMTLTileRenderPipelineColorAttachmentDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A80))
  {
    qword_27F079A78 = objc_lookUpClass("MTLTileRenderPipelineColorAttachmentDescriptorArray");
    __cxa_guard_release(&qword_27F079A80);
  }

  return qword_27F079A78;
}

uint64_t MTL::Private::Class::s_kMTLTileRenderPipelineDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079A90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079A90))
  {
    qword_27F079A88 = objc_lookUpClass("MTLTileRenderPipelineDescriptor");
    __cxa_guard_release(&qword_27F079A90);
  }

  return qword_27F079A88;
}

uint64_t MTL::Private::Class::s_kMTLType(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079AA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079AA0))
  {
    qword_27F079A98 = objc_lookUpClass("MTLType");
    __cxa_guard_release(&qword_27F079AA0);
  }

  return qword_27F079A98;
}

uint64_t MTL::Private::Class::s_kMTLVertexAttribute(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079AB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079AB0))
  {
    qword_27F079AA8 = objc_lookUpClass("MTLVertexAttribute");
    __cxa_guard_release(&qword_27F079AB0);
  }

  return qword_27F079AA8;
}

uint64_t MTL::Private::Class::s_kMTLVertexAttributeDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079AC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079AC0))
  {
    qword_27F079AB8 = objc_lookUpClass("MTLVertexAttributeDescriptor");
    __cxa_guard_release(&qword_27F079AC0);
  }

  return qword_27F079AB8;
}

uint64_t MTL::Private::Class::s_kMTLVertexAttributeDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079AD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079AD0))
  {
    qword_27F079AC8 = objc_lookUpClass("MTLVertexAttributeDescriptorArray");
    __cxa_guard_release(&qword_27F079AD0);
  }

  return qword_27F079AC8;
}

uint64_t MTL::Private::Class::s_kMTLVertexBufferLayoutDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079AE0))
  {
    qword_27F079AD8 = objc_lookUpClass("MTLVertexBufferLayoutDescriptor");
    __cxa_guard_release(&qword_27F079AE0);
  }

  return qword_27F079AD8;
}

uint64_t MTL::Private::Class::s_kMTLVertexBufferLayoutDescriptorArray(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079AF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079AF0))
  {
    qword_27F079AE8 = objc_lookUpClass("MTLVertexBufferLayoutDescriptorArray");
    __cxa_guard_release(&qword_27F079AF0);
  }

  return qword_27F079AE8;
}

uint64_t MTL::Private::Class::s_kMTLVertexDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079B00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B00))
  {
    qword_27F079AF8 = objc_lookUpClass("MTLVertexDescriptor");
    __cxa_guard_release(&qword_27F079B00);
  }

  return qword_27F079AF8;
}

uint64_t MTL::Private::Class::s_kMTLVisibleFunctionTableDescriptor(MTL::Private::Class *this)
{
  if ((atomic_load_explicit(&qword_27F079B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B10))
  {
    qword_27F079B08 = objc_lookUpClass("MTLVisibleFunctionTableDescriptor");
    __cxa_guard_release(&qword_27F079B10);
  }

  return qword_27F079B08;
}

uint64_t MTL::Private::Protocol::s_kMTLAccelerationStructure(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B20))
  {
    qword_27F079B18 = objc_getProtocol("MTLAccelerationStructure");
    __cxa_guard_release(&qword_27F079B20);
  }

  return qword_27F079B18;
}

uint64_t MTL::Private::Protocol::s_kMTLAccelerationStructureCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B30))
  {
    qword_27F079B28 = objc_getProtocol("MTLAccelerationStructureCommandEncoder");
    __cxa_guard_release(&qword_27F079B30);
  }

  return qword_27F079B28;
}

uint64_t MTL::Private::Protocol::s_kMTLAllocation(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B40))
  {
    qword_27F079B38 = objc_getProtocol("MTLAllocation");
    __cxa_guard_release(&qword_27F079B40);
  }

  return qword_27F079B38;
}

uint64_t MTL::Private::Protocol::s_kMTLArgumentEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B50))
  {
    qword_27F079B48 = objc_getProtocol("MTLArgumentEncoder");
    __cxa_guard_release(&qword_27F079B50);
  }

  return qword_27F079B48;
}

uint64_t MTL::Private::Protocol::s_kMTLBinaryArchive(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B60))
  {
    qword_27F079B58 = objc_getProtocol("MTLBinaryArchive");
    __cxa_guard_release(&qword_27F079B60);
  }

  return qword_27F079B58;
}

uint64_t MTL::Private::Protocol::s_kMTLBinding(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B70))
  {
    qword_27F079B68 = objc_getProtocol("MTLBinding");
    __cxa_guard_release(&qword_27F079B70);
  }

  return qword_27F079B68;
}

uint64_t MTL::Private::Protocol::s_kMTLBlitCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B80))
  {
    qword_27F079B78 = objc_getProtocol("MTLBlitCommandEncoder");
    __cxa_guard_release(&qword_27F079B80);
  }

  return qword_27F079B78;
}

uint64_t MTL::Private::Protocol::s_kMTLBuffer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079B90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079B90))
  {
    qword_27F079B88 = objc_getProtocol("MTLBuffer");
    __cxa_guard_release(&qword_27F079B90);
  }

  return qword_27F079B88;
}

uint64_t MTL::Private::Protocol::s_kMTLBufferBinding(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079BA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079BA0))
  {
    qword_27F079B98 = objc_getProtocol("MTLBufferBinding");
    __cxa_guard_release(&qword_27F079BA0);
  }

  return qword_27F079B98;
}

uint64_t MTL::Private::Protocol::s_kMTLCommandBuffer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079BB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079BB0))
  {
    qword_27F079BA8 = objc_getProtocol("MTLCommandBuffer");
    __cxa_guard_release(&qword_27F079BB0);
  }

  return qword_27F079BA8;
}

uint64_t MTL::Private::Protocol::s_kMTLCommandBufferEncoderInfo(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079BC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079BC0))
  {
    qword_27F079BB8 = objc_getProtocol("MTLCommandBufferEncoderInfo");
    __cxa_guard_release(&qword_27F079BC0);
  }

  return qword_27F079BB8;
}

uint64_t MTL::Private::Protocol::s_kMTLCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079BD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079BD0))
  {
    qword_27F079BC8 = objc_getProtocol("MTLCommandEncoder");
    __cxa_guard_release(&qword_27F079BD0);
  }

  return qword_27F079BC8;
}

uint64_t MTL::Private::Protocol::s_kMTLCommandQueue(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079BE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079BE0))
  {
    qword_27F079BD8 = objc_getProtocol("MTLCommandQueue");
    __cxa_guard_release(&qword_27F079BE0);
  }

  return qword_27F079BD8;
}

uint64_t MTL::Private::Protocol::s_kMTLComputeCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079BF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079BF0))
  {
    qword_27F079BE8 = objc_getProtocol("MTLComputeCommandEncoder");
    __cxa_guard_release(&qword_27F079BF0);
  }

  return qword_27F079BE8;
}

uint64_t MTL::Private::Protocol::s_kMTLComputePipelineState(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C00))
  {
    qword_27F079BF8 = objc_getProtocol("MTLComputePipelineState");
    __cxa_guard_release(&qword_27F079C00);
  }

  return qword_27F079BF8;
}

uint64_t MTL::Private::Protocol::s_kMTLCounter(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C10))
  {
    qword_27F079C08 = objc_getProtocol("MTLCounter");
    __cxa_guard_release(&qword_27F079C10);
  }

  return qword_27F079C08;
}

uint64_t MTL::Private::Protocol::s_kMTLCounterSampleBuffer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C20))
  {
    qword_27F079C18 = objc_getProtocol("MTLCounterSampleBuffer");
    __cxa_guard_release(&qword_27F079C20);
  }

  return qword_27F079C18;
}

uint64_t MTL::Private::Protocol::s_kMTLCounterSet(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C30))
  {
    qword_27F079C28 = objc_getProtocol("MTLCounterSet");
    __cxa_guard_release(&qword_27F079C30);
  }

  return qword_27F079C28;
}

uint64_t MTL::Private::Protocol::s_kMTLDepthStencilState(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C40))
  {
    qword_27F079C38 = objc_getProtocol("MTLDepthStencilState");
    __cxa_guard_release(&qword_27F079C40);
  }

  return qword_27F079C38;
}

uint64_t MTL::Private::Protocol::s_kMTLDevice(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C50))
  {
    qword_27F079C48 = objc_getProtocol("MTLDevice");
    __cxa_guard_release(&qword_27F079C50);
  }

  return qword_27F079C48;
}

uint64_t MTL::Private::Protocol::s_kMTLDrawable(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C60))
  {
    qword_27F079C58 = objc_getProtocol("MTLDrawable");
    __cxa_guard_release(&qword_27F079C60);
  }

  return qword_27F079C58;
}

uint64_t MTL::Private::Protocol::s_kMTLDynamicLibrary(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C70))
  {
    qword_27F079C68 = objc_getProtocol("MTLDynamicLibrary");
    __cxa_guard_release(&qword_27F079C70);
  }

  return qword_27F079C68;
}

uint64_t MTL::Private::Protocol::s_kMTLEvent(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C80))
  {
    qword_27F079C78 = objc_getProtocol("MTLEvent");
    __cxa_guard_release(&qword_27F079C80);
  }

  return qword_27F079C78;
}

uint64_t MTL::Private::Protocol::s_kMTLFence(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079C90))
  {
    qword_27F079C88 = objc_getProtocol("MTLFence");
    __cxa_guard_release(&qword_27F079C90);
  }

  return qword_27F079C88;
}

uint64_t MTL::Private::Protocol::s_kMTLFunction(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079CA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079CA0))
  {
    qword_27F079C98 = objc_getProtocol("MTLFunction");
    __cxa_guard_release(&qword_27F079CA0);
  }

  return qword_27F079C98;
}

uint64_t MTL::Private::Protocol::s_kMTLFunctionHandle(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079CB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079CB0))
  {
    qword_27F079CA8 = objc_getProtocol("MTLFunctionHandle");
    __cxa_guard_release(&qword_27F079CB0);
  }

  return qword_27F079CA8;
}

uint64_t MTL::Private::Protocol::s_kMTLFunctionLog(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079CC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079CC0))
  {
    qword_27F079CB8 = objc_getProtocol("MTLFunctionLog");
    __cxa_guard_release(&qword_27F079CC0);
  }

  return qword_27F079CB8;
}

uint64_t MTL::Private::Protocol::s_kMTLFunctionLogDebugLocation(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079CD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079CD0))
  {
    qword_27F079CC8 = objc_getProtocol("MTLFunctionLogDebugLocation");
    __cxa_guard_release(&qword_27F079CD0);
  }

  return qword_27F079CC8;
}

uint64_t MTL::Private::Protocol::s_kMTLFunctionStitchingAttribute(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079CE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079CE0))
  {
    qword_27F079CD8 = objc_getProtocol("MTLFunctionStitchingAttribute");
    __cxa_guard_release(&qword_27F079CE0);
  }

  return qword_27F079CD8;
}

uint64_t MTL::Private::Protocol::s_kMTLFunctionStitchingNode(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079CF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079CF0))
  {
    qword_27F079CE8 = objc_getProtocol("MTLFunctionStitchingNode");
    __cxa_guard_release(&qword_27F079CF0);
  }

  return qword_27F079CE8;
}

uint64_t MTL::Private::Protocol::s_kMTLHeap(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D00))
  {
    qword_27F079CF8 = objc_getProtocol("MTLHeap");
    __cxa_guard_release(&qword_27F079D00);
  }

  return qword_27F079CF8;
}

uint64_t MTL::Private::Protocol::s_kMTLIOCommandBuffer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D10))
  {
    qword_27F079D08 = objc_getProtocol("MTLIOCommandBuffer");
    __cxa_guard_release(&qword_27F079D10);
  }

  return qword_27F079D08;
}

uint64_t MTL::Private::Protocol::s_kMTLIOCommandQueue(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D20))
  {
    qword_27F079D18 = objc_getProtocol("MTLIOCommandQueue");
    __cxa_guard_release(&qword_27F079D20);
  }

  return qword_27F079D18;
}

uint64_t MTL::Private::Protocol::s_kMTLIOFileHandle(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D30))
  {
    qword_27F079D28 = objc_getProtocol("MTLIOFileHandle");
    __cxa_guard_release(&qword_27F079D30);
  }

  return qword_27F079D28;
}

uint64_t MTL::Private::Protocol::s_kMTLIOScratchBuffer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D40))
  {
    qword_27F079D38 = objc_getProtocol("MTLIOScratchBuffer");
    __cxa_guard_release(&qword_27F079D40);
  }

  return qword_27F079D38;
}

uint64_t MTL::Private::Protocol::s_kMTLIOScratchBufferAllocator(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D50))
  {
    qword_27F079D48 = objc_getProtocol("MTLIOScratchBufferAllocator");
    __cxa_guard_release(&qword_27F079D50);
  }

  return qword_27F079D48;
}

uint64_t MTL::Private::Protocol::s_kMTLIndirectCommandBuffer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D60))
  {
    qword_27F079D58 = objc_getProtocol("MTLIndirectCommandBuffer");
    __cxa_guard_release(&qword_27F079D60);
  }

  return qword_27F079D58;
}

uint64_t MTL::Private::Protocol::s_kMTLIndirectComputeCommand(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D70))
  {
    qword_27F079D68 = objc_getProtocol("MTLIndirectComputeCommand");
    __cxa_guard_release(&qword_27F079D70);
  }

  return qword_27F079D68;
}

uint64_t MTL::Private::Protocol::s_kMTLIndirectRenderCommand(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D80))
  {
    qword_27F079D78 = objc_getProtocol("MTLIndirectRenderCommand");
    __cxa_guard_release(&qword_27F079D80);
  }

  return qword_27F079D78;
}

uint64_t MTL::Private::Protocol::s_kMTLIntersectionFunctionTable(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079D90))
  {
    qword_27F079D88 = objc_getProtocol("MTLIntersectionFunctionTable");
    __cxa_guard_release(&qword_27F079D90);
  }

  return qword_27F079D88;
}

uint64_t MTL::Private::Protocol::s_kMTLLibrary(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079DA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079DA0))
  {
    qword_27F079D98 = objc_getProtocol("MTLLibrary");
    __cxa_guard_release(&qword_27F079DA0);
  }

  return qword_27F079D98;
}

uint64_t MTL::Private::Protocol::s_kMTLLogContainer(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079DB0))
  {
    qword_27F079DA8 = objc_getProtocol("MTLLogContainer");
    __cxa_guard_release(&qword_27F079DB0);
  }

  return qword_27F079DA8;
}

uint64_t MTL::Private::Protocol::s_kMTLLogState(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079DC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079DC0))
  {
    qword_27F079DB8 = objc_getProtocol("MTLLogState");
    __cxa_guard_release(&qword_27F079DC0);
  }

  return qword_27F079DB8;
}

uint64_t MTL::Private::Protocol::s_kMTLObjectPayloadBinding(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079DD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079DD0))
  {
    qword_27F079DC8 = objc_getProtocol("MTLObjectPayloadBinding");
    __cxa_guard_release(&qword_27F079DD0);
  }

  return qword_27F079DC8;
}

uint64_t MTL::Private::Protocol::s_kMTLParallelRenderCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079DE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079DE0))
  {
    qword_27F079DD8 = objc_getProtocol("MTLParallelRenderCommandEncoder");
    __cxa_guard_release(&qword_27F079DE0);
  }

  return qword_27F079DD8;
}

uint64_t MTL::Private::Protocol::s_kMTLRasterizationRateMap(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079DF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079DF0))
  {
    qword_27F079DE8 = objc_getProtocol("MTLRasterizationRateMap");
    __cxa_guard_release(&qword_27F079DF0);
  }

  return qword_27F079DE8;
}

uint64_t MTL::Private::Protocol::s_kMTLRenderCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E00))
  {
    qword_27F079DF8 = objc_getProtocol("MTLRenderCommandEncoder");
    __cxa_guard_release(&qword_27F079E00);
  }

  return qword_27F079DF8;
}

uint64_t MTL::Private::Protocol::s_kMTLRenderPipelineState(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E10))
  {
    qword_27F079E08 = objc_getProtocol("MTLRenderPipelineState");
    __cxa_guard_release(&qword_27F079E10);
  }

  return qword_27F079E08;
}

uint64_t MTL::Private::Protocol::s_kMTLResidencySet(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E20))
  {
    qword_27F079E18 = objc_getProtocol("MTLResidencySet");
    __cxa_guard_release(&qword_27F079E20);
  }

  return qword_27F079E18;
}

uint64_t MTL::Private::Protocol::s_kMTLResource(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E30))
  {
    qword_27F079E28 = objc_getProtocol("MTLResource");
    __cxa_guard_release(&qword_27F079E30);
  }

  return qword_27F079E28;
}

uint64_t MTL::Private::Protocol::s_kMTLResourceStateCommandEncoder(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E40))
  {
    qword_27F079E38 = objc_getProtocol("MTLResourceStateCommandEncoder");
    __cxa_guard_release(&qword_27F079E40);
  }

  return qword_27F079E38;
}

uint64_t MTL::Private::Protocol::s_kMTLSamplerState(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E50))
  {
    qword_27F079E48 = objc_getProtocol("MTLSamplerState");
    __cxa_guard_release(&qword_27F079E50);
  }

  return qword_27F079E48;
}

uint64_t MTL::Private::Protocol::s_kMTLSharedEvent(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E60))
  {
    qword_27F079E58 = objc_getProtocol("MTLSharedEvent");
    __cxa_guard_release(&qword_27F079E60);
  }

  return qword_27F079E58;
}

uint64_t MTL::Private::Protocol::s_kMTLTexture(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E70))
  {
    qword_27F079E68 = objc_getProtocol("MTLTexture");
    __cxa_guard_release(&qword_27F079E70);
  }

  return qword_27F079E68;
}

uint64_t MTL::Private::Protocol::s_kMTLTextureBinding(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E80))
  {
    qword_27F079E78 = objc_getProtocol("MTLTextureBinding");
    __cxa_guard_release(&qword_27F079E80);
  }

  return qword_27F079E78;
}

uint64_t MTL::Private::Protocol::s_kMTLThreadgroupBinding(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079E90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079E90))
  {
    qword_27F079E88 = objc_getProtocol("MTLThreadgroupBinding");
    __cxa_guard_release(&qword_27F079E90);
  }

  return qword_27F079E88;
}

uint64_t MTL::Private::Protocol::s_kMTLVisibleFunctionTable(MTL::Private::Protocol *this)
{
  if ((atomic_load_explicit(&qword_27F079EA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079EA0))
  {
    qword_27F079E98 = objc_getProtocol("MTLVisibleFunctionTable");
    __cxa_guard_release(&qword_27F079EA0);
  }

  return qword_27F079E98;
}

uint64_t MTL::Private::Selector::s_kGPUEndTime(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079EB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079EB0))
  {
    qword_27F079EA8 = sel_registerName("GPUEndTime");
    __cxa_guard_release(&qword_27F079EB0);
  }

  return qword_27F079EA8;
}

uint64_t MTL::Private::Selector::s_kGPUStartTime(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079EC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079EC0))
  {
    qword_27F079EB8 = sel_registerName("GPUStartTime");
    __cxa_guard_release(&qword_27F079EC0);
  }

  return qword_27F079EB8;
}

uint64_t MTL::Private::Selector::s_kURL(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079ED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079ED0))
  {
    qword_27F079EC8 = sel_registerName("URL");
    __cxa_guard_release(&qword_27F079ED0);
  }

  return qword_27F079EC8;
}

uint64_t MTL::Private::Selector::s_kaccelerationStructureCommandEncoder(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079EE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079EE0))
  {
    qword_27F079ED8 = sel_registerName("accelerationStructureCommandEncoder");
    __cxa_guard_release(&qword_27F079EE0);
  }

  return qword_27F079ED8;
}

uint64_t MTL::Private::Selector::s_kaccelerationStructureCommandEncoderWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079EF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079EF0))
  {
    qword_27F079EE8 = sel_registerName("accelerationStructureCommandEncoderWithDescriptor:");
    __cxa_guard_release(&qword_27F079EF0);
  }

  return qword_27F079EE8;
}

uint64_t MTL::Private::Selector::s_kaccelerationStructurePassDescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F00))
  {
    qword_27F079EF8 = sel_registerName("accelerationStructurePassDescriptor");
    __cxa_guard_release(&qword_27F079F00);
  }

  return qword_27F079EF8;
}

uint64_t MTL::Private::Selector::s_kaccelerationStructureSizesWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F10))
  {
    qword_27F079F08 = sel_registerName("accelerationStructureSizesWithDescriptor:");
    __cxa_guard_release(&qword_27F079F10);
  }

  return qword_27F079F08;
}

uint64_t MTL::Private::Selector::s_kaccess(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F20))
  {
    qword_27F079F18 = sel_registerName("access");
    __cxa_guard_release(&qword_27F079F20);
  }

  return qword_27F079F18;
}

uint64_t MTL::Private::Selector::s_kaddAllocation_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F30))
  {
    qword_27F079F28 = sel_registerName("addAllocation:");
    __cxa_guard_release(&qword_27F079F30);
  }

  return qword_27F079F28;
}

uint64_t MTL::Private::Selector::s_kaddAllocations_count_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F40))
  {
    qword_27F079F38 = sel_registerName("addAllocations:count:");
    __cxa_guard_release(&qword_27F079F40);
  }

  return qword_27F079F38;
}

uint64_t MTL::Private::Selector::s_kaddBarrier(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F50))
  {
    qword_27F079F48 = sel_registerName("addBarrier");
    __cxa_guard_release(&qword_27F079F50);
  }

  return qword_27F079F48;
}

uint64_t MTL::Private::Selector::s_kaddCompletedHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F60))
  {
    qword_27F079F58 = sel_registerName("addCompletedHandler:");
    __cxa_guard_release(&qword_27F079F60);
  }

  return qword_27F079F58;
}

uint64_t MTL::Private::Selector::s_kaddComputePipelineFunctionsWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F70))
  {
    qword_27F079F68 = sel_registerName("addComputePipelineFunctionsWithDescriptor:error:");
    __cxa_guard_release(&qword_27F079F70);
  }

  return qword_27F079F68;
}

uint64_t MTL::Private::Selector::s_kaddDebugMarker_range_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F80))
  {
    qword_27F079F78 = sel_registerName("addDebugMarker:range:");
    __cxa_guard_release(&qword_27F079F80);
  }

  return qword_27F079F78;
}

uint64_t MTL::Private::Selector::s_kaddFunctionWithDescriptor_library_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079F90))
  {
    qword_27F079F88 = sel_registerName("addFunctionWithDescriptor:library:error:");
    __cxa_guard_release(&qword_27F079F90);
  }

  return qword_27F079F88;
}

uint64_t MTL::Private::Selector::s_kaddLibraryWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079FA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079FA0))
  {
    qword_27F079F98 = sel_registerName("addLibraryWithDescriptor:error:");
    __cxa_guard_release(&qword_27F079FA0);
  }

  return qword_27F079F98;
}

uint64_t MTL::Private::Selector::s_kaddLogHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079FB0))
  {
    qword_27F079FA8 = sel_registerName("addLogHandler:");
    __cxa_guard_release(&qword_27F079FB0);
  }

  return qword_27F079FA8;
}

uint64_t MTL::Private::Selector::s_kaddMeshRenderPipelineFunctionsWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079FC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079FC0))
  {
    qword_27F079FB8 = sel_registerName("addMeshRenderPipelineFunctionsWithDescriptor:error:");
    __cxa_guard_release(&qword_27F079FC0);
  }

  return qword_27F079FB8;
}

uint64_t MTL::Private::Selector::s_kaddPresentedHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079FD0))
  {
    qword_27F079FC8 = sel_registerName("addPresentedHandler:");
    __cxa_guard_release(&qword_27F079FD0);
  }

  return qword_27F079FC8;
}

uint64_t MTL::Private::Selector::s_kaddRenderPipelineFunctionsWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079FE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079FE0))
  {
    qword_27F079FD8 = sel_registerName("addRenderPipelineFunctionsWithDescriptor:error:");
    __cxa_guard_release(&qword_27F079FE0);
  }

  return qword_27F079FD8;
}

uint64_t MTL::Private::Selector::s_kaddResidencySet_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F079FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079FF0))
  {
    qword_27F079FE8 = sel_registerName("addResidencySet:");
    __cxa_guard_release(&qword_27F079FF0);
  }

  return qword_27F079FE8;
}

uint64_t MTL::Private::Selector::s_kaddResidencySets_count_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A000))
  {
    qword_27F079FF8 = sel_registerName("addResidencySets:count:");
    __cxa_guard_release(&qword_27F07A000);
  }

  return qword_27F079FF8;
}

uint64_t MTL::Private::Selector::s_kaddScheduledHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A010))
  {
    qword_27F07A008 = sel_registerName("addScheduledHandler:");
    __cxa_guard_release(&qword_27F07A010);
  }

  return qword_27F07A008;
}

uint64_t MTL::Private::Selector::s_kaddTileRenderPipelineFunctionsWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A020))
  {
    qword_27F07A018 = sel_registerName("addTileRenderPipelineFunctionsWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07A020);
  }

  return qword_27F07A018;
}

uint64_t MTL::Private::Selector::s_kalignment(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A030))
  {
    qword_27F07A028 = sel_registerName("alignment");
    __cxa_guard_release(&qword_27F07A030);
  }

  return qword_27F07A028;
}

uint64_t MTL::Private::Selector::s_kallAllocations(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A040))
  {
    qword_27F07A038 = sel_registerName("allAllocations");
    __cxa_guard_release(&qword_27F07A040);
  }

  return qword_27F07A038;
}

uint64_t MTL::Private::Selector::s_kallocatedSize(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A050))
  {
    qword_27F07A048 = sel_registerName("allocatedSize");
    __cxa_guard_release(&qword_27F07A050);
  }

  return qword_27F07A048;
}

uint64_t MTL::Private::Selector::s_kallocationCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A060))
  {
    qword_27F07A058 = sel_registerName("allocationCount");
    __cxa_guard_release(&qword_27F07A060);
  }

  return qword_27F07A058;
}

uint64_t MTL::Private::Selector::s_kallowDuplicateIntersectionFunctionInvocation(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A070))
  {
    qword_27F07A068 = sel_registerName("allowDuplicateIntersectionFunctionInvocation");
    __cxa_guard_release(&qword_27F07A070);
  }

  return qword_27F07A068;
}

uint64_t MTL::Private::Selector::s_kallowGPUOptimizedContents(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A080))
  {
    qword_27F07A078 = sel_registerName("allowGPUOptimizedContents");
    __cxa_guard_release(&qword_27F07A080);
  }

  return qword_27F07A078;
}

uint64_t MTL::Private::Selector::s_kallowReferencingUndefinedSymbols(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A090))
  {
    qword_27F07A088 = sel_registerName("allowReferencingUndefinedSymbols");
    __cxa_guard_release(&qword_27F07A090);
  }

  return qword_27F07A088;
}

uint64_t MTL::Private::Selector::s_kalphaBlendOperation(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A0A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A0A0))
  {
    qword_27F07A098 = sel_registerName("alphaBlendOperation");
    __cxa_guard_release(&qword_27F07A0A0);
  }

  return qword_27F07A098;
}

uint64_t MTL::Private::Selector::s_karchitecture(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A0B0))
  {
    qword_27F07A0A8 = sel_registerName("architecture");
    __cxa_guard_release(&qword_27F07A0B0);
  }

  return qword_27F07A0A8;
}

uint64_t MTL::Private::Selector::s_kareBarycentricCoordsSupported(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A0C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A0C0))
  {
    qword_27F07A0B8 = sel_registerName("areBarycentricCoordsSupported");
    __cxa_guard_release(&qword_27F07A0C0);
  }

  return qword_27F07A0B8;
}

uint64_t MTL::Private::Selector::s_kareProgrammableSamplePositionsSupported(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A0D0))
  {
    qword_27F07A0C8 = sel_registerName("areProgrammableSamplePositionsSupported");
    __cxa_guard_release(&qword_27F07A0D0);
  }

  return qword_27F07A0C8;
}

uint64_t MTL::Private::Selector::s_kareRasterOrderGroupsSupported(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A0E0))
  {
    qword_27F07A0D8 = sel_registerName("areRasterOrderGroupsSupported");
    __cxa_guard_release(&qword_27F07A0E0);
  }

  return qword_27F07A0D8;
}

uint64_t MTL::Private::Selector::s_kargumentBuffersSupport(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A0F0))
  {
    qword_27F07A0E8 = sel_registerName("argumentBuffersSupport");
    __cxa_guard_release(&qword_27F07A0F0);
  }

  return qword_27F07A0E8;
}

uint64_t MTL::Private::Selector::s_kargumentDescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A100))
  {
    qword_27F07A0F8 = sel_registerName("argumentDescriptor");
    __cxa_guard_release(&qword_27F07A100);
  }

  return qword_27F07A0F8;
}

uint64_t MTL::Private::Selector::s_kargumentIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A110))
  {
    qword_27F07A108 = sel_registerName("argumentIndex");
    __cxa_guard_release(&qword_27F07A110);
  }

  return qword_27F07A108;
}

uint64_t MTL::Private::Selector::s_kargumentIndexStride(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A120))
  {
    qword_27F07A118 = sel_registerName("argumentIndexStride");
    __cxa_guard_release(&qword_27F07A120);
  }

  return qword_27F07A118;
}

uint64_t MTL::Private::Selector::s_karguments(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A130))
  {
    qword_27F07A128 = sel_registerName("arguments");
    __cxa_guard_release(&qword_27F07A130);
  }

  return qword_27F07A128;
}

uint64_t MTL::Private::Selector::s_karrayLength(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A140))
  {
    qword_27F07A138 = sel_registerName("arrayLength");
    __cxa_guard_release(&qword_27F07A140);
  }

  return qword_27F07A138;
}

uint64_t MTL::Private::Selector::s_karrayType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A150))
  {
    qword_27F07A148 = sel_registerName("arrayType");
    __cxa_guard_release(&qword_27F07A150);
  }

  return qword_27F07A148;
}

uint64_t MTL::Private::Selector::s_kattributeIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A160))
  {
    qword_27F07A158 = sel_registerName("attributeIndex");
    __cxa_guard_release(&qword_27F07A160);
  }

  return qword_27F07A158;
}

uint64_t MTL::Private::Selector::s_kattributeType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A170))
  {
    qword_27F07A168 = sel_registerName("attributeType");
    __cxa_guard_release(&qword_27F07A170);
  }

  return qword_27F07A168;
}

uint64_t MTL::Private::Selector::s_kattributes(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A180))
  {
    qword_27F07A178 = sel_registerName("attributes");
    __cxa_guard_release(&qword_27F07A180);
  }

  return qword_27F07A178;
}

uint64_t MTL::Private::Selector::s_kbackFaceStencil(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A190))
  {
    qword_27F07A188 = sel_registerName("backFaceStencil");
    __cxa_guard_release(&qword_27F07A190);
  }

  return qword_27F07A188;
}

uint64_t MTL::Private::Selector::s_kbinaryArchives(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A1A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A1A0))
  {
    qword_27F07A198 = sel_registerName("binaryArchives");
    __cxa_guard_release(&qword_27F07A1A0);
  }

  return qword_27F07A198;
}

uint64_t MTL::Private::Selector::s_kbinaryFunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A1B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A1B0))
  {
    qword_27F07A1A8 = sel_registerName("binaryFunctions");
    __cxa_guard_release(&qword_27F07A1B0);
  }

  return qword_27F07A1A8;
}

uint64_t MTL::Private::Selector::s_kbindings(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A1C0))
  {
    qword_27F07A1B8 = sel_registerName("bindings");
    __cxa_guard_release(&qword_27F07A1C0);
  }

  return qword_27F07A1B8;
}

uint64_t MTL::Private::Selector::s_kblitCommandEncoder(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A1D0))
  {
    qword_27F07A1C8 = sel_registerName("blitCommandEncoder");
    __cxa_guard_release(&qword_27F07A1D0);
  }

  return qword_27F07A1C8;
}

uint64_t MTL::Private::Selector::s_kblitCommandEncoderWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A1E0))
  {
    qword_27F07A1D8 = sel_registerName("blitCommandEncoderWithDescriptor:");
    __cxa_guard_release(&qword_27F07A1E0);
  }

  return qword_27F07A1D8;
}

uint64_t MTL::Private::Selector::s_kblitPassDescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A1F0))
  {
    qword_27F07A1E8 = sel_registerName("blitPassDescriptor");
    __cxa_guard_release(&qword_27F07A1F0);
  }

  return qword_27F07A1E8;
}

uint64_t MTL::Private::Selector::s_kborderColor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A200))
  {
    qword_27F07A1F8 = sel_registerName("borderColor");
    __cxa_guard_release(&qword_27F07A200);
  }

  return qword_27F07A1F8;
}

uint64_t MTL::Private::Selector::s_kboundingBoxBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A210))
  {
    qword_27F07A208 = sel_registerName("boundingBoxBuffer");
    __cxa_guard_release(&qword_27F07A210);
  }

  return qword_27F07A208;
}

uint64_t MTL::Private::Selector::s_kboundingBoxBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A220))
  {
    qword_27F07A218 = sel_registerName("boundingBoxBufferOffset");
    __cxa_guard_release(&qword_27F07A220);
  }

  return qword_27F07A218;
}

uint64_t MTL::Private::Selector::s_kboundingBoxBuffers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A230))
  {
    qword_27F07A228 = sel_registerName("boundingBoxBuffers");
    __cxa_guard_release(&qword_27F07A230);
  }

  return qword_27F07A228;
}

uint64_t MTL::Private::Selector::s_kboundingBoxCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A240))
  {
    qword_27F07A238 = sel_registerName("boundingBoxCount");
    __cxa_guard_release(&qword_27F07A240);
  }

  return qword_27F07A238;
}

uint64_t MTL::Private::Selector::s_kboundingBoxStride(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A250))
  {
    qword_27F07A248 = sel_registerName("boundingBoxStride");
    __cxa_guard_release(&qword_27F07A250);
  }

  return qword_27F07A248;
}

uint64_t MTL::Private::Selector::s_kbuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A260))
  {
    qword_27F07A258 = sel_registerName("buffer");
    __cxa_guard_release(&qword_27F07A260);
  }

  return qword_27F07A258;
}

uint64_t MTL::Private::Selector::s_kbufferAlignment(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A270))
  {
    qword_27F07A268 = sel_registerName("bufferAlignment");
    __cxa_guard_release(&qword_27F07A270);
  }

  return qword_27F07A268;
}

uint64_t MTL::Private::Selector::s_kbufferBytesPerRow(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A280))
  {
    qword_27F07A278 = sel_registerName("bufferBytesPerRow");
    __cxa_guard_release(&qword_27F07A280);
  }

  return qword_27F07A278;
}

uint64_t MTL::Private::Selector::s_kbufferDataSize(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A290))
  {
    qword_27F07A288 = sel_registerName("bufferDataSize");
    __cxa_guard_release(&qword_27F07A290);
  }

  return qword_27F07A288;
}

uint64_t MTL::Private::Selector::s_kbufferDataType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A2A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A2A0))
  {
    qword_27F07A298 = sel_registerName("bufferDataType");
    __cxa_guard_release(&qword_27F07A2A0);
  }

  return qword_27F07A298;
}

uint64_t MTL::Private::Selector::s_kbufferIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A2B0))
  {
    qword_27F07A2A8 = sel_registerName("bufferIndex");
    __cxa_guard_release(&qword_27F07A2B0);
  }

  return qword_27F07A2A8;
}

uint64_t MTL::Private::Selector::s_kbufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A2C0))
  {
    qword_27F07A2B8 = sel_registerName("bufferOffset");
    __cxa_guard_release(&qword_27F07A2C0);
  }

  return qword_27F07A2B8;
}

uint64_t MTL::Private::Selector::s_kbufferPointerType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A2D0))
  {
    qword_27F07A2C8 = sel_registerName("bufferPointerType");
    __cxa_guard_release(&qword_27F07A2D0);
  }

  return qword_27F07A2C8;
}

uint64_t MTL::Private::Selector::s_kbufferSize(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A2E0))
  {
    qword_27F07A2D8 = sel_registerName("bufferSize");
    __cxa_guard_release(&qword_27F07A2E0);
  }

  return qword_27F07A2D8;
}

uint64_t MTL::Private::Selector::s_kbufferStructType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A2F0))
  {
    qword_27F07A2E8 = sel_registerName("bufferStructType");
    __cxa_guard_release(&qword_27F07A2F0);
  }

  return qword_27F07A2E8;
}

uint64_t MTL::Private::Selector::s_kbuffers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A300))
  {
    qword_27F07A2F8 = sel_registerName("buffers");
    __cxa_guard_release(&qword_27F07A300);
  }

  return qword_27F07A2F8;
}

uint64_t MTL::Private::Selector::s_kbuildAccelerationStructure_descriptor_scratchBuffer_scratchBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A310))
  {
    qword_27F07A308 = sel_registerName("buildAccelerationStructure:descriptor:scratchBuffer:scratchBufferOffset:");
    __cxa_guard_release(&qword_27F07A310);
  }

  return qword_27F07A308;
}

uint64_t MTL::Private::Selector::s_kcaptureObject(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A320))
  {
    qword_27F07A318 = sel_registerName("captureObject");
    __cxa_guard_release(&qword_27F07A320);
  }

  return qword_27F07A318;
}

uint64_t MTL::Private::Selector::s_kclearBarrier(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A330))
  {
    qword_27F07A328 = sel_registerName("clearBarrier");
    __cxa_guard_release(&qword_27F07A330);
  }

  return qword_27F07A328;
}

uint64_t MTL::Private::Selector::s_kclearColor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A340))
  {
    qword_27F07A338 = sel_registerName("clearColor");
    __cxa_guard_release(&qword_27F07A340);
  }

  return qword_27F07A338;
}

uint64_t MTL::Private::Selector::s_kclearDepth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A350))
  {
    qword_27F07A348 = sel_registerName("clearDepth");
    __cxa_guard_release(&qword_27F07A350);
  }

  return qword_27F07A348;
}

uint64_t MTL::Private::Selector::s_kclearStencil(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A360))
  {
    qword_27F07A358 = sel_registerName("clearStencil");
    __cxa_guard_release(&qword_27F07A360);
  }

  return qword_27F07A358;
}

uint64_t MTL::Private::Selector::s_kcolorAttachments(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A370))
  {
    qword_27F07A368 = sel_registerName("colorAttachments");
    __cxa_guard_release(&qword_27F07A370);
  }

  return qword_27F07A368;
}

uint64_t MTL::Private::Selector::s_kcolumn(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A380))
  {
    qword_27F07A378 = sel_registerName("column");
    __cxa_guard_release(&qword_27F07A380);
  }

  return qword_27F07A378;
}

uint64_t MTL::Private::Selector::s_kcommandBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A390))
  {
    qword_27F07A388 = sel_registerName("commandBuffer");
    __cxa_guard_release(&qword_27F07A390);
  }

  return qword_27F07A388;
}

uint64_t MTL::Private::Selector::s_kcommandBufferWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A3A0))
  {
    qword_27F07A398 = sel_registerName("commandBufferWithDescriptor:");
    __cxa_guard_release(&qword_27F07A3A0);
  }

  return qword_27F07A398;
}

uint64_t MTL::Private::Selector::s_kcommandBufferWithUnretainedReferences(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A3B0))
  {
    qword_27F07A3A8 = sel_registerName("commandBufferWithUnretainedReferences");
    __cxa_guard_release(&qword_27F07A3B0);
  }

  return qword_27F07A3A8;
}

uint64_t MTL::Private::Selector::s_kcommandQueue(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A3C0))
  {
    qword_27F07A3B8 = sel_registerName("commandQueue");
    __cxa_guard_release(&qword_27F07A3C0);
  }

  return qword_27F07A3B8;
}

uint64_t MTL::Private::Selector::s_kcommandTypes(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A3D0))
  {
    qword_27F07A3C8 = sel_registerName("commandTypes");
    __cxa_guard_release(&qword_27F07A3D0);
  }

  return qword_27F07A3C8;
}

uint64_t MTL::Private::Selector::s_kcommit(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A3E0))
  {
    qword_27F07A3D8 = sel_registerName("commit");
    __cxa_guard_release(&qword_27F07A3E0);
  }

  return qword_27F07A3D8;
}

uint64_t MTL::Private::Selector::s_kcompareFunction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A3F0))
  {
    qword_27F07A3E8 = sel_registerName("compareFunction");
    __cxa_guard_release(&qword_27F07A3F0);
  }

  return qword_27F07A3E8;
}

uint64_t MTL::Private::Selector::s_kcompileSymbolVisibility(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A400))
  {
    qword_27F07A3F8 = sel_registerName("compileSymbolVisibility");
    __cxa_guard_release(&qword_27F07A400);
  }

  return qword_27F07A3F8;
}

uint64_t MTL::Private::Selector::s_kcompressionType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A410))
  {
    qword_27F07A408 = sel_registerName("compressionType");
    __cxa_guard_release(&qword_27F07A410);
  }

  return qword_27F07A408;
}

uint64_t MTL::Private::Selector::s_kcomputeCommandEncoder(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A420))
  {
    qword_27F07A418 = sel_registerName("computeCommandEncoder");
    __cxa_guard_release(&qword_27F07A420);
  }

  return qword_27F07A418;
}

uint64_t MTL::Private::Selector::s_kcomputeCommandEncoderWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A430))
  {
    qword_27F07A428 = sel_registerName("computeCommandEncoderWithDescriptor:");
    __cxa_guard_release(&qword_27F07A430);
  }

  return qword_27F07A428;
}

uint64_t MTL::Private::Selector::s_kcomputeCommandEncoderWithDispatchType_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A440))
  {
    qword_27F07A438 = sel_registerName("computeCommandEncoderWithDispatchType:");
    __cxa_guard_release(&qword_27F07A440);
  }

  return qword_27F07A438;
}

uint64_t MTL::Private::Selector::s_kcomputeFunction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A450))
  {
    qword_27F07A448 = sel_registerName("computeFunction");
    __cxa_guard_release(&qword_27F07A450);
  }

  return qword_27F07A448;
}

uint64_t MTL::Private::Selector::s_kcomputePassDescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A460))
  {
    qword_27F07A458 = sel_registerName("computePassDescriptor");
    __cxa_guard_release(&qword_27F07A460);
  }

  return qword_27F07A458;
}

uint64_t MTL::Private::Selector::s_kconcurrentDispatchThreadgroups_threadsPerThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A470))
  {
    qword_27F07A468 = sel_registerName("concurrentDispatchThreadgroups:threadsPerThreadgroup:");
    __cxa_guard_release(&qword_27F07A470);
  }

  return qword_27F07A468;
}

uint64_t MTL::Private::Selector::s_kconcurrentDispatchThreads_threadsPerThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A480))
  {
    qword_27F07A478 = sel_registerName("concurrentDispatchThreads:threadsPerThreadgroup:");
    __cxa_guard_release(&qword_27F07A480);
  }

  return qword_27F07A478;
}

uint64_t MTL::Private::Selector::s_kconstantBlockAlignment(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A490))
  {
    qword_27F07A488 = sel_registerName("constantBlockAlignment");
    __cxa_guard_release(&qword_27F07A490);
  }

  return qword_27F07A488;
}

uint64_t MTL::Private::Selector::s_kconstantDataAtIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A4A0))
  {
    qword_27F07A498 = sel_registerName("constantDataAtIndex:");
    __cxa_guard_release(&qword_27F07A4A0);
  }

  return qword_27F07A498;
}

uint64_t MTL::Private::Selector::s_kconstantValues(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A4B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A4B0))
  {
    qword_27F07A4A8 = sel_registerName("constantValues");
    __cxa_guard_release(&qword_27F07A4B0);
  }

  return qword_27F07A4A8;
}

uint64_t MTL::Private::Selector::s_kcontainsAllocation_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A4C0))
  {
    qword_27F07A4B8 = sel_registerName("containsAllocation:");
    __cxa_guard_release(&qword_27F07A4C0);
  }

  return qword_27F07A4B8;
}

uint64_t MTL::Private::Selector::s_kcontents(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A4D0))
  {
    qword_27F07A4C8 = sel_registerName("contents");
    __cxa_guard_release(&qword_27F07A4D0);
  }

  return qword_27F07A4C8;
}

uint64_t MTL::Private::Selector::s_kcontrolDependencies(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A4E0))
  {
    qword_27F07A4D8 = sel_registerName("controlDependencies");
    __cxa_guard_release(&qword_27F07A4E0);
  }

  return qword_27F07A4D8;
}

uint64_t MTL::Private::Selector::s_kcontrolPointBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A4F0))
  {
    qword_27F07A4E8 = sel_registerName("controlPointBuffer");
    __cxa_guard_release(&qword_27F07A4F0);
  }

  return qword_27F07A4E8;
}

uint64_t MTL::Private::Selector::s_kcontrolPointBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A500))
  {
    qword_27F07A4F8 = sel_registerName("controlPointBufferOffset");
    __cxa_guard_release(&qword_27F07A500);
  }

  return qword_27F07A4F8;
}

uint64_t MTL::Private::Selector::s_kcontrolPointBuffers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A510))
  {
    qword_27F07A508 = sel_registerName("controlPointBuffers");
    __cxa_guard_release(&qword_27F07A510);
  }

  return qword_27F07A508;
}

uint64_t MTL::Private::Selector::s_kcontrolPointCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A520))
  {
    qword_27F07A518 = sel_registerName("controlPointCount");
    __cxa_guard_release(&qword_27F07A520);
  }

  return qword_27F07A518;
}

uint64_t MTL::Private::Selector::s_kcontrolPointFormat(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A530))
  {
    qword_27F07A528 = sel_registerName("controlPointFormat");
    __cxa_guard_release(&qword_27F07A530);
  }

  return qword_27F07A528;
}

uint64_t MTL::Private::Selector::s_kcontrolPointStride(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A540))
  {
    qword_27F07A538 = sel_registerName("controlPointStride");
    __cxa_guard_release(&qword_27F07A540);
  }

  return qword_27F07A538;
}

uint64_t MTL::Private::Selector::s_kconvertSparsePixelRegions_toTileRegions_withTileSize_alignmentMode_numRegions_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A550))
  {
    qword_27F07A548 = sel_registerName("convertSparsePixelRegions:toTileRegions:withTileSize:alignmentMode:numRegions:");
    __cxa_guard_release(&qword_27F07A550);
  }

  return qword_27F07A548;
}

uint64_t MTL::Private::Selector::s_kconvertSparseTileRegions_toPixelRegions_withTileSize_numRegions_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A560))
  {
    qword_27F07A558 = sel_registerName("convertSparseTileRegions:toPixelRegions:withTileSize:numRegions:");
    __cxa_guard_release(&qword_27F07A560);
  }

  return qword_27F07A558;
}

uint64_t MTL::Private::Selector::s_kcopyAccelerationStructure_toAccelerationStructure_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A570))
  {
    qword_27F07A568 = sel_registerName("copyAccelerationStructure:toAccelerationStructure:");
    __cxa_guard_release(&qword_27F07A570);
  }

  return qword_27F07A568;
}

uint64_t MTL::Private::Selector::s_kcopyAndCompactAccelerationStructure_toAccelerationStructure_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A580))
  {
    qword_27F07A578 = sel_registerName("copyAndCompactAccelerationStructure:toAccelerationStructure:");
    __cxa_guard_release(&qword_27F07A580);
  }

  return qword_27F07A578;
}

uint64_t MTL::Private::Selector::s_kcopyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A590))
  {
    qword_27F07A588 = sel_registerName("copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:");
    __cxa_guard_release(&qword_27F07A590);
  }

  return qword_27F07A588;
}

uint64_t MTL::Private::Selector::s_kcopyFromBuffer_sourceOffset_sourceBytesPerRow_sourceBytesPerImage_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_options_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A5A0))
  {
    qword_27F07A598 = sel_registerName("copyFromBuffer:sourceOffset:sourceBytesPerRow:sourceBytesPerImage:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:options:");
    __cxa_guard_release(&qword_27F07A5A0);
  }

  return qword_27F07A598;
}

uint64_t MTL::Private::Selector::s_kcopyFromBuffer_sourceOffset_toBuffer_destinationOffset_size_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A5B0))
  {
    qword_27F07A5A8 = sel_registerName("copyFromBuffer:sourceOffset:toBuffer:destinationOffset:size:");
    __cxa_guard_release(&qword_27F07A5B0);
  }

  return qword_27F07A5A8;
}

uint64_t MTL::Private::Selector::s_kcopyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A5C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A5C0))
  {
    qword_27F07A5B8 = sel_registerName("copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:");
    __cxa_guard_release(&qword_27F07A5C0);
  }

  return qword_27F07A5B8;
}

uint64_t MTL::Private::Selector::s_kcopyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toBuffer_destinationOffset_destinationBytesPerRow_destinationBytesPerImage_options_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A5D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A5D0))
  {
    qword_27F07A5C8 = sel_registerName("copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toBuffer:destinationOffset:destinationBytesPerRow:destinationBytesPerImage:options:");
    __cxa_guard_release(&qword_27F07A5D0);
  }

  return qword_27F07A5C8;
}

uint64_t MTL::Private::Selector::s_kcopyFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A5E0))
  {
    qword_27F07A5D8 = sel_registerName("copyFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:");
    __cxa_guard_release(&qword_27F07A5E0);
  }

  return qword_27F07A5D8;
}

uint64_t MTL::Private::Selector::s_kcopyFromTexture_sourceSlice_sourceLevel_toTexture_destinationSlice_destinationLevel_sliceCount_levelCount_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A5F0))
  {
    qword_27F07A5E8 = sel_registerName("copyFromTexture:sourceSlice:sourceLevel:toTexture:destinationSlice:destinationLevel:sliceCount:levelCount:");
    __cxa_guard_release(&qword_27F07A5F0);
  }

  return qword_27F07A5E8;
}

uint64_t MTL::Private::Selector::s_kcopyFromTexture_toTexture_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A600))
  {
    qword_27F07A5F8 = sel_registerName("copyFromTexture:toTexture:");
    __cxa_guard_release(&qword_27F07A600);
  }

  return qword_27F07A5F8;
}

uint64_t MTL::Private::Selector::s_kcopyIndirectCommandBuffer_sourceRange_destination_destinationIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A610))
  {
    qword_27F07A608 = sel_registerName("copyIndirectCommandBuffer:sourceRange:destination:destinationIndex:");
    __cxa_guard_release(&qword_27F07A610);
  }

  return qword_27F07A608;
}

uint64_t MTL::Private::Selector::s_kcopyParameterDataToBuffer_offset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A620))
  {
    qword_27F07A618 = sel_registerName("copyParameterDataToBuffer:offset:");
    __cxa_guard_release(&qword_27F07A620);
  }

  return qword_27F07A618;
}

uint64_t MTL::Private::Selector::s_kcopyStatusToBuffer_offset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A630))
  {
    qword_27F07A628 = sel_registerName("copyStatusToBuffer:offset:");
    __cxa_guard_release(&qword_27F07A630);
  }

  return qword_27F07A628;
}

uint64_t MTL::Private::Selector::s_kcounterSet(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A640))
  {
    qword_27F07A638 = sel_registerName("counterSet");
    __cxa_guard_release(&qword_27F07A640);
  }

  return qword_27F07A638;
}

uint64_t MTL::Private::Selector::s_kcounterSets(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A650))
  {
    qword_27F07A648 = sel_registerName("counterSets");
    __cxa_guard_release(&qword_27F07A650);
  }

  return qword_27F07A648;
}

uint64_t MTL::Private::Selector::s_kcounters(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A660))
  {
    qword_27F07A658 = sel_registerName("counters");
    __cxa_guard_release(&qword_27F07A660);
  }

  return qword_27F07A658;
}

uint64_t MTL::Private::Selector::s_kcpuCacheMode(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A670))
  {
    qword_27F07A668 = sel_registerName("cpuCacheMode");
    __cxa_guard_release(&qword_27F07A670);
  }

  return qword_27F07A668;
}

uint64_t MTL::Private::Selector::s_kcurrentAllocatedSize(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A680))
  {
    qword_27F07A678 = sel_registerName("currentAllocatedSize");
    __cxa_guard_release(&qword_27F07A680);
  }

  return qword_27F07A678;
}

uint64_t MTL::Private::Selector::s_kcurveBasis(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A690))
  {
    qword_27F07A688 = sel_registerName("curveBasis");
    __cxa_guard_release(&qword_27F07A690);
  }

  return qword_27F07A688;
}

uint64_t MTL::Private::Selector::s_kcurveEndCaps(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A6A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A6A0))
  {
    qword_27F07A698 = sel_registerName("curveEndCaps");
    __cxa_guard_release(&qword_27F07A6A0);
  }

  return qword_27F07A698;
}

uint64_t MTL::Private::Selector::s_kcurveType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A6B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A6B0))
  {
    qword_27F07A6A8 = sel_registerName("curveType");
    __cxa_guard_release(&qword_27F07A6B0);
  }

  return qword_27F07A6A8;
}

uint64_t MTL::Private::Selector::s_kdata(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A6C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A6C0))
  {
    qword_27F07A6B8 = sel_registerName("data");
    __cxa_guard_release(&qword_27F07A6C0);
  }

  return qword_27F07A6B8;
}

uint64_t MTL::Private::Selector::s_kdataSize(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A6D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A6D0))
  {
    qword_27F07A6C8 = sel_registerName("dataSize");
    __cxa_guard_release(&qword_27F07A6D0);
  }

  return qword_27F07A6C8;
}

uint64_t MTL::Private::Selector::s_kdataType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A6E0))
  {
    qword_27F07A6D8 = sel_registerName("dataType");
    __cxa_guard_release(&qword_27F07A6E0);
  }

  return qword_27F07A6D8;
}

uint64_t MTL::Private::Selector::s_kdealloc(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A6F0))
  {
    qword_27F07A6E8 = sel_registerName("dealloc");
    __cxa_guard_release(&qword_27F07A6F0);
  }

  return qword_27F07A6E8;
}

uint64_t MTL::Private::Selector::s_kdebugLocation(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A700))
  {
    qword_27F07A6F8 = sel_registerName("debugLocation");
    __cxa_guard_release(&qword_27F07A700);
  }

  return qword_27F07A6F8;
}

uint64_t MTL::Private::Selector::s_kdebugSignposts(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A710))
  {
    qword_27F07A708 = sel_registerName("debugSignposts");
    __cxa_guard_release(&qword_27F07A710);
  }

  return qword_27F07A708;
}

uint64_t MTL::Private::Selector::s_kdefaultCaptureScope(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A720))
  {
    qword_27F07A718 = sel_registerName("defaultCaptureScope");
    __cxa_guard_release(&qword_27F07A720);
  }

  return qword_27F07A718;
}

uint64_t MTL::Private::Selector::s_kdefaultRasterSampleCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A730))
  {
    qword_27F07A728 = sel_registerName("defaultRasterSampleCount");
    __cxa_guard_release(&qword_27F07A730);
  }

  return qword_27F07A728;
}

uint64_t MTL::Private::Selector::s_kdepth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A740))
  {
    qword_27F07A738 = sel_registerName("depth");
    __cxa_guard_release(&qword_27F07A740);
  }

  return qword_27F07A738;
}

uint64_t MTL::Private::Selector::s_kdepthAttachment(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A750))
  {
    qword_27F07A748 = sel_registerName("depthAttachment");
    __cxa_guard_release(&qword_27F07A750);
  }

  return qword_27F07A748;
}

uint64_t MTL::Private::Selector::s_kdepthAttachmentPixelFormat(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A760))
  {
    qword_27F07A758 = sel_registerName("depthAttachmentPixelFormat");
    __cxa_guard_release(&qword_27F07A760);
  }

  return qword_27F07A758;
}

uint64_t MTL::Private::Selector::s_kdepthCompareFunction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A770))
  {
    qword_27F07A768 = sel_registerName("depthCompareFunction");
    __cxa_guard_release(&qword_27F07A770);
  }

  return qword_27F07A768;
}

uint64_t MTL::Private::Selector::s_kdepthFailureOperation(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A780))
  {
    qword_27F07A778 = sel_registerName("depthFailureOperation");
    __cxa_guard_release(&qword_27F07A780);
  }

  return qword_27F07A778;
}

uint64_t MTL::Private::Selector::s_kdepthPlane(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A790))
  {
    qword_27F07A788 = sel_registerName("depthPlane");
    __cxa_guard_release(&qword_27F07A790);
  }

  return qword_27F07A788;
}

uint64_t MTL::Private::Selector::s_kdepthResolveFilter(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A7A0))
  {
    qword_27F07A798 = sel_registerName("depthResolveFilter");
    __cxa_guard_release(&qword_27F07A7A0);
  }

  return qword_27F07A798;
}

uint64_t MTL::Private::Selector::s_kdepthStencilPassOperation(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A7B0))
  {
    qword_27F07A7A8 = sel_registerName("depthStencilPassOperation");
    __cxa_guard_release(&qword_27F07A7B0);
  }

  return qword_27F07A7A8;
}

uint64_t MTL::Private::Selector::s_kdescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A7C0))
  {
    qword_27F07A7B8 = sel_registerName("descriptor");
    __cxa_guard_release(&qword_27F07A7C0);
  }

  return qword_27F07A7B8;
}

uint64_t MTL::Private::Selector::s_kdestination(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A7D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A7D0))
  {
    qword_27F07A7C8 = sel_registerName("destination");
    __cxa_guard_release(&qword_27F07A7D0);
  }

  return qword_27F07A7C8;
}

uint64_t MTL::Private::Selector::s_kdestinationAlphaBlendFactor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A7E0))
  {
    qword_27F07A7D8 = sel_registerName("destinationAlphaBlendFactor");
    __cxa_guard_release(&qword_27F07A7E0);
  }

  return qword_27F07A7D8;
}

uint64_t MTL::Private::Selector::s_kdestinationRGBBlendFactor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A7F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A7F0))
  {
    qword_27F07A7E8 = sel_registerName("destinationRGBBlendFactor");
    __cxa_guard_release(&qword_27F07A7F0);
  }

  return qword_27F07A7E8;
}

uint64_t MTL::Private::Selector::s_kdevice(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A800))
  {
    qword_27F07A7F8 = sel_registerName("device");
    __cxa_guard_release(&qword_27F07A800);
  }

  return qword_27F07A7F8;
}

uint64_t MTL::Private::Selector::s_kdidModifyRange_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A810))
  {
    qword_27F07A808 = sel_registerName("didModifyRange:");
    __cxa_guard_release(&qword_27F07A810);
  }

  return qword_27F07A808;
}

uint64_t MTL::Private::Selector::s_kdispatchQueue(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A820))
  {
    qword_27F07A818 = sel_registerName("dispatchQueue");
    __cxa_guard_release(&qword_27F07A820);
  }

  return qword_27F07A818;
}

uint64_t MTL::Private::Selector::s_kdispatchThreadgroups_threadsPerThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A830))
  {
    qword_27F07A828 = sel_registerName("dispatchThreadgroups:threadsPerThreadgroup:");
    __cxa_guard_release(&qword_27F07A830);
  }

  return qword_27F07A828;
}

uint64_t MTL::Private::Selector::s_kdispatchThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A840))
  {
    qword_27F07A838 = sel_registerName("dispatchThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerThreadgroup:");
    __cxa_guard_release(&qword_27F07A840);
  }

  return qword_27F07A838;
}

uint64_t MTL::Private::Selector::s_kdispatchThreads_threadsPerThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A850))
  {
    qword_27F07A848 = sel_registerName("dispatchThreads:threadsPerThreadgroup:");
    __cxa_guard_release(&qword_27F07A850);
  }

  return qword_27F07A848;
}

uint64_t MTL::Private::Selector::s_kdispatchThreadsPerTile_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A860))
  {
    qword_27F07A858 = sel_registerName("dispatchThreadsPerTile:");
    __cxa_guard_release(&qword_27F07A860);
  }

  return qword_27F07A858;
}

uint64_t MTL::Private::Selector::s_kdispatchType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A870))
  {
    qword_27F07A868 = sel_registerName("dispatchType");
    __cxa_guard_release(&qword_27F07A870);
  }

  return qword_27F07A868;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPatches_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_indirectBuffer_indirectBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A880))
  {
    qword_27F07A878 = sel_registerName("drawIndexedPatches:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:indirectBuffer:indirectBufferOffset:");
    __cxa_guard_release(&qword_27F07A880);
  }

  return qword_27F07A878;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A890))
  {
    qword_27F07A888 = sel_registerName("drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:");
    __cxa_guard_release(&qword_27F07A890);
  }

  return qword_27F07A888;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_controlPointIndexBuffer_controlPointIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A8A0))
  {
    qword_27F07A898 = sel_registerName("drawIndexedPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:controlPointIndexBuffer:controlPointIndexBufferOffset:instanceCount:baseInstance:tessellationFactorBuffer:tessellationFactorBufferOffset:tessellationFactorBufferInstanceStride:");
    __cxa_guard_release(&qword_27F07A8A0);
  }

  return qword_27F07A898;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A8B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A8B0))
  {
    qword_27F07A8A8 = sel_registerName("drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:");
    __cxa_guard_release(&qword_27F07A8B0);
  }

  return qword_27F07A8A8;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A8C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A8C0))
  {
    qword_27F07A8B8 = sel_registerName("drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:");
    __cxa_guard_release(&qword_27F07A8C0);
  }

  return qword_27F07A8B8;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPrimitives_indexCount_indexType_indexBuffer_indexBufferOffset_instanceCount_baseVertex_baseInstance_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A8D0))
  {
    qword_27F07A8C8 = sel_registerName("drawIndexedPrimitives:indexCount:indexType:indexBuffer:indexBufferOffset:instanceCount:baseVertex:baseInstance:");
    __cxa_guard_release(&qword_27F07A8D0);
  }

  return qword_27F07A8C8;
}

uint64_t MTL::Private::Selector::s_kdrawIndexedPrimitives_indexType_indexBuffer_indexBufferOffset_indirectBuffer_indirectBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A8E0))
  {
    qword_27F07A8D8 = sel_registerName("drawIndexedPrimitives:indexType:indexBuffer:indexBufferOffset:indirectBuffer:indirectBufferOffset:");
    __cxa_guard_release(&qword_27F07A8E0);
  }

  return qword_27F07A8D8;
}

uint64_t MTL::Private::Selector::s_kdrawMeshThreadgroups_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A8F0))
  {
    qword_27F07A8E8 = sel_registerName("drawMeshThreadgroups:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:");
    __cxa_guard_release(&qword_27F07A8F0);
  }

  return qword_27F07A8E8;
}

uint64_t MTL::Private::Selector::s_kdrawMeshThreadgroupsWithIndirectBuffer_indirectBufferOffset_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A900))
  {
    qword_27F07A8F8 = sel_registerName("drawMeshThreadgroupsWithIndirectBuffer:indirectBufferOffset:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:");
    __cxa_guard_release(&qword_27F07A900);
  }

  return qword_27F07A8F8;
}

uint64_t MTL::Private::Selector::s_kdrawMeshThreads_threadsPerObjectThreadgroup_threadsPerMeshThreadgroup_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A910))
  {
    qword_27F07A908 = sel_registerName("drawMeshThreads:threadsPerObjectThreadgroup:threadsPerMeshThreadgroup:");
    __cxa_guard_release(&qword_27F07A910);
  }

  return qword_27F07A908;
}

uint64_t MTL::Private::Selector::s_kdrawPatches_patchIndexBuffer_patchIndexBufferOffset_indirectBuffer_indirectBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A920))
  {
    qword_27F07A918 = sel_registerName("drawPatches:patchIndexBuffer:patchIndexBufferOffset:indirectBuffer:indirectBufferOffset:");
    __cxa_guard_release(&qword_27F07A920);
  }

  return qword_27F07A918;
}

uint64_t MTL::Private::Selector::s_kdrawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A930))
  {
    qword_27F07A928 = sel_registerName("drawPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:instanceCount:baseInstance:");
    __cxa_guard_release(&qword_27F07A930);
  }

  return qword_27F07A928;
}

uint64_t MTL::Private::Selector::s_kdrawPatches_patchStart_patchCount_patchIndexBuffer_patchIndexBufferOffset_instanceCount_baseInstance_tessellationFactorBuffer_tessellationFactorBufferOffset_tessellationFactorBufferInstanceStride_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A940))
  {
    qword_27F07A938 = sel_registerName("drawPatches:patchStart:patchCount:patchIndexBuffer:patchIndexBufferOffset:instanceCount:baseInstance:tessellationFactorBuffer:tessellationFactorBufferOffset:tessellationFactorBufferInstanceStride:");
    __cxa_guard_release(&qword_27F07A940);
  }

  return qword_27F07A938;
}

uint64_t MTL::Private::Selector::s_kdrawPrimitives_indirectBuffer_indirectBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A950))
  {
    qword_27F07A948 = sel_registerName("drawPrimitives:indirectBuffer:indirectBufferOffset:");
    __cxa_guard_release(&qword_27F07A950);
  }

  return qword_27F07A948;
}

uint64_t MTL::Private::Selector::s_kdrawPrimitives_vertexStart_vertexCount_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A960))
  {
    qword_27F07A958 = sel_registerName("drawPrimitives:vertexStart:vertexCount:");
    __cxa_guard_release(&qword_27F07A960);
  }

  return qword_27F07A958;
}

uint64_t MTL::Private::Selector::s_kdrawPrimitives_vertexStart_vertexCount_instanceCount_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A970))
  {
    qword_27F07A968 = sel_registerName("drawPrimitives:vertexStart:vertexCount:instanceCount:");
    __cxa_guard_release(&qword_27F07A970);
  }

  return qword_27F07A968;
}

uint64_t MTL::Private::Selector::s_kdrawPrimitives_vertexStart_vertexCount_instanceCount_baseInstance_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A980))
  {
    qword_27F07A978 = sel_registerName("drawPrimitives:vertexStart:vertexCount:instanceCount:baseInstance:");
    __cxa_guard_release(&qword_27F07A980);
  }

  return qword_27F07A978;
}

uint64_t MTL::Private::Selector::s_kdrawableID(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A990))
  {
    qword_27F07A988 = sel_registerName("drawableID");
    __cxa_guard_release(&qword_27F07A990);
  }

  return qword_27F07A988;
}

uint64_t MTL::Private::Selector::s_kelementArrayType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A9A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A9A0))
  {
    qword_27F07A998 = sel_registerName("elementArrayType");
    __cxa_guard_release(&qword_27F07A9A0);
  }

  return qword_27F07A998;
}

uint64_t MTL::Private::Selector::s_kelementIsArgumentBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A9B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A9B0))
  {
    qword_27F07A9A8 = sel_registerName("elementIsArgumentBuffer");
    __cxa_guard_release(&qword_27F07A9B0);
  }

  return qword_27F07A9A8;
}

uint64_t MTL::Private::Selector::s_kelementPointerType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A9C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A9C0))
  {
    qword_27F07A9B8 = sel_registerName("elementPointerType");
    __cxa_guard_release(&qword_27F07A9C0);
  }

  return qword_27F07A9B8;
}

uint64_t MTL::Private::Selector::s_kelementStructType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A9D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A9D0))
  {
    qword_27F07A9C8 = sel_registerName("elementStructType");
    __cxa_guard_release(&qword_27F07A9D0);
  }

  return qword_27F07A9C8;
}

uint64_t MTL::Private::Selector::s_kelementTextureReferenceType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A9E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A9E0))
  {
    qword_27F07A9D8 = sel_registerName("elementTextureReferenceType");
    __cxa_guard_release(&qword_27F07A9E0);
  }

  return qword_27F07A9D8;
}

uint64_t MTL::Private::Selector::s_kelementType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07A9F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07A9F0))
  {
    qword_27F07A9E8 = sel_registerName("elementType");
    __cxa_guard_release(&qword_27F07A9F0);
  }

  return qword_27F07A9E8;
}

uint64_t MTL::Private::Selector::s_kenableLogging(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA00))
  {
    qword_27F07A9F8 = sel_registerName("enableLogging");
    __cxa_guard_release(&qword_27F07AA00);
  }

  return qword_27F07A9F8;
}

uint64_t MTL::Private::Selector::s_kencodeSignalEvent_value_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA10))
  {
    qword_27F07AA08 = sel_registerName("encodeSignalEvent:value:");
    __cxa_guard_release(&qword_27F07AA10);
  }

  return qword_27F07AA08;
}

uint64_t MTL::Private::Selector::s_kencodeWaitForEvent_value_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA20))
  {
    qword_27F07AA18 = sel_registerName("encodeWaitForEvent:value:");
    __cxa_guard_release(&qword_27F07AA20);
  }

  return qword_27F07AA18;
}

uint64_t MTL::Private::Selector::s_kencodedLength(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA30))
  {
    qword_27F07AA28 = sel_registerName("encodedLength");
    __cxa_guard_release(&qword_27F07AA30);
  }

  return qword_27F07AA28;
}

uint64_t MTL::Private::Selector::s_kencoderLabel(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA40))
  {
    qword_27F07AA38 = sel_registerName("encoderLabel");
    __cxa_guard_release(&qword_27F07AA40);
  }

  return qword_27F07AA38;
}

uint64_t MTL::Private::Selector::s_kendEncoding(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA50))
  {
    qword_27F07AA48 = sel_registerName("endEncoding");
    __cxa_guard_release(&qword_27F07AA50);
  }

  return qword_27F07AA48;
}

uint64_t MTL::Private::Selector::s_kendOfEncoderSampleIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA60))
  {
    qword_27F07AA58 = sel_registerName("endOfEncoderSampleIndex");
    __cxa_guard_release(&qword_27F07AA60);
  }

  return qword_27F07AA58;
}

uint64_t MTL::Private::Selector::s_kendOfFragmentSampleIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA70))
  {
    qword_27F07AA68 = sel_registerName("endOfFragmentSampleIndex");
    __cxa_guard_release(&qword_27F07AA70);
  }

  return qword_27F07AA68;
}

uint64_t MTL::Private::Selector::s_kendOfVertexSampleIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA80))
  {
    qword_27F07AA78 = sel_registerName("endOfVertexSampleIndex");
    __cxa_guard_release(&qword_27F07AA80);
  }

  return qword_27F07AA78;
}

uint64_t MTL::Private::Selector::s_kendResidency(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AA90))
  {
    qword_27F07AA88 = sel_registerName("endResidency");
    __cxa_guard_release(&qword_27F07AA90);
  }

  return qword_27F07AA88;
}

uint64_t MTL::Private::Selector::s_kenqueue(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AAA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AAA0))
  {
    qword_27F07AA98 = sel_registerName("enqueue");
    __cxa_guard_release(&qword_27F07AAA0);
  }

  return qword_27F07AA98;
}

uint64_t MTL::Private::Selector::s_kenqueueBarrier(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AAB0))
  {
    qword_27F07AAA8 = sel_registerName("enqueueBarrier");
    __cxa_guard_release(&qword_27F07AAB0);
  }

  return qword_27F07AAA8;
}

uint64_t MTL::Private::Selector::s_kerror(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AAC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AAC0))
  {
    qword_27F07AAB8 = sel_registerName("error");
    __cxa_guard_release(&qword_27F07AAC0);
  }

  return qword_27F07AAB8;
}

uint64_t MTL::Private::Selector::s_kerrorOptions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AAD0))
  {
    qword_27F07AAC8 = sel_registerName("errorOptions");
    __cxa_guard_release(&qword_27F07AAD0);
  }

  return qword_27F07AAC8;
}

uint64_t MTL::Private::Selector::s_kerrorState(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AAE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AAE0))
  {
    qword_27F07AAD8 = sel_registerName("errorState");
    __cxa_guard_release(&qword_27F07AAE0);
  }

  return qword_27F07AAD8;
}

uint64_t MTL::Private::Selector::s_kexecuteCommandsInBuffer_indirectBuffer_indirectBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AAF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AAF0))
  {
    qword_27F07AAE8 = sel_registerName("executeCommandsInBuffer:indirectBuffer:indirectBufferOffset:");
    __cxa_guard_release(&qword_27F07AAF0);
  }

  return qword_27F07AAE8;
}

uint64_t MTL::Private::Selector::s_kexecuteCommandsInBuffer_withRange_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB00))
  {
    qword_27F07AAF8 = sel_registerName("executeCommandsInBuffer:withRange:");
    __cxa_guard_release(&qword_27F07AB00);
  }

  return qword_27F07AAF8;
}

uint64_t MTL::Private::Selector::s_kfastMathEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB10))
  {
    qword_27F07AB08 = sel_registerName("fastMathEnabled");
    __cxa_guard_release(&qword_27F07AB10);
  }

  return qword_27F07AB08;
}

uint64_t MTL::Private::Selector::s_kfillBuffer_range_value_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB20))
  {
    qword_27F07AB18 = sel_registerName("fillBuffer:range:value:");
    __cxa_guard_release(&qword_27F07AB20);
  }

  return qword_27F07AB18;
}

uint64_t MTL::Private::Selector::s_kfirstMipmapInTail(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB30))
  {
    qword_27F07AB28 = sel_registerName("firstMipmapInTail");
    __cxa_guard_release(&qword_27F07AB30);
  }

  return qword_27F07AB28;
}

uint64_t MTL::Private::Selector::s_kformat(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB40))
  {
    qword_27F07AB38 = sel_registerName("format");
    __cxa_guard_release(&qword_27F07AB40);
  }

  return qword_27F07AB38;
}

uint64_t MTL::Private::Selector::s_kfragmentAdditionalBinaryFunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB50))
  {
    qword_27F07AB48 = sel_registerName("fragmentAdditionalBinaryFunctions");
    __cxa_guard_release(&qword_27F07AB50);
  }

  return qword_27F07AB48;
}

uint64_t MTL::Private::Selector::s_kfragmentArguments(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB60))
  {
    qword_27F07AB58 = sel_registerName("fragmentArguments");
    __cxa_guard_release(&qword_27F07AB60);
  }

  return qword_27F07AB58;
}

uint64_t MTL::Private::Selector::s_kfragmentBindings(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB70))
  {
    qword_27F07AB68 = sel_registerName("fragmentBindings");
    __cxa_guard_release(&qword_27F07AB70);
  }

  return qword_27F07AB68;
}

uint64_t MTL::Private::Selector::s_kfragmentBuffers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB80))
  {
    qword_27F07AB78 = sel_registerName("fragmentBuffers");
    __cxa_guard_release(&qword_27F07AB80);
  }

  return qword_27F07AB78;
}

uint64_t MTL::Private::Selector::s_kfragmentFunction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AB90))
  {
    qword_27F07AB88 = sel_registerName("fragmentFunction");
    __cxa_guard_release(&qword_27F07AB90);
  }

  return qword_27F07AB88;
}

uint64_t MTL::Private::Selector::s_kfragmentLinkedFunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ABA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ABA0))
  {
    qword_27F07AB98 = sel_registerName("fragmentLinkedFunctions");
    __cxa_guard_release(&qword_27F07ABA0);
  }

  return qword_27F07AB98;
}

uint64_t MTL::Private::Selector::s_kfragmentPreloadedLibraries(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ABB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ABB0))
  {
    qword_27F07ABA8 = sel_registerName("fragmentPreloadedLibraries");
    __cxa_guard_release(&qword_27F07ABB0);
  }

  return qword_27F07ABA8;
}

uint64_t MTL::Private::Selector::s_kfrontFaceStencil(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ABC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ABC0))
  {
    qword_27F07ABB8 = sel_registerName("frontFaceStencil");
    __cxa_guard_release(&qword_27F07ABC0);
  }

  return qword_27F07ABB8;
}

uint64_t MTL::Private::Selector::s_kfunction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ABD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ABD0))
  {
    qword_27F07ABC8 = sel_registerName("function");
    __cxa_guard_release(&qword_27F07ABD0);
  }

  return qword_27F07ABC8;
}

uint64_t MTL::Private::Selector::s_kfunctionConstantsDictionary(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ABE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ABE0))
  {
    qword_27F07ABD8 = sel_registerName("functionConstantsDictionary");
    __cxa_guard_release(&qword_27F07ABE0);
  }

  return qword_27F07ABD8;
}

uint64_t MTL::Private::Selector::s_kfunctionCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ABF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ABF0))
  {
    qword_27F07ABE8 = sel_registerName("functionCount");
    __cxa_guard_release(&qword_27F07ABF0);
  }

  return qword_27F07ABE8;
}

uint64_t MTL::Private::Selector::s_kfunctionDescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC00))
  {
    qword_27F07ABF8 = sel_registerName("functionDescriptor");
    __cxa_guard_release(&qword_27F07AC00);
  }

  return qword_27F07ABF8;
}

uint64_t MTL::Private::Selector::s_kfunctionGraphs(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC10))
  {
    qword_27F07AC08 = sel_registerName("functionGraphs");
    __cxa_guard_release(&qword_27F07AC10);
  }

  return qword_27F07AC08;
}

uint64_t MTL::Private::Selector::s_kfunctionHandleWithFunction_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC20))
  {
    qword_27F07AC18 = sel_registerName("functionHandleWithFunction:");
    __cxa_guard_release(&qword_27F07AC20);
  }

  return qword_27F07AC18;
}

uint64_t MTL::Private::Selector::s_kfunctionHandleWithFunction_stage_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC30))
  {
    qword_27F07AC28 = sel_registerName("functionHandleWithFunction:stage:");
    __cxa_guard_release(&qword_27F07AC30);
  }

  return qword_27F07AC28;
}

uint64_t MTL::Private::Selector::s_kfunctionName(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC40))
  {
    qword_27F07AC38 = sel_registerName("functionName");
    __cxa_guard_release(&qword_27F07AC40);
  }

  return qword_27F07AC38;
}

uint64_t MTL::Private::Selector::s_kfunctionNames(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC50))
  {
    qword_27F07AC48 = sel_registerName("functionNames");
    __cxa_guard_release(&qword_27F07AC50);
  }

  return qword_27F07AC48;
}

uint64_t MTL::Private::Selector::s_kfunctionType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC60))
  {
    qword_27F07AC58 = sel_registerName("functionType");
    __cxa_guard_release(&qword_27F07AC60);
  }

  return qword_27F07AC58;
}

uint64_t MTL::Private::Selector::s_kfunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC70))
  {
    qword_27F07AC68 = sel_registerName("functions");
    __cxa_guard_release(&qword_27F07AC70);
  }

  return qword_27F07AC68;
}

uint64_t MTL::Private::Selector::s_kgenerateMipmapsForTexture_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC80))
  {
    qword_27F07AC78 = sel_registerName("generateMipmapsForTexture:");
    __cxa_guard_release(&qword_27F07AC80);
  }

  return qword_27F07AC78;
}

uint64_t MTL::Private::Selector::s_kgeometryDescriptors(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AC90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AC90))
  {
    qword_27F07AC88 = sel_registerName("geometryDescriptors");
    __cxa_guard_release(&qword_27F07AC90);
  }

  return qword_27F07AC88;
}

uint64_t MTL::Private::Selector::s_kgetBytes_bytesPerRow_bytesPerImage_fromRegion_mipmapLevel_slice_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ACA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ACA0))
  {
    qword_27F07AC98 = sel_registerName("getBytes:bytesPerRow:bytesPerImage:fromRegion:mipmapLevel:slice:");
    __cxa_guard_release(&qword_27F07ACA0);
  }

  return qword_27F07AC98;
}

uint64_t MTL::Private::Selector::s_kgetBytes_bytesPerRow_fromRegion_mipmapLevel_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ACB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ACB0))
  {
    qword_27F07ACA8 = sel_registerName("getBytes:bytesPerRow:fromRegion:mipmapLevel:");
    __cxa_guard_release(&qword_27F07ACB0);
  }

  return qword_27F07ACA8;
}

uint64_t MTL::Private::Selector::s_kgetDefaultSamplePositions_count_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ACC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ACC0))
  {
    qword_27F07ACB8 = sel_registerName("getDefaultSamplePositions:count:");
    __cxa_guard_release(&qword_27F07ACC0);
  }

  return qword_27F07ACB8;
}

uint64_t MTL::Private::Selector::s_kgetSamplePositions_count_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ACD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ACD0))
  {
    qword_27F07ACC8 = sel_registerName("getSamplePositions:count:");
    __cxa_guard_release(&qword_27F07ACD0);
  }

  return qword_27F07ACC8;
}

uint64_t MTL::Private::Selector::s_kgetTextureAccessCounters_region_mipLevel_slice_resetCounters_countersBuffer_countersBufferOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ACE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ACE0))
  {
    qword_27F07ACD8 = sel_registerName("getTextureAccessCounters:region:mipLevel:slice:resetCounters:countersBuffer:countersBufferOffset:");
    __cxa_guard_release(&qword_27F07ACE0);
  }

  return qword_27F07ACD8;
}

uint64_t MTL::Private::Selector::s_kgpuAddress(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ACF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ACF0))
  {
    qword_27F07ACE8 = sel_registerName("gpuAddress");
    __cxa_guard_release(&qword_27F07ACF0);
  }

  return qword_27F07ACE8;
}

uint64_t MTL::Private::Selector::s_kgpuResourceID(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD00))
  {
    qword_27F07ACF8 = sel_registerName("gpuResourceID");
    __cxa_guard_release(&qword_27F07AD00);
  }

  return qword_27F07ACF8;
}

uint64_t MTL::Private::Selector::s_kgroups(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD10))
  {
    qword_27F07AD08 = sel_registerName("groups");
    __cxa_guard_release(&qword_27F07AD10);
  }

  return qword_27F07AD08;
}

uint64_t MTL::Private::Selector::s_khasUnifiedMemory(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD20))
  {
    qword_27F07AD18 = sel_registerName("hasUnifiedMemory");
    __cxa_guard_release(&qword_27F07AD20);
  }

  return qword_27F07AD18;
}

uint64_t MTL::Private::Selector::s_khazardTrackingMode(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD30))
  {
    qword_27F07AD28 = sel_registerName("hazardTrackingMode");
    __cxa_guard_release(&qword_27F07AD30);
  }

  return qword_27F07AD28;
}

uint64_t MTL::Private::Selector::s_kheap(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD40))
  {
    qword_27F07AD38 = sel_registerName("heap");
    __cxa_guard_release(&qword_27F07AD40);
  }

  return qword_27F07AD38;
}

uint64_t MTL::Private::Selector::s_kheapAccelerationStructureSizeAndAlignWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD50))
  {
    qword_27F07AD48 = sel_registerName("heapAccelerationStructureSizeAndAlignWithDescriptor:");
    __cxa_guard_release(&qword_27F07AD50);
  }

  return qword_27F07AD48;
}

uint64_t MTL::Private::Selector::s_kheapAccelerationStructureSizeAndAlignWithSize_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD60))
  {
    qword_27F07AD58 = sel_registerName("heapAccelerationStructureSizeAndAlignWithSize:");
    __cxa_guard_release(&qword_27F07AD60);
  }

  return qword_27F07AD58;
}

uint64_t MTL::Private::Selector::s_kheapBufferSizeAndAlignWithLength_options_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD70))
  {
    qword_27F07AD68 = sel_registerName("heapBufferSizeAndAlignWithLength:options:");
    __cxa_guard_release(&qword_27F07AD70);
  }

  return qword_27F07AD68;
}

uint64_t MTL::Private::Selector::s_kheapOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD80))
  {
    qword_27F07AD78 = sel_registerName("heapOffset");
    __cxa_guard_release(&qword_27F07AD80);
  }

  return qword_27F07AD78;
}

uint64_t MTL::Private::Selector::s_kheapTextureSizeAndAlignWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AD90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AD90))
  {
    qword_27F07AD88 = sel_registerName("heapTextureSizeAndAlignWithDescriptor:");
    __cxa_guard_release(&qword_27F07AD90);
  }

  return qword_27F07AD88;
}

uint64_t MTL::Private::Selector::s_kheight(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ADA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ADA0))
  {
    qword_27F07AD98 = sel_registerName("height");
    __cxa_guard_release(&qword_27F07ADA0);
  }

  return qword_27F07AD98;
}

uint64_t MTL::Private::Selector::s_khorizontal(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ADB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ADB0))
  {
    qword_27F07ADA8 = sel_registerName("horizontal");
    __cxa_guard_release(&qword_27F07ADB0);
  }

  return qword_27F07ADA8;
}

uint64_t MTL::Private::Selector::s_khorizontalSampleStorage(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ADC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ADC0))
  {
    qword_27F07ADB8 = sel_registerName("horizontalSampleStorage");
    __cxa_guard_release(&qword_27F07ADC0);
  }

  return qword_27F07ADB8;
}

uint64_t MTL::Private::Selector::s_kimageblockMemoryLengthForDimensions_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ADD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ADD0))
  {
    qword_27F07ADC8 = sel_registerName("imageblockMemoryLengthForDimensions:");
    __cxa_guard_release(&qword_27F07ADD0);
  }

  return qword_27F07ADC8;
}

uint64_t MTL::Private::Selector::s_kimageblockSampleLength(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ADE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ADE0))
  {
    qword_27F07ADD8 = sel_registerName("imageblockSampleLength");
    __cxa_guard_release(&qword_27F07ADE0);
  }

  return qword_27F07ADD8;
}

uint64_t MTL::Private::Selector::s_kindex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07ADF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07ADF0))
  {
    qword_27F07ADE8 = sel_registerName("index");
    __cxa_guard_release(&qword_27F07ADF0);
  }

  return qword_27F07ADE8;
}

uint64_t MTL::Private::Selector::s_kindexBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE00))
  {
    qword_27F07ADF8 = sel_registerName("indexBuffer");
    __cxa_guard_release(&qword_27F07AE00);
  }

  return qword_27F07ADF8;
}

uint64_t MTL::Private::Selector::s_kindexBufferIndex(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE10))
  {
    qword_27F07AE08 = sel_registerName("indexBufferIndex");
    __cxa_guard_release(&qword_27F07AE10);
  }

  return qword_27F07AE08;
}

uint64_t MTL::Private::Selector::s_kindexBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE20))
  {
    qword_27F07AE18 = sel_registerName("indexBufferOffset");
    __cxa_guard_release(&qword_27F07AE20);
  }

  return qword_27F07AE18;
}

uint64_t MTL::Private::Selector::s_kindexType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE30))
  {
    qword_27F07AE28 = sel_registerName("indexType");
    __cxa_guard_release(&qword_27F07AE30);
  }

  return qword_27F07AE28;
}

uint64_t MTL::Private::Selector::s_kindirectComputeCommandAtIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE40))
  {
    qword_27F07AE38 = sel_registerName("indirectComputeCommandAtIndex:");
    __cxa_guard_release(&qword_27F07AE40);
  }

  return qword_27F07AE38;
}

uint64_t MTL::Private::Selector::s_kindirectRenderCommandAtIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE50))
  {
    qword_27F07AE48 = sel_registerName("indirectRenderCommandAtIndex:");
    __cxa_guard_release(&qword_27F07AE50);
  }

  return qword_27F07AE48;
}

uint64_t MTL::Private::Selector::s_kinheritBuffers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE60))
  {
    qword_27F07AE58 = sel_registerName("inheritBuffers");
    __cxa_guard_release(&qword_27F07AE60);
  }

  return qword_27F07AE58;
}

uint64_t MTL::Private::Selector::s_kinheritPipelineState(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE70))
  {
    qword_27F07AE68 = sel_registerName("inheritPipelineState");
    __cxa_guard_release(&qword_27F07AE70);
  }

  return qword_27F07AE68;
}

uint64_t MTL::Private::Selector::s_kinit(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE80))
  {
    qword_27F07AE78 = sel_registerName("init");
    __cxa_guard_release(&qword_27F07AE80);
  }

  return qword_27F07AE78;
}

uint64_t MTL::Private::Selector::s_kinitWithArgumentIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AE90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AE90))
  {
    qword_27F07AE88 = sel_registerName("initWithArgumentIndex:");
    __cxa_guard_release(&qword_27F07AE90);
  }

  return qword_27F07AE88;
}

uint64_t MTL::Private::Selector::s_kinitWithDispatchQueue_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AEA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AEA0))
  {
    qword_27F07AE98 = sel_registerName("initWithDispatchQueue:");
    __cxa_guard_release(&qword_27F07AEA0);
  }

  return qword_27F07AE98;
}

uint64_t MTL::Private::Selector::s_kinitWithFunctionName_nodes_outputNode_attributes_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AEB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AEB0))
  {
    qword_27F07AEA8 = sel_registerName("initWithFunctionName:nodes:outputNode:attributes:");
    __cxa_guard_release(&qword_27F07AEB0);
  }

  return qword_27F07AEA8;
}

uint64_t MTL::Private::Selector::s_kinitWithName_arguments_controlDependencies_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AEC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AEC0))
  {
    qword_27F07AEB8 = sel_registerName("initWithName:arguments:controlDependencies:");
    __cxa_guard_release(&qword_27F07AEC0);
  }

  return qword_27F07AEB8;
}

uint64_t MTL::Private::Selector::s_kinitWithSampleCount_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AED0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AED0))
  {
    qword_27F07AEC8 = sel_registerName("initWithSampleCount:");
    __cxa_guard_release(&qword_27F07AED0);
  }

  return qword_27F07AEC8;
}

uint64_t MTL::Private::Selector::s_kinitWithSampleCount_horizontal_vertical_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AEE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AEE0))
  {
    qword_27F07AED8 = sel_registerName("initWithSampleCount:horizontal:vertical:");
    __cxa_guard_release(&qword_27F07AEE0);
  }

  return qword_27F07AED8;
}

uint64_t MTL::Private::Selector::s_kinitialCapacity(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AEF0))
  {
    qword_27F07AEE8 = sel_registerName("initialCapacity");
    __cxa_guard_release(&qword_27F07AEF0);
  }

  return qword_27F07AEE8;
}

uint64_t MTL::Private::Selector::s_kinputPrimitiveTopology(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF00))
  {
    qword_27F07AEF8 = sel_registerName("inputPrimitiveTopology");
    __cxa_guard_release(&qword_27F07AF00);
  }

  return qword_27F07AEF8;
}

uint64_t MTL::Private::Selector::s_kinsertDebugCaptureBoundary(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF10))
  {
    qword_27F07AF08 = sel_registerName("insertDebugCaptureBoundary");
    __cxa_guard_release(&qword_27F07AF10);
  }

  return qword_27F07AF08;
}

uint64_t MTL::Private::Selector::s_kinsertDebugSignpost_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF20))
  {
    qword_27F07AF18 = sel_registerName("insertDebugSignpost:");
    __cxa_guard_release(&qword_27F07AF20);
  }

  return qword_27F07AF18;
}

uint64_t MTL::Private::Selector::s_kinsertLibraries(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF30))
  {
    qword_27F07AF28 = sel_registerName("insertLibraries");
    __cxa_guard_release(&qword_27F07AF30);
  }

  return qword_27F07AF28;
}

uint64_t MTL::Private::Selector::s_kinstallName(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF40))
  {
    qword_27F07AF38 = sel_registerName("installName");
    __cxa_guard_release(&qword_27F07AF40);
  }

  return qword_27F07AF38;
}

uint64_t MTL::Private::Selector::s_kinstanceCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF50))
  {
    qword_27F07AF48 = sel_registerName("instanceCount");
    __cxa_guard_release(&qword_27F07AF50);
  }

  return qword_27F07AF48;
}

uint64_t MTL::Private::Selector::s_kinstanceCountBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF60))
  {
    qword_27F07AF58 = sel_registerName("instanceCountBuffer");
    __cxa_guard_release(&qword_27F07AF60);
  }

  return qword_27F07AF58;
}

uint64_t MTL::Private::Selector::s_kinstanceCountBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF70))
  {
    qword_27F07AF68 = sel_registerName("instanceCountBufferOffset");
    __cxa_guard_release(&qword_27F07AF70);
  }

  return qword_27F07AF68;
}

uint64_t MTL::Private::Selector::s_kinstanceDescriptorBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF80))
  {
    qword_27F07AF78 = sel_registerName("instanceDescriptorBuffer");
    __cxa_guard_release(&qword_27F07AF80);
  }

  return qword_27F07AF78;
}

uint64_t MTL::Private::Selector::s_kinstanceDescriptorBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AF90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AF90))
  {
    qword_27F07AF88 = sel_registerName("instanceDescriptorBufferOffset");
    __cxa_guard_release(&qword_27F07AF90);
  }

  return qword_27F07AF88;
}

uint64_t MTL::Private::Selector::s_kinstanceDescriptorStride(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AFA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AFA0))
  {
    qword_27F07AF98 = sel_registerName("instanceDescriptorStride");
    __cxa_guard_release(&qword_27F07AFA0);
  }

  return qword_27F07AF98;
}

uint64_t MTL::Private::Selector::s_kinstanceDescriptorType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AFB0))
  {
    qword_27F07AFA8 = sel_registerName("instanceDescriptorType");
    __cxa_guard_release(&qword_27F07AFB0);
  }

  return qword_27F07AFA8;
}

uint64_t MTL::Private::Selector::s_kinstanceTransformationMatrixLayout(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AFC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AFC0))
  {
    qword_27F07AFB8 = sel_registerName("instanceTransformationMatrixLayout");
    __cxa_guard_release(&qword_27F07AFC0);
  }

  return qword_27F07AFB8;
}

uint64_t MTL::Private::Selector::s_kinstancedAccelerationStructures(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AFD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AFD0))
  {
    qword_27F07AFC8 = sel_registerName("instancedAccelerationStructures");
    __cxa_guard_release(&qword_27F07AFD0);
  }

  return qword_27F07AFC8;
}

uint64_t MTL::Private::Selector::s_kintersectionFunctionTableDescriptor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AFE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AFE0))
  {
    qword_27F07AFD8 = sel_registerName("intersectionFunctionTableDescriptor");
    __cxa_guard_release(&qword_27F07AFE0);
  }

  return qword_27F07AFD8;
}

uint64_t MTL::Private::Selector::s_kintersectionFunctionTableOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07AFF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07AFF0))
  {
    qword_27F07AFE8 = sel_registerName("intersectionFunctionTableOffset");
    __cxa_guard_release(&qword_27F07AFF0);
  }

  return qword_27F07AFE8;
}

uint64_t MTL::Private::Selector::s_kiosurface(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B000, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B000))
  {
    qword_27F07AFF8 = sel_registerName("iosurface");
    __cxa_guard_release(&qword_27F07B000);
  }

  return qword_27F07AFF8;
}

uint64_t MTL::Private::Selector::s_kiosurfacePlane(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B010, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B010))
  {
    qword_27F07B008 = sel_registerName("iosurfacePlane");
    __cxa_guard_release(&qword_27F07B010);
  }

  return qword_27F07B008;
}

uint64_t MTL::Private::Selector::s_kisActive(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B020, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B020))
  {
    qword_27F07B018 = sel_registerName("isActive");
    __cxa_guard_release(&qword_27F07B020);
  }

  return qword_27F07B018;
}

uint64_t MTL::Private::Selector::s_kisAliasable(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B030, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B030))
  {
    qword_27F07B028 = sel_registerName("isAliasable");
    __cxa_guard_release(&qword_27F07B030);
  }

  return qword_27F07B028;
}

uint64_t MTL::Private::Selector::s_kisAlphaToCoverageEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B040, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B040))
  {
    qword_27F07B038 = sel_registerName("isAlphaToCoverageEnabled");
    __cxa_guard_release(&qword_27F07B040);
  }

  return qword_27F07B038;
}

uint64_t MTL::Private::Selector::s_kisAlphaToOneEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B050, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B050))
  {
    qword_27F07B048 = sel_registerName("isAlphaToOneEnabled");
    __cxa_guard_release(&qword_27F07B050);
  }

  return qword_27F07B048;
}

uint64_t MTL::Private::Selector::s_kisArgument(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B060, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B060))
  {
    qword_27F07B058 = sel_registerName("isArgument");
    __cxa_guard_release(&qword_27F07B060);
  }

  return qword_27F07B058;
}

uint64_t MTL::Private::Selector::s_kisBlendingEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B070, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B070))
  {
    qword_27F07B068 = sel_registerName("isBlendingEnabled");
    __cxa_guard_release(&qword_27F07B070);
  }

  return qword_27F07B068;
}

uint64_t MTL::Private::Selector::s_kisCapturing(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B080, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B080))
  {
    qword_27F07B078 = sel_registerName("isCapturing");
    __cxa_guard_release(&qword_27F07B080);
  }

  return qword_27F07B078;
}

uint64_t MTL::Private::Selector::s_kisDepth24Stencil8PixelFormatSupported(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B090, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B090))
  {
    qword_27F07B088 = sel_registerName("isDepth24Stencil8PixelFormatSupported");
    __cxa_guard_release(&qword_27F07B090);
  }

  return qword_27F07B088;
}

uint64_t MTL::Private::Selector::s_kisDepthTexture(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B0A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B0A0))
  {
    qword_27F07B098 = sel_registerName("isDepthTexture");
    __cxa_guard_release(&qword_27F07B0A0);
  }

  return qword_27F07B098;
}

uint64_t MTL::Private::Selector::s_kisDepthWriteEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B0B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B0B0))
  {
    qword_27F07B0A8 = sel_registerName("isDepthWriteEnabled");
    __cxa_guard_release(&qword_27F07B0B0);
  }

  return qword_27F07B0A8;
}

uint64_t MTL::Private::Selector::s_kisFramebufferOnly(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B0C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B0C0))
  {
    qword_27F07B0B8 = sel_registerName("isFramebufferOnly");
    __cxa_guard_release(&qword_27F07B0C0);
  }

  return qword_27F07B0B8;
}

uint64_t MTL::Private::Selector::s_kisHeadless(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B0D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B0D0))
  {
    qword_27F07B0C8 = sel_registerName("isHeadless");
    __cxa_guard_release(&qword_27F07B0D0);
  }

  return qword_27F07B0C8;
}

uint64_t MTL::Private::Selector::s_kisLowPower(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B0E0))
  {
    qword_27F07B0D8 = sel_registerName("isLowPower");
    __cxa_guard_release(&qword_27F07B0E0);
  }

  return qword_27F07B0D8;
}

uint64_t MTL::Private::Selector::s_kisPatchControlPointData(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B0F0))
  {
    qword_27F07B0E8 = sel_registerName("isPatchControlPointData");
    __cxa_guard_release(&qword_27F07B0F0);
  }

  return qword_27F07B0E8;
}

uint64_t MTL::Private::Selector::s_kisPatchData(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B100))
  {
    qword_27F07B0F8 = sel_registerName("isPatchData");
    __cxa_guard_release(&qword_27F07B100);
  }

  return qword_27F07B0F8;
}

uint64_t MTL::Private::Selector::s_kisRasterizationEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B110))
  {
    qword_27F07B108 = sel_registerName("isRasterizationEnabled");
    __cxa_guard_release(&qword_27F07B110);
  }

  return qword_27F07B108;
}

uint64_t MTL::Private::Selector::s_kisRemovable(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B120))
  {
    qword_27F07B118 = sel_registerName("isRemovable");
    __cxa_guard_release(&qword_27F07B120);
  }

  return qword_27F07B118;
}

uint64_t MTL::Private::Selector::s_kisShareable(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B130))
  {
    qword_27F07B128 = sel_registerName("isShareable");
    __cxa_guard_release(&qword_27F07B130);
  }

  return qword_27F07B128;
}

uint64_t MTL::Private::Selector::s_kisSparse(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B140))
  {
    qword_27F07B138 = sel_registerName("isSparse");
    __cxa_guard_release(&qword_27F07B140);
  }

  return qword_27F07B138;
}

uint64_t MTL::Private::Selector::s_kisTessellationFactorScaleEnabled(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B150))
  {
    qword_27F07B148 = sel_registerName("isTessellationFactorScaleEnabled");
    __cxa_guard_release(&qword_27F07B150);
  }

  return qword_27F07B148;
}

uint64_t MTL::Private::Selector::s_kisUsed(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B160))
  {
    qword_27F07B158 = sel_registerName("isUsed");
    __cxa_guard_release(&qword_27F07B160);
  }

  return qword_27F07B158;
}

uint64_t MTL::Private::Selector::s_kkernelEndTime(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B170))
  {
    qword_27F07B168 = sel_registerName("kernelEndTime");
    __cxa_guard_release(&qword_27F07B170);
  }

  return qword_27F07B168;
}

uint64_t MTL::Private::Selector::s_kkernelStartTime(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B180))
  {
    qword_27F07B178 = sel_registerName("kernelStartTime");
    __cxa_guard_release(&qword_27F07B180);
  }

  return qword_27F07B178;
}

uint64_t MTL::Private::Selector::s_klabel(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B190))
  {
    qword_27F07B188 = sel_registerName("label");
    __cxa_guard_release(&qword_27F07B190);
  }

  return qword_27F07B188;
}

uint64_t MTL::Private::Selector::s_klanguageVersion(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B1A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B1A0))
  {
    qword_27F07B198 = sel_registerName("languageVersion");
    __cxa_guard_release(&qword_27F07B1A0);
  }

  return qword_27F07B198;
}

uint64_t MTL::Private::Selector::s_klayerAtIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B1B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B1B0))
  {
    qword_27F07B1A8 = sel_registerName("layerAtIndex:");
    __cxa_guard_release(&qword_27F07B1B0);
  }

  return qword_27F07B1A8;
}

uint64_t MTL::Private::Selector::s_klayerCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B1C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B1C0))
  {
    qword_27F07B1B8 = sel_registerName("layerCount");
    __cxa_guard_release(&qword_27F07B1C0);
  }

  return qword_27F07B1B8;
}

uint64_t MTL::Private::Selector::s_klayers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B1D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B1D0))
  {
    qword_27F07B1C8 = sel_registerName("layers");
    __cxa_guard_release(&qword_27F07B1D0);
  }

  return qword_27F07B1C8;
}

uint64_t MTL::Private::Selector::s_klayouts(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B1E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B1E0))
  {
    qword_27F07B1D8 = sel_registerName("layouts");
    __cxa_guard_release(&qword_27F07B1E0);
  }

  return qword_27F07B1D8;
}

uint64_t MTL::Private::Selector::s_klength(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B1F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B1F0))
  {
    qword_27F07B1E8 = sel_registerName("length");
    __cxa_guard_release(&qword_27F07B1F0);
  }

  return qword_27F07B1E8;
}

uint64_t MTL::Private::Selector::s_klevel(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B200))
  {
    qword_27F07B1F8 = sel_registerName("level");
    __cxa_guard_release(&qword_27F07B200);
  }

  return qword_27F07B1F8;
}

uint64_t MTL::Private::Selector::s_klibraries(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B210))
  {
    qword_27F07B208 = sel_registerName("libraries");
    __cxa_guard_release(&qword_27F07B210);
  }

  return qword_27F07B208;
}

uint64_t MTL::Private::Selector::s_klibraryType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B220))
  {
    qword_27F07B218 = sel_registerName("libraryType");
    __cxa_guard_release(&qword_27F07B220);
  }

  return qword_27F07B218;
}

uint64_t MTL::Private::Selector::s_kline(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B230))
  {
    qword_27F07B228 = sel_registerName("line");
    __cxa_guard_release(&qword_27F07B230);
  }

  return qword_27F07B228;
}

uint64_t MTL::Private::Selector::s_klinkedFunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B240))
  {
    qword_27F07B238 = sel_registerName("linkedFunctions");
    __cxa_guard_release(&qword_27F07B240);
  }

  return qword_27F07B238;
}

uint64_t MTL::Private::Selector::s_kloadAction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B250, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B250))
  {
    qword_27F07B248 = sel_registerName("loadAction");
    __cxa_guard_release(&qword_27F07B250);
  }

  return qword_27F07B248;
}

uint64_t MTL::Private::Selector::s_kloadBuffer_offset_size_sourceHandle_sourceHandleOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B260))
  {
    qword_27F07B258 = sel_registerName("loadBuffer:offset:size:sourceHandle:sourceHandleOffset:");
    __cxa_guard_release(&qword_27F07B260);
  }

  return qword_27F07B258;
}

uint64_t MTL::Private::Selector::s_kloadBytes_size_sourceHandle_sourceHandleOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B270))
  {
    qword_27F07B268 = sel_registerName("loadBytes:size:sourceHandle:sourceHandleOffset:");
    __cxa_guard_release(&qword_27F07B270);
  }

  return qword_27F07B268;
}

uint64_t MTL::Private::Selector::s_kloadTexture_slice_level_size_sourceBytesPerRow_sourceBytesPerImage_destinationOrigin_sourceHandle_sourceHandleOffset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B280))
  {
    qword_27F07B278 = sel_registerName("loadTexture:slice:level:size:sourceBytesPerRow:sourceBytesPerImage:destinationOrigin:sourceHandle:sourceHandleOffset:");
    __cxa_guard_release(&qword_27F07B280);
  }

  return qword_27F07B278;
}

uint64_t MTL::Private::Selector::s_klocation(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B290))
  {
    qword_27F07B288 = sel_registerName("location");
    __cxa_guard_release(&qword_27F07B290);
  }

  return qword_27F07B288;
}

uint64_t MTL::Private::Selector::s_klocationNumber(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B2A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B2A0))
  {
    qword_27F07B298 = sel_registerName("locationNumber");
    __cxa_guard_release(&qword_27F07B2A0);
  }

  return qword_27F07B298;
}

uint64_t MTL::Private::Selector::s_klodAverage(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B2B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B2B0))
  {
    qword_27F07B2A8 = sel_registerName("lodAverage");
    __cxa_guard_release(&qword_27F07B2B0);
  }

  return qword_27F07B2A8;
}

uint64_t MTL::Private::Selector::s_klodMaxClamp(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B2C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B2C0))
  {
    qword_27F07B2B8 = sel_registerName("lodMaxClamp");
    __cxa_guard_release(&qword_27F07B2C0);
  }

  return qword_27F07B2B8;
}

uint64_t MTL::Private::Selector::s_klodMinClamp(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B2D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B2D0))
  {
    qword_27F07B2C8 = sel_registerName("lodMinClamp");
    __cxa_guard_release(&qword_27F07B2D0);
  }

  return qword_27F07B2C8;
}

uint64_t MTL::Private::Selector::s_klogState(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B2E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B2E0))
  {
    qword_27F07B2D8 = sel_registerName("logState");
    __cxa_guard_release(&qword_27F07B2E0);
  }

  return qword_27F07B2D8;
}

uint64_t MTL::Private::Selector::s_klogs(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B2F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B2F0))
  {
    qword_27F07B2E8 = sel_registerName("logs");
    __cxa_guard_release(&qword_27F07B2F0);
  }

  return qword_27F07B2E8;
}

uint64_t MTL::Private::Selector::s_kmagFilter(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B300, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B300))
  {
    qword_27F07B2F8 = sel_registerName("magFilter");
    __cxa_guard_release(&qword_27F07B300);
  }

  return qword_27F07B2F8;
}

uint64_t MTL::Private::Selector::s_kmakeAliasable(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B310, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B310))
  {
    qword_27F07B308 = sel_registerName("makeAliasable");
    __cxa_guard_release(&qword_27F07B310);
  }

  return qword_27F07B308;
}

uint64_t MTL::Private::Selector::s_kmapPhysicalToScreenCoordinates_forLayer_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B320, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B320))
  {
    qword_27F07B318 = sel_registerName("mapPhysicalToScreenCoordinates:forLayer:");
    __cxa_guard_release(&qword_27F07B320);
  }

  return qword_27F07B318;
}

uint64_t MTL::Private::Selector::s_kmapScreenToPhysicalCoordinates_forLayer_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B330))
  {
    qword_27F07B328 = sel_registerName("mapScreenToPhysicalCoordinates:forLayer:");
    __cxa_guard_release(&qword_27F07B330);
  }

  return qword_27F07B328;
}

uint64_t MTL::Private::Selector::s_kmathFloatingPointFunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B340))
  {
    qword_27F07B338 = sel_registerName("mathFloatingPointFunctions");
    __cxa_guard_release(&qword_27F07B340);
  }

  return qword_27F07B338;
}

uint64_t MTL::Private::Selector::s_kmathMode(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B350, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B350))
  {
    qword_27F07B348 = sel_registerName("mathMode");
    __cxa_guard_release(&qword_27F07B350);
  }

  return qword_27F07B348;
}

uint64_t MTL::Private::Selector::s_kmaxAnisotropy(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B360))
  {
    qword_27F07B358 = sel_registerName("maxAnisotropy");
    __cxa_guard_release(&qword_27F07B360);
  }

  return qword_27F07B358;
}

uint64_t MTL::Private::Selector::s_kmaxArgumentBufferSamplerCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B370))
  {
    qword_27F07B368 = sel_registerName("maxArgumentBufferSamplerCount");
    __cxa_guard_release(&qword_27F07B370);
  }

  return qword_27F07B368;
}

uint64_t MTL::Private::Selector::s_kmaxAvailableSizeWithAlignment_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B380, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B380))
  {
    qword_27F07B378 = sel_registerName("maxAvailableSizeWithAlignment:");
    __cxa_guard_release(&qword_27F07B380);
  }

  return qword_27F07B378;
}

uint64_t MTL::Private::Selector::s_kmaxBufferLength(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B390))
  {
    qword_27F07B388 = sel_registerName("maxBufferLength");
    __cxa_guard_release(&qword_27F07B390);
  }

  return qword_27F07B388;
}

uint64_t MTL::Private::Selector::s_kmaxCallStackDepth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B3A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B3A0))
  {
    qword_27F07B398 = sel_registerName("maxCallStackDepth");
    __cxa_guard_release(&qword_27F07B3A0);
  }

  return qword_27F07B398;
}

uint64_t MTL::Private::Selector::s_kmaxCommandBufferCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B3B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B3B0))
  {
    qword_27F07B3A8 = sel_registerName("maxCommandBufferCount");
    __cxa_guard_release(&qword_27F07B3B0);
  }

  return qword_27F07B3A8;
}

uint64_t MTL::Private::Selector::s_kmaxCommandsInFlight(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B3C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B3C0))
  {
    qword_27F07B3B8 = sel_registerName("maxCommandsInFlight");
    __cxa_guard_release(&qword_27F07B3C0);
  }

  return qword_27F07B3B8;
}

uint64_t MTL::Private::Selector::s_kmaxFragmentBufferBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B3D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B3D0))
  {
    qword_27F07B3C8 = sel_registerName("maxFragmentBufferBindCount");
    __cxa_guard_release(&qword_27F07B3D0);
  }

  return qword_27F07B3C8;
}

uint64_t MTL::Private::Selector::s_kmaxFragmentCallStackDepth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B3E0))
  {
    qword_27F07B3D8 = sel_registerName("maxFragmentCallStackDepth");
    __cxa_guard_release(&qword_27F07B3E0);
  }

  return qword_27F07B3D8;
}

uint64_t MTL::Private::Selector::s_kmaxInstanceCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B3F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B3F0))
  {
    qword_27F07B3E8 = sel_registerName("maxInstanceCount");
    __cxa_guard_release(&qword_27F07B3F0);
  }

  return qword_27F07B3E8;
}

uint64_t MTL::Private::Selector::s_kmaxKernelBufferBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B400))
  {
    qword_27F07B3F8 = sel_registerName("maxKernelBufferBindCount");
    __cxa_guard_release(&qword_27F07B400);
  }

  return qword_27F07B3F8;
}

uint64_t MTL::Private::Selector::s_kmaxKernelThreadgroupMemoryBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B410, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B410))
  {
    qword_27F07B408 = sel_registerName("maxKernelThreadgroupMemoryBindCount");
    __cxa_guard_release(&qword_27F07B410);
  }

  return qword_27F07B408;
}

uint64_t MTL::Private::Selector::s_kmaxMeshBufferBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B420))
  {
    qword_27F07B418 = sel_registerName("maxMeshBufferBindCount");
    __cxa_guard_release(&qword_27F07B420);
  }

  return qword_27F07B418;
}

uint64_t MTL::Private::Selector::s_kmaxMotionTransformCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B430))
  {
    qword_27F07B428 = sel_registerName("maxMotionTransformCount");
    __cxa_guard_release(&qword_27F07B430);
  }

  return qword_27F07B428;
}

uint64_t MTL::Private::Selector::s_kmaxObjectBufferBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B440, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B440))
  {
    qword_27F07B438 = sel_registerName("maxObjectBufferBindCount");
    __cxa_guard_release(&qword_27F07B440);
  }

  return qword_27F07B438;
}

uint64_t MTL::Private::Selector::s_kmaxObjectThreadgroupMemoryBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B450, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B450))
  {
    qword_27F07B448 = sel_registerName("maxObjectThreadgroupMemoryBindCount");
    __cxa_guard_release(&qword_27F07B450);
  }

  return qword_27F07B448;
}

uint64_t MTL::Private::Selector::s_kmaxSampleCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B460, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B460))
  {
    qword_27F07B458 = sel_registerName("maxSampleCount");
    __cxa_guard_release(&qword_27F07B460);
  }

  return qword_27F07B458;
}

uint64_t MTL::Private::Selector::s_kmaxTessellationFactor(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B470, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B470))
  {
    qword_27F07B468 = sel_registerName("maxTessellationFactor");
    __cxa_guard_release(&qword_27F07B470);
  }

  return qword_27F07B468;
}

uint64_t MTL::Private::Selector::s_kmaxThreadgroupMemoryLength(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B480, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B480))
  {
    qword_27F07B478 = sel_registerName("maxThreadgroupMemoryLength");
    __cxa_guard_release(&qword_27F07B480);
  }

  return qword_27F07B478;
}

uint64_t MTL::Private::Selector::s_kmaxThreadsPerThreadgroup(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B490, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B490))
  {
    qword_27F07B488 = sel_registerName("maxThreadsPerThreadgroup");
    __cxa_guard_release(&qword_27F07B490);
  }

  return qword_27F07B488;
}

uint64_t MTL::Private::Selector::s_kmaxTotalThreadgroupsPerMeshGrid(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B4A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B4A0))
  {
    qword_27F07B498 = sel_registerName("maxTotalThreadgroupsPerMeshGrid");
    __cxa_guard_release(&qword_27F07B4A0);
  }

  return qword_27F07B498;
}

uint64_t MTL::Private::Selector::s_kmaxTotalThreadsPerMeshThreadgroup(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B4B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B4B0))
  {
    qword_27F07B4A8 = sel_registerName("maxTotalThreadsPerMeshThreadgroup");
    __cxa_guard_release(&qword_27F07B4B0);
  }

  return qword_27F07B4A8;
}

uint64_t MTL::Private::Selector::s_kmaxTotalThreadsPerObjectThreadgroup(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B4C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B4C0))
  {
    qword_27F07B4B8 = sel_registerName("maxTotalThreadsPerObjectThreadgroup");
    __cxa_guard_release(&qword_27F07B4C0);
  }

  return qword_27F07B4B8;
}

uint64_t MTL::Private::Selector::s_kmaxTotalThreadsPerThreadgroup(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B4D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B4D0))
  {
    qword_27F07B4C8 = sel_registerName("maxTotalThreadsPerThreadgroup");
    __cxa_guard_release(&qword_27F07B4D0);
  }

  return qword_27F07B4C8;
}

uint64_t MTL::Private::Selector::s_kmaxTransferRate(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B4E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B4E0))
  {
    qword_27F07B4D8 = sel_registerName("maxTransferRate");
    __cxa_guard_release(&qword_27F07B4E0);
  }

  return qword_27F07B4D8;
}

uint64_t MTL::Private::Selector::s_kmaxVertexAmplificationCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B4F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B4F0))
  {
    qword_27F07B4E8 = sel_registerName("maxVertexAmplificationCount");
    __cxa_guard_release(&qword_27F07B4F0);
  }

  return qword_27F07B4E8;
}

uint64_t MTL::Private::Selector::s_kmaxVertexBufferBindCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B500, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B500))
  {
    qword_27F07B4F8 = sel_registerName("maxVertexBufferBindCount");
    __cxa_guard_release(&qword_27F07B500);
  }

  return qword_27F07B4F8;
}

uint64_t MTL::Private::Selector::s_kmaxVertexCallStackDepth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B510, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B510))
  {
    qword_27F07B508 = sel_registerName("maxVertexCallStackDepth");
    __cxa_guard_release(&qword_27F07B510);
  }

  return qword_27F07B508;
}

uint64_t MTL::Private::Selector::s_kmaximumConcurrentCompilationTaskCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B520, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B520))
  {
    qword_27F07B518 = sel_registerName("maximumConcurrentCompilationTaskCount");
    __cxa_guard_release(&qword_27F07B520);
  }

  return qword_27F07B518;
}

uint64_t MTL::Private::Selector::s_kmemberByName_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B530, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B530))
  {
    qword_27F07B528 = sel_registerName("memberByName:");
    __cxa_guard_release(&qword_27F07B530);
  }

  return qword_27F07B528;
}

uint64_t MTL::Private::Selector::s_kmembers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B540))
  {
    qword_27F07B538 = sel_registerName("members");
    __cxa_guard_release(&qword_27F07B540);
  }

  return qword_27F07B538;
}

uint64_t MTL::Private::Selector::s_kmemoryBarrierWithResources_count_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B550, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B550))
  {
    qword_27F07B548 = sel_registerName("memoryBarrierWithResources:count:");
    __cxa_guard_release(&qword_27F07B550);
  }

  return qword_27F07B548;
}

uint64_t MTL::Private::Selector::s_kmemoryBarrierWithResources_count_afterStages_beforeStages_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B560, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B560))
  {
    qword_27F07B558 = sel_registerName("memoryBarrierWithResources:count:afterStages:beforeStages:");
    __cxa_guard_release(&qword_27F07B560);
  }

  return qword_27F07B558;
}

uint64_t MTL::Private::Selector::s_kmemoryBarrierWithScope_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B570))
  {
    qword_27F07B568 = sel_registerName("memoryBarrierWithScope:");
    __cxa_guard_release(&qword_27F07B570);
  }

  return qword_27F07B568;
}

uint64_t MTL::Private::Selector::s_kmemoryBarrierWithScope_afterStages_beforeStages_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B580, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B580))
  {
    qword_27F07B578 = sel_registerName("memoryBarrierWithScope:afterStages:beforeStages:");
    __cxa_guard_release(&qword_27F07B580);
  }

  return qword_27F07B578;
}

uint64_t MTL::Private::Selector::s_kmeshBindings(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B590))
  {
    qword_27F07B588 = sel_registerName("meshBindings");
    __cxa_guard_release(&qword_27F07B590);
  }

  return qword_27F07B588;
}

uint64_t MTL::Private::Selector::s_kmeshBuffers(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B5A0))
  {
    qword_27F07B598 = sel_registerName("meshBuffers");
    __cxa_guard_release(&qword_27F07B5A0);
  }

  return qword_27F07B598;
}

uint64_t MTL::Private::Selector::s_kmeshFunction(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B5B0))
  {
    qword_27F07B5A8 = sel_registerName("meshFunction");
    __cxa_guard_release(&qword_27F07B5B0);
  }

  return qword_27F07B5A8;
}

uint64_t MTL::Private::Selector::s_kmeshLinkedFunctions(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B5C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B5C0))
  {
    qword_27F07B5B8 = sel_registerName("meshLinkedFunctions");
    __cxa_guard_release(&qword_27F07B5C0);
  }

  return qword_27F07B5B8;
}

uint64_t MTL::Private::Selector::s_kmeshThreadExecutionWidth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B5D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B5D0))
  {
    qword_27F07B5C8 = sel_registerName("meshThreadExecutionWidth");
    __cxa_guard_release(&qword_27F07B5D0);
  }

  return qword_27F07B5C8;
}

uint64_t MTL::Private::Selector::s_kmeshThreadgroupSizeIsMultipleOfThreadExecutionWidth(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B5E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B5E0))
  {
    qword_27F07B5D8 = sel_registerName("meshThreadgroupSizeIsMultipleOfThreadExecutionWidth");
    __cxa_guard_release(&qword_27F07B5E0);
  }

  return qword_27F07B5D8;
}

uint64_t MTL::Private::Selector::s_kminFilter(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B5F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B5F0))
  {
    qword_27F07B5E8 = sel_registerName("minFilter");
    __cxa_guard_release(&qword_27F07B5F0);
  }

  return qword_27F07B5E8;
}

uint64_t MTL::Private::Selector::s_kminimumLinearTextureAlignmentForPixelFormat_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B600, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B600))
  {
    qword_27F07B5F8 = sel_registerName("minimumLinearTextureAlignmentForPixelFormat:");
    __cxa_guard_release(&qword_27F07B600);
  }

  return qword_27F07B5F8;
}

uint64_t MTL::Private::Selector::s_kminimumTextureBufferAlignmentForPixelFormat_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B610, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B610))
  {
    qword_27F07B608 = sel_registerName("minimumTextureBufferAlignmentForPixelFormat:");
    __cxa_guard_release(&qword_27F07B610);
  }

  return qword_27F07B608;
}

uint64_t MTL::Private::Selector::s_kmipFilter(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B620, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B620))
  {
    qword_27F07B618 = sel_registerName("mipFilter");
    __cxa_guard_release(&qword_27F07B620);
  }

  return qword_27F07B618;
}

uint64_t MTL::Private::Selector::s_kmipmapLevelCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B630))
  {
    qword_27F07B628 = sel_registerName("mipmapLevelCount");
    __cxa_guard_release(&qword_27F07B630);
  }

  return qword_27F07B628;
}

uint64_t MTL::Private::Selector::s_kmotionEndBorderMode(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B640, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B640))
  {
    qword_27F07B638 = sel_registerName("motionEndBorderMode");
    __cxa_guard_release(&qword_27F07B640);
  }

  return qword_27F07B638;
}

uint64_t MTL::Private::Selector::s_kmotionEndTime(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B650, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B650))
  {
    qword_27F07B648 = sel_registerName("motionEndTime");
    __cxa_guard_release(&qword_27F07B650);
  }

  return qword_27F07B648;
}

uint64_t MTL::Private::Selector::s_kmotionKeyframeCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B660))
  {
    qword_27F07B658 = sel_registerName("motionKeyframeCount");
    __cxa_guard_release(&qword_27F07B660);
  }

  return qword_27F07B658;
}

uint64_t MTL::Private::Selector::s_kmotionStartBorderMode(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B670, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B670))
  {
    qword_27F07B668 = sel_registerName("motionStartBorderMode");
    __cxa_guard_release(&qword_27F07B670);
  }

  return qword_27F07B668;
}

uint64_t MTL::Private::Selector::s_kmotionStartTime(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B680, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B680))
  {
    qword_27F07B678 = sel_registerName("motionStartTime");
    __cxa_guard_release(&qword_27F07B680);
  }

  return qword_27F07B678;
}

uint64_t MTL::Private::Selector::s_kmotionTransformBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B690))
  {
    qword_27F07B688 = sel_registerName("motionTransformBuffer");
    __cxa_guard_release(&qword_27F07B690);
  }

  return qword_27F07B688;
}

uint64_t MTL::Private::Selector::s_kmotionTransformBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B6A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B6A0))
  {
    qword_27F07B698 = sel_registerName("motionTransformBufferOffset");
    __cxa_guard_release(&qword_27F07B6A0);
  }

  return qword_27F07B698;
}

uint64_t MTL::Private::Selector::s_kmotionTransformCount(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B6B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B6B0))
  {
    qword_27F07B6A8 = sel_registerName("motionTransformCount");
    __cxa_guard_release(&qword_27F07B6B0);
  }

  return qword_27F07B6A8;
}

uint64_t MTL::Private::Selector::s_kmotionTransformCountBuffer(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B6C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B6C0))
  {
    qword_27F07B6B8 = sel_registerName("motionTransformCountBuffer");
    __cxa_guard_release(&qword_27F07B6C0);
  }

  return qword_27F07B6B8;
}

uint64_t MTL::Private::Selector::s_kmotionTransformCountBufferOffset(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B6D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B6D0))
  {
    qword_27F07B6C8 = sel_registerName("motionTransformCountBufferOffset");
    __cxa_guard_release(&qword_27F07B6D0);
  }

  return qword_27F07B6C8;
}

uint64_t MTL::Private::Selector::s_kmotionTransformStride(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B6E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B6E0))
  {
    qword_27F07B6D8 = sel_registerName("motionTransformStride");
    __cxa_guard_release(&qword_27F07B6E0);
  }

  return qword_27F07B6D8;
}

uint64_t MTL::Private::Selector::s_kmotionTransformType(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B6F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B6F0))
  {
    qword_27F07B6E8 = sel_registerName("motionTransformType");
    __cxa_guard_release(&qword_27F07B6F0);
  }

  return qword_27F07B6E8;
}

uint64_t MTL::Private::Selector::s_kmoveTextureMappingsFromTexture_sourceSlice_sourceLevel_sourceOrigin_sourceSize_toTexture_destinationSlice_destinationLevel_destinationOrigin_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B700, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B700))
  {
    qword_27F07B6F8 = sel_registerName("moveTextureMappingsFromTexture:sourceSlice:sourceLevel:sourceOrigin:sourceSize:toTexture:destinationSlice:destinationLevel:destinationOrigin:");
    __cxa_guard_release(&qword_27F07B700);
  }

  return qword_27F07B6F8;
}

uint64_t MTL::Private::Selector::s_kmutability(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B710, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B710))
  {
    qword_27F07B708 = sel_registerName("mutability");
    __cxa_guard_release(&qword_27F07B710);
  }

  return qword_27F07B708;
}

uint64_t MTL::Private::Selector::s_kname(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B720, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B720))
  {
    qword_27F07B718 = sel_registerName("name");
    __cxa_guard_release(&qword_27F07B720);
  }

  return qword_27F07B718;
}

uint64_t MTL::Private::Selector::s_knewAccelerationStructureWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B730))
  {
    qword_27F07B728 = sel_registerName("newAccelerationStructureWithDescriptor:");
    __cxa_guard_release(&qword_27F07B730);
  }

  return qword_27F07B728;
}

uint64_t MTL::Private::Selector::s_knewAccelerationStructureWithDescriptor_offset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B740, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B740))
  {
    qword_27F07B738 = sel_registerName("newAccelerationStructureWithDescriptor:offset:");
    __cxa_guard_release(&qword_27F07B740);
  }

  return qword_27F07B738;
}

uint64_t MTL::Private::Selector::s_knewAccelerationStructureWithSize_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B750, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B750))
  {
    qword_27F07B748 = sel_registerName("newAccelerationStructureWithSize:");
    __cxa_guard_release(&qword_27F07B750);
  }

  return qword_27F07B748;
}

uint64_t MTL::Private::Selector::s_knewAccelerationStructureWithSize_offset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B760, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B760))
  {
    qword_27F07B758 = sel_registerName("newAccelerationStructureWithSize:offset:");
    __cxa_guard_release(&qword_27F07B760);
  }

  return qword_27F07B758;
}

uint64_t MTL::Private::Selector::s_knewArgumentEncoderForBufferAtIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B770))
  {
    qword_27F07B768 = sel_registerName("newArgumentEncoderForBufferAtIndex:");
    __cxa_guard_release(&qword_27F07B770);
  }

  return qword_27F07B768;
}

uint64_t MTL::Private::Selector::s_knewArgumentEncoderWithArguments_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B780))
  {
    qword_27F07B778 = sel_registerName("newArgumentEncoderWithArguments:");
    __cxa_guard_release(&qword_27F07B780);
  }

  return qword_27F07B778;
}

uint64_t MTL::Private::Selector::s_knewArgumentEncoderWithBufferBinding_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B790))
  {
    qword_27F07B788 = sel_registerName("newArgumentEncoderWithBufferBinding:");
    __cxa_guard_release(&qword_27F07B790);
  }

  return qword_27F07B788;
}

uint64_t MTL::Private::Selector::s_knewArgumentEncoderWithBufferIndex_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B7A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B7A0))
  {
    qword_27F07B798 = sel_registerName("newArgumentEncoderWithBufferIndex:");
    __cxa_guard_release(&qword_27F07B7A0);
  }

  return qword_27F07B798;
}

uint64_t MTL::Private::Selector::s_knewArgumentEncoderWithBufferIndex_reflection_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B7B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B7B0))
  {
    qword_27F07B7A8 = sel_registerName("newArgumentEncoderWithBufferIndex:reflection:");
    __cxa_guard_release(&qword_27F07B7B0);
  }

  return qword_27F07B7A8;
}

uint64_t MTL::Private::Selector::s_knewBinaryArchiveWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B7C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B7C0))
  {
    qword_27F07B7B8 = sel_registerName("newBinaryArchiveWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07B7C0);
  }

  return qword_27F07B7B8;
}

uint64_t MTL::Private::Selector::s_knewBufferWithBytes_length_options_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B7D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B7D0))
  {
    qword_27F07B7C8 = sel_registerName("newBufferWithBytes:length:options:");
    __cxa_guard_release(&qword_27F07B7D0);
  }

  return qword_27F07B7C8;
}

uint64_t MTL::Private::Selector::s_knewBufferWithBytesNoCopy_length_options_deallocator_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B7E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B7E0))
  {
    qword_27F07B7D8 = sel_registerName("newBufferWithBytesNoCopy:length:options:deallocator:");
    __cxa_guard_release(&qword_27F07B7E0);
  }

  return qword_27F07B7D8;
}

uint64_t MTL::Private::Selector::s_knewBufferWithLength_options_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B7F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B7F0))
  {
    qword_27F07B7E8 = sel_registerName("newBufferWithLength:options:");
    __cxa_guard_release(&qword_27F07B7F0);
  }

  return qword_27F07B7E8;
}

uint64_t MTL::Private::Selector::s_knewBufferWithLength_options_offset_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B800))
  {
    qword_27F07B7F8 = sel_registerName("newBufferWithLength:options:offset:");
    __cxa_guard_release(&qword_27F07B800);
  }

  return qword_27F07B7F8;
}

uint64_t MTL::Private::Selector::s_knewCaptureScopeWithCommandQueue_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B810, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B810))
  {
    qword_27F07B808 = sel_registerName("newCaptureScopeWithCommandQueue:");
    __cxa_guard_release(&qword_27F07B810);
  }

  return qword_27F07B808;
}

uint64_t MTL::Private::Selector::s_knewCaptureScopeWithDevice_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B820, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B820))
  {
    qword_27F07B818 = sel_registerName("newCaptureScopeWithDevice:");
    __cxa_guard_release(&qword_27F07B820);
  }

  return qword_27F07B818;
}

uint64_t MTL::Private::Selector::s_knewCommandQueue(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B830, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B830))
  {
    qword_27F07B828 = sel_registerName("newCommandQueue");
    __cxa_guard_release(&qword_27F07B830);
  }

  return qword_27F07B828;
}

uint64_t MTL::Private::Selector::s_knewCommandQueueWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B840, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B840))
  {
    qword_27F07B838 = sel_registerName("newCommandQueueWithDescriptor:");
    __cxa_guard_release(&qword_27F07B840);
  }

  return qword_27F07B838;
}

uint64_t MTL::Private::Selector::s_knewCommandQueueWithMaxCommandBufferCount_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B850, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B850))
  {
    qword_27F07B848 = sel_registerName("newCommandQueueWithMaxCommandBufferCount:");
    __cxa_guard_release(&qword_27F07B850);
  }

  return qword_27F07B848;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithAdditionalBinaryFunctions_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B860))
  {
    qword_27F07B858 = sel_registerName("newComputePipelineStateWithAdditionalBinaryFunctions:error:");
    __cxa_guard_release(&qword_27F07B860);
  }

  return qword_27F07B858;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithDescriptor_options_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B870))
  {
    qword_27F07B868 = sel_registerName("newComputePipelineStateWithDescriptor:options:completionHandler:");
    __cxa_guard_release(&qword_27F07B870);
  }

  return qword_27F07B868;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithDescriptor_options_reflection_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B880))
  {
    qword_27F07B878 = sel_registerName("newComputePipelineStateWithDescriptor:options:reflection:error:");
    __cxa_guard_release(&qword_27F07B880);
  }

  return qword_27F07B878;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithFunction_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B890))
  {
    qword_27F07B888 = sel_registerName("newComputePipelineStateWithFunction:completionHandler:");
    __cxa_guard_release(&qword_27F07B890);
  }

  return qword_27F07B888;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithFunction_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B8A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B8A0))
  {
    qword_27F07B898 = sel_registerName("newComputePipelineStateWithFunction:error:");
    __cxa_guard_release(&qword_27F07B8A0);
  }

  return qword_27F07B898;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithFunction_options_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B8B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B8B0))
  {
    qword_27F07B8A8 = sel_registerName("newComputePipelineStateWithFunction:options:completionHandler:");
    __cxa_guard_release(&qword_27F07B8B0);
  }

  return qword_27F07B8A8;
}

uint64_t MTL::Private::Selector::s_knewComputePipelineStateWithFunction_options_reflection_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B8C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B8C0))
  {
    qword_27F07B8B8 = sel_registerName("newComputePipelineStateWithFunction:options:reflection:error:");
    __cxa_guard_release(&qword_27F07B8C0);
  }

  return qword_27F07B8B8;
}

uint64_t MTL::Private::Selector::s_knewCounterSampleBufferWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B8D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B8D0))
  {
    qword_27F07B8C8 = sel_registerName("newCounterSampleBufferWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07B8D0);
  }

  return qword_27F07B8C8;
}

uint64_t MTL::Private::Selector::s_knewDefaultLibrary(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B8E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B8E0))
  {
    qword_27F07B8D8 = sel_registerName("newDefaultLibrary");
    __cxa_guard_release(&qword_27F07B8E0);
  }

  return qword_27F07B8D8;
}

uint64_t MTL::Private::Selector::s_knewDefaultLibraryWithBundle_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B8F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B8F0))
  {
    qword_27F07B8E8 = sel_registerName("newDefaultLibraryWithBundle:error:");
    __cxa_guard_release(&qword_27F07B8F0);
  }

  return qword_27F07B8E8;
}

uint64_t MTL::Private::Selector::s_knewDepthStencilStateWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B900))
  {
    qword_27F07B8F8 = sel_registerName("newDepthStencilStateWithDescriptor:");
    __cxa_guard_release(&qword_27F07B900);
  }

  return qword_27F07B8F8;
}

uint64_t MTL::Private::Selector::s_knewDynamicLibrary_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B910))
  {
    qword_27F07B908 = sel_registerName("newDynamicLibrary:error:");
    __cxa_guard_release(&qword_27F07B910);
  }

  return qword_27F07B908;
}

uint64_t MTL::Private::Selector::s_knewDynamicLibraryWithURL_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B920))
  {
    qword_27F07B918 = sel_registerName("newDynamicLibraryWithURL:error:");
    __cxa_guard_release(&qword_27F07B920);
  }

  return qword_27F07B918;
}

uint64_t MTL::Private::Selector::s_knewEvent(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B930, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B930))
  {
    qword_27F07B928 = sel_registerName("newEvent");
    __cxa_guard_release(&qword_27F07B930);
  }

  return qword_27F07B928;
}

uint64_t MTL::Private::Selector::s_knewFence(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B940))
  {
    qword_27F07B938 = sel_registerName("newFence");
    __cxa_guard_release(&qword_27F07B940);
  }

  return qword_27F07B938;
}

uint64_t MTL::Private::Selector::s_knewFunctionWithDescriptor_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B950, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B950))
  {
    qword_27F07B948 = sel_registerName("newFunctionWithDescriptor:completionHandler:");
    __cxa_guard_release(&qword_27F07B950);
  }

  return qword_27F07B948;
}

uint64_t MTL::Private::Selector::s_knewFunctionWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B960, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B960))
  {
    qword_27F07B958 = sel_registerName("newFunctionWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07B960);
  }

  return qword_27F07B958;
}

uint64_t MTL::Private::Selector::s_knewFunctionWithName_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B970))
  {
    qword_27F07B968 = sel_registerName("newFunctionWithName:");
    __cxa_guard_release(&qword_27F07B970);
  }

  return qword_27F07B968;
}

uint64_t MTL::Private::Selector::s_knewFunctionWithName_constantValues_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B980, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B980))
  {
    qword_27F07B978 = sel_registerName("newFunctionWithName:constantValues:completionHandler:");
    __cxa_guard_release(&qword_27F07B980);
  }

  return qword_27F07B978;
}

uint64_t MTL::Private::Selector::s_knewFunctionWithName_constantValues_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B990, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B990))
  {
    qword_27F07B988 = sel_registerName("newFunctionWithName:constantValues:error:");
    __cxa_guard_release(&qword_27F07B990);
  }

  return qword_27F07B988;
}

uint64_t MTL::Private::Selector::s_knewHeapWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B9A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B9A0))
  {
    qword_27F07B998 = sel_registerName("newHeapWithDescriptor:");
    __cxa_guard_release(&qword_27F07B9A0);
  }

  return qword_27F07B998;
}

uint64_t MTL::Private::Selector::s_knewIOCommandQueueWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B9B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B9B0))
  {
    qword_27F07B9A8 = sel_registerName("newIOCommandQueueWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07B9B0);
  }

  return qword_27F07B9A8;
}

uint64_t MTL::Private::Selector::s_knewIOFileHandleWithURL_compressionMethod_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B9C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B9C0))
  {
    qword_27F07B9B8 = sel_registerName("newIOFileHandleWithURL:compressionMethod:error:");
    __cxa_guard_release(&qword_27F07B9C0);
  }

  return qword_27F07B9B8;
}

uint64_t MTL::Private::Selector::s_knewIOFileHandleWithURL_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B9D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B9D0))
  {
    qword_27F07B9C8 = sel_registerName("newIOFileHandleWithURL:error:");
    __cxa_guard_release(&qword_27F07B9D0);
  }

  return qword_27F07B9C8;
}

uint64_t MTL::Private::Selector::s_knewIOHandleWithURL_compressionMethod_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B9E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B9E0))
  {
    qword_27F07B9D8 = sel_registerName("newIOHandleWithURL:compressionMethod:error:");
    __cxa_guard_release(&qword_27F07B9E0);
  }

  return qword_27F07B9D8;
}

uint64_t MTL::Private::Selector::s_knewIOHandleWithURL_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07B9F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07B9F0))
  {
    qword_27F07B9E8 = sel_registerName("newIOHandleWithURL:error:");
    __cxa_guard_release(&qword_27F07B9F0);
  }

  return qword_27F07B9E8;
}

uint64_t MTL::Private::Selector::s_knewIndirectCommandBufferWithDescriptor_maxCommandCount_options_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA00))
  {
    qword_27F07B9F8 = sel_registerName("newIndirectCommandBufferWithDescriptor:maxCommandCount:options:");
    __cxa_guard_release(&qword_27F07BA00);
  }

  return qword_27F07B9F8;
}

uint64_t MTL::Private::Selector::s_knewIntersectionFunctionTableWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA10))
  {
    qword_27F07BA08 = sel_registerName("newIntersectionFunctionTableWithDescriptor:");
    __cxa_guard_release(&qword_27F07BA10);
  }

  return qword_27F07BA08;
}

uint64_t MTL::Private::Selector::s_knewIntersectionFunctionTableWithDescriptor_stage_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA20))
  {
    qword_27F07BA18 = sel_registerName("newIntersectionFunctionTableWithDescriptor:stage:");
    __cxa_guard_release(&qword_27F07BA20);
  }

  return qword_27F07BA18;
}

uint64_t MTL::Private::Selector::s_knewIntersectionFunctionWithDescriptor_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA30))
  {
    qword_27F07BA28 = sel_registerName("newIntersectionFunctionWithDescriptor:completionHandler:");
    __cxa_guard_release(&qword_27F07BA30);
  }

  return qword_27F07BA28;
}

uint64_t MTL::Private::Selector::s_knewIntersectionFunctionWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA40))
  {
    qword_27F07BA38 = sel_registerName("newIntersectionFunctionWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07BA40);
  }

  return qword_27F07BA38;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithData_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA50))
  {
    qword_27F07BA48 = sel_registerName("newLibraryWithData:error:");
    __cxa_guard_release(&qword_27F07BA50);
  }

  return qword_27F07BA48;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithFile_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA60))
  {
    qword_27F07BA58 = sel_registerName("newLibraryWithFile:error:");
    __cxa_guard_release(&qword_27F07BA60);
  }

  return qword_27F07BA58;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithSource_options_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA70))
  {
    qword_27F07BA68 = sel_registerName("newLibraryWithSource:options:completionHandler:");
    __cxa_guard_release(&qword_27F07BA70);
  }

  return qword_27F07BA68;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithSource_options_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA80))
  {
    qword_27F07BA78 = sel_registerName("newLibraryWithSource:options:error:");
    __cxa_guard_release(&qword_27F07BA80);
  }

  return qword_27F07BA78;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithStitchedDescriptor_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BA90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BA90))
  {
    qword_27F07BA88 = sel_registerName("newLibraryWithStitchedDescriptor:completionHandler:");
    __cxa_guard_release(&qword_27F07BA90);
  }

  return qword_27F07BA88;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithStitchedDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BAA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BAA0))
  {
    qword_27F07BA98 = sel_registerName("newLibraryWithStitchedDescriptor:error:");
    __cxa_guard_release(&qword_27F07BAA0);
  }

  return qword_27F07BA98;
}

uint64_t MTL::Private::Selector::s_knewLibraryWithURL_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BAB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BAB0))
  {
    qword_27F07BAA8 = sel_registerName("newLibraryWithURL:error:");
    __cxa_guard_release(&qword_27F07BAB0);
  }

  return qword_27F07BAA8;
}

uint64_t MTL::Private::Selector::s_knewLogStateWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BAC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BAC0))
  {
    qword_27F07BAB8 = sel_registerName("newLogStateWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07BAC0);
  }

  return qword_27F07BAB8;
}

uint64_t MTL::Private::Selector::s_knewRasterizationRateMapWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BAD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BAD0))
  {
    qword_27F07BAC8 = sel_registerName("newRasterizationRateMapWithDescriptor:");
    __cxa_guard_release(&qword_27F07BAD0);
  }

  return qword_27F07BAC8;
}

uint64_t MTL::Private::Selector::s_knewRemoteBufferViewForDevice_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BAE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BAE0))
  {
    qword_27F07BAD8 = sel_registerName("newRemoteBufferViewForDevice:");
    __cxa_guard_release(&qword_27F07BAE0);
  }

  return qword_27F07BAD8;
}

uint64_t MTL::Private::Selector::s_knewRemoteTextureViewForDevice_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BAF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BAF0))
  {
    qword_27F07BAE8 = sel_registerName("newRemoteTextureViewForDevice:");
    __cxa_guard_release(&qword_27F07BAF0);
  }

  return qword_27F07BAE8;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithAdditionalBinaryFunctions_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB00))
  {
    qword_27F07BAF8 = sel_registerName("newRenderPipelineStateWithAdditionalBinaryFunctions:error:");
    __cxa_guard_release(&qword_27F07BB00);
  }

  return qword_27F07BAF8;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithDescriptor_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB10))
  {
    qword_27F07BB08 = sel_registerName("newRenderPipelineStateWithDescriptor:completionHandler:");
    __cxa_guard_release(&qword_27F07BB10);
  }

  return qword_27F07BB08;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB20))
  {
    qword_27F07BB18 = sel_registerName("newRenderPipelineStateWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07BB20);
  }

  return qword_27F07BB18;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithDescriptor_options_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB30))
  {
    qword_27F07BB28 = sel_registerName("newRenderPipelineStateWithDescriptor:options:completionHandler:");
    __cxa_guard_release(&qword_27F07BB30);
  }

  return qword_27F07BB28;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithDescriptor_options_reflection_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB40))
  {
    qword_27F07BB38 = sel_registerName("newRenderPipelineStateWithDescriptor:options:reflection:error:");
    __cxa_guard_release(&qword_27F07BB40);
  }

  return qword_27F07BB38;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithMeshDescriptor_options_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB50))
  {
    qword_27F07BB48 = sel_registerName("newRenderPipelineStateWithMeshDescriptor:options:completionHandler:");
    __cxa_guard_release(&qword_27F07BB50);
  }

  return qword_27F07BB48;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithMeshDescriptor_options_reflection_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB60))
  {
    qword_27F07BB58 = sel_registerName("newRenderPipelineStateWithMeshDescriptor:options:reflection:error:");
    __cxa_guard_release(&qword_27F07BB60);
  }

  return qword_27F07BB58;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithTileDescriptor_options_completionHandler_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB70))
  {
    qword_27F07BB68 = sel_registerName("newRenderPipelineStateWithTileDescriptor:options:completionHandler:");
    __cxa_guard_release(&qword_27F07BB70);
  }

  return qword_27F07BB68;
}

uint64_t MTL::Private::Selector::s_knewRenderPipelineStateWithTileDescriptor_options_reflection_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB80))
  {
    qword_27F07BB78 = sel_registerName("newRenderPipelineStateWithTileDescriptor:options:reflection:error:");
    __cxa_guard_release(&qword_27F07BB80);
  }

  return qword_27F07BB78;
}

uint64_t MTL::Private::Selector::s_knewResidencySetWithDescriptor_error_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BB90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BB90))
  {
    qword_27F07BB88 = sel_registerName("newResidencySetWithDescriptor:error:");
    __cxa_guard_release(&qword_27F07BB90);
  }

  return qword_27F07BB88;
}

uint64_t MTL::Private::Selector::s_knewSamplerStateWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BBA0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BBA0))
  {
    qword_27F07BB98 = sel_registerName("newSamplerStateWithDescriptor:");
    __cxa_guard_release(&qword_27F07BBA0);
  }

  return qword_27F07BB98;
}

uint64_t MTL::Private::Selector::s_knewScratchBufferWithMinimumSize_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BBB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BBB0))
  {
    qword_27F07BBA8 = sel_registerName("newScratchBufferWithMinimumSize:");
    __cxa_guard_release(&qword_27F07BBB0);
  }

  return qword_27F07BBA8;
}

uint64_t MTL::Private::Selector::s_knewSharedEvent(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BBC0))
  {
    qword_27F07BBB8 = sel_registerName("newSharedEvent");
    __cxa_guard_release(&qword_27F07BBC0);
  }

  return qword_27F07BBB8;
}

uint64_t MTL::Private::Selector::s_knewSharedEventHandle(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BBD0))
  {
    qword_27F07BBC8 = sel_registerName("newSharedEventHandle");
    __cxa_guard_release(&qword_27F07BBD0);
  }

  return qword_27F07BBC8;
}

uint64_t MTL::Private::Selector::s_knewSharedEventWithHandle_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BBE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BBE0))
  {
    qword_27F07BBD8 = sel_registerName("newSharedEventWithHandle:");
    __cxa_guard_release(&qword_27F07BBE0);
  }

  return qword_27F07BBD8;
}

uint64_t MTL::Private::Selector::s_knewSharedTextureHandle(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BBF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BBF0))
  {
    qword_27F07BBE8 = sel_registerName("newSharedTextureHandle");
    __cxa_guard_release(&qword_27F07BBF0);
  }

  return qword_27F07BBE8;
}

uint64_t MTL::Private::Selector::s_knewSharedTextureWithDescriptor_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BC00))
  {
    qword_27F07BBF8 = sel_registerName("newSharedTextureWithDescriptor:");
    __cxa_guard_release(&qword_27F07BC00);
  }

  return qword_27F07BBF8;
}

uint64_t MTL::Private::Selector::s_knewSharedTextureWithHandle_(MTL::Private::Selector *this)
{
  if ((atomic_load_explicit(&qword_27F07BC10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F07BC10))
  {
    qword_27F07BC08 = sel_registerName("newSharedTextureWithHandle:");
    __cxa_guard_release(&qword_27F07BC10);
  }

  return qword_27F07BC08;
}