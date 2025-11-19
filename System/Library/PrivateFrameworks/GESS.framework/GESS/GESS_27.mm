void sub_24BEA4204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEA4290(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v15 = 0uLL;
  v16 = 0;
  v17 = a4;
  sub_24BCC9A1C(&v15, *a2, a2[1], (a2[1] - *a2) >> 2);
  v9 = *(*a1 + 56);
  *v13 = v15;
  v14 = v16;
  v16 = 0;
  v15 = 0uLL;
  v11 = sub_24BF02A98(a5, a6);
  v12 = v10;
  sub_24BECD918();
}

void sub_24BEA4470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *a23, uint64_t a24)
{
  *(v25 + 32) = v24;
  sub_24BCC961C((v26 - 112));
  sub_24BE7F218(v26 - 104);
  if (__p)
  {
    operator delete(__p);
  }

  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (a23)
  {
    operator delete(a23);
  }

  v28 = *v25;
  if (*v25)
  {
    *(v25 + 8) = v28;
    operator delete(v28);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BEA4500@<X0>(const void ***a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = **a1;
  v12 = v10[1] - v11;
  v13 = *a2;
  v14 = a2[1];
  v15 = v14 - *a2;
  if (v12 != v15 || (result = memcmp(v11, *a2, v12), result))
  {
    if (v14 == v13)
    {
      v20 = 1;
      goto LABEL_18;
    }

    v17 = 0;
    v18 = v15 >> 2;
    if ((v15 >> 2) <= 1)
    {
      v18 = 1;
    }

    v19 = -1;
    v20 = 1;
    while (1)
    {
      v21 = *(v13 + 4 * v17);
      if (v21 == -1)
      {
        if ((v19 & 0x80000000) == 0)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          sub_24BD4D730(exception, "[reshape] Reshape can only infer one dimension.");
          goto LABEL_24;
        }

        v19 = v17;
      }

      else
      {
        v20 *= v21;
      }

      if (v18 == ++v17)
      {
        if (v20)
        {
          if ((v19 & 0x80000000) == 0)
          {
            quot = ldiv(v10[6], v20).quot;
            *(v13 + 4 * v19) = quot;
            v20 *= quot;
          }

LABEL_18:
          if (v10[6] == v20)
          {
            v33.__r_.__value_.__r.__words[0] = sub_24BF02A98(a3, a4);
            LODWORD(v33.__r_.__value_.__r.__words[1]) = v23;
            sub_24BECDC00();
          }

          sub_24BCE1268(v32);
          v27 = sub_24BC95264(v32, "[reshape] Cannot reshape array of size ", 39);
          v28 = MEMORY[0x24C2543E0](v27, (*a1)[6]);
          v29 = sub_24BC95264(v28, " into shape ", 12);
          v30 = sub_24BF02DB8(v29, a2);
          sub_24BC95264(v30, ".", 1);
          v31 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v31, &v33);
          v31->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v31, &unk_285F94708, MEMORY[0x277D82610]);
        }

        if ((v19 & 0x80000000) != 0)
        {
          v20 = 0;
          goto LABEL_18;
        }

        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[reshape] Cannot infer the shape of an empty array");
LABEL_24:
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }
    }
  }

  v25 = a1[1];
  *a5 = v10;
  a5[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
  }

  v24 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEA483C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20)
{
  if (*(v22 - 89) < 0)
  {
    operator delete(*(v22 - 112));
    if ((v21 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void sub_24BEA48EC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  sub_24BCC9A1C(v10, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  *__p = *v10;
  v9 = v11;
  v10[1] = 0;
  v11 = 0;
  v10[0] = 0;
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEA4A98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20)
{
  *(v21 - 88) = v20;
  sub_24BCC961C((v21 - 88));
  sub_24BE7F218(v21 - 80);
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

void sub_24BEA4AFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = a1[1];
  if (*a1 != v8)
  {
    v9 = *a1;
    do
    {
      if ((*v9 & 0x80000000) != 0)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        sub_24BD4D730(exception, "[full] Negative dimensions not allowed.");
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      ++v9;
    }

    while (v9 != v8);
  }

  v13[0] = 0;
  v13[1] = 0;
  v14 = 0;
  sub_24BCC9A1C(v13, v7, v8, (v8 - v7) >> 2);
  *__p = *v13;
  v12 = v14;
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  sub_24BF02A98(a4, a5);
  operator new();
}

void sub_24BEA4D4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  *(v25 - 112) = v24;
  sub_24BCC961C((v25 - 112));
  sub_24BE7F218(v25 - 104);
  sub_24BE7F218(&a12);
  sub_24BE7F218(&a9);
  if (a18)
  {
    sub_24BC9EC78(a18);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BEA4DE0@<X0>(uint64_t **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t **a5@<X8>)
{
  v28 = *MEMORY[0x277D85DE8];
  v10 = *a1;
  v11 = **a1;
  v12 = v10[1] - v11;
  v13 = *a2;
  if (v12 != a2[1] - v13 || (result = memcmp(v11, v13, v12), result))
  {
    sub_24BF02B58(v10, a2, &v25);
    if (*(&v25 + 1) - v25 == a2[1] - *a2 && !memcmp(v25, *a2, *(&v25 + 1) - v25))
    {
      v26 = 0;
      v25 = 0uLL;
      v16 = (*a1)[7];
      sub_24BF02A98(a3, a4);
      sub_24BECEDA0();
    }

    sub_24BCE1268(v24);
    v19 = sub_24BC95264(v24, "Cannot broadcast array of shape ", 32);
    v20 = sub_24BF02DB8(v19, *a1);
    v21 = sub_24BC95264(v20, " into shape ", 12);
    v22 = sub_24BF02DB8(v21, a2);
    sub_24BC95264(v22, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v27);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v18 = a1[1];
  *a5 = v10;
  a5[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BEA5088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24)
{
  if (*(v26 - 73) < 0)
  {
    operator delete(*(v26 - 96));
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a23);
      v28 = *(v26 - 128);
      if (v28)
      {
        *(v26 - 120) = v28;
        operator delete(v28);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEA5144(__int128 *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(*a2 + 56);
  v5 = *a1;
  v10 = *(a1 + 2);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *a1 = 0;
  v8 = *a2;
  *__p = v5;
  *a2 = 0;
  a2[1] = 0;
  v6 = sub_24BF02A98(a3, a4);
  sub_24BEA4AFC(__p, &v8, v4 & 0xFFFFFFFFFFLL, v6, v7 | 0x100000000);
}

void sub_24BEA51D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  sub_24BE7F218(&a9);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEA51FC(uint64_t *a1)
{
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *a1, a1[1], (a1[1] - *a1) >> 2);
  sub_24BCD0924();
}

void sub_24BEA52A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEA52D0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[7];
  sub_24BF02A98(a2, a3);

  sub_24BEA51FC(v3);
}

void sub_24BEA5334(uint64_t *a1)
{
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *a1, a1[1], (a1[1] - *a1) >> 2);
  sub_24BCD0924();
}

void sub_24BEA53DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEA5408(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = (*a1)[7];
  sub_24BF02A98(a2, a3);

  sub_24BEA5334(v3);
}

void sub_24BEA546C(int a1, int a2)
{
  v7[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = a1;
  if (a1 >= 1 && a2 > 0)
  {
    v6[0] = a1;
    v6[1] = a2;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9910(__p, v6, v7, 2uLL);
    sub_24BEA51FC(__p);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[eye] N and M must be positive integers.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA58B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_24BCC98C0(&__p);
  sub_24BE7F218(&a9);
  a9 = &a21;
  sub_24BCC961C(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BEA5998(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1;
  v7 = sub_24BF02A98(a5, a6);
  sub_24BEA3040(0x400000007, v7, v8 | 0x100000000, v9, 0.0, v6, 1.0);
}

void sub_24BEA5AF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a15);
  _Unwind_Resume(a1);
}

void sub_24BEA5B3C(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v9 = **a1;
  v10 = (*a1)[1];
  v11 = ((v10 - v9) >> 2) + 1;
  v12 = (v11 & (a2 >> 31)) + a2;
  if (v12 < 0 || v12 >= v11)
  {
    v14 = a2;
    sub_24BCE1268(v23);
    v15 = sub_24BC95264(v23, "[expand_dims] Invalid axis ", 27);
    v16 = MEMORY[0x24C2543C0](v15, v14);
    v17 = sub_24BC95264(v16, " for output array with ", 23);
    v18 = MEMORY[0x24C2543E0](v17, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v18, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v22);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  sub_24BCC9A1C(v23, v9, v10, (v10 - v9) >> 2);
  LODWORD(v22.__r_.__value_.__l.__data_) = 1;
  sub_24BEA7474(v23, v23[0] + 4 * v12, &v22);
  *__p = *v23;
  v21 = v24;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  sub_24BEA4500(a1, __p, a3, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v23[0])
  {
    v23[1] = v23[0];
    operator delete(v23[0]);
  }
}

void sub_24BEA5CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a18);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void sub_24BEA5D70(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEA5F8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEA6018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    sub_24BEA5998(*(*(*a1 + 8) - 8), *(*(*a1 + 8) - 4), a2, *(*a1 + 56) & 0xFFFFFFFFFFLL, a3, a4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[tril] array must be at least 2-D");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA615C(uint64_t **a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = *MEMORY[0x277D85DE8];
  v9 = a1[1];
  v22[0] = *a1;
  v22[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v22, 0, a4, a5, &v23);
  sub_24BE7F218(v22);
  v10 = *(*a2 + 56);
  LODWORD(v26[0]) = v10;
  BYTE4(v26[0]) = BYTE4(v10);
  v11 = *(*a3 + 56);
  LODWORD(v21) = v11;
  BYTE4(v21) = BYTE4(v11);
  v12 = sub_24BE80C80(v26, &v21);
  v26[0] = v23;
  v26[1] = v24;
  if (v24)
  {
    atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a2[1];
  v19[0] = *a2;
  v19[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v19, v12, a4, a5, &v27);
  v14 = a3[1];
  v18[0] = *a3;
  v18[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v18, v12, a4, a5, &v28);
  memset(v20, 0, sizeof(v20));
  sub_24BCC9984(v20, v26, &v29, 3uLL);
  sub_24BEA97F0(v20, a4, a5, &v21);
  v25 = v20;
  sub_24BCC961C(&v25);
  for (i = 4; i != -2; i -= 2)
  {
    sub_24BE7F218(&v26[i]);
  }

  sub_24BE7F218(v18);
  sub_24BE7F218(v19);
  v16 = *v21;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v16, v16[1], (v16[1] - *v16) >> 2);
  sub_24BF02A98(a4, a5);
  operator new();
}

void sub_24BEA6454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 120) = v27;
  sub_24BCC961C((v28 - 120));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v28 - 120) = &a24;
  sub_24BCC961C((v28 - 120));
  sub_24BE7F218(v28 - 144);
  _Unwind_Resume(a1);
}

void sub_24BEA6550(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  if (*(*a1 + 8) - **a1 > 4uLL)
  {
    sub_24BEA5998(*(*(*a1 + 8) - 8), *(*(*a1 + 8) - 4), (a2 - 1), *(*a1 + 56) & 0xFFFFFFFFFFLL, a3, a4);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[triu] array must be at least 2-D");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEA6698(uint64_t **a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = **a1;
  v12 = (*a1)[1];
  v13 = (v12 - v11) >> 2;
  if (((v13 & (a3 >> 31)) + a3) >= v13 - 1)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = (v13 & (a3 >> 31)) + a3;
  }

  if (v12 == v11)
  {
    LODWORD(v31) = 1;
    v35 = 0;
    v36 = 0;
    v34 = 0;
    sub_24BCC9910(&v34, &v31, &v31 + 4, 1uLL);
    sub_24BEA4500(a1, &v34, a4, a5, a6);
    v17 = v34;
    if (!v34)
    {
      return;
    }

    v35 = v34;
    goto LABEL_16;
  }

  v15 = ((v13 & (a2 >> 31)) + a2) & ~(((v13 & (a2 >> 31)) + a2) >> 31);
  if (v14 < v15)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[flatten] start_axis must be less than or equal to end_axis");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (v15 >= v13)
  {
    v20 = a2;
    v21 = (v12 - v11) >> 2;
    sub_24BCE1268(&v31);
    v22 = sub_24BC95264(&v31, "[flatten] Invalid start_axis ", 29);
    v23 = MEMORY[0x24C2543C0](v22, v20);
    v24 = sub_24BC95264(v23, " for array with ", 16);
    v25 = MEMORY[0x24C2543C0](v24, v21);
    sub_24BC95264(v25, " dimensions.", 12);
    v26 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v26, &v30);
    v26->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v26, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (v15 == v14)
  {
    v16 = a1[1];
    *a6 = *a1;
    *(a6 + 8) = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
    }

    return;
  }

  v31 = 0;
  __dst = 0;
  v33 = 0;
  sub_24BEA2D98(&v31, v11, v11 + 4 * v15, v15);
  LODWORD(v30.__r_.__value_.__l.__data_) = -1;
  sub_24BC97D60(&v31, &v30);
  v18 = (**a1 + 4 * v14 + 4);
  sub_24BD05818(&v31, __dst, v18, (*a1)[1], ((*a1)[1] - v18) >> 2);
  __p = 0;
  v28 = 0;
  v29 = 0;
  sub_24BCC9A1C(&__p, v31, __dst, (__dst - v31) >> 2);
  sub_24BEA4500(a1, &__p, a4, a5, a6);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  v17 = v31;
  if (v31)
  {
    __dst = v31;
LABEL_16:
    operator delete(v17);
  }
}

void sub_24BEA6938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a18);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void sub_24BEA6A00(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if ((a2 & 0x100000000) == 0)
  {
    v8 = v7[1];
    if (v8 == *v7)
    {
      sub_24BC923C0();
    }

    v9 = 1.0 / sqrt(*(v8 - 4));
  }

  v10 = v7[7];
  v15 = v10;
  v16 = BYTE4(v10);
  v11 = sub_24BE80D54(&v15, dword_24BFEEC80);
  v12 = *a1;
  if (v11)
  {
    v13 = v12[7] & 0xFFFFFFFFFFLL;
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v12, v12[1], (v12[1] - *v12) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEA6C2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_24BCC961C(&a19);
  sub_24BE7F218(&a20);
  sub_24BE7F218(&a9);
  if (a15)
  {
    sub_24BC9EC78(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEA6C90(uint64_t **a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v41 = 0;
  v42 = 0;
  v40 = &v41;
  v9 = *a2;
  v10 = a2[1];
  if (*a2 == v10)
  {
    v14 = 0;
    v15 = *a2;
  }

  else
  {
    do
    {
      v12 = *v9;
      if (*v9 < 0)
      {
        v13 = (*a1)[1] - **a1;
        v12 += v13 >> 2;
        v39 = v12;
        if (v12 < 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v39 = *v9;
        v13 = (*a1)[1] - **a1;
      }

      if (v12 >= (v13 >> 2))
      {
LABEL_27:
        sub_24BCE1268(&v37);
        v22 = sub_24BC95264(&v37, "[squeeze] Invalid axes ", 23);
        v23 = MEMORY[0x24C2543C0](v22, v39);
        v24 = sub_24BC95264(v23, " for array with ", 16);
        v25 = MEMORY[0x24C2543E0](v24, ((*a1)[1] - **a1) >> 2);
        sub_24BC95264(v25, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v36);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      if (sub_24BD1EEAC(a1, v12) != 1)
      {
        sub_24BCE1268(&v37);
        v27 = sub_24BC95264(&v37, "[squeeze] Cannot squeeze axis ", 30);
        v28 = MEMORY[0x24C2543C0](v27, v39);
        v29 = sub_24BC95264(v28, " with size ", 11);
        v30 = sub_24BD1EEAC(a1, v39);
        v31 = MEMORY[0x24C2543C0](v29, v30);
        sub_24BC95264(v31, " which is not equal to 1.", 25);
        v32 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(v32, &v36);
        v32->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v32, &unk_285F94708, MEMORY[0x277D82610]);
      }

      sub_24BD69100(&v40, &v39);
      ++v9;
    }

    while (v9 != v10);
    v14 = v42;
    v9 = *a2;
    v15 = a2[1];
  }

  if (v14 != v15 - v9)
  {
    v33 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v33, "[squeeze] Received duplicate axes.");
    v33->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v33, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BECD290(&v37, v40, &v41);
  v16 = 0uLL;
  memset(&v36, 0, sizeof(v36));
  v17 = *a1;
  v18 = **a1;
  if ((*a1)[1] == v18)
  {
    v21 = 0;
  }

  else
  {
    v19 = 0;
    v20 = 0;
    do
    {
      if (v20 < ((v38 - v37) >> 2) && v19 == *(v37 + v20))
      {
        ++v20;
      }

      else
      {
        v39 = sub_24BD1EEAC(a1, v19);
        sub_24BC97D60(&v36.__r_.__value_.__l.__data_, &v39);
        v17 = *a1;
        v18 = **a1;
      }

      ++v19;
    }

    while (v19 < (v17[1] - v18) >> 2);
    v16 = *&v36.__r_.__value_.__l.__data_;
    v21 = v36.__r_.__value_.__r.__words[2];
  }

  *__p = v16;
  v35 = v21;
  memset(&v36, 0, sizeof(v36));
  sub_24BEA4500(a1, __p, a3, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v36.__r_.__value_.__r.__words[0])
  {
    v36.__r_.__value_.__l.__size_ = v36.__r_.__value_.__r.__words[0];
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  sub_24BCC8A84(&v40, v41);
}

void sub_24BEA708C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a19);
      sub_24BCC8A84(v22 - 104, *(v22 - 96));
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void sub_24BEA7154(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v10 = **a1;
  v11 = (*a1)[1];
  v12 = v11 - v10;
  v13 = a2;
  if ((a2 & 0x80000000) != 0 && (v13 = (v12 >> 2) + a2, v13 < 0) || v12 >> 2 <= v13)
  {
    v18 = a2;
    sub_24BCE1268(&v28);
    v19 = sub_24BC95264(&v28, "[squeeze] Invalid axis ", 23);
    v20 = MEMORY[0x24C2543C0](v19, v18);
    v21 = sub_24BC95264(v20, " for array with ", 16);
    v22 = MEMORY[0x24C2543E0](v21, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v22, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v27);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v14 = v13;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_24BCC9A1C(&v28, v10, v11, v12 >> 2);
  v15 = v28;
  v16 = v28 + 4 * v14;
  v17 = v29 - (v16 + 4);
  if (v29 != v16 + 4)
  {
    memmove(v16, v16 + 4, v29 - (v16 + 4));
    v15 = v28;
  }

  __p = v15;
  v25 = &v16[v17];
  v26 = v30;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_24BEA4500(a1, &__p, a3, a4, a5);
  if (__p)
  {
    v25 = __p;
    operator delete(__p);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }
}

void sub_24BEA7324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v21 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v21)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v20);
  goto LABEL_6;
}

void sub_24BEA7394(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void ***a4@<X8>)
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  v9 = 0;
  if ((*a1)[1] != **a1)
  {
    LODWORD(v8) = 0;
    do
    {
      if (sub_24BD1EEAC(a1, v8) == 1)
      {
        sub_24BC97D60(&__p, &v9);
      }

      v8 = ++v9;
    }

    while (v8 < ((*a1)[1] - **a1) >> 2);
  }

  sub_24BEA6C90(a1, &__p, a2, a3, a4);
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_24BEA7454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BEA7474(void *a1, char *__src, _DWORD *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_24BC8E01C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      sub_24BC92E0C(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    sub_24BECDE4C(&v24, a3);
    v16 = v25;
    memcpy(v26, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

void sub_24BEA75FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEA7634(const void ***a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  sub_24BECDF4C(&v37, *a2, a2[1]);
  if (v39 != a2[1] - *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[expand_dims] Received duplicate axes.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCC8A84(&v37, v38);
  v10 = *a2;
  v11 = a2[1];
  v12 = (v11 - *a2) >> 2;
  v14 = **a1;
  v13 = (*a1)[1];
  v40 = 0;
  v41 = 0;
  v42 = 0;
  sub_24BCC9A1C(&v40, v10, v11, v12);
  v15 = v40;
  v16 = v41;
  if (v40 != v41)
  {
    v17 = ((v13 - v14) >> 2) + v12;
    v18 = v40;
    do
    {
      v19 = (v17 & (*v18 >> 31)) + *v18;
      *v18 = v19;
      if (v19 < 0 || v19 >= v17)
      {
        sub_24BCE1268(&v37);
        v24 = sub_24BC95264(&v37, "[expand_dims] Invalid axis ", 27);
        v25 = MEMORY[0x24C2543C0](v24, *v18);
        v26 = sub_24BC95264(v25, " for output array with ", 23);
        v27 = MEMORY[0x24C2543E0](v26, ((*a1)[1] - **a1) >> 2);
        sub_24BC95264(v27, " dimensions.", 12);
        v28 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(v28, &v36);
        v28->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v28, &unk_285F94708, MEMORY[0x277D82610]);
      }

      ++v18;
    }

    while (v18 != v16);
  }

  sub_24BECE068(&v37, v15, v16);
  if (v39 != a2[1] - *a2)
  {
    v30 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v30, "[expand_dims] Received duplicate axes.");
    v30->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v30, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BECD290(&v36, v37, &v38);
  v20 = *a1;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  sub_24BCC9A1C(v34, *v20, v20[1], (v20[1] - *v20) >> 2);
  v21 = v36.__r_.__value_.__r.__words[0];
  if (v36.__r_.__value_.__l.__size_ != v36.__r_.__value_.__r.__words[0])
  {
    v22 = 0;
    do
    {
      v23 = v34[0] + 4 * *(v21 + 4 * v22);
      v33 = 1;
      sub_24BEA7474(v34, v23, &v33);
      ++v22;
      v21 = v36.__r_.__value_.__r.__words[0];
    }

    while (v22 < (v36.__r_.__value_.__l.__size_ - v36.__r_.__value_.__r.__words[0]) >> 2);
  }

  *__p = *v34;
  v32 = v35;
  v34[1] = 0;
  v35 = 0;
  v34[0] = 0;
  sub_24BEA4500(a1, __p, a3, a4, a5);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v36.__r_.__value_.__r.__words[0])
  {
    v36.__r_.__value_.__l.__size_ = v36.__r_.__value_.__r.__words[0];
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  sub_24BCC8A84(&v37, v38);
  if (v40)
  {
    v41 = v40;
    operator delete(v40);
  }
}

void sub_24BEA79B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((v24 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a22);
      v27 = *(v25 - 104);
      if (v27)
      {
        *(v25 - 96) = v27;
        operator delete(v27);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v24)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v23);
  goto LABEL_6;
}

void sub_24BEA7AB0(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, const void ***a7@<X8>)
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = *(a2 + 8) - *a2;
  v10 = *a1;
  if (v9 != v10[1] - *v10 || *(a3 + 8) - *a3 != v9 || *(a4 + 8) - *a4 != v9)
  {
    sub_24BCE1268(&v28);
    v21 = sub_24BC95264(&v28, "[slice] Invalid number of indices or strides for ", 49);
    v22 = sub_24BC95264(v21, "array with dimension ", 21);
    v23 = MEMORY[0x24C2543E0](v22, ((*a1)[1] - **a1) >> 2);
    sub_24BC95264(v23, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v27);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BEA7E74(v10, a2, a3, a4, &v28);
  v25 = a7;
  v13 = __s1;
  if (v28 == 1)
  {
    v14 = v30;
    v15 = v30 - __s1;
    goto LABEL_8;
  }

  v16 = *a1;
  v14 = v30;
  v15 = v30 - __s1;
  v17 = **a1;
  if (v30 - __s1 != (*a1)[1] - v17 || memcmp(__s1, v17, v30 - __s1))
  {
LABEL_8:
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v13, v14, v15 >> 2);
    v18 = (*a1)[7];
    sub_24BF02A98(a5, a6);
    sub_24BECE0EC();
  }

  v20 = a1[1];
  *v25 = v16;
  v25[1] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  if (__s1)
  {
    v30 = __s1;
    operator delete(__s1);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_24BEA7DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, void *a29, uint64_t a30)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v31 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (!v31)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v30);
  goto LABEL_6;
}

void sub_24BEA7E74(int **a1@<X0>, int **a2@<X1>, int **a3@<X2>, _DWORD **a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, a1[1] - *a1);
  v10 = *a1;
  v11 = 0;
  v12 = a1[1] - *a1;
  if (v12)
  {
    v13 = v12 >> 2;
    v14 = *a2;
    v15 = *a3;
    v16 = *a4;
    v17 = __p;
    if (v13 <= 1)
    {
      v13 = 1;
    }

    do
    {
      v19 = *v10++;
      v18 = v19;
      v20 = (v19 & (*v14 >> 31)) + *v14;
      v21 = (v19 & (*v15 >> 31)) + *v15;
      if ((*v16 & 0x80000000) != 0)
      {
        v25 = v18 - 1;
        if (v18 - 1 >= v20)
        {
          v25 = v20;
        }

        if (v21 < 0)
        {
          v26 = -1;
        }

        else
        {
          v26 = v21;
        }

        *v14 = v25;
        if (v26 < v25)
        {
          v25 = v26;
        }

        *v15 = v25;
        v24 = (*v14 + ~(*v16 + v25)) / -*v16;
        v11 = 1;
      }

      else
      {
        if (v18 < v20)
        {
          v20 = v18;
        }

        v22 = v20 & ~(v20 >> 31);
        if (v18 >= v21)
        {
          v18 = v21;
        }

        v23 = v18 & ~(v18 >> 31);
        *v14 = v22;
        if (v23 <= v22)
        {
          v23 = v22;
        }

        *v15 = v23;
        v24 = (v23 + ~*v14 + *v16) / *v16;
      }

      *v17 = v24;
      if (v24 == 1)
      {
        *v16 = 1;
      }

      ++v17;
      ++v16;
      ++v15;
      ++v14;
      --v13;
    }

    while (v13);
  }

  *a5 = v11;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 8) = 0;
  sub_24BCC9A1C(a5 + 8, __p, v28, (v28 - __p) >> 2);
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }
}

void sub_24BEA8004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEA8020(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, const void ***a6@<X8>)
{
  *v15 = *a2;
  v16 = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v13 = *a3;
  v14 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  sub_24BD0E524(__p, ((*a1)[1] - **a1) >> 2);
  v10 = sub_24BF02A98(a4, a5);
  sub_24BEA7AB0(a1, v15, v13, __p, v10, v11 | 0x100000000, a6);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v13[0])
  {
    v13[1] = v13[0];
    operator delete(v13[0]);
  }

  if (v15[0])
  {
    v15[1] = v15[0];
    operator delete(v15[0]);
  }
}

void sub_24BEA8110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEA8154(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t **a8@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  v10 = *(a3 + 8) - *a3;
  v11 = *a1;
  if (v10 != *(v11 + 8) - *v11 || *(a4 + 8) - *a4 != v10 || *(a5 + 8) - *a5 != v10)
  {
    sub_24BCE1268(&v26);
    v18 = sub_24BC95264(&v26, "[slice] Invalid number of indices or strides for ", 49);
    v19 = sub_24BC95264(v18, "array with dimension ", 21);
    v20 = MEMORY[0x24C2543E0](v19, (*(*a1 + 8) - **a1) >> 2);
    sub_24BC95264(v20, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v29);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BEA7E74(v11, a3, a4, a5, &v26);
  sub_24BEA4DE0(a2, &v27, a6, a7, &v24);
  v15 = *a1;
  if ((v26 & 1) != 0 || v28 - v27 != *(v15 + 8) - *v15 || memcmp(v27, *v15, v28 - v27))
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 2);
    v16 = *(*a1 + 56);
    sub_24BF02A98(a6, a7);
    sub_24BECE374();
  }

  v23[0] = v24;
  v23[1] = v25;
  if (v25)
  {
    atomic_fetch_add_explicit(v25 + 1, 1uLL, memory_order_relaxed);
    v15 = *a1;
  }

  sub_24BEA3B14(v23, *(v15 + 56), a6, a7, a8);
  sub_24BE7F218(v23);
  sub_24BE7F218(&v24);
  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void sub_24BEA84B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, void *__p, uint64_t a28)
{
  if (*(v30 - 97) < 0)
  {
    operator delete(*(v30 - 120));
    if ((v29 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a26);
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v28);
  goto LABEL_6;
}

void sub_24BEA85A4(uint64_t *a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t **a7@<X8>)
{
  v14 = (*(*a1 + 8) - **a1) >> 2;
  v21 = 1;
  sub_24BD0E524(v22, v14);
  *v19 = *a3;
  v20 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  *v17 = *a4;
  v18 = *(a4 + 16);
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *a4 = 0;
  *__p = *v22;
  v16 = v23;
  v22[1] = 0;
  v23 = 0;
  v22[0] = 0;
  sub_24BEA8154(a1, a2, v19, v17, __p, a5, a6, a7);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v17[0])
  {
    v17[1] = v17[0];
    operator delete(v17[0]);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v22[0])
  {
    v22[1] = v22[0];
    operator delete(v22[0]);
  }
}

void sub_24BEA86CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a17)
  {
    operator delete(a17);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEA8718(uint64_t a1@<X0>, int **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v79[31] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  v9 = *(*a1 + 8) - **a1;
  if (a3 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = (v9 >> 2) + a3;
  }

  v76 = v10;
  if (v10 >= v9 >> 2)
  {
    sub_24BCE1268(&v77);
    v54 = sub_24BC95264(&v77, "Invalid axis (", 14);
    v55 = MEMORY[0x24C2543C0](v54, a3);
    v56 = sub_24BC95264(v55, ") passed to split", 17);
    v57 = sub_24BC95264(v56, " for array with shape ", 22);
    v58 = sub_24BF02DB8(v57, *a1);
    sub_24BC95264(v58, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v75);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v13 = *a2;
  v12 = a2[1];
  if (*a2 != v12)
  {
    if ((v12 - v13) <= 0x27)
    {
      v16 = (v13 + 1);
      while (v16 != v12)
      {
        v18 = *(v16 - 1);
        v17 = *v16;
        v16 += 4;
        if (v17 < v18)
        {
          goto LABEL_20;
        }
      }

      if (*v13 >= 1)
      {
        v20 = *(v12 - 1);
        v21 = sub_24BD1EEAC(a1, v10);
        v8 = *a1;
        if (v20 < v21)
        {
          v22 = a2[1] - *a2;
          v23 = v8[7];
          LODWORD(v75.__r_.__value_.__l.__data_) = v23;
          v75.__r_.__value_.__s.__data_[4] = BYTE4(v23);
          sub_24BECE5FC(&v77, v22 + 1);
          v24 = *a1;
          sub_24BDC10C0(&v75, a2[1] - *a2 + 1);
          v25 = *a2;
          v26 = v75.__r_.__value_.__r.__words[0];
          *(*v75.__r_.__value_.__l.__data_ + 4 * v10) = **a2;
          v27 = a2[1] - v25;
          if (v27 >= 2)
          {
            v28 = (v26 + 24);
            v29 = v25 + 1;
            v30 = v27 - 1;
            do
            {
              v31 = *v28;
              v28 += 3;
              *(v31 + 4 * v10) = *v29 - *(v29 - 1);
              ++v29;
              --v30;
            }

            while (v30);
          }

          v32 = sub_24BD1EEAC(a1, v10) - *(a2[1] - 1);
          v73 = v75.__r_.__value_.__r.__words[0];
          v33 = *&v75.__r_.__value_.__r.__words[1];
          *(*(v75.__r_.__value_.__l.__size_ - 24) + 4 * v10) = v32;
          v74 = v33;
          memset(&v75, 0, sizeof(v75));
          v70 = sub_24BF02A98(a4, a5);
          v71 = v34;
          sub_24BECE680();
        }
      }
    }

LABEL_20:
    *a6 = 0;
    a6[1] = 0;
    a6[2] = 0;
    memset(&v75, 0, sizeof(v75));
    sub_24BCC9A1C(&v75, *v8, v8[1], (v8[1] - *v8) >> 2);
    v35 = (*(*a1 + 8) - **a1) >> 2;
    LODWORD(v77) = 0;
    sub_24BD0E524(&v68, v35);
    v36 = *a1;
    v66[1] = 0;
    v67 = 0;
    v66[0] = 0;
    sub_24BCC9A1C(v66, *v36, v36[1], (v36[1] - *v36) >> 2);
    v37 = *a2;
    v38 = a2[1] - *a2;
    if (v38 == -4)
    {
      v39 = v66[0];
      if (!v66[0])
      {
        goto LABEL_44;
      }
    }

    else
    {
      v40 = 0;
      v41 = v38 >> 2;
      do
      {
        if (v41 <= v40)
        {
          v42 = sub_24BD1EEAC(a1, v10);
        }

        else
        {
          v42 = v37[v40];
        }

        *(v66[0] + v10) = v42;
        v64 = 0;
        v65 = 0;
        v63 = 0;
        sub_24BCC9A1C(&v63, v68, v69, (v69 - v68) >> 2);
        __p = 0;
        v61 = 0;
        v62 = 0;
        sub_24BCC9A1C(&__p, v66[0], v66[1], (v66[1] - v66[0]) >> 2);
        v43 = sub_24BF02A98(a4, a5);
        sub_24BEA8020(a1, &v63, &__p, v43, v44 | 0x100000000, &v72);
        v46 = a6[1];
        v45 = a6[2];
        if (v46 >= v45)
        {
          v48 = (v46 - *a6) >> 4;
          if ((v48 + 1) >> 60)
          {
            sub_24BC8E01C();
          }

          v49 = v45 - *a6;
          v50 = v49 >> 3;
          if (v49 >> 3 <= (v48 + 1))
          {
            v50 = v48 + 1;
          }

          if (v49 >= 0x7FFFFFFFFFFFFFF0)
          {
            v51 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v51 = v50;
          }

          v79[2] = a6;
          if (v51)
          {
            sub_24BCB53E8(a6, v51);
          }

          v77 = 0;
          v78 = (16 * v48);
          v79[1] = 0;
          *v78 = v72;
          v72 = 0uLL;
          v79[0] = 16 * v48 + 16;
          sub_24BCC9818(a6, &v77);
          v47 = a6[1];
          sub_24BCC98C0(&v77);
        }

        else
        {
          *v46 = v72;
          v47 = v46 + 1;
          v72 = 0uLL;
        }

        a6[1] = v47;
        sub_24BE7F218(&v72);
        if (__p)
        {
          v61 = __p;
          operator delete(__p);
        }

        if (v63)
        {
          v64 = v63;
          operator delete(v63);
        }

        v39 = v66[0];
        *(v68 + v10) = *(v66[0] + v10);
        ++v40;
        v37 = *a2;
        v41 = a2[1] - *a2;
      }

      while (v41 + 1 > v40);
    }

    v66[1] = v39;
    operator delete(v39);
LABEL_44:
    if (v68)
    {
      v69 = v68;
      operator delete(v68);
    }

    if (v75.__r_.__value_.__r.__words[0])
    {
      v75.__r_.__value_.__l.__size_ = v75.__r_.__value_.__r.__words[0];
      operator delete(v75.__r_.__value_.__l.__data_);
    }

    goto LABEL_48;
  }

  v19 = *(a1 + 8);
  v77 = v8;
  v78 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  *a6 = 0;
  a6[1] = 0;
  a6[2] = 0;
  sub_24BCC9984(a6, &v77, v79, 1uLL);
  sub_24BE7F218(&v77);
LABEL_48:
  v52 = *MEMORY[0x277D85DE8];
}

void sub_24BEA8D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, char a36, uint64_t a37, void *a38, uint64_t a39)
{
  if (a33 < 0)
  {
    operator delete(__p);
    if ((v40 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a38);
      _Unwind_Resume(a1);
    }
  }

  else if (!v40)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v39);
  goto LABEL_6;
}

void sub_24BEA8EEC(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v9 = (*a1)[1] - **a1;
  v10 = (v9 >> 2) + a3;
  if (a3 >= 0)
  {
    v10 = a3;
  }

  if (v10 >= v9 >> 2)
  {
    sub_24BCE1268(&__p);
    v27 = sub_24BC95264(&__p, "Invalid axis ", 13);
    v28 = MEMORY[0x24C2543C0](v27, a3);
    v29 = sub_24BC95264(v28, " passed to split", 16);
    v30 = sub_24BC95264(v29, " for array with shape ", 22);
    v31 = sub_24BF02DB8(v30, *a1);
    sub_24BC95264(v31, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v41);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v14 = sub_24BD1EEAC(a1, a3);
  v15 = ldiv(v14, a2);
  if (v15.rem)
  {
    sub_24BCE1268(&__p);
    v33 = sub_24BC95264(&__p, "Array split does not result in sub arrays with equal size:", 58);
    v34 = sub_24BC95264(v33, " attempting ", 12);
    v35 = MEMORY[0x24C2543C0](v34, a2);
    v36 = sub_24BC95264(v35, " splits along axis ", 19);
    v37 = MEMORY[0x24C2543C0](v36, a3);
    v38 = sub_24BC95264(v37, " for shape ", 11);
    v39 = sub_24BF02DB8(v38, *a1);
    sub_24BC95264(v39, ".", 1);
    v40 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v40, &v41);
    v40->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v40, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BC94F74(&__p, a2 - 1);
  if (v43 != __p)
  {
    v16 = (v43 - __p) >> 2;
    if (v16 <= 1)
    {
      v16 = 1;
    }

    v17 = vdupq_n_s64(v16 - 1);
    v18 = (v16 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v19 = xmmword_24BFBC5E0;
    v20 = xmmword_24BFBC5B0;
    v21 = __p + 8;
    v22 = vdupq_n_s64(1uLL);
    v23 = vdupq_n_s64(4uLL);
    do
    {
      v24 = vmovn_s64(vcgeq_u64(v17, v20));
      v25 = vaddq_s64(v20, v22);
      if (vuzp1_s16(v24, *v17.i8).u8[0])
      {
        *(v21 - 2) = v25.i32[0] * LODWORD(v15.quot);
      }

      if (vuzp1_s16(v24, *&v17).i8[2])
      {
        *(v21 - 1) = v25.i32[2] * LODWORD(v15.quot);
      }

      v26 = vaddq_s64(v19, v22);
      if (vuzp1_s16(*&v17, vmovn_s64(vcgeq_u64(v17, *&v19))).i32[1])
      {
        *v21 = v26.i32[0] * LODWORD(v15.quot);
        v21[1] = v26.i32[2] * LODWORD(v15.quot);
      }

      v19 = vaddq_s64(v19, v23);
      v20 = vaddq_s64(v20, v23);
      v21 += 4;
      v18 -= 4;
    }

    while (v18);
  }

  sub_24BEA8718(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v43 = __p;
    operator delete(__p);
  }
}

void sub_24BEA924C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BEA92A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BEA9298);
}

void sub_24BEA92B8(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_24BF02A98(a3, a4);

  sub_24BEA8EEC(a1, a2, 0, v9, v8 | 0x100000000, a5);
}

void sub_24BEA9320(const void ****a1@<X0>, char a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a2;
  v10 = *(a3 + 23);
  if ((*(a3 + 23) & 0x80000000) == 0)
  {
    if (v10 != 2)
    {
      goto LABEL_52;
    }

    v11 = a3;
    if (*a3 == 31096)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (a3[1] != 2 || **a3 != 31096)
  {
    if (a3[1] != 2)
    {
      goto LABEL_52;
    }

    v11 = *a3;
LABEL_9:
    if (*v11 == 27241)
    {
      goto LABEL_10;
    }

LABEL_52:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[meshgrid] Invalid indexing value. Valid values are 'xy' and 'ij'.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

LABEL_10:
  v13 = *a1;
  v12 = a1[1];
  a6[1] = 0;
  a6[2] = 0;
  *a6 = 0;
  v14 = v12 - v13;
  v15 = v14 >> 4;
  if (v14)
  {
    v39 = a3;
    v16 = 0;
    v17 = 0;
    if (v15 <= 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = v14 >> 4;
    }

    do
    {
      *v51 = 1;
      sub_24BD0E524(v50, v15);
      v19 = v50[0];
      *(v50[0] + v17) = -1;
      v20 = *a1;
      __p = v19;
      v48 = *&v50[1];
      memset(v50, 0, 24);
      sub_24BEA4500(&v20[v16], &__p, a4, a5, &v49);
      v22 = a6[1];
      v21 = a6[2];
      if (v22 >= v21)
      {
        v24 = (v22 - *a6) >> 4;
        if ((v24 + 1) >> 60)
        {
          sub_24BC8E01C();
        }

        v25 = v21 - *a6;
        v26 = v25 >> 3;
        if (v25 >> 3 <= (v24 + 1))
        {
          v26 = v24 + 1;
        }

        if (v25 >= 0x7FFFFFFFFFFFFFF0)
        {
          v27 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v26;
        }

        v53 = a6;
        if (v27)
        {
          sub_24BCB53E8(a6, v27);
        }

        *v51 = 0;
        *&v51[8] = 16 * v24;
        v52 = 0;
        **&v51[8] = v49;
        v49 = 0uLL;
        *&v51[16] = 16 * v24 + 16;
        sub_24BCC9818(a6, v51);
        v23 = a6[1];
        sub_24BCC98C0(v51);
      }

      else
      {
        *v22 = v49;
        v23 = v22 + 1;
        v49 = 0uLL;
      }

      a6[1] = v23;
      sub_24BE7F218(&v49);
      if (__p)
      {
        *&v48 = __p;
        operator delete(__p);
      }

      if (v50[0])
      {
        v50[1] = v50[0];
        operator delete(v50[0]);
      }

      ++v17;
      v16 += 2;
    }

    while (v18 != v17);
    a3 = v39;
    v10 = *(v39 + 23);
    v7 = a2;
  }

  if ((v10 & 0x80) != 0)
  {
    if (a3[1] != 2)
    {
      goto LABEL_48;
    }

    a3 = *a3;
  }

  else if (v10 != 2)
  {
    goto LABEL_48;
  }

  if (v15 >= 2 && *a3 == 31096)
  {
    LODWORD(v50[0]) = 1;
    sub_24BD0E524(v51, v15);
    v28 = *a1;
    v29 = *v51;
    *(*v51 + 4) = (**a1)[6];
    v45 = 0;
    v46 = 0;
    v44 = 0;
    sub_24BCC9A1C(&v44, v29, *&v51[8], (*&v51[8] - v29) >> 2);
    sub_24BEA4500(v28, &v44, a4, a5, v50);
    v30 = *a6;
    v31 = *v50;
    v50[0] = 0;
    v50[1] = 0;
    v32 = *(v30 + 8);
    *v30 = v31;
    if (v32)
    {
      sub_24BC9EC78(v32);
    }

    sub_24BE7F218(v50);
    if (v44)
    {
      v45 = v44;
      operator delete(v44);
    }

    v33 = *v51;
    *(*v51 + 4) = 1;
    v34 = *a1 + 2;
    *v33 = (*v34)[6];
    v42 = v33;
    v43 = *&v51[8];
    memset(v51, 0, sizeof(v51));
    sub_24BEA4500(v34, &v42, a4, a5, v50);
    v35 = *a6;
    v36 = *v50;
    v50[0] = 0;
    v50[1] = 0;
    v37 = *(v35 + 24);
    *(v35 + 16) = v36;
    if (v37)
    {
      sub_24BC9EC78(v37);
    }

    sub_24BE7F218(v50);
    if (v42)
    {
      *&v43 = v42;
      operator delete(v42);
    }

    if (*v51)
    {
      *&v51[8] = *v51;
      operator delete(*v51);
    }
  }

LABEL_48:
  if ((v7 & 1) == 0)
  {
    sub_24BEA97F0(a6, a4, a5, v51);
    sub_24BCC97B8(a6);
    *a6 = *v51;
    a6[2] = *&v51[16];
    memset(v51, 0, sizeof(v51));
    v50[0] = v51;
    sub_24BCC961C(v50);
  }
}

void sub_24BEA9734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  v26 = *(v24 - 128);
  if (v26)
  {
    *(v24 - 120) = v26;
    operator delete(v26);
  }

  sub_24BCC961C(&a23);
  _Unwind_Resume(a1);
}

void sub_24BEA97F0(uint64_t ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v7 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    v10 = 0;
  }

  else
  {
    do
    {
      sub_24BF02B58(__p, *v7, &v21);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = v21;
      v20 = v22;
      v7 += 2;
    }

    while (v7 != v8);
    v7 = *a1;
    v8 = a1[1];
    v10 = v21;
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v7 != v8)
  {
    do
    {
      sub_24BEA4DE0(v7, __p, a2, a3, &v18);
      v12 = a4[1];
      v11 = a4[2];
      if (v12 >= v11)
      {
        v14 = (v12 - *a4) >> 4;
        if ((v14 + 1) >> 60)
        {
          sub_24BC8E01C();
        }

        v15 = v11 - *a4;
        v16 = v15 >> 3;
        if (v15 >> 3 <= (v14 + 1))
        {
          v16 = v14 + 1;
        }

        if (v15 >= 0x7FFFFFFFFFFFFFF0)
        {
          v17 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v17 = v16;
        }

        v24 = a4;
        if (v17)
        {
          sub_24BCB53E8(a4, v17);
        }

        *&v21 = 0;
        *(&v21 + 1) = 16 * v14;
        v23 = 0;
        **(&v21 + 1) = v18;
        v18 = 0uLL;
        v22 = 16 * v14 + 16;
        sub_24BCC9818(a4, &v21);
        v13 = a4[1];
        sub_24BCC98C0(&v21);
      }

      else
      {
        *v12 = v18;
        v13 = v12 + 1;
        v18 = 0uLL;
      }

      a4[1] = v13;
      sub_24BE7F218(&v18);
      v7 += 2;
    }

    while (v7 != v8);
    v10 = __p[0];
  }

  if (v10)
  {
    __p[1] = v10;
    operator delete(v10);
  }
}

void sub_24BEA9998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_24BE7F218(&a9);
  sub_24BCC961C(&a9);
  if (__p)
  {
    a12 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *sub_24BEA99EC@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v7 = *(a2 + 16);
  if ((v7 & 1) == 0 && (*(a3 + 16) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "At most one of a_min and a_max may be None");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v8 = result[1];
  *a6 = *result;
  a6[1] = v8;
  if (!v8)
  {
    if (!v7)
    {
      goto LABEL_8;
    }

LABEL_7:
    sub_24BEA9B4C(a6, a2, a4, a5);
  }

  atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  if (*(a2 + 16))
  {
    goto LABEL_7;
  }

LABEL_8:
  if (*(a3 + 16) == 1)
  {
    sub_24BEA9DF4(a6, a3, a4, a5);
  }

  return result;
}

void sub_24BEA9B4C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEA9D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEA9DF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEAA010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEAA09C(uint64_t ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1[1] != *a1)
  {
    v6 = **a1;
    v7 = v6[1] - *v6;
    if (a2 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = (v7 >> 2) + a2;
    }

    if (v8 < v7 >> 2)
    {
      v42[0] = 0;
      v42[1] = 0;
      v43 = 0;
      sub_24BCC9A1C(v42, *v6, v6[1], (v6[1] - *v6) >> 2);
      v11 = v42[0];
      *(v42[0] + v8) = 0;
      v12 = *a1;
      v13 = a1[1];
      while (v12 != v13)
      {
        v14 = *v12;
        v15 = **v12;
        v16 = (*v12)[1];
        if (v16 - v15 != v42[1] - v11)
        {
          sub_24BCE1268(v45);
          v27 = sub_24BC95264(v45, "[concatenate] All the input arrays must have the same number of ", 64);
          v28 = sub_24BC95264(v27, "dimensions. However, got arrays with dimensions ", 48);
          v29 = MEMORY[0x24C2543E0](v28, (v42[1] - v42[0]) >> 2);
          v30 = sub_24BC95264(v29, " and ", 5);
          v31 = MEMORY[0x24C2543E0](v30, ((*v12)[1] - **v12) >> 2);
          sub_24BC95264(v31, ".", 1);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(exception, &v44);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
        }

        if (v16 != v15)
        {
          v17 = 0;
          do
          {
            if (v8 != v17)
            {
              v18 = sub_24BD1EEAC(v12, v17);
              if (v18 != *(v42[0] + v17))
              {
                sub_24BCE1268(v45);
                v20 = sub_24BC95264(v45, "[concatenate] All the input array dimensions must match exactly ", 64);
                sub_24BC95264(v20, "except for the concatenation axis. However, the provided shapes are ", 68);
                v21 = *a1;
                v22 = a1[1];
                if (*a1 != v22)
                {
                  do
                  {
                    v23 = sub_24BF02DB8(v45, *v21);
                    sub_24BC95264(v23, ", ", 2);
                    v21 += 2;
                  }

                  while (v21 != v22);
                }

                v24 = sub_24BC95264(v45, "and the concatenation axis is ", 30);
                v25 = MEMORY[0x24C2543C0](v24, a2);
                sub_24BC95264(v25, ".", 1);
                v26 = __cxa_allocate_exception(0x10uLL);
                std::stringbuf::str();
                std::logic_error::logic_error(v26, &v44);
                v26->__vftable = (MEMORY[0x277D828F8] + 16);
                __cxa_throw(v26, &unk_285F94708, MEMORY[0x277D82610]);
              }

              v14 = *v12;
              v15 = **v12;
            }

            ++v17;
          }

          while (v17 < (v14[1] - v15) >> 2);
        }

        v19 = sub_24BD1EEAC(v12, v8);
        v11 = v42[0];
        *(v42[0] + v8) += v19;
        v12 += 2;
      }

      sub_24BF02AE4(a1);
      *__p = *v42;
      v41 = v43;
      v42[1] = 0;
      v43 = 0;
      v42[0] = 0;
      sub_24BF02A98(a3, a4);
      operator new();
    }

    sub_24BCE1268(v45);
    v34 = sub_24BC95264(v45, "[concatenate] Invalid axis (", 28);
    v35 = MEMORY[0x24C2543C0](v34, a2);
    v36 = sub_24BC95264(v35, ") passed to concatenate", 23);
    v37 = sub_24BC95264(v36, " for array with shape ", 22);
    v38 = sub_24BF02DB8(v37, **a1);
    sub_24BC95264(v38, ".", 1);
    v39 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v39, &v44);
    v39->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v39, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v33 = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(v33, "[concatenate] No arrays provided for concatenation");
  __cxa_throw(v33, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEAA5D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((v44 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a29);
      _Unwind_Resume(a1);
    }
  }

  else if (!v44)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v43);
  goto LABEL_6;
}

