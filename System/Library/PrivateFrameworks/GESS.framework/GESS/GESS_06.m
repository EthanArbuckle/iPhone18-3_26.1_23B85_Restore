void sub_24BD07D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD07D84(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BC94FEC(result, a4);
  }

  return result;
}

void sub_24BD07DE4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD07E00(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_24BC8CAB0((a1 + 8), (a3 * a2));
  return a1;
}

void sub_24BD07E48(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD07E64(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BC91F24(v6, v10);
    }

    sub_24BC8E01C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

uint64_t sub_24BD07F90(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_24BC92930((a1 + 8), (a3 * a2));
  return a1;
}

void sub_24BD07FD8(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_24BD07FF4()
{
  MEMORY[0x28223BE20]();
  v9 = *MEMORY[0x277D85DE8];
  memcpy(__dst, &unk_24BFC0C24, sizeof(__dst));
  v0 = sub_24BD08188(__dst);
  sub_24BC836D4(v6, v0);
  memcpy(__dst, &unk_24BFD091D, 0x158AuLL);
  v1 = sub_24BD081B8(__dst);
  sub_24BC836D4(__p, v1);
  if ((atomic_load_explicit(&qword_27F079198, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F079198))
  {
    sub_24BD081E8(v6, __p, &unk_27F079180);
    __cxa_atexit(MEMORY[0x277D82640], &unk_27F079180, &dword_24BC7E000);
    __cxa_guard_release(&qword_27F079198);
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }

  v2 = *MEMORY[0x277D85DE8];
  return &unk_27F079180;
}

void sub_24BD08140(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  __cxa_guard_abort(&qword_27F079198);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_24BD08188(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  v5 = 64759;
  v6 = result;
  do
  {
    *v6++ ^= v3;
    --v5;
  }

  while (v5);
  a1[64760] = 0;
  return result;
}

_BYTE *sub_24BD081B8(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  v5 = 5512;
  v6 = result;
  do
  {
    *v6++ ^= v3;
    --v5;
  }

  while (v5);
  a1[5513] = 0;
  return result;
}

uint64_t sub_24BD081E8@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = sub_24BC8E2D4(a3, v6 + v5);
  if (*(result + 23) >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void sub_24BD082B4(const void ***a1, uint64_t a2, uint64_t a3, unsigned int ***a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = **a1;
  if (((*a1)[1] - v8) > 4)
  {
    v9 = **a4;
    if ((*a4)[1] != v9)
    {
      v13 = v8[1];
      v14 = *v9;
      v15 = *a5;
      v16 = a5[1];
      v17 = *v8;
      LODWORD(v24) = *v8;
      DWORD1(v24) = 1;
      *(&v24 + 1) = v13 | 0x300000000;
      v19 = 0;
      v20 = 0;
      __p = 0;
      sub_24BCC9910(&__p, &v24, &v25, 4uLL);
      sub_24BEA4500(a1, &__p, a7, a8, &v21);
      if (__p)
      {
        v19 = __p;
        operator delete(__p);
      }

      v24 = v21;
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v22[0] = v17;
      v22[1] = 1;
      v22[2] = v13;
      v22[3] = 1;
      v27 = 0;
      v26 = 0uLL;
      sub_24BCC9910(&v26, v22, v23, 4uLL);
      sub_24BEA5334(&v26);
    }
  }

  sub_24BC923C0();
}

void sub_24BD08B9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, uint64_t a53, char a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  sub_24BE7F218(v63 - 240);
  sub_24BE7F218(&a24);
  sub_24BE7F218(&a26);
  sub_24BE7F218(&a28);
  sub_24BE7F218(&a38);
  sub_24BE7F218(&a40);
  sub_24BE7F218(&a46);
  sub_24BE7F218(&a52);
  sub_24BE7F218(&a54);
  sub_24BE7F218(&a59);
  _Unwind_Resume(a1);
}

void sub_24BD08D60()
{
  v1 = *(v0 - 240);
  if (v1)
  {
    *(v0 - 232) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x24BD08CF8);
}

void sub_24BD08D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_24BCC961C(va);
  v8 = v7 - 224;
  v9 = -32;
  do
  {
    sub_24BE7F218(v8);
    v8 = v10 - 16;
    v9 += 16;
  }

  while (v9);
  v11 = *(v7 - 144);
  if (v11)
  {
    *(v7 - 136) = v11;
    operator delete(v11);
  }

  JUMPOUT(0x24BD08D00);
}

void sub_24BD08DC8()
{
  v1 = *(v0 - 144);
  if (v1)
  {
    *(v0 - 136) = v1;
    operator delete(v1);
  }

  JUMPOUT(0x24BD08CFCLL);
}

void sub_24BD08DEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BD08D08);
}

void sub_24BD08E14(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v37[1] = *MEMORY[0x277D85DE8];
  v11 = a1[1];
  v32[0] = *a1;
  v32[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 8);
  v33 = *a2;
  v34 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a3[1];
  v35 = *a3;
  v36 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = 0uLL;
  v25 = 0;
  sub_24BCC9984(&v24, v32, v37, 3uLL);
  for (i = 4; i != -2; i -= 2)
  {
    sub_24BE7F218(&v32[i]);
  }

  sub_24BD1E904(&v24, v15, v32);
  sub_24BCC97B8(&v24);
  v24 = *v32;
  v25 = v33;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  v30 = v32;
  sub_24BCC961C(&v30);
  BYTE4(v30) = 4;
  LODWORD(v30) = 10;
  v32[1] = 0;
  v33 = 0;
  v32[0] = 0;
  sub_24BCE2380(v32, &v30, v31, 1uLL);
  v16 = **a2;
  v17 = *(*a2 + 8) - v16;
  if (v17)
  {
    if (v17 > 4)
    {
      if (v17 != 8)
      {
        v18 = **a1;
        if ((*(*a1 + 1) - v18) > 8)
        {
          v19 = *v16;
          v20 = v16[1];
          v21 = v16[2];
          v22 = *(v18 + 8);
          v26[0] = v19;
          v26[1] = v20;
          v26[2] = v21;
          v26[3] = v22;
          v28 = 0;
          v29 = 0;
          __p = 0;
          sub_24BCC9910(&__p, v26, &__p, 4uLL);
          v30 = 0;
          v31[0] = 0;
          v31[1] = 0;
          sub_24BCE220C(&v30, &__p, &v30, 1uLL);
          if (__p)
          {
            v28 = __p;
            operator delete(__p);
          }

          memset(v23, 0, sizeof(v23));
          sub_24BCE2490(v23, v30, v31[0], 0xAAAAAAAAAAAAAAABLL * ((v31[0] - v30) >> 3));
          sub_24BF02A98(a6, a7);
          operator new();
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BD0914C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, std::__shared_weak_count *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *__p, char *a26)
{
  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  a19 = &a10;
  sub_24BC8EE84(&a19);
  a19 = &a22;
  sub_24BC8EE84(&a19);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

void sub_24BD09210(uint64_t **a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v42[1] = *MEMORY[0x277D85DE8];
  v12 = a1[1];
  *&v36 = *a1;
  *(&v36 + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = *(a2 + 8);
  v37 = *a2;
  v38 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = a3[1];
  v39 = *a3;
  v40 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a4[1];
  v41[0] = *a4;
  v41[1] = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = 0uLL;
  v33 = 0;
  sub_24BCC9984(&v32, &v36, v42, 4uLL);
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(&v36 + i);
  }

  sub_24BD1E904(&v32, v17, &v36);
  sub_24BCC97B8(&v32);
  v32 = v36;
  v33 = v37;
  v37 = 0;
  v36 = 0uLL;
  __p[0] = &v36;
  sub_24BCC961C(__p);
  BYTE4(v36) = 4;
  LODWORD(v36) = 10;
  DWORD2(v36) = 10;
  BYTE12(v36) = 4;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v36, &v37, 2uLL);
  v18 = **a2;
  v19 = *(*a2 + 8) - v18;
  if (v19)
  {
    if (v19 > 4)
    {
      if (v19 != 8)
      {
        v20 = **a1;
        if (((*a1)[1] - v20) > 8)
        {
          v22 = v18[1];
          v23 = v18[2];
          v24 = *(v20 + 8);
          v35[0] = *v18;
          v21 = v35[0];
          v35[1] = v22;
          v35[2] = v23;
          v35[3] = v24;
          v37 = 0;
          v36 = 0uLL;
          sub_24BCC9910(&v36, v35, &v36, 4uLL);
          v34[0] = v21;
          v34[1] = v22;
          v34[2] = v23;
          v34[3] = 2 * v24;
          v39 = 0;
          v40 = 0;
          v38 = 0;
          sub_24BCC9910(&v38, v34, v35, 4uLL);
          v28 = 0;
          v29 = 0;
          v30 = 0;
          sub_24BCE220C(&v28, &v36, v41, 2uLL);
          v25 = 0;
          while (1)
          {
            v26 = *(&v38 + v25);
            if (v26)
            {
              *(&v39 + v25) = v26;
              operator delete(v26);
            }

            v25 -= 24;
            if (v25 == -48)
            {
              memset(v27, 0, sizeof(v27));
              sub_24BCE2490(v27, v28, v29, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
              sub_24BF02A98(a7, a8);
              operator new();
            }
          }
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BD095AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, std::__shared_weak_count *a28)
{
  if (a28)
  {
    sub_24BC9EC78(a28);
  }

  a27 = &a10;
  sub_24BC8EE84(&a27);
  a27 = &a13;
  sub_24BC8EE84(&a27);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  a27 = &a19;
  sub_24BCC961C(&a27);
  _Unwind_Resume(a1);
}

void sub_24BD096BC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94730;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD09738(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, float a7, float a8, float a9, float a10)
{
  v53 = *MEMORY[0x277D85DE8];
  v50 = a8;
  v51 = a7;
  v48 = a10;
  v49 = a9;
  v14 = sub_24BF02A98(a5, a6);
  v15 = v14;
  v46[19] = v14;
  v47 = v16;
  v17 = sub_24BF55DE0();
  v18 = sub_24BF5488C(v17, v15);
  sub_24BCE1268(&v42);
  strcpy(v52, ">lsmNLQN");
  v19 = sub_24BD09B90(v52);
  v20 = strlen(v19);
  sub_24BC95264(&v42, v19, v20);
  std::stringbuf::str();
  v21 = sub_24BCB9A3C(a4);
  sub_24BC836D4(&v40, &unk_24C0435AF);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  __p = 0;
  v35 = 0;
  v36 = 0;
  v22 = sub_24BF55AF4(v17, v52, v21, &v40, &v37, &__p);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  v23 = v37;
  if (v37)
  {
    v38 = v37;
    operator delete(v37);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v40);
  }

  if ((v52[23] & 0x80000000) != 0)
  {
    operator delete(*v52);
  }

  [*v18 MTL:v22 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v23)];
  v37 = *(*a1 + 48);
  v24 = sub_24BF53508(v18, a2, 0, 0);
  v25 = [*v18 MTL:&v51 :16 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v24)];
  v26 = [*v18 MTL:&v50 :16 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v25)];
  v27 = [*v18 MTL:&v49 :16 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v26)];
  v28 = [*v18 MTL:&v48 :16 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v27)];
  [*v18 MTL:&v37 :64 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v28)];
  sub_24BF53508(v18, a1, 6, 0);
  v29 = sub_24BF53508(v18, a3, 7, 0);
  v30 = [v22 MTL:? :? Private:? :? Selector:? :?s_kmaxTotalThreadsPerThreadgroup(v29)];
  if (v30 >= v37)
  {
    v31 = v37;
  }

  else
  {
    v31 = v30;
  }

  *v52 = v37;
  *&v52[8] = vdupq_n_s64(1uLL);
  v40 = v31;
  v41 = *&v52[8];
  sub_24BF53770(v18, v52, &v40);
  v42 = *MEMORY[0x277D82828];
  *(&v42 + *(v42 - 24)) = *(MEMORY[0x277D82828] + 24);
  v43 = MEMORY[0x277D82878] + 16;
  if (v45 < 0)
  {
    operator delete(v44[7].__locale_);
  }

  v43 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v44);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v46);
  v33 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD09B90(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 8; ++i)
  {
    a1[i] ^= v3;
  }

  a1[8] = 0;
  return result;
}

void sub_24BD09BBC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD09C44()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD09CA0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD09CFC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD09D60(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = xmmword_24BFD1F3B;
  v8 = 80;
  v3 = sub_24BD09DEC(&v7);
  v4 = strlen(v3->i8);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

int8x16_t *sub_24BD09DEC(int8x16_t *a1)
{
  v1 = a1;
  v2 = vld1q_dup_s8(v1->i8);
  v1 = (v1 + 1);
  *v1 = veorq_s8(v2, *v1);
  a1[1].i8[1] = 0;
  return v1;
}

uint64_t sub_24BD09E0C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8, float a9, float a10, float a11, float a12, float a13)
{
  v61 = a9;
  v62 = a8;
  v59 = a11;
  v60 = a10;
  v57 = a13;
  v58 = a12;
  v18 = sub_24BF02A98(a6, a7);
  v19 = v18;
  v55[19] = v18;
  v56 = v20;
  v21 = sub_24BF55DE0();
  v22 = sub_24BF5488C(v21, v19);
  sub_24BCE1268(&v51);
  WORD2(v49) = 127;
  LODWORD(v49) = 1937134354;
  v25 = sub_24BD0A284(&v49, v23, v24);
  v26 = strlen(v25);
  sub_24BC95264(&v51, v25, v26);
  std::stringbuf::str();
  v27 = sub_24BCB9A3C(a5);
  sub_24BC836D4(&v47, &unk_24C0435AF);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  __p = 0;
  v42 = 0;
  v43 = 0;
  v28 = sub_24BF55AF4(v21, &v49, v27, &v47, &v44, &__p);
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }

  v29 = v44;
  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v48.i8[15] < 0)
  {
    operator delete(v47);
  }

  if (v50.i8[15] < 0)
  {
    operator delete(v49);
  }

  [*v22 MTL:v28 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v29)];
  v44 = *(*a1 + 48);
  v30 = sub_24BF53508(v22, a2, 0, 0);
  v31 = [*v22 MTL:&v62 :4 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v30)];
  v32 = [*v22 MTL:&v61 :4 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v31)];
  v33 = [*v22 MTL:&v60 :4 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v32)];
  v34 = [*v22 MTL:&v59 :4 Private:4 :? Selector:? :?s_ksetBytes_length_atIndex_(v33)];
  v35 = [*v22 MTL:&v58 :4 Private:5 :? Selector:? :?s_ksetBytes_length_atIndex_(v34)];
  v36 = [*v22 MTL:&v57 :4 Private:6 :? Selector:? :?s_ksetBytes_length_atIndex_(v35)];
  [*v22 MTL:&v44 :8 Private:7 :? Selector:? :?s_ksetBytes_length_atIndex_(v36)];
  sub_24BF53508(v22, a1, 8, 0);
  sub_24BF53508(v22, a3, 9, 0);
  v37 = sub_24BF53508(v22, a4, 10, 0);
  v38 = [v28 MTL:? :? Private:? :? Selector:? :?s_kmaxTotalThreadsPerThreadgroup(v37)];
  if (v38 >= v44)
  {
    v39 = v44;
  }

  else
  {
    v39 = v38;
  }

  v49 = v44;
  v50 = vdupq_n_s64(1uLL);
  v47 = v39;
  v48 = v50;
  sub_24BF53770(v22, &v49, &v47);
  v51 = *MEMORY[0x277D82828];
  *(&v51 + *(v51 - 24)) = *(MEMORY[0x277D82828] + 24);
  v52 = MEMORY[0x277D82878] + 16;
  if (v54 < 0)
  {
    operator delete(v53[7].__locale_);
  }

  v52 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v53);
  std::ostream::~ostream();
  return MEMORY[0x24C2547D0](v55);
}

unsigned __int8 *sub_24BD0A284(unsigned __int8 *a1, double a2, uint8x8_t a3)
{
  a3.i32[0] = *(a1 + 1);
  v3 = veor_s8(vdup_n_s16(*a1), *&vmovl_u8(a3));
  *(a1 + 1) = vuzp1_s8(v3, v3).u32[0];
  a1[5] = 0;
  return a1 + 1;
}

void sub_24BD0A2B0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0A340()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0A39C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0A3F8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD0A45C(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = 0x3E37713C30351051;
  strcpy(v8, "#&0#5[");
  v3 = sub_24BCBCD64(&v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD0A52C(uint64_t a1)
{
  if (*a1 > 0)
  {
    return *(a1 + 36);
  }

  else
  {
    return 0;
  }
}

void sub_24BD0A540(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t *a4, uint64_t **a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v43 = *MEMORY[0x277D85DE8];
  v14 = a1[1];
  *&v34 = *a1;
  *(&v34 + 1) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(v14 + 1, 1uLL, memory_order_relaxed);
  }

  v15 = a2[1];
  *&v35 = *a2;
  *(&v35 + 1) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  v16 = a3[1];
  v36 = *a3;
  v37 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v17 = a4[1];
  v38 = *a4;
  v39 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a5[1];
  v40 = *a5;
  v41 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(v18 + 1, 1uLL, memory_order_relaxed);
  }

  v32 = 0uLL;
  v33 = 0;
  sub_24BCC9984(&v32, &v34, v42, 5uLL);
  for (i = 64; i != -16; i -= 16)
  {
    sub_24BE7F218(&v34 + i);
  }

  sub_24BD1E904(&v32, v20, &v34);
  sub_24BCC97B8(&v32);
  v32 = v34;
  v33 = v35;
  *&v35 = 0;
  v34 = 0uLL;
  __p[0] = &v34;
  sub_24BCC961C(__p);
  v34 = xmmword_24BFD1F50;
  v35 = unk_24BFD1F60;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v34, &v36, 4uLL);
  v21 = *a1;
  *&v35 = 0;
  v34 = 0uLL;
  sub_24BCC9A1C(&v34, *v21, v21[1], (v21[1] - *v21) >> 2);
  v22 = *a2;
  v36 = 0;
  v37 = 0;
  *(&v35 + 1) = 0;
  sub_24BCC9A1C(&v35 + 8, *v22, v22[1], (v22[1] - *v22) >> 2);
  v23 = *a3;
  v39 = 0;
  v40 = 0;
  v38 = 0;
  sub_24BCC9A1C(&v38, *v23, v23[1], (v23[1] - *v23) >> 2);
  v24 = *a5;
  v42[0] = 0;
  v42[1] = 0;
  v41 = 0;
  sub_24BCC9A1C(&v41, *v24, v24[1], (v24[1] - *v24) >> 2);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  sub_24BCE220C(&v28, &v34, &v43, 4uLL);
  v25 = 0;
  while (1)
  {
    v26 = v42[v25 - 1];
    if (v26)
    {
      v42[v25] = v26;
      operator delete(v26);
    }

    v25 -= 3;
    if (v25 == -12)
    {
      memset(v27, 0, sizeof(v27));
      sub_24BCE2490(v27, v28, v29, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
      sub_24BF02A98(a9, a10);
      sub_24BD0D58C();
    }
  }
}

void sub_24BD0A924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char *a31, uint64_t a32)
{
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(v32 + i);
  }

  a31 = &a18;
  sub_24BCC961C(&a31);
  a31 = &a21;
  sub_24BC8EE84(&a31);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  a31 = &a27;
  sub_24BCC961C(&a31);
  _Unwind_Resume(a1);
}

void sub_24BD0AA54(uint64_t **a1, uint64_t **a2, uint64_t **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v33 = 0uLL;
  v34 = 0;
  if (*(a4 + 37) == 1)
  {
    v11 = a1[1];
    *&v35 = *a1;
    *(&v35 + 1) = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    v12 = a2[1];
    v36 = *a2;
    v37 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = *a3;
    v38 = **a3;
    v14 = v13[1];
    v39 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      v13 = *a3;
    }

    v40[0] = v13[2];
    v15 = v13[3];
    v40[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      v13 = *a3;
    }

    v40[2] = v13[4];
    v16 = v13[5];
    v40[3] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BD0D7A8(&v33, &v35, v41, 5uLL);
    for (i = 64; i != -16; i -= 16)
    {
      sub_24BE7F218(&v35 + i);
    }
  }

  else
  {
    v19 = a1[1];
    *&v35 = *a1;
    *(&v35 + 1) = v19;
    if (v19)
    {
      atomic_fetch_add_explicit(v19 + 1, 1uLL, memory_order_relaxed);
    }

    v20 = a2[1];
    v36 = *a2;
    v37 = v20;
    if (v20)
    {
      atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
    }

    v21 = *a3;
    v38 = **a3;
    v22 = v21[1];
    v39 = v22;
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    sub_24BD0D7A8(&v33, &v35, v40, 3uLL);
    for (j = 32; j != -16; j -= 16)
    {
      sub_24BE7F218(&v35 + j);
    }
  }

  sub_24BD1E904(&v33, v18, &v35);
  sub_24BCC97B8(&v33);
  v33 = v35;
  v34 = v36;
  v36 = 0;
  v35 = 0uLL;
  __p[0] = &v35;
  sub_24BCC961C(__p);
  BYTE4(v35) = 4;
  LODWORD(v35) = 10;
  DWORD2(v35) = 10;
  BYTE12(v35) = 4;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v35, &v36, 2uLL);
  v24 = *a1;
  v36 = 0;
  v35 = 0uLL;
  sub_24BCC9A1C(&v35, *v24, v24[1], (v24[1] - *v24) >> 2);
  v25 = *a2;
  v38 = 0;
  v39 = 0;
  v37 = 0;
  sub_24BCC9A1C(&v37, *v25, v25[1], (v25[1] - *v25) >> 2);
  v29 = 0;
  v30 = 0;
  v31 = 0;
  sub_24BCE220C(&v29, &v35, v40, 2uLL);
  v26 = 0;
  while (1)
  {
    v27 = (&v37)[v26];
    if (v27)
    {
      *(&v38 + v26 * 8) = v27;
      operator delete(v27);
    }

    v26 -= 3;
    if (v26 == -6)
    {
      memset(v28, 0, sizeof(v28));
      sub_24BCE2490(v28, v29, v30, 0xAAAAAAAAAAAAAAABLL * ((v30 - v29) >> 3));
      sub_24BF02A98(a6, a7);
      sub_24BD0D58C();
    }
  }
}

void sub_24BD0AE10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28)
{
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(v28 + i);
  }

  a27 = &a23;
  sub_24BCC961C(&a27);
  _Unwind_Resume(a1);
}

void sub_24BD0AF1C(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

_BYTE *sub_24BD0B680(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 28; ++i)
  {
    a1[i] ^= v3;
  }

  a1[28] = 0;
  return result;
}

_BYTE *sub_24BD0B6AC(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 25; ++i)
  {
    a1[i] ^= v3;
  }

  a1[25] = 0;
  return result;
}

void sub_24BD0B6D8(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

void sub_24BD0BD84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  sub_24BCE1400(&a22);
  v24 = *(v22 - 248);
  if (v24)
  {
    *(v22 - 240) = v24;
    operator delete(v24);
  }

  _Unwind_Resume(a1);
}

void sub_24BD0BE44(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *a3;
  if (*(a3 + 36) == 1)
  {
    v5 = __OFSUB__(v3, 1);
    v4 = v3 - 1 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if (v4 == v5)
  {
    sub_24BD0B6D8(a1, a2);
  }

  sub_24BD0AF1C(a1, a2);
}

void sub_24BD0BE60()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0BEBC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD0BE44(a2, a3, (a1 + 24));
}