void sub_24BEAA818(const void ****a1, uint64_t a2, uint64_t a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v12 = -1;
      v14 = 0;
      v15 = 0;
      __p = 0;
      sub_24BCC9910(&__p, &v12, &__p, 1uLL);
      sub_24BEA4500(v5, &__p, a2, a3, &v16);
      v7 = v18;
      if (v18 >= v19)
      {
        v9 = (v18 - v17) >> 4;
        if ((v9 + 1) >> 60)
        {
          sub_24BC8E01C();
        }

        v10 = (v19 - v17) >> 3;
        if (v10 <= v9 + 1)
        {
          v10 = v9 + 1;
        }

        if (v19 - v17 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        v24 = &v17;
        if (v11)
        {
          sub_24BCB53E8(&v17, v11);
        }

        v20 = 0;
        v21 = (16 * v9);
        v23 = 0;
        *v21 = v16;
        v16 = 0uLL;
        v22 = 16 * v9 + 16;
        sub_24BCC9818(&v17, &v20);
        v8 = v18;
        sub_24BCC98C0(&v20);
      }

      else
      {
        *v18 = v16;
        v8 = v7 + 16;
        v16 = 0uLL;
      }

      v18 = v8;
      sub_24BE7F218(&v16);
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }

  sub_24BEAA09C(&v17, 0, a2, a3);
}

void sub_24BEAA9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  a15 = &a17;
  sub_24BCC961C(&a15);
  _Unwind_Resume(a1);
}

void sub_24BEAAA18(const void ****a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 == a1[1])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "No arrays provided for stacking");
  }

  else
  {
    if (sub_24BF02E74(a1))
    {
      v8 = sub_24BF02F00(a2, (((**a1)[1] - ***a1) >> 2) + 1);
      v18 = 0;
      v19 = 0;
      v20 = 0;
      sub_24BE9CDA0(&v18, (a1[1] - *a1) >> 4);
      v9 = *a1;
      for (i = a1[1]; v9 != i; v9 += 2)
      {
        sub_24BEA5B3C(v9, v8, a3, a4, &v17);
        v11 = v19;
        if (v19 >= v20)
        {
          v13 = (v19 - v18) >> 4;
          if ((v13 + 1) >> 60)
          {
            sub_24BC8E01C();
          }

          v14 = (v20 - v18) >> 3;
          if (v14 <= v13 + 1)
          {
            v14 = v13 + 1;
          }

          if (v20 - v18 >= 0x7FFFFFFFFFFFFFF0)
          {
            v15 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          v25 = &v18;
          if (v15)
          {
            sub_24BCB53E8(&v18, v15);
          }

          v21 = 0;
          v22 = (16 * v13);
          v24 = 0;
          *v22 = v17;
          v17 = 0uLL;
          v23 = 16 * v13 + 16;
          sub_24BCC9818(&v18, &v21);
          v12 = v19;
          sub_24BCC98C0(&v21);
        }

        else
        {
          *v19 = v17;
          v12 = v11 + 16;
          v17 = 0uLL;
        }

        v19 = v12;
        sub_24BE7F218(&v17);
      }

      sub_24BEAA09C(&v18, a2, a3, a4);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "All arrays must have the same shape");
  }

  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEAAC98(const void ***a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v11 = sub_24BF02F00(a3, ((*a1)[1] - **a1) >> 2);
  if (a2 < 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[repeat] Number of repeats cannot be negative");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (a2 == 1)
  {
    v13 = a1[1];
    *a6 = *a1;
    *(a6 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else if (a2)
  {
    v14 = v11;
    v15 = *a1;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    sub_24BCC9A1C(&v31, *v15, v15[1], (v15[1] - *v15) >> 2);
    sub_24BEAAF40(&v31, v31 + 4 * v14 + 4, &v34);
    sub_24BEA5B3C(a1, (v14 + 1), a4, a5, a6);
    sub_24BEA4DE0(a6, &v31, a4, a5, &v30);
    v16 = 4 * v14;
    v17 = v30;
    v30 = 0uLL;
    v18 = *(a6 + 8);
    *a6 = v17;
    if (v18)
    {
      sub_24BC9EC78(v18);
    }

    sub_24BE7F218(&v30);
    v19 = v31;
    v20 = v31 + v16;
    v21 = v31 + v16 + 4;
    v22 = v20 + 8;
    v23 = v32 - v22;
    if (v32 != v22)
    {
      memmove(v21, v22, v32 - v22);
      v19 = v31;
    }

    v32 = &v21[v23];
    *&v19[4 * v14] *= v34;
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_24BCC9A1C(&__p, v19, &v21[v23], (&v21[v23] - v19) >> 2);
    sub_24BEA4500(a6, &__p, a4, a5, &v30);
    v24 = v30;
    v30 = 0uLL;
    v25 = *(a6 + 8);
    *a6 = v24;
    if (v25)
    {
      sub_24BC9EC78(v25);
    }

    sub_24BE7F218(&v30);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    if (v31)
    {
      v32 = v31;
      operator delete(v31);
    }
  }

  else
  {
    v12 = (*a1)[7] & 0xFFFFFFFFFFLL;

    sub_24BE7ED40(a6, 0, 0, v12);
  }
}

void sub_24BEAAEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v16);
  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

char *sub_24BEAAF40(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_24BC8E01C();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v29 = a1;
    if (v14)
    {
      sub_24BC92E0C(a1, v14);
    }

    v26 = 0;
    v27 = 4 * v15;
    v28 = (4 * v15);
    sub_24BECDE4C(&v26, a3);
    v16 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v17 = *a1;
    v18 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v19 = v4 - v17;
    v20 = (v18 - (v4 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v21;
    *(&v28 + 1) = v22;
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 4;
  }

  else
  {
    v8 = __src + 4;
    if (v6 < 4)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 4;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 4, __src, v6 - v8);
      v9 = a1[1];
    }

    v23 = v9 <= a3 || v4 > a3;
    v24 = 4;
    if (v23)
    {
      v24 = 0;
    }

    *v4 = *&a3[v24];
  }

  return v4;
}

void sub_24BEAB0DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_24BEAB114@<D0>(uint64_t **a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BEA6698(a1, 0, (((*a1)[1] - **a1) >> 2) - 1, a3, a4, v10);
  sub_24BEAAC98(v10, a2, 0, a3, a4, a5);
  *&result = sub_24BE7F218(v10).n128_u64[0];
  return result;
}

void sub_24BEAB1B0(const void ***a1@<X0>, char **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  v10 = *a1;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  sub_24BCC9A1C(&v39, *v10, v10[1], (v10[1] - *v10) >> 2);
  v11 = *a2;
  v12 = (a2[1] - *a2) >> 2;
  v13 = v39;
  v14 = v40;
  v15 = (v40 - v39) >> 2;
  if (v15 > v12)
  {
    LODWORD(v36) = 1;
    sub_24BEAB510(a2, v11, v15 - v12, &v36);
    v13 = v39;
    v14 = v40;
    v12 = (a2[1] - *a2) >> 2;
    v15 = (v40 - v39) >> 2;
  }

  if (v12 > v15)
  {
    LODWORD(v36) = 1;
    sub_24BEAB510(&v39, v13, v12 - v15, &v36);
    v13 = v39;
    v14 = v40;
  }

  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  if (v14 == v13)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v16 = 0;
    v17 = 0;
    do
    {
      if (*&(*a2)[v16] != 1)
      {
        LODWORD(v29) = 1;
        sub_24BC97D60(&v36, &v29);
        sub_24BC97D60(&v33, &(*a2)[v16]);
        v13 = v39;
      }

      sub_24BC97D60(&v36, &v13[v16]);
      sub_24BC97D60(&v33, &v39[v16]);
      LODWORD(v29) = *&v39[v16] * *&(*a2)[v16];
      sub_24BC97D60(&v30, &v29);
      ++v17;
      v13 = v39;
      v16 += 4;
    }

    while (v17 < (v40 - v39) >> 2);
    v18 = v36;
    v19 = v37;
  }

  v27 = 0;
  v28 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, v18, v19, (v19 - v18) >> 2);
  sub_24BEA4500(a1, &__p, a3, a4, &v29);
  if (__p)
  {
    v27 = __p;
    operator delete(__p);
  }

  sub_24BEA4DE0(&v29, &v33, a3, a4, &v25);
  v20 = v25;
  v25 = 0uLL;
  v21 = *(&v29 + 1);
  v29 = v20;
  if (v21)
  {
    sub_24BC9EC78(v21);
  }

  sub_24BE7F218(&v25);
  v23 = 0;
  v24 = 0;
  v22 = 0;
  sub_24BCC9A1C(&v22, v30, v31, (v31 - v30) >> 2);
  sub_24BEA4500(&v29, &v22, a3, a4, a5);
  if (v22)
  {
    v23 = v22;
    operator delete(v22);
  }

  sub_24BE7F218(&v29);
  if (v30)
  {
    v31 = v30;
    operator delete(v30);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (v36)
  {
    v37 = v36;
    operator delete(v36);
  }

  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }
}