void sub_24BD0BEE0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0BF3C(uint64_t a1, uint64_t *a2, uint64_t ***a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = 0uLL;
  v12 = 0;
  v8 = a1 + 24;
  v9 = *a2;
  if (*(a1 + 60) == 1 && *(a1 + 24) >= 1)
  {
    sub_24BD0A540(v9, (v9 + 16), (v9 + 32), (v9 + 48), *a3, v8, a1 + 64, a8, *(a1 + 8), *(a1 + 16) | 0x100000000);
  }

  sub_24BD0AA54(v9, (v9 + 16), a3, v8, a1 + 64, *(a1 + 8), *(a1 + 16) | 0x100000000);
}

void sub_24BD0C0A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  a11 = &a15;
  sub_24BCC961C(&a11);
  _Unwind_Resume(a1);
}

void sub_24BD0C0F0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD0C154(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = xmmword_24BFD2011;
  *&v7[9] = *(&xmmword_24BFD2011 + 9);
  v3 = sub_24BD0C1E0(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD0C1E0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 24; ++i)
  {
    a1[i] ^= v3;
  }

  a1[24] = 0;
  return result;
}

void sub_24BD0C20C(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

void sub_24BD0C8F4(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

void sub_24BD0D0F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58)
{
  sub_24BCE1400(&a22);
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_24BD0D1C8(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *a3;
  if (*(a3 + 36) == 1)
  {
    v5 = __OFSUB__(v3, 1);
    v4 = v3 - 1 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  if (v4 == v5)
  {
    sub_24BD0C8F4(a1, a2);
  }

  sub_24BD0C20C(a1, a2);
}

void sub_24BD0D1E4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0D240(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD0D1C8(a2, a3, (a1 + 24));
}

void sub_24BD0D264()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0D2C0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0D31C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD0D380(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = xmmword_24BFD207B;
  *&v7[10] = *(&xmmword_24BFD207B + 10);
  v3 = sub_24BD0B6AC(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24BD0D40C(void *a1)
{
  *a1 = &unk_285F94870;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BD0D45C(void *a1)
{
  *a1 = &unk_285F94870;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BD0D4CC(void *a1)
{
  *a1 = &unk_285F948E8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BD0D51C(void *a1)
{
  *a1 = &unk_285F948E8;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

void *sub_24BD0D610(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F94960;
  sub_24BD0D71C((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BD0D6A0(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD0D71C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F948E8;
  *(a1 + 8) = a2;
  *(a1 + 24) = *a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  sub_24BCC9A1C(a1 + 32, *(a4 + 8), *(a4 + 16), (*(a4 + 16) - *(a4 + 8)) >> 2);
  *(a1 + 56) = *(a4 + 32);
  *(a1 + 60) = *(a4 + 36);
  *(a1 + 64) = *a5;
  return a1;
}

void sub_24BD0D7A8(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v7 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_24BCC97B8(a1);
    if (!(a4 >> 60))
    {
      v8 = *(a1 + 16) - *a1;
      v9 = v8 >> 3;
      if (v8 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v8 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCC95E0(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = *(a1 + 8) - v7;
  if (a4 <= v11 >> 4)
  {
    sub_24BD0D910(&v20, a2, a3, v7);
    v17 = v16;
    v18 = *(a1 + 8);
    if (v18 != v16)
    {
      do
      {
        sub_24BE7F218(v18 - 16);
      }

      while (v18 != v17);
    }

    *(a1 + 8) = v17;
  }

  else
  {
    v12 = (a2 + v11);
    sub_24BD0D910(&v19, a2, (a2 + v11), v7);
    v13 = *(a1 + 8);
    if (v12 != a3)
    {
      v14 = *(a1 + 8);
      do
      {
        v15 = v12[1];
        *v14 = *v12;
        v14[1] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        }

        v12 += 2;
        v14 += 2;
        v13 += 16;
      }

      while (v12 != a3);
    }

    *(a1 + 8) = v13;
  }
}

uint64_t *sub_24BD0D910(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      if (*a4 != *v5)
      {
        v8 = v5[1];
        if (v8)
        {
          atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
        }

        v9 = a4[1];
        *a4 = v7;
        a4[1] = v8;
        if (v9)
        {
          sub_24BC9EC78(v9);
        }
      }

      v5 += 2;
      a4 += 2;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_24BD0D998(uint64_t a1, uint64_t *a2)
{
  v4[4] = *MEMORY[0x277D85DE8];
  v2 = *a2;
  v3 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v4[0] = &off_285F93798;
  v4[1] = sub_24BE7E1F0;
  v4[3] = v4;
  sub_24BE7EE1C(v2, v3);
}

void sub_24BD0DF20(_Unwind_Exception *a1, uint64_t a2, void *__p, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  sub_24BD0E408(&a15, MEMORY[0x277D82828]);
  MEMORY[0x24C2547D0](va);
  v30 = *(v28 - 240);
  if (v30)
  {
    *(v28 - 232) = v30;
    operator delete(v30);
  }

  v31 = *(v28 - 216);
  if (v31)
  {
    *(v28 - 208) = v31;
    operator delete(v31);
  }

  v32 = *(v28 - 192);
  if (v32)
  {
    *(v28 - 184) = v32;
    operator delete(v32);
  }

  v33 = *(v28 - 168);
  if (v33)
  {
    *(v28 - 160) = v33;
    operator delete(v33);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_24BD0E030(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 11; ++i)
  {
    a1[i] ^= v3;
  }

  a1[11] = 0;
  return result;
}

void sub_24BD0E05C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD0E0B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD0D998(a2, a3);
}

void sub_24BD0E0DC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

uint64_t sub_24BD0E138@<X0>(uint64_t result@<X0>, uint64_t ***a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (*a3 != *(a3 + 8))
  {
    if (**a3 >= 1)
    {
      sub_24BE80D1C();
      sub_24BCCCD5C();
    }

    v4 = (*a2)[1];
    v5[0] = **a2;
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    }

    sub_24BD1D430(v5, result + 24, result + 48, *(result + 8), *(result + 16) | 0x100000000);
  }

  return result;
}

void sub_24BD0E228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void **a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  sub_24BCC961C(&a11);
  _Unwind_Resume(a1);
}

void sub_24BD0E264()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD0E2C8(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = xmmword_24BFD2120;
  v3 = sub_24BCBBD2C(&v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void *sub_24BD0E348(void *a1)
{
  *a1 = &unk_285F949B0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_24BD0E398(void *a1)
{
  *a1 = &unk_285F949B0;
  v2 = a1[3];
  if (v2)
  {
    a1[4] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD0E408(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

void *sub_24BD0E524(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_24BC94FEC(result, a2);
  }

  return result;
}

void sub_24BD0E61C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD0E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 16) = *a3;
  *(a1 + 32) = *(a3 + 16);
  *(a1 + 48) = *(a3 + 32);
  *(a1 + 64) = *(a3 + 48);
  *(a1 + 68) = *(a3 + 52);
  *(a1 + 72) = *(a3 + 56);
  v5 = *(a3 + 60);
  *(a1 + 85) = *(a3 + 69);
  *(a1 + 76) = v5;
  *(a1 + 112) = 0;
  *(a1 + 116) = a4;
  *(a1 + 124) = a5;
  sub_24BE80D1C();
  sub_24BCCCD5C();
}

void sub_24BD0E764(_Unwind_Exception *a1)
{
  sub_24BE7F218(v1 + 216);
  sub_24BE7F218(v1 + 200);
  sub_24BE7F218(v1 + 184);
  sub_24BE7F218(v1 + 168);
  sub_24BE7F218(v1 + 152);
  sub_24BE7F218(v1 + 136);
  _Unwind_Resume(a1);
}

void sub_24BD0E7C8(uint64_t a1)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 112) - *(*a1 + 104);
  v3 = v2 >> 2;
  sub_24BC95764(&v13, ((v2 >> 1) + (v2 >> 2)));
  if ((v2 >> 2) > 0)
  {
    v4 = 0;
    v5 = 0;
    v6 = (v2 >> 2) & 0x7FFFFFFF;
    do
    {
      v7 = (*(*a1 + 8) + 16 * *(*a1 + 176));
      v9 = *v7;
      v8 = v7[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_24BC9EC78(v8);
      }

      v10 = *(*(v9 + 40) + 16 * v5);
      v11 = v13 + v4;
      *v11 = v10;
      *(v11 + 2) = DWORD2(v10);
      ++v5;
      v4 += 12;
    }

    while (v6 != v5);
  }

  v14[0] = v3;
  v14[1] = 3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, v14, v15, 2uLL);
  sub_24BCCA338();
}

void sub_24BD0ECF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  sub_24BCC961C(&a13);
  for (i = 80; i != -16; i -= 16)
  {
    sub_24BE7F218(&__p + i);
  }

  _Unwind_Resume(a1);
}

void sub_24BD0EE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD0EE4C(uint64_t *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = *(*a1 + 152);
  v2 = *(*a1 + 160);
  v4 = v2 - v3;
  sub_24BC94F74(&v13, ((v2 - v3) >> 1) + ((v2 - v3) >> 2));
  sub_24BCB2008(&v12, 3uLL);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = 0;
    if ((v4 >> 2) <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4 >> 2;
    }

    do
    {
      LODWORD(v11) = v6;
      sub_24BCD567C(*a1, &v11, &v12);
      v8 = v12;
      v9 = v13 + v5;
      *v9 = *v12;
      v9[1] = v8[1];
      v9[2] = v8[2];
      ++v6;
      v5 += 12;
    }

    while (v7 != v6);
  }

  v14[0] = v4 >> 2;
  v14[1] = 3;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, v14, &v15, 2uLL);
  sub_24BCCAB48();
}

void sub_24BD0EFFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  if (a18)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD0F054(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = sub_24BF02A98(a1, 0);
  sub_24BEB1A88((a1 + 200), 0, v2, v3 | 0x100000000);
}

void sub_24BD0F850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  sub_24BE7F218(&a30);
  _Unwind_Resume(a1);
}

void sub_24BD0FA40(float a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v5 = a1;
  pow(a1, (a4 - 1));
  pow(v5, a4);
  sub_24BCBF458();
}

void sub_24BD0FB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_24BE7F218(&a9);
  sub_24BE7F218(&a11);
  _Unwind_Resume(a1);
}

void sub_24BD0FB50(uint64_t a1)
{
  v3 = *(a1 + 128);
  v2 = *(a1 + 136);
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((v2 - v3) >> 2);
  LOBYTE(v17) = 0;
  sub_24BC9FEFC(&v18, v4);
  sub_24BC94F74(&v17, v4);
  if (v2 != v3)
  {
    v5 = 0;
    v6 = 0;
    if (v4 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v4;
    }

    do
    {
      v8 = *(v18 + (v6 >> 6));
      if ((v8 & (1 << v6)) == 0)
      {
        *(v18 + (v6 >> 6)) = v8 | (1 << v6);
        v16 = v6;
        v9 = sub_24BCB9024(a1 + 104, &v16);
        *(v18 + ((*v9 >> 3) & 0x1FFFFFF8)) |= 1 << *v9;
        v10 = *(sub_24BCB9024(a1 + 104, &v16) + 12);
        v11 = sub_24BCB9024(a1 + 104, &v16);
        v12 = *(sub_24BCB9024(a1 + 104, v11) + 12);
        if (v12 >= v10)
        {
          v13 = v10;
        }

        else
        {
          v13 = v12;
        }

        if (v10 > v12)
        {
          v12 = v10;
        }

        v14 = v17;
        *(v17 + 2 * v5) = v13;
        v14[2 * v5++ + 1] = v12;
      }

      ++v6;
    }

    while (v7 != v6);
  }

  v16 = v4;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v16, &v17, 1uLL);
  sub_24BCCAB48();
}

void sub_24BD0FD04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD0FD58(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  ++*(a1 + 112);
  v1 = *a1;
  v3 = *(v1 + 128);
  v2 = *(v1 + 136);
  sub_24BD0FB50(v1);
}

void sub_24BD10DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, char a45, uint64_t a46, char a47, uint64_t a48, char a49, uint64_t a50, void *a51, uint64_t a52, char a53)
{
  sub_24BE7F218(&a51);
  sub_24BE7F218(v53 - 160);
  sub_24BE7F218(&a21);
  sub_24BE7F218(v53 - 112);
  sub_24BE7F218(&a23);
  sub_24BE7F218(v53 - 96);
  sub_24BE7F218(&a26);
  sub_24BE7F218(&a28);
  sub_24BE7F218(&a33);
  sub_24BE7F218(&a41);
  sub_24BE7F218(&a43);
  sub_24BE7F218(&a45);
  sub_24BE7F218(&a47);
  sub_24BE7F218(&a49);
  _Unwind_Resume(a1);
}

void sub_24BD1125C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BD111D4);
}

void sub_24BD11290(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BD111DCLL);
}

void sub_24BD112A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x24BD111E4);
}

void sub_24BD112F0(uint64_t **a1, void *a2, uint64_t **a3, int a4, uint64_t a5, uint64_t a6)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = a2[1];
  v15[0] = *a2;
  v15[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  memset(v14, 0, sizeof(v14));
  sub_24BCC9984(v14, v15, &v16, 1uLL);
  v12 = a4;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v12, __p, 1uLL);
  sub_24BEBF8D0(a1, v14, a3, __p, a5, a6);
}

void sub_24BD1140C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *__p, char *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  sub_24BE7F218(&a16);
  _Unwind_Resume(a1);
}

void sub_24BD114C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