void sub_24BEAB468(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25)
{
  v27 = *(v25 - 104);
  if (v27)
  {
    *(v25 - 96) = v27;
    operator delete(v27);
  }

  _Unwind_Resume(exception_object);
}

char *sub_24BEAB510(void *a1, char *__src, unint64_t a3, char *a4)
{
  if (!a3)
  {
    return __src;
  }

  v5 = a4;
  v8 = a1[1];
  v9 = a1[2];
  if (a3 <= (v9 - v8) >> 2)
  {
    v15 = v8 - __src;
    v16 = a1[1];
    v17 = a3;
    if (a3 <= (v8 - __src) >> 2)
    {
      goto LABEL_21;
    }

    v18 = 0;
    v17 = v15 >> 2;
    v16 = &v8[4 * (a3 - (v15 >> 2))];
    v19 = *a4;
    v20 = (4 * a3 - v15 - 4) >> 2;
    v21 = (v20 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v22 = vdupq_n_s64(v20);
    v23 = v8 + 8;
    do
    {
      v24 = vdupq_n_s64(v18);
      v25 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v25, *v22.i8).u8[0])
      {
        *(v23 - 2) = v19;
      }

      if (vuzp1_s16(v25, *&v22).i8[2])
      {
        *(v23 - 1) = v19;
      }

      if (vuzp1_s16(*&v22, vmovn_s64(vcgeq_u64(v22, vorrq_s8(v24, xmmword_24BFBC5E0)))).i32[1])
      {
        *v23 = v19;
        v23[1] = v19;
      }

      v18 += 4;
      v23 += 4;
    }

    while (v21 != v18);
    a1[1] = v16;
    if (v8 != __src)
    {
LABEL_21:
      v26 = &__src[4 * a3];
      v27 = &v16[-4 * a3];
      v28 = v16;
      if (v27 < v8)
      {
        v28 = v16;
        do
        {
          v29 = *v27;
          v27 += 4;
          *v28 = v29;
          v28 += 4;
        }

        while (v27 < v8);
      }

      a1[1] = v28;
      if (v16 != v26)
      {
        memmove(&__src[4 * a3], __src, v16 - v26);
      }

      if (__src <= v5)
      {
        if (a1[1] <= v5)
        {
          v30 = 0;
        }

        else
        {
          v30 = a3;
        }

        v5 += 4 * v30;
      }

      v31 = 0;
      v32 = *v5;
      v33 = vdupq_n_s64(v17 - 1);
      v34 = __src + 8;
      do
      {
        v35 = vdupq_n_s64(v31);
        v36 = vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v36, *v33.i8).u8[0])
        {
          *(v34 - 2) = v32;
        }

        if (vuzp1_s16(v36, *&v33).i8[2])
        {
          *(v34 - 1) = v32;
        }

        if (vuzp1_s16(*&v33, vmovn_s64(vcgeq_u64(v33, vorrq_s8(v35, xmmword_24BFBC5E0)))).i32[1])
        {
          *v34 = v32;
          v34[1] = v32;
        }

        v31 += 4;
        v34 += 4;
      }

      while (((v17 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v31);
    }

    return __src;
  }

  v10 = *a1;
  v11 = a3 + (&v8[-*a1] >> 2);
  if (v11 >> 62)
  {
    sub_24BC8E01C();
  }

  v12 = __src - v10;
  v13 = v9 - v10;
  if (v13 >> 1 > v11)
  {
    v11 = v13 >> 1;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v14 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  if (v14)
  {
    sub_24BC92E0C(a1, v14);
  }

  v38 = 0;
  v37 = 4 * (v12 >> 2);
  v39 = *a4;
  v40 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
  v41 = vdupq_n_s64(v40);
  v42 = v40 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
  v43 = (v37 + 8);
  do
  {
    v44 = vdupq_n_s64(v38);
    v45 = vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_24BFBC5B0)));
    if (vuzp1_s16(v45, *v41.i8).u8[0])
    {
      *(v43 - 2) = v39;
    }

    if (vuzp1_s16(v45, *&v41).i8[2])
    {
      *(v43 - 1) = v39;
    }

    if (vuzp1_s16(*&v41, vmovn_s64(vcgeq_u64(v41, vorrq_s8(v44, xmmword_24BFBC5E0)))).i32[1])
    {
      *v43 = v39;
      v43[1] = v39;
    }

    v38 += 4;
    v43 += 4;
  }

  while (v42 != v38);
  memcpy((v37 + 4 * a3), __src, a1[1] - __src);
  v46 = *a1;
  v47 = v37 + 4 * a3 + a1[1] - __src;
  a1[1] = __src;
  v48 = (__src - v46);
  v49 = (v37 - (__src - v46));
  memcpy(v49, v46, v48);
  v50 = *a1;
  *a1 = v49;
  a1[1] = v47;
  a1[2] = 0;
  if (v50)
  {
    operator delete(v50);
  }

  return v37;
}

void sub_24BEABDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, char a36)
{
  v38 = *(v36 - 152);
  if (v38)
  {
    *(v36 - 144) = v38;
    operator delete(v38);
  }

  v39 = *(v36 - 128);
  if (v39)
  {
    *(v36 - 120) = v39;
    operator delete(v39);
  }

  v40 = *(v36 - 104);
  if (v40)
  {
    *(v36 - 96) = v40;
    operator delete(v40);
  }

  sub_24BE7F218(v36 - 80);
  _Unwind_Resume(a1);
}

void sub_24BEABF18(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v56[33] = *MEMORY[0x277D85DE8];
  v9 = a2[1] - *a2;
  if (v9 != a3[1] - *a3 || v9 != a4[1] - *a4)
  {
    sub_24BCE1268(v56);
    v44 = sub_24BC95264(v56, "Invalid number of padding sizes passed to pad ", 46);
    v45 = sub_24BC95264(v44, "with axes of size ", 18);
    MEMORY[0x24C2543E0](v45, (a2[1] - *a2) >> 2);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v55);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v16 = *a1;
  memset(&v55, 0, sizeof(v55));
  sub_24BCC9A1C(&v55, *v16, v16[1], (v16[1] - *v16) >> 2);
  v18 = *a2;
  v19 = a2[1] - *a2;
  if (v19)
  {
    v20 = 0;
    v21 = v19 >> 2;
    v22 = *a3;
    v23 = *a4;
    v24 = *a1;
    v25 = v55.__r_.__value_.__r.__words[0];
    if (v21 <= 1)
    {
      v21 = 1;
    }

    do
    {
      v26 = *(v22 + 4 * v20);
      if (v26 < 0)
      {
        sub_24BCE1268(v56);
        v32 = sub_24BC95264(v56, "Invalid low padding size (", 26);
        v33 = MEMORY[0x24C2543C0](v32, *(*a3 + 4 * v20));
        v34 = sub_24BC95264(v33, ") passed to pad", 15);
        v35 = sub_24BC95264(v34, " for axis ", 10);
        v36 = MEMORY[0x24C2543C0](v35, v20);
        sub_24BC95264(v36, ". Padding sizes must be non-negative", 36);
        v37 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(v37, &v54);
        v37->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v37, &unk_285F94708, MEMORY[0x277D82610]);
      }

      v27 = *(v23 + 4 * v20);
      if (v27 < 0)
      {
        sub_24BCE1268(v56);
        v38 = sub_24BC95264(v56, "Invalid high padding size (", 27);
        v39 = MEMORY[0x24C2543C0](v38, *(*a4 + 4 * v20));
        v40 = sub_24BC95264(v39, ") passed to pad", 15);
        v41 = sub_24BC95264(v40, " for axis ", 10);
        v42 = MEMORY[0x24C2543C0](v41, v20);
        sub_24BC95264(v42, ". Padding sizes must be non-negative", 36);
        v43 = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(v43, &v54);
        v43->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v43, &unk_285F94708, MEMORY[0x277D82610]);
      }

      v28 = *(v18 + 4 * v20);
      if ((v28 & 0x80000000) != 0)
      {
        v28 += (v24[1] - *v24) >> 2;
      }

      *(v25 + 4 * v28) += v27 + v26;
      ++v20;
    }

    while (v21 != v20);
  }

  if (*(a6 + 23) < 0)
  {
    if (*(a6 + 8) == 8 && **a6 == 0x746E6174736E6F63)
    {
LABEL_15:
      memset(__p, 0, sizeof(__p));
      sub_24BCC9A1C(__p, v55.__r_.__value_.__l.__data_, v55.__r_.__value_.__l.__size_, (v55.__r_.__value_.__l.__size_ - v55.__r_.__value_.__r.__words[0]) >> 2);
      v31 = *(*a1 + 56);
      sub_24BF02A98(a7, a8);
      sub_24BECE8E4();
    }

    if (*(a6 + 8) != 4)
    {
LABEL_25:
      sub_24BCE1268(v56);
      v47 = sub_24BC95264(v56, "Invalid padding mode (", 22);
      v48 = *(a6 + 23);
      if (v48 >= 0)
      {
        v49 = a6;
      }

      else
      {
        v49 = *a6;
      }

      if (v48 >= 0)
      {
        v50 = *(a6 + 23);
      }

      else
      {
        v50 = *(a6 + 8);
      }

      v51 = sub_24BC95264(v47, v49, v50);
      sub_24BC95264(v51, ") passed to pad", 15);
      v52 = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(v52, &v54);
      v52->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v52, &unk_285F94708, MEMORY[0x277D82610]);
    }

    v30 = *a6;
  }

  else
  {
    v29 = *(a6 + 23);
    v30 = a6;
    if (v29 != 4)
    {
      if (v29 == 8 && *a6 == 0x746E6174736E6F63)
      {
        goto LABEL_15;
      }

      goto LABEL_25;
    }
  }

  if (*v30 == 1701274725)
  {
    sub_24BEAB878(a1, v17, a3, a4, &v55);
  }

  goto LABEL_25;
}

void sub_24BEAC56C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, char a34)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v35 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a34);
      if (a27)
      {
        operator delete(a27);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v35)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v34);
  goto LABEL_6;
}

void sub_24BEAC6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = (*(*a1 + 8) - **a1) >> 2;
  LODWORD(v25[0]) = 0;
  sub_24BD0E524(&v26, v12);
  if (v26 != v27)
  {
    v13 = 0;
    v14 = (v27 - v26 - 4) >> 2;
    v15 = vdupq_n_s64(v14);
    v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = v26 + 8;
    do
    {
      v18 = vdupq_n_s64(v13);
      v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v19, *v15.i8).u8[0])
      {
        *(v17 - 2) = v13;
      }

      if (vuzp1_s16(v19, *&v15).i8[2])
      {
        *(v17 - 1) = v13 + 1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5E0)))).i32[1])
      {
        *v17 = v13 + 2;
        v17[1] = v13 + 3;
      }

      v13 += 4;
      v17 += 4;
    }

    while (v16 != v13);
  }

  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  v20 = *a2;
  v21 = *(a2 + 8);
  while (v20 != v21)
  {
    sub_24BC97D60(v25, v20);
    sub_24BC97D60(v24, v20 + 1);
    v20 += 2;
  }

  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v23 = *(a4 + 16);
  }

  sub_24BEABF18(a1, &v26, v25, v24, a3, __p, a5, a6);
}

void sub_24BEAC8CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  if (a21)
  {
    operator delete(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEAC924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_24BECEB6C(&v13, (*(*a1 + 8) - **a1) >> 2);
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v12 = *(a4 + 16);
  }

  sub_24BEAC6C8(a1, &v13, a3, __p, a5, a6);
}

void sub_24BEAC9F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEACA28(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = (*(*a1 + 8) - **a1) >> 2;
  v14 = a2;
  v15 = a2;
  sub_24BECEB6C(&v16, v11);
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    v13 = *(a4 + 16);
  }

  sub_24BEAC6C8(a1, &v16, a3, __p, a5, a6);
}

void sub_24BEACB00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEACB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v29 = a1;
  v11 = sub_24BEACD5C(&v29, a2);
  v30 = v11;
  result = sub_24BEACD5C(&v29, a3);
  if (v11 != result)
  {
    v14 = result;
    sub_24BC94F74(&v27, (*(*a1 + 8) - **a1) >> 2);
    v15 = v27;
    v16 = v28;
    if (v27 != v28)
    {
      v17 = 0;
      v18 = (v28 - v27 - 4) >> 2;
      v19 = vdupq_n_s64(v18);
      v20 = (v18 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v21 = v27 + 8;
      do
      {
        v22 = vdupq_n_s64(v17);
        v23 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_24BFBC5B0)));
        if (vuzp1_s16(v23, *v19.i8).u8[0])
        {
          *(v21 - 2) = v17;
        }

        if (vuzp1_s16(v23, *&v19).i8[2])
        {
          *(v21 - 1) = v17 + 1;
        }

        if (vuzp1_s16(*&v19, vmovn_s64(vcgeq_u64(v19, vorrq_s8(v22, xmmword_24BFBC5E0)))).i32[1])
        {
          *v21 = v17 + 2;
          v21[1] = v17 + 3;
        }

        v17 += 4;
        v21 += 4;
      }

      while (v20 != v17);
    }

    v24 = &v15[4 * v11];
    v25 = (v16 - (v24 + 4));
    if (v16 != v24 + 4)
    {
      memmove(v24, v24 + 4, v16 - (v24 + 4));
      v15 = v27;
    }

    v28 = &v25[v24];
    sub_24BEAAF40(&v27, &v15[4 * v14], &v30);
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v27, v28, (v28 - v27) >> 2);
    sub_24BEACEBC(a1, __p, a4, a5);
  }

  v13 = *(a1 + 8);
  *a6 = *a1;
  a6[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BEACD24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEACD5C(uint64_t a1, uint64_t a2)
{
  v3 = (*(**a1 + 8) - ***a1) >> 2;
  if (-v3 > a2 || v3 <= a2)
  {
    sub_24BCE1268(v12);
    v6 = sub_24BC95264(v12, "[moveaxis] Invalid axis ", 24);
    v7 = MEMORY[0x24C2543C0](v6, a2);
    v8 = sub_24BC95264(v7, " for array with ", 16);
    v9 = MEMORY[0x24C2543C0](v8, v3);
    sub_24BC95264(v9, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, &unk_285F92800, MEMORY[0x277D825F8]);
  }

  return (v3 & (a2 >> 31)) + a2;
}

void sub_24BEACE74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BEACEBC(uint64_t **a1, unsigned int **a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v9 = a2[1];
  if (*a2 != v9)
  {
    v10 = *a1;
    v11 = *a2;
    do
    {
      v12 = *v11;
      if ((*v11 & 0x80000000) != 0)
      {
        v12 += (v10[1] - *v10) >> 2;
      }

      *v11++ = v12;
    }

    while (v11 != v9);
  }

  v13 = v9 - v8;
  if (v13 == (*a1)[1] - **a1)
  {
    LODWORD(v41[0]) = 0;
    sub_24BD0E524(&v40, v13 >> 2);
    v14 = *a2;
    v15 = a2[1];
    if (*a2 != v15)
    {
      v16 = *a1;
      v17 = v40.__r_.__value_.__r.__words[0];
      v18 = *a2;
      do
      {
        v19 = *v18;
        if ((v19 & 0x80000000) != 0 || v19 >= (v16[1] - *v16) >> 2)
        {
          sub_24BCE1268(v41);
          v26 = sub_24BC95264(v41, "[transpose] Invalid axis (", 26);
          v27 = MEMORY[0x24C2543C0](v26, *v18);
          v28 = sub_24BC95264(v27, ") for array with ", 17);
          v29 = MEMORY[0x24C2543E0](v28, ((*a1)[1] - **a1) >> 2);
          sub_24BC95264(v29, " dimensions.", 12);
          exception = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(exception, &v42);
          exception->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
        }

        if (*(v17 + 4 * v19))
        {
          v31 = __cxa_allocate_exception(0x10uLL);
          std::logic_error::logic_error(v31, "[transpose] Repeat axes not allowed.");
          v31->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v31, &unk_285F94708, MEMORY[0x277D82610]);
        }

        *(v17 + 4 * v19) = 1;
        ++v18;
      }

      while (v18 != v15);
      v20 = (v15 - v14) >> 2;
      v21 = **a1;
      v22 = v40.__r_.__value_.__r.__words[0];
      if (v20 <= 1)
      {
        v20 = 1;
      }

      do
      {
        v23 = *v14;
        v14 += 4;
        *v22++ = *(v21 + 4 * v23);
        --v20;
      }

      while (v20);
    }

    __p = v40;
    memset(&v40, 0, sizeof(v40));
    v24 = (*a1)[7];
    v37 = sub_24BF02A98(a3, a4);
    v38 = v25;
    sub_24BECEBF0();
  }

  sub_24BCE1268(v41);
  v32 = sub_24BC95264(v41, "[transpose] Recived ", 20);
  v33 = MEMORY[0x24C2543E0](v32, a2[1] - *a2);
  v34 = sub_24BC95264(v33, " axes for array with ", 21);
  v35 = MEMORY[0x24C2543E0](v34, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v35, " dimensions.", 12);
  v36 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v36, &v40);
  v36->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v36, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEAD2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, char a28, uint64_t a29)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((v30 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a28);
      _Unwind_Resume(a1);
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v29);
  goto LABEL_6;
}

void sub_24BEAD410(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a1;
  v9 = sub_24BEAD5C8(&v25, a2);
  v10 = sub_24BEAD5C8(&v25, a3);
  sub_24BC94F74(&v22, ((*a1)[1] - **a1) >> 2);
  v11 = v22;
  v12 = v23;
  if (v22 != v23)
  {
    v13 = 0;
    v14 = (v23 - v22 - 4) >> 2;
    v15 = vdupq_n_s64(v14);
    v16 = (v14 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v17 = v22 + 8;
    do
    {
      v18 = vdupq_n_s64(v13);
      v19 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v19, *v15.i8).u8[0])
      {
        *(v17 - 2) = v13;
      }

      if (vuzp1_s16(v19, *&v15).i8[2])
      {
        *(v17 - 1) = v13 + 1;
      }

      if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v18, xmmword_24BFBC5E0)))).i32[1])
      {
        *v17 = v13 + 2;
        v17[1] = v13 + 3;
      }

      v13 += 4;
      v17 += 4;
    }

    while (v16 != v13);
  }

  v20 = v11[v9];
  v11[v9] = v11[v10];
  v11[v10] = v20;
  __p[0] = v11;
  __p[1] = v12;
  __p[2] = v24;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  sub_24BEACEBC(a1, __p, a4, a5);
}

void sub_24BEAD59C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BEAD5C8(uint64_t a1, uint64_t a2)
{
  v3 = (*(**a1 + 8) - ***a1) >> 2;
  if (-v3 > a2 || v3 <= a2)
  {
    sub_24BCE1268(v12);
    v6 = sub_24BC95264(v12, "[swapaxes] Invalid axis ", 24);
    v7 = MEMORY[0x24C2543C0](v6, a2);
    v8 = sub_24BC95264(v7, " for array with ", 16);
    v9 = MEMORY[0x24C2543C0](v8, v3);
    sub_24BC95264(v9, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v11);
    exception->__vftable = (MEMORY[0x277D828E8] + 16);
    __cxa_throw(exception, &unk_285F92800, MEMORY[0x277D825F8]);
  }

  return (v3 & (a2 >> 31)) + a2;
}

void sub_24BEAD6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BEAD728(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  sub_24BC94F74(&v18, ((*a1)[1] - **a1) >> 2);
  v7 = v18;
  v6 = v19;
  if (v19 != v18)
  {
    v8 = 0;
    v9 = (v19 - v18 - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = v19 - 8;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 + 1) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *v12 = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5E0)))).i32[1])
      {
        *(v12 - 1) = v8 + 2;
        *(v12 - 2) = v8 + 3;
      }

      v8 += 4;
      v12 -= 16;
    }

    while (v11 != v8);
  }

  __p[0] = v7;
  __p[1] = v6;
  __p[2] = v20;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v15 = sub_24BF02A98(a2, a3);
  sub_24BEACEBC(a1, __p, v15, v16 | 0x100000000);
}

void sub_24BEAD884(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEAD8B0(uint64_t **a1@<X0>, uint64_t **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  sub_24BF02B58(*a1, *a2, __p);
  sub_24BEA4DE0(a1, __p, a3, a4, v13);
  sub_24BEA4DE0(a2, __p, a3, a4, &v14);
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  sub_24BCC9984(a5, v13, &v15, 2uLL);
  for (i = 2; i != -2; i -= 2)
  {
    sub_24BE7F218(&v13[i]);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_24BEAD9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  v14 = v12 + 16;
  v15 = -32;
  do
  {
    sub_24BE7F218(v14);
    v14 = v16 - 16;
    v15 += 16;
  }

  while (v15);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEADA04(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEADC24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEADCB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEADECC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEADF58(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEAE174(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEAE200(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEAE41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEAE4A8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEAE6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEAE750(const void ***a1, const void ***a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *a2;
  v8 = **a1;
  v9 = v6[1] - v8;
  v10 = **a2;
  if (v9 == v7[1] - v10 && !memcmp(v8, v10, v9))
  {
    v13 = v6[7];
    v22 = v13;
    v23 = BYTE4(v13);
    v14 = v7[7];
    v18 = v14;
    v19 = BYTE4(v14);
    v15 = sub_24BE80C80(&v22, &v18);
    v20 = v15;
    v21 = BYTE4(v15);
    sub_24BE80D54(&v20, &dword_24BFF086C);
    v16 = *a1;
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, *v16, v16[1], (v16[1] - *v16) >> 2);
    sub_24BF02A98(a4, a5);
    operator new();
  }

  sub_24BE80CB4();
  sub_24BECF2F8();
}

void sub_24BEAEA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25)
{
  sub_24BE7F218(&a22);
  a25 = &a14;
  sub_24BCC961C(&a25);
  v27 = v25 - 104;
  v28 = -32;
  do
  {
    sub_24BE7F218(v27);
    v27 = v29 - 16;
    v28 += 16;
  }

  while (v28);
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a12);
  if (a18)
  {
    sub_24BC9EC78(a18);
  }

  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEAEACC(uint64_t **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEB07FC(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEAEC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEAEC28(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  if (sub_24BE80D54(&v9, dword_24BFF8830))
  {
    v7 = *a1;
  }

  else
  {
    v7 = *a1;
    if (*(*a1 + 14))
    {
      sub_24BEADCB0(a1, a1, a2, a3);
    }
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  sub_24BEAED20(__p);
}

void sub_24BEAED04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEAED20(uint64_t a1)
{
  *__p = *a1;
  v2 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  sub_24BECF2F8();
}

void sub_24BEAEDB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, char a10, uint64_t a11, uint64_t a12)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEAEDE8(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (sub_24BE80D54(&v4, dword_24BFF8830))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if (*(*a1 + 14))
    {
      sub_24BEAF19C(a1);
    }
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  sub_24BEAED20(__p);
}

void sub_24BEAEEFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15)
{
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a12);
  _Unwind_Resume(a1);
}

void sub_24BEAEF38(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v13, 0, a3, a4, v14);
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, 0, a3, a4, v12);
  sub_24BEAD8B0(v14, v12, a3, a4, &v15);
  sub_24BE7F218(v12);
  sub_24BE7F218(v11);
  sub_24BE7F218(v14);
  sub_24BE7F218(v13);
  v9 = *v15;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEAF110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 80) = v21;
  sub_24BCC961C((v22 - 80));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 80) = v22 - 64;
  sub_24BCC961C((v22 - 80));
  _Unwind_Resume(a1);
}

void sub_24BEAF19C(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (sub_24BE80D54(&v4, dword_24BFF8830))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if ((*a1)[7])
    {
      sub_24BCCBB70();
    }
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  sub_24BEAED20(__p);
}

void sub_24BEAF2C0(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (sub_24BE80D54(&v4, dword_24BFF8830))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if ((*a1)[7])
    {
      sub_24BCCBB70();
    }
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  sub_24BEAED20(__p);
}

void sub_24BEAF3E4(uint64_t **a1)
{
  v2 = (*a1)[7];
  v4 = v2;
  v5 = BYTE4(v2);
  if (sub_24BE80D54(&v4, dword_24BFF8830))
  {
    v3 = *a1;
  }

  else
  {
    v3 = *a1;
    if (*(*a1 + 14))
    {
      sub_24BEAEDE8(a1);
    }
  }

  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
  sub_24BEAED20(__p);
}

void sub_24BEAF514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, void *__p, uint64_t a17)
{
  sub_24BE7F218(&a14);
  sub_24BE7F218(&a10);
  sub_24BE7F218(&a12);
  _Unwind_Resume(a1);
}

void sub_24BEAF560(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v5 = *a1;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v5, v5[1], (v5[1] - *v5) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEAF708(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19)
{
  sub_24BCC961C(&a19);
  sub_24BE7F218(v19 - 72);
  sub_24BE7F218(&a9);
  if (a15)
  {
    sub_24BC9EC78(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BEAF76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(*a1 + 56);
  v15 = v12;
  v16 = BYTE4(v12);
  result = sub_24BE80D54(&v15, &dword_24BFF086C);
  if (result)
  {
    if ((a2 & 0x100000000) != 0)
    {
      if ((a3 & 0x100000000) != 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_24BEAF9CC(&v15);
      if ((a3 & 0x100000000) != 0)
      {
LABEL_9:
        sub_24BEAEC28(a1, a4, a5);
      }
    }

    sub_24BEAF9CC(&v15);
    goto LABEL_9;
  }

  v14 = *(a1 + 8);
  *a6 = *a1;
  a6[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BEAF970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BE7F218(v11);
  _Unwind_Resume(a1);
}

float sub_24BEAF9CC(_DWORD *a1)
{
  v1 = *a1 - 9;
  if (v1 >= 3)
  {
    sub_24BCE1268(v8);
    v4 = sub_24BC95264(v8, "[nan_to_num] Does not yet support given type: ", 46);
    v5 = sub_24BF031F4(v4, a1);
    sub_24BC95264(v5, ".", 1);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v7);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  return flt_24BFF2224[v1];
}

void sub_24BEAFABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a15);
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_24BEAFF34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va6, a5);
  va_start(va5, a5);
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_copy(va3, va2);
  v14 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  va_copy(va4, va3);
  v17 = va_arg(va4, void);
  v19 = va_arg(va4, void);
  va_copy(va5, va4);
  v20 = va_arg(va5, void);
  v22 = va_arg(va5, void);
  va_copy(va6, va5);
  v23 = va_arg(va6, void);
  v25 = va_arg(va6, void);
  sub_24BE7F218(va);
  sub_24BE7F218(va1);
  sub_24BE7F218(va2);
  sub_24BE7F218(va3);
  sub_24BE7F218(va4);
  sub_24BE7F218(va5);
  sub_24BE7F218(va6);
  sub_24BE7F218(v5);
  sub_24BE7F218(v6 - 112);
  sub_24BE7F218(v6 - 96);
  _Unwind_Resume(a1);
}

void sub_24BEB0080(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[7] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB0284(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  sub_24BE7F218(&a10);
  sub_24BE7F218(v21);
  _Unwind_Resume(a1);
}

void sub_24BEB02F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v10, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v10, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEB050C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEB0598(uint64_t **a1, uint64_t **a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[1];
  v13[0] = *a1;
  v13[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v13, 0, a3, a4, v14);
  v8 = a2[1];
  v11[0] = *a2;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, 0, a3, a4, v12);
  sub_24BEAD8B0(v14, v12, a3, a4, &v15);
  sub_24BE7F218(v12);
  sub_24BE7F218(v11);
  sub_24BE7F218(v14);
  sub_24BE7F218(v13);
  v9 = *v15;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEB0770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 80) = v21;
  sub_24BCC961C((v22 - 80));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 80) = v22 - 64;
  sub_24BCC961C((v22 - 80));
  _Unwind_Resume(a1);
}

void sub_24BEB07FC(uint64_t **a1@<X0>, unsigned int **a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_24BEB0AE8(a2, *a1, v25);
  if (v31 != 1)
  {
    *__p = *v25;
    v23 = v26;
    v25[1] = 0;
    v26 = 0;
    v25[0] = 0;
    v19 = sub_24BF02A98(a4, a5);
    v20 = v12;
    v18 = 0;
    sub_24BECF6E4();
  }

  v11 = a1[1];
  v24[0] = *a1;
  v24[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v24, 0, a4, a5, a6);
  sub_24BE7F218(v24);
  if ((a3 & 1) == 0)
  {
    *v16 = *v29;
    v17 = v30;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    sub_24BEA4500(a6, v16, a4, a5, &v21);
    v13 = v21;
    v21 = 0uLL;
    v14 = *(a6 + 8);
    *a6 = v13;
    if (v14)
    {
      sub_24BC9EC78(v14);
    }

    sub_24BE7F218(&v21);
    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24BEB0A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  *(v30 - 96) = v29;
  sub_24BCC961C((v30 - 96));
  sub_24BE7F218(v30 - 88);
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a29);
  _Unwind_Resume(a1);
}