void sub_24BD11544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_24BE7F218(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD1158C(uint64_t **a1, uint64_t a2, const void **a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    v6 = 0;
    while (1)
    {
      v7 = *v3;
      if (*v3)
      {
        break;
      }

LABEL_23:
      v3 += 2;
      v6 = (v6 + 1);
      if (v3 == v4)
      {
        return 0xFFFFFFFFLL;
      }
    }

    if (*(v7 + 31) < 0)
    {
      sub_24BC8DE9C(__p, *(v7 + 8), *(v7 + 16));
    }

    else
    {
      v8 = *(v7 + 8);
      v18 = *(v7 + 24);
      *__p = v8;
    }

    v9 = SHIBYTE(v18);
    if (v18 >= 0)
    {
      v10 = HIBYTE(v18);
    }

    else
    {
      v10 = __p[1];
    }

    v11 = *(a3 + 23);
    v12 = v11;
    if (v11 < 0)
    {
      v11 = a3[1];
    }

    if (v10 == v11 && (v18 >= 0 ? (v13 = __p) : (v13 = __p[0]), v12 >= 0 ? (v14 = a3) : (v14 = *a3), !memcmp(v13, v14, v10)))
    {
      v15 = *(*v3 + 32) == sub_24BD116B4;
      if ((v9 & 0x80000000) == 0)
      {
LABEL_22:
        if (v15)
        {
          return v6;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v15 = 0;
      if ((v9 & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    operator delete(__p[0]);
    goto LABEL_22;
  }

  return 0xFFFFFFFFLL;
}

void sub_24BD116C8(const void **a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1 == v3)
  {
    v5 = *a1;
  }

  else
  {
    v4 = 0;
    v5 = *a1;
    while (*v5)
    {
      v5 += 16;
      ++v4;
      if (v5 == v3)
      {
        goto LABEL_8;
      }
    }
  }

  if (v5 == v3)
  {
LABEL_8:
    v6 = a1[2];
    if (v3 >= v6)
    {
      v8 = v3 - v2;
      v9 = (v3 - v2) >> 4;
      v10 = v9 + 1;
      if ((v9 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v11 = v6 - v2;
      if (v11 >> 3 > v10)
      {
        v10 = v11 >> 3;
      }

      if (v11 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      v15[4] = a1;
      if (v10)
      {
        sub_24BCB53E8(a1, v10);
      }

      v12 = (16 * v9);
      v7 = 16 * v9 + 16;
      *v12 = 0;
      v12[1] = 0;
      memcpy(0, v2, v8);
      v13 = *a1;
      *a1 = 0;
      a1[1] = v7;
      v14 = a1[2];
      a1[2] = 0;
      v15[2] = v13;
      v15[3] = v14;
      v15[0] = v13;
      v15[1] = v13;
      sub_24BCB5430(v15);
    }

    else
    {
      v7 = (v3 + 16);
      *v3 = 0;
      *(v3 + 1) = 0;
    }

    a1[1] = v7;
  }

  sub_24BD11858();
}

void *sub_24BD118CC(void *a1, __int128 *a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F94A28;
  sub_24BCB5648(a1 + 3, a2, a3);
  a1[3] = &unk_285F94A60;
  a1[9] = 0;
  a1[10] = 0;
  a1[8] = 0;
  return a1;
}

void sub_24BD1196C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94A28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD119EC(void *a1)
{
  sub_24BD11C64(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD11A50(void *a1)
{
  v2 = a1[5];
  a1[6] = 0;
  a1[7] = 0;
  a1[5] = 0;
  if (v2)
  {
    operator delete(v2);
  }
}

void sub_24BD11A6C(void *a1)
{
  v3 = a1[6];
  v2 = a1[7];
  if (v3 >= v2)
  {
    v5 = a1[5];
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_24BC8E01C();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v2 - v5) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_24BCDD6B8((a1 + 5), v9);
    }

    v10 = 24 * v6;
    *v10 = 0;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    v4 = 24 * v6 + 24;
    v11 = a1[5];
    v12 = a1[6] - v11;
    v13 = 24 * v6 - v12;
    memcpy((v10 - v12), v11, v12);
    v14 = a1[5];
    a1[5] = v13;
    a1[6] = v4;
    a1[7] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
    v4 = (v3 + 3);
    v3[2] = 0;
  }

  a1[6] = v4;
}

__n128 sub_24BD11B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = (v3 + 24 * a2);
  v5 = v4[1].n128_u64[0];
  result = *v4;
  v7 = (v3 + 24 * a3);
  v8 = v7[1].n128_u64[0];
  *v4 = *v7;
  v4[1].n128_u64[0] = v8;
  v9 = (*(a1 + 40) + 24 * a3);
  *v9 = result;
  v9[1].n128_u64[0] = v5;
  return result;
}

__n128 sub_24BD11BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 40);
  v4 = (v3 + 24 * a2);
  result = *v4;
  v6 = (v3 + 24 * a3);
  v6[1].n128_u64[0] = v4[1].n128_u64[0];
  *v6 = result;
  return result;
}

uint64_t sub_24BD11C64(void *a1)
{
  *a1 = &unk_285F94A60;
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  return sub_24BCB2264(a1);
}

void *sub_24BD11CC4(void *a1, uint64_t a2)
{
  v4 = sub_24BCB5B18(a1, a2);
  *v4 = &unk_285F94A60;
  v4[6] = 0;
  v4[7] = 0;
  v4[5] = 0;
  sub_24BD11D44((v4 + 5), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  return a1;
}

uint64_t sub_24BD11D44(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCDD9BC(result, a4);
  }

  return result;
}

void sub_24BD11DA4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD11E28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_24BFB8C1C(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD11E44(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD11E7C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

MTL::Private::Selector *sub_24BD11EB0(MTL::Private::Selector *a1, void **a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = MTL::Private::Selector::s_ksupportsFamily_(a1);
  v6 = [v4 NS:v5 :? Private:? :? Selector:? :?s_krespondsToSelector_(v5)];
  if ((v6 & 1) != 0 || (v7 = [v4 NS:v5 :? Private:? :? Selector:? :?s_kmethodSignatureForSelector_(v6)]) != 0)
  {
    LOBYTE(v7) = [v4 v5];
  }

  v15 = v7;
  strcpy(v17, ">ZWXXL_MJaSRFaRW\\L_LG");
  v8 = sub_24BCE1904(v17);
  v9 = strlen(v8);
  if (v9 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_24BC8DF40();
  }

  v10 = v9;
  if (v9 >= 0x17)
  {
    operator new();
  }

  v14 = v9;
  if (v9)
  {
    memmove(&__p, v8, v9);
  }

  *(&__p + v10) = 0;
  v16[0] = &unk_285F94B08;
  v16[1] = &v15;
  v16[3] = v16;
  *a1 = sub_24BF5563C(a2, &__p, v16);
  sub_24BD12278(v16);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  v11 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_24BD12064(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  sub_24BD12278(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24BD12104(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_285F94B08;
  a2[1] = v2;
  return result;
}

void *sub_24BD12130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (**(a1 + 8) == 1)
  {
    *v9 = xmmword_24BFD225E;
    *&v9[15] = 0x500E1B15161C05;
    sub_24BCE21B0(v9);
    sub_24BD07FF4();
    result = std::operator+<char>();
LABEL_5:
    v5 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = sub_24BD07FF4();
  if ((*(result + 23) & 0x80000000) == 0)
  {
    v4 = *result;
    *(a2 + 16) = result[2];
    *a2 = v4;
    goto LABEL_5;
  }

  v6 = *result;
  v7 = result[1];
  v8 = *MEMORY[0x277D85DE8];

  return sub_24BC8DE9C(a2, v6, v7);
}

uint64_t sub_24BD1222C(uint64_t a1, uint64_t a2)
{
  if (sub_24BCC9488(a2, &unk_285F94B78))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24BD12278(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void sub_24BD122F8(float a1, float a2, float a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = a1;
  v8 = 0x3F80000000000000;
  v9 = 0;
  v10 = a2;
  v11 = 0;
  v12 = 1065353216;
  v13 = a3;
  v14 = xmmword_24BFD22D0;
  v4 = 0x400000004;
  v5 = 1065353216;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v4, &v5, 2uLL);
  sub_24BCCBF54();
}

void sub_24BD123E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD12404(int a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  v19 = *MEMORY[0x277D85DE8];
  v10[0] = (a6 + a6) / (a3 - a2);
  v10[1] = 0.0;
  v10[2] = (a2 + a3) / (a3 - a2);
  v11 = 0;
  v7 = (a6 + a6) / (a4 - a5);
  if (a1)
  {
    v7 = -v7;
  }

  v12 = v7;
  v13 = (a4 + a5) / (a4 - a5);
  v14 = 0;
  v15 = 0;
  v16 = -(a6 + a7) / (a7 - a6);
  v17 = ((a7 * -2.0) * a6) / (a7 - a6);
  v18 = xmmword_24BFD22E0;
  v9 = 0x400000004;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v9, v10, 2uLL);
  sub_24BCCBF54();
}

void sub_24BD1252C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD13574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, char a55)
{
  sub_24BE7F218(&a55);
  sub_24BE7F218(v55 - 192);
  if (*(v55 - 128) == 1)
  {
    sub_24BE7F218(v55 - 144);
  }

  v57 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v57;
    operator delete(v57);
  }

  sub_24BE7F218(v55 - 160);
  sub_24BE7F218(&STACK[0x270]);
  sub_24BE7F218(&STACK[0x280]);
  sub_24BE7F218(&STACK[0x290]);
  sub_24BE7F218(&STACK[0x2A0]);
  _Unwind_Resume(a1);
}

void sub_24BD1394C()
{
  v0 = STACK[0x240];
  if (STACK[0x240])
  {
    STACK[0x248] = v0;
    operator delete(v0);
  }

  JUMPOUT(0x24BD137D4);
}

void sub_24BD1396C()
{
  if (STACK[0x258])
  {
    STACK[0x260] = STACK[0x258];
    JUMPOUT(0x24BD1397CLL);
  }

  JUMPOUT(0x24BD137DCLL);
}

void sub_24BD139AC(const void ***a1, const void ***a2, uint64_t a3, uint64_t a4)
{
  v61[2] = *MEMORY[0x277D85DE8];
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  sub_24BCC9910(&v53, &v57, &v58, 2uLL);
  v8 = **a1;
  if ((*a1)[1] != v8)
  {
    v59 = *v8;
    v60 = 1;
    v51 = 0;
    v52 = 0;
    v50 = 0;
    sub_24BCC9910(&v50, &v59, v61, 2uLL);
    sub_24BEA8020(a1, &v53, &v50, a3, a4, &v56);
    if (v50)
    {
      v51 = v50;
      operator delete(v50);
    }

    if (v53)
    {
      v54 = v53;
      operator delete(v53);
    }

    v57 = 0x100000000;
    v47 = 0;
    v48 = 0;
    v46 = 0;
    sub_24BCC9910(&v46, &v57, &v58, 2uLL);
    v9 = **a1;
    if ((*a1)[1] != v9)
    {
      v59 = *v9;
      v60 = 2;
      v44 = 0;
      v45 = 0;
      __p = 0;
      sub_24BCC9910(&__p, &v59, v61, 2uLL);
      sub_24BEA8020(a1, &v46, &__p, a3, a4, v49);
      if (__p)
      {
        v44 = __p;
        operator delete(__p);
      }

      if (v46)
      {
        v47 = v46;
        operator delete(v46);
      }

      v57 = 0x200000000;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      sub_24BCC9910(&v39, &v57, &v58, 2uLL);
      v10 = **a1;
      if ((*a1)[1] != v10)
      {
        v59 = *v10;
        v60 = 3;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        sub_24BCC9910(&v36, &v59, v61, 2uLL);
        sub_24BEA8020(a1, &v39, &v36, a3, a4, &v42);
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

        v57 = 0;
        v33 = 0;
        v34 = 0;
        v32 = 0;
        sub_24BCC9910(&v32, &v57, &v58, 2uLL);
        v11 = **a2;
        if ((*a2)[1] != v11)
        {
          v59 = *v11;
          v60 = 1;
          v30 = 0;
          v31 = 0;
          v29 = 0;
          sub_24BCC9910(&v29, &v59, v61, 2uLL);
          sub_24BEA8020(a2, &v32, &v29, a3, a4, &v35);
          if (v29)
          {
            v30 = v29;
            operator delete(v29);
          }

          if (v32)
          {
            v33 = v32;
            operator delete(v32);
          }

          v57 = 0x100000000;
          v26 = 0;
          v27 = 0;
          v25 = 0;
          sub_24BCC9910(&v25, &v57, &v58, 2uLL);
          v12 = **a2;
          if ((*a2)[1] != v12)
          {
            v59 = *v12;
            v60 = 2;
            v23 = 0;
            v24 = 0;
            v22 = 0;
            sub_24BCC9910(&v22, &v59, v61, 2uLL);
            sub_24BEA8020(a2, &v25, &v22, a3, a4, &v28);
            if (v22)
            {
              v23 = v22;
              operator delete(v22);
            }

            if (v25)
            {
              v26 = v25;
              operator delete(v25);
            }

            v57 = 0x200000000;
            v19 = 0;
            v20 = 0;
            v18 = 0;
            sub_24BCC9910(&v18, &v57, &v58, 2uLL);
            v13 = **a2;
            if ((*a2)[1] != v13)
            {
              v59 = *v13;
              v60 = 3;
              v16 = 0;
              v17 = 0;
              v15 = 0;
              sub_24BCC9910(&v15, &v59, v61, 2uLL);
              sub_24BEA8020(a2, &v18, &v15, a3, a4, v21);
              if (v15)
              {
                v16 = v15;
                operator delete(v15);
              }

              if (v18)
              {
                v19 = v18;
                operator delete(v18);
              }

              sub_24BEB73D8(v49, v21, v14);
            }

            sub_24BC923C0();
          }

          sub_24BC923C0();
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BD13FC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  *(v47 - 152) = v46;
  sub_24BCC961C((v47 - 152));
  for (i = 32; i != -16; i -= 16)
  {
    sub_24BE7F218(v47 - 144 + i);
  }

  sub_24BE7F218(&a10);
  sub_24BE7F218(&a12);
  sub_24BE7F218(&a14);
  sub_24BE7F218(&a22);
  sub_24BE7F218(&a30);
  sub_24BE7F218(&a38);
  sub_24BE7F218(&a46);
  sub_24BE7F218(v47 - 232);
  sub_24BE7F218(v47 - 168);
  _Unwind_Resume(a1);
}

void sub_24BD140B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  JUMPOUT(0x24BD1407CLL);
}

void sub_24BD1476C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39)
{
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a9);
  sub_24BE7F218(v39);
  sub_24BE7F218(v40 - 128);
  sub_24BE7F218(v40 - 112);
  sub_24BE7F218(v40 - 96);
  sub_24BE7F218(v40 - 80);
  sub_24BE7F218(v40 - 160);
  sub_24BE7F218(v40 - 144);
  _Unwind_Resume(a1);
}

void sub_24BD14CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  sub_24BE7F218(&a15);
  sub_24BE7F218(&a13);
  sub_24BE7F218(&a11);
  sub_24BE7F218(&a9);
  sub_24BE7F218(v29 - 104);
  sub_24BE7F218(&a23);
  sub_24BE7F218(v28);
  sub_24BE7F218(v29 - 128);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD14DE0@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  v4 = (a3 + 8);
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0;
  if (result < 2 || a2 < 2)
  {
    *a3 = 0;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v8 = a2 >> 1;
      v9 = result >> 1;
      sub_24BC97D60(v4, &v8);
      sub_24BC97D60(v4, &v9);
      a2 = v8;
      result = v9;
      v6 += v9 * v8;
      ++v5;
    }

    while (v9 >= 2 && v8 > 1);
    *a3 = v5;
    *(a3 + 32) = v6;
  }

  return result;
}

void sub_24BD14E88(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD14EA4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v5 = **a1;
  if (((*a1)[1] - v5) > 8)
  {
    v8 = *(a2 + 32);
    v9 = *(v5 + 8);
    v10 = a1[1];
    *&v21 = *a1;
    *(&v21 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    v13 = 0uLL;
    v14 = 0;
    sub_24BCC9984(&v13, &v21, v22, 1uLL);
    sub_24BE7F218(&v21);
    sub_24BD1E904(&v13, v11, &v21);
    sub_24BCC97B8(&v13);
    v13 = v21;
    v14 = v22[0];
    v22[0] = 0;
    v21 = 0uLL;
    v19 = &v21;
    sub_24BCC961C(&v19);
    BYTE4(v19) = 4;
    LODWORD(v19) = 10;
    v22[0] = 0;
    v21 = 0uLL;
    sub_24BCE2380(&v21, &v19, v20, 1uLL);
    v15[0] = v8;
    v15[1] = v9;
    __p[1] = 0;
    v18 = 0;
    __p[0] = 0;
    sub_24BCC9910(__p, v15, &v16, 2uLL);
    v19 = 0;
    v20[0] = 0;
    v20[1] = 0;
    sub_24BCE220C(&v19, __p, &v19, 1uLL);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    memset(v12, 0, sizeof(v12));
    sub_24BCE2490(v12, v19, v20[0], 0xAAAAAAAAAAAAAAABLL * ((v20[0] - v19) >> 3));
    sub_24BF02A98(a4, a5);
    sub_24BD16E6C();
  }

  sub_24BC923C0();
}

void sub_24BD15118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, char *__p, std::__shared_weak_count *a22, uint64_t a23, char a24)
{
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  __p = &a12;
  sub_24BC8EE84(&__p);
  __p = &a24;
  sub_24BC8EE84(&__p);
  v26 = *(v24 - 112);
  if (v26)
  {
    *(v24 - 104) = v26;
    operator delete(v26);
  }

  *(v24 - 112) = &a15;
  sub_24BCC961C((v24 - 112));
  _Unwind_Resume(a1);
}

void sub_24BD151C8(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27[2] = *MEMORY[0x277D85DE8];
  v9 = a1[1];
  *&v25 = *a1;
  *(&v25 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = *(a2 + 8);
  v26 = *a2;
  v27[0] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = 0uLL;
  v22 = 0;
  sub_24BCC9984(&v21, &v25, &v27[1], 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&v25 + i);
  }

  sub_24BD1E904(&v21, v12, &v25);
  sub_24BCC97B8(&v21);
  v21 = v25;
  v22 = v26;
  v26 = 0;
  v25 = 0uLL;
  __p[0] = &v25;
  sub_24BCC961C(__p);
  BYTE4(v25) = 4;
  LODWORD(v25) = 10;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v25, &v25 + 8, 1uLL);
  v13 = **a2;
  v14 = *(*a2 + 8) - v13;
  if (v14)
  {
    v23[0] = *v13;
    if (v14 >= 5)
    {
      v23[1] = v13[1];
      if (v14 != 8)
      {
        v23[2] = v13[2];
        v15 = **a1;
        if (((*a1)[1] - v15) > 8)
        {
          v23[3] = *(v15 + 8);
          v26 = 0;
          v25 = 0uLL;
          sub_24BCC9910(&v25, v23, &v24, 4uLL);
          v17 = 0;
          v18 = 0;
          v19 = 0;
          sub_24BCE220C(&v17, &v25, v27, 1uLL);
          if (v25)
          {
            *(&v25 + 1) = v25;
            operator delete(v25);
          }

          LODWORD(v25) = 0;
          v26 = 0;
          memset(v27, 0, 14);
          *(&v25 + 1) = 0;
          memset(v16, 0, sizeof(v16));
          sub_24BCE2490(v16, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
          sub_24BF02A98(a4, a5);
          sub_24BD17080();
        }
      }
    }
  }

  sub_24BC923C0();
}

void sub_24BD154E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char *a13, std::__shared_weak_count *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25)
{
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  a13 = &a16;
  sub_24BC8EE84(&a13);
  v27 = *(v25 - 120);
  if (v27)
  {
    *(v25 - 112) = v27;
    operator delete(v27);
  }

  *(v25 - 128) = &a19;
  sub_24BC8EE84((v25 - 128));
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  *(v25 - 128) = &a25;
  sub_24BCC961C((v25 - 128));
  _Unwind_Resume(a1);
}

void sub_24BD155B8(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v43 = *MEMORY[0x277D85DE8];
  v9 = a1[1];
  *&v37 = *a1;
  *(&v37 + 1) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
  }

  v10 = a2[1];
  v38 = *a2;
  *&v39 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v30 = 0uLL;
  v31 = 0;
  sub_24BCC9984(&v30, &v37, &v39 + 8, 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&v37 + i);
  }

  sub_24BD1E904(&v30, v12, &v37);
  sub_24BCC97B8(&v30);
  v30 = v37;
  v31 = v38;
  v38 = 0;
  v37 = 0uLL;
  v29[0] = &v37;
  sub_24BCC961C(v29);
  v37 = xmmword_24BFD2360;
  v38 = 0x40000000ALL;
  memset(v29, 0, sizeof(v29));
  sub_24BCE2380(v29, &v37, &v39, 3uLL);
  v13 = **a2;
  v14 = *(*a2 + 8) - v13;
  if (v14)
  {
    v36[0] = *v13;
    if (v14 >= 5)
    {
      v36[1] = v13[1];
      if (v14 != 8)
      {
        v36[2] = v13[2];
        v15 = **a1;
        if (((*a1)[1] - v15) >= 9)
        {
          v36[3] = *(v15 + 8);
          v38 = 0;
          v37 = 0uLL;
          sub_24BCC9910(&v37, v36, &v37, 4uLL);
          v16 = **a2;
          v17 = *(*a2 + 8) - v16;
          if (v17)
          {
            v35[0] = *v16;
            if (v17 >= 5)
            {
              v35[1] = v16[1];
              if (v17 != 8)
              {
                v35[2] = v16[2];
                v18 = **a1;
                if (((*a1)[1] - v18) >= 9)
                {
                  v35[3] = *(v18 + 8);
                  v40 = 0;
                  v39 = 0uLL;
                  sub_24BCC9910(&v39, v35, v36, 4uLL);
                  v19 = **a2;
                  v20 = *(*a2 + 8) - v19;
                  if (v20)
                  {
                    LODWORD(v32) = *v19;
                    if (v20 >= 5)
                    {
                      HIDWORD(v32) = v19[1];
                      if (v20 != 8)
                      {
                        v33 = v19[2];
                        v21 = **a1;
                        if (((*a1)[1] - v21) >= 9)
                        {
                          v34 = *(v21 + 8);
                          v42[0] = 0;
                          v42[1] = 0;
                          v41 = 0;
                          sub_24BCC9910(&v41, &v32, v35, 4uLL);
                          v26 = 0;
                          v27 = 0;
                          v28 = 0;
                          sub_24BCE220C(&v26, &v37, &v43, 3uLL);
                          v22 = 0;
                          while (1)
                          {
                            v23 = v42[v22 - 1];
                            if (v23)
                            {
                              v42[v22] = v23;
                              operator delete(v23);
                            }

                            v22 -= 3;
                            if (v22 == -9)
                            {
                              LODWORD(v37) = 0;
                              *(&v39 + 6) = 0x100000000000000;
                              v38 = 0;
                              *&v39 = 0;
                              *(&v37 + 1) = 0;
                              memset(v25, 0, sizeof(v25));
                              sub_24BCE2490(v25, v26, v27, 0xAAAAAAAAAAAAAAABLL * ((v27 - v26) >> 3));
                              v32 = sub_24BF02A98(a4, a5);
                              v33 = v24;
                              sub_24BD17080();
                            }
                          }
                        }
                      }
                    }
                  }

                  sub_24BC923C0();
                }
              }
            }
          }

          sub_24BC923C0();
        }
      }
    }
  }

  sub_24BC923C0();
}

void sub_24BD159E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26, char *a27, std::__shared_weak_count *a28, char *a29, void *__p, uint64_t a31)
{
  if (a28)
  {
    sub_24BC9EC78(a28);
  }

  if (a26)
  {
    sub_24BC9EC78(a26);
  }

  a27 = &a10;
  sub_24BC8EE84(&a27);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  a29 = &a13;
  sub_24BC8EE84(&a29);
  if (a16)
  {
    a17 = a16;
    operator delete(a16);
  }

  a29 = &a19;
  sub_24BCC961C(&a29);
  _Unwind_Resume(a1);
}

void sub_24BD15AF4(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  if (((*a1)[1] - v6) > 4)
  {
    sub_24BD14DE0(*(v6 + 4), *v6, &v12);
    if (v12)
    {
      sub_24BD14EA4(a1, &v12, a4, a5, a6);
    }

    sub_24BD151C8(a1, a2, a4, a5, a6);
  }

  sub_24BC923C0();
}

void sub_24BD15FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD160D8(const void ***a1, uint64_t a2, int ***a3, uint64_t a4, uint64_t **a5, uint64_t a6, int *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *&v27[44] = *MEMORY[0x277D85DE8];
  v10 = **a1;
  if ((*a1)[1] != v10)
  {
    v11 = **a3;
    if ((*a3)[1] != v11)
    {
      v12 = **a5;
      if (((*a5)[1] - v12) > 8)
      {
        v14 = *v10;
        v18 = *v11;
        v16 = a7[2];
        v17 = *(v12 + 8);
        v15 = *a7;
        LODWORD(v25[0]) = 1;
        HIDWORD(v25[0]) = v14;
        LODWORD(v25[1]) = 3;
        v21 = 0;
        v22 = 0;
        __p = 0;
        sub_24BCC9910(&__p, v25, &v25[1] + 4, 3uLL);
        sub_24BEA4500(a1, &__p, a9, a10, &v23);
        if (__p)
        {
          v21 = __p;
          operator delete(__p);
        }

        v25[0] = v23;
        v25[1] = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(v24 + 1, 1uLL, memory_order_relaxed);
        }

        v26[0] = 1;
        v26[1] = v14;
        v26[2] = 1;
        memset(v19, 0, sizeof(v19));
        sub_24BCC9910(v19, v26, v27, 3uLL);
        sub_24BEA5334(v19);
      }
    }
  }

  sub_24BC923C0();
}

void sub_24BD16B6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, char a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49, uint64_t a50, char a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, char a61, uint64_t a62, char a63)
{
  sub_24BE7F218(&STACK[0x210]);
  sub_24BE7F218(&a27);
  sub_24BE7F218(&a29);
  sub_24BE7F218(&a31);
  sub_24BE7F218(&a39);
  sub_24BE7F218(&a41);
  sub_24BE7F218(&a43);
  STACK[0x210] = v71 - 152;
  sub_24BCC961C(&STACK[0x210]);
  sub_24BE7F218(&a49);
  sub_24BE7F218(&a51);
  sub_24BE7F218(&a53);
  STACK[0x210] = &a63;
  sub_24BCC961C(&STACK[0x210]);
  sub_24BE7F218(&a59);
  sub_24BE7F218(&a61);
  sub_24BE7F218(&a66);
  sub_24BE7F218(&a71);
  _Unwind_Resume(a1);
}

void sub_24BD16CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_24BCC961C(va);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&STACK[0x210] + i);
  }

  JUMPOUT(0x24BD16C68);
}

void sub_24BD16D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, uint64_t a35, void *a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a36)
  {
    operator delete(a36);
  }

  JUMPOUT(0x24BD16C70);
}

void *sub_24BD16EF0(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F94B98;
  sub_24BD16FFC((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BD16F80(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94B98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD16FFC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F95930;
  *(a1 + 8) = a2;
  *(a1 + 24) = *a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  sub_24BCC9A1C(a1 + 32, *(a4 + 8), *(a4 + 16), (*(a4 + 16) - *(a4 + 8)) >> 2);
  *(a1 + 56) = *(a4 + 32);
  *(a1 + 64) = *a5;
  return a1;
}

void *sub_24BD17104(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_285F94BE8;
  sub_24BD17210((a1 + 3), *a2, *(a2 + 8), a3, a4);
  return a1;
}

void sub_24BD17194(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94BE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD17210(uint64_t a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  *(a1 + 16) = a3;
  *a1 = &unk_285F94870;
  *(a1 + 8) = a2;
  *(a1 + 24) = *a4;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  sub_24BCC9A1C(a1 + 32, *(a4 + 8), *(a4 + 16), (*(a4 + 16) - *(a4 + 8)) >> 2);
  *(a1 + 56) = *(a4 + 32);
  *(a1 + 60) = *(a4 + 36);
  *(a1 + 64) = *a5;
  return a1;
}

uint64_t sub_24BD1729C(unsigned int a1)
{
  v1 = 64;
  do
  {
    v2 = v1;
    v1 = (2 * v1);
  }

  while (v2 < a1);
  return v2;
}

void sub_24BD172C0(uint64_t **a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v52 = *MEMORY[0x277D85DE8];
  v13 = a1[1];
  *&v43 = *a1;
  *(&v43 + 1) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = a2[1];
  v44 = *a2;
  v45 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a3 + 8);
  v46 = *a3;
  v47 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = a4[1];
  v48 = *a4;
  v49 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v17 = a5[1];
  v50 = *a5;
  v51[0] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = a6[1];
  v51[1] = *a6;
  v51[2] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v38 = 0uLL;
  v39 = 0;
  sub_24BCC9984(&v38, &v43, &v52, 6uLL);
  for (i = 80; i != -16; i -= 16)
  {
    sub_24BE7F218(&v43 + i);
  }

  sub_24BD1E904(&v38, v20, &v43);
  sub_24BCC97B8(&v38);
  v38 = v43;
  v39 = v44;
  v44 = 0;
  v43 = 0uLL;
  __p[0] = &v43;
  sub_24BCC961C(__p);
  v43 = xmmword_24BFD2440;
  v44 = 0x400000007;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v43, &v45, 3uLL);
  v21 = **a3;
  v22 = *(*a3 + 8) - v21;
  if (v22 > 4)
  {
    if (v22 != 8)
    {
      v23 = **a2;
      if ((*(*a2 + 8) - v23) > 4)
      {
        v24 = **a1;
        if (((*a1)[1] - v24) > 0xC)
        {
          v26 = v21[1];
          v25 = v21[2];
          v27 = *v21;
          v28 = *(v23 + 4);
          v29 = *(v24 + 12);
          v40[0] = v27;
          v40[1] = v26;
          v40[2] = v25;
          v40[3] = v29;
          v44 = 0;
          v43 = 0uLL;
          sub_24BCC9910(&v43, v40, &v41, 4uLL);
          v42[0] = v27;
          v42[1] = v28;
          v42[2] = 4;
          v46 = 0;
          v47 = 0;
          v45 = 0;
          sub_24BCC9910(&v45, v42, &v43, 3uLL);
          v33 = (8 * v26 * v25 * v27) | 4;
          v49 = 0;
          v50 = 0;
          v48 = 0;
          sub_24BCC9910(&v48, &v33, &v34, 1uLL);
          v34 = 0;
          v35 = 0;
          v36 = 0;
          sub_24BCE220C(&v34, &v43, v51, 3uLL);
          v30 = 0;
          while (1)
          {
            v31 = *(&v48 + v30);
            if (v31)
            {
              *(&v49 + v30) = v31;
              operator delete(v31);
            }

            v30 -= 24;
            if (v30 == -72)
            {
              memset(v32, 0, sizeof(v32));
              sub_24BCE2490(v32, v34, v35, 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3));
              sub_24BF02A98(a9, a10);
              operator new();
            }
          }
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BD17758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char *a27, uint64_t a28)
{
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(v28 + i);
  }

  a27 = &a22;
  sub_24BCC961C(&a27);
  a27 = &a13;
  sub_24BC8EE84(&a27);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  a27 = &a19;
  sub_24BCC961C(&a27);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD17894(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v41 = *MEMORY[0x277D85DE8];
  v6 = **a1;
  if (*(*a1 + 8) == v6)
  {
    sub_24BC923C0();
  }

  v39 = *v6;
  v11 = sub_24BF02A98(a5, a6);
  v12 = v11;
  v37[19] = v11;
  v38 = v13;
  v14 = sub_24BF55DE0();
  v15 = sub_24BF5488C(v14, v12);
  sub_24BCE1268(&v33);
  v40[0] = xmmword_24BFD249C;
  strcpy(v40 + 11, "izxWPZ{ZY[n_WLM");
  v16 = sub_24BD17C70(v40);
  v17 = strlen(v16);
  sub_24BC95264(&v33, v16, v17);
  std::stringbuf::str();
  v18 = sub_24BCB9A3C(a4);
  sub_24BC836D4(v31, &unk_24C0435AF);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v19 = sub_24BF55AF4(v14, v40, v18, v31, &v28, &__p);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  v20 = v28;
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SBYTE7(v40[1]) < 0)
  {
    operator delete(*&v40[0]);
  }

  [*v15 MTL:v19 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v20)];
  sub_24BF53508(v15, a1, 0, 0);
  v21 = sub_24BF535E8(v15, a2, 1, 0);
  v22 = [*v15 MTL:&v39 :16 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v21)];
  [*v15 MTL:a3 :16 Private:3 :? Selector:? :?s_ksetBytes_length_atIndex_(v22)];
  *&v40[0] = (v39 - 1);
  *(v40 + 8) = vdupq_n_s64(1uLL);
  *v31 = xmmword_24BFD2430;
  v32 = 1;
  sub_24BF53770(v15, v40, v31);
  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v37);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD17C70(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 26; ++i)
  {
    a1[i] ^= v3;
  }

  a1[26] = 0;
  return result;
}

void sub_24BD17C9C(uint64_t **a1, int ***a2, uint64_t **a3, int ***a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20[4] = *MEMORY[0x277D85DE8];
  v7 = **a2;
  v8 = (*a2)[1] - v7;
  if (v8 > 4)
  {
    v19 = v7[1];
    if (v8 != 8)
    {
      v18 = v7[2];
      v17 = *v7;
      v9 = **a4;
      if ((*a4)[1] != v9)
      {
        v16 = *v9;
        v10 = **a3;
        if (((*a3)[1] - v10) > 4)
        {
          v15 = *(v10 + 4);
          v11 = **a1;
          if (((*a1)[1] - v11) > 0xC)
          {
            v14 = *(v11 + 12);
            v13 = sub_24BE7E0B8(*(*a7 + 60) * *(*a7 + 48));
            v20[0] = &off_285F93798;
            v20[1] = sub_24BE7E1F0;
            v20[3] = v20;
            sub_24BE7EE1C(a7, v13);
          }
        }
      }
    }
  }

  sub_24BC923C0();
}

_BYTE *sub_24BD186F0(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 36; ++i)
  {
    a1[i] ^= v3;
  }

  a1[36] = 0;
  return result;
}