void sub_24BEB0AE8(unsigned int **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v35[0] = 1;
  v33 = 0;
  v34 = 0;
  v32 = &v33;
  v5 = *a2;
  v4 = a2[1];
  v6 = v4 - *a2;
  v7 = v6 >> 2;
  v8 = *a1;
  v9 = a1[1];
  if (*a1 == v9)
  {
    v14 = 0;
    v15 = *a1;
  }

  else
  {
    v11 = v6 >> 2;
    do
    {
      v12 = *v8;
      v13 = (v11 & (v12 >> 31)) + v12;
      LODWORD(__p[0]) = v13;
      if ((v13 & 0x80000000) != 0 || v7 <= v13)
      {
        sub_24BCE1268(&v29);
        v20 = sub_24BC95264(&v29, "Invalid axis ", 13);
        v21 = MEMORY[0x24C2543C0](v20, v12);
        v22 = sub_24BC95264(v21, " for array with ", 16);
        v23 = MEMORY[0x24C2543E0](v22, v7);
        sub_24BC95264(v23, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v28);
        exception->__vftable = (MEMORY[0x277D828E8] + 16);
        __cxa_throw(exception, &unk_285F92800, MEMORY[0x277D825F8]);
      }

      sub_24BD69100(&v32, __p);
      ++v8;
    }

    while (v8 != v9);
    v14 = v34;
    v8 = *a1;
    v15 = a1[1];
  }

  if (v14 != v15 - v8)
  {
    v25 = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(v25, "Duplicate axes detected in reduction.");
    v25->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v25, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v29 = 0;
  v30 = 0;
  v31 = 0;
  memset(&v28, 0, sizeof(v28));
  if (v4 == v5)
  {
    goto LABEL_21;
  }

  v16 = 0;
  if (v7 <= 1)
  {
    v7 = 1;
  }

  v17 = 1;
  do
  {
    v18 = v33;
    if (!v33)
    {
LABEL_18:
      sub_24BC97D60(&v29, (*a2 + 4 * v16));
      sub_24BC97D60(&v28.__r_.__value_.__l.__data_, (*a2 + 4 * v16));
      goto LABEL_20;
    }

    while (1)
    {
      v19 = *(v18 + 7);
      if (v16 >= v19)
      {
        break;
      }

LABEL_17:
      v18 = *v18;
      if (!v18)
      {
        goto LABEL_18;
      }
    }

    if (v16 > v19)
    {
      ++v18;
      goto LABEL_17;
    }

    LODWORD(__p[0]) = 1;
    sub_24BC97D60(&v29, __p);
LABEL_20:
    v17 &= *(v30 - 1) == *(*a2 + 4 * v16);
    v35[0] = v17;
    ++v16;
  }

  while (v16 != v7);
LABEL_21:
  sub_24BECD290(__p, v32, &v33);
  sub_24BECD164(a3, &v29, __p, &v28, v35);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v28.__r_.__value_.__r.__words[0])
  {
    v28.__r_.__value_.__l.__size_ = v28.__r_.__value_.__r.__words[0];
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (v29)
  {
    v30 = v29;
    operator delete(v29);
  }

  sub_24BCC8A84(&v32, v33);
}

void sub_24BEB0DEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21)
{
  if (a19 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a20);
      sub_24BCC8A84(v23 - 120, *(v23 - 112));
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t sub_24BEB0EA8(uint64_t a1)
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
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void sub_24BEB0EFC(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BEB07FC(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_24BEB0F94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB0FB0(uint64_t **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEB110C(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEB10F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB110C(uint64_t **a1@<X0>, unsigned int **a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  sub_24BEB0AE8(a2, *a1, v25);
  if (v31 != 1)
  {
    *__p = *v25;
    v23 = v26;
    v25[1] = 0;
    v26 = 0;
    v25[0] = 0;
    v19 = sub_24BF02A98(a4, a5);
    v20 = v12;
    v18 = 1;
    sub_24BECF6E4();
  }

  v11 = a1[1];
  v24[0] = *a1;
  v24[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v24, 0, a4, a5, a6);
  sub_24BE7F218(v24);
  if ((a3 & 1) == 0)
  {
    *v16 = *v29;
    v17 = v30;
    v29[1] = 0;
    v30 = 0;
    v29[0] = 0;
    sub_24BEA4500(a6, v16, a4, a5, &v21);
    v13 = v21;
    v21 = 0uLL;
    v14 = *(a6 + 8);
    *a6 = v13;
    if (v14)
    {
      sub_24BC9EC78(v14);
    }

    sub_24BE7F218(&v21);
    if (v16[0])
    {
      v16[1] = v16[0];
      operator delete(v16[0]);
    }
  }

  if (v29[0])
  {
    v29[1] = v29[0];
    operator delete(v29[0]);
  }

  if (v27)
  {
    v28 = v27;
    operator delete(v27);
  }

  if (v25[0])
  {
    v25[1] = v25[0];
    operator delete(v25[0]);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_24BEB1364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  *(v30 - 96) = v29;
  sub_24BCC961C((v30 - 96));
  sub_24BE7F218(v30 - 88);
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a29);
  _Unwind_Resume(a1);
}

void sub_24BEB13FC(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BEB110C(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_24BEB1494(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB14B0(uint64_t **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEB160C(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEB15F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB160C(uint64_t **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  if (*a2 == *(a2 + 8))
  {
    v14 = a1[1];
    *a6 = *a1;
    *(a6 + 8) = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEB0AE8(a2, *a1, v34);
    v11 = (*a1)[7];
    LODWORD(v30) = v11;
    BYTE4(v30) = BYTE4(v11);
    if (sub_24BE80D54(&v30, &dword_24BFF09E8))
    {
      v12 = *a1;
      if (*(*a1 + 60) >= 5u)
      {
        v13 = 8;
      }

      else
      {
        v13 = 7;
      }
    }

    else
    {
      v15 = (*a1)[7];
      LODWORD(v30) = v15;
      BYTE4(v30) = BYTE4(v15);
      v16 = sub_24BE80D54(&v30, &dword_24BFF09EC);
      v12 = *a1;
      v17 = (*a1)[7];
      if (v17)
      {
        v18 = v11;
      }

      else
      {
        v18 = 7;
      }

      v19 = 3;
      if (BYTE4(v17) >= 5u)
      {
        v19 = 4;
      }

      if (v16)
      {
        v13 = v19;
      }

      else
      {
        v13 = v18;
      }
    }

    if (v40 != 1)
    {
      *__p = *v34;
      v32 = v35;
      v34[1] = 0;
      v35 = 0;
      v34[0] = 0;
      v28 = sub_24BF02A98(a4, a5);
      v29 = v21;
      v27 = 2;
      sub_24BECF6E4();
    }

    v20 = a1[1];
    v33[0] = v12;
    v33[1] = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(v33, v13, a4, a5, a6);
    sub_24BE7F218(v33);
    if ((a3 & 1) == 0)
    {
      *v25 = *v38;
      v26 = v39;
      v38[1] = 0;
      v39 = 0;
      v38[0] = 0;
      sub_24BEA4500(a6, v25, a4, a5, &v30);
      v22 = v30;
      v30 = 0uLL;
      v23 = *(a6 + 8);
      *a6 = v22;
      if (v23)
      {
        sub_24BC9EC78(v23);
      }

      sub_24BE7F218(&v30);
      if (v25[0])
      {
        v25[1] = v25[0];
        operator delete(v25[0]);
      }
    }

    if (v38[0])
    {
      v38[1] = v38[0];
      operator delete(v38[0]);
    }

    if (v36)
    {
      v37 = v36;
      operator delete(v36);
    }

    if (v34[0])
    {
      v34[1] = v34[0];
      operator delete(v34[0]);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

void sub_24BEB1930(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  *(v30 - 96) = v29;
  sub_24BCC961C((v30 - 96));
  sub_24BE7F218(v30 - 88);
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a29);
  _Unwind_Resume(a1);
}

void sub_24BEB19D4(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BEB160C(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_24BEB1A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB1A88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24BC94F74(&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v18)
  {
    v8 = 0;
    v9 = (v18 - __p - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = __p + 8;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5E0)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  v15 = sub_24BF02A98(a3, a4);
  sub_24BEB1BF4(a1, &__p, a2, v15, v16 | 0x100000000);
}

void sub_24BEB1BD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB1BF4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *a2;
  v11 = a2[1];
  if (*a2 != v11)
  {
    do
    {
      if (*v10 < -((v9[1] - *v9) >> 2) || *v10 >= ((v9[1] - *v9) >> 2))
      {
        v15 = *v10;
        v16 = (v9[1] - *v9) >> 2;
        sub_24BCE1268(v24);
        v17 = sub_24BC95264(v24, "[mean] axis ", 12);
        v18 = MEMORY[0x24C2543C0](v17, v15);
        v19 = sub_24BC95264(v18, " is out of bounds for array with ", 33);
        v20 = MEMORY[0x24C2543C0](v19, v16);
        sub_24BC95264(v20, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v23);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      ++v10;
    }

    while (v10 != v11);
  }

  v13 = v9[7];
  LODWORD(v24[0]) = v13;
  BYTE4(v24[0]) = BYTE4(v13);
  v14 = sub_24BE9E788(v24);
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *a2, a2[1], (a2[1] - *a2) >> 2);
  sub_24BEB1E74(a1, __p, 1, v14 & 0xFFFFFFFFFFLL, a4, a5);
}

void sub_24BEB1DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v20 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a19);
      _Unwind_Resume(a1);
    }
  }

  else if (!v20)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void sub_24BEB1E74(uint64_t a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  v7 = a2[1];
  if (*a2 != v7)
  {
    v9 = (*(*a1 + 8) - **a1) >> 2;
    do
    {
      v10 = (v9 + *v8) % v9;
      if ((v10 & 0x80000000) != 0 || v10 >= v9)
      {
        sub_24BCE1268(v19);
        v11 = sub_24BC95264(v19, "[number_of_elements] Can't get the shape for axis ", 50);
        v12 = MEMORY[0x24C2543C0](v11, *v8);
        v13 = sub_24BC95264(v12, " from an array with ", 20);
        v14 = MEMORY[0x24C2543E0](v13, (*(*a1 + 8) - **a1) >> 2);
        sub_24BC95264(v14, " dimensions.", 12);
        exception = __cxa_allocate_exception(0x10uLL);
        std::stringbuf::str();
        std::logic_error::logic_error(exception, &v20);
        exception->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
      }

      *v8++ = v10;
    }

    while (v8 != v7);
  }

  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_24BF02A98(a5, a6);
  operator new();
}

void sub_24BEB2138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, char a17)
{
  if (*(v19 - 73) < 0)
  {
    operator delete(*(v19 - 96));
    if ((v18 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v17);
  goto LABEL_6;
}

void sub_24BEB21E4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v11, __p, 1uLL);
  v9 = sub_24BF02A98(a4, a5);
  sub_24BEB1BF4(a1, __p, a3, v9, v10 | 0x100000000);
}

void sub_24BEB228C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB22A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24BC94F74(&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v20)
  {
    v10 = 0;
    v11 = (v20 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = sub_24BF02A98(a4, a5);
  sub_24BEB241C(a1, &__p, a2, a3, v17, v18 | 0x100000000);
}

void sub_24BEB2400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB241C(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(*a1 + 56);
  v11 = v10;
  v12 = BYTE4(v10);
  sub_24BE9E788(&v11);
  sub_24BEB1BF4(a1, a2, 1, a5, a6);
}

void sub_24BEB2678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  sub_24BE7F218(v22 - 96);
  sub_24BE7F218(v21);
  sub_24BE7F218(v22 - 80);
  _Unwind_Resume(a1);
}

void sub_24BEB273C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB28CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a18);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB2920(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v21[0]) = v8;
  BYTE4(v21[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v19[0]) = v9;
  BYTE4(v19[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(v21, v19);
  LODWORD(v22) = v10;
  BYTE4(v22) = BYTE4(v10);
  v11 = sub_24BE9E788(&v22);
  v12 = a1[1];
  v20[0] = *a1;
  v20[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v20, v11, a3, a4, v21);
  v13 = a2[1];
  v18[0] = *a2;
  v18[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = sub_24BF02A98(a3, a4);
  sub_24BEA3B14(v18, v11, v14, v15 | 0x100000000, v19);
  sub_24BEAD8B0(v21, v19, a3, a4, &v22);
  sub_24BE7F218(v19);
  sub_24BE7F218(v18);
  sub_24BE7F218(v21);
  sub_24BE7F218(v20);
  v16 = *v22;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v16, v16[1], (v16[1] - *v16) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEB2B60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEB2BEC(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v13, __p, 1uLL);
  v11 = sub_24BF02A98(a5, a6);
  sub_24BEB241C(a1, __p, a3, a4, v11, v12 | 0x100000000);
}

void sub_24BEB2C9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB2CB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_24BC94F74(&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v20)
  {
    v10 = 0;
    v11 = (v20 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  v17 = sub_24BF02A98(a4, a5);
  sub_24BEB2E2C(a1, &__p, a2, a3, v17, v18 | 0x100000000);
}

void sub_24BEB2E10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB2E9C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  sub_24BE9E788(&v9);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB3070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_24BCC961C(&a19);
  sub_24BE7F218(&a20);
  sub_24BE7F218(&a9);
  if (a15)
  {
    sub_24BC9EC78(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB30D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v13, __p, 1uLL);
  v11 = sub_24BF02A98(a5, a6);
  sub_24BEB2E2C(a1, __p, a3, a4, v11, v12 | 0x100000000);
}

void sub_24BEB3184(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB31A0(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEB32FC(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEB32E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB32FC(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*a2 == *(a2 + 8))
  {
    v13 = *(a1 + 8);
    *a6 = *a1;
    *(a6 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEB0AE8(a2, *a1, v28);
    v11 = *(*a1 + 56);
    LODWORD(v25) = v11;
    BYTE4(v25) = BYTE4(v11);
    if (sub_24BE80D54(&v25, &dword_24BFF09E8))
    {
      v12 = *a1;
      *(*a1 + 60);
    }

    else
    {
      v14 = *(*a1 + 56);
      LODWORD(v25) = v14;
      BYTE4(v25) = BYTE4(v14);
      sub_24BE80D54(&v25, &dword_24BFF09EC);
      v12 = *a1;
      *(*a1 + 56);
    }

    if (v34 != 1)
    {
      *__p = *v28;
      v27 = v29;
      v28[1] = 0;
      v29 = 0;
      v28[0] = 0;
      v23 = sub_24BF02A98(a4, a5);
      v24 = v16;
      v22 = 3;
      sub_24BECF6E4();
    }

    v15 = *(a1 + 8);
    *a6 = v12;
    *(a6 + 8) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    if ((a3 & 1) == 0)
    {
      *v20 = *v32;
      v21 = v33;
      v32[1] = 0;
      v33 = 0;
      v32[0] = 0;
      sub_24BEA4500(a6, v20, a4, a5, &v25);
      v17 = v25;
      v25 = 0uLL;
      v18 = *(a6 + 8);
      *a6 = v17;
      if (v18)
      {
        sub_24BC9EC78(v18);
      }

      sub_24BE7F218(&v25);
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_24BEB3604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 96) = v27;
  sub_24BCC961C((v28 - 96));
  sub_24BE7F218(v28 - 88);
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a27);
  _Unwind_Resume(a1);
}

void sub_24BEB369C(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BEB32FC(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_24BEB3734(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB3750(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEB38AC(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEB3890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB38AC(uint64_t a1@<X0>, unsigned int **a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  if (!*(*a1 + 48))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[max] Cannot max reduce zero size array.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BEB0AE8(a2, *a1, v26);
  if (v32 != 1)
  {
    *__p = *v26;
    v25 = v27;
    v26[1] = 0;
    v27 = 0;
    v26[0] = 0;
    v12 = *(*a1 + 56);
    v21 = sub_24BF02A98(a4, a5);
    v22 = v13;
    v20 = 5;
    sub_24BECF6E4();
  }

  v11 = *(a1 + 8);
  *a6 = *a1;
  *(a6 + 8) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if ((a3 & 1) == 0)
  {
    *v18 = *v30;
    v19 = v31;
    v30[1] = 0;
    v31 = 0;
    v30[0] = 0;
    sub_24BEA4500(a6, v18, a4, a5, &v23);
    v14 = v23;
    v23 = 0uLL;
    v15 = *(a6 + 8);
    *a6 = v14;
    if (v15)
    {
      sub_24BC9EC78(v15);
    }

    sub_24BE7F218(&v23);
    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }
  }

  if (v30[0])
  {
    v30[1] = v30[0];
    operator delete(v30[0]);
  }

  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v26[0])
  {
    v26[1] = v26[0];
    operator delete(v26[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_24BEB3B2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 96) = v27;
  sub_24BCC961C((v28 - 96));
  sub_24BE7F218(v28 - 88);
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a27);
  _Unwind_Resume(a1);
}

void sub_24BEB3BC8(uint64_t a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BEB38AC(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_24BEB3C60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB3C7C(uint64_t **a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_24BC94F74(&__p, ((*a1)[1] - **a1) >> 2);
  if (__p != v18)
  {
    v10 = 0;
    v11 = (v18 - __p - 4) >> 2;
    v12 = vdupq_n_s64(v11);
    v13 = (v11 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v14 = __p + 8;
    do
    {
      v15 = vdupq_n_s64(v10);
      v16 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v16, *v12.i8).u8[0])
      {
        *(v14 - 2) = v10;
      }

      if (vuzp1_s16(v16, *&v12).i8[2])
      {
        *(v14 - 1) = v10 + 1;
      }

      if (vuzp1_s16(*&v12, vmovn_s64(vcgeq_u64(v12, vorrq_s8(v15, xmmword_24BFBC5E0)))).i32[1])
      {
        *v14 = v10 + 2;
        v14[1] = v10 + 3;
      }

      v10 += 4;
      v14 += 4;
    }

    while (v13 != v10);
  }

  sub_24BEB3DD8(a1, &__p, a2, a3, a4, a5);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_24BEB3DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB3DD8(uint64_t **a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  if (!(*a1)[6])
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_24BD4D730(exception, "[min] Cannot min reduce zero size array.");
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (*a2 == *(a2 + 8))
  {
    v13 = a1[1];
    *a6 = v7;
    *(a6 + 8) = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    sub_24BEB0AE8(a2, v7, v28);
    if (v34 != 1)
    {
      *__p = *v28;
      v27 = v29;
      v28[1] = 0;
      v29 = 0;
      v28[0] = 0;
      v14 = (*a1)[7];
      v23 = sub_24BF02A98(a4, a5);
      v24 = v15;
      v22 = 4;
      sub_24BECF6E4();
    }

    v12 = a1[1];
    *a6 = *a1;
    *(a6 + 8) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    if ((a3 & 1) == 0)
    {
      *v20 = *v32;
      v21 = v33;
      v32[1] = 0;
      v33 = 0;
      v32[0] = 0;
      sub_24BEA4500(a6, v20, a4, a5, &v25);
      v16 = v25;
      v25 = 0uLL;
      v17 = *(a6 + 8);
      *a6 = v16;
      if (v17)
      {
        sub_24BC9EC78(v17);
      }

      sub_24BE7F218(&v25);
      if (v20[0])
      {
        v20[1] = v20[0];
        operator delete(v20[0]);
      }
    }

    if (v32[0])
    {
      v32[1] = v32[0];
      operator delete(v32[0]);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v28[0])
    {
      v28[1] = v28[0];
      operator delete(v28[0]);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void sub_24BEB4080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  *(v28 - 96) = v27;
  sub_24BCC961C((v28 - 96));
  sub_24BE7F218(v28 - 88);
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a27);
  _Unwind_Resume(a1);
}

void sub_24BEB411C(uint64_t **a1@<X0>, int a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a2;
  v13 = 0;
  v14 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v11, &__p, 1uLL);
  sub_24BEB3DD8(a1, &__p, a3, a4, a5, a6);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }
}

void sub_24BEB41B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB41D0(const void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*a1)[6];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v7, __p, 1uLL);
  sub_24BEA4500(a1, __p, a3, a4, &v9);
  sub_24BEB4390(&v9, 0, 1, a3, a4);
}

void sub_24BEB4338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v17);
  _Unwind_Resume(a1);
}

void sub_24BEB4390(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*a1)[6])
  {
    v12 = a2;
    v15 = 0;
    v14 = 0uLL;
    sub_24BCC9910(&v14, &v12, &v13, 1uLL);
    sub_24BEB0AE8(&v14, *a1, v9);
    if (v14)
    {
      *(&v14 + 1) = v14;
      operator delete(v14);
    }

    if (v11 == 1)
    {
      sub_24BEA51FC(v9);
    }

    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    sub_24BF02A98(a4, a5);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[argmin] Cannot argmin reduce zero size array.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB4680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v22 - 120) = v21;
  sub_24BCC961C((v22 - 120));
  sub_24BE7F218(v22 - 112);
  if (a16)
  {
    sub_24BC9EC78(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a21);
  _Unwind_Resume(a1);
}

void sub_24BEB4730(const void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*a1)[6];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v7, __p, 1uLL);
  sub_24BEA4500(a1, __p, a3, a4, &v9);
  sub_24BEB48F0(&v9, 0, 1, a3, a4);
}

void sub_24BEB4898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(v17);
  _Unwind_Resume(a1);
}

void sub_24BEB48F0(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  if ((*a1)[6])
  {
    v12 = a2;
    v15 = 0;
    v14 = 0uLL;
    sub_24BCC9910(&v14, &v12, &v13, 1uLL);
    sub_24BEB0AE8(&v14, *a1, v9);
    if (v14)
    {
      *(&v14 + 1) = v14;
      operator delete(v14);
    }

    if (v11 == 1)
    {
      sub_24BEA51FC(v9);
    }

    v9[1] = 0;
    v10 = 0;
    v9[0] = 0;
    sub_24BF02A98(a4, a5);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[argmax] Cannot argmax reduce zero size array.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB4BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  *(v22 - 120) = v21;
  sub_24BCC961C((v22 - 120));
  sub_24BE7F218(v22 - 112);
  if (a16)
  {
    sub_24BC9EC78(a16);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BEB0EA8(&a21);
  _Unwind_Resume(a1);
}

void sub_24BEB4C94(const void ***a1, uint64_t a2, uint64_t a3)
{
  v6 = (*a1)[6];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v6, __p, 1uLL);
  sub_24BEA4500(a1, __p, a2, a3, v8);
  sub_24BEB4D70(v8, 0, a2, a3);
}

void sub_24BEB4D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB4D70(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[33] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (v8 - v7) >> 2;
  if (v9 > a2 && ((v9 + a2) & 0x80000000) == 0)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v7, v8, (v8 - v7) >> 2);
    v11 = (*a1)[7];
    sub_24BF02A98(a3, a4);
    operator new();
  }

  sub_24BCE1268(v19);
  v12 = sub_24BC95264(v19, "[sort] Received invalid axis ", 29);
  v13 = MEMORY[0x24C2543C0](v12, a2);
  v14 = sub_24BC95264(v13, " for array with ", 16);
  v15 = MEMORY[0x24C2543E0](v14, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v15, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v18);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB4FE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEB5080(const void ***a1, uint64_t a2, uint64_t a3)
{
  v6 = (*a1)[6];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v6, __p, 1uLL);
  sub_24BEA4500(a1, __p, a2, a3, v8);
  sub_24BEB515C(v8, 0, a2, a3);
}

void sub_24BEB5130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB515C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18[33] = *MEMORY[0x277D85DE8];
  v7 = **a1;
  v8 = (*a1)[1];
  v9 = (v8 - v7) >> 2;
  if (v9 > a2 && ((v9 + a2) & 0x80000000) == 0)
  {
    memset(__p, 0, sizeof(__p));
    sub_24BCC9A1C(__p, v7, v8, (v8 - v7) >> 2);
    sub_24BF02A98(a3, a4);
    operator new();
  }

  sub_24BCE1268(v18);
  v11 = sub_24BC95264(v18, "[argsort] Received invalid axis ", 32);
  v12 = MEMORY[0x24C2543C0](v11, a2);
  v13 = sub_24BC95264(v12, " for array with ", 16);
  v14 = MEMORY[0x24C2543E0](v13, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v14, " dimensions.", 12);
  exception = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(exception, &v17);
  exception->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB53C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEB5460(const void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*a1)[6];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v8, __p, 1uLL);
  sub_24BEA4500(a1, __p, a3, a4, v10);
  sub_24BEB554C(v10, a2, 0, a3, a4);
}

void sub_24BEB5520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB554C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[33] = *MEMORY[0x277D85DE8];
  v7 = ((*a1)[1] - **a1) >> 2;
  if (v7 > a3)
  {
    v8 = v7 + a3;
    if ((v8 & 0x80000000) == 0)
    {
      if (a3 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = v8;
      }

      v13 = a2;
      if ((a2 & 0x80000000) == 0 || (v13 = sub_24BD1EEAC(a1, a3) + a2, v13 >= 0))
      {
        if (v13 < sub_24BD1EEAC(a1, v12))
        {
          v14 = *a1;
          memset(__p, 0, sizeof(__p));
          sub_24BCC9A1C(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
          v15 = (*a1)[7];
          sub_24BF02A98(a4, a5);
          operator new();
        }
      }

      sub_24BCE1268(v29);
      v16 = sub_24BC95264(v29, "[partition] Received invalid kth ", 33);
      v17 = MEMORY[0x24C2543C0](v16, a2);
      v18 = sub_24BC95264(v17, "along axis ", 11);
      v19 = MEMORY[0x24C2543C0](v18, a3);
      v20 = sub_24BC95264(v19, " for array with shape: ", 23);
      sub_24BF02DB8(v20, *a1);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v28);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BCE1268(v29);
  v22 = sub_24BC95264(v29, "[partition] Received invalid axis ", 34);
  v23 = MEMORY[0x24C2543C0](v22, a3);
  v24 = sub_24BC95264(v23, " for array with ", 16);
  v25 = MEMORY[0x24C2543E0](v24, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v25, " dimensions.", 12);
  v26 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v26, &v28);
  v26->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v26, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB58DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEB5980(const void ***a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*a1)[6];
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v8, __p, 1uLL);
  sub_24BEA4500(a1, __p, a3, a4, v10);
  sub_24BEB5A6C(v10, a2, 0, a3, a4);
}

void sub_24BEB5A40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB5A6C(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28[33] = *MEMORY[0x277D85DE8];
  v7 = ((*a1)[1] - **a1) >> 2;
  if (v7 > a3)
  {
    v8 = v7 + a3;
    if ((v8 & 0x80000000) == 0)
    {
      if (a3 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = v8;
      }

      v13 = a2;
      if ((a2 & 0x80000000) == 0 || (v13 = sub_24BD1EEAC(a1, a3) + a2, v13 >= 0))
      {
        if (v13 < sub_24BD1EEAC(a1, v12))
        {
          v14 = *a1;
          memset(__p, 0, sizeof(__p));
          sub_24BCC9A1C(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
          sub_24BF02A98(a4, a5);
          operator new();
        }
      }

      sub_24BCE1268(v28);
      v15 = sub_24BC95264(v28, "[argpartition] Received invalid kth ", 36);
      v16 = MEMORY[0x24C2543C0](v15, a2);
      v17 = sub_24BC95264(v16, " along axis ", 12);
      v18 = MEMORY[0x24C2543C0](v17, a3);
      v19 = sub_24BC95264(v18, " for array with shape: ", 23);
      sub_24BF02DB8(v19, *a1);
      exception = __cxa_allocate_exception(0x10uLL);
      std::stringbuf::str();
      std::logic_error::logic_error(exception, &v27);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
    }
  }

  sub_24BCE1268(v28);
  v21 = sub_24BC95264(v28, "[argpartition] Received invalid axis ", 37);
  v22 = MEMORY[0x24C2543C0](v21, a3);
  v23 = sub_24BC95264(v22, " for array with ", 16);
  v24 = MEMORY[0x24C2543E0](v23, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v24, " dimensions.", 12);
  v25 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v25, &v27);
  v25->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v25, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB5DF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a24);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEB5E9C(const void ***a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = (*a1)[6];
  v12 = 0;
  v13 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v10, &__p, 1uLL);
  sub_24BEA4500(a1, &__p, a3, a4, v14);
  sub_24BEB5F88(v14, a2, 0, a3, a4, a5);
  sub_24BE7F218(v14);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }
}

void sub_24BEB5F5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  sub_24BE7F218(&a13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BEB5F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = (*(*a1 + 8) - **a1) >> 2;
  v13 = a3;
  if ((a3 & 0x80000000) != 0 && (v13 = (v12 + a3), v12 + a3 < 0) || v13 >= v12)
  {
    sub_24BCE1268(&v28);
    v22 = sub_24BC95264(&v28, "[topk] Received invalid axis ", 29);
    v23 = MEMORY[0x24C2543C0](v22, a3);
    v24 = sub_24BC95264(v23, " for array with ", 16);
    v25 = MEMORY[0x24C2543E0](v24, (*(*a1 + 8) - **a1) >> 2);
    sub_24BC95264(v25, " dimensions.", 12);
    exception = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(exception, &v27);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if ((a2 & 0x80000000) != 0 || sub_24BD1EEAC(a1, v13) < a2)
  {
    sub_24BCE1268(&v28);
    v16 = sub_24BC95264(&v28, "[topk] Received invalid k=", 26);
    v17 = MEMORY[0x24C2543C0](v16, a2);
    v18 = sub_24BC95264(v17, " along axis ", 12);
    v19 = MEMORY[0x24C2543C0](v18, a3);
    v20 = sub_24BC95264(v19, " for array with shape: ", 23);
    sub_24BF02DB8(v20, *a1);
    v21 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v21, &v27);
    v21->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v21, &unk_285F94708, MEMORY[0x277D82610]);
  }

  result = sub_24BD1EEAC(a1, v13);
  if (result != a2)
  {
    sub_24BEB554C(a1, -a2, v13, a4, a5);
  }

  v15 = *(a1 + 8);
  *a6 = *a1;
  a6[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_24BEB62E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((v25 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a23);
      _Unwind_Resume(a1);
    }
  }

  else if (!v25)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v24);
  goto LABEL_6;
}

void sub_24BEB63AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_24BC94F74(&__p, (*(*a1 + 8) - **a1) >> 2);
  if (__p != v16)
  {
    v8 = 0;
    v9 = (v16 - __p - 4) >> 2;
    v10 = vdupq_n_s64(v9);
    v11 = (v9 + 4) & 0x7FFFFFFFFFFFFFFCLL;
    v12 = __p + 8;
    do
    {
      v13 = vdupq_n_s64(v8);
      v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5B0)));
      if (vuzp1_s16(v14, *v10.i8).u8[0])
      {
        *(v12 - 2) = v8;
      }

      if (vuzp1_s16(v14, *&v10).i8[2])
      {
        *(v12 - 1) = v8 + 1;
      }

      if (vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v13, xmmword_24BFBC5E0)))).i32[1])
      {
        *v12 = v8 + 2;
        v12[1] = v8 + 3;
      }

      v8 += 4;
      v12 += 4;
    }

    while (v11 != v8);
  }

  sub_24BEB6508(a1, &__p, a2, a3, a4);
}