void sub_24BD1871C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD18778(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16) | 0x100000000;
  sub_24BD17C9C(*a2, *a2 + 4, *a2 + 2, *a2 + 6, *a3, *a3 + 16, *a3 + 32);
}

void sub_24BD187CC()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD1891C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, char a14)
{
  sub_24BE7F218(&a12);
  sub_24BCC961C(&a12);
  a12 = &a14;
  sub_24BCC961C(&a12);
  _Unwind_Resume(a1);
}

void sub_24BD18958()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD189BC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = xmmword_24BFD24DC;
  v8 = 5977379;
  v3 = sub_24BD18A4C(&v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD18A4C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 19; ++i)
  {
    a1[i] ^= v3;
  }

  a1[19] = 0;
  return result;
}

void sub_24BD18A78(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

_BYTE *sub_24BD193AC(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 18; ++i)
  {
    a1[i] ^= v3;
  }

  a1[18] = 0;
  return result;
}

void sub_24BD193D8()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD19434(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD18A78(a2, a3);
}

void sub_24BD19454()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD194B0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD1950C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD19570(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = xmmword_24BFD2503;
  strcpy(&v7[13], "4< 6%3]");
  v3 = sub_24BCC3BF0(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD1964C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD196C8(uint64_t a1, const void ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 8);
  v26[0] = *a1;
  v26[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  LODWORD(v24) = -1;
  v17 = 0;
  v18 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v24, &v24 + 4, 1uLL);
  sub_24BEA4500(a2, &__p, a5, a6, v27);
  v11 = *(a3 + 8);
  v27[2] = *a3;
  v27[3] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v19 = 0uLL;
  v20 = 0;
  sub_24BCC9984(&v19, v26, v28, 3uLL);
  for (i = 4; i != -2; i -= 2)
  {
    sub_24BE7F218(&v26[i]);
  }

  if (__p)
  {
    v17 = __p;
    operator delete(__p);
  }

  sub_24BD1E904(&v19, v13, v26);
  sub_24BCC97B8(&v19);
  v19 = *v26;
  v20 = v27[0];
  v26[1] = 0;
  v27[0] = 0;
  v26[0] = 0;
  v24 = v26;
  sub_24BCC961C(&v24);
  BYTE4(v24) = 4;
  LODWORD(v24) = 10;
  v26[1] = 0;
  v27[0] = 0;
  v26[0] = 0;
  sub_24BCE2380(v26, &v24, v25, 1uLL);
  v15 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  sub_24BCC9910(&v21, &v15, &__p, 1uLL);
  v24 = 0;
  v25[0] = 0;
  v25[1] = 0;
  sub_24BCE220C(&v24, &v21, &v24, 1uLL);
  if (v21)
  {
    v22 = v21;
    operator delete(v21);
  }

  memset(v14, 0, sizeof(v14));
  sub_24BCE2490(v14, v24, v25[0], 0xAAAAAAAAAAAAAAABLL * ((v25[0] - v24) >> 3));
  sub_24BF02A98(a5, a6);
  operator new();
}

void sub_24BD199F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, std::__shared_weak_count *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char *__p, char *a28)
{
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  a21 = &a10;
  sub_24BC8EE84(&a21);
  a21 = &a24;
  sub_24BC8EE84(&a21);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  __p = &a17;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD19AE0(uint64_t a1, float a2)
{
  *a1 = &unk_285F94D78;
  *(a1 + 8) = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 1065353216;
  *(a1 + 12) = 0;
  *(a1 + 16) = 0;
  sub_24BD1B55C(a1 + 24, 0, 0, 0);
  sub_24BD1C654((a1 + 48), 0, 0);
  return a1;
}

void sub_24BD19B80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCC044(v2 + 48);
  sub_24BD1B408(va);
  _Unwind_Resume(a1);
}

void *sub_24BD19BA0(void *a1)
{
  *a1 = &unk_285F94D78;
  v2 = (a1 + 3);
  sub_24BCCC044((a1 + 6));
  v4 = v2;
  sub_24BD1B408(&v4);
  return a1;
}

uint64_t sub_24BD19C08(uint64_t a1, uint64_t *a2)
{
  result = sub_24BD19D64((a1 + 24), 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 3));
  v6 = *a2;
  v5 = a2[1];
  if (v5 != *a2)
  {
    v7 = 0;
    do
    {
      v8 = *(v6 + 40 * v7 + 16);
      if (v8)
      {
        do
        {
          v9 = sub_24BD1CC78((*(a1 + 24) + 40 * v7), v8 + 2);
          sub_24BD1C654(v9 + 5, 0, 0);
          v10 = sub_24BD1CC78((*(a1 + 24) + 40 * v7), v8 + 2);
          result = (**a1)(a1, (v8 + 5), (v10 + 5));
          v8 = *v8;
        }

        while (v8);
        v6 = *a2;
        v5 = a2[1];
      }

      ++v7;
    }

    while (v7 < 0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 3));
  }

  *(a1 + 16) = 1;
  return result;
}

uint64_t sub_24BD19D64(void *a1, unint64_t a2)
{
  result = a1[1];
  v4 = 0xCCCCCCCCCCCCCCCDLL * ((result - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    return sub_24BD1C9CC(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 40 * a2;
    while (result != v7)
    {
      result = sub_24BD1B48C(result - 40);
    }

    a1[1] = v7;
  }

  return result;
}

uint64_t sub_24BD19DF0(uint64_t result, uint64_t *a2, void *a3, uint64_t a4)
{
  v7 = result;
  if ((*(result + 16) & 1) == 0)
  {
    result = sub_24BD19C08(result, a2);
  }

  *(v7 + 12) = *(v7 + 12) + 1.0;
  v9 = *a2;
  v8 = a2[1];
  if (v8 != *a2)
  {
    v10 = 0;
    do
    {
      v11 = *(v9 + 40 * v10 + 16);
      if (v11)
      {
        do
        {
          v12 = sub_24BD1B270((*a3 + 40 * v10), v11 + 2);
          if (!v12)
          {
            sub_24BC8E244("unordered_map::at: key not found");
          }

          v13 = v12;
          v14 = sub_24BD1CC78((*(v7 + 24) + 40 * v10), v11 + 2);
          result = (*(*v7 + 8))(v7, v11 + 5, v13 + 5, v14 + 5, a4);
          v11 = *v11;
        }

        while (v11);
        v9 = *a2;
        v8 = a2[1];
      }

      ++v10;
    }

    while (v10 < 0xCCCCCCCCCCCCCCCDLL * ((v8 - v9) >> 3));
  }

  return result;
}

uint64_t sub_24BD19F3C(uint64_t result, void *a2)
{
  v4 = *(result + 24);
  v3 = *(result + 32);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 40 * v5 + 16);
      if (v6)
      {
        do
        {
          v7 = v6[7];
          if (v7)
          {
            sub_24BD1A028((v7 + 40), a2, v2 & 0xFFFFFFFFFFFFFF00, 0);
          }

          v6 = *v6;
        }

        while (v6);
        v4 = *(result + 24);
        v3 = *(result + 32);
      }

      ++v5;
    }

    while (v5 < 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3));
  }

  return result;
}

void sub_24BD1A028(void *a1, void *a2, uint64_t a3, unsigned __int8 a4)
{
  v53[1] = *MEMORY[0x277D85DE8];
  if (!*(*a2 + 152))
  {
    sub_24BCBF56C(a2);
  }

  if (!*(*a1 + 152))
  {
    sub_24BCBF56C(a1);
  }

  v7 = *(*a2 + 48);
  if (v7)
  {
    v8 = *(*a1 + 48);
    if (v8)
    {
      __src = 0;
      v49 = 0;
      v50 = 0;
      sub_24BCB8D20(&__src, v8);
      __p = 0;
      v46 = 0;
      v47 = 0;
      v39 = a4;
      if (a4)
      {
        sub_24BCB8D20(&__p, *(*a1 + 48));
      }

      v41 = v8 / v7;
      if (*(*a2 + 48))
      {
        v9 = 0;
        v42 = *(*a2 + 152);
        v40 = *(*a1 + 152);
        do
        {
          if (*(v42 + v9) == 1)
          {
            if (v41 >= 1)
            {
              v10 = 0;
              v11 = v40 + 4 * v9 * v41;
              v12 = v49;
              do
              {
                if (v12 >= v50)
                {
                  v13 = __src;
                  v14 = v12 - __src;
                  v15 = (v12 - __src) >> 2;
                  v16 = v15 + 1;
                  if ((v15 + 1) >> 62)
                  {
                    sub_24BC8E01C();
                  }

                  v17 = v50 - __src;
                  if ((v50 - __src) >> 1 > v16)
                  {
                    v16 = v17 >> 1;
                  }

                  if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v18 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v18 = v16;
                  }

                  if (v18)
                  {
                    sub_24BC92E0C(&__src, v18);
                  }

                  v19 = (v12 - __src) >> 2;
                  v20 = (4 * v15);
                  v21 = (4 * v15 - 4 * v19);
                  *v20 = *(v11 + 4 * v10);
                  v12 = (v20 + 1);
                  memcpy(v21, v13, v14);
                  v22 = __src;
                  __src = v21;
                  v49 = v12;
                  v50 = 0;
                  if (v22)
                  {
                    operator delete(v22);
                  }
                }

                else
                {
                  *v12 = *(v11 + 4 * v10);
                  v12 += 4;
                }

                v49 = v12;
                ++v10;
              }

              while (v10 < v41);
            }
          }

          else if (((v41 > 0) & v39) != 0)
          {
            v23 = 0;
            v24 = v40 + 4 * v9 * v41;
            v25 = v46;
            do
            {
              if (v25 >= v47)
              {
                v26 = __p;
                v27 = v25 - __p;
                v28 = (v25 - __p) >> 2;
                v29 = v28 + 1;
                if ((v28 + 1) >> 62)
                {
                  sub_24BC8E01C();
                }

                v30 = v47 - __p;
                if ((v47 - __p) >> 1 > v29)
                {
                  v29 = v30 >> 1;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v31 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  sub_24BC92E0C(&__p, v31);
                }

                v32 = (v25 - __p) >> 2;
                v33 = (4 * v28);
                v34 = (4 * v28 - 4 * v32);
                *v33 = *(v24 + 4 * v23);
                v25 = (v33 + 1);
                memcpy(v34, v26, v27);
                v35 = __p;
                __p = v34;
                v46 = v25;
                v47 = 0;
                if (v35)
                {
                  operator delete(v35);
                }
              }

              else
              {
                *v25 = *(v24 + 4 * v23);
                v25 += 4;
              }

              v46 = v25;
              ++v23;
            }

            while (v23 < v41);
          }

          ++v9;
        }

        while (v9 < *(*a2 + 48));
      }

      if (v39)
      {
        v51[0] = ((v46 - __p) >> 2) / v41;
        v51[1] = v41;
        memset(v44, 0, sizeof(v44));
        sub_24BCC9910(v44, v51, v52, 2uLL);
        v36 = *(*a1 + 56);
        sub_24BCCA338();
      }

      v52[0] = ((v49 - __src) >> 2) / v41;
      v52[1] = v41;
      memset(v43, 0, sizeof(v43));
      sub_24BCC9910(v43, v52, v53, 2uLL);
      v37 = *(*a1 + 56);
      sub_24BCCA338();
    }
  }

  LODWORD(__p) = 0;
  v49 = 0;
  v50 = 0;
  __src = 0;
  sub_24BCC9910(&__src, &__p, &__p + 4, 1uLL);
  v38 = *(*a1 + 56) & 0xFFFFFFFFFFLL;
  sub_24BEA51FC(&__src);
}

void sub_24BD1A4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a24)
  {
    operator delete(a24);
  }

  if (a27)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD1A534(uint64_t result, uint64_t **a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *(result + 24);
  v3 = *(result + 32);
  if (v3 != v4)
  {
    v5 = 0;
    do
    {
      v6 = *(v4 + 40 * v5 + 16);
      if (v6)
      {
        do
        {
          v7 = v6[7];
          if (v7)
          {
            v8 = *(v7 + 48);
            v10 = *(v7 + 40);
            if (v8)
            {
              atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
            }

            sub_24BEA52D0(a2, a2, v2);
          }

          v6 = *v6;
        }

        while (v6);
        v4 = *(result + 24);
        v3 = *(result + 32);
      }

      ++v5;
    }

    while (v5 < 0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 3));
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD1A6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = &a18;
  v20 = -32;
  do
  {
    sub_24BE7F218(v19);
    v19 = (v21 - 16);
    v20 += 16;
  }

  while (v20);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD1A708(uint64_t a1, float a2, float a3, float a4, float a5)
{
  result = sub_24BD19AE0(a1, a2);
  *result = &unk_285F94DA8;
  *(result + 88) = a3;
  *(result + 92) = a4;
  *(result + 96) = a5;
  return result;
}

void sub_24BD1A7E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BCBCD90(&a12);
  sub_24BE7F218(&a9);
  _Unwind_Resume(a1);
}

void sub_24BD1A80C(_DWORD *a1, const void ***a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a1[2];
  sub_24BC836D4(&__p, "v");
  v12 = sub_24BD1B270(a4, &__p);
  if (v12)
  {
    if (v17 < 0)
    {
      operator delete(__p);
    }

    v14 = a1[23];
    v13 = a1[24];
    v15 = a1[22];
    sub_24BD196C8(a3, a2, (v12 + 5), a5, v11, 0);
  }

  sub_24BC8E244("unordered_map::at: key not found");
}

void sub_24BD1A910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **p_p)
{
  sub_24BCC961C(&p_p);
  p_p = &__p;
  sub_24BCC961C(&p_p);
  _Unwind_Resume(a1);
}

void sub_24BD1A958(uint64_t a1, const void ***a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 8);
  v29[0] = *a1;
  v29[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  LODWORD(v27) = -1;
  v20 = 0;
  v21 = 0;
  __p = 0;
  sub_24BCC9910(&__p, &v27, &v27 + 4, 1uLL);
  sub_24BEA4500(a2, &__p, a6, a7, v30);
  v13 = *(a3 + 8);
  v30[2] = *a3;
  v30[3] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a4 + 8);
  v30[4] = *a4;
  v30[5] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v22 = 0uLL;
  v23 = 0;
  sub_24BCC9984(&v22, v29, v31, 4uLL);
  for (i = 6; i != -2; i -= 2)
  {
    sub_24BE7F218(&v29[i]);
  }

  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }

  sub_24BD1E904(&v22, v16, v29);
  sub_24BCC97B8(&v22);
  v22 = *v29;
  v23 = v30[0];
  v29[1] = 0;
  v30[0] = 0;
  v29[0] = 0;
  v27 = v29;
  sub_24BCC961C(&v27);
  BYTE4(v27) = 4;
  LODWORD(v27) = 10;
  v29[1] = 0;
  v30[0] = 0;
  v29[0] = 0;
  sub_24BCE2380(v29, &v27, v28, 1uLL);
  v18 = 0;
  v25 = 0;
  v26 = 0;
  v24 = 0;
  sub_24BCC9910(&v24, &v18, &__p, 1uLL);
  v27 = 0;
  v28[0] = 0;
  v28[1] = 0;
  sub_24BCE220C(&v27, &v24, &v27, 1uLL);
  if (v24)
  {
    v25 = v24;
    operator delete(v24);
  }

  memset(v17, 0, sizeof(v17));
  sub_24BCE2490(v17, v27, v28[0], 0xAAAAAAAAAAAAAAABLL * ((v28[0] - v27) >> 3));
  sub_24BF02A98(a6, a7);
  operator new();
}

void sub_24BD1ACB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, std::__shared_weak_count *a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, char *__p, char *a28)
{
  if (a22)
  {
    sub_24BC9EC78(a22);
  }

  a21 = &a10;
  sub_24BC8EE84(&a21);
  a21 = &a24;
  sub_24BC8EE84(&a21);
  if (__p)
  {
    a28 = __p;
    operator delete(__p);
  }

  __p = &a17;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD1ADA0(uint64_t a1, void *a2, float a3, float a4, float a5)
{
  result = sub_24BD19AE0(a1, a3);
  *result = &unk_285F94DD8;
  *(result + 88) = *a2;
  *(result + 96) = a4;
  *(result + 100) = a5;
  return result;
}

void sub_24BD1AEF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_24BCBCD90(&a12);
  sub_24BE7F218(&a9);
  _Unwind_Resume(a1);
}

void sub_24BD1AF1C(_DWORD *a1, const void ***a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = a1[2];
  v11 = a1[22];
  v12 = a1[23];
  sub_24BC836D4(&__p, "m");
  v13 = sub_24BD1B270(a4, &__p);
  if (v13)
  {
    if (v20 < 0)
    {
      operator delete(__p);
    }

    sub_24BC836D4(&__p, "v");
    v15 = sub_24BD1B270(a4, &__p);
    if (v15)
    {
      if (v20 < 0)
      {
        operator delete(__p);
      }

      v17 = a1[24];
      v16 = a1[25];
      v18 = a1[3];
      sub_24BD1A958(a3, a2, (v13 + 5), (v15 + 5), a5, v14, 0);
    }

    sub_24BC8E244("unordered_map::at: key not found");
  }

  sub_24BC8E244("unordered_map::at: key not found");
}

void sub_24BD1B07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void **p_p)
{
  sub_24BCC961C(&p_p);
  p_p = &__p;
  sub_24BCC961C(&p_p);
  _Unwind_Resume(a1);
}

void *sub_24BD1B0C8(void *a1)
{
  *a1 = &unk_285F94D78;
  v2 = (a1 + 3);
  sub_24BCCC044((a1 + 6));
  v4 = v2;
  sub_24BD1B408(&v4);
  return a1;
}

uint64_t sub_24BD1B128(void *a1)
{
  *a1 = &unk_285F94D78;
  v2 = (a1 + 3);
  sub_24BCCC044((a1 + 6));
  v4 = v2;
  sub_24BD1B408(&v4);
  return MEMORY[0x24C2548B0](a1, 0x10A1C40223D169CLL);
}

void *sub_24BD1B19C(void *a1)
{
  *a1 = &unk_285F94D78;
  v2 = (a1 + 3);
  sub_24BCCC044((a1 + 6));
  v4 = v2;
  sub_24BD1B408(&v4);
  return a1;
}

uint64_t sub_24BD1B1FC(void *a1)
{
  *a1 = &unk_285F94D78;
  v2 = (a1 + 3);
  sub_24BCCC044((a1 + 6));
  v4 = v2;
  sub_24BD1B408(&v4);
  return MEMORY[0x24C2548B0](a1, 0x10A1C40B0F4ECD9);
}

const void **sub_24BD1B270(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  for (i = *v10; i; i = *i)
  {
    v12 = i[1];
    if (v12 == v6)
    {
      if (sub_24BCCC960(a1, i + 2, a2))
      {
        return i;
      }
    }

    else
    {
      if (v8 > 1)
      {
        if (v12 >= *&v5)
        {
          v12 %= *&v5;
        }
      }

      else
      {
        v12 &= *&v5 - 1;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }
  }

  return i;
}

void sub_24BD1B38C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94E48;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD1B408(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_24BD1B48C(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_24BD1B48C(uint64_t a1)
{
  sub_24BD1B4C8(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_24BD1B4C8(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      sub_24BD1B50C((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_24BD1B50C(uint64_t a1)
{
  sub_24BCCC044(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_24BD1B55C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_24BD1B6C4(a1);
    if (a4 <= 0x666666666666666)
    {
      v9 = 0x999999999999999ALL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 16) - *a1) >> 3) >= 0x333333333333333)
      {
        v10 = 0x666666666666666;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCCCAC8(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = *(a1 + 8) - v8;
  if (0xCCCCCCCCCCCCCCCDLL * (v11 >> 3) >= a4)
  {
    sub_24BD1BBBC(&v16, a2, a3, v8);
    v14 = v13;
    result = *(a1 + 8);
    if (result != v13)
    {
      do
      {
        result = sub_24BD1B48C(result - 40);
      }

      while (result != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_24BD1BBBC(&v15, a2, a2 + v11, v8);
    result = sub_24BD1B724(a1, a2 + v11, a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_24BD1B6C4(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_24BD1B48C(v3 - 40);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t sub_24BD1B724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_24BD1B7A8(a4, v6);
      v6 += 40;
      a4 += 40;
      v7 -= 40;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_24BD1B784(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = sub_24BD1B48C(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD1B7A8(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  sub_24BCA3EB4(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    sub_24BD1B820(a1, i + 2);
  }

  return a1;
}

const void **sub_24BD1B820(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BD1BA7C();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BD1BA68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD1BAF8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_24BD1BAF8(uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      sub_24BD1B50C(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *sub_24BD1BB44(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_24BCCCBF0((__dst + 3), a2 + 24);
  return __dst;
}

void sub_24BD1BBA0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD1BBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        *(a4 + 32) = *(v5 + 32);
        sub_24BD1BC30(a4, *(v5 + 16), 0);
      }

      v5 += 40;
      a4 += 40;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_24BD1BC30(void *a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        sub_24BD1BD94(v12, (v4 + 2));
        v10 = *v8;
        sub_24BD1BD40(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_24BD1B4C8(a1, v10);
  }

  if (v4 != a3)
  {
    sub_24BD1C564();
  }
}

void sub_24BD1BD10(void *a1)
{
  __cxa_begin_catch(a1);
  sub_24BD1B4C8(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_24BD1BD40(void *a1, uint64_t a2)
{
  v4 = sub_24BCCC4B4(a1, a2 + 16);
  *(a2 + 8) = v4;
  v5 = sub_24BD1BF60(a1, v4, (a2 + 16));
  sub_24BD1C0D8(a1, a2, v5);
  return a2;
}

uint64_t sub_24BD1BD94(uint64_t a1, uint64_t a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  if (v4 != a2 + 24)
  {
    *(v4 + 32) = *(a2 + 56);
    sub_24BD1BDE8(v4, *(a2 + 40), 0);
  }

  return a1;
}

void sub_24BD1BDE8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        sub_24BD1BEF8(v12, (v4 + 2));
        v10 = *v8;
        sub_24BD1BD40(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_24BCCC080(a1, v10);
  }

  if (v4 != a3)
  {
    sub_24BD1C474();
  }
}

void sub_24BD1BEC8(void *a1)
{
  __cxa_begin_catch(a1);
  sub_24BCCC080(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_24BD1BEF8(uint64_t a1, const std::string *a2)
{
  std::string::operator=(*a1, a2);
  v4 = *(a1 + 8);
  data = a2[1].__r_.__value_.__l.__data_;
  if (*v4 != data)
  {
    size = a2[1].__r_.__value_.__l.__size_;
    if (size)
    {
      atomic_fetch_add_explicit((size + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4[1];
    *v4 = data;
    v4[1] = size;
    if (v7)
    {
      sub_24BC9EC78(v7);
    }
  }

  return a1;
}

const void **sub_24BD1BF60(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_24BD1C1C0(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_24BCCC960(a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *sub_24BD1C0D8(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_24BD1C1C0(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_24BD1C2B0(a1, prime);
    }
  }
}

void sub_24BD1C2B0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_24BC8DFE8();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_24BD1C4C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCC468(va);
  _Unwind_Resume(a1);
}

void sub_24BD1C5B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD1BAF8(va);
  _Unwind_Resume(a1);
}

void sub_24BD1C654(uint64_t *a1, std::string *a2, std::string *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        v12[0] = v8 + 2;
        v12[1] = v8 + 5;
        sub_24BD1BEF8(v12, v4);
        v10 = *v8;
        sub_24BD1C768(a1, v8);
        v4 = (v4 + 40);
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_24BCCC080(a1, v10);
  }

  while (v4 != a3)
  {
    sub_24BCCC190(a1, &v4->__r_.__value_.__l.__data_);
    v4 = (v4 + 40);
  }
}

void sub_24BD1C738(void *a1)
{
  __cxa_begin_catch(a1);
  sub_24BCCC080(v1, v2);
  __cxa_rethrow();
}

const void **sub_24BD1C768(uint64_t *a1, uint64_t a2)
{
  v2 = a2;
  v4 = sub_24BCCC4B4(a1, a2 + 16);
  *(v2 + 8) = v4;
  v5 = sub_24BD1C7CC(a1, v4, (v2 + 16));
  if (v5)
  {
    return v5;
  }

  sub_24BD1C918(a1, v2);
  return v2;
}

const void **sub_24BD1C7CC(uint64_t a1, unint64_t a2, const void **a3)
{
  v4 = *(a1 + 8);
  if (v4)
  {
    v7 = vcnt_s8(v4);
    v7.i16[0] = vaddlv_u8(v7);
    v8 = v7.u32[0];
    if (v7.u32[0] > 1uLL)
    {
      v9 = v4 <= a2 ? a2 % v4 : a2;
    }

    else
    {
      v9 = (v4 - 1) & a2;
    }

    v10 = *(*a1 + 8 * v9);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == a2)
        {
          if (sub_24BCCC960(a1, i + 2, a3))
          {
            return i;
          }
        }

        else
        {
          if (v8 > 1)
          {
            if (v12 >= v4)
            {
              v12 %= v4;
            }
          }

          else
          {
            v12 &= v4 - 1;
          }

          if (v12 != v9)
          {
            break;
          }
        }
      }
    }
  }

  v13 = (*(a1 + 24) + 1);
  v14 = *(a1 + 32);
  if (!v4 || (v14 * v4) < v13)
  {
    v15 = 1;
    if (v4 >= 3)
    {
      v15 = (v4 & (v4 - 1)) != 0;
    }

    v16 = v15 | (2 * v4);
    v17 = vcvtps_u32_f32(v13 / v14);
    if (v16 <= v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = v16;
    }

    sub_24BCA3EB4(a1, v18);
  }

  return 0;
}

uint64_t *sub_24BD1C918(uint64_t *result, void *a2)
{
  v2 = result[1];
  v3 = a2[1];
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    if (v3 >= *&v2)
    {
      v3 %= *&v2;
    }
  }

  else
  {
    v3 &= *&v2 - 1;
  }

  v5 = *result;
  v6 = *(*result + 8 * v3);
  if (v6)
  {
    *a2 = *v6;
LABEL_13:
    *v6 = a2;
    goto LABEL_14;
  }

  *a2 = result[2];
  result[2] = a2;
  *(v5 + 8 * v3) = result + 2;
  if (*a2)
  {
    v7 = *(*a2 + 8);
    if (v4.u32[0] > 1uLL)
    {
      if (v7 >= *&v2)
      {
        v7 %= *&v2;
      }
    }

    else
    {
      v7 &= *&v2 - 1;
    }

    v6 = (*result + 8 * v7);
    goto LABEL_13;
  }

LABEL_14:
  ++result[3];
  return result;
}

uint64_t sub_24BD1C9CC(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v4) >> 3) >= a2)
  {
    if (a2)
    {
      v10 = v4 + 40 * a2;
      do
      {
        *v4 = 0uLL;
        *(v4 + 16) = 0uLL;
        *(v4 + 32) = 1065353216;
        v4 += 40;
      }

      while (v4 != v10);
      v4 = v10;
    }

    *(result + 8) = v4;
  }

  else
  {
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *result) >> 3);
    v7 = v6 + a2;
    if (v6 + a2 > 0x666666666666666)
    {
      sub_24BC8E01C();
    }

    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *result) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x333333333333333)
    {
      v9 = 0x666666666666666;
    }

    else
    {
      v9 = v7;
    }

    v20 = result;
    if (v9)
    {
      sub_24BCCCB14(result, v9);
    }

    v11 = 40 * v6;
    v17 = 0;
    v18 = 40 * v6;
    *(&v19 + 1) = 0;
    v12 = 40 * v6;
    do
    {
      *v12 = 0uLL;
      *(v12 + 16) = 0uLL;
      *(v12 + 32) = 1065353216;
      v12 += 40;
    }

    while (v12 != 40 * v6 + 40 * a2);
    *&v19 = v11 + 40 * a2;
    v13 = *(result + 8);
    v14 = v11 + *result - v13;
    sub_24BD1CB48(result, *result, v13, v14);
    v15 = *v3;
    *v3 = v14;
    v16 = *(v3 + 16);
    *(v3 + 8) = v19;
    *&v19 = v15;
    *(&v19 + 1) = v16;
    v17 = v15;
    v18 = v15;
    return sub_24BD1CC28(&v17);
  }

  return result;
}

void sub_24BD1CB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD1CC28(va);
  _Unwind_Resume(a1);
}

void sub_24BD1CB48(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_24BD1CBB8(a4, v7);
      v7 += 5;
      a4 = v8 + 40;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_24BD1B48C(v6);
      v6 += 40;
    }
  }
}

uint64_t sub_24BD1CBB8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

uint64_t sub_24BD1CC28(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    sub_24BD1B48C(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_24BD1CC78(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BD1CEEC();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BD1CED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BD1BAF8(va);
  _Unwind_Resume(a1);
}

const void **sub_24BD1CFAC(void *a1, const void **a2)
{
  v4 = sub_24BCCC4B4(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_24BD1D208();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_24BCCC960(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_24BD1D1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_24BCCC468(va);
  _Unwind_Resume(a1);
}

char *sub_24BD1D284(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_24BC8DE9C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = *(a2 + 24);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  return __dst;
}

void sub_24BD1D300(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94E98;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD1D37C(uint64_t **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a2;
  memset(__p, 0, sizeof(__p));
  sub_24BCC9910(__p, &v9, __p, 1uLL);
  sub_24BD1D430(a1, __p, a3, a4, a5);
}

void sub_24BD1D414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD1D430(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v8 = a1[1];
  *&v19 = *a1;
  *(&v19 + 1) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
  }

  v12 = 0uLL;
  v13 = 0;
  sub_24BCC9984(&v12, &v19, v20, 1uLL);
  sub_24BE7F218(&v19);
  sub_24BD1E904(&v12, v9, &v19);
  sub_24BCC97B8(&v12);
  v12 = v19;
  v13 = v20[0];
  v20[0] = 0;
  v19 = 0uLL;
  v17 = &v19;
  sub_24BCC961C(&v17);
  BYTE4(v17) = 4;
  LODWORD(v17) = 10;
  v20[0] = 0;
  v19 = 0uLL;
  sub_24BCE2380(&v19, &v17, v18, 1uLL);
  v10 = *a1;
  v15 = 0;
  v16 = 0;
  __p = 0;
  sub_24BCC9A1C(&__p, *v10, v10[1], (v10[1] - *v10) >> 2);
  v17 = 0;
  v18[0] = 0;
  v18[1] = 0;
  sub_24BCE220C(&v17, &__p, &v17, 1uLL);
  if (__p)
  {
    v15 = __p;
    operator delete(__p);
  }

  memset(v11, 0, sizeof(v11));
  sub_24BCE2490(v11, v17, v18[0], 0xAAAAAAAAAAAAAAABLL * ((v18[0] - v17) >> 3));
  sub_24BF02A98(a4, a5);
  sub_24BD1D758();
}

void sub_24BD1D6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char *a13, std::__shared_weak_count *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24)
{
  if (a14)
  {
    sub_24BC9EC78(a14);
  }

  if (a12)
  {
    sub_24BC9EC78(a12);
  }

  a13 = &a16;
  sub_24BC8EE84(&a13);
  __p = (v24 - 120);
  sub_24BC8EE84(&__p);
  v26 = *(v24 - 96);
  if (v26)
  {
    *(v24 - 88) = v26;
    operator delete(v26);
  }

  *(v24 - 96) = &a19;
  sub_24BCC961C((v24 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_24BD1D7DC(uint64_t a1, uint64_t *a2, uint64_t *a3, void *a4)
{
  *(a1 + 8) = 0u;
  *a1 = &unk_285F94EE8;
  v6 = *a2;
  v7 = *(a2 + 2);
  *(a1 + 48) = 0;
  v8 = a1 + 48;
  *(v8 - 8) = v7;
  *(v8 - 24) = &unk_285F949B0;
  *(v8 - 16) = v6;
  *(v8 + 8) = 0u;
  sub_24BCC9A1C(v8, *a3, a3[1], (a3[1] - *a3) >> 2);
  *(a1 + 72) = *a4;
  return a1;
}

void sub_24BD1D8A8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94EE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD1D924(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49[1] = *MEMORY[0x277D85DE8];
  v13 = a1[1];
  *&v41 = *a1;
  *(&v41 + 1) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  v14 = a3[1];
  v42 = *a3;
  v43 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = *(a2 + 8);
  v44 = *a2;
  v45 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v16 = *(a4 + 8);
  v46 = *a4;
  v47 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v38 = 0uLL;
  v39 = 0;
  sub_24BCC9984(&v38, &v41, &v48, 4uLL);
  for (i = 48; i != -16; i -= 16)
  {
    sub_24BE7F218(&v41 + i);
  }

  sub_24BD1E904(&v38, v18, &v41);
  sub_24BCC97B8(&v38);
  v38 = v41;
  v39 = v42;
  v42 = 0;
  v41 = 0uLL;
  __p[0] = &v41;
  sub_24BCC961C(__p);
  v41 = xmmword_24BFD26F4;
  v42 = 0x400000007;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &v41, &v43, 3uLL);
  v19 = **a2;
  v20 = *(*a2 + 8) - v19;
  if (v20)
  {
    if (v20 > 4)
    {
      if (v20 != 8)
      {
        v21 = **a1;
        if (((*a1)[1] - v21) > 0xC)
        {
          v22 = **a4;
          if (*(*a4 + 8) != v22)
          {
            v23 = *v19;
            v24 = v19[1];
            v25 = v19[2];
            v26 = *(v21 + 12);
            v27 = sub_24BD1729C(*v22);
            v28 = sub_24BD172B8(v27);
            v40[0] = v23;
            v40[1] = v24;
            v40[2] = v25;
            v40[3] = v26;
            v42 = 0;
            v41 = 0uLL;
            sub_24BCC9910(&v41, v40, &v41, 4uLL);
            v33 = (8 * v23 * v24 * v25) | 4;
            v44 = 0;
            v45 = 0;
            v43 = 0;
            sub_24BCC9910(&v43, &v33, &v34, 1uLL);
            v32 = v28;
            v47 = 0;
            v48 = 0;
            v46 = 0;
            sub_24BCC9910(&v46, &v32, &v33, 1uLL);
            v34 = 0;
            v35 = 0;
            v36 = 0;
            sub_24BCE220C(&v34, &v41, v49, 3uLL);
            v29 = 0;
            while (1)
            {
              v30 = (&v46)[v29];
              if (v30)
              {
                *(&v47 + v29 * 8) = v30;
                operator delete(v30);
              }

              v29 -= 3;
              if (v29 == -9)
              {
                memset(v31, 0, sizeof(v31));
                sub_24BCE2490(v31, v34, v35, 0xAAAAAAAAAAAAAAABLL * ((v35 - v34) >> 3));
                sub_24BF02A98(a7, a8);
                operator new();
              }
            }
          }

          sub_24BC923C0();
        }

        sub_24BC923C0();
      }

      sub_24BC923C0();
    }

    sub_24BC923C0();
  }

  sub_24BC923C0();
}

void sub_24BD1DD74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char **a23, uint64_t a24, char *a25)
{
  sub_24BE7F218(&a23);
  a23 = &a25;
  sub_24BCC961C(&a23);
  a25 = &a13;
  sub_24BC8EE84(&a25);
  if (__p)
  {
    a17 = __p;
    operator delete(__p);
  }

  a25 = &a19;
  sub_24BCC961C(&a25);
  _Unwind_Resume(a1);
}

void sub_24BD1DECC(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94F38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

void sub_24BD1DF48(int ***a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = *MEMORY[0x277D85DE8];
  v11 = objc_autoreleasePoolPush();
  v12 = a1[1];
  *&__src = *a1;
  *(&__src + 1) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = a2[1];
  v37 = *a2;
  v38 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v33 = 0uLL;
  v34 = 0;
  sub_24BCC9984(&v33, &__src, v39, 2uLL);
  for (i = 16; i != -16; i -= 16)
  {
    sub_24BE7F218(&__src + i);
  }

  sub_24BD1E904(&v33, v15, &__src);
  sub_24BCC97B8(&v33);
  v33 = __src;
  v34 = v37;
  v37 = 0;
  __src = 0uLL;
  __p[0] = &__src;
  sub_24BCC961C(__p);
  memset(v32, 0, sizeof(v32));
  sub_24BCC9548(v32, v33, *(&v33 + 1), (*(&v33 + 1) - v33) >> 4);
  sub_24BEF7C30(v32);
  *&__src = v32;
  sub_24BCC961C(&__src);
  BYTE4(__src) = 4;
  LODWORD(__src) = 10;
  memset(__p, 0, sizeof(__p));
  sub_24BCE2380(__p, &__src, &__src + 8, 1uLL);
  v16 = **a1;
  if ((*a1)[1] != v16)
  {
    v18 = *a3;
    v17 = a3[1];
    v41 = *v16;
    v42 = v17;
    v43 = v18;
    v44 = 4;
    v37 = 0;
    __src = 0uLL;
    sub_24BCC9910(&__src, &v41, &v45, 4uLL);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    sub_24BCE220C(&v28, &__src, &v38, 1uLL);
    if (__src)
    {
      *(&__src + 1) = __src;
      operator delete(__src);
    }

    if (*(a3 + 16) == 1)
    {
      BYTE4(__src) = 4;
      LODWORD(__src) = 10;
      DWORD2(__src) = 10;
      BYTE12(__src) = 4;
      sub_24BD1E508(__p, &__src, &v37, 2uLL);
      v19 = **a1;
      if ((*a1)[1] == v19)
      {
        sub_24BC923C0();
      }

      v21 = *a3;
      v20 = a3[1];
      v41 = *v19;
      v42 = v20;
      v43 = v21;
      v44 = 4;
      v37 = 0;
      __src = 0uLL;
      sub_24BCC9910(&__src, &v41, &v45, 4uLL);
      v22 = **a1;
      if ((*a1)[1] == v22)
      {
        sub_24BC923C0();
      }

      v24 = *a3;
      v23 = a3[1];
      v35[0] = *v22;
      v35[1] = v23;
      v35[2] = v24;
      v35[3] = 4;
      v39[0] = 0;
      v39[1] = 0;
      v38 = 0;
      sub_24BCC9910(&v38, v35, &__src, 4uLL);
      sub_24BD1E640(&v28, &__src, &v40, 2uLL);
      for (j = 0; j != -6; j -= 3)
      {
        v26 = v39[j - 1];
        if (v26)
        {
          v39[j] = v26;
          operator delete(v26);
        }
      }
    }

    memset(v27, 0, sizeof(v27));
    sub_24BCE2490(v27, v28, v29, 0xAAAAAAAAAAAAAAABLL * ((v29 - v28) >> 3));
    sub_24BF02A98(a5, a6);
    operator new();
  }

  sub_24BC923C0();
}

void sub_24BD1E3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  v27 = (v25 - 128);
  v28 = -48;
  while (1)
  {
    v29 = *(v27 - 1);
    if (v29)
    {
      *v27 = v29;
      operator delete(v29);
    }

    v27 -= 3;
    v28 += 24;
    if (!v28)
    {
      *(v25 - 160) = &a16;
      sub_24BC8EE84((v25 - 160));
      if (__p)
      {
        a20 = __p;
        operator delete(__p);
      }

      *(v25 - 160) = &a25;
      sub_24BCC961C((v25 - 160));
      _Unwind_Resume(a1);
    }
  }
}

void *sub_24BD1E508(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCD06B0(v6, v10);
    }

    sub_24BC8E01C();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v18 = a3 - __src;
    if (a3 != __src)
    {
      result = memmove(*result, __src, v18 - 3);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12 - 3);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = v11;
      v15 = v11;
      do
      {
        v16 = *v13;
        v13 += 8;
        *v15 = v16;
        v15 += 8;
        v14 += 8;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

void sub_24BD1E640(uint64_t *a1, char **a2, char **a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) < a4)
  {
    sub_24BD1E7B8(a1);
    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCA04D4(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 3) >= a4)
  {
    sub_24BD1E7F8(&v19, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      v15 = a1[1];
      do
      {
        v17 = *(v15 - 24);
        v15 -= 24;
        v16 = v17;
        if (v17)
        {
          *(v14 - 16) = v16;
          operator delete(v16);
        }

        v14 = v15;
      }

      while (v15 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    sub_24BD1E7F8(&v18, a2, (a2 + v11), v8);
    a1[1] = sub_24BCE2294(a1, (a2 + v11), a3, a1[1]);
  }
}

void sub_24BD1E7B8(uint64_t *a1)
{
  if (*a1)
  {
    sub_24BC8EED8(a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

char **sub_24BD1E7F8(int a1, char **a2, char **a3, char **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        sub_24BCA2A30(a4, *v5, v5[1], (v5[1] - *v5) >> 2);
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_24BD1E888(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F94F88;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD1E904@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (*(result + 8) != *result)
  {
    sub_24BECCF78(*result, 0, a2, 0);
  }

  return result;
}

void sub_24BD1E9BC(uint64_t **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, const void ***a5@<X8>)
{
  __src = 0;
  v72 = 0;
  v73 = 0;
  v69 = 0;
  v70 = 0;
  __p = 0;
  sub_24BCB8D20(&__src, ((*a1)[1] - **a1) >> 2);
  sub_24BCB8D20(&__p, ((*a1)[1] - **a1) >> 2);
  if ((*a1)[1] != **a1)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = (*a2 + v7);
      v10 = v9[1] - *v9;
      if (!v10)
      {
        break;
      }

      if (v10 == 2)
      {
        v11 = **v9;
        v12 = (sub_24BD1EEAC(a1, v8) & (v11 >> 31)) + v11;
        if ((v11 & 0x100000000) != 0)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        v14 = (*v9)[1];
        v15 = sub_24BD1EEAC(a1, v8);
        v16 = (sub_24BD1EEAC(a1, v8) & (v14 >> 31)) + v14;
        if ((v14 & 0x100000000) != 0)
        {
          v17 = v16;
        }

        else
        {
          v17 = v15;
        }

        v18 = v72;
        if (v72 >= v73)
        {
          v28 = __src;
          v29 = v72 - __src;
          v30 = (v72 - __src) >> 2;
          v31 = v30 + 1;
          if ((v30 + 1) >> 62)
          {
            goto LABEL_70;
          }

          v32 = v73 - __src;
          if ((v73 - __src) >> 1 > v31)
          {
            v31 = v32 >> 1;
          }

          if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v33 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v33 = v31;
          }

          if (v33)
          {
            sub_24BC92E0C(&__src, v33);
          }

          *(4 * v30) = v13;
          v19 = (4 * v30 + 4);
          memcpy(0, v28, v29);
          v49 = __src;
          __src = 0;
          v72 = v19;
          v73 = 0;
          if (v49)
          {
            operator delete(v49);
          }
        }

        else
        {
          *v72 = v13;
          v19 = v18 + 1;
        }

        v72 = v19;
        v50 = v69;
        if (v69 < v70)
        {
          *v69 = v17;
          v39 = v50 + 1;
          goto LABEL_59;
        }

        v51 = __p;
        v52 = v69 - __p;
        v53 = (v69 - __p) >> 2;
        v54 = v53 + 1;
        if ((v53 + 1) >> 62)
        {
LABEL_70:
          sub_24BC8E01C();
        }

        v55 = v70 - __p;
        if ((v70 - __p) >> 1 > v54)
        {
          v54 = v55 >> 1;
        }

        if (v55 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v56 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v56 = v54;
        }

        if (v56)
        {
          sub_24BC92E0C(&__p, v56);
        }

        v57 = (4 * v53);
        v58 = &v57[-((v69 - __p) >> 2)];
        *v57 = v17;
        v39 = v57 + 1;
        memcpy(v58, v51, v52);
        v48 = __p;
        __p = v58;
        goto LABEL_57;
      }

LABEL_60:
      ++v8;
      v7 += 24;
      if (v8 >= ((*a1)[1] - **a1) >> 2)
      {
        goto LABEL_61;
      }
    }

    v20 = v72;
    if (v72 >= v73)
    {
      v22 = __src;
      v23 = v72 - __src;
      v24 = (v72 - __src) >> 2;
      v25 = v24 + 1;
      if ((v24 + 1) >> 62)
      {
        sub_24BC8E01C();
      }

      v26 = v73 - __src;
      if ((v73 - __src) >> 1 > v25)
      {
        v25 = v26 >> 1;
      }

      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v27 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v27 = v25;
      }

      if (v27)
      {
        sub_24BC92E0C(&__src, v27);
      }

      v34 = (4 * v24);
      v35 = &v34[-((v72 - __src) >> 2)];
      *v34 = 0;
      v21 = v34 + 1;
      memcpy(v35, v22, v23);
      v36 = __src;
      __src = v35;
      v72 = v21;
      v73 = 0;
      if (v36)
      {
        operator delete(v36);
      }
    }

    else
    {
      *v72 = 0;
      v21 = v20 + 1;
    }

    v72 = v21;
    v37 = sub_24BD1EEAC(a1, v8);
    v38 = v69;
    if (v69 < v70)
    {
      *v69 = v37;
      v39 = v38 + 1;
LABEL_59:
      v69 = v39;
      goto LABEL_60;
    }

    v40 = __p;
    v41 = v69 - __p;
    v42 = (v69 - __p) >> 2;
    v43 = v42 + 1;
    if ((v42 + 1) >> 62)
    {
      sub_24BC8E01C();
    }

    v44 = v70 - __p;
    if ((v70 - __p) >> 1 > v43)
    {
      v43 = v44 >> 1;
    }

    if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v45 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v45 = v43;
    }

    if (v45)
    {
      sub_24BC92E0C(&__p, v45);
    }

    v46 = (4 * v42);
    v47 = &v46[-((v69 - __p) >> 2)];
    *v46 = v37;
    v39 = v46 + 1;
    memcpy(v47, v40, v41);
    v48 = __p;
    __p = v47;
LABEL_57:
    v69 = v39;
    v70 = 0;
    if (v48)
    {
      operator delete(v48);
    }

    goto LABEL_59;
  }

LABEL_61:
  v65 = 0;
  v66 = 0;
  v67 = 0;
  sub_24BCC9A1C(&v65, __src, v72, (v72 - __src) >> 2);
  v62 = 0;
  v63 = 0;
  v64 = 0;
  sub_24BCC9A1C(&v62, __p, v69, (v69 - __p) >> 2);
  sub_24BEA8020(a1, &v65, &v62, a3, a4, a5);
  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  if (__p)
  {
    v69 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v72 = __src;
    operator delete(__src);
  }
}

void sub_24BD1EE30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  if (a19)
  {
    operator delete(a19);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_24BD1EEAC(uint64_t **a1, int a2)
{
  v2 = **a1;
  v3 = ((*a1)[1] - v2) >> 2;
  v4 = a2;
  if (a2 < 0)
  {
    v4 = v3 + a2;
  }

  if (v3 <= v4)
  {
    sub_24BC923C0();
  }

  return *(v2 + 4 * v4);
}

uint64_t sub_24BD1EEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, unsigned int a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v37 = a5;
  v7 = sub_24BF02A98(a1, a2);
  v8 = v7;
  v35[19] = v7;
  v36 = v9;
  v10 = sub_24BF55DE0();
  v11 = sub_24BF5488C(v10, v8);
  sub_24BCE1268(&v31);
  strcpy(v38, ">M[JjQd[LQ");
  v12 = sub_24BD1F27C(v38);
  v13 = strlen(v12);
  sub_24BC95264(&v31, v12, v13);
  std::stringbuf::str();
  v14 = sub_24BCB9A3C(a3);
  sub_24BC836D4(&v29, &unk_24C0435AF);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  __p = 0;
  v24 = 0;
  v25 = 0;
  v15 = sub_24BF55AF4(v10, v38, v14, &v29, &v26, &__p);
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  v16 = v26;
  if (v26)
  {
    v27 = v26;
    operator delete(v26);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }

  if ((v38[23] & 0x80000000) != 0)
  {
    operator delete(*v38);
  }

  [*v11 MTL:v15 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v16)];
  v17 = sub_24BF53508(v11, a4, 0, 0);
  v18 = [*v11 MTL:&v37 :16 Private:1 :? Selector:? :?s_ksetBytes_length_atIndex_(v17)];
  v19 = [v15 MTL:? :? Private:? :? Selector:? :?s_kmaxTotalThreadsPerThreadgroup(v18)];
  if (v19 >= v37)
  {
    v20 = v37;
  }

  else
  {
    v20 = v19;
  }

  *v38 = v37;
  *&v38[8] = vdupq_n_s64(1uLL);
  v29 = v20;
  v30 = *&v38[8];
  sub_24BF53770(v11, v38, &v29);
  v31 = *MEMORY[0x277D82828];
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x277D82828] + 24);
  v32 = MEMORY[0x277D82878] + 16;
  if (v34 < 0)
  {
    operator delete(v33[7].__locale_);
  }

  v32 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v33);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v35);
  v22 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *sub_24BD1F27C(char *a1)
{
  v4 = *a1;
  result = a1 + 1;
  v3 = v4;
  for (i = 1; i != 10; ++i)
  {
    a1[i] ^= v3;
  }

  a1[10] = 0;
  return result;
}

uint64_t sub_24BD1F2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, unsigned int a6)
{
  v42 = *MEMORY[0x277D85DE8];
  v39 = a6;
  v9 = sub_24BF02A98(a1, a2);
  v10 = v9;
  v37[19] = v9;
  v38 = v11;
  v12 = sub_24BF55DE0();
  v13 = sub_24BF5488C(v12, v10);
  sub_24BCE1268(&v33);
  v40 = 0x1B283F3C3C2F185ALL;
  strcpy(v41.i8, ">>");
  v14 = sub_24BD1F27C(&v40);
  v15 = strlen(v14);
  sub_24BC95264(&v33, v14, v15);
  std::stringbuf::str();
  v16 = sub_24BCB9A3C(a3);
  sub_24BC836D4(&v31, &unk_24C0435AF);
  v28 = 0;
  v29 = 0;
  v30 = 0;
  __p = 0;
  v26 = 0;
  v27 = 0;
  v17 = sub_24BF55AF4(v12, &v40, v16, &v31, &v28, &__p);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  v18 = v28;
  if (v28)
  {
    v29 = v28;
    operator delete(v28);
  }

  if (v32.i8[15] < 0)
  {
    operator delete(v31);
  }

  if (v41.i8[15] < 0)
  {
    operator delete(v40);
  }

  [*v13 MTL:v17 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v18)];
  sub_24BF53508(v13, a4, 0, 0);
  v19 = sub_24BF535E8(v13, a5, 1, 0);
  v20 = [*v13 MTL:&v39 :16 Private:2 :? Selector:? :?s_ksetBytes_length_atIndex_(v19)];
  v21 = [v17 MTL:? :? Private:? :? Selector:? :?s_kmaxTotalThreadsPerThreadgroup(v20)];
  if (v21 >= v39)
  {
    v22 = v39;
  }

  else
  {
    v22 = v21;
  }

  v40 = v39;
  v41 = vdupq_n_s64(1uLL);
  v31 = v22;
  v32 = v41;
  sub_24BF53770(v13, &v40, &v31);
  v33 = *MEMORY[0x277D82828];
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82828] + 24);
  v34 = MEMORY[0x277D82878] + 16;
  if (v36 < 0)
  {
    operator delete(v35[7].__locale_);
  }

  v34 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](v37);
  v24 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD1F658(uint64_t **a1)
{
  v16 = *MEMORY[0x277D85DE8];
  sub_24BCE1268(&v9);
  v14 = 0x32287762737A4112;
  strcpy(v15, "I2");
  v2 = sub_24BD1F27C(&v14);
  v3 = strlen(v2);
  sub_24BC95264(&v9, v2, v3);
  if ((*a1)[1] != **a1)
  {
    v4 = 0;
    do
    {
      v5 = sub_24BD1EEAC(a1, v4);
      v6 = MEMORY[0x24C2543C0](&v9, v5);
      sub_24BC95264(v6, " ", 1);
      ++v4;
    }

    while (v4 < ((*a1)[1] - **a1) >> 2);
  }

  sub_24BC95264(&v9, "]", 1);
  v9 = *MEMORY[0x277D82828];
  *(&v9 + *(v9 - 24)) = *(MEMORY[0x277D82828] + 24);
  v10 = MEMORY[0x277D82878] + 16;
  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  v10 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  result = MEMORY[0x24C2547D0](&v13);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t *sub_24BD1F888()
{
  if ((atomic_load_explicit(&qword_27F0791A0, memory_order_acquire) & 1) == 0)
  {
    sub_24BFB8D0C();
  }

  return &qword_27F0791A8;
}

double sub_24BD1F8C0(uint64_t a1)
{
  *(a1 + 8) = 0;
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 850045863;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  return result;
}

uint64_t sub_24BD1F8F0(uint64_t a1)
{
  sub_24BD1F930(a1);
  std::mutex::~mutex((a1 + 24));
  sub_24BD21FE0(a1, *(a1 + 8));
  return a1;
}

void sub_24BD1F930(uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = (a1 + 8);
  v3 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v4 = v3[5];
      v12 = v3[4];
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v5 = sub_24BD21F6C(&v13, v4, v3[6], (v3[6] - v4) >> 4);
      v6 = v13;
      v7 = v14;
      if (v13 != v14)
      {
        do
        {
          v8 = *(v6 + 8);
          if (*v6)
          {
            v5 = [*v6 NS:v12 :? Private:? :? Selector:? :?s_krelease(v5)];
          }

          if (v8)
          {
            v5 = [v8 NS:? :? Private:? :? Selector:? :?s_krelease(v5)];
          }

          v6 += 16;
        }

        while (v6 != v7);
        v6 = v13;
      }

      if (v6)
      {
        v14 = v6;
        operator delete(v6);
      }

      v9 = v3[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v3[2];
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
    }

    while (v10 != v2);
  }

  sub_24BD21FE0(a1, *(a1 + 8));
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = v2;
  std::mutex::unlock((a1 + 24));
}

uint64_t sub_24BD1FA88(uint64_t a1, unsigned int a2, uint64_t a3)
{
  std::mutex::lock((a1 + 24));
  *v12 = a2 | (a3 << 32);
  if ((a1 + 8) == sub_24BD22044(a1, v12))
  {
    v8 = 0;
  }

  else
  {
    v13 = v12;
    v6 = *(sub_24BD220CC(a1, v12) + 48);
    v8 = *(v6 - 16);
    v7 = *(v6 - 8);
    v13 = v12;
    v9 = sub_24BD220CC(a1, v12);
    *(v9 + 48) -= 16;
    v13 = v12;
    v10 = sub_24BD220CC(a1, v12);
    if (*(v10 + 40) == *(v10 + 48))
    {
      sub_24BD221CC(a1, v12);
    }
  }

  std::mutex::unlock((a1 + 24));
  return v8;
}

void sub_24BD1FBB4(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v29 = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 24));
  v27[0] = a2 | (a3 << 32);
  if ((a1 + 8) == sub_24BD22044(a1, v27))
  {
    *&v28 = a4;
    *(&v28 + 1) = a5;
    v27[2] = v27;
    v15 = sub_24BD220CC(a1, v27);
    sub_24BD22258((v15 + 40), &v28, &v29, 1uLL);
  }

  else
  {
    *&v28 = v27;
    v10 = sub_24BD220CC(a1, v27);
    v11 = v10;
    v13 = v10[6];
    v12 = v10[7];
    if (v13 >= v12)
    {
      v16 = v10[5];
      v17 = (v13 - v16) >> 4;
      v18 = v17 + 1;
      if ((v17 + 1) >> 60)
      {
        sub_24BC8E01C();
      }

      v19 = v12 - v16;
      if (v19 >> 3 > v18)
      {
        v18 = v19 >> 3;
      }

      if (v19 >= 0x7FFFFFFFFFFFFFF0)
      {
        v20 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v18;
      }

      if (v20)
      {
        sub_24BCB53E8((v10 + 5), v20);
      }

      v21 = (16 * v17);
      *v21 = a4;
      v21[1] = a5;
      v14 = 16 * v17 + 16;
      v22 = v10[5];
      v23 = v10[6] - v22;
      v24 = (16 * v17 - v23);
      memcpy(v24, v22, v23);
      v25 = v11[5];
      v11[5] = v24;
      v11[6] = v14;
      v11[7] = 0;
      if (v25)
      {
        operator delete(v25);
      }
    }

    else
    {
      *v13 = a4;
      v13[1] = a5;
      v14 = (v13 + 2);
    }

    v11[6] = v14;
  }

  std::mutex::unlock((a1 + 24));
  v26 = *MEMORY[0x277D85DE8];
}

NS::Private::Selector *sub_24BD1FD90(MTL::Private::Class *a1, void *a2, const void **a3)
{
  v40 = *MEMORY[0x277D85DE8];
  v6 = MTL::Private::Class::s_kMTLRenderPipelineDescriptor(a1);
  v7 = [v6 NS:? :? Private:? :? Selector:? :?s_kalloc(v6)];
  v8 = [v7 NS:? :? Private:? :? Selector:? :?s_kinit(v7)];
  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = a3[1];
  }

  v10 = __p;
  v11 = sub_24BC8E2D4(__p, v9 + 2);
  if (v39 < 0)
  {
    v10 = __p[0];
  }

  if (v9)
  {
    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    v11 = memmove(v10, v12, v9);
  }

  strcpy(v10 + v9, "VS");
  if (v39 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  v14 = NS::Private::Class::s_kNSString(v11);
  v15 = [v14 NS:v13 :4 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v14)];
  v16 = [a2 MTL:v15 :? Private:? :? Selector:? :?s_knewFunctionWithName_(v15)];
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a3 + 23) >= 0)
  {
    v17 = *(a3 + 23);
  }

  else
  {
    v17 = a3[1];
  }

  v18 = __p;
  v19 = sub_24BC8E2D4(__p, v17 + 2);
  if (v39 < 0)
  {
    v18 = __p[0];
  }

  if (v17)
  {
    if (*(a3 + 23) >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    v19 = memmove(v18, v20, v17);
  }

  strcpy(v18 + v17, "FS");
  if (v39 >= 0)
  {
    v21 = __p;
  }

  else
  {
    v21 = __p[0];
  }

  v22 = NS::Private::Class::s_kNSString(v19);
  v23 = [v22 NS:v21 :4 Private:? :? Selector:? :?s_kstringWithCString_encoding_(v22)];
  v24 = [a2 MTL:v23 :? Private:? :? Selector:? :?s_knewFunctionWithName_(v23)];
  v25 = v24;
  if (v39 < 0)
  {
    operator delete(__p[0]);
  }

  v26 = [v8 MTL:v16 :? Private:? :? Selector:? :?s_ksetVertexFunction_(v24)];
  [v8 MTL:v25 :? Private:? :? Selector:? :?s_ksetFragmentFunction_(v26)];
  strcpy(__p, ">l_MJ[LWD[xiz");
  v27 = sub_24BCBD2F0(__p);
  v28 = strlen(v27);
  v29 = *(a3 + 23);
  if (v29 < 0)
  {
    if (v28 != a3[1])
    {
      goto LABEL_39;
    }

    if (v28 == -1)
    {
      sub_24BD2237C();
    }

    a3 = *a3;
  }

  else if (v28 != v29)
  {
    goto LABEL_39;
  }

  v28 = memcmp(a3, v27, v28);
  if (!v28)
  {
    v30 = [v8 MTL:? :? Private:? :? Selector:? :?s_kcolorAttachments(v28)];
    v31 = [v30 MTL:0 :? Private:? :? Selector:? :?s_kobjectAtIndexedSubscript_(v30)];
    v32 = [v31 MTL:125 :? Private:? :? Selector:? :?s_ksetPixelFormat_(v31)];
    v28 = [v8 MTL:252 :? Private:? :? Selector:? :?s_ksetDepthAttachmentPixelFormat_(v32)];
  }

LABEL_39:
  __p[0] = 0;
  v33 = [a1 MTL:v8 :__p Private:? :? Selector:? :?s_knewRenderPipelineStateWithDescriptor_error_(v28)];
  v34 = [v8 NS:? :? Private:? :? Selector:? :?s_krelease(v33)];
  v35 = [v16 NS:? :? Private:? :? Selector:? :?s_krelease(v34)];
  [v25 NS:? :? Private:? :? Selector:? :?s_krelease(v35)];
  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

void sub_24BD20114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a2)
  {
    sub_24BC8DCE8(exception_object);
  }

  _Unwind_Resume(exception_object);
}