void sub_24BEB64EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB66FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  sub_24BE7F218(&a19);
  sub_24BE7F218(v19 - 64);
  _Unwind_Resume(a1);
}

void sub_24BEB6798(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB6928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a18);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB697C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB6B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB6BDC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB6DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB6E34(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v9, __p, 1uLL);
  sub_24BEB6508(a1, __p, a3, a4, a5);
}

void sub_24BEB6ECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BEB6EE8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 14))
  {
    memset(__p, 0, 24);
    sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v7 = (*a1)[7];
    sub_24BF02A98(a2, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[negative] Not supported for BOOL, use logical_not instead.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB7124(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v6 = *a1;
  memset(__p, 0, 24);
  sub_24BCC9A1C(__p, *v6, v6[1], (v6[1] - *v6) >> 2);
  v7 = (*a1)[7];
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB72B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_24BCC961C(&a17);
  sub_24BE7F218(&a18);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEB7318(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v2 = v1;
  v3 = BYTE4(v1);
  sub_24BE9E788(&v2);
  sub_24BCCBB70();
}

void sub_24BEB7458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEB74DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BEB74F0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19) = v8;
  BYTE4(v19) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v18[0]) = v9;
  BYTE4(v18[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v19, v18);
  v20 = v10;
  v21 = BYTE4(v10);
  if (sub_24BE80D54(&v20, &dword_24BFF086C))
  {
    sub_24BEB2920(a1, a2, a3, a4);
  }

  v11 = a1[1];
  v17[0] = *a1;
  v17[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v17, v20, a3, a4, v18);
  v12 = a2[1];
  v15[0] = *a2;
  v15[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v15, v20, a3, a4, v16);
  sub_24BEAD8B0(v18, v16, a3, a4, &v19);
  sub_24BE7F218(v16);
  sub_24BE7F218(v15);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  v13 = *v19;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v13, v13[1], (v13[1] - *v13) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEB7764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEB77FC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 14) != 12)
  {
    memset(__p, 0, 24);
    sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v7 = (*a1)[7];
    sub_24BF02A98(a2, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[floor] Not supported for complex64.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB7A34(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v21) = v8;
  BYTE4(v21) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v20[0]) = v9;
  BYTE4(v20[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(&v21, v20);
  v11 = a1[1];
  v19[0] = *a1;
  v19[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v19, v10, a3, a4, v20);
  v12 = a2[1];
  v17[0] = *a2;
  v17[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = sub_24BF02A98(a3, a4);
  sub_24BEA3B14(v17, v10, v13, v14 | 0x100000000, v18);
  sub_24BEAD8B0(v20, v18, a3, a4, &v21);
  sub_24BE7F218(v18);
  sub_24BE7F218(v17);
  sub_24BE7F218(v20);
  sub_24BE7F218(v19);
  v15 = *v21;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v15, v15[1], (v15[1] - *v15) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEB7C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEB7CF4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v8 = *(*a1 + 56);
  LODWORD(v31[0]) = v8;
  BYTE4(v31[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v24[0]) = v9;
  BYTE4(v24[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(v31, v24);
  v25 = v10;
  v26 = BYTE4(v10);
  if (!sub_24BE80D54(&v25, dword_24BFF0870))
  {
    v11 = a1[1];
    v23[0] = *a1;
    v23[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(v23, v25, a3, a4, v31);
    v12 = a2[1];
    v22[0] = *a2;
    v22[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = v25;
    v14 = sub_24BF02A98(a3, a4);
    sub_24BEA3B14(v22, v13, v14, v15 | 0x100000000, __p);
    sub_24BEAD8B0(v31, __p, a3, a4, v24);
    sub_24BE7F218(__p);
    sub_24BE7F218(v22);
    sub_24BE7F218(v31);
    sub_24BE7F218(v23);
    v16 = *v24[0];
    memset(v31, 0, sizeof(v31));
    sub_24BCC9A1C(v31, *v16, v16[1], (v16[1] - *v16) >> 2);
    v17 = *v24[0];
    memset(v32, 0, sizeof(v32));
    sub_24BCC9A1C(v32, *v17, v17[1], (v17[1] - *v17) >> 2);
    memset(v21, 0, sizeof(v21));
    sub_24BCE220C(v21, v31, &v33, 2uLL);
    v18 = *(*v24[0] + 56);
    v27 = v18;
    v28 = BYTE4(v18);
    v29 = v18;
    v30 = BYTE4(v18);
    memset(__p, 0, sizeof(__p));
    sub_24BCE2380(__p, &v27, v31, 2uLL);
    sub_24BF02A98(a3, a4);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[divmod] Complex type not supported.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB8138(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  __p[6] = *MEMORY[0x277D85DE8];
  v3 = *a1;
  if (*(*a1 + 14) != 12)
  {
    memset(__p, 0, 24);
    sub_24BCC9A1C(__p, *v3, v3[1], (v3[1] - *v3) >> 2);
    v7 = (*a1)[7];
    sub_24BF02A98(a2, a3);
    operator new();
  }

  exception = __cxa_allocate_exception(0x10uLL);
  sub_24BD4D730(exception, "[floor] Not supported for complex64.");
  __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEB8370(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB8558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB85C8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB87B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB8820(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB8A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB8A78(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB8C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB8CD0(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB8EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB8F28(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB9110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB9180(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB9368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB93D8(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19[0]) = v8;
  BYTE4(v19[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v17[0]) = v9;
  BYTE4(v17[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(v19, v17);
  LODWORD(v20) = v10;
  BYTE4(v20) = BYTE4(v10);
  v11 = sub_24BE9E788(&v20);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v18, v11, a3, a4, v19);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v16, v11, a3, a4, v17);
  sub_24BEAD8B0(v19, v17, a3, a4, &v20);
  sub_24BE7F218(v17);
  sub_24BE7F218(v16);
  sub_24BE7F218(v19);
  sub_24BE7F218(v18);
  v14 = *v20;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEB9608(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEB9694(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB987C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB98EC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB9AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB9B44(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB9D2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB9D9C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEB9F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEB9FF4(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBA1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEBA24C(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBA434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEBA4A4(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v2 = v1;
  v3 = BYTE4(v1);
  sub_24BE9E788(&v2);
  sub_24BCCCD5C();
}

void sub_24BEBA548(uint64_t a1)
{
  v1 = *(*a1 + 56);
  v2 = v1;
  v3 = BYTE4(v1);
  sub_24BE9E788(&v2);
  sub_24BCCCD5C();
}

void sub_24BEBA5EC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBA7D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEBA848(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBAA34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEBAAA8(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBAC90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEBAD00(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*a1 + 56);
  LODWORD(v19[0]) = v8;
  BYTE4(v19[0]) = BYTE4(v8);
  v9 = *(*a2 + 56);
  LODWORD(v17[0]) = v9;
  BYTE4(v17[0]) = BYTE4(v9);
  v10 = sub_24BE80C80(v19, v17);
  LODWORD(v20) = v10;
  BYTE4(v20) = BYTE4(v10);
  v11 = sub_24BE9E788(&v20);
  v12 = a1[1];
  v18[0] = *a1;
  v18[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v18, v11, a3, a4, v19);
  v13 = a2[1];
  v16[0] = *a2;
  v16[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v16, v11, a3, a4, v17);
  sub_24BEAD8B0(v19, v17, a3, a4, &v20);
  sub_24BE7F218(v17);
  sub_24BE7F218(v16);
  sub_24BE7F218(v19);
  sub_24BE7F218(v18);
  v14 = *v20;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v14, v14[1], (v14[1] - *v14) >> 2);
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEBAF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21)
{
  *(v22 - 96) = v21;
  sub_24BCC961C((v22 - 96));
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  *(v22 - 96) = v22 - 80;
  sub_24BCC961C((v22 - 96));
  _Unwind_Resume(a1);
}

void sub_24BEBAFBC(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v12[5] = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  LODWORD(v12[0]) = v6;
  BYTE4(v12[0]) = BYTE4(v6);
  v7 = sub_24BE9E788(v12);
  v8 = a1[1];
  v11[0] = *a1;
  v11[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  sub_24BEA3B14(v11, v7, a2, a3, v12);
  sub_24BE7F218(v11);
  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBB1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, void *__p, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  *(v20 - 80) = v19;
  sub_24BCC961C((v20 - 80));
  sub_24BE7F218(v20 - 72);
  if (a13)
  {
    sub_24BC9EC78(a13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a19);
  _Unwind_Resume(a1);
}

void sub_24BEBB214(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  sub_24BE9E788(&v9);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBB3E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_24BCC961C(&a19);
  sub_24BE7F218(&a20);
  sub_24BE7F218(&a9);
  if (a15)
  {
    sub_24BC9EC78(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEBB448(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = (*a1)[7];
  v9 = v6;
  v10 = BYTE4(v6);
  sub_24BE9E788(&v9);
  v7 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v7, v7[1], (v7[1] - *v7) >> 2);
  sub_24BF02A98(a2, a3);
  operator new();
}

void sub_24BEBB618(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_24BCC961C(&a19);
  sub_24BE7F218(&a20);
  sub_24BE7F218(&a9);
  if (a15)
  {
    sub_24BC9EC78(a15);
  }

  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEBB67C(uint64_t **a1, int a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v8 = (*a1)[7];
    v12 = v8;
    v13 = BYTE4(v8);
    sub_24BE9E788(&v12);
    __exp10(a2);
    sub_24BCCBB70();
  }

  v9 = *a1;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9A1C(__p, *v9, v9[1], (v9[1] - *v9) >> 2);
  v10 = (*a1)[7];
  sub_24BF02A98(a3, a4);
  operator new();
}

void sub_24BEBB950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21)
{
  sub_24BCC961C(&a13);
  sub_24BE7F218(v21 - 96);
  if (a19)
  {
    sub_24BC9EC78(a19);
  }

  if (__p)
  {
    a21 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BEBB9E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v89[33] = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v8 = *(a1 + 8);
  *&v84 = *a1;
  *(&v84 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *a2;
  v10 = a2[1];
  *&v83 = *a2;
  *(&v83 + 1) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = v7[1] - *v7;
  if (!v11 || (v14 = v9, v13 = *v9, v12 = v14[1], v12 == v13))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "[matmul] Got 0 dimension input. Inputs must have at least one dimension.");
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  if (v11 == 4)
  {
    v88.__r_.__value_.__r.__words[0] = 0xFFFFFFFF00000001;
    v81 = 0;
    v82 = 0;
    __p = 0;
    sub_24BCC9910(&__p, &v88, &v88.__r_.__value_.__l.__size_, 2uLL);
    sub_24BEA4500(&v84, &__p, a3, a4, v89);
    v15 = *v89;
    v89[0] = 0;
    v89[1] = 0;
    v16 = *(&v84 + 1);
    v84 = v15;
    if (v16)
    {
      sub_24BC9EC78(v16);
    }

    sub_24BE7F218(v89);
    if (__p)
    {
      v81 = __p;
      operator delete(__p);
    }

    v13 = *v83;
    v12 = *(v83 + 8);
  }

  if (v12 - v13 == 4)
  {
    v88.__r_.__value_.__r.__words[0] = 0x1FFFFFFFFLL;
    v78 = 0;
    v79 = 0;
    v77 = 0;
    sub_24BCC9910(&v77, &v88, &v88.__r_.__value_.__l.__size_, 2uLL);
    sub_24BEA4500(&v83, &v77, a3, a4, v89);
    v17 = *v89;
    v89[0] = 0;
    v89[1] = 0;
    v18 = *(&v83 + 1);
    v83 = v17;
    if (v18)
    {
      sub_24BC9EC78(v18);
    }

    sub_24BE7F218(v89);
    if (v77)
    {
      v78 = v77;
      operator delete(v77);
    }
  }

  v19 = *(v84 + 8);
  if (v19 == *v84 || *(v83 + 8) - *v83 <= 4uLL)
  {
    sub_24BC923C0();
  }

  *v83;
  if (*(v19 - 4) != *(*(v83 + 8) - 8))
  {
    sub_24BCE1268(v89);
    v52 = sub_24BC95264(v89, "[matmul] Last dimension of first input with shape ", 50);
    v53 = sub_24BF02DB8(v52, v84);
    v54 = sub_24BC95264(v53, " must match second to last dimension of", 39);
    v55 = sub_24BC95264(v54, " second input with shape ", 25);
    v56 = sub_24BF02DB8(v55, v83);
    sub_24BC95264(v56, ".", 1);
    v57 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v57, &v88);
    v57->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v57, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v20 = *(v84 + 56);
  LODWORD(v89[0]) = v20;
  BYTE4(v89[0]) = BYTE4(v20);
  v21 = *(v83 + 56);
  LODWORD(v88.__r_.__value_.__l.__data_) = v21;
  v88.__r_.__value_.__s.__data_[4] = BYTE4(v21);
  v22 = sub_24BE80C80(v89, &v88);
  v75 = v22;
  v76 = BYTE4(v22);
  if ((sub_24BE80D54(&v75, dword_24BFEEC80) & 1) == 0)
  {
    sub_24BCE1268(v89);
    v58 = sub_24BC95264(v89, "[matmul] Only real floating point types are supported but ", 58);
    v59 = *(v84 + 56);
    LODWORD(v88.__r_.__value_.__l.__data_) = v59;
    v88.__r_.__value_.__s.__data_[4] = BYTE4(v59);
    v60 = sub_24BF031F4(v58, &v88);
    v61 = sub_24BC95264(v60, " and ", 5);
    v62 = *(v83 + 56);
    LODWORD(v85) = v62;
    BYTE4(v85) = BYTE4(v62);
    v63 = sub_24BF031F4(v61, &v85);
    v64 = sub_24BC95264(v63, " were provided which results", 28);
    v65 = sub_24BC95264(v64, " in ", 4);
    v66 = sub_24BF031F4(v65, &v75);
    sub_24BC95264(v66, ", which is not a real floating point type.", 42);
    v67 = __cxa_allocate_exception(0x10uLL);
    std::stringbuf::str();
    std::logic_error::logic_error(v67, &v88);
    v67->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v67, &unk_285F94708, MEMORY[0x277D82610]);
  }

  v23 = *(v84 + 56);
  if (v75 != v23)
  {
    v74 = v84;
    if (*(&v84 + 1))
    {
      atomic_fetch_add_explicit((*(&v84 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(&v74, v75, a3, a4, v89);
    v24 = *v89;
    v89[0] = 0;
    v89[1] = 0;
    v25 = *(&v84 + 1);
    v84 = v24;
    if (v25)
    {
      sub_24BC9EC78(v25);
    }

    sub_24BE7F218(v89);
    sub_24BE7F218(&v74);
    v23 = v75;
  }

  if (v23 != *(v83 + 56))
  {
    v73 = v83;
    if (*(&v83 + 1))
    {
      atomic_fetch_add_explicit((*(&v83 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BEA3B14(&v73, v75, a3, a4, v89);
    v26 = *v89;
    v89[0] = 0;
    v89[1] = 0;
    v27 = *(&v83 + 1);
    v83 = v26;
    if (v27)
    {
      sub_24BC9EC78(v27);
    }

    sub_24BE7F218(v89);
    sub_24BE7F218(&v73);
  }

  v28 = v84;
  v29 = *v84;
  v30 = *(v84 + 8);
  v31 = *(v83 + 8) - *v83;
  if ((v30 - *v84) < 9)
  {
    if (v31 < 9)
    {
      goto LABEL_61;
    }
  }

  else if (v31 == 8)
  {
    memset(&v88, 0, sizeof(v88));
    sub_24BCC9A1C(&v88, *v84, *(v84 + 8), (*(v84 + 8) - *v84) >> 2);
    LODWORD(v85) = -1;
    HIDWORD(v85) = *(v88.__r_.__value_.__l.__size_ - 4);
    v71 = 0;
    v72 = 0;
    v70 = 0;
    sub_24BCC9910(&v70, &v85, &v86, 2uLL);
    sub_24BEA4500(&v84, &v70, a3, a4, v89);
    v32 = *v89;
    v89[0] = 0;
    v89[1] = 0;
    v33 = *(&v84 + 1);
    v84 = v32;
    if (v33)
    {
      sub_24BC9EC78(v33);
    }

    sub_24BE7F218(v89);
    if (v70)
    {
      v71 = v70;
      operator delete(v70);
    }

    v34 = v83;
    v35 = *v83;
    v36 = *(v83 + 8);
    if (v36 != *v83)
    {
      v37 = *(v36 - 4);
      size = v88.__r_.__value_.__l.__size_;
      *(v88.__r_.__value_.__l.__size_ - 4) = v37;
      v39 = size - 4;
      if (*(*a2 + 8) - **a2 == 4)
      {
        v88.__r_.__value_.__l.__size_ = v39;
      }

      if (*(v84 + 8) != *v84)
      {
        v87[0] = **v84;
        if ((*(v34 + 8) - v35) > 4)
        {
          v87[1] = *(v35 + 4);
          memset(v69, 0, sizeof(v69));
          sub_24BCC9910(v69, v87, &v88, 2uLL);
          sub_24BF02A98(a3, a4);
          operator new();
        }
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  memset(v89, 0, 24);
  sub_24BEA2D98(v89, v29, v30 - 8, (v30 - 8 - v29) >> 2);
  v40 = *v83;
  v41 = *(v83 + 8) - 8;
  v42 = (v41 - *v83) >> 2;
  memset(&v88, 0, sizeof(v88));
  sub_24BEA2D98(&v88, v40, v41, v42);
  sub_24BF02B58(v89, &v88, &v85);
  if (*(v84 + 8) - *v84 <= 4uLL)
  {
    sub_24BC923C0();
  }

  *v84;
  LODWORD(v68) = *(*(v84 + 8) - 8);
  sub_24BC97D60(&v85, &v68);
  v43 = *(v84 + 8);
  if (v43 == *v84)
  {
    sub_24BC923C0();
  }

  LODWORD(v68) = *(v43 - 4);
  sub_24BC97D60(&v85, &v68);
  sub_24BEA4DE0(&v84, &v85, a3, a4, &v68);
  v44 = v68;
  v68 = 0uLL;
  v45 = *(&v84 + 1);
  v84 = v44;
  if (v45)
  {
    sub_24BC9EC78(v45);
  }

  sub_24BE7F218(&v68);
  if (*(v83 + 8) - *v83 <= 4uLL)
  {
    sub_24BC923C0();
  }

  *v83;
  v46 = *(v83 + 8);
  v47 = v86;
  *(v86 - 2) = *(v46 - 8);
  *(v47 - 1) = *(v46 - 4);
  sub_24BEA4DE0(&v83, &v85, a3, a4, &v68);
  v48 = v68;
  v68 = 0uLL;
  v49 = *(&v83 + 1);
  v83 = v48;
  if (v49)
  {
    sub_24BC9EC78(v49);
  }

  sub_24BE7F218(&v68);
  if (v85)
  {
    v86 = v85;
    operator delete(v85);
  }

  if (v88.__r_.__value_.__r.__words[0])
  {
    v88.__r_.__value_.__l.__size_ = v88.__r_.__value_.__r.__words[0];
    operator delete(v88.__r_.__value_.__l.__data_);
  }

  if (v89[0])
  {
    v89[1] = v89[0];
    operator delete(v89[0]);
  }

  v28 = v84;
LABEL_61:
  memset(&v88, 0, sizeof(v88));
  sub_24BCC9A1C(&v88, *v28, v28[1], (v28[1] - *v28) >> 2);
  v50 = *(v83 + 8);
  if (v50 != *v83)
  {
    *(v88.__r_.__value_.__l.__size_ - 4) = *(v50 - 4);
    sub_24BF02A98(a3, a4);
    operator new();
  }

  sub_24BC923C0();
}

void sub_24BEBC6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57, uint64_t a58, char a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (a70 < 0)
  {
    operator delete(__p);
    if ((v73 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a72);
      sub_24BE7F218(&a57);
      sub_24BE7F218(&a59);
      _Unwind_Resume(a1);
    }
  }

  else if (!v73)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v72);
  goto LABEL_6;
}

void sub_24BEBC9A8(uint64_t **a1, uint64_t **a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a2[1] - *a2) >> 4 <= (((*a1)[1] - **a1) >> 2))
  {
    sub_24BECDF4C(&v57, *a3, a3[1]);
    if (v57.__r_.__value_.__r.__words[2] == a3[1] - *a3)
    {
      if (!v57.__r_.__value_.__r.__words[2])
      {
        goto LABEL_11;
      }

      if ((*(v57.__r_.__value_.__r.__words[0] + 28) & 0x80000000) != 0)
      {
        goto LABEL_36;
      }

      size = v57.__r_.__value_.__l.__size_;
      if (v57.__r_.__value_.__l.__size_)
      {
        do
        {
          v13 = size;
          size = *(size + 8);
        }

        while (size);
      }

      else
      {
        p_size = &v57.__r_.__value_.__l.__size_;
        do
        {
          v13 = p_size[2];
          v15 = *v13 == p_size;
          p_size = v13;
        }

        while (v15);
      }

      if (*(v13 + 28) >= (((*a1)[1] - **a1) >> 2))
      {
LABEL_36:
        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[gather] Axes don't match array dimensions.");
      }

      else
      {
LABEL_11:
        v17 = *a2;
        v16 = a2[1];
        if (v57.__r_.__value_.__r.__words[2] == (v16 - *a2) >> 4)
        {
          while (v17 != v16)
          {
            if (!*(*v17 + 56))
            {
              v37 = __cxa_allocate_exception(8uLL);
              *v37 = "[Gather] Boolean indices not supported.";
              __cxa_throw(v37, MEMORY[0x277D82740], 0);
            }

            v17 += 2;
          }

          v19 = **a1;
          v18 = (*a1)[1];
          if (*(a4 + 8) - *a4 == v18 - v19)
          {
            if (v18 != v19)
            {
              v20 = 0;
              do
              {
                v21 = *(*a4 + 4 * v20);
                if (v21 < 0 || v21 > sub_24BD1EEAC(a1, v20))
                {
                  sub_24BCE1268(&v58);
                  v32 = sub_24BC95264(&v58, "[gather] Slice sizes must be in [0, a.shape(i)]. Got ", 53);
                  v33 = sub_24BF02DB8(v32, a4);
                  v34 = sub_24BC95264(v33, " for array with shape ", 22);
                  v35 = sub_24BF02DB8(v34, *a1);
                  sub_24BC95264(v35, ".", 1);
                  v36 = __cxa_allocate_exception(0x10uLL);
                  std::stringbuf::str();
                  std::logic_error::logic_error(v36, &v56);
                  v36->__vftable = (MEMORY[0x277D828F8] + 16);
                  __cxa_throw(v36, &unk_285F94708, MEMORY[0x277D82610]);
                }

                ++v20;
              }

              while (v20 < ((*a1)[1] - **a1) >> 2);
            }

            v22 = sub_24BF02AE4(a2);
            v54 = v22;
            v55 = BYTE4(v22);
            if (!sub_24BE80D54(&v54, &dword_24BFF086C))
            {
              sub_24BEA97F0(a2, v23, 0, &v58);
              v24 = v58;
              v25 = v59;
              if (v58 == v59)
              {
                v29 = 0;
                memset(&v56, 0, sizeof(v56));
              }

              else
              {
                do
                {
                  v26 = v24[1];
                  v53[0] = *v24;
                  v53[1] = v26;
                  if (v26)
                  {
                    atomic_fetch_add_explicit(v26 + 1, 1uLL, memory_order_relaxed);
                  }

                  sub_24BEA3B14(v53, v54, a5, a6, &v56);
                  v27 = *&v56.__r_.__value_.__l.__data_;
                  *&v56.__r_.__value_.__l.__data_ = 0uLL;
                  v28 = v24[1];
                  *v24 = v27;
                  if (v28)
                  {
                    sub_24BC9EC78(v28);
                  }

                  sub_24BE7F218(&v56);
                  sub_24BE7F218(v53);
                  v24 += 2;
                }

                while (v24 != v25);
                memset(&v56, 0, sizeof(v56));
                if (v58 == v59 || &v56 == *v58)
                {
                  v29 = 0;
                }

                else
                {
                  sub_24BCA2A30(&v56, **v58, (*v58)[1], ((*v58)[1] - **v58) >> 2);
                  v29 = v56.__r_.__value_.__l.__size_;
                }
              }

              sub_24BD05818(&v56, v29, *a4, *(a4 + 8), (*(a4 + 8) - *a4) >> 2);
              sub_24BEBD224(&v58, v58, a1);
              memset(__p, 0, sizeof(__p));
              sub_24BCC9A1C(__p, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_, (v56.__r_.__value_.__l.__size_ - v56.__r_.__value_.__r.__words[0]) >> 2);
              v30 = (*a1)[7];
              v50 = sub_24BF02A98(a5, a6);
              v51 = v31;
              sub_24BED15E0();
            }

            v49 = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(v49, "[gather] Got indices with invalid dtype. Indices must be integral.");
            v49->__vftable = (MEMORY[0x277D828F8] + 16);
            __cxa_throw(v49, &unk_285F94708, MEMORY[0x277D82610]);
          }

          sub_24BCE1268(&v58);
          v44 = sub_24BC95264(&v58, "[gather] Got slice_sizes with size ", 35);
          v45 = MEMORY[0x24C2543E0](v44, (*(a4 + 8) - *a4) >> 2);
          v46 = sub_24BC95264(v45, " for array with ", 16);
          v47 = MEMORY[0x24C2543E0](v46, ((*a1)[1] - **a1) >> 2);
          sub_24BC95264(v47, " dimensions.", 12);
          v48 = __cxa_allocate_exception(0x10uLL);
          std::stringbuf::str();
          std::logic_error::logic_error(v48, &v56);
          v48->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v48, &unk_285F94708, MEMORY[0x277D82610]);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(exception, "[gather] Number of index arrays does not match number of axes.");
      }
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(exception, "[gather] Repeat axes not allowed in gather.");
    }

    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, &unk_285F94708, MEMORY[0x277D82610]);
  }

  sub_24BCE1268(&v58);
  v39 = sub_24BC95264(&v58, "[gather] Too many index arrays. Got ", 36);
  v40 = MEMORY[0x24C2543E0](v39, (a2[1] - *a2) >> 4);
  v41 = sub_24BC95264(v40, " index arrays for input with ", 29);
  v42 = MEMORY[0x24C2543E0](v41, ((*a1)[1] - **a1) >> 2);
  sub_24BC95264(v42, " dimensions.", 12);
  v43 = __cxa_allocate_exception(0x10uLL);
  std::stringbuf::str();
  std::logic_error::logic_error(v43, &v57);
  v43->__vftable = (MEMORY[0x277D828F8] + 16);
  __cxa_throw(v43, &unk_285F94708, MEMORY[0x277D82610]);
}

void sub_24BEBD0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, void *a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((v38 & 1) == 0)
    {
LABEL_6:
      sub_24BCE1400(&a37);
      sub_24BCC8A84(&a31, a32);
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v37);
  goto LABEL_6;
}

void *sub_24BEBD224(uint64_t *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = ((v6 - *a1) >> 4) + 1;
    if (v11 >> 60)
    {
      sub_24BC8E01C();
    }

    v12 = a2 - v10;
    v13 = v7 - v10;
    v14 = v13 >> 3;
    if (v13 >> 3 <= v11)
    {
      v14 = ((v6 - *a1) >> 4) + 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v14;
    }

    v16 = v12 >> 4;
    v22 = a1;
    if (v15)
    {
      sub_24BCB53E8(a1, v15);
    }

    *&v19 = 0;
    *(&v19 + 1) = 16 * v16;
    v20 = 16 * v16;
    v21 = 0;
    sub_24BED14B0(&v19, a3);
    v4 = sub_24BE9D078(a1, &v19, v4);
    sub_24BCC98C0(&v19);
  }

  else if (a2 == v6)
  {
    v17 = a3[1];
    *v6 = *a3;
    v6[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    a1[1] = (v6 + 2);
  }

  else
  {
    sub_24BE9D014(a1, a2, v6, (a2 + 2));
    v8 = a1[1] <= a3 || v4 > a3;
    v9 = 2;
    if (v8)
    {
      v9 = 0;
    }

    sub_24BECD238(v4, &a3[v9]);
  }

  return v4;
}