MTL::Private::Selector *sub_24BD2014C(MTL::Private::Selector *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = a7;
  v12 = [a3 MTL:? :? Private:? :? Selector:? :?s_kcomputeCommandEncoder(a1)];
  v28 = xmmword_24BFD2814;
  LOWORD(v29) = 41;
  v13 = sub_24BD09DEC(&v28);
  sub_24BC836D4(__p, v13->i8);
  v14 = sub_24BCBF6F4(a1, a2, __p);
  v15 = v14;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v16 = [v12 MTL:v15 :? Private:? :? Selector:? :?s_ksetComputePipelineState_(v14)];
  v17 = [v12 MTL:a4 :0 Private:? :? Selector:? :?s_ksetTexture_atIndex_(v16)];
  v18 = [v12 MTL:&v25 :16 Private:0 :? Selector:? :?s_ksetBytes_length_atIndex_(v17)];
  v19 = [v12 MTL:a5 :a6 Private:1 :? Selector:? :?s_ksetBuffer_offset_atIndex_(v18)];
  v24 = v25;
  v20 = MTL::Private::Selector::s_kdispatchThreads_threadsPerThreadgroup_(v19);
  *&v21 = v24.n128_u32[0];
  *(&v21 + 1) = v24.n128_u32[1];
  *__p = v21;
  v27 = v24.n128_u32[2];
  v28 = vdupq_n_s64(0x20uLL);
  v29 = 1;
  [v12 MTL:v20 :__p Private:&v28)) :? Selector:? :?s_kendEncoding(objc_msgSend(v12];
  v22 = *MEMORY[0x277D85DE8];
  return v15;
}

void sub_24BD202EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD20310(void **a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v12 = a1[1];
  v29[0] = *a1;
  v29[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = a2[1];
  v30 = *a2;
  v31 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *(a3 + 8);
  v32 = *a3;
  v33 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
  }

  v15 = a4[1];
  v34 = *a4;
  v35 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = 0uLL;
  v22 = 0;
  sub_24BCC9984(&v21, v29, v36, 4uLL);
  for (i = 6; i != -2; i -= 2)
  {
    sub_24BE7F218(&v29[i]);
  }

  sub_24BD1E904(&v21, v17, v29);
  sub_24BCC97B8(&v21);
  v21 = *v29;
  v22 = v30;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  v27 = v29;
  sub_24BCC961C(&v27);
  BYTE4(v27) = 4;
  LODWORD(v27) = 10;
  v29[1] = 0;
  v30 = 0;
  v29[0] = 0;
  sub_24BCE2380(v29, &v27, v28, 1uLL);
  v18 = **a3;
  if (*(*a3 + 8) != v18)
  {
    v23[0] = *v18;
    v19 = **a1;
    if ((*(*a1 + 1) - v19) > 4)
    {
      v23[1] = *(v19 + 4);
      v23[2] = 4;
      v25 = 0;
      v26 = 0;
      __p = 0;
      sub_24BCC9910(&__p, v23, &__p, 3uLL);
      v27 = 0;
      v28[0] = 0;
      v28[1] = 0;
      sub_24BCE220C(&v27, &__p, &v27, 1uLL);
      if (__p)
      {
        v25 = __p;
        operator delete(__p);
      }

      memset(v20, 0, sizeof(v20));
      sub_24BCE2490(v20, v27, v28[0], 0xAAAAAAAAAAAAAAABLL * ((v28[0] - v27) >> 3));
      sub_24BF02A98(a7, a8);
      operator new();
    }
  }

  sub_24BC923C0();
}

void sub_24BD20644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char *a19, std::__shared_weak_count *a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *__p, char *a26)
{
  if (a20)
  {
    sub_24BC9EC78(a20);
  }

  a19 = &a10;
  sub_24BC8EE84(&a19);
  a19 = &a22;
  sub_24BC8EE84(&a19);
  if (__p)
  {
    a26 = __p;
    operator delete(__p);
  }

  __p = &a13;
  sub_24BCC961C(&__p);
  _Unwind_Resume(a1);
}

void sub_24BD206F8(uint64_t *a1, uint64_t *a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *a2;
  v4 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
  v5[0] = &off_285F93798;
  v5[1] = sub_24BE7E1F0;
  v5[3] = v5;
  sub_24BE7EE1C(v3, v4);
}

void sub_24BD21304(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v4)
  {
    v3 = [v4 NS:? :? Private:? :? Selector:? :?s_krelease(v3)];
  }

  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {
    v3 = [v5 NS:? :? Private:? :? Selector:? :?s_krelease(v3)];
  }

  if (*(a1 + 72) == 1)
  {
    sub_24BD1F888();
    sub_24BD1FBB4(&qword_27F0791A8, *(a1 + 64), *(a1 + 68), *(a1 + 48), *(a1 + 56));
  }

  else
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v3 = [v6 NS:? :? Private:? :? Selector:? :?s_krelease(v3)];
    }

    v7 = *(a1 + 56);
    if (v7)
    {
      [v7 NS:? :? Private:? :? Selector:? :?s_krelease(v3)];
    }
  }
}

void sub_24BD213F4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD21450(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD206F8(a2, a3);
}

void sub_24BD21470()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD215B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, char a12)
{
  sub_24BE7F218(&a10);
  sub_24BCC961C(&a10);
  a10 = &a12;
  sub_24BCC961C(&a10);
  _Unwind_Resume(a1);
}

void sub_24BD215F4()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD21658(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  strcpy(v7, "*xKY^OXCPO\nLEX]KXN ");
  v3 = sub_24BD18A4C(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_24BD216E8(uint64_t ***a1, uint64_t *a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = *v3;
  v5 = v3[1] - *v3;
  if (v5)
  {
    v21 = *v4;
    if (v5 > 4)
    {
      v6 = v4[1];
      v20 = v6;
      if (v5 != 8)
      {
        v7 = v4[2];
        v19 = v7;
        v8 = *v2[2];
        if (v2[2][1] != v8)
        {
          v18 = *v8;
          v10 = *v2;
          v9 = **v2;
          if ((v10[1] - v9) > 4)
          {
            v17 = *(v9 + 4);
            v15 = (1.0 / v7) + -1.0;
            v16 = 2.0 / v7;
            v13 = (1.0 / v6) + -1.0;
            v14 = 2.0 / v6;
            v11 = *a2;
            v12 = sub_24BE7E0B8(*(**a2 + 60) * *(**a2 + 48));
            v22[0] = &off_285F93798;
            v22[1] = sub_24BE7E1F0;
            v22[3] = v22;
            sub_24BE7EE1C(v11, v12);
          }
        }
      }
    }
  }

  sub_24BC923C0();
}

void sub_24BD21D18()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD21D74(uint64_t a1, uint64_t ***a2, uint64_t *a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  sub_24BD216E8(a2, a3);
}

void sub_24BD21D94()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD21DF0()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void sub_24BD21E4C()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, &unk_24C0435AF);
  __cxa_throw(exception, &unk_285F93280, MEMORY[0x277D82600]);
}

void *sub_24BD21EB0(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  *v7 = xmmword_24BFD2852;
  strcpy(&v7[13], "4< 6%3]");
  v3 = sub_24BCC3BF0(v7);
  v4 = strlen(v3);
  result = sub_24BC95264(a2, v3, v4);
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD21F6C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_24BCC95E0(result, a4);
  }

  return result;
}

void sub_24BD21FC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD21FE0(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_24BD21FE0(a1, *a2);
    sub_24BD21FE0(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t *sub_24BD22044(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v6 = *a2;
  v5 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 8);
    if (v8 >= v6)
    {
      if (v6 >= v8)
      {
        if (*(v3 + 9) >= v5)
        {
          v7 = v3;
        }

        v3 += *(v3 + 9) < v5;
      }

      else
      {
        v7 = v3;
      }
    }

    else
    {
      ++v3;
    }

    v3 = *v3;
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v9 = *(v7 + 8);
  if (v6 < v9 || v9 >= v6 && v5 < *(v7 + 9))
  {
    return v2;
  }

  return v7;
}

uint64_t sub_24BD220CC(uint64_t a1, int *a2)
{
  v2 = *sub_24BD22168(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_24BD22168(uint64_t a1, void *a2, int *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    v7 = a3[1];
    while (1)
    {
      while (1)
      {
        v8 = v4;
        v9 = *(v4 + 8);
        if (v6 >= v9)
        {
          break;
        }

LABEL_4:
        v4 = *v8;
        result = v8;
        if (!*v8)
        {
          goto LABEL_12;
        }
      }

      if (v9 >= v6)
      {
        v10 = *(v8 + 9);
        if (v7 < v10)
        {
          goto LABEL_4;
        }

        if (v10 >= v7)
        {
          goto LABEL_12;
        }
      }

      result = v8 + 1;
      v4 = v8[1];
      if (!v4)
      {
        goto LABEL_12;
      }
    }
  }

  v8 = result;
LABEL_12:
  *a2 = v8;
  return result;
}

uint64_t sub_24BD221CC(uint64_t **a1, int *a2)
{
  v3 = sub_24BD22044(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_24BD22214(a1, v3);
  return 1;
}

uint64_t *sub_24BD22214(uint64_t **a1, uint64_t *a2)
{
  v3 = sub_24BCADE5C(a1, a2);
  v4 = a2[5];
  if (v4)
  {
    a2[6] = v4;
    operator delete(v4);
  }

  operator delete(a2);
  return v3;
}

char *sub_24BD22258(char **a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_24BCC95E0(a1, v10);
    }

    sub_24BC8E01C();
  }

  v11 = a1[1];
  v12 = v11 - result;
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      v17 = *v5++;
      *result = v17;
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v13 = (a2 + v12);
    if (v11 != result)
    {
      do
      {
        v14 = *v5++;
        *result = v14;
        result += 16;
        v12 -= 16;
      }

      while (v12);
    }

    if (v13 == a3)
    {
      v15 = v11;
    }

    else
    {
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v11 = v16;
        v11 += 16;
        v15 += 16;
      }

      while (v13 != a3);
    }

    a1[1] = v15;
  }

  return result;
}

void sub_24BD223B4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F950C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD22430(unint64_t *a1)
{
  sub_24BC848F0(v14);
  v2 = *a1;
  if (*a1 > 0x3FF)
  {
    if (v2 >> 20)
    {
      if (v2 >> 30)
      {
        v8 = v15;
        *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
        *(&v17[0].__locale_ + *(v8 - 24)) = 2;
        v9 = v2;
        if (v2 >> 40)
        {
          v11 = MEMORY[0x24C2543A0](v9 * 9.09494702e-13);
          sub_24BC95264(v11, "TB", 2);
        }

        else
        {
          v10 = MEMORY[0x24C2543A0](v9 * 9.31322575e-10);
          sub_24BC95264(v10, "GB", 2);
        }
      }

      else
      {
        v6 = v15;
        *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
        *(&v17[0].__locale_ + *(v6 - 24)) = 2;
        v7 = MEMORY[0x24C2543A0](vcvtd_n_f64_u64(v2, 0x14uLL));
        sub_24BC95264(v7, "MB", 2);
      }
    }

    else
    {
      v4 = v15;
      *(&v15 + *(v15 - 24) + 8) = *(&v15 + *(v15 - 24) + 8) & 0xFFFFFEFB | 4;
      *(&v17[0].__locale_ + *(v4 - 24)) = 2;
      v5 = MEMORY[0x24C2543A0](vcvtd_n_f64_u64(v2, 0xAuLL));
      sub_24BC95264(v5, "KB", 2);
    }
  }

  else
  {
    v3 = MEMORY[0x24C2543D0](&v15);
    sub_24BC95264(v3, "B", 1);
  }

  std::stringbuf::str();
  v14[0] = *MEMORY[0x277D82818];
  v12 = *(MEMORY[0x277D82818] + 72);
  *(v14 + *(v14[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v15 = v12;
  v16 = MEMORY[0x277D82878] + 16;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  v16 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return MEMORY[0x24C2547D0](&v19);
}

void sub_24BD227B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_24BD22E8C(&a10, MEMORY[0x277D82818]);
  MEMORY[0x24C2547D0](&a26);
  _Unwind_Resume(a1);
}

void sub_24BD227E8(std::string *a1@<X8>)
{
  getrusage(0, &v53);
  ru_maxrss = v53.ru_maxrss;
  if (sub_24BD22D74(&v51))
  {
    sub_24BC836D4(&v45, "Memory Usage: ");
    sub_24BD22430(&ru_maxrss);
    if ((v44 & 0x80u) == 0)
    {
      v2 = v43;
    }

    else
    {
      v2 = v43[0];
    }

    if ((v44 & 0x80u) == 0)
    {
      v3 = v44;
    }

    else
    {
      v3 = v43[1];
    }

    v4 = std::string::append(&v45, v2, v3);
    v5 = *&v4->__r_.__value_.__l.__data_;
    v46.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
    *&v46.__r_.__value_.__l.__data_ = v5;
    v4->__r_.__value_.__l.__size_ = 0;
    v4->__r_.__value_.__r.__words[2] = 0;
    v4->__r_.__value_.__r.__words[0] = 0;
    sub_24BC836D4(v41, "\nExperimental Resident Memory: ");
    if ((v42 & 0x80u) == 0)
    {
      v6 = v41;
    }

    else
    {
      v6 = v41[0];
    }

    if ((v42 & 0x80u) == 0)
    {
      v7 = v42;
    }

    else
    {
      v7 = v41[1];
    }

    v8 = std::string::append(&v46, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v47.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v47.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v40, v51.u64[0] * 0.0009765625 * 0.0009765625);
    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v10 = &v40;
    }

    else
    {
      v10 = v40.__r_.__value_.__r.__words[0];
    }

    if ((v40.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v40.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v40.__r_.__value_.__l.__size_;
    }

    v12 = std::string::append(&v47, v10, size);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v48.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v48.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    sub_24BC836D4(v38, "MB");
    if ((v39 & 0x80u) == 0)
    {
      v14 = v38;
    }

    else
    {
      v14 = v38[0];
    }

    if ((v39 & 0x80u) == 0)
    {
      v15 = v39;
    }

    else
    {
      v15 = v38[1];
    }

    v16 = std::string::append(&v48, v14, v15);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v49.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v49.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    sub_24BC836D4(v36, "\nExperimental Virtual Memory: ");
    if ((v37 & 0x80u) == 0)
    {
      v18 = v36;
    }

    else
    {
      v18 = v36[0];
    }

    if ((v37 & 0x80u) == 0)
    {
      v19 = v37;
    }

    else
    {
      v19 = v36[1];
    }

    v20 = std::string::append(&v49, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v50.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v50.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v35, v51.u64[1] * 0.0009765625 * 0.0009765625);
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v35;
    }

    else
    {
      v22 = v35.__r_.__value_.__r.__words[0];
    }

    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = v35.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v50, v22, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v53.ru_stime.tv_sec = v24->__r_.__value_.__r.__words[2];
    v53.ru_utime = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    sub_24BC836D4(__p, "MB");
    if ((v34 & 0x80u) == 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    if ((v34 & 0x80u) == 0)
    {
      v27 = v34;
    }

    else
    {
      v27 = __p[1];
    }

    v28 = std::string::append(&v53, v26, v27);
    *a1 = *v28;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (v34 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v53.ru_stime.tv_sec) < 0)
    {
      operator delete(v53.ru_utime.tv_sec);
    }

    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v35.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (v37 < 0)
    {
      operator delete(v36[0]);
    }

    if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v49.__r_.__value_.__l.__data_);
    }

    if (v39 < 0)
    {
      operator delete(v38[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v47.__r_.__value_.__l.__data_);
    }

    if (v42 < 0)
    {
      operator delete(v41[0]);
    }

    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    if (v44 < 0)
    {
      operator delete(v43[0]);
    }

    if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
    {
      tv_sec = v45.__r_.__value_.__r.__words[0];
LABEL_82:
      operator delete(tv_sec);
    }
  }

  else
  {
    sub_24BC836D4(&v53, "Memory Usage: ");
    sub_24BD22430(&ru_maxrss);
    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v30 = &v50;
    }

    else
    {
      v30 = v50.__r_.__value_.__r.__words[0];
    }

    if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v31 = v50.__r_.__value_.__l.__size_;
    }

    v32 = std::string::append(&v53, v30, v31);
    *a1 = *v32;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v50.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v53.ru_stime.tv_sec) < 0)
    {
      tv_sec = v53.ru_utime.tv_sec;
      goto LABEL_82;
    }
  }
}

void sub_24BD22BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v72 - 153) < 0)
  {
    operator delete(*(v72 - 176));
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v72 - 201) < 0)
  {
    operator delete(*(v72 - 224));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (*(v72 - 233) < 0)
  {
    operator delete(*(v72 - 256));
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a69 < 0)
  {
    operator delete(a64);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a62 < 0)
  {
    operator delete(a57);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (a56 < 0)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

void sub_24BD22D0C()
{
  if (*(v0 - 201) < 0)
  {
    operator delete(*(v0 - 224));
  }

  if (*(v0 - 153) < 0)
  {
    v1 = *(v0 - 176);
    JUMPOUT(0x24BD22CE8);
  }

  JUMPOUT(0x24BD22CECLL);
}

BOOL sub_24BD22D74(int8x16_t *a1)
{
  task_info_outCnt = 10;
  v2 = task_info(*MEMORY[0x277D85F48], 0x12u, &task_info_out, &task_info_outCnt);
  if (!v2)
  {
    *a1 = vextq_s8(v6, v6, 8uLL);
  }

  return v2 == 0;
}

BOOL sub_24BD22DDC()
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = 0;
  v3 = 4;
  v5 = xmmword_24BFD28BD;
  v6 = 0x5A5B4A5F524D50;
  v0 = sub_24BCE13D4(&v5);
  if (sysctlbyname(v0, &v4, &v3, 0, 0) == -1)
  {
    __error();
    result = 0;
  }

  else
  {
    result = v4 == 1;
  }

  v2 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_24BD22E8C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

BOOL sub_24BD22FE0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v3 = sub_24BD57F04(a1, &v5);
  *a2 = v5;
  *(a2 + 8) = v6;
  if (v7)
  {
    MEMORY[0x24C254890](v7, 0x1000C8077774924);
  }

  return v3;
}

void sub_24BD23050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    MEMORY[0x24C254890](a12, 0x1000C8077774924);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_24BD233C4(char *a1, uint64_t a2, int a3)
{
  v87 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 8);
  switch(v5)
  {
    case 4:
      v42 = *a2;
      v43 = *(a2 + 4);
      v44 = *(a2 + 16);
      sub_24BC83598(v81);
      if (a3)
      {
        v45 = 4;
      }

      else
      {
        v45 = 0;
      }

      if (v43 < 0x10 && v42 < 0x10)
      {
        v45 = 0;
      }

      v85 = v45;
      sub_24BC848DC(__p);
      v80 = 4;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v47 = v43 * v42;
      v70 = 0u;
      v71 = 0u;
      sub_24BC8CAB0(&v70, v47);
      sub_24BC8CAB0(&v71 + 1, v47);
      sub_24BC8CAB0(&v73, v47);
      sub_24BC8CAB0(&v74 + 1, v47);
      v48 = *(&v74 + 1);
      if (v47)
      {
        v49 = v70;
        v50 = *(&v71 + 1);
        v51 = (v44 + 8);
        v52 = *(&v74 + 1);
        v53 = v73;
        do
        {
          *v49++ = *(v51 - 2);
          *v50++ = *(v51 - 1);
          *v53++ = *v51;
          *v52++ = v51[1];
          v51 += 4;
          --v47;
        }

        while (v47);
      }

      if (v75 == v48 || (v66 = v48, *(&v73 + 1) == v73) || (v67 = v73, v72 == *(&v71 + 1)) || (v68 = *(&v71 + 1), *(&v70 + 1) == v70))
      {
        sub_24BC923C0();
      }

      v69 = v70;
      v77 = &v66;
      v78 = v42;
      v79 = v43;
      v84 = 4;
      v54 = malloc_type_malloc(0x440uLL, 0x1000040881B329AuLL);
      v82 = v54;
      v55 = strncpy(v54, "A", 0xFFuLL);
      v55[1] = 0;
      strncpy(v55 + 272, "B", 0xFFuLL);
      v54[273] = 0;
      strncpy(v54 + 544, "G", 0xFFuLL);
      v54[545] = 0;
      strncpy(v54 + 816, "R", 0xFFuLL);
      v54[817] = 0;
      v83 = malloc_type_malloc(0x10uLL, 0x100004052888210uLL);
      v56 = malloc_type_malloc(0x10uLL, 0x100004052888210uLL);
      v86 = v56;
      if (v84 >= 1)
      {
        v57 = 0;
        v58 = v83;
        do
        {
          v58[v57] = 2;
          *(v56 + v57++) = 2;
        }

        while (v57 < v84);
      }

      v65 = 0;
      if (a1[23] >= 0)
      {
        v59 = a1;
      }

      else
      {
        v59 = *a1;
      }

      v60 = sub_24BC88A8C(__p, v81, v59, &v65);
      v20 = v60 == 0;
      if (v60)
      {
        sub_24BC8A0E4(v65);
      }

      free(v82);
      free(v83);
      free(v86);
      for (i = 0; i != -12; i -= 3)
      {
        v62 = *(&v74 + i * 8 + 8);
        if (v62)
        {
          __p[i - 2] = v62;
          operator delete(v62);
        }
      }

      break;
    case 3:
      v21 = *a2;
      v22 = *(a2 + 4);
      v23 = *(a2 + 16);
      sub_24BC83598(v81);
      if (a3)
      {
        v24 = 4;
      }

      else
      {
        v24 = 0;
      }

      if (v22 < 0x10 && v21 < 0x10)
      {
        v24 = 0;
      }

      v85 = v24;
      sub_24BC848DC(__p);
      v80 = 3;
      *&v74 = 0;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v26 = v22 * v21;
      sub_24BC8CAB0(&v70, v26);
      sub_24BC8CAB0(&v71 + 1, v26);
      sub_24BC8CAB0(&v73, v26);
      v27 = v73;
      if (v26)
      {
        v28 = v70;
        v29 = *(&v71 + 1);
        v30 = (v23 + 8);
        v31 = v73;
        do
        {
          *v28++ = *(v30 - 2);
          *v29++ = *(v30 - 1);
          v32 = *v30;
          v30 += 3;
          *v31++ = v32;
          --v26;
        }

        while (v26);
      }

      if (*(&v73 + 1) == v27 || (v66 = v27, v72 == *(&v71 + 1)) || (v67 = *(&v71 + 1), *(&v70 + 1) == v70))
      {
        sub_24BC923C0();
      }

      v68 = v70;
      v77 = &v66;
      v78 = v21;
      v79 = v22;
      v84 = 3;
      v33 = malloc_type_malloc(0x330uLL, 0x1000040881B329AuLL);
      v82 = v33;
      v34 = strncpy(v33, "B", 0xFFuLL);
      v34[1] = 0;
      strncpy(v34 + 272, "G", 0xFFuLL);
      v33[273] = 0;
      strncpy(v33 + 544, "R", 0xFFuLL);
      v33[545] = 0;
      v83 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
      v35 = malloc_type_malloc(0xCuLL, 0x100004052888210uLL);
      v86 = v35;
      if (v84 >= 1)
      {
        v36 = 0;
        v37 = v83;
        do
        {
          v37[v36] = 2;
          *(v35 + v36++) = 2;
        }

        while (v36 < v84);
      }

      v65 = 0;
      if (a1[23] >= 0)
      {
        v38 = a1;
      }

      else
      {
        v38 = *a1;
      }

      v39 = sub_24BC88A8C(__p, v81, v38, &v65);
      v20 = v39 == 0;
      if (v39)
      {
        sub_24BC8A0E4(v65);
      }

      free(v82);
      free(v83);
      free(v86);
      for (j = 0; j != -72; j -= 24)
      {
        v41 = *(&v73 + j);
        if (v41)
        {
          *(&v73 + j + 8) = v41;
          operator delete(v41);
        }
      }

      break;
    case 1:
      v6 = *a2;
      v7 = *(a2 + 4);
      v8 = *(a2 + 16);
      sub_24BC83598(v81);
      if (a3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 0;
      }

      if (v7 < 0x10 && v6 < 0x10)
      {
        v9 = 0;
      }

      v85 = v9;
      sub_24BC848DC(&v70);
      DWORD2(v72) = 1;
      memset(__p, 0, sizeof(__p));
      v11 = v7 * v6;
      sub_24BC8CAB0(__p, v11);
      v12 = __p[0];
      if (v11)
      {
        v13 = __p[0];
        do
        {
          v14 = *v8++;
          *v13++ = v14;
          --v11;
        }

        while (v11);
      }

      if (__p[1] == v12)
      {
        sub_24BC923C0();
      }

      v66 = v12;
      *(&v71 + 1) = &v66;
      *&v72 = __PAIR64__(v7, v6);
      v84 = 1;
      v82 = malloc_type_malloc(0x110uLL, 0x1000040881B329AuLL);
      strncpy(v82, "R", 0xFFuLL);
      *(v82 + 1) = 0;
      v83 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      v15 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
      v86 = v15;
      if (v84 >= 1)
      {
        v16 = 0;
        v17 = v83;
        do
        {
          v17[v16] = 2;
          *(v15 + v16++) = 2;
        }

        while (v16 < v84);
      }

      v65 = 0;
      if (a1[23] >= 0)
      {
        v18 = a1;
      }

      else
      {
        v18 = *a1;
      }

      v19 = sub_24BC88A8C(&v70, v81, v18, &v65);
      v20 = v19 == 0;
      if (v19)
      {
        sub_24BC8A0E4(v65);
      }

      free(v82);
      free(v83);
      free(v86);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      break;
    default:
      v20 = 0;
      break;
  }

  v63 = *MEMORY[0x277D85DE8];
  return v20;
}

void sub_24BD23AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_24BD23B8C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_285F95118;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C2548B0);
}

uint64_t sub_24BD23BE0(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    result = MEMORY[0x24C254890](result, 0x1000C8077774924);
    *(a1 + 40) = 0;
  }

  return result;
}

void sub_24BD23C24(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (*(a4 + 23) < 0)
  {
    sub_24BC8DE9C(&__dst, *a4, *(a4 + 8));
  }

  else
  {
    __dst = *a4;
  }

  sub_24BD25030(&__dst, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_24BC8DE9C(&v266, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v266 = __p;
  }

  v8 = *a2;
  if (a2[1] != *a2)
  {
    v9 = 0;
    while (1)
    {
      v10 = *a6;
      v11 = sub_24BC95264(a1, "        def Material ", 22);
      v12 = v10 + 24 * v9;
      v13 = *(v12 + 23);
      v14 = v13 >= 0 ? v10 + 24 * v9 : *v12;
      v15 = v13 >= 0 ? *(v12 + 23) : *(v12 + 8);
      v16 = sub_24BC95264(v11, v14, v15);
      v17 = sub_24BC95264(v16, "\n", 2);
      v18 = sub_24BC95264(v17, "        {\n", 10);
      v19 = sub_24BC95264(v18, "            token inputs:frame:stPrimvarName = st\n", 52);
      v20 = sub_24BC95264(v19, "            token outputs:surface.connect = </", 46);
      v21 = *(a3 + 23);
      v22 = v21 >= 0 ? a3 : *a3;
      v23 = v21 >= 0 ? *(a3 + 23) : *(a3 + 8);
      v24 = sub_24BC95264(v20, v22, v23);
      v25 = sub_24BC95264(v24, "/Materials/", 11);
      v26 = *(v12 + 23);
      v27 = v26 >= 0 ? v10 + 24 * v9 : *v12;
      v28 = v26 >= 0 ? *(v12 + 23) : *(v12 + 8);
      v29 = sub_24BC95264(v25, v27, v28);
      v30 = sub_24BC95264(v29, "/surfaceShader.outputs:surface>\n", 32);
      v31 = sub_24BC95264(v30, "\n", 1);
      v32 = sub_24BC95264(v31, "            def Shader surfaceShader\n", 39);
      v33 = sub_24BC95264(v32, "            {\n", 14);
      sub_24BC95264(v33, "                uniform token info:id = UsdPreviewSurface\n", 60);
      v34 = v8 + 48 * v9;
      v37 = *(v34 + 32);
      v36 = (v34 + 32);
      v35 = v37;
      if (!v37)
      {
        goto LABEL_48;
      }

      v38 = v36;
      do
      {
        if (v35[7] >= 1)
        {
          v38 = v35;
        }

        v35 = *&v35[2 * (v35[7] < 1)];
      }

      while (v35);
      if (v38 == v36 || v38[7] > 1)
      {
LABEL_48:
        v48 = a1;
        v49 = "                color3f inputs:diffuseColor = (0.5, 0.5, 0.5)\n";
        v50 = 62;
      }

      else
      {
        v39 = sub_24BC95264(a1, "                color3f inputs:diffuseColor.connect = </", 56);
        v40 = *(a3 + 23);
        v41 = v40 >= 0 ? a3 : *a3;
        v42 = v40 >= 0 ? *(a3 + 23) : *(a3 + 8);
        v43 = sub_24BC95264(v39, v41, v42);
        v44 = sub_24BC95264(v43, "/Materials/", 11);
        v45 = *(v12 + 23);
        v46 = v45 >= 0 ? v10 + 24 * v9 : *v12;
        v47 = v45 >= 0 ? *(v12 + 23) : *(v12 + 8);
        v48 = sub_24BC95264(v44, v46, v47);
        v49 = "/diffuseColor_texture.outputs:rgb>\n";
        v50 = 35;
      }

      sub_24BC95264(v48, v49, v50);
      v51 = *v36;
      if (!*v36)
      {
        goto LABEL_109;
      }

      v52 = v36;
      v53 = *v36;
      do
      {
        if (v53[7] >= 2)
        {
          v52 = v53;
        }

        v53 = *&v53[2 * (v53[7] < 2)];
      }

      while (v53);
      if (v52 != v36 && v52[7] <= 2)
      {
        v54 = sub_24BC95264(a1, "                normal3f inputs:normal.connect = </", 51);
        v55 = *(a3 + 23);
        if (v55 >= 0)
        {
          v56 = a3;
        }

        else
        {
          v56 = *a3;
        }

        if (v55 >= 0)
        {
          v57 = *(a3 + 23);
        }

        else
        {
          v57 = *(a3 + 8);
        }

        v58 = sub_24BC95264(v54, v56, v57);
        v59 = sub_24BC95264(v58, "/Materials/", 11);
        v60 = *(v12 + 23);
        if (v60 >= 0)
        {
          v61 = v10 + 24 * v9;
        }

        else
        {
          v61 = *v12;
        }

        if (v60 >= 0)
        {
          v62 = *(v12 + 23);
        }

        else
        {
          v62 = *(v12 + 8);
        }

        v63 = sub_24BC95264(v59, v61, v62);
        sub_24BC95264(v63, "/normal_texture.outputs:rgb>\n", 29);
        v51 = *v36;
      }

      if (!v51)
      {
        goto LABEL_109;
      }

      v64 = v36;
      v65 = v51;
      do
      {
        if (v65[7] >= 4)
        {
          v64 = v65;
        }

        v65 = *&v65[2 * (v65[7] < 4)];
      }

      while (v65);
      if (v64 != v36 && v64[7] <= 4)
      {
        v66 = sub_24BC95264(a1, "                float inputs:occlusion.connect = </", 51);
        v67 = *(a3 + 23);
        if (v67 >= 0)
        {
          v68 = a3;
        }

        else
        {
          v68 = *a3;
        }

        if (v67 >= 0)
        {
          v69 = *(a3 + 23);
        }

        else
        {
          v69 = *(a3 + 8);
        }

        v70 = sub_24BC95264(v66, v68, v69);
        v71 = sub_24BC95264(v70, "/Materials/", 11);
        v72 = *(v12 + 23);
        if (v72 >= 0)
        {
          v73 = v10 + 24 * v9;
        }

        else
        {
          v73 = *v12;
        }

        if (v72 >= 0)
        {
          v74 = *(v12 + 23);
        }

        else
        {
          v74 = *(v12 + 8);
        }

        v75 = sub_24BC95264(v71, v73, v74);
        sub_24BC95264(v75, "/occlusion_texture.outputs:r>\n", 30);
        v51 = *v36;
      }

      if (!v51)
      {
        goto LABEL_109;
      }

      v76 = v36;
      do
      {
        if (v51[7] >= 5)
        {
          v76 = v51;
        }

        v51 = *&v51[2 * (v51[7] < 5)];
      }

      while (v51);
      if (v76 != v36 && v76[7] <= 5)
      {
        v77 = sub_24BC95264(a1, "                float inputs:roughness.connect = </", 51);
        v78 = *(a3 + 23);
        v79 = v78 >= 0 ? a3 : *a3;
        v80 = v78 >= 0 ? *(a3 + 23) : *(a3 + 8);
        v81 = sub_24BC95264(v77, v79, v80);
        v82 = sub_24BC95264(v81, "/Materials/", 11);
        v83 = *(v12 + 23);
        v84 = v83 >= 0 ? v10 + 24 * v9 : *v12;
        v85 = v83 >= 0 ? *(v12 + 23) : *(v12 + 8);
        v86 = sub_24BC95264(v82, v84, v85);
        v87 = "/roughness_texture.outputs:r>\n";
        v88 = 30;
      }

      else
      {
LABEL_109:
        v86 = a1;
        v87 = "                float inputs:roughness = 0.9\n";
        v88 = 45;
      }

      sub_24BC95264(v86, v87, v88);
      v89 = *v36;
      if (*v36)
      {
        v90 = v36;
        do
        {
          if (v89[7] >= 6)
          {
            v90 = v89;
          }

          v89 = *&v89[2 * (v89[7] < 6)];
        }

        while (v89);
        if (v90 != v36 && v90[7] <= 6)
        {
          v91 = sub_24BC95264(a1, "                float inputs:metallic.connect = </", 50);
          v92 = *(a3 + 23);
          if (v92 >= 0)
          {
            v93 = a3;
          }

          else
          {
            v93 = *a3;
          }

          if (v92 >= 0)
          {
            v94 = *(a3 + 23);
          }

          else
          {
            v94 = *(a3 + 8);
          }

          v95 = sub_24BC95264(v91, v93, v94);
          v96 = sub_24BC95264(v95, "/Materials/", 11);
          v97 = *(v12 + 23);
          if (v97 >= 0)
          {
            v98 = v10 + 24 * v9;
          }

          else
          {
            v98 = *v12;
          }

          if (v97 >= 0)
          {
            v99 = *(v12 + 23);
          }

          else
          {
            v99 = *(v12 + 8);
          }

          v100 = sub_24BC95264(v96, v98, v99);
          sub_24BC95264(v100, "/metallic_texture.outputs:r>\n", 29);
        }
      }

      sub_24BC95264(a1, "                token outputs:surface\n", 38);
      v101 = (v36 - 2);
      v102 = *v36;
      if (*v36)
      {
        v103 = v36;
        do
        {
          if (v102[7] >= 3)
          {
            v103 = v102;
          }

          v102 = *&v102[2 * (v102[7] < 3)];
        }

        while (v102);
        if (v103 != v36 && v103[7] <= 3)
        {
          break;
        }
      }

LABEL_225:
      v138 = sub_24BC95264(a1, "            }\n", 14);
      v139 = sub_24BC95264(v138, "\n", 1);
      v140 = sub_24BC95264(v139, "            def Shader uvReader_st\n", 37);
      v141 = sub_24BC95264(v140, "            {\n", 14);
      v142 = sub_24BC95264(v141, "                uniform token info:id = UsdPrimvarReader_float2\n", 66);
      v143 = sub_24BC95264(v142, "                token inputs:varname.connect = </", 49);
      v144 = *(a3 + 23);
      if (v144 >= 0)
      {
        v145 = a3;
      }

      else
      {
        v145 = *a3;
      }

      if (v144 >= 0)
      {
        v146 = *(a3 + 23);
      }

      else
      {
        v146 = *(a3 + 8);
      }

      v147 = sub_24BC95264(v143, v145, v146);
      v148 = sub_24BC95264(v147, "/Materials/", 11);
      v149 = *(v12 + 23);
      if (v149 >= 0)
      {
        v150 = v12;
      }

      else
      {
        v150 = *v12;
      }

      if (v149 >= 0)
      {
        v151 = *(v12 + 23);
      }

      else
      {
        v151 = *(v12 + 8);
      }

      v152 = sub_24BC95264(v148, v150, v151);
      v153 = sub_24BC95264(v152, ".inputs:frame:stPrimvarName>\n", 29);
      v154 = sub_24BC95264(v153, "                float2 outputs:result\n", 38);
      sub_24BC95264(v154, "            }\n", 14);
      v155 = *v101;
      if (*v101 != v36)
      {
        while (1)
        {
          v258 = v155[7];
          v156 = *(v155 + 16);
          v259 = *(v155 + 16);
          v157 = a2[3];
          if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v266.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v266.__r_.__value_.__l.__size_;
          }

          sub_24BC8E2D4(&v262, size + 1);
          if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v159 = &v262;
          }

          else
          {
            v159 = v262.__r_.__value_.__r.__words[0];
          }

          if (size)
          {
            if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v160 = &v266;
            }

            else
            {
              v160 = v266.__r_.__value_.__r.__words[0];
            }

            memmove(v159, v160, size);
          }

          v161 = v157 + 48 * v156;
          *(&v159->__r_.__value_.__l.__data_ + size) = 95;
          sub_24BD25150(v161, &v261);
          if ((v261.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v162 = &v261;
          }

          else
          {
            v162 = v261.__pn_.__r_.__value_.__r.__words[0];
          }

          if ((v261.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v163 = HIBYTE(v261.__pn_.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v163 = v261.__pn_.__r_.__value_.__l.__size_;
          }

          v164 = std::string::append(&v262, v162, v163);
          v165 = *&v164->__r_.__value_.__l.__data_;
          v263.__r_.__value_.__r.__words[2] = v164->__r_.__value_.__r.__words[2];
          *&v263.__r_.__value_.__l.__data_ = v165;
          v164->__r_.__value_.__l.__size_ = 0;
          v164->__r_.__value_.__r.__words[2] = 0;
          v164->__r_.__value_.__r.__words[0] = 0;
          std::to_string(&v260, v9);
          if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v166 = &v260;
          }

          else
          {
            v166 = v260.__r_.__value_.__r.__words[0];
          }

          if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v167 = HIBYTE(v260.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v167 = v260.__r_.__value_.__l.__size_;
          }

          v168 = std::string::append(&v263, v166, v167);
          v169 = *&v168->__r_.__value_.__l.__data_;
          v264.__r_.__value_.__r.__words[2] = v168->__r_.__value_.__r.__words[2];
          *&v264.__r_.__value_.__l.__data_ = v169;
          v168->__r_.__value_.__l.__size_ = 0;
          v168->__r_.__value_.__r.__words[2] = 0;
          v168->__r_.__value_.__r.__words[0] = 0;
          v170 = sub_24BD251B8(a5, &v258);
          v173 = v170[1];
          v171 = v170 + 1;
          v172 = v173;
          v174 = *(v171 + 23);
          if (v174 >= 0)
          {
            v175 = v171;
          }

          else
          {
            v175 = v172;
          }

          if (v174 >= 0)
          {
            v176 = *(v171 + 23);
          }

          else
          {
            v176 = v171[1];
          }

          v177 = std::string::append(&v264, v175, v176);
          v178 = *&v177->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v177->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v178;
          v177->__r_.__value_.__l.__size_ = 0;
          v177->__r_.__value_.__r.__words[2] = 0;
          v177->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v264.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v260.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v263.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v261.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v261.__pn_.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v262.__r_.__value_.__l.__data_);
          }

          if (*(v161 + 5) == 1)
          {
            break;
          }

LABEL_326:
          if (v258 <= 3)
          {
            if (v258 == 1)
            {
              v233 = sub_24BC95264(a1, "\n", 1);
              v234 = sub_24BC95264(v233, "            def Shader diffuseColor_texture\n", 46);
              v235 = sub_24BC95264(v234, "            {\n", 14);
              v236 = sub_24BC95264(v235, "                uniform token info:id = UsdUVTexture\n", 55);
              v237 = sub_24BC95264(v236, "                asset inputs:file = @", 37);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v239 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v239 = __p.__r_.__value_.__l.__size_;
              }

              v203 = sub_24BC95264(v237, p_p, v239);
              v204 = "@\n";
              v205 = 2;
LABEL_368:
              v240 = sub_24BC95264(v203, v204, v205);
              v241 = sub_24BC95264(v240, "                float2 inputs:st.connect = </", 45);
              v242 = *(a3 + 23);
              if (v242 >= 0)
              {
                v243 = a3;
              }

              else
              {
                v243 = *a3;
              }

              if (v242 >= 0)
              {
                v244 = *(a3 + 23);
              }

              else
              {
                v244 = *(a3 + 8);
              }

              v245 = sub_24BC95264(v241, v243, v244);
              v246 = sub_24BC95264(v245, "/Materials/", 11);
              v247 = *(v12 + 23);
              if (v247 >= 0)
              {
                v248 = v12;
              }

              else
              {
                v248 = *v12;
              }

              if (v247 >= 0)
              {
                v249 = *(v12 + 23);
              }

              else
              {
                v249 = *(v12 + 8);
              }

              v250 = sub_24BC95264(v246, v248, v249);
              v230 = sub_24BC95264(v250, "/uvReader_st.outputs:result>\n", 29);
              v231 = "                float3 outputs:rgb\n";
              v232 = 35;
LABEL_381:
              v251 = sub_24BC95264(v230, v231, v232);
              sub_24BC95264(v251, "            }\n", 14);
              goto LABEL_382;
            }

            if (v258 == 2)
            {
              v193 = sub_24BC95264(a1, "\n", 1);
              v194 = sub_24BC95264(v193, "            def Shader normal_texture\n", 40);
              v195 = sub_24BC95264(v194, "            {\n", 14);
              v196 = sub_24BC95264(v195, "                uniform token info:id = UsdUVTexture\n", 55);
              v197 = sub_24BC95264(v196, "                token inputs:sourceColorSpace = raw\n", 54);
              v198 = sub_24BC95264(v197, "                float4 inputs:bias = (-1, -1, -1, -1)\n", 54);
              v199 = sub_24BC95264(v198, "                asset inputs:file = @", 37);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v200 = &__p;
              }

              else
              {
                v200 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v201 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v201 = __p.__r_.__value_.__l.__size_;
              }

              v202 = sub_24BC95264(v199, v200, v201);
              v203 = sub_24BC95264(v202, "@\n", 2);
              v204 = "                float4 inputs:scale = (2, 2, 2, 2)\n";
              v205 = 51;
              goto LABEL_368;
            }
          }

          else
          {
            switch(v258)
            {
              case 4:
                v206 = sub_24BC95264(a1, "\n", 1);
                v207 = sub_24BC95264(v206, "            def Shader occlusion_texture\n", 43);
                v208 = sub_24BC95264(v207, "            {\n", 14);
                v209 = sub_24BC95264(v208, "                uniform token info:id = UsdUVTexture\n", 55);
                v210 = sub_24BC95264(v209, "                token inputs:sourceColorSpace = raw\n", 54);
                v192 = sub_24BC95264(v210, "                asset inputs:file = @", 37);
                goto LABEL_342;
              case 5:
                v211 = sub_24BC95264(a1, "\n", 1);
                v212 = sub_24BC95264(v211, "            def Shader roughness_texture\n", 43);
                v213 = sub_24BC95264(v212, "            {\n", 14);
                v214 = sub_24BC95264(v213, "                uniform token info:id = UsdUVTexture\n", 55);
                v215 = sub_24BC95264(v214, "                token inputs:sourceColorSpace = raw\n", 54);
                v192 = sub_24BC95264(v215, "                asset inputs:file = @", 37);
                goto LABEL_342;
              case 6:
                v187 = sub_24BC95264(a1, "\n", 1);
                v188 = sub_24BC95264(v187, "            def Shader metallic_texture\n", 42);
                v189 = sub_24BC95264(v188, "            {\n", 14);
                v190 = sub_24BC95264(v189, "                uniform token info:id = UsdUVTexture\n", 55);
                v191 = sub_24BC95264(v190, "                token inputs:sourceColorSpace = raw\n", 54);
                v192 = sub_24BC95264(v191, "                asset inputs:file = @", 37);
LABEL_342:
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v216 = &__p;
                }

                else
                {
                  v216 = __p.__r_.__value_.__r.__words[0];
                }

                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v217 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v217 = __p.__r_.__value_.__l.__size_;
                }

                v218 = sub_24BC95264(v192, v216, v217);
                v219 = sub_24BC95264(v218, "@\n", 2);
                v220 = sub_24BC95264(v219, "                float2 inputs:st.connect = </", 45);
                v221 = *(a3 + 23);
                if (v221 >= 0)
                {
                  v222 = a3;
                }

                else
                {
                  v222 = *a3;
                }

                if (v221 >= 0)
                {
                  v223 = *(a3 + 23);
                }

                else
                {
                  v223 = *(a3 + 8);
                }

                v224 = sub_24BC95264(v220, v222, v223);
                v225 = sub_24BC95264(v224, "/Materials/", 11);
                v226 = *(v12 + 23);
                if (v226 >= 0)
                {
                  v227 = v12;
                }

                else
                {
                  v227 = *v12;
                }

                if (v226 >= 0)
                {
                  v228 = *(v12 + 23);
                }

                else
                {
                  v228 = *(v12 + 8);
                }

                v229 = sub_24BC95264(v225, v227, v228);
                v230 = sub_24BC95264(v229, "/uvReader_st.outputs:result>\n", 29);
                v231 = "                float outputs:r\n";
                v232 = 32;
                goto LABEL_381;
            }
          }

LABEL_382:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v252 = *(v155 + 1);
          if (v252)
          {
            do
            {
              v253 = v252;
              v252 = *v252;
            }

            while (v252);
          }

          else
          {
            do
            {
              v253 = *(v155 + 2);
              v185 = *v253 == v155;
              v155 = v253;
            }

            while (!v185);
          }

          v155 = v253;
          if (v253 == v36)
          {
            goto LABEL_390;
          }
        }

        if (*(v161 + 47) < 0)
        {
          sub_24BC8DE9C(&v264, *(v161 + 24), *(v161 + 32));
        }

        else
        {
          v179 = *(v161 + 24);
          v264.__r_.__value_.__r.__words[2] = *(v161 + 40);
          *&v264.__r_.__value_.__l.__data_ = v179;
        }

        sub_24BD25210(&v264, &v262);
        if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_24BC8DE9C(&v263, v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
        }

        else
        {
          v263 = v262;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v180 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v180 = __p.__r_.__value_.__l.__size_;
        }

        v181 = HIBYTE(v263.__r_.__value_.__r.__words[2]);
        v182 = HIBYTE(v263.__r_.__value_.__r.__words[2]);
        if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v181 = v263.__r_.__value_.__l.__size_;
        }

        if (v180 == v181 && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v183 = &__p) : (v183 = __p.__r_.__value_.__r.__words[0]), (v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v184 = &v263) : (v184 = v263.__r_.__value_.__r.__words[0]), !memcmp(v183, v184, v180)))
        {
          v186 = 0;
          if (v182 < 0)
          {
            goto LABEL_310;
          }
        }

        else
        {
          sub_24BD25314(&v264, &v261);
          sub_24BD25314(&__dst, &v260);
          v270.__data_ = &v260;
          if (sub_24BD252D8(&v261, v270))
          {
            std::__fs::filesystem::__status(&v264, 0);
            if (LOBYTE(v268[0]))
            {
              v185 = LOBYTE(v268[0]) == 255;
            }

            else
            {
              v185 = 1;
            }

            v186 = !v185;
          }

          else
          {
            v186 = 0;
          }

          if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v260.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v261.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v261.__pn_.__r_.__value_.__l.__data_);
          }

          if ((*(&v263.__r_.__value_.__s + 23) & 0x80) != 0)
          {
LABEL_310:
            operator delete(v263.__r_.__value_.__l.__data_);
          }
        }

        if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__r_.__value_.__l.__data_);
          if (!v186)
          {
            goto LABEL_324;
          }
        }

        else if (!v186)
        {
LABEL_324:
          if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v264.__r_.__value_.__l.__data_);
          }

          goto LABEL_326;
        }

        sub_24BD25210(&v264, &v262);
        if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_24BC8DE9C(&v263, v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
        }

        else
        {
          v263 = v262;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = v263;
        *(&v263.__r_.__value_.__s + 23) = 0;
        v263.__r_.__value_.__s.__data_[0] = 0;
        if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v262.__r_.__value_.__l.__data_);
        }

        goto LABEL_324;
      }

LABEL_390:
      v254 = sub_24BC95264(a1, "        }\n", 10);
      sub_24BC95264(v254, "\n", 1);
      ++v9;
      v8 = *a2;
      if (v9 >= 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 4))
      {
        goto LABEL_391;
      }
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 3;
    v104 = *sub_24BD250F8((v36 - 2), &__p);
    v105 = a2[3];
    if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v106 = HIBYTE(v266.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v106 = v266.__r_.__value_.__l.__size_;
    }

    sub_24BC8E2D4(&v262, v106 + 1);
    if ((v262.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v107 = &v262;
    }

    else
    {
      v107 = v262.__r_.__value_.__r.__words[0];
    }

    if (v106)
    {
      if ((v266.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v108 = &v266;
      }

      else
      {
        v108 = v266.__r_.__value_.__r.__words[0];
      }

      memmove(v107, v108, v106);
    }

    v109 = v105 + 48 * v104;
    *(&v107->__r_.__value_.__l.__data_ + v106) = 95;
    sub_24BD25150(v109, &v261);
    if ((v261.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v110 = &v261;
    }

    else
    {
      v110 = v261.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v261.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v111 = HIBYTE(v261.__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v111 = v261.__pn_.__r_.__value_.__l.__size_;
    }

    v112 = std::string::append(&v262, v110, v111);
    v113 = *&v112->__r_.__value_.__l.__data_;
    v263.__r_.__value_.__r.__words[2] = v112->__r_.__value_.__r.__words[2];
    *&v263.__r_.__value_.__l.__data_ = v113;
    v112->__r_.__value_.__l.__size_ = 0;
    v112->__r_.__value_.__r.__words[2] = 0;
    v112->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v260, v9);
    if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v114 = &v260;
    }

    else
    {
      v114 = v260.__r_.__value_.__r.__words[0];
    }

    if ((v260.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v115 = HIBYTE(v260.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v115 = v260.__r_.__value_.__l.__size_;
    }

    v116 = std::string::append(&v263, v114, v115);
    v117 = *&v116->__r_.__value_.__l.__data_;
    v264.__r_.__value_.__r.__words[2] = v116->__r_.__value_.__r.__words[2];
    *&v264.__r_.__value_.__l.__data_ = v117;
    v116->__r_.__value_.__l.__size_ = 0;
    v116->__r_.__value_.__r.__words[2] = 0;
    v116->__r_.__value_.__r.__words[0] = 0;
    v268[0] = 3;
    v118 = sub_24BD251B8(a5, v268);
    v121 = v118[1];
    v119 = v118 + 1;
    v120 = v121;
    v122 = *(v119 + 23);
    if (v122 >= 0)
    {
      v123 = v119;
    }

    else
    {
      v123 = v120;
    }

    if (v122 >= 0)
    {
      v124 = *(v119 + 23);
    }

    else
    {
      v124 = v119[1];
    }

    v125 = std::string::append(&v264, v123, v124);
    v126 = *&v125->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v125->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v126;
    v125->__r_.__value_.__l.__size_ = 0;
    v125->__r_.__value_.__r.__words[2] = 0;
    v125->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v264.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v260.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v263.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v263.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v261.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v261.__pn_.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
    }

    if (*(v109 + 5) != 1)
    {
LABEL_217:
      v134 = sub_24BC95264(a1, "                asset unconnected:displacement = @", 50);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v135 = &__p;
      }

      else
      {
        v135 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v136 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v136 = __p.__r_.__value_.__l.__size_;
      }

      v137 = sub_24BC95264(v134, v135, v136);
      sub_24BC95264(v137, "@\n", 2);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_225;
    }

    if (*(v109 + 47) < 0)
    {
      sub_24BC8DE9C(&v264, *(v109 + 24), *(v109 + 32));
    }

    else
    {
      v127 = *(v109 + 24);
      v264.__r_.__value_.__r.__words[2] = *(v109 + 40);
      *&v264.__r_.__value_.__l.__data_ = v127;
    }

    sub_24BD25210(&v264, &v262);
    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&v263, v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
    }

    else
    {
      v263 = v262;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v128 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v128 = __p.__r_.__value_.__l.__size_;
    }

    v129 = HIBYTE(v263.__r_.__value_.__r.__words[2]);
    v130 = HIBYTE(v263.__r_.__value_.__r.__words[2]);
    if ((v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v129 = v263.__r_.__value_.__l.__size_;
    }

    if (v128 == v129 && ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v131 = &__p) : (v131 = __p.__r_.__value_.__r.__words[0]), (v263.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v132 = &v263) : (v132 = v263.__r_.__value_.__r.__words[0]), !memcmp(v131, v132, v128)))
    {
      v133 = 0;
      if (v130 < 0)
      {
LABEL_201:
        operator delete(v263.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      sub_24BD25314(&v264, &v261);
      sub_24BD25314(&__dst, &v260);
      v269.__data_ = &v260;
      v133 = sub_24BD252D8(&v261, v269);
      if (SHIBYTE(v260.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v260.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v261.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v261.__pn_.__r_.__value_.__l.__data_);
      }

      if ((*(&v263.__r_.__value_.__s + 23) & 0x80) != 0)
      {
        goto LABEL_201;
      }
    }

    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
      if (!v133)
      {
        goto LABEL_215;
      }
    }

    else if (!v133)
    {
LABEL_215:
      if (SHIBYTE(v264.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v264.__r_.__value_.__l.__data_);
      }

      goto LABEL_217;
    }

    sub_24BD25210(&v264, &v262);
    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_24BC8DE9C(&v263, v262.__r_.__value_.__l.__data_, v262.__r_.__value_.__l.__size_);
    }

    else
    {
      v263 = v262;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v263;
    *(&v263.__r_.__value_.__s + 23) = 0;
    v263.__r_.__value_.__s.__data_[0] = 0;
    if (SHIBYTE(v262.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v262.__r_.__value_.__l.__data_);
    }

    goto LABEL_215;
  }

LABEL_391:
  if (SHIBYTE(v266.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v266.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__pn_.__r_.__value_.__l.__data_);
  }
}