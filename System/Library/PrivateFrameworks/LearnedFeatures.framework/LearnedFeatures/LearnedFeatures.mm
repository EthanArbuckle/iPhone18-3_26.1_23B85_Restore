uint64_t LFDescriptorProgramMetadata(int a1, void *a2)
{
  if (!a2)
  {
    return 3;
  }

  if (a1 > 4)
  {
    if (a1 <= 100)
    {
      if (a1 == 5)
      {
        sub_255AB7738(8u, &cf);
        v3 = cf;
        if (!cf)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (a1 == 6)
      {
        sub_255AB7738(7u, &cf);
        v3 = cf;
        if (!cf)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      switch(a1)
      {
        case 'e':
          sub_255AB7738(4u, &cf);
          v3 = cf;
          if (!cf)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
        case 'f':
          LOBYTE(a1) = 5;
          goto LABEL_26;
        case 'g':
          sub_255AB7738(6u, &cf);
          v3 = cf;
          if (!cf)
          {
            goto LABEL_28;
          }

          goto LABEL_27;
      }
    }

LABEL_32:
    sub_255AB7738(0xAu, &cf);
    v3 = cf;
    if (!cf)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  if (a1 <= 1)
  {
    if (a1 < 2)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  if (a1 != 2 && a1 != 3)
  {
    sub_255AB7738(9u, &cf);
    v3 = cf;
    if (!cf)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_26:
  sub_255AB7738(a1, &cf);
  v3 = cf;
  if (cf)
  {
LABEL_27:
    j__CFRetain(v3);
  }

LABEL_28:
  *a2 = v3;
  v5 = v7;
  if (!v7 || atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return 0;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  return 0;
}

uint64_t LFV2KeypointsCreate()
{
  if (operator new(0x20uLL, MEMORY[0x277D826F0]))
  {
    sub_255ABA3A0();
  }

  return 0;
}

void sub_255A786E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  MEMORY[0x259C49310](v10, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a10)
  {
    JUMPOUT(0x255A786D4);
  }

  JUMPOUT(0x255A786CCLL);
}

uint64_t LFV2KeypointsCreateFromData(const __CFData *a1)
{
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    sub_255B0A6EC(v3);
  }

  return 0;
}

void sub_255A78860(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  MEMORY[0x259C49310](v9, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (!a9)
  {
    JUMPOUT(0x255A78814);
  }

  JUMPOUT(0x255A7880CLL);
}

void sub_255A78894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  nullsub_130(&a12);
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_255B0A8DC(v16 - 40);
  _Unwind_Resume(a1);
}

uint64_t LFV2KeypointsSerialize(uint64_t a1, __CFData *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    return v3;
  }

  sub_255B957A0(v21, *(a1 + 8));
  sub_255A78B44(v11, 16);
  sub_255C05B54(v10, &v12);
  v22 = 1;
  sub_255C058A8(v10);
  sub_255A7BCC0(v10, v21);
  if ((v19 & 0x10) != 0)
  {
    v7 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v7 = v15;
    }

    locale = v14[4].__locale_;
    goto LABEL_15;
  }

  if ((v19 & 8) != 0)
  {
    locale = v14[1].__locale_;
    v7 = v14[3].__locale_;
LABEL_15:
    v6 = v7 - locale;
    goto LABEL_16;
  }

  locale = 0;
  v6 = 0;
LABEL_16:
  CFDataAppendBytes(a2, locale, v6);
  nullsub_129(v10);
  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v8;
  v13 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v20);
  if (v21[0])
  {
    v21[1] = v21[0];
    operator delete(v21[0]);
  }

  return v3;
}

void sub_255A78B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  nullsub_129(&a9);
  sub_255A78E78(&a12);
  v14 = *(v12 - 80);
  if (v14)
  {
    *(v12 - 72) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A78B44(uint64_t a1, int a2)
{
  *(a1 + 176) = 0;
  v4 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v5 = a1 + 16;
  v6 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v7 = a1 + 24;
  v8 = MEMORY[0x277D82818];
  v9 = *(MEMORY[0x277D82818] + 24);
  v10 = *(MEMORY[0x277D82818] + 16);
  *a1 = v10;
  *(a1 + *(v10 - 24)) = v9;
  *(a1 + 8) = 0;
  v11 = (a1 + *(*a1 - 24));
  std::ios_base::init(v11, (a1 + 24));
  v12 = MEMORY[0x277D82890] + 24;
  v11[1].__vftable = 0;
  v11[1].__fmtflags_ = -1;
  v13 = v8[5];
  v14 = v8[4];
  *(a1 + 16) = v14;
  *(v5 + *(v14 - 24)) = v13;
  v15 = v8[1];
  *a1 = v15;
  *(a1 + *(v15 - 24)) = v8[6];
  *a1 = v12;
  *(a1 + 128) = v4;
  v16 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v6;
  *(a1 + 24) = v16;
  MEMORY[0x259C491E0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = a2;
  sub_255A7BB60(v7);
  return a1;
}

void sub_255A78E28(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v1);
  _Unwind_Resume(a1);
}

uint64_t sub_255A78E78(uint64_t a1)
{
  v2 = MEMORY[0x277D82818];
  v3 = *MEMORY[0x277D82818];
  *a1 = *MEMORY[0x277D82818];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](a1 + 128);
  return a1;
}

void LFV2KeypointsAppend(uint64_t a1, float a2, float a3, float a4, float a5, float a6)
{
  *&v6 = __PAIR64__(LODWORD(a3), LODWORD(a2));
  *(&v6 + 1) = __PAIR64__(LODWORD(a5), LODWORD(a4));
  v7 = a6;
  sub_255B95654(*(a1 + 8), &v6);
}

uint64_t LFV2KeypointsRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add((result + 24), 1u);
  }

  return result;
}

atomic_uint *LFV2KeypointsRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 6, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void *LFV2DescriptorsCreate(int a1, uint64_t a2, unint64_t a3, void *__src)
{
  if (!__src)
  {
    return 0;
  }

  v4 = a1 == 1;
  if (a1 == 2)
  {
    v4 = 2;
  }

  if (!v4)
  {
    if (!a2)
    {
      __p = 0uLL;
      v9 = 0;
      if (a3)
      {
        if ((a3 & 0x8000000000000000) == 0)
        {
          operator new();
        }

        sub_255A7B4E8();
      }

      sub_255B95898(v6, &__p);
      goto LABEL_29;
    }

    return 0;
  }

  if (v4 != 2)
  {
    if (a2 == 64)
    {
      __p = 0uLL;
      v9 = 0;
      if (a3)
      {
        if (!(a3 >> 58))
        {
          operator new();
        }

        sub_255A7B4E8();
      }

      sub_255B958C8(v6, &__p);
      goto LABEL_29;
    }

    return 0;
  }

  if (a2 != 128 && a2 != 64)
  {
    return 0;
  }

  if (a2 == 64)
  {
    __p = 0uLL;
    v9 = 0;
    if (a3)
    {
      if (!HIBYTE(a3))
      {
        operator new();
      }

      sub_255A7B4E8();
    }

    sub_255B95900(v6, &__p);
  }

  else
  {
    __p = 0uLL;
    v9 = 0;
    if (a3)
    {
      if (!(a3 >> 55))
      {
        operator new();
      }

      sub_255A7B4E8();
    }

    sub_255B95938(v6, &__p);
  }

LABEL_29:
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    sub_255ABA420();
  }

  if (v7 != -1)
  {
    (off_2867CE4A0[v7])(&__p, v6);
    return 0;
  }

  return result;
}

uint64_t sub_255A7944C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CE4A0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t LFV2DescriptorsCreateFromData(const __CFData *a1)
{
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    sub_255B0A6EC(v3);
  }

  return 0;
}

void sub_255A79638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16)
{
  MEMORY[0x259C49310](v16, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (a16 != -1)
  {
    JUMPOUT(0x255A795C0);
  }

  JUMPOUT(0x255A795D0);
}

void sub_255A79674(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  nullsub_130(va);
  sub_255A796E8(va1);
  sub_255B0A8DC(v2 - 64);
  _Unwind_Resume(a1);
}

void sub_255A796CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  sub_255A796E8(va);
  sub_255B0A8DC(v11 - 64);
  _Unwind_Resume(a1);
}

uint64_t sub_255A796E8(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CE4A0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

uint64_t LFV2DescriptorsSerialize(uint64_t a1, __CFData *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    return v3;
  }

  sub_255B962C8(v21, *(a1 + 8));
  sub_255A78B44(v11, 16);
  sub_255C05B54(v10, &v12);
  v23 = 1;
  sub_255C058A8(v10);
  sub_255A7CD28(v10, v21);
  if ((v19 & 0x10) != 0)
  {
    v7 = v18;
    if (v18 < v15)
    {
      v18 = v15;
      v7 = v15;
    }

    locale = v14[4].__locale_;
    goto LABEL_15;
  }

  if ((v19 & 8) != 0)
  {
    locale = v14[1].__locale_;
    v7 = v14[3].__locale_;
LABEL_15:
    v6 = v7 - locale;
    goto LABEL_16;
  }

  locale = 0;
  v6 = 0;
LABEL_16:
  CFDataAppendBytes(a2, locale, v6);
  nullsub_129(v10);
  v11[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v12 = v8;
  v13 = MEMORY[0x277D82878] + 16;
  if (v17 < 0)
  {
    operator delete(__p);
  }

  v13 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v20);
  if (v22 != -1)
  {
    (off_2867CE4A0[v22])(v11, v21);
  }

  return v3;
}

void sub_255A79984(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  nullsub_129(va);
  sub_255A78E78(va1);
  sub_255A796E8(v2 - 104);
  _Unwind_Resume(a1);
}

uint64_t LFV2DescriptorsRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add((result + 24), 1u);
  }

  return result;
}

atomic_uint *LFV2DescriptorsRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 6, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

uint64_t LFV2DescriptorsGetType(uint64_t a1)
{
  v1 = sub_255B95A2C(*(a1 + 8));
  if (v1 == 2)
  {
    return 2;
  }

  else
  {
    return v1 == 1;
  }
}

uint64_t LFV2FeaturesCreateFromKeypointsAndDescriptors(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && a3)
  {
    v4 = *(a1 + 8);
    v23 = 0;
    v24 = 0;
    v22 = 0;
    v6 = *v4;
    v5 = v4[1];
    if (v5 != v6)
    {
      if (0xCCCCCCCCCCCCCCCDLL * ((v5 - v6) >> 2) < 0xCCCCCCCCCCCCCCDLL)
      {
        operator new();
      }

      sub_255A7B4E8();
    }

    v7 = *(a2 + 8);
    v18[0] = 0;
    v19 = -1;
    v8 = *(v7 + 24);
    if (v8 != -1)
    {
      v14[0] = v18;
      (off_2867CE4C0[v8])(v14, v7);
      v19 = v8;
    }

    v9 = *(v7 + 32);
    v21 = *(v7 + 40);
    v20 = v9;
    v10 = *(a3 + 8);
    LOBYTE(v14[0]) = 0;
    v15 = -1;
    v11 = *(v10 + 24);
    if (v11 != -1)
    {
      v25 = v14;
      (off_2867CE4C0[v11])(&v25, v10);
      v15 = v11;
    }

    v12 = *(v10 + 32);
    v17 = *(v10 + 40);
    v16 = v12;
    if (operator new(0x58uLL, MEMORY[0x277D826F0]))
    {
      sub_255ABA6D0();
    }

    if (v15 != -1)
    {
      (off_2867CE4A0[v15])(&v25, v14);
    }

    if (v19 != -1)
    {
      (off_2867CE4A0[v19])(v14, v18);
    }

    if (v22)
    {
      v23 = v22;
      operator delete(v22);
    }
  }

  return 0;
}

void sub_255A79C88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  MEMORY[0x259C49310](v12, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (a12 != -1)
  {
    JUMPOUT(0x255A79C24);
  }

  JUMPOUT(0x255A79C34);
}

void sub_255A79CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  sub_255A7B5C4(&a9);
  sub_255A7944C(&a15);
  if (v15)
  {
    operator delete(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t LFV2FeaturesCreateFromData(const __CFData *a1)
{
  if (a1)
  {
    CFDataGetBytePtr(a1);
    CFDataGetLength(a1);
    sub_255B0A6EC(v3);
  }

  return 0;
}

void sub_255A79FB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  MEMORY[0x259C49310](v13, MEMORY[0x277D826F0]);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  if (a13 != -1)
  {
    JUMPOUT(0x255A79EE0);
  }

  JUMPOUT(0x255A79EF0);
}

void sub_255A79FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_255A7944C(&a22);
  if (__p)
  {
    operator delete(__p);
  }

  nullsub_130(&a19);
  sub_255A796E8(&a28);
  sub_255A796E8(v28 - 136);
  v30 = *(v28 - 88);
  if (v30)
  {
    *(v28 - 80) = v30;
    operator delete(v30);
  }

  sub_255B0A8DC(v28 - 64);
  _Unwind_Resume(a1);
}

uint64_t LFV2FeaturesSerialize(void *a1, __CFData *a2)
{
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    return v3;
  }

  v6 = a1[1];
  v7 = a1[2];
  v18 = v6;
  v19 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B957A0(v33, v6);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = a1[3];
  v9 = a1[4];
  v18 = v8;
  v19 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B962C8(v31, v8);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = a1[5];
  v11 = a1[6];
  v18 = v10;
  v19 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255B962C8(v29, v10);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  sub_255A78B44(&v18, 16);
  sub_255C05B54(v17, &v20);
  v34 = 1;
  sub_255C058A8(v17);
  sub_255A7BCC0(v17, v33);
  v34 = 1;
  sub_255C058A8(v17);
  sub_255A7CD28(v17, v31);
  v34 = 1;
  sub_255C058A8(v17);
  sub_255A7CD28(v17, v29);
  if ((v27 & 0x10) != 0)
  {
    v14 = v26;
    if (v26 < v23)
    {
      v26 = v23;
      v14 = v23;
    }

    locale = v22[4].__locale_;
    goto LABEL_30;
  }

  if ((v27 & 8) != 0)
  {
    locale = v22[1].__locale_;
    v14 = v22[3].__locale_;
LABEL_30:
    v13 = v14 - locale;
    goto LABEL_31;
  }

  locale = 0;
  v13 = 0;
LABEL_31:
  CFDataAppendBytes(a2, locale, v13);
  nullsub_129(v17);
  v18 = *MEMORY[0x277D82818];
  v15 = *(MEMORY[0x277D82818] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82818] + 64);
  v20 = v15;
  v21 = MEMORY[0x277D82878] + 16;
  if (v25 < 0)
  {
    operator delete(__p);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v28);
  if (v30 != -1)
  {
    (off_2867CE4A0[v30])(&v18, v29);
  }

  if (v32 != -1)
  {
    (off_2867CE4A0[v32])(&v18, v31);
  }

  if (v33[0])
  {
    v33[1] = v33[0];
    operator delete(v33[0]);
  }

  return v3;
}

void sub_255A7A484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  nullsub_129(&a9);
  sub_255A78E78(&a12);
  sub_255A796E8(v12 - 176);
  sub_255A796E8(v12 - 128);
  v14 = *(v12 - 80);
  if (v14)
  {
    *(v12 - 72) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A7A508(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t LFV2FeaturesRetain(uint64_t result)
{
  if (result)
  {
    atomic_fetch_add((result + 56), 1u);
  }

  return result;
}

atomic_uint *LFV2FeaturesRelease(atomic_uint *result)
{
  if (result)
  {
    if (atomic_fetch_add(result + 14, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 8))();
    }
  }

  return result;
}

void *LFV2FeaturesGetKeypoints(void *a1)
{
  if (a1[8])
  {
    return a1[8];
  }

  v4 = a1[1];
  v3 = a1[2];
  if (!v3)
  {
    result = operator new(0x20uLL, MEMORY[0x277D826F0]);
    if (!result)
    {
      a1[8] = 0;
      return 0;
    }

LABEL_8:
    result[1] = v4;
    result[2] = v3;
    *(result + 6) = 1;
    *result = &unk_2867C97E8;
    a1[8] = result;
    return result;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    goto LABEL_8;
  }

  a1[8] = 0;
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1[8];
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1[8];
}

void *LFV2FeaturesGetLocalDescriptors(void *a1)
{
  if (a1[9])
  {
    return a1[9];
  }

  v4 = a1[3];
  v3 = a1[4];
  if (!v3)
  {
    result = operator new(0x20uLL, MEMORY[0x277D826F0]);
    if (!result)
    {
      a1[9] = 0;
      return 0;
    }

LABEL_8:
    result[1] = v4;
    result[2] = v3;
    *(result + 6) = 1;
    *result = &unk_2867C97C8;
    a1[9] = result;
    return result;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    goto LABEL_8;
  }

  a1[9] = 0;
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1[9];
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1[9];
}

void *LFV2FeaturesGetGlobalDescriptors(void *a1)
{
  if (a1[10])
  {
    return a1[10];
  }

  v4 = a1[5];
  v3 = a1[6];
  if (!v3)
  {
    result = operator new(0x20uLL, MEMORY[0x277D826F0]);
    if (!result)
    {
      a1[10] = 0;
      return 0;
    }

LABEL_8:
    result[1] = v4;
    result[2] = v3;
    *(result + 6) = 1;
    *result = &unk_2867C97C8;
    a1[10] = result;
    return result;
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  result = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    goto LABEL_8;
  }

  a1[10] = 0;
  if (atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1[10];
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1[10];
}

void *LFV2OptionsCreate()
{
  result = operator new(0x18uLL, MEMORY[0x277D826F0]);
  if (result)
  {
    result[1] = 0;
    result[2] = 0;
    *(result + 4) = 1;
    *result = &unk_2867CEE98;
  }

  return result;
}

uint64_t LFV2OptionsRelease(atomic_uint *a1)
{
  if (!a1)
  {
    return sub_255AB52E0(0, 0, 2, 0, off_2798073C0);
  }

  if (atomic_fetch_add(a1 + 4, 0xFFFFFFFF) == 1)
  {
    (*(*a1 + 8))(a1);
  }

  return sub_255AB52E0(0, 0, 0, 0, off_2798073D8);
}

uint64_t LFV2HandleCreate(void *a1, int a2, unsigned int a3)
{
  if (a1)
  {
    if (a2 > 4)
    {
      if (a2 == 5)
      {
        v11 = 8;
        v6 = operator new(0x20uLL, MEMORY[0x277D826F0]);
        if (v6)
        {
          goto LABEL_18;
        }

LABEL_23:
        *a1 = 0;
        v7 = off_279807420;
        v8 = 1;
        return sub_255AB52E0(0, 0, v8, 0, v7);
      }

      if (a2 == 6)
      {
        v11 = 7;
        v6 = operator new(0x20uLL, MEMORY[0x277D826F0]);
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if ((a2 - 2) < 2)
      {
        if (a2 == 3)
        {
          v5 = 3;
        }

        else
        {
          v5 = 2;
        }

        v11 = v5;
        v6 = operator new(0x20uLL, MEMORY[0x277D826F0]);
        if (!v6)
        {
          goto LABEL_23;
        }

LABEL_18:
        if (a3 >= 4)
        {
          v9 = 4;
        }

        else
        {
          v9 = a3;
        }

        v12[0] = &unk_2867CEE68;
        v12[1] = 0;
        sub_255AB6988(v6 + 8, &v11, v9, v12);
      }

      if (a2 == 4)
      {
        v11 = 9;
        v6 = operator new(0x20uLL, MEMORY[0x277D826F0]);
        if (v6)
        {
          goto LABEL_18;
        }

        goto LABEL_23;
      }
    }

    v7 = off_279807408;
    v8 = 10;
  }

  else
  {
    v7 = off_2798073F0;
    v8 = 2;
  }

  return sub_255AB52E0(0, 0, v8, 0, v7);
}

uint64_t LFV2HandleCreateWithOptions(void *a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!a1)
  {
    return sub_255AB52E0(0, 0, 2, a5, off_279807450);
  }

  if ((a2 - 2) >= 5)
  {
    return sub_255AB52E0(0, 0, 10, a5, off_279807468);
  }

  if (!a4)
  {
    return sub_255AB52E0(0, 0, 3, a5, off_279807480);
  }

  v8 = 0x708090302uLL >> (8 * (a2 - 2));
  if (a3 >= 4)
  {
    v5 = 4;
  }

  else
  {
    v5 = a3;
  }

  v7 = v5;
  return sub_255A7D538(0, 0, a1, a5, off_279807498, &v8, &v7, a4);
}

CFTypeRef LFV2CopyLastError(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_255AB772C(a1 + 8);
    sub_255AB3B68(v1, &cf);
    v2 = cf;
    if (cf)
    {
      j__CFRetain(cf);
    }

    v3 = v6;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v2;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    sub_255AB52E0(0, 0, 2, 0, off_2798074B0);
    return 0;
  }
}

CFTypeRef LFV2CopyLastErrorDescription(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_255AB772C(a1 + 8);
    sub_255AB3C08(v1, &cf);
    v2 = cf;
    if (cf)
    {
      j__CFRetain(cf);
    }

    v3 = v6;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v2;
    }

    else
    {
      return v2;
    }
  }

  else
  {
    sub_255AB52E0(0, 0, 2, 0, off_2798074C8);
    return 0;
  }
}

uint64_t LFV2DescriptorModelVersion(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return sub_255AB52E0(0, 0, 2, 0, off_2798074E0);
  }

  if (a2)
  {
    v4 = sub_255AB6D64((a1 + 8));
    v11 = v4;
    v12 = v5;
    v13 = BYTE4(v5);
    if ((v5 & 0x100000000) != 0)
    {
      *a2 = v4;
      *(a2 + 8) = v5;
      v10 = sub_255AB772C(a1 + 8);
      return sub_255AB52E0(v10, 1, 0, 0, off_279807528);
    }

    else
    {
      v6 = sub_255ABA164(&v11);
      v7 = sub_255AB772C(a1 + 8);
      return sub_255AB52E0(v7, 1, v6, 0, off_279807510);
    }
  }

  else
  {
    v9 = sub_255AB772C(a1 + 8);
    return sub_255AB52E0(v9, 1, 3, 0, off_2798074F8);
  }
}

uint64_t LFV2ComputeDescriptors(std::mutex *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2 && a3)
    {
      sub_255B01E40(&v7, a2, 1);
    }

    a1 = sub_255AB772C(a1->__m_.__opaque);
    v3 = off_279807558;
    v4 = 1;
    v5 = 3;
  }

  else
  {
    v3 = off_279807540;
    v4 = 0;
    v5 = 2;
  }

  return sub_255AB52E0(a1, v4, v5, 0, v3);
}

void sub_255A7B0E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255AB5F98(&a12);
  sub_255B02AA4(&a9);
  _Unwind_Resume(a1);
}

uint64_t LFV2DetectAndComputeFeatures(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    return sub_255AB52E0(0, 0, 2, 0, off_279807588);
  }

  if (a2)
  {
    sub_255B01E40(&v4, a2, 1);
  }

  v3 = sub_255AB772C(a1 + 8);
  return sub_255AB52E0(v3, 1, 3, 0, off_2798075A0);
}

void sub_255A7B230(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255B02AA4(va);
  sub_255B02AA4((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_255A7B24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_255AB5F98(va1);
  sub_255B02AA4(va);
  sub_255B02AA4((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t LFV2ComputeLocalGlobalDescriptors(std::mutex *a1, const void *a2, uint64_t a3)
{
  if (a1)
  {
    if (a2 && a3)
    {
      sub_255B01E40(&v7, a2, 1);
    }

    a1 = sub_255AB772C(a1->__m_.__opaque);
    v3 = off_2798075E8;
    v4 = 1;
    v5 = 3;
  }

  else
  {
    v3 = off_2798075D0;
    v4 = 0;
    v5 = 2;
  }

  return sub_255AB52E0(a1, v4, v5, 0, v3);
}

void sub_255A7B37C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  sub_255AB5F98(&a12);
  sub_255B02AA4(&a9);
  _Unwind_Resume(a1);
}

uint64_t LFV2HandleRelease(atomic_uint *a1)
{
  if (!a1)
  {
    return sub_255AB52E0(0, 0, 2, 0, off_279807618);
  }

  if (atomic_fetch_add(a1 + 6, 0xFFFFFFFF) == 1)
  {
    (*(*a1 + 8))(a1);
  }

  return sub_255AB52E0(0, 0, 0, 0, off_279807630);
}

uint64_t LFV2DescriptorSetPSHandle(uint64_t a1, uint64_t a2)
{
  sub_255AB7714(a1 + 8, a2);
  if (a1)
  {
    v3 = sub_255AB772C(a1 + 8);
    v4 = 1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  return sub_255AB52E0(v3, v4, 0, 0, off_279807648);
}

uint64_t LFV2DescriptorResetPSHandle(uint64_t a1)
{
  sub_255AB7720(a1 + 8);
  if (a1)
  {
    v2 = sub_255AB772C(a1 + 8);
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  return sub_255AB52E0(v2, v3, 0, 0, off_279807660);
}

void sub_255A7B500(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_255A7B55C(exception, a1);
  __cxa_throw(exception, off_2798073A0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_255A7B55C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void sub_255A7B590()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

uint64_t sub_255A7B5C4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CE4A0[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_255A7B620(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_255A7B634(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_255A7B648(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void sub_255A7B65C(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void **sub_255A7B670(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A7B6E8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_255A7B704(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A7B780(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_255A7B79C(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A7B818(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void **sub_255A7B834(void **result, void *a2)
{
  v2 = *result;
  *v2 = 0;
  v2[1] = 0;
  v2[2] = 0;
  v3 = a2[1];
  if (v3 != *a2)
  {
    if (((v3 - *a2) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A7B8B0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A7B8CC(uint64_t a1, uint64_t *a2)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
  sub_255C058D8(a1);
  v4 = *a2;
  v5 = a2[1];
  v6 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a2) >> 2);
  if (v7 <= v6)
  {
    if (v7 < v6)
    {
      v5 = v4 + 20 * v7;
      a2[1] = v5;
    }
  }

  else
  {
    sub_255A7B9B8(a2, v7 - v6);
    v4 = *a2;
    v5 = a2[1];
  }

  for (; v4 != v5; v4 += 20)
  {
    sub_255C058CC(a1);
    sub_255C058CC(a1);
    sub_255C058CC(a1);
    sub_255C058CC(a1);
    sub_255C058CC(a1);
  }
}

void sub_255A7B9B8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xCCCCCCCCCCCCCCCDLL * ((v3 - v4) >> 2) >= a2)
  {
    if (a2)
    {
      v9 = 20 * ((20 * a2 - 20) / 0x14) + 20;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 2) + a2;
    if (v6 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_255A7B4E8();
    }

    v7 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - v5) >> 2);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x666666666666666)
    {
      v8 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v10 = (4 * ((v4 - *a1) >> 2));
    v11 = 20 * ((20 * a2 - 20) / 0x14) + 20;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_255A7BB60(uint64_t result)
{
  *(result + 88) = 0;
  v1 = result + 64;
  v2 = *(result + 87);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = result + 64;
    v4 = *(result + 87);
    v5 = *(result + 96);
    if ((v5 & 8) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v3 = *(result + 64);
  v4 = *(result + 72);
  v5 = *(result + 96);
  if ((v5 & 8) != 0)
  {
LABEL_3:
    *(result + 88) = v3 + v4;
    *(result + 16) = v3;
    *(result + 24) = v3;
    *(result + 32) = v3 + v4;
  }

LABEL_4:
  if ((v5 & 0x10) == 0)
  {
    return result;
  }

  *(result + 88) = v3 + v4;
  if ((v2 & 0x80000000) != 0)
  {
    v2 = *(result + 72);
    v6 = (*(result + 80) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v2 >= v6)
    {
      v1 = *(result + 64);
      *(result + 72) = v6;
LABEL_14:
      *(v1 + v6) = 0;
      v8 = *(result + 87);
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v6 = 22;
    if (v2 > 0x15)
    {
      *(result + 87) = 22;
      goto LABEL_14;
    }
  }

  v7 = result;
  std::string::append((result + 64), v6 - v2, 0);
  result = v7;
  v8 = *(v7 + 87);
  if ((v8 & 0x8000000000000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_15:
  v8 = *(result + 72);
LABEL_16:
  *(result + 40) = v3;
  *(result + 48) = v3;
  *(result + 56) = v3 + v8;
  if ((*(result + 96) & 3) != 0)
  {
    if (v4 >> 31)
    {
      v9 = ((v4 - 0x80000000) * 0x200000005uLL) >> 64;
      v10 = 0x7FFFFFFF * ((v9 + ((v4 - 0x80000000 - v9) >> 1)) >> 30);
      v3 += v10 + 0x7FFFFFFF;
      v4 = v4 - v10 - 0x7FFFFFFF;
      *(result + 48) = v3;
    }

    if (v4)
    {
      *(result + 48) = v3 + v4;
    }
  }

  return result;
}

uint64_t sub_255A7BCC0(uint64_t a1, uint64_t *a2)
{
  v7 = 0xCCCCCCCCCCCCCCCDLL * ((a2[1] - *a2) >> 2);
  result = sub_255C058B4(a1);
  v5 = *a2;
  for (i = a2[1]; v5 != i; v5 += 20)
  {
    sub_255C058A8(a1);
    sub_255C058A8(a1);
    sub_255C058A8(a1);
    sub_255C058A8(a1);
    result = sub_255C058A8(a1);
  }

  return result;
}

void sub_255A7BD6C(uint64_t a1, uint64_t a2)
{
  LODWORD(v24) = 0;
  sub_255C058CC(a1);
  *(a2 + 40) = 0;
  sub_255C058D8(a1);
  v4 = *(a2 + 40);
  if (v4 != 2)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        sub_255A7C05C(a1, a2);
      }

      return;
    }

    v5 = *(a2 + 24);
    if (v5 != -1)
    {
      if (v5 == 1)
      {
        v6 = (*(a2 + 8) - *a2) >> 6;
LABEL_18:
        v22 = v6;
        sub_255C058D8(a1);
        v12 = *a2;
        v13 = *(a2 + 8);
        v14 = (v13 - *a2) >> 6;
        if (v22 <= v14)
        {
          if (v22 < v14)
          {
            v13 = v12 + (v22 << 6);
            *(a2 + 8) = v13;
          }
        }

        else
        {
          sub_255A7C2D4(a2, v22 - v14);
          v12 = *a2;
          v13 = *(a2 + 8);
        }

        for (; v12 != v13; v12 += 64)
        {
          v24 = v12;
          sub_255A7C428(a1, &v24);
        }

        return;
      }

      (off_2867CE4A0[v5])(&v24, a2);
    }

    v6 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    goto LABEL_18;
  }

  v7 = *(a2 + 32);
  if (v7 != 128)
  {
    if (v7 != 64)
    {
      return;
    }

    v8 = *(a2 + 24);
    if (v8 != -1)
    {
      if (v8 == 2)
      {
        v9 = (*(a2 + 8) - *a2) >> 8;
LABEL_27:
        v23 = v9;
        sub_255C058D8(a1);
        v15 = *a2;
        v16 = *(a2 + 8);
        v17 = (v16 - *a2) >> 8;
        if (v23 <= v17)
        {
          if (v23 < v17)
          {
            v16 = v15 + (v23 << 8);
            *(a2 + 8) = v16;
          }
        }

        else
        {
          sub_255A7C754(a2, v23 - v17);
          v15 = *a2;
          v16 = *(a2 + 8);
        }

        for (; v15 != v16; v15 += 256)
        {
          v24 = v15;
          sub_255A7C8A8(a1, &v24);
        }

        return;
      }

      (off_2867CE4A0[v8])(&v24, a2);
    }

    v9 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 2;
    goto LABEL_27;
  }

  v10 = *(a2 + 24);
  if (v10 == -1)
  {
    goto LABEL_35;
  }

  if (v10 != 3)
  {
    (off_2867CE4A0[v10])(&v24, a2);
LABEL_35:
    v11 = 0;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 3;
    goto LABEL_36;
  }

  v11 = (*(a2 + 8) - *a2) >> 9;
LABEL_36:
  v24 = v11;
  sub_255C058D8(a1);
  v18 = *a2;
  v19 = *(a2 + 8);
  v20 = (v19 - *a2) >> 9;
  if (v24 <= v20)
  {
    if (v24 < v20)
    {
      v19 = v18 + (v24 << 9);
      *(a2 + 8) = v19;
    }
  }

  else
  {
    sub_255A7CBD4(a2, v24 - v20);
    v18 = *a2;
    v19 = *(a2 + 8);
  }

  for (; v18 != v19; v18 += 512)
  {
    for (i = 0; i != 512; i += 4)
    {
      sub_255C058CC(a1);
    }
  }
}

void sub_255A7C05C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    v3 = a1;
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_255A7C1C0(a2, &__p);
    if (__p)
    {
      v10 = __p;
      operator delete(__p);
    }

    a1 = v3;
    if (*(a2 + 24))
    {
      sub_255A7C284();
    }
  }

  __p = (*(a2 + 8) - *a2);
  sub_255C058D8(a1);
  v4 = *(a2 + 8);
  v5 = v4 - *a2;
  v6 = __p - v5;
  if (__p <= v5)
  {
    if (__p < v5)
    {
      *(a2 + 8) = __p + *a2;
    }
  }

  else
  {
    v7 = *(a2 + 16);
    if (v7 - v4 < v6)
    {
      if ((__p & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_255A7B4E8();
    }

    v8 = &v6[v4];
    bzero(v4, __p - v5);
    *(a2 + 8) = v8;
  }
}

uint64_t sub_255A7C1C0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    (off_2867CE4A0[v4])(&v7, a1);
LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a1 + 24) = 0;
    return a1;
  }

  v5 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v5;
    operator delete(v5);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return a1;
}

void sub_255A7C284()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::exception::~exception);
}

void sub_255A7C2D4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 6)
  {
    if (a2)
    {
      v10 = a2 << 6;
      bzero(*(a1 + 8), a2 << 6);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 6) + a2;
    if (v7 >> 58)
    {
      sub_255A7B4E8();
    }

    v8 = v3 - v5;
    if (v8 >> 5 > v7)
    {
      v7 = v8 >> 5;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFC0)
    {
      v9 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 58))
      {
        operator new();
      }

      sub_255A7B590();
    }

    v11 = (v6 >> 6 << 6);
    v12 = a2 << 6;
    bzero(v11, a2 << 6);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_255A7C428(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);
  sub_255C058C0(a1);

  return sub_255C058C0(a1);
}

void sub_255A7C754(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 8)
  {
    if (a2)
    {
      v10 = a2 << 8;
      bzero(*(a1 + 8), a2 << 8);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 8) + a2;
    if (HIBYTE(v7))
    {
      sub_255A7B4E8();
    }

    v8 = v3 - v5;
    if (v8 >> 7 > v7)
    {
      v7 = v8 >> 7;
    }

    if (v8 >= 0x7FFFFFFFFFFFFF00)
    {
      v9 = 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!HIBYTE(v9))
      {
        operator new();
      }

      sub_255A7B590();
    }

    v11 = (v6 >> 8 << 8);
    v12 = a2 << 8;
    bzero(v11, a2 << 8);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_255A7C8A8(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);
  sub_255C058CC(a1);

  return sub_255C058CC(a1);
}

void sub_255A7CBD4(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 9)
  {
    if (a2)
    {
      v10 = a2 << 9;
      bzero(*(a1 + 8), a2 << 9);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 9) + a2;
    if (v7 >> 55)
    {
      sub_255A7B4E8();
    }

    v8 = v3 - v5;
    if (v8 >> 8 > v7)
    {
      v7 = v8 >> 8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFE00)
    {
      v9 = 0x7FFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 55))
      {
        operator new();
      }

      sub_255A7B590();
    }

    v11 = (v6 >> 9 << 9);
    v12 = a2 << 9;
    bzero(v11, a2 << 9);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_255A7CD28(uint64_t a1, uint64_t *a2)
{
  LODWORD(v16) = *(a2 + 10);
  sub_255C058A8(a1);
  result = sub_255C058B4(a1);
  v5 = *(a2 + 10);
  switch(v5)
  {
    case 2:
      v8 = a2[4];
      if (v8 == 128)
      {
        if (*(a2 + 6) != 3)
        {
          goto LABEL_22;
        }

        v16 = (a2[1] - *a2) >> 9;
        result = sub_255C058B4(a1);
        v12 = *a2;
        for (i = a2[1]; v12 != i; v12 += 512)
        {
          for (j = 0; j != 512; j += 4)
          {
            result = sub_255C058A8(a1);
          }
        }
      }

      else if (v8 == 64)
      {
        if (*(a2 + 6) != 2)
        {
          goto LABEL_22;
        }

        v15 = (a2[1] - *a2) >> 8;
        result = sub_255C058B4(a1);
        v10 = *a2;
        for (k = a2[1]; v10 != k; v10 += 256)
        {
          v16 = v10;
          result = sub_255A7D20C(a1, &v16);
        }
      }

      break;
    case 1:
      if (*(a2 + 6) != 1)
      {
        goto LABEL_22;
      }

      v14 = (a2[1] - *a2) >> 6;
      result = sub_255C058B4(a1);
      v7 = *a2;
      for (m = a2[1]; v7 != m; v7 += 64)
      {
        v16 = v7;
        result = sub_255A7CEE0(a1, &v16);
      }

      break;
    case 0:
      if (!*(a2 + 6))
      {
        v16 = a2[1] - *a2;
        return sub_255C058B4(a1);
      }

LABEL_22:
      sub_255A7C284();
  }

  return result;
}

uint64_t sub_255A7CEE0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);
  sub_255C0589C(a1);

  return sub_255C0589C(a1);
}

uint64_t sub_255A7D20C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);
  sub_255C058A8(a1);

  return sub_255C058A8(a1);
}

uint64_t sub_255A7D538(std::mutex *a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26[0] = a6;
  v26[1] = a7;
  v26[2] = a8;
  sub_255A7D92C(v26, v15);
  v13 = sub_255A7D648(a1, a2, v15, a4, a5);
  if (v13)
  {
    if (v25)
    {
      return v13;
    }
  }

  else
  {
    *a3 = *sub_255A7D870(v15);
    if (v25)
    {
      return v13;
    }
  }

  if (v24 == 1)
  {
    if (v23 == 1)
    {
      if (v22 < 0)
      {
        operator delete(__p);
      }

      if (v20 < 0)
      {
        operator delete(v19);
      }
    }

    if (v18 == 1 && v17 < 0)
    {
      operator delete(v16);
    }
  }

  return v13;
}

void sub_255A7D634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7E2A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A7D648(std::mutex *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a3 + 120) == 1)
  {
    if (a2)
    {
      sub_255AB3ACC(a1);
    }

    return 0;
  }

  else
  {
    sub_255C0B718(a3, &v10);
    sub_255C0C244(v11, &v10);
    v19 = 1;
    sub_255A7E3F0(&v20, 1u, v11);
    sub_255AB4F68(&v20, a5, v30);
    sub_255AB3D60(a1, a2, v30, a4);
    if (v39 == 1)
    {
      if (v38 == 1)
      {
        if (v37 < 0)
        {
          operator delete(v36);
        }

        if (v35 < 0)
        {
          operator delete(v34);
        }
      }

      if (v33 == 1 && v32 < 0)
      {
        operator delete(v31);
      }
    }

    if (v29 == 1)
    {
      if (v28 == 1)
      {
        if (v27 < 0)
        {
          operator delete(__p);
        }

        if (v25 < 0)
        {
          operator delete(v24);
        }
      }

      if (v23 == 1 && v22 < 0)
      {
        operator delete(v21);
      }
    }

    if (v19 == 1)
    {
      if (v18 == 1)
      {
        if (v17 < 0)
        {
          operator delete(v16);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }
      }

      if (v13 == 1 && v12 < 0)
      {
        operator delete(v11[0]);
      }
    }

    if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v10.__r_.__value_.__l.__data_);
    }

    return 1;
  }
}

void sub_255A7D824(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  sub_255A7E1F4(v28 - 168);
  sub_255A7E1F4(&a28);
  sub_255A7E144(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_255A7D870(uint64_t result)
{
  if ((*(result + 120) & 1) == 0)
  {
    v1 = result;
    exception = __cxa_allocate_exception(0x80uLL);
    sub_255A7DE50(v3, v1);
    sub_255A7E5DC(exception, v3);
    __cxa_throw(exception, &unk_2867CE520, sub_255A7E504);
  }

  return result;
}

void sub_255A7D8E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7E1F4(va);
  _Unwind_Resume(a1);
}

void sub_255A7D8FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7E1F4(va);
  __cxa_free_exception(v2);
  _Unwind_Resume(a1);
}

void sub_255A7D92C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  LOBYTE(v30) = 0;
  v42 = 0;
  v29[0] = &unk_2867CE4F0;
  v29[1] = &v30;
  v29[2] = a1;
  sub_255C0D504(v29, &v18);
  if (v28 == 1)
  {
    v3 = v41;
    *(a2 + 120) = v41;
    if (v3 == 1)
    {
      *a2 = v30;
    }

    else
    {
      *a2 = v30;
      *(a2 + 16) = 0;
      *(a2 + 112) = 0;
      if (v40 == 1)
      {
        *(a2 + 40) = 0;
        if (v33 == 1)
        {
          *(a2 + 16) = v31;
          *(a2 + 32) = v32;
          v32 = 0;
          v31 = 0uLL;
          *(a2 + 40) = 1;
        }

        *(a2 + 48) = 0;
        *(a2 + 104) = 0;
        if (v39 == 1)
        {
          v5 = v36;
          *(a2 + 64) = v35;
          *(a2 + 48) = v34;
          v34 = 0uLL;
          *(a2 + 72) = v5;
          *(a2 + 80) = v37;
          *(a2 + 96) = v38;
          v35 = 0;
          v37 = 0uLL;
          v38 = 0;
          *(a2 + 104) = 1;
        }

        *(a2 + 112) = 1;
      }
    }

    goto LABEL_35;
  }

  v7 = v18;
  LOBYTE(v8) = 0;
  v17 = 0;
  if (v27 == 1)
  {
    sub_255A7DEBC(&v8, &v19);
    v17 = 1;
    *a2 = v7;
    *(a2 + 16) = 0;
    *(a2 + 40) = 0;
    if (v10 == 1)
    {
      *(a2 + 16) = v8;
      *(a2 + 32) = v9;
      v9 = 0;
      v8 = 0uLL;
      *(a2 + 40) = 1;
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if (v16 != 1)
      {
LABEL_7:
        *(a2 + 112) = 1;
        *(a2 + 120) = 0;
        if (v16 != 1)
        {
          goto LABEL_22;
        }

        goto LABEL_18;
      }
    }

    else
    {
      *(a2 + 48) = 0;
      v4 = a2 + 48;
      *(a2 + 104) = 0;
      if (v16 != 1)
      {
        goto LABEL_7;
      }
    }

    v6 = v13;
    *(v4 + 16) = v12;
    *v4 = *v11;
    v11[0] = 0;
    v11[1] = 0;
    *(a2 + 72) = v6;
    *(a2 + 80) = *__p;
    *(a2 + 96) = v15;
    v12 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v15 = 0;
    *(a2 + 104) = 1;
    *(a2 + 112) = 1;
    *(a2 + 120) = 0;
    if (v16 != 1)
    {
LABEL_22:
      if (v10 == 1 && SHIBYTE(v9) < 0)
      {
        operator delete(v8);
      }

      goto LABEL_25;
    }

LABEL_18:
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[0]);
    }

    goto LABEL_22;
  }

  *a2 = v18;
  *(a2 + 16) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
LABEL_25:
  if ((v28 & 1) == 0 && v27 == 1)
  {
    if (v26 == 1)
    {
      if (v25 < 0)
      {
        operator delete(v24);
      }

      if (v23 < 0)
      {
        operator delete(v22);
      }
    }

    if (v21 == 1 && v20 < 0)
    {
      operator delete(v19);
    }
  }

LABEL_35:
  nullsub_87(v29);
  if (v42 == 1 && (v41 & 1) == 0 && v40 == 1)
  {
    if (v39 == 1)
    {
      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }
    }

    if (v33 == 1 && SHIBYTE(v32) < 0)
    {
      operator delete(v31);
    }
  }
}

void sub_255A7DCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_255A7E144(v17 + 16);
  sub_255A7E2A4(va);
  nullsub_87(v18 - 192);
  sub_255A7E344(v18 - 168);
  _Unwind_Resume(a1);
}

void sub_255A7DCD4(_Unwind_Exception *a1)
{
  nullsub_87(v1 - 192);
  sub_255A7E344(v1 - 168);
  _Unwind_Resume(a1);
}

void sub_255A7DCF4()
{
  nullsub_87();

  JUMPOUT(0x259C49320);
}

void sub_255A7DD34(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  operator new();
}

uint64_t sub_255A7DE50(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_255A7DEBC(a1 + 16, (a2 + 16));
    *(a1 + 112) = 1;
  }

  return a1;
}

uint64_t sub_255A7DEBC(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_255A7E018(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  *(a1 + 32) = 0;
  *(a1 + 88) = 0;
  if (*(a2 + 88) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      v6 = a2;
      sub_255A7E018((a1 + 32), *(a2 + 4), *(a2 + 5));
      a2 = v6;
    }

    else
    {
      v5 = a2[2];
      *(a1 + 48) = *(a2 + 6);
      *(a1 + 32) = v5;
    }

    *(a1 + 56) = *(a2 + 7);
    if (*(a2 + 87) < 0)
    {
      sub_255A7E018((a1 + 64), *(a2 + 8), *(a2 + 9));
    }

    else
    {
      v7 = a2[4];
      *(a1 + 80) = *(a2 + 10);
      *(a1 + 64) = v7;
    }

    *(a1 + 88) = 1;
  }

  return a1;
}

void sub_255A7DFC0(_Unwind_Exception *a1)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*v2);
  }

  sub_255A7E0D4(v2);
  if ((*(v1 + 24) & 1) != 0 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *sub_255A7E018(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_255A7BCA8();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

uint64_t sub_255A7E0D4(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    if ((*(result + 55) & 0x80000000) == 0)
    {
      if ((*(result + 23) & 0x80000000) == 0)
      {
        return result;
      }

LABEL_6:
      v2 = result;
      operator delete(*result);
      return v2;
    }

    v1 = result;
    operator delete(*(result + 32));
    result = v1;
    if (*(v1 + 23) < 0)
    {
      goto LABEL_6;
    }
  }

  return result;
}

uint64_t sub_255A7E144(uint64_t result)
{
  if (*(result + 96) == 1)
  {
    if (*(result + 88) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 87) < 0)
    {
      v2 = result;
      operator delete(*(result + 64));
      result = v2;
      if ((*(v2 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 24) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 23) < 0)
        {
          v1 = result;
          operator delete(*result);
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 32));
    result = v3;
    if (*(v3 + 24) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_255A7E1F4(uint64_t result)
{
  if (*(result + 112) == 1)
  {
    if (*(result + 104) != 1)
    {
      goto LABEL_5;
    }

    if (*(result + 103) < 0)
    {
      v2 = result;
      operator delete(*(result + 80));
      result = v2;
      if ((*(v2 + 71) & 0x80000000) == 0)
      {
LABEL_5:
        if (*(result + 40) != 1)
        {
          return result;
        }

LABEL_6:
        if (*(result + 39) < 0)
        {
          v1 = result;
          operator delete(*(result + 16));
          return v1;
        }

        return result;
      }
    }

    else if ((*(result + 71) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    v3 = result;
    operator delete(*(result + 48));
    result = v3;
    if (*(v3 + 40) != 1)
    {
      return result;
    }

    goto LABEL_6;
  }

  return result;
}

uint64_t sub_255A7E2A4(uint64_t result)
{
  if ((*(result + 120) & 1) == 0 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_255A7E344(uint64_t result)
{
  if (*(result + 128) == 1 && (*(result + 120) & 1) == 0 && *(result + 112) == 1)
  {
    if (*(result + 104) == 1)
    {
      if (*(result + 103) < 0)
      {
        v1 = result;
        operator delete(*(result + 80));
        result = v1;
      }

      if (*(result + 71) < 0)
      {
        v2 = result;
        operator delete(*(result + 48));
        result = v2;
      }
    }

    if (*(result + 40) == 1 && *(result + 39) < 0)
    {
      v3 = result;
      operator delete(*(result + 16));
      return v3;
    }
  }

  return result;
}

uint64_t sub_255A7E3F0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_255AB3A4C();
  LOBYTE(__p[0]) = 0;
  v16 = 0;
  if (*(a3 + 96) == 1)
  {
    sub_255A7DEBC(__p, a3);
    v16 = 1;
  }

  sub_255C0C394(a1, a2, v6, __p);
  if (v16 == 1)
  {
    if (v15 != 1)
    {
      goto LABEL_7;
    }

    if (v14 < 0)
    {
      operator delete(v13);
      if ((v12 & 0x80000000) == 0)
      {
LABEL_7:
        if (v10 != 1)
        {
          return a1;
        }

        goto LABEL_8;
      }
    }

    else if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    operator delete(v11);
    if (v10 != 1)
    {
      return a1;
    }

LABEL_8:
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return a1;
}

void sub_255A7E4DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7E144(va);
  _Unwind_Resume(a1);
}

void sub_255A7E4F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A7E144(va);
  _Unwind_Resume(a1);
}

void sub_255A7E504(uint64_t a1)
{
  *a1 = &unk_2867CE548;
  if (*(a1 + 120) != 1)
  {
    goto LABEL_10;
  }

  if (*(a1 + 112) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 111) & 0x80000000) == 0)
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    v4 = a1;
    operator delete(*(a1 + 56));
    a1 = v4;
    if (*(v4 + 48) != 1)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v3 = a1;
  operator delete(*(a1 + 88));
  a1 = v3;
  if (*(v3 + 79) < 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  if (*(a1 + 48) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (*(a1 + 47) < 0)
  {
    v2 = a1;
    operator delete(*(a1 + 24));
    a1 = v2;
  }

LABEL_10:

  std::exception::~exception(a1);
}

uint64_t sub_255A7E5DC(uint64_t a1, __int128 *a2)
{
  *a1 = &unk_2867CE548;
  v3 = *a2;
  *(a1 + 24) = 0;
  *(a1 + 8) = v3;
  *(a1 + 120) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_255A7DEBC(a1 + 24, a2 + 1);
    *(a1 + 120) = 1;
  }

  return a1;
}

void sub_255A7E658(_Unwind_Exception *a1)
{
  sub_255A7E144(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void sub_255A7E674(std::exception *this)
{
  this->__vftable = &unk_2867CE548;
  if (LOBYTE(this[15].__vftable) != 1)
  {
    goto LABEL_10;
  }

  if (LOBYTE(this[14].__vftable) == 1)
  {
    if ((SHIBYTE(this[13].__vftable) & 0x80000000) == 0)
    {
      if ((SHIBYTE(this[9].__vftable) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_9:
      operator delete(this[7].__vftable);
      if (LOBYTE(this[6].__vftable) != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_6;
    }

    operator delete(this[11].__vftable);
    if (SHIBYTE(this[9].__vftable) < 0)
    {
      goto LABEL_9;
    }
  }

LABEL_5:
  if (LOBYTE(this[6].__vftable) != 1)
  {
    goto LABEL_10;
  }

LABEL_6:
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

LABEL_10:
  std::exception::~exception(this);

  JUMPOUT(0x259C49320);
}

void sub_255A7E748(int a1@<W0>, std::string *a2@<X8>)
{
  if (a1)
  {
    v3 = "model.mil";
  }

  else
  {
    v3 = "model_exclave.mil";
  }

  if (a1)
  {
    v4 = 9;
  }

  else
  {
    v4 = 17;
  }

  v24 = v4;
  memcpy(__dst, v3, v4);
  *(__dst + v4) = 0;
  v5 = v24;
  if ((v24 & 0x80u) == 0)
  {
    v6 = v24;
  }

  else
  {
    v6 = __dst[1];
  }

  if (v6 + 18 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v6 + 18 >= 0x17)
  {
    operator new();
  }

  v22 = 12148;
  HIBYTE(v22) = v6 + 18;
  v21 = *"Models/GlobalFeat/";
  if (v6)
  {
    if ((v24 & 0x80u) == 0)
    {
      v7 = __dst;
    }

    else
    {
      v7 = __dst[0];
    }

    memmove(&v22 + 2, v7, v6);
  }

  *(&v22 + v6 + 2) = 0;
  sub_255A7EBE8(v15);
  v12.__r_.__value_.__r.__words[0] = &unk_2867CEA48;
  v12.__r_.__value_.__l.__size_ = objc_opt_class();
  sub_255AA8D48(&v12, &v21, &v16, 1, &__p);
  nullsub_32(&v12);
  if ((v14 & 1) == 0)
  {
    sub_255A7F150(&v17, v10);
    sub_255A7EF1C("Failed to access bundle bundle resource '", &v21, "' path: ", v10, &v12);
    if (v11 < 0)
    {
      operator delete(v10[0]);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, &v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_255A7E018(a2, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    if ((v14 & 1) != 0 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a2 = __p;
  }

  v15[0] = *MEMORY[0x277D82818];
  v8 = *(MEMORY[0x277D82818] + 72);
  *(v15 + *(v15[0] - 24)) = *(MEMORY[0x277D82818] + 64);
  v16 = v8;
  v17 = MEMORY[0x277D82878] + 16;
  if (v19 < 0)
  {
    operator delete(v18[7].__locale_);
  }

  v17 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](&v20);
  if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_30:
    operator delete(__dst[0]);
    return;
  }

  operator delete(v21);
  if (v5 < 0)
  {
    goto LABEL_30;
  }
}

void sub_255A7EB0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, char a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 == 1 && a27 < 0)
  {
    operator delete(a22);
  }

  sub_255A7F000(&a30, MEMORY[0x277D82818]);
  MEMORY[0x259C49250](&a48);
  if (*(v49 - 73) < 0)
  {
    operator delete(*(v49 - 96));
    if ((v48 & 0x80000000) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if ((v48 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(*(v49 - 72));
  _Unwind_Resume(a1);
}

uint64_t sub_255A7EBE8(uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x277D82890] + 104;
  *(a1 + 128) = MEMORY[0x277D82890] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x277D82890] + 64;
  *(a1 + 16) = MEMORY[0x277D82890] + 64;
  v5 = a1 + 24;
  v6 = MEMORY[0x277D82818];
  v7 = *(MEMORY[0x277D82818] + 24);
  v8 = *(MEMORY[0x277D82818] + 16);
  *a1 = v8;
  *(a1 + *(v8 - 24)) = v7;
  *(a1 + 8) = 0;
  v9 = (a1 + *(*a1 - 24));
  std::ios_base::init(v9, (a1 + 24));
  v10 = MEMORY[0x277D82890] + 24;
  v9[1].__vftable = 0;
  v9[1].__fmtflags_ = -1;
  v11 = v6[5];
  v12 = v6[4];
  *(a1 + 16) = v12;
  *(v3 + *(v12 - 24)) = v11;
  v13 = v6[1];
  *a1 = v13;
  *(a1 + *(v13 - 24)) = v6[6];
  *a1 = v10;
  *(a1 + 128) = v2;
  v14 = MEMORY[0x277D82868] + 16;
  *(a1 + 16) = v4;
  *(a1 + 24) = v14;
  MEMORY[0x259C491E0](a1 + 32);
  *(a1 + 88) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 24;
  sub_255A7BB60(v5);
  return a1;
}

void sub_255A7EECC(_Unwind_Exception *a1)
{
  if (*(v2 + 111) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 24) = v3;
  std::locale::~locale((v2 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x259C49250](v1);
  _Unwind_Resume(a1);
}

void sub_255A7EF1C(const char *a1@<X0>, uint64_t *a2@<X1>, const char *a3@<X2>, uint64_t *a4@<X3>, std::string *a5@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  v16[0] = a1;
  v9 = strlen(a1);
  v10 = *(a2 + 23);
  if ((v10 & 0x80u) == 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  if ((v10 & 0x80u) != 0)
  {
    v10 = a2[1];
  }

  v16[1] = v9;
  v16[2] = v11;
  v16[3] = v10;
  v16[4] = a3;
  v12 = strlen(a3);
  v13 = *(a4 + 23);
  if ((v13 & 0x80u) == 0)
  {
    v14 = a4;
  }

  else
  {
    v14 = *a4;
  }

  if ((v13 & 0x80u) != 0)
  {
    v13 = a4[1];
  }

  v16[5] = v12;
  v16[6] = v14;
  v16[7] = v13;
  sub_255A7F250(v16, &v17, 0, 0, a5);
  v15 = *MEMORY[0x277D85DE8];
}

uint64_t sub_255A7F000(uint64_t a1, uint64_t *a2)
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

_DWORD *sub_255A7F150@<X0>(_DWORD *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = result[24];
  if ((v3 & 0x10) != 0)
  {
    v4 = *(result + 11);
    v5 = *(result + 6);
    if (v4 < v5)
    {
      *(result + 11) = v5;
      v4 = v5;
    }

    v6 = *(result + 5);
    v7 = v4 - v6;
    if (v4 - v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if ((v3 & 8) == 0)
    {
      a2[23] = 0;
LABEL_4:
      *a2 = 0;
      return result;
    }

    v6 = *(result + 2);
    v7 = *(result + 4) - v6;
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
LABEL_14:
      sub_255A7BCA8();
    }
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  a2[23] = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  result = memmove(a2, v6, v7);
  a2[v7] = 0;
  return result;
}

void sub_255A7F250(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = (a2 - a1) >> 4;
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = (a2 - a1) >> 4;
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
  }

  else
  {
    if ((v13 - 16) >= 0x40)
    {
      v16 = ((v13 - 16) >> 4) + 1;
      v17 = v16 & 3;
      if ((v16 & 3) == 0)
      {
        v17 = 4;
      }

      v18 = v16 - v17;
      v15 = a1 + 16 * v18;
      v19 = (a1 + 40);
      v20 = 0uLL;
      v21 = 0uLL;
      do
      {
        v22 = v19 - 4;
        v23 = vld2q_f64(v22);
        v24 = vld2q_f64(v19);
        v20 = vaddq_s64(v23, v20);
        v21 = vaddq_s64(v24, v21);
        v19 += 8;
        v18 -= 4;
      }

      while (v18);
      v14 = vaddvq_s64(vaddq_s64(v21, v20));
    }

    else
    {
      v14 = 0;
      v15 = a1;
    }

    do
    {
      v14 += *(v15 + 8);
      v15 += 16;
    }

    while (v15 != a2);
  }

  v25 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v25 >= 0x17)
  {
    v26 = v25 | 7;
    if (v26 == 23)
    {
      v27 = 24;
    }

    else
    {
      v27 = v26;
    }

    sub_255A7F3EC(a5, v27);
  }

  if (v10 >= 1)
  {
    std::string::append(a5, *a1, *(a1 + 8));
    if (v13 != 16)
    {
      for (i = a1 + 16; i != a2; i += 16)
      {
        std::string::append(a5, a3, a4);
        v29 = *i;
        v30 = *(i + 8);
        std::string::append(a5, v29, v30);
      }
    }
  }
}

void sub_255A7F3C8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A7F3EC(_BYTE *__dst, unint64_t a2)
{
  v3 = __dst[23];
  if ((v3 & 0x8000000000000000) == 0)
  {
    v4 = 22;
    LOBYTE(v5) = __dst[23];
    v6 = a2 < 0x17;
    if (a2 < 0x17)
    {
      goto LABEL_3;
    }

LABEL_6:
    if (v4 < a2)
    {
      operator new();
    }

    operator new();
  }

  v3 = *(__dst + 1);
  v8 = *(__dst + 2);
  v4 = (v8 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  v5 = HIBYTE(v8);
  v6 = a2 < 0x17;
  if (a2 >= 0x17)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = *__dst;
  if ((v5 & 0x80) == 0)
  {
    v9 = v5 + 1;
LABEL_9:
    memmove(__dst, v7, v9);
    goto LABEL_10;
  }

  v10 = *(__dst + 1);
  v6 = 1;
  v9 = v10 + 1;
  if (v10 != -1)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (v6)
  {
    operator delete(v7);
  }

  __dst[23] = v3 & 0x7F;
}

void sub_255A7F578(void *a1)
{
  __cxa_begin_catch(a1);

  __cxa_end_catch();
}

uint64_t sub_255A7F5A0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void sub_255A7F618(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255A7F6A4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t sub_255A7F6D4(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void *sub_255A7F704(uint64_t a1, char **lpsrc)
{
  v3 = *lpsrc;
  if (*(a1 + 8))
  {
    v4 = *(v3 + 2);

    return v4(lpsrc);
  }

  else
  {
    v6 = *v3;
    result = __dynamic_cast(lpsrc, &unk_2867CE560, &unk_2867CE570, 0);
    if (result)
    {
      return (result[1] == 0);
    }
  }

  return result;
}

void sub_255A7F79C(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = *(*v3 + 24);
    v5 = *MEMORY[0x277D85DE8];

    v4();
  }

  else
  {
    if ((atomic_load_explicit(&qword_27F7DC498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27F7DC498))
    {
      sub_255C0F00C("cv3d::kit::ml::SharedANE]", 0x18uLL, &qword_27F7DC480);
      __cxa_guard_release(&qword_27F7DC498);
    }

    v6 = &qword_27F7DC480;
    v7 = byte_27F7DC497;
    if (byte_27F7DC497 < 0)
    {
      v7 = unk_27F7DC488;
      v6 = qword_27F7DC480;
    }

    v9[0] = v6;
    v9[1] = v7;
    v9[2] = "{nullptr}";
    v9[3] = 9;
    sub_255A7F250(v9, &v10, 0, 0, a2);
    v8 = *MEMORY[0x277D85DE8];
  }
}

uint64_t sub_255A7F908@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if (result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_255A7F994(exception, "ane_exclave_service pointer provided (must be null in non-exclavekit builds)");
    __cxa_throw(exception, off_2798073B8, MEMORY[0x277D82610]);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = &unk_2867CE598;
  return result;
}

std::logic_error *sub_255A7F994(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828F8] + 16);
  return result;
}

void *sub_255A7F9C8(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x259C48F90](v14, a1);
  if (v14[0] == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 40);
    v8 = *(v6 + 8);
    v9 = *(v6 + 144);
    if (v9 == -1)
    {
      v10 = (a1 + *(*a1 - 24));
      std::ios_base::getloc(v10);
      v11 = std::locale::use_facet(&v15, MEMORY[0x277D82680]);
      v9 = (v11->__vftable[2].~facet_0)(v11, 32);
      std::locale::~locale(&v15);
      v6 = v10;
      v10[1].__fmtflags_ = v9;
    }

    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!sub_255A7FB74(v7, a2, v12, a2 + a3, v6, v9))
    {
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  MEMORY[0x259C48FA0](v14);
  return a1;
}

void sub_255A7FB0C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  MEMORY[0x259C48FA0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x255A7FAECLL);
}

uint64_t sub_255A7FB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int __c)
{
  v6 = a1;
  if (a1)
  {
    v11 = *(a5 + 24);
    if (v11 <= a4 - a2)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11 - (a4 - a2);
    }

    if (a3 - a2 >= 1 && (*(*a1 + 96))(a1) != a3 - a2)
    {
      return 0;
    }

    if (v12 >= 1)
    {
      if (v12 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_255A7BCA8();
      }

      if (v12 >= 0x17)
      {
        operator new();
      }

      v19 = v12;
      memset(&__b, __c, v12);
      *(&__b + v12) = 0;
      if (v19 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b;
      }

      v14 = (*(*v6 + 96))(v6, p_b, v12);
      if (v19 < 0)
      {
        v15 = v14;
        operator delete(__b);
        if (v15 != v12)
        {
          return 0;
        }
      }

      else if (v14 != v12)
      {
        return 0;
      }
    }

    v16 = a4 - a3;
    if (v16 < 1 || (*(*v6 + 96))(v6, a3, v16) == v16)
    {
      *(a5 + 24) = 0;
      return v6;
    }

    return 0;
  }

  return v6;
}

void sub_255A7FD50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_255A7FD6C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    sub_255A80D40();
  }

  v6[0] = a2;
  v6[1] = "nullptr";
  v6[2] = a2;
  v6[3] = "nullptr";
  v6[4] = "nullptr";
  v3 = *(a2 + 24);
  if (v3 == -1)
  {
    sub_255A7C284();
  }

  __p = v6;
  return (*(&off_2867CE5E0 + v3))(&__p);
}

void sub_255A7FE5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A7FE7C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }
}

void sub_255A7FE90(uint64_t a1, void ***a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2[1];
    v5 = *a2;
    if (v4 == v2)
    {
      a2[1] = v2;
    }

    else
    {
      do
      {
        v6 = *(v4 - 1);
        v4 -= 3;
        if (v6 < 0)
        {
          operator delete(*v4);
        }
      }

      while (v4 != v2);
      v5 = *a2;
      a2[1] = v2;
    }

    operator delete(v5);
  }
}

void *sub_255A7FF3C(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    if (a3 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A80054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_255A80074(&a11);
  *(v11 + 8) = v12;
  sub_255A800D4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255A80074(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_255A800D4(void ****a1)
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
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
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

uint64_t sub_255A80158(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
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

_BYTE *sub_255A801D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255A805D0(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255A802D0(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE5C8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255A803C4(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CE5C8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255A80584(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255A805D0(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255A8076C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255A80790(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255A80B90(a2, v3);
    *(a2 + 8) = result;
  }

  else
  {
    v5 = strlen(*(*a1 + 32));
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    v4[23] = v5;
    if (v5)
    {
      memmove(v4, v3, v5);
    }

    v4[v6] = 0;
    result = v4 + 24;
    *(a2 + 8) = v4 + 24;
    *(a2 + 8) = v4 + 24;
  }

  return result;
}

size_t sub_255A80890(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CE5C8[v3])(&v6, v1);
  }

  *(v1 + 24) = -1;
  result = strlen(v2);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(v1 + 23) = result;
  if (result)
  {
    result = memmove(v1, v2, result);
  }

  *(v1 + v5) = 0;
  *(v1 + 24) = 1;
  return result;
}

void sub_255A80984(uint64_t *a1, uint64_t a2)
{
  v18[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v18 + 7) = *(a2 + 15);
  v4 = *a2;
  v18[0] = *(a2 + 8);
  v3 = v18[0];
  v5 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v13 = v4;
  *v14 = v3;
  *&v14[7] = *(v18 + 7);
  v15 = v5;
  memset(v18, 0, 15);
  v6 = a1[1];
  v7 = strlen(v6);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v17 = v7;
  if (v7)
  {
    memmove(&__p, v6, v7);
    *(&__p + v8) = 0;
    v9 = *(v2 + 24);
    if (v9 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v9 = *(v2 + 24);
  if (v9 != -1)
  {
LABEL_8:
    (off_2867CE5C8[v9])(&v12, v2);
  }

LABEL_9:
  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v13, 2uLL);
  *(v2 + 24) = 2;
  if (v17 < 0)
  {
    operator delete(__p);
    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v15 & 0x80000000) == 0)
  {
LABEL_11:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void sub_255A80B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255A80B90(uint64_t a1, const char *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v6 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v14 = v6;
  v15 = v6;
  v7 = strlen(a2);
  if (v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    operator new();
  }

  v6[23] = v7;
  if (v7)
  {
    memmove(v6, a2, v7);
  }

  v6[v8] = 0;
  v9 = v6 + 24;
  v10 = *(a1 + 8) - *a1;
  v11 = &v6[-v10];
  memcpy(&v14[-v10], *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v15 + 24;
  *(a1 + 16) = 0;
  if (v12)
  {
    operator delete(v12);
  }

  return v9;
}

void sub_255A80D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255A80D98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255C0ED48(va);
  _Unwind_Resume(a1);
}

__n128 sub_255A80DAC(__n128 ***a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = v1[1].n128_u32[2];
  if (v3 != -1)
  {
    (off_2867CE5C8[v3])(&v5, v1);
  }

  v1[1].n128_u32[2] = -1;
  result = *v2;
  v1[1].n128_u64[0] = v2[1].n128_u64[0];
  *v1 = result;
  v2->n128_u64[1] = 0;
  v2[1].n128_u64[0] = 0;
  v2->n128_u64[0] = 0;
  v1[1].n128_u32[2] = 1;
  return result;
}

void sub_255A80E38(uint64_t *a1, uint64_t a2)
{
  v16[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  *(v16 + 7) = *(a2 + 15);
  v3 = *a2;
  v16[0] = *(a2 + 8);
  v4 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v11 = v3;
  *v12 = v16[0];
  *&v12[7] = *(v16 + 7);
  v13 = v4;
  memset(v16, 0, 15);
  v5 = a1[1];
  v6 = *(v5 + 16);
  *__p = *v5;
  v15 = v6;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  v7 = *(v2 + 24);
  if (v7 != -1)
  {
    (off_2867CE5C8[v7])(&v10, v2);
  }

  *(v2 + 24) = -1;
  sub_255A7FF3C(v2, &v11, 2uLL);
  *(v2 + 24) = 2;
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p[0]);
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    operator delete(v11);
    v9 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13 < 0)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = *MEMORY[0x277D85DE8];
}

void sub_255A80F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A80FA0(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (v4 < v5)
  {
    v6 = *v3;
    *(v4 + 16) = *(v3 + 2);
    *v4 = v6;
    *(v3 + 1) = 0;
    *(v3 + 2) = 0;
    *v3 = 0;
    v7 = v4 + 24;
LABEL_3:
    *(a2 + 8) = v7;
    return;
  }

  v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
  v9 = v8 + 1;
  if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_255A7B4E8();
  }

  v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a2) >> 3);
  if (2 * v10 > v9)
  {
    v9 = 2 * v10;
  }

  if (v10 >= 0x555555555555555)
  {
    v11 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (v11 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    sub_255A7B590();
  }

  v12 = 24 * v8;
  v13 = *v3;
  *(v12 + 16) = *(v3 + 2);
  *v12 = v13;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v7 = 24 * v8 + 24;
  v14 = *a2;
  v15 = *(a2 + 8) - *a2;
  v16 = 24 * v8 - v15;
  memcpy((v12 - v15), *a2, v15);
  *a2 = v16;
  *(a2 + 8) = v7;
  *(a2 + 16) = 0;
  if (!v14)
  {
    goto LABEL_3;
  }

  operator delete(v14);
  *(a2 + 8) = v7;
}

void sub_255A810FC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

__n128 sub_255A81108@<Q0>(__n128 *a1@<X1>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  a1->n128_u64[1] = 0;
  a1[1].n128_u64[0] = 0;
  a1->n128_u64[0] = 0;
  return result;
}

void sub_255A81134(uint64_t a1@<X0>, uint64_t a2@<X1>, const std::string::value_type *a3@<X2>, std::string::size_type a4@<X3>, std::string *a5@<X8>)
{
  v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  }

  v12 = (v11 - 1) * a4;
  v13 = a2 - a1;
  if (a2 == a1)
  {
    v14 = 0;
    goto LABEL_26;
  }

  v15 = v13 - 24;
  if ((v13 - 24) < 0x60)
  {
    v14 = 0;
    v16 = a1;
    goto LABEL_23;
  }

  v17 = v15 / 0x18;
  v18 = v15 / 0x18 + 1;
  if (v15 < 0x180)
  {
    v14 = 0;
    v19 = 0;
LABEL_18:
    v79 = v18 & 3;
    if ((v18 & 3) == 0)
    {
      v79 = 4;
    }

    v16 = a1 + 24 * (v18 - v79);
    v80 = 0uLL;
    v81 = v14;
    v82 = ~v17 + v19 + v79;
    v83 = (a1 + 24 * v19 + 47);
    v84.i64[0] = 255;
    v84.i64[1] = 255;
    do
    {
      v85 = (v83 - 39);
      v86 = (v83 + 9);
      v87 = vld3q_f64(v85);
      v88 = vld3q_f64(v86);
      v89.i16[0] = *(v83 - 24);
      v89.i16[1] = *v83;
      v89.i16[2] = v83[24];
      v89.i16[3] = v83[48];
      v90 = vmovl_u16(vcltz_s16(vshr_n_s16(vshl_n_s16(v89, 8uLL), 8uLL)));
      v91.i64[0] = v90.u32[0];
      v91.i64[1] = v90.u32[1];
      v92 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v90.u32[2];
      v91.i64[1] = v90.u32[3];
      v93 = vshrq_n_s64(vshlq_n_s64(v91, 0x38uLL), 0x38uLL);
      v91.i64[0] = v83[24];
      v91.i64[1] = v83[48];
      v94 = vbicq_s8(v91, v93);
      v91.i64[0] = *(v83 - 24);
      v91.i64[1] = *v83;
      v80 = vaddq_s64(vorrq_s8(vandq_s8(v88, v93), vandq_s8(v94, v84)), v80);
      v81 = vaddq_s64(vorrq_s8(vandq_s8(v87, v92), vandq_s8(vbicq_s8(v91, v92), v84)), v81);
      v83 += 96;
      v82 += 4;
    }

    while (v82);
    v14 = vaddvq_s64(vaddq_s64(v81, v80));
    goto LABEL_23;
  }

  v106 = v17 + 1;
  v107 = v15 / 0x18;
  v20 = 0uLL;
  v21 = 0uLL;
  if ((v18 & 0xF) != 0)
  {
    v22 = v18 & 0xF;
  }

  else
  {
    v22 = 16;
  }

  v108 = v22;
  v23 = v18 - v22;
  v24 = (a1 + 191);
  v109 = v18 - v22;
  v25 = 0uLL;
  v26 = 0uLL;
  v27 = 0uLL;
  v28 = 0uLL;
  v29 = 0uLL;
  v30 = 0uLL;
  do
  {
    v31.i8[0] = *(v24 - 168);
    v32.i8[0] = v31.i8[0];
    v32.i8[1] = *(v24 - 144);
    v32.i8[2] = *(v24 - 120);
    v32.i8[3] = *(v24 - 96);
    v32.i8[4] = *(v24 - 72);
    v32.i8[5] = *(v24 - 48);
    v32.i8[6] = *(v24 - 24);
    v32.i8[7] = *v24;
    v33 = (v24 - 183);
    v34 = (v24 - 135);
    v35 = (v24 - 87);
    v36 = (v24 - 39);
    v37 = (v24 + 9);
    v38 = (v24 + 57);
    v39 = vld3q_f64(v33);
    v40 = vld3q_f64(v34);
    v41 = vld3q_f64(v35);
    v42 = vld3q_f64(v36);
    v110 = v42;
    v43 = vld3q_f64(v37);
    v44 = vld3q_f64(v38);
    v32.i8[8] = v24[24];
    v32.i8[9] = v24[48];
    v32.i8[10] = v24[72];
    v32.i8[11] = v24[96];
    v45.i32[0] = v32.i32[2];
    v32.i8[12] = v24[120];
    v32.i8[13] = v24[144];
    v45.i16[2] = v32.i16[6];
    v32.i8[14] = v24[168];
    v45.i8[6] = v32.i8[14];
    v32.i8[15] = v24[192];
    v31.i8[1] = v32.i8[1];
    v31.i8[2] = v32.i8[2];
    v46 = vcltzq_s8(v32);
    v47 = vmovl_high_s8(v46);
    v31.i8[3] = *(v24 - 96);
    v31.i8[4] = *(v24 - 72);
    v48 = vmovl_s8(*v46.i8);
    v49 = vmovl_s16(*v48.i8);
    v31.i8[5] = *(v24 - 48);
    v31.i8[6] = *(v24 - 24);
    v50.i64[0] = v49.i32[0];
    v50.i64[1] = v49.i32[1];
    v51 = v50;
    v31.i8[7] = *v24;
    v52 = vmovl_u8(v31);
    v53 = vmovl_u16(*v52.i8);
    v50.i64[0] = v53.u32[0];
    v50.i64[1] = v53.u32[1];
    v54 = vbslq_s8(v51, v39, v50);
    v55 = vmovl_s16(*v47.i8);
    v45.i8[7] = v24[192];
    v56 = vmovl_u8(v45);
    v57 = vmovl_u16(*v56.i8);
    v50.i64[0] = v55.i32[0];
    v50.i64[1] = v55.i32[1];
    v58 = v50;
    v50.i64[0] = v57.u32[0];
    v50.i64[1] = v57.u32[1];
    v59 = vbslq_s8(v58, v43, v50);
    v60 = vmovl_high_s16(v48);
    v50.i64[0] = v49.i32[2];
    v50.i64[1] = v49.i32[3];
    v61 = v50;
    v50.i64[0] = v53.u32[2];
    v50.i64[1] = v53.u32[3];
    v62 = vbslq_s8(v61, v40, v50);
    v50.i64[0] = v60.i32[0];
    v50.i64[1] = v60.i32[1];
    v63 = v50;
    v64 = (v24 + 105);
    v65 = (v24 + 153);
    v66 = vmovl_high_u16(v52);
    v50.i64[0] = v66.u32[0];
    v50.i64[1] = v66.u32[1];
    v67 = vbslq_s8(v63, v41, v50);
    v68 = vld3q_f64(v64);
    v69 = vld3q_f64(v65);
    v50.i64[0] = v55.i32[2];
    v50.i64[1] = v55.i32[3];
    v70 = v50;
    v50.i64[0] = v57.u32[2];
    v50.i64[1] = v57.u32[3];
    v71 = vbslq_s8(v70, v44, v50);
    v72 = vmovl_high_s16(v47);
    v73 = vmovl_high_u16(v56);
    v50.i64[0] = v72.i32[0];
    v50.i64[1] = v72.i32[1];
    v74 = v50;
    v50.i64[0] = v73.u32[0];
    v50.i64[1] = v73.u32[1];
    v75 = vbslq_s8(v74, v68, v50);
    v50.i64[0] = v60.i32[2];
    v50.i64[1] = v60.i32[3];
    v76 = v50;
    v50.i64[0] = v66.u32[2];
    v50.i64[1] = v66.u32[3];
    v77 = vbslq_s8(v76, v110, v50);
    v50.i64[0] = v72.i32[2];
    v50.i64[1] = v72.i32[3];
    v78 = v50;
    v50.i64[0] = v73.u32[2];
    v50.i64[1] = v73.u32[3];
    v30 = vaddq_s64(vbslq_s8(v78, v69, v50), v30);
    v26 = vaddq_s64(v77, v26);
    v29 = vaddq_s64(v75, v29);
    v28 = vaddq_s64(v71, v28);
    v25 = vaddq_s64(v67, v25);
    v21 = vaddq_s64(v62, v21);
    v27 = vaddq_s64(v59, v27);
    v20 = vaddq_s64(v54, v20);
    v24 += 384;
    v23 -= 16;
  }

  while (v23);
  v14 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v20, v27), vaddq_s64(v25, v29)), vaddq_s64(vaddq_s64(v21, v28), vaddq_s64(v26, v30))));
  if (v108 >= 5)
  {
    v19 = v109;
    v18 = v106;
    v17 = v107;
    goto LABEL_18;
  }

  v16 = a1 + 24 * v109;
  do
  {
LABEL_23:
    v95 = *(v16 + 23);
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(v16 + 8);
    }

    v14 += v95;
    v16 += 24;
  }

  while (v16 != a2);
LABEL_26:
  v96 = v14 + v12;
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  if ((v14 + v12) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v96 >= 0x17)
  {
    v97 = v96 | 7;
    if (v97 == 23)
    {
      v98 = 24;
    }

    else
    {
      v98 = v97;
    }

    sub_255A7F3EC(a5, v98);
  }

  if (v13 >= 1)
  {
    v99 = *(a1 + 23);
    v100 = v99 >= 0 ? a1 : *a1;
    v101 = v99 >= 0 ? *(a1 + 23) : *(a1 + 8);
    std::string::append(a5, v100, v101);
    if (v10 >= 2)
    {
      for (i = a1 + 24; i != a2; i += 24)
      {
        std::string::append(a5, a3, a4);
        v103 = *(i + 23);
        if (v103 >= 0)
        {
          v104 = i;
        }

        else
        {
          v104 = *i;
        }

        if (v103 >= 0)
        {
          v105 = *(i + 23);
        }

        else
        {
          v105 = *(i + 8);
        }

        std::string::append(a5, v104, v105);
      }
    }
  }
}

void sub_255A81634(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A81658(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    (off_2867CE5C8[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void sub_255A816B8()
{
  nullsub_87();

  JUMPOUT(0x259C49320);
}

void *sub_255A816F0(void *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v7 = sub_255BACFF4(a1, a2);
  *v7 = &unk_2867C7E20;
  sub_255A81CB4((v7 + 16), a3);
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  a1[27] = &unk_2867CE598;
  a1[28] = v9;
  a1[29] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void *sub_255A81798(uint64_t a1)
{
  *a1 = &unk_2867C7E20;
  sub_255A7F5A0(a1 + 216);
  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
    if (*(a1 + 152) != 1)
    {
LABEL_5:
      v2 = a1;

      return sub_255BAD038(v2);
    }
  }

  else if (*(a1 + 152) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 128));
  v2 = a1;

  return sub_255BAD038(v2);
}

void *sub_255A81854(uint64_t a1)
{
  *a1 = &unk_2867C7E20;
  sub_255A7F5A0(a1 + 216);
  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
    if (*(a1 + 152) != 1)
    {
LABEL_5:
      v2 = a1;

      return sub_255BAD038(v2);
    }
  }

  else if (*(a1 + 152) != 1)
  {
    goto LABEL_5;
  }

  if ((*(a1 + 151) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(a1 + 128));
  v2 = a1;

  return sub_255BAD038(v2);
}

void sub_255A81910(uint64_t a1)
{
  *a1 = &unk_2867C7E20;
  sub_255A7F5A0(a1 + 216);
  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
    if (*(a1 + 152) != 1)
    {
      goto LABEL_7;
    }
  }

  else if (*(a1 + 152) != 1)
  {
    goto LABEL_7;
  }

  if (*(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

LABEL_7:
  sub_255BAD038(a1);

  JUMPOUT(0x259C49320);
}

void sub_255A819C0(uint64_t a1)
{
  sub_255A81DE0(v8, (a1 + 8));
  sub_255A81CB4(&v7, (a1 + 128));
  v3 = *(a1 + 224);
  v2 = *(a1 + 232);
  v4 = &unk_2867CE598;
  v5 = v3;
  v6 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  sub_255A852D4(v8);
}

void sub_255A81C78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  sub_255A7F5A0(va);
  sub_255B73138(va1);
  sub_255A829E0(va2);
  _Unwind_Resume(a1);
}

void sub_255A81C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_255A829E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255A81CB4(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      v4 = a2;
      sub_255A7E018(a1, *a2, *(a2 + 1));
      a2 = v4;
    }

    else
    {
      v3 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v3;
    }

    *(a1 + 24) = 1;
  }

  v5 = a2[2];
  *(a1 + 48) = 0;
  *(a1 + 32) = v5;
  *(a1 + 72) = 0;
  if (*(a2 + 72) == 1)
  {
    if (*(a2 + 71) < 0)
    {
      v7 = a2;
      sub_255A7E018((a1 + 48), *(a2 + 6), *(a2 + 7));
      a2 = v7;
    }

    else
    {
      v6 = a2[3];
      *(a1 + 64) = *(a2 + 8);
      *(a1 + 48) = v6;
    }

    *(a1 + 72) = 1;
  }

  *(a1 + 80) = *(a2 + 10);
  return a1;
}

void sub_255A81D94(_Unwind_Exception *exception_object)
{
  if (*(v1 + 72) == 1 && *(v1 + 71) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A81DE0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *(a1 + 8) = *(a2 + 2);
  *a1 = v4;
  if (*(a2 + 39) < 0)
  {
    sub_255A7E018((a1 + 16), a2[2], a2[3]);
  }

  else
  {
    v5 = *(a2 + 1);
    *(a1 + 32) = a2[4];
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  sub_255A81F04(a1 + 40, a2[5], a2[6], 0xCF3CF3CF3CF3CF3DLL * ((a2[6] - a2[5]) >> 3));
  sub_255A826BC((a1 + 64), a2 + 8);
  *(a1 + 88) = 0;
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    sub_255A82818((a1 + 88), a2 + 11);
    *(a1 + 112) = 1;
  }

  return a1;
}

void sub_255A81EBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A82960(v3);
  sub_255B72834((v2 + 64));
  sub_255A8250C(va);
  if (*(v2 + 39) < 0)
  {
    operator delete(*(v2 + 16));
  }

  _Unwind_Resume(a1);
}

void sub_255A81F04(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x186186186186187)
    {
      operator new();
    }

    sub_255A7B4E8();
  }
}

void sub_255A82008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, char a11)
{
  sub_255A82358(&a11);
  *(v11 + 8) = v12;
  sub_255A8250C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255A82028(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 24) = 0;
  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_255A7E018(a1, *a2, *(a2 + 1));
    }

    else
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 2);
      *a1 = v4;
    }

    *(a1 + 24) = 1;
  }

  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *(a2 + 20);
  *(a1 + 88) = 0;
  *(a1 + 80) = v8;
  *(a1 + 64) = v7;
  *(a1 + 48) = v6;
  *(a1 + 32) = v5;
  *(a1 + 120) = 0;
  if (*(a2 + 120) == 1)
  {
    v9 = *(a2 + 14);
    if (v9)
    {
      if (v9 == (a2 + 88))
      {
        *(a1 + 112) = a1 + 88;
        (*(**(a2 + 14) + 24))(*(a2 + 14), a1 + 88);
        goto LABEL_12;
      }

      v9 = (*(*v9 + 16))(v9);
    }

    *(a1 + 112) = v9;
LABEL_12:
    *(a1 + 120) = 1;
  }

  *(a1 + 128) = 0;
  *(a1 + 160) = 0;
  if (*(a2 + 160) == 1)
  {
    v10 = *(a2 + 19);
    if (v10)
    {
      if (v10 == a2 + 8)
      {
        *(a1 + 152) = a1 + 128;
        (*(**(a2 + 19) + 24))(*(a2 + 19), a1 + 128);
        goto LABEL_19;
      }

      v10 = (*(*v10 + 16))(v10);
    }

    *(a1 + 152) = v10;
LABEL_19:
    *(a1 + 160) = 1;
  }

  return a1;
}

void sub_255A821D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A82228(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_255A822C0(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = *(result + 24);
    if (v1 == result)
    {
      v2 = result;
      (*(*v1 + 32))(*(result + 24));
    }

    else
    {
      if (!v1)
      {
        return result;
      }

      v2 = result;
      (*(*v1 + 40))(*(result + 24));
    }

    return v2;
  }

  return result;
}

uint64_t sub_255A82358(uint64_t a1)
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
        v4 -= 168;
        sub_255A823C0(v6, v4);
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void sub_255A823C0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 160) == 1)
  {
    v3 = *(a2 + 152);
    if (v3 == a2 + 128)
    {
      (*(*v3 + 32))(v3);
      if (*(a2 + 120) != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_6;
    }

    if (v3)
    {
      (*(*v3 + 40))(v3);
    }
  }

  if (*(a2 + 120) != 1)
  {
    goto LABEL_11;
  }

LABEL_6:
  v4 = *(a2 + 112);
  if (v4 == a2 + 88)
  {
    (*(*v4 + 32))(v4);
    if (*(a2 + 24) != 1)
    {
      return;
    }

    goto LABEL_12;
  }

  if (v4)
  {
    (*(*v4 + 40))(v4);
    if (*(a2 + 24) != 1)
    {
      return;
    }

    goto LABEL_12;
  }

LABEL_11:
  if (*(a2 + 24) != 1)
  {
    return;
  }

LABEL_12:
  if (*(a2 + 23) < 0)
  {
    v5 = *a2;

    operator delete(v5);
  }
}

void sub_255A8250C(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (!v2)
  {
    return;
  }

  v4 = v1[1];
  v5 = **a1;
  if (v4 == v2)
  {
    goto LABEL_20;
  }

  v6 = 0;
  do
  {
    v7 = &v4[v6];
    if (v4[v6 - 8] != 1)
    {
      goto LABEL_9;
    }

    v8 = *(v7 - 2);
    if (v7 - 40 != v8)
    {
      if (v8)
      {
        (*(*v8 + 40))(v8);
      }

LABEL_9:
      if (*(v7 - 48) != 1)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

    (*(*v8 + 32))(v8);
    if (*(v7 - 48) != 1)
    {
      goto LABEL_16;
    }

LABEL_10:
    v9 = *&v4[v6 - 56];
    if (v7 - 80 == v9)
    {
      (*(*v9 + 32))(v9);
    }

    else if (v9)
    {
      (*(*v9 + 40))(v9);
    }

LABEL_16:
    if (v4[v6 - 144] == 1 && v4[v6 - 145] < 0)
    {
      operator delete(*(v7 - 21));
    }

    v6 -= 168;
  }

  while (&v4[v6] != v2);
  v5 = **a1;
LABEL_20:
  v1[1] = v2;

  operator delete(v5);
}

void *sub_255A826BC(void *result, void *a2)
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

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A827E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  if (*(v13 + 24) == 1)
  {
    sub_255C104F8(v13);
  }

  sub_255B5DA94(&a11);
  *(v11 + 8) = v12;
  sub_255B5DA00(&a9);
  _Unwind_Resume(a1);
}

void *sub_255A82818(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v2 - *a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A82940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  sub_255A80074(&a11);
  *(v11 + 8) = v12;
  sub_255A800D4(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_255A82960(uint64_t a1)
{
  if (*(a1 + 24) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(a1 + 8);
      v4 = *a1;
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
        v4 = *a1;
      }

      *(a1 + 8) = v2;
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t sub_255A829E0(uint64_t a1)
{
  if (*(a1 + 112) == 1)
  {
    v2 = *(a1 + 88);
    if (v2)
    {
      v3 = *(a1 + 96);
      v4 = *(a1 + 88);
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
        v4 = *(a1 + 88);
      }

      *(a1 + 96) = v2;
      operator delete(v4);
    }
  }

  v6 = *(a1 + 64);
  if (v6)
  {
    v7 = *(a1 + 72);
    v8 = *(a1 + 64);
    if (v7 != v6)
    {
      do
      {
        v9 = v7;
        v7 -= 4;
        if (*(v9 - 8) == 1 && *(v9 - 9) < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 64);
    }

    *(a1 + 72) = v6;
    operator delete(v8);
  }

  v11 = (a1 + 40);
  sub_255A8250C(&v11);
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

uint64_t sub_255A82AF8(void *a1)
{
  *a1 = &unk_2867C51A8;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  return nullsub_87();
}

void sub_255A82BAC(void *a1)
{
  *a1 = &unk_2867C51A8;
  v1 = a1[3];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = a1;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    a1 = v2;
  }

  nullsub_87(a1);

  JUMPOUT(0x259C49320);
}

void *sub_255A82C58@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[2];
  if (*(v2 + 23) < 0)
  {
    return sub_255A7E018(a2, *v2, *(v2 + 1));
  }

  v3 = *v2;
  *(a2 + 16) = *(v2 + 2);
  *a2 = v3;
  return result;
}

void sub_255A82C84(_BYTE *a1@<X8>)
{
  v7 = &unk_2867C8F90;
  v2 = sub_255C0B598(&v7);
  nullsub_139(&v7);
  if (v2)
  {
    v3 = [MEMORY[0x277CEE960] aneSubType];
    v4 = [v3 UTF8String];
    v5 = strlen(v4);
    if (v5 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_255A7BCA8();
    }

    v6 = v5;
    if (v5 >= 0x17)
    {
      operator new();
    }

    a1[23] = v5;
    if (v5)
    {
      memmove(a1, v4, v5);
    }

    a1[v6] = 0;
    a1[24] = 1;
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void sub_255A82DC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  nullsub_139(va);
  _Unwind_Resume(a1);
}

double sub_255A82DE4@<D0>(uint64_t a1@<X0>, void *a2@<X1>, int *a3@<X2>, int a4@<W3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = 1;
  sub_255BA1000(&v27, 1, 1, 1, 1, 1);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v21 = a2[2];
      if (HIDWORD(v21))
      {
        goto LABEL_25;
      }

      v22 = a2[1];
      if (HIDWORD(v22))
      {
        goto LABEL_25;
      }

      if (HIDWORD(*a2))
      {
        goto LABEL_25;
      }

      sub_255BA1000(&v25, a4, v21, v22, *a2, 1);
      v27 = v25;
      v28 = v26;
      if (HIDWORD(*a2))
      {
        goto LABEL_25;
      }

      v15 = *a3;
      v16 = *a3 * *a2;
      v13 = a3[4];
      v14 = a3[2];
    }

    else
    {
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      if (a1 != 4)
      {
        goto LABEL_24;
      }

      v18 = a2[3];
      if (HIDWORD(v18))
      {
        goto LABEL_25;
      }

      v19 = a2[2];
      if (HIDWORD(v19))
      {
        goto LABEL_25;
      }

      v20 = a2[1];
      if (HIDWORD(v20) || HIDWORD(*a2))
      {
        goto LABEL_25;
      }

      sub_255BA1000(&v25, a4, v18, v19, v20, *a2);
      v27 = v25;
      v28 = v26;
      v13 = a3[6];
      v14 = a3[4];
      v15 = a3[2];
      v16 = *a3;
    }

    v12 = a5;
    goto LABEL_24;
  }

  if (a1 == 1)
  {
    if (!HIDWORD(*a2))
    {
      sub_255BA1000(&v25, a4, *a2, 1, 1, 1);
      v27 = v25;
      v28 = v26;
      if (!HIDWORD(*a2))
      {
        v13 = *a3;
        v14 = *a3 * *a2;
        v12 = a5;
        v15 = v14;
        v16 = v14;
        goto LABEL_24;
      }
    }

    goto LABEL_25;
  }

  v13 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  if (a1 == 2)
  {
    v17 = a2[1];
    if (!HIDWORD(v17) && !HIDWORD(*a2))
    {
      sub_255BA1000(&v25, a4, v17, *a2, 1, 1);
      v27 = v25;
      v28 = v26;
      if (!HIDWORD(*a2))
      {
        v14 = *a3;
        v15 = *a3 * *a2;
        v13 = a3[2];
        v12 = a5;
        v16 = v15;
        goto LABEL_24;
      }
    }

LABEL_25:
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C9030;
    __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
  }

LABEL_24:
  result = *&v27;
  *a6 = v27;
  *(a6 + 16) = v28;
  *(a6 + 20) = v12;
  *(a6 + 24) = v13;
  *(a6 + 28) = v14;
  *(a6 + 32) = v15;
  *(a6 + 36) = v16;
  return result;
}

double sub_255A83074@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = 1;
  sub_255BA1000(&v27, 1, 1, 1, 1, 1);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v21 = a2[2];
      if (!HIDWORD(v21))
      {
        v22 = a2[1];
        if (!HIDWORD(v22) && !HIDWORD(*a2))
        {
          sub_255BA1000(&v25, a4, v21, v22, *a2, 1);
          v27 = v25;
          v28 = v26;
          if (!HIDWORD(*a2))
          {
            v12 = a5 >> 1;
            v13 = a3[4] >> 1;
            v14 = a3[2] >> 1;
            v15 = *a3 >> 1;
            v16 = (*a3 * *a2) >> 1;
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      if (a1 != 4)
      {
        goto LABEL_23;
      }

      v18 = a2[3];
      if (!HIDWORD(v18))
      {
        v19 = a2[2];
        if (!HIDWORD(v19))
        {
          v20 = a2[1];
          if (!HIDWORD(v20) && !HIDWORD(*a2))
          {
            sub_255BA1000(&v25, a4, v18, v19, v20, *a2);
            v27 = v25;
            v28 = v26;
            v12 = a5 >> 1;
            v13 = a3[6] >> 1;
            v14 = a3[4] >> 1;
            v15 = a3[2] >> 1;
            v16 = *a3 >> 1;
            goto LABEL_23;
          }
        }
      }
    }

    goto LABEL_24;
  }

  if (a1 == 1)
  {
    if (!HIDWORD(*a2))
    {
      sub_255BA1000(&v25, a4, *a2, 1, 1, 1);
      v27 = v25;
      v28 = v26;
      if (!HIDWORD(*a2))
      {
        v12 = a5 >> 1;
        v13 = *a3 >> 1;
        v14 = (*a3 * *a2) >> 1;
        v15 = v14;
        v16 = v14;
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  v13 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  if (a1 == 2)
  {
    v17 = a2[1];
    if (!HIDWORD(v17) && !HIDWORD(*a2))
    {
      sub_255BA1000(&v25, a4, v17, *a2, 1, 1);
      v27 = v25;
      v28 = v26;
      if (!HIDWORD(*a2))
      {
        v12 = a5 >> 1;
        v13 = a3[2] >> 1;
        v14 = *a3 >> 1;
        v15 = (*a3 * *a2) >> 1;
        v16 = v15;
        goto LABEL_23;
      }
    }

LABEL_24:
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C9030;
    __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
  }

LABEL_23:
  result = *&v27;
  *a6 = v27;
  *(a6 + 16) = v28;
  *(a6 + 20) = v12;
  *(a6 + 24) = v13;
  *(a6 + 28) = v14;
  *(a6 + 32) = v15;
  *(a6 + 36) = v16;
  return result;
}

double sub_255A8333C@<D0>(uint64_t a1@<X0>, void *a2@<X1>, _DWORD *a3@<X2>, int a4@<W3>, unsigned int a5@<W4>, uint64_t a6@<X8>)
{
  v12 = 1;
  sub_255BA1000(&v27, 1, 1, 1, 1, 1);
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v21 = a2[2];
      if (!HIDWORD(v21))
      {
        v22 = a2[1];
        if (!HIDWORD(v22) && !HIDWORD(*a2))
        {
          sub_255BA1000(&v25, a4, v21, v22, *a2, 1);
          v27 = v25;
          v28 = v26;
          if (!HIDWORD(*a2))
          {
            v12 = a5 >> 2;
            v13 = a3[4] >> 2;
            v14 = a3[2] >> 2;
            v15 = *a3 >> 2;
            v16 = (*a3 * *a2) >> 2;
            goto LABEL_23;
          }
        }
      }
    }

    else
    {
      v13 = 1;
      v14 = 1;
      v15 = 1;
      v16 = 1;
      if (a1 != 4)
      {
        goto LABEL_23;
      }

      v18 = a2[3];
      if (!HIDWORD(v18))
      {
        v19 = a2[2];
        if (!HIDWORD(v19))
        {
          v20 = a2[1];
          if (!HIDWORD(v20) && !HIDWORD(*a2))
          {
            sub_255BA1000(&v25, a4, v18, v19, v20, *a2);
            v27 = v25;
            v28 = v26;
            v12 = a5 >> 2;
            v13 = a3[6] >> 2;
            v14 = a3[4] >> 2;
            v15 = a3[2] >> 2;
            v16 = *a3 >> 2;
            goto LABEL_23;
          }
        }
      }
    }

    goto LABEL_24;
  }

  if (a1 == 1)
  {
    if (!HIDWORD(*a2))
    {
      sub_255BA1000(&v25, a4, *a2, 1, 1, 1);
      v27 = v25;
      v28 = v26;
      if (!HIDWORD(*a2))
      {
        v12 = a5 >> 2;
        v13 = *a3 >> 2;
        v14 = (*a3 * *a2) >> 2;
        v15 = v14;
        v16 = v14;
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

  v13 = 1;
  v14 = 1;
  v15 = 1;
  v16 = 1;
  if (a1 == 2)
  {
    v17 = a2[1];
    if (!HIDWORD(v17) && !HIDWORD(*a2))
    {
      sub_255BA1000(&v25, a4, v17, *a2, 1, 1);
      v27 = v25;
      v28 = v26;
      if (!HIDWORD(*a2))
      {
        v12 = a5 >> 2;
        v13 = a3[2] >> 2;
        v14 = *a3 >> 2;
        v15 = (*a3 * *a2) >> 2;
        v16 = v15;
        goto LABEL_23;
      }
    }

LABEL_24:
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_2867C9030;
    __cxa_throw(exception, &unk_2867CE0C8, std::exception::~exception);
  }

LABEL_23:
  result = *&v27;
  *a6 = v27;
  *(a6 + 16) = v28;
  *(a6 + 20) = v12;
  *(a6 + 24) = v13;
  *(a6 + 28) = v14;
  *(a6 + 32) = v15;
  *(a6 + 36) = v16;
  return result;
}

uint64_t sub_255A83604@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result;
  if (*(result + 152) == 1)
  {
    *a2 = 0;
    *(a2 + 120) = -1;
    v4 = *(result + 144);
    if (v4 == -1)
    {
      return result;
    }

    goto LABEL_25;
  }

  v5 = *result;
  if (*result == 2)
  {
    sub_255A93178(result, &v19);
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    LOBYTE(v14) = 0;
    v17 = 0;
    if (v26)
    {
      v14 = &unk_2867C5710;
      v9 = v24;
      v24 = 0uLL;
      v15 = v9;
      v16[0] = *v25;
      *(v16 + 14) = *&v25[14];
      v17 = 1;
      v18 = 2;
      nullsub_87(v25);
      v7 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
LABEL_17:
        nullsub_87(&v23);
        goto LABEL_21;
      }

LABEL_15:
      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      goto LABEL_17;
    }

    v18 = 2;
  }

  else if (v5 == 1)
  {
    sub_255A92E00(result, &v19);
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    LOBYTE(v14) = 0;
    v17 = 0;
    if (v26)
    {
      v14 = &unk_2867C5710;
      v8 = v24;
      v24 = 0uLL;
      v15 = v8;
      v16[0] = *v25;
      *(v16 + 14) = *&v25[14];
      v17 = 1;
      v18 = 1;
      nullsub_87(v25);
      v7 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v18 = 1;
  }

  else
  {
    if (v5)
    {
      sub_255C10524();
    }

    sub_255A92A8C(result, &v19);
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    LOBYTE(v14) = 0;
    v17 = 0;
    if (v26)
    {
      v14 = &unk_2867C5710;
      v6 = v24;
      v24 = 0uLL;
      v15 = v6;
      v16[0] = *v25;
      *(v16 + 14) = *&v25[14];
      v17 = 1;
      v18 = 0;
      nullsub_87(v25);
      v7 = *(&v24 + 1);
      if (!*(&v24 + 1))
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

    v18 = 0;
  }

LABEL_21:
  result = sub_255A83970(v2 + 24, &v10);
  if (v18 != -1)
  {
    result = (off_2867CE610[v18])(&v19, &v10);
  }

  if ((*(v2 + 152) & 1) == 0)
  {
    sub_255A92214();
  }

  *a2 = 0;
  *(a2 + 120) = -1;
  v4 = *(v2 + 144);
  if (v4 != -1)
  {
LABEL_25:
    *&v10 = a2;
    result = (off_2867CE628[v4])(&v10, v2 + 24);
    *(a2 + 120) = v4;
  }

  return result;
}

uint64_t sub_255A83970(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 128) == 1)
  {
    v3 = *(a1 + 120);
    v4 = *(a2 + 120);
    if (v3 == -1)
    {
      if (v4 == -1)
      {
        return a1;
      }
    }

    else if (v4 == -1)
    {
      (off_2867CE610[v3])(&v7, a1, a2);
      *(a1 + 120) = -1;
      return a1;
    }

    v7 = a1;
    (off_2867CE640[v4])(&v7, a1, a2);
    return a1;
  }

  *a1 = 0;
  *(a1 + 120) = -1;
  v6 = *(a2 + 120);
  if (v6 != -1)
  {
    v7 = a1;
    (off_2867CE658[v6])(&v7, a2);
    *(a1 + 120) = v6;
  }

  *(a1 + 128) = 1;
  return a1;
}

uint64_t sub_255A83A6C(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2 != -1)
  {
    (off_2867CE610[v2])(&v4, a1);
  }

  *(a1 + 120) = -1;
  return a1;
}

void sub_255A83AC8(std::string *a1@<X8>)
{
  v2 = MEMORY[0x259C495D0]();
  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(&__dst.__r_.__value_.__s + 23) = v3;
  if (v3)
  {
    memmove(&__dst, v2, v3);
  }

  __dst.__r_.__value_.__s.__data_[v4] = 0;
  v5 = std::string::insert(&__dst, 0, "Status code: ", 0xDuLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = std::string::append(&v18, ". Last Error: ", 0xEuLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  last_error_message = e5rt_get_last_error_message();
  v10 = strlen(last_error_message);
  if (v10 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    operator new();
  }

  v16 = v10;
  if (v10)
  {
    memmove(__p, last_error_message, v10);
  }

  *(__p + v11) = 0;
  if ((v16 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if ((v16 & 0x80u) == 0)
  {
    v13 = v16;
  }

  else
  {
    v13 = __p[1];
  }

  v14 = std::string::append(&v19, v12, v13);
  *a1 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_21:
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }
  }

  else if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v19.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_27:
    operator delete(__dst.__r_.__value_.__l.__data_);
    return;
  }

LABEL_26:
  operator delete(v18.__r_.__value_.__l.__data_);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_27;
  }
}

void sub_255A83D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a26 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a28);
  if ((a26 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a15);
  _Unwind_Resume(exception_object);
}

__n128 sub_255A83DB0@<Q0>(const char *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>)
{
  v6 = strlen(a1);
  v7 = std::string::insert(a2, 0, a1, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

_BYTE *sub_255A83E10(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_255A83EC8(const void **a1@<X0>, uint64_t a2@<X8>)
{
  v22 = 0;
  if (*(a1 + 23) < 0)
  {
    v4 = *a1;
  }

  if (!e5rt_program_library_create())
  {
    *a2 = v22;
    *(a2 + 8) = 0;
    __p[32] = 0;
    HIBYTE(v24) = 0;
    __p[64] = 0;
    sub_255AA4630(a2 + 16, &__p[32]);
  }

  sub_255A83AC8(&v19);
  v5 = std::string::insert(&v19, 0, "Unable to create program library: ", 0x22uLL);
  v6 = *&v5->__r_.__value_.__l.__data_;
  v21 = v5->__r_.__value_.__r.__words[2];
  *v20 = v6;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  v7 = *(a1 + 23);
  if (v7 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = a1[1];
  }

  if (v8 + 72 > 0x7FFFFFFFFFFFFFF7)
  {
    sub_255A7BCA8();
  }

  if (v8 + 72 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "Error during creation of program library model with bundle expected at '", 72);
  if ((v7 & 0x80u) == 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  memmove(&__p[72], v9, v8);
  __p[v8 + 72] = 0;
  v10 = __p[23];
  if ((__p[23] & 0x8000000000000000) != 0)
  {
    v10 = *&__p[8];
    v11 = (*&__p[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if ((v11 - *&__p[8]) < 3)
    {
      if (0x7FFFFFFFFFFFFFF7 - (*&__p[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&__p[8] + 3 - v11)
      {
        sub_255A7BCA8();
      }

LABEL_19:
      operator new();
    }

    v12 = *__p;
  }

  else
  {
    if ((__p[23] - 20) < 3)
    {
      goto LABEL_19;
    }

    v12 = __p;
  }

  v13 = &v12[v10];
  v13[2] = 32;
  *v13 = 14887;
  v14 = v10 + 3;
  if ((__p[23] & 0x80000000) != 0)
  {
    *&__p[8] = v10 + 3;
  }

  else
  {
    __p[23] = v14 & 0x7F;
  }

  v12[v14] = 0;
  *&__p[32] = *__p;
  *&__p[48] = *&__p[16];
  memset(__p, 0, 24);
  if (v21 >= 0)
  {
    v15 = v20;
  }

  else
  {
    v15 = v20[0];
  }

  if (v21 >= 0)
  {
    v16 = HIBYTE(v21);
  }

  else
  {
    v16 = v20[1];
  }

  v17 = std::string::append(&__p[32], v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v24 = v17->__r_.__value_.__r.__words[2];
  *&__p[64] = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if ((__p[55] & 0x80000000) != 0)
  {
    operator delete(*&__p[32]);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_33;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(*__p);
LABEL_33:
  *a2 = 0;
  *(a2 + 8) = 0;
  __p[32] = 5;
  sub_255AA4630(a2 + 16, &__p[32]);
}

void sub_255A842B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 73) < 0)
  {
    operator delete(*(v35 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_255A84340(uint64_t *a1@<X0>, const std::string::value_type *a2@<X1>, int *a3@<X2>, uint64_t a4@<X8>)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v7 = *a3;
  if (*a3 == 1)
  {
    if (!sub_255BAEADC(0xDu) && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 147, "IsNonBundleSupported(device)", 0x1CuLL, "Hardware not supported", 0x16uLL, sub_255C101E0))
    {
      goto LABEL_49;
    }

    v7 = *a3;
  }

  v35 = 0;
  v36 = 0;
  v9 = v7 == 2 || v7 == 1;
  v10 = v7 == 3 || v9;
  if (a2[24] == 1)
  {
    v41[0] = 0;
    if (e5rt_e5_compiler_config_options_create())
    {
      sub_255A83AC8(&v37);
      v11 = std::string::insert(&v37, 0, "Unable to create compiler config: ", 0x22uLL);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v39.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v39.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      sub_255A84E54(a4, a1, &v39);
    }

    v39.__r_.__value_.__r.__words[0] = &unk_2867CE788;
    v39.__r_.__value_.__l.__size_ = MEMORY[0x277D077E8];
    v39.__r_.__value_.__r.__words[2] = v41;
    v40 = &v39;
    if ((a2[24] & 1) == 0)
    {
      sub_255A92214();
    }

    if (a2[23] < 0)
    {
      v13 = *a2;
    }

    if (e5rt_e5_compiler_config_options_set_cache_bundle_location())
    {
      sub_255A83AC8(&v32);
      v14 = std::string::insert(&v32, 0, "Unable to set config options to cache bundle location : ", 0x38uLL);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      v16 = std::string::append(&v33, " cache location : ", 0x12uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v34.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
      *&v34.__r_.__value_.__l.__data_ = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      v18 = a2[23];
      if (v18 >= 0)
      {
        v19 = a2;
      }

      else
      {
        v19 = *a2;
      }

      if (v18 >= 0)
      {
        v20 = *(a2 + 23);
      }

      else
      {
        v20 = *(a2 + 1);
      }

      v21 = std::string::append(&v34, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      sub_255A84E54(a4, a1, &v37);
    }

    if (e5rt_e5_compiler_create_with_config())
    {
      sub_255A83AC8(&v34);
      v23 = std::string::insert(&v34, 0, "Unable to create compiler with config: ", 0x27uLL);
      v24 = *&v23->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v24;
      v23->__r_.__value_.__l.__size_ = 0;
      v23->__r_.__value_.__r.__words[2] = 0;
      v23->__r_.__value_.__r.__words[0] = 0;
      sub_255A84E54(a4, a1, &v37);
    }

    if (!v40)
    {
      sub_255A93CCC();
    }

    (*(v40->__r_.__value_.__r.__words[0] + 48))(v40);
    if (v40 == &v39)
    {
      (*(v40->__r_.__value_.__r.__words[0] + 32))(v40);
    }

    else if (v40)
    {
      (*(v40->__r_.__value_.__r.__words[0] + 40))();
    }
  }

  else if (e5rt_e5_compiler_create())
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    v37.__r_.__value_.__s.__data_[0] = 7;
    sub_255A83AC8(&v39);
    sub_255AA4630(a4 + 16, &v37);
  }

  if (!sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 189, "compiler", 8uLL, "Compiler must be created before this", 0x24uLL, sub_255C101E0))
  {
    v39.__r_.__value_.__r.__words[0] = &unk_2867CE808;
    v39.__r_.__value_.__l.__size_ = MEMORY[0x277D07840];
    v39.__r_.__value_.__r.__words[2] = &v35;
    v40 = &v39;
    v32.__r_.__value_.__r.__words[0] = 0;
    if (e5rt_e5_compiler_options_create())
    {
      sub_255A83AC8(&v34);
      v25 = std::string::insert(&v34, 0, "Unable to create compiler options: ", 0x23uLL);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      sub_255A84E54(a4, a1, &v37);
    }

    if (v10 && e5rt_e5_compiler_options_set_compute_device_types_mask())
    {
      sub_255A83AC8(&v34);
      v27 = std::string::insert(&v34, 0, "Unable to set compiler options for compute device types mask: ", 0x3EuLL);
      v28 = *&v27->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v28;
      v27->__r_.__value_.__l.__size_ = 0;
      v27->__r_.__value_.__r.__words[2] = 0;
      v27->__r_.__value_.__r.__words[0] = 0;
      sub_255A84E54(a4, a1, &v37);
    }

    v41[0] = "*";
    if (e5rt_e5_compiler_options_set_mil_entry_points())
    {
      sub_255A83AC8(&v34);
      v29 = std::string::insert(&v34, 0, "Unable to set compiler options for mil entry points: ", 0x35uLL);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v37.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v37.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      sub_255A84E54(a4, a1, &v37);
    }

    v37.__r_.__value_.__r.__words[0] = &unk_2867CE888;
    v37.__r_.__value_.__l.__size_ = MEMORY[0x277D07808];
    v37.__r_.__value_.__r.__words[2] = &v32;
    v38 = &v37;
    if (*(a1 + 23) < 0)
    {
      v31 = *a1;
    }

    if (e5rt_e5_compiler_is_new_compile_required())
    {
      sub_255A83AC8(&v33);
      sub_255A83DB0("Unable to check if new compile required: ", &v33, &v34);
      sub_255A84E54(a4, a1, &v34);
    }

    if (e5rt_e5_compiler_compile())
    {
      *a4 = 0;
      *(a4 + 8) = 0;
      v33.__r_.__value_.__s.__data_[0] = 8;
      sub_255A83AC8(&v34);
      sub_255AA4630(a4 + 16, &v33);
    }

    *a4 = v36;
    *(a4 + 8) = 0;
    v33.__r_.__value_.__s.__data_[0] = 0;
    sub_255A83E10(&v34, &unk_255C2500B);
    sub_255AA4630(a4 + 16, &v33);
  }

LABEL_49:
  abort();
}

void sub_255A84C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    sub_255A8508C(&a29);
    sub_255A8508C(v34 - 112);
    _Unwind_Resume(a1);
  }

  sub_255A8508C(&a29);
  sub_255A8508C(v34 - 112);
  _Unwind_Resume(a1);
}

void sub_255A84CE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
    if (a28 < 0)
    {
LABEL_5:
      operator delete(a23);
      if (a21 < 0)
      {
LABEL_8:
        operator delete(a16);
        if ((a15 & 0x80000000) == 0)
        {
LABEL_12:
          sub_255A8508C(v37 - 112);
          _Unwind_Resume(a1);
        }

LABEL_11:
        operator delete(a10);
        sub_255A8508C(v37 - 112);
        _Unwind_Resume(a1);
      }

LABEL_10:
      if ((a15 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else if (a28 < 0)
  {
    goto LABEL_5;
  }

  if (a21 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_10;
}

void sub_255A84D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    sub_255A8508C(v31 - 112);
    _Unwind_Resume(a1);
  }

  sub_255A8508C(v31 - 112);
  _Unwind_Resume(a1);
}

void sub_255A84DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v28 + 32));
  }

  if (a28 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255A84E24(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255A84E54(uint64_t a1, void *a2, uint64_t a3)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 + 73 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v3 + 73 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "Error during creation of program library model with non-bundle format at'", 73);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  memmove(&__p[73], a2, v3);
  __p[v3 + 73] = 0;
  v6 = std::string::append(__p, ". ", 2uLL);
  v7 = *&v6->__r_.__value_.__l.__data_;
  *&__p[48] = *(&v6->__r_.__value_.__l + 2);
  *&__p[32] = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a3 + 23);
  if (v8 >= 0)
  {
    v9 = a3;
  }

  else
  {
    v9 = *a3;
  }

  if (v8 >= 0)
  {
    v10 = *(a3 + 23);
  }

  else
  {
    v10 = *(a3 + 8);
  }

  v11 = std::string::append(&__p[32], v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v14 = v11->__r_.__value_.__r.__words[2];
  *&__p[64] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if ((__p[55] & 0x80000000) != 0)
  {
    operator delete(*&__p[32]);
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_17;
    }
  }

  else if ((__p[23] & 0x80000000) == 0)
  {
    goto LABEL_17;
  }

  operator delete(*__p);
LABEL_17:
  *a1 = 0;
  *(a1 + 8) = 0;
  __p[32] = 5;
  sub_255AA4630(a1 + 16, &__p[32]);
}

void sub_255A85044(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_255A8508C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_255A93CCC();
  }

  (*(*v2 + 48))(v2);
  v3 = *(a1 + 24);
  if (v3 == a1)
  {
    (*(*v3 + 32))(v3);
    return a1;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    return a1;
  }
}

BOOL sub_255A85150(uint64_t *a1)
{
  v1 = *(a1 + 23);
  v3 = *a1;
  v2 = a1[1];
  if (v1 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v1 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = v4 - 1;
  do
  {
    v7 = v5;
    if (!v5)
    {
      break;
    }

    v8 = *(v6 + v5--);
  }

  while (v8 != 46);
  if ((v1 & 0x80000000) == 0)
  {
    v2 = *(a1 + 23);
    v3 = a1;
    if (v7 <= v1)
    {
      goto LABEL_12;
    }

LABEL_33:
    sub_255A93C24();
  }

  if (v2 < v7)
  {
    goto LABEL_33;
  }

LABEL_12:
  v9 = v2 - v7;
  if (v2 - v7 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  v16 = v2 - v7;
  if (v2 == v7)
  {
    *(__dst + v9) = 0;
    v10 = v16;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    memmove(__dst, v3 + v7, v9);
    *(__dst + v9) = 0;
    v10 = v16;
    if ((v16 & 0x80000000) == 0)
    {
LABEL_16:
      if (v10 != 6)
      {
        return 0;
      }

      return LODWORD(__dst[0]) == 1684960610 && WORD2(__dst[0]) == 25964;
    }
  }

  v12 = __dst[1] == 6 && *__dst[0] == 1684960610 && *(__dst[0] + 2) == 25964;
  operator delete(__dst[0]);
  return v12;
}

void sub_255A852D4(uint64_t a1)
{
  v3 = *MEMORY[0x277D85DE8];
  if (*(a1 + 39) < 0)
  {
    sub_255A7E018(v1, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    *v1 = *(a1 + 16);
    v1[2] = *(a1 + 32);
  }

  LODWORD(v2) = 0;
  sub_255AA4C44();
}

void sub_255A86D84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t *a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  v73 = *a14;
  *a14 = 0;
  if (v73)
  {
    (*(*v73 + 8))(v73);
  }

  sub_255A82AF8(&a71);
  if (a30)
  {
    (*(*a30 + 8))(a30);
  }

  sub_255A82AF8((v71 - 208));
  sub_255A89B5C(&a31);
  sub_255A89B5C(&a34);
  sub_255A82AF8((v71 - 176));
  sub_255A8508C(&STACK[0x270]);
  if (a43 < 0)
  {
    operator delete(a38);
  }

  operator delete(a11);
  sub_255A97150(&a45);
  sub_255B9C19C(&a51);
  sub_255A8508C(v71 - 136);
  sub_255A8A960(&a59);
  sub_255B606BC(&a65);
  _Unwind_Resume(a1);
}

void sub_255A87424(void *a1, void *a2, uint64_t a3)
{
  v30 = 5;
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (v3 + 35 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v5 = a2;
  if (v3 + 35 > 0x16)
  {
    operator new();
  }

  qmemcpy(__p, "Error during creation of model at '", 35);
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  memmove(&__p[1].__r_.__value_.__r.__words[1] + 3, a2, v3);
  *(&__p[1].__r_.__value_.__r.__words[1] + v3 + 3) = 0;
  v7 = std::string::append(__p, "', version: ", 0xCuLL);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v25 = v7->__r_.__value_.__r.__words[2];
  *&__p[1].__r_.__value_.__r.__words[1] = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v11 = v5[3];
  v10 = (v5 + 3);
  v9 = v11;
  v12 = v10[23];
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 1);
  }

  v15 = std::string::append(&__p[1].__r_.__value_.__r.__words[1], v13, v14);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  v17 = std::string::append(&v26, ". ", 2uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  v19 = *(a3 + 23);
  if (v19 >= 0)
  {
    v20 = a3;
  }

  else
  {
    v20 = *a3;
  }

  if (v19 >= 0)
  {
    v21 = *(a3 + 23);
  }

  else
  {
    v21 = *(a3 + 8);
  }

  v22 = std::string::append(&v27, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v29 = v22->__r_.__value_.__r.__words[2];
  v28 = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_23:
      if ((SHIBYTE(v25) & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_28;
    }
  }

  else if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v26.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
LABEL_24:
    if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_29:
    operator delete(__p[0].__r_.__value_.__l.__data_);
LABEL_25:
    *a1 = 0;
    sub_255AA4630((a1 + 1), &v30);
  }

LABEL_28:
  operator delete(__p[1].__r_.__value_.__l.__size_);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  goto LABEL_29;
}

void sub_255A87688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  v38 = *v35;
  *v35 = 0;
  if (v38)
  {
    sub_255C1056C(v38);
  }

  if (*(v36 - 73) < 0)
  {
    operator delete(*(v36 - 96));
  }

  _Unwind_Resume(exception_object);
}

void sub_255A87744(void *a1@<X0>, uint64_t a2@<X8>)
{
  v62 = *MEMORY[0x277D85DE8];
  v59.__r_.__value_.__r.__words[0] = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  e5rt_execution_stream_operation_get_num_inputs();
  e5rt_execution_stream_operation_get_num_outputs();
  v3 = 0;
  v5 = a1[5];
  v4 = a1[6];
  if (0xCF3CF3CF3CF3CF3DLL * ((v4 - v5) >> 3))
  {
    v6 = (a1[9] - a1[8]) >> 5;
  }

  else
  {
    v6 = (a1[9] - a1[8]) >> 5;
    if (__p.__r_.__value_.__r.__words[0] == v6)
    {
      if (v4 != v5)
      {
        goto LABEL_9;
      }

      if ((sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 560, "params.inputs.size() >= 1", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0) & 1) == 0)
      {
        v8 = a1[5];
        v7 = a1[6];
        v3 = 0xCF3CF3CF3CF3CF3DLL * ((v7 - v8) >> 3);
        if (v7 != v8)
        {
LABEL_9:
          v9 = 0;
          while (1)
          {
            sub_255BAEDA4(v9, a1, &v60);
            v59 = v60;
            v58 = 0;
            v10 = e5rt_execution_stream_operation_retain_input_port();
            if (v10)
            {
              break;
            }

            v60.__r_.__value_.__r.__words[0] = &off_2867C3FA8;
            v60.__r_.__value_.__l.__size_ = MEMORY[0x277D078D8];
            v60.__r_.__value_.__r.__words[2] = &v58;
            v61 = &v60;
            e5rt_io_port_release();
            if (v61 == &v60)
            {
              (*(v61->__r_.__value_.__r.__words[0] + 32))(v61);
            }

            else if (v61)
            {
              (*(v61->__r_.__value_.__r.__words[0] + 40))(v61);
            }

            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            if (v3 == ++v9)
            {
              goto LABEL_72;
            }
          }

          v57 = 0;
          e5rt_execution_stream_operation_get_num_inputs();
          e5rt_execution_stream_operation_get_input_names();
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v59.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v59.__r_.__value_.__l.__size_;
          }

          if (size + 29 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_255A7BCA8();
          }

          if (size + 29 > 0x16)
          {
            operator new();
          }

          qmemcpy(v53, "Unable to retain input port: ", 29);
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v59;
          }

          else
          {
            v12 = v59.__r_.__value_.__r.__words[0];
          }

          memmove(&v53[29], v12, size);
          v53[size + 29] = 0;
          v13 = v53[23];
          if ((v53[23] & 0x8000000000000000) != 0)
          {
            v13 = *&v53[8];
            v14 = (*&v53[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if ((v14 - *&v53[8]) < 9)
            {
              if (0x7FFFFFFFFFFFFFF7 - (*&v53[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v53[8] + 9 - v14)
              {
                sub_255A7BCA8();
              }

LABEL_29:
              operator new();
            }

            v15 = *v53;
          }

          else
          {
            if ((v53[23] - 14) < 9)
            {
              goto LABEL_29;
            }

            v15 = v53;
          }

          v16 = &v15[v13];
          *v16 = *". Error: ";
          v16[8] = 32;
          v17 = v13 + 9;
          if ((v53[23] & 0x80000000) != 0)
          {
            *&v53[8] = v13 + 9;
          }

          else
          {
            v53[23] = v17 & 0x7F;
          }

          v15[v17] = 0;
          v55 = *v53;
          memset(v53, 0, 24);
          sub_255A8B0BC(&v52, v10 | 0x100000000);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v18 = &v52;
          }

          else
          {
            v18 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v19 = v52.__r_.__value_.__l.__size_;
          }

          v20 = std::string::append(&v55, v18, v19);
          v21 = *&v20->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v21;
          v20->__r_.__value_.__l.__size_ = 0;
          v20->__r_.__value_.__r.__words[2] = 0;
          v20->__r_.__value_.__r.__words[0] = 0;
          v22 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v22 = __p.__r_.__value_.__l.__size_;
            v23 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v23 - __p.__r_.__value_.__l.__size_ < 0x17)
            {
              if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 23 - v23)
              {
                sub_255A7BCA8();
              }

LABEL_47:
              operator new();
            }

            p_p = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0x17)
            {
              goto LABEL_47;
            }

            p_p = &__p;
          }

          qmemcpy(p_p + v22, ". Available ports are: ", 23);
          v25 = v22 + 23;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            __p.__r_.__value_.__l.__size_ = v22 + 23;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = v25 & 0x7F;
          }

          p_p->__r_.__value_.__s.__data_[v25] = 0;
          v60 = __p;
          memset(&__p, 0, sizeof(__p));
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_55:
              if ((v53[23] & 0x80000000) == 0)
              {
                goto LABEL_56;
              }

LABEL_71:
              operator delete(*v53);
LABEL_56:
              sub_255AA7100(0, 0, 0, ", ", 2uLL, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v26 = &__p;
              }

              else
              {
                v26 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v27 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v27 = __p.__r_.__value_.__l.__size_;
              }

              std::string::append(&v60, v26, v27);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p.__r_.__value_.__s.__data_[0] = 3;
              sub_255AA4630(a2, &__p);
            }
          }

          else if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_55;
          }

          operator delete(v55.__r_.__value_.__l.__data_);
          if ((v53[23] & 0x80000000) == 0)
          {
            goto LABEL_56;
          }

          goto LABEL_71;
        }

LABEL_72:
        v29 = a1[8];
        v28 = a1[9];
        if (v28 != v29)
        {
          v30 = v28 - v29;
          if (!v30)
          {
LABEL_140:
            v59.__r_.__value_.__s.__data_[0] = 0;
            *(&v60.__r_.__value_.__s + 23) = 0;
            v60.__r_.__value_.__s.__data_[0] = 0;
            sub_255AA4630(a2, &v59);
          }

LABEL_77:
          v31 = 0;
          v50 = v30 >> 5;
          while (1)
          {
            sub_255BAEFC0(v31, a1, &v60);
            v59 = v60;
            v58 = 0;
            v32 = e5rt_execution_stream_operation_retain_output_port();
            if (v32)
            {
              break;
            }

            v60.__r_.__value_.__r.__words[0] = &off_2867C3FA8;
            v60.__r_.__value_.__l.__size_ = MEMORY[0x277D078D8];
            v60.__r_.__value_.__r.__words[2] = &v58;
            v61 = &v60;
            e5rt_io_port_release();
            if (v61 == &v60)
            {
              (*(v61->__r_.__value_.__r.__words[0] + 32))(v61);
            }

            else if (v61)
            {
              (*(v61->__r_.__value_.__r.__words[0] + 40))();
            }

            if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v59.__r_.__value_.__l.__data_);
            }

            if (v50 == ++v31)
            {
              goto LABEL_140;
            }
          }

          v57 = 0;
          e5rt_execution_stream_operation_get_num_outputs();
          e5rt_execution_stream_operation_get_output_names();
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v33 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v33 = v59.__r_.__value_.__l.__size_;
          }

          if (v33 + 30 > 0x7FFFFFFFFFFFFFF7)
          {
            sub_255A7BCA8();
          }

          if (v33 + 30 > 0x16)
          {
            operator new();
          }

          qmemcpy(v53, "Unable to retain output port: ", sizeof(v53));
          if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v34 = &v59;
          }

          else
          {
            v34 = v59.__r_.__value_.__r.__words[0];
          }

          memmove(v54, v34, v33);
          v54[v33] = 0;
          v35 = v53[23];
          if ((v53[23] & 0x8000000000000000) != 0)
          {
            v35 = *&v53[8];
            v36 = (*&v53[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if ((v36 - *&v53[8]) < 9)
            {
              if (0x7FFFFFFFFFFFFFF7 - (*&v53[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v53[8] + 9 - v36)
              {
                sub_255A7BCA8();
              }

LABEL_97:
              operator new();
            }

            v37 = *v53;
          }

          else
          {
            if ((v53[23] - 14) < 9)
            {
              goto LABEL_97;
            }

            v37 = v53;
          }

          v38 = &v37[v35];
          *v38 = *". Error: ";
          v38[8] = 32;
          v39 = v35 + 9;
          if ((v53[23] & 0x80000000) != 0)
          {
            *&v53[8] = v35 + 9;
          }

          else
          {
            v53[23] = v39 & 0x7F;
          }

          v37[v39] = 0;
          v55 = *v53;
          memset(v53, 0, 24);
          sub_255A8B0BC(&v52, v32 | 0x100000000);
          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v40 = &v52;
          }

          else
          {
            v40 = v52.__r_.__value_.__r.__words[0];
          }

          if ((v52.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v41 = HIBYTE(v52.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v41 = v52.__r_.__value_.__l.__size_;
          }

          v42 = std::string::append(&v55, v40, v41);
          v43 = *&v42->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v43;
          v42->__r_.__value_.__l.__size_ = 0;
          v42->__r_.__value_.__r.__words[2] = 0;
          v42->__r_.__value_.__r.__words[0] = 0;
          v44 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v44 = __p.__r_.__value_.__l.__size_;
            v45 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v45 - __p.__r_.__value_.__l.__size_ < 0x17)
            {
              if (0x7FFFFFFFFFFFFFF7 - (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < __p.__r_.__value_.__l.__size_ + 23 - v45)
              {
                sub_255A7BCA8();
              }

LABEL_115:
              operator new();
            }

            v46 = __p.__r_.__value_.__r.__words[0];
          }

          else
          {
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0x17)
            {
              goto LABEL_115;
            }

            v46 = &__p;
          }

          qmemcpy(v46 + v44, ". Available ports are: ", 23);
          v47 = v44 + 23;
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            __p.__r_.__value_.__l.__size_ = v44 + 23;
          }

          else
          {
            *(&__p.__r_.__value_.__s + 23) = v47 & 0x7F;
          }

          v46->__r_.__value_.__s.__data_[v47] = 0;
          v60 = __p;
          memset(&__p, 0, sizeof(__p));
          if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v52.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_123:
              if ((v53[23] & 0x80000000) == 0)
              {
                goto LABEL_124;
              }

LABEL_139:
              operator delete(*v53);
LABEL_124:
              sub_255AA7100(0, 0, 0, ", ", 2uLL, &__p);
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v48 = &__p;
              }

              else
              {
                v48 = __p.__r_.__value_.__r.__words[0];
              }

              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v49 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v49 = __p.__r_.__value_.__l.__size_;
              }

              std::string::append(&v60, v48, v49);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              __p.__r_.__value_.__s.__data_[0] = 3;
              sub_255AA4630(a2, &__p);
            }
          }

          else if ((SHIBYTE(v55.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_123;
          }

          operator delete(v55.__r_.__value_.__l.__data_);
          if ((v53[23] & 0x80000000) == 0)
          {
            goto LABEL_124;
          }

          goto LABEL_139;
        }

        if ((sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 584, "params.outputs.size() >= 1", 0x1AuLL, &unk_255C2500B, 0, sub_255C101E0) & 1) == 0)
        {
          v30 = a1[9] - a1[8];
          if (!v30)
          {
            goto LABEL_140;
          }

          goto LABEL_77;
        }
      }

      abort();
    }
  }

  v55.__r_.__value_.__r.__words[0] = 0xCF3CF3CF3CF3CF3DLL * ((v4 - v5) >> 3);
  *v53 = v6;
  sub_255A8AD38("Input/output port count mismatch: ", &v59, " != ", &v55, "; ", &__p, " != ", v53);
  v55.__r_.__value_.__s.__data_[0] = 3;
  sub_255AA4630(a2, &v55);
}

void sub_255A886E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (*(v48 - 121) < 0)
  {
    operator delete(*(v48 - 144));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_255A888DC(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (a2 < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void sub_255A889B8(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 64);
  v41 = *(a1 + 72);
  if (v7 == v41)
  {
LABEL_71:
    v62.__r_.__value_.__s.__data_[0] = 0;
    HIBYTE(v43) = 0;
    LOBYTE(__p[0]) = 0;
    sub_255AA4630(a6, &v62);
  }

  v11 = 0;
  while (1)
  {
    v54 = 0;
    if (*(v7 + 23) < 0)
    {
      v12 = *v7;
    }

    e5rt_execution_stream_operation_retain_output_port();
    v58[0] = &off_2867C3FA8;
    v58[1] = MEMORY[0x277D078D8];
    v58[2] = &v54;
    v59 = v58;
    if (a2)
    {
      break;
    }

LABEL_16:
    v19 = *(*a3 + 160 * v11 + 16);
    v47 = e5rt_io_port_bind_buffer_object();
    if (v47)
    {
      v49.__r_.__value_.__s.__data_[0] = 5;
      v44[0] = 0;
      sub_255AA7798();
    }

    if (!a2)
    {
      goto LABEL_61;
    }

    v20 = *a3 + 160 * v11;
    if (*v20 != 2)
    {
      v53.__r_.__value_.__r.__words[0] = 0;
      v25 = *(v20 + 8);
      e5rt_tensor_desc_retain_dtype();
      v62.__r_.__value_.__r.__words[0] = &unk_2867C3D98;
      v62.__r_.__value_.__l.__size_ = MEMORY[0x277D07970];
      v62.__r_.__value_.__r.__words[2] = &v53;
      v63 = &v62;
      v52.__r_.__value_.__r.__words[0] = 0;
      v51.__r_.__value_.__r.__words[0] = 0;
      v26 = *(v20 + 8);
      e5rt_tensor_desc_get_shape();
      v57 = 0;
      e5rt_tensor_desc_dtype_get_num_components();
      v50.__r_.__value_.__r.__words[0] = 0;
      if (v57 != 1 && v57 != 4 && v57 != 2)
      {
        sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1108, &unk_255C2500B, 0, "Number of components not supported yet", 0x26uLL, sub_255C101E0);
LABEL_77:
        abort();
      }

      if (e5rt_tensor_desc_dtype_create() && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1140, "ret == E5RT_ERROR_CODE_OK", 0x19uLL, &unk_255C2500B, 0, sub_255C101E0))
      {
        goto LABEL_77;
      }

      v60.__r_.__value_.__r.__words[0] = &unk_2867C3D98;
      v60.__r_.__value_.__l.__size_ = MEMORY[0x277D07970];
      v60.__r_.__value_.__r.__words[2] = &v50;
      v61 = &v60;
      v49.__r_.__value_.__r.__words[0] = 0;
      if (e5rt_tensor_desc_create())
      {
        if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1147, "ret_tensor == E5RT_ERROR_CODE_OK", 0x20uLL, &unk_255C2500B, 0, sub_255C101E0))
        {
          goto LABEL_77;
        }
      }

      v48[0] = 0;
      v56 = 0;
      v27 = *(v20 + 8);
      e5rt_tensor_desc_get_size();
      e5rt_tensor_desc_get_size();
      if (*v20 == 1)
      {
        if (v52.__r_.__value_.__r.__words[0])
        {
          if (v52.__r_.__value_.__r.__words[0] == 4 && (*(v51.__r_.__value_.__r.__words[0] + 24) & 0x1F) == 0)
          {
            if ((2 * v56) != v48[0])
            {
              goto LABEL_45;
            }
          }

          else
          {
            if (v52.__r_.__value_.__r.__words[0] <= 1)
            {
              v28 = 0;
              v29 = 1;
              goto LABEL_42;
            }

            v28 = v52.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFFELL;
            v30 = (v51.__r_.__value_.__r.__words[0] + 8);
            v31 = v52.__r_.__value_.__r.__words[0] & 0xFFFFFFFFFFFFFFFELL;
            v32 = 1;
            v33 = 1;
            do
            {
              v32 *= *(v30 - 1);
              v33 *= *v30;
              v30 += 2;
              v31 -= 2;
            }

            while (v31);
            v29 = v33 * v32;
            if (v52.__r_.__value_.__r.__words[0] != v28)
            {
LABEL_42:
              v34 = v52.__r_.__value_.__r.__words[0] - v28;
              v35 = (v51.__r_.__value_.__r.__words[0] + 8 * v28);
              do
              {
                v36 = *v35++;
                v29 *= v36;
                --v34;
              }

              while (v34);
            }

            if ((4 * v29) != v48[0])
            {
LABEL_45:
              if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1155, "detail::IsValidShape(input_rank, input_shape, input_tensor_size, output_tensor_size)", 0x54uLL, &unk_255C2500B, 0, sub_255C101E0))
              {
                goto LABEL_77;
              }
            }
          }
        }

        else if (v48[0] != 4)
        {
          goto LABEL_45;
        }
      }

      v55 = 0;
      if (e5rt_buffer_object_alloc() && sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 1172, "mem_ret == E5RT_ERROR_CODE_OK", 0x1DuLL, &unk_255C2500B, 0, sub_255C101E0))
      {
        goto LABEL_77;
      }

      LODWORD(__p[0]) = 2;
      __p[1] = v49.__r_.__value_.__l.__data_;
      v43 = v55;
      LOBYTE(v44[0]) = 0;
      v46 = 0;
      if (!v61)
      {
        sub_255A93CCC();
      }

      (*(v61->__r_.__value_.__r.__words[0] + 48))(v61);
      if (v61 == &v60)
      {
        (*(v61->__r_.__value_.__r.__words[0] + 32))(v61);
      }

      else if (v61)
      {
        (*(v61->__r_.__value_.__r.__words[0] + 40))();
      }

      if (!v63)
      {
        sub_255A93CCC();
      }

      (*(v63->__r_.__value_.__r.__words[0] + 48))(v63);
      if (v63 == &v62)
      {
        (*(v63->__r_.__value_.__r.__words[0] + 32))(v63);
      }

      else if (v63)
      {
        (*(v63->__r_.__value_.__r.__words[0] + 40))();
      }

      goto LABEL_58;
    }

    v21 = *v20;
    v43 = *(v20 + 16);
    *__p = v21;
    LOBYTE(v44[0]) = 0;
    v46 = 0;
    if (*(v20 + 152) == 1)
    {
      v39 = a2;
      v22 = a5;
      v23 = a6;
      v45 = -1;
      v24 = *(v20 + 144);
      if (v24 != -1)
      {
        v62.__r_.__value_.__r.__words[0] = v44;
        (off_2867CE628[v24])(&v62, v20 + 24);
        v45 = v24;
      }

      v46 = 1;
      a6 = v23;
      a5 = v22;
      a2 = v39;
    }

LABEL_58:
    v37 = *a4 + 160 * v11;
    v38 = *__p;
    *(v37 + 16) = v43;
    *v37 = v38;
    sub_255AA44EC(v37 + 24, v44);
    if (v46 == 1 && v45 != -1)
    {
      (off_2867CE610[v45])(&v62, v44);
    }

LABEL_61:
    if (!v59)
    {
      sub_255A93CCC();
    }

    (*(*v59 + 48))(v59);
    if (v59 == v58)
    {
      (*(*v59 + 32))(v59);
    }

    else if (v59)
    {
      (*(*v59 + 40))();
    }

    v7 += 4;
    ++v11;
    if (v7 == v41)
    {
      goto LABEL_71;
    }
  }

  v13 = *a3 + 160 * v11;
  if (*(v13 + 8))
  {
    e5rt_tensor_desc_release();
    if (!*(v13 + 16))
    {
LABEL_11:
      *(v13 + 8) = 0;
      *(v13 + 16) = 0;
      *v13 = 3;
      if (*(v13 + 152) == 1)
      {
        v14 = *(v13 + 144);
        if (v14 != -1)
        {
          (off_2867CE610[v14])(__p, v13 + 24);
        }

        *(v13 + 144) = -1;
        *(v13 + 152) = 0;
      }

      goto LABEL_15;
    }
  }

  else if (!*(v13 + 16))
  {
LABEL_15:
    v15 = *a3 + 160 * v11;
    e5rt_io_port_retain_tensor_desc();
    v56 = 0;
    v16 = *(*a3 + 160 * v11 + 8);
    e5rt_tensor_desc_get_size();
    v17 = *(*a3 + 160 * v11 + 8);
    sub_255A906F0();
    *(*a3 + 160 * v11) = v18;
    LODWORD(v55) = e5rt_buffer_object_alloc();
    if (v55)
    {
      LOBYTE(v47) = 5;
      v44[0] = 0;
      sub_255AA7798();
    }

    goto LABEL_16;
  }

  e5rt_buffer_object_release();
  goto LABEL_11;
}

void sub_255A8966C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_255A7B4D4(a1);
  }

  _Unwind_Resume(a1);
}

void sub_255A89A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_255BAD084(v9);
  sub_255A7A508(&a9);
  MEMORY[0x259C49320](v9, v10);
  _Unwind_Resume(a1);
}

void *sub_255A89A8C(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    if (0xCCCCCCCCCCCCCCCDLL * ((v2 - *a2) >> 5) < 0x19999999999999ALL)
    {
      operator new();
    }

    sub_255A7B4E8();
  }

  return result;
}

void **sub_255A89B5C(void **a1)
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
        if (*(v3 - 8) == 1)
        {
          v5 = *(v3 - 4);
          if (v5 != -1)
          {
            (off_2867CE610[v5])(&v7, v3 - 34);
          }

          *(v3 - 4) = -1;
        }

        v3 -= 40;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_255A89C0C(uint64_t a1)
{
  v2 = *(a1 + 16);
  while (v2)
  {
    v3 = v2;
    v2 = *v2;
    if (*(v3 + 176) == 1)
    {
      v4 = *(v3 + 42);
      if (v4 != -1)
      {
        (off_2867CE610[v4])(&v7, v3 + 6);
      }
    }

    operator delete(v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_255A89CA8(char **lpsrc@<X1>, uint64_t a2@<X0>, uint64_t a3@<X8>)
{
  v5 = **lpsrc;
  v6 = __dynamic_cast(lpsrc, &unk_2867CC4A8, &unk_2867CC418, 0);
  if (!v6)
  {
    goto LABEL_103;
  }

  v7 = v6;
  v8 = *(a2 + 8);
  if (v8)
  {
    v9 = **v8;
    v10 = __dynamic_cast(v8, &unk_2867CC4A8, &unk_2867CC418, 0);
    if (v10)
    {
      v11 = *(v10 + 31);
      if (v11 >= 0)
      {
        v12 = *(v10 + 31);
      }

      else
      {
        v12 = v10[2];
      }

      v13 = *(v7 + 31);
      v14 = v13;
      if ((v13 & 0x80u) != 0)
      {
        v13 = v7[2];
      }

      if (v12 == v13)
      {
        v17 = v10[1];
        v15 = v10 + 1;
        v16 = v17;
        if (v11 < 0)
        {
          v15 = v16;
        }

        if (v14 >= 0)
        {
          v18 = v7 + 1;
        }

        else
        {
          v18 = v7[1];
        }

        if (!memcmp(v15, v18, v12))
        {
          LOBYTE(__p[0]) = 0;
          operator new();
        }
      }

      goto LABEL_16;
    }

LABEL_103:
    __cxa_bad_cast();
  }

LABEL_16:
  sub_255A81DE0(v64, (*(a2 + 192) + 8));
  if (v71 != 1)
  {
    goto LABEL_40;
  }

  v19 = v69;
  v20 = v70;
  if (v69 == v70)
  {
    goto LABEL_40;
  }

  v21 = *(v7 + 31);
  v22 = v21 >= 0 ? *(v7 + 31) : v7[2];
  v23 = v21 >= 0 ? (v7 + 1) : v7[1];
  while (1)
  {
    v24 = *(v19 + 23);
    v25 = v24;
    if (v24 < 0)
    {
      v24 = v19[1];
    }

    if (v24 == v22)
    {
      v26 = v25 >= 0 ? v19 : *v19;
      if (!memcmp(v26, v23, v22))
      {
        break;
      }
    }

    v19 += 3;
    if (v19 == v20)
    {
      goto LABEL_40;
    }
  }

  if (v19 == v20)
  {
LABEL_40:
    LOBYTE(v58) = 3;
    if (*(v7 + 31) >= 0)
    {
      v32 = *(v7 + 31);
    }

    else
    {
      v32 = v7[2];
    }

    if (v32 + 46 <= 0x7FFFFFFFFFFFFFF7)
    {
      if (v32 + 46 > 0x16)
      {
        operator new();
      }

      qmemcpy(&v56[32], "Unable to find the name of the configuration '", 46);
      if (*(v7 + 31) >= 0)
      {
        v33 = v7 + 1;
      }

      else
      {
        v33 = v7[1];
      }

      memmove(&v56[78], v33, v32);
      v56[v32 + 78] = 0;
      v34 = std::string::append(&v56[32], "'.", 2uLL);
      v35 = *&v34->__r_.__value_.__l.__data_;
      v62 = v34->__r_.__value_.__r.__words[2];
      *__p = v35;
      v34->__r_.__value_.__l.__size_ = 0;
      v34->__r_.__value_.__r.__words[2] = 0;
      v34->__r_.__value_.__r.__words[0] = 0;
      sub_255AA4630(a3, &v58);
    }

    sub_255A7BCA8();
  }

  v27 = sub_255AA5B30((a2 + 16), (v7 + 1));
  v28 = v27;
  if (!v27)
  {
    sub_255A93C3C("unordered_map::at: key not found");
  }

  if (!v27[5])
  {
    if (sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/ML/src/Private/EspressoV2ModelInstance.mm", 492, "espresso_stream_op != nullptr", 0x1DuLL, &unk_255C2500B, 0, sub_255C101E0))
    {
      abort();
    }

    v29 = v28[5];
  }

  sub_255A87744(v64, __p);
  v30 = __p[1];
  if (!LOBYTE(__p[1]))
  {
    sub_255A8AA20(a2);
    v59 = 0;
    v60 = 0;
    v58 = 0;
    *&v56[32] = &v58;
    v56[40] = 0;
    if (v68 != v67)
    {
      if (((v68 - v67) >> 5) <= 0x199999999999999)
      {
        operator new();
      }

      sub_255A7B4E8();
    }

    *&v56[64] = 0;
    *&v56[72] = 0;
    v57 = 0;
    *&v56[32] = &v56[64];
    v56[40] = 0;
    sub_255A889B8(v64, 1, &v58, &v56[64], v28[5], &v56[32]);
    if (v56[40])
    {
      v54.__r_.__value_.__s.__data_[0] = 5;
      v44 = *&v56[48];
      if (*(*&v56[48] + 23) >= 0)
      {
        v45 = *(*&v56[48] + 23);
      }

      else
      {
        v45 = *(*&v56[48] + 8);
      }

      if (v45 + 53 <= 0x7FFFFFFFFFFFFFF7)
      {
        if (v45 + 53 > 0x16)
        {
          operator new();
        }

        qmemcpy(v56, "Unable to bind output buffers in this configuration: ", 53);
        if (v44[23] >= 0)
        {
          v50 = v44;
        }

        else
        {
          v50 = *v44;
        }

        memmove(&v56[53], v50, v45);
        v56[v45 + 53] = 0;
        sub_255AA4630(a3, &v54);
      }

      sub_255A7BCA8();
    }

    v46 = v28[5];
    if (e5rt_execution_stream_operation_prepare_op_for_encode())
    {
      v55 = 6;
      last_error_message = e5rt_get_last_error_message();
      v48 = strlen(last_error_message);
      if (v48 <= 0x7FFFFFFFFFFFFFF7)
      {
        v49 = v48;
        if (v48 < 0x17)
        {
          *(&v54.__r_.__value_.__s + 23) = v48;
          if (v48)
          {
            memmove(&v54, last_error_message, v48);
          }

          v54.__r_.__value_.__s.__data_[v49] = 0;
          v51 = std::string::insert(&v54, 0, " Unable to load this espresso function for execution: ", 0x36uLL);
          v52 = *&v51->__r_.__value_.__l.__data_;
          *&v56[16] = *(&v51->__r_.__value_.__l + 2);
          *v56 = v52;
          v51->__r_.__value_.__l.__size_ = 0;
          v51->__r_.__value_.__r.__words[2] = 0;
          v51->__r_.__value_.__r.__words[0] = 0;
          sub_255AA4630(a3, &v55);
        }

        operator new();
      }

      sub_255A7BCA8();
    }

    if ((a2 + 104) != &v58)
    {
      sub_255A949F8((a2 + 104), v58, v59, 0xCCCCCCCCCCCCCCCDLL * ((v59 - v58) >> 5));
    }

    if ((a2 + 128) != &v56[64])
    {
      sub_255A949F8((a2 + 128), *&v56[64], *&v56[72], 0xCCCCCCCCCCCCCCCDLL * ((*&v56[72] - *&v56[64]) >> 5));
    }

    operator new();
  }

  *a3 = &unk_2867C51A8;
  *(a3 + 8) = v30;
  v31 = v63;
  *(a3 + 16) = v62;
  *(a3 + 24) = v31;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __p[0] = &unk_2867C51A8;
  v53 = v63;
  if (v63 && !atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

  nullsub_87(__p);
  if (v71 == 1)
  {
    v36 = v69;
    if (v69)
    {
      v37 = v70;
      v38 = v69;
      if (v70 != v69)
      {
        do
        {
          v39 = *(v37 - 1);
          v37 -= 3;
          if (v39 < 0)
          {
            operator delete(*v37);
          }
        }

        while (v37 != v36);
        v38 = v69;
      }

      v70 = v36;
      operator delete(v38);
    }
  }

  v40 = v67;
  if (v67)
  {
    v41 = v68;
    v42 = v67;
    if (v68 != v67)
    {
      do
      {
        v43 = v41;
        v41 -= 4;
        if (*(v43 - 8) == 1 && *(v43 - 9) < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v67;
    }

    v68 = v40;
    operator delete(v42);
  }

  __p[0] = &v66;
  sub_255A8250C(__p);
  if (v65 < 0)
  {
    operator delete(v64[2]);
  }
}

void sub_255A8A81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  v51 = nullsub_87(v49);
  MEMORY[0x259C49320](v51, 0x1093C402D7449D9);
  sub_255A82AF8(&a23);
  sub_255A89B5C(&a30);
  sub_255A89B5C(&a33);
  sub_255A82AF8(&a36);
  sub_255A829E0(&a44);
  _Unwind_Resume(a1);
}

uint64_t sub_255A8A960(uint64_t a1)
{
  v2 = a1 + 16;
  *(a1 + 16) = &unk_2867C51A8;
  v3 = *(a1 + 40);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v5 = v2;
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    nullsub_87(v5);
    return a1;
  }

  else
  {
    nullsub_87(v2);
    return a1;
  }
}

void sub_255A8AA20(uint64_t a1)
{
  for (i = *(a1 + 80); i; i = *i)
  {
    if (i[4])
    {
      e5rt_tensor_desc_release();
    }

    if (i[5])
    {
      e5rt_buffer_object_release();
    }

    i[4] = 0;
    i[5] = 0;
    *(i + 6) = 3;
    if (*(i + 176) == 1)
    {
      v3 = *(i + 42);
      if (v3 != -1)
      {
        (off_2867CE610[v3])(&v22, i + 6);
      }

      *(i + 42) = -1;
      *(i + 176) = 0;
    }
  }

  if (*(a1 + 88))
  {
    v4 = *(a1 + 80);
    while (v4)
    {
      v5 = v4;
      v4 = *v4;
      if (*(v5 + 176) == 1)
      {
        v6 = *(v5 + 42);
        if (v6 != -1)
        {
          (off_2867CE610[v6])(&v21, v5 + 6);
        }
      }

      operator delete(v5);
    }

    *(a1 + 80) = 0;
    v7 = *(a1 + 72);
    if (v7)
    {
      bzero(*(a1 + 64), 8 * v7);
    }

    *(a1 + 88) = 0;
  }

  for (j = *(a1 + 168); j; j = *j)
  {
    for (k = j[12]; k; k = *k)
    {
      if (k[4])
      {
        e5rt_tensor_desc_release();
      }

      if (k[5])
      {
        e5rt_buffer_object_release();
      }

      k[4] = 0;
      k[5] = 0;
      *(k + 6) = 3;
      if (*(k + 176) == 1)
      {
        v10 = *(k + 42);
        if (v10 != -1)
        {
          (off_2867CE610[v10])(&v23, k + 6);
        }

        *(k + 42) = -1;
        *(k + 176) = 0;
      }
    }
  }

  v11 = *(a1 + 104);
  v12 = *(a1 + 112);
  v13 = *(a1 + 128);
  v14 = *(a1 + 136);
  if (v11 != v12 || v13 != v14)
  {
    v16 = 0;
    do
    {
      if (*(v11 + v16) != 2)
      {
        if (*(v13 + v16 + 8))
        {
          e5rt_tensor_desc_release();
        }

        if (*(v13 + v16 + 16))
        {
          e5rt_buffer_object_release();
        }

        *(v13 + v16 + 8) = 0;
        *(v13 + v16 + 16) = 0;
        v17 = v13 + v16;
        *(v13 + v16) = 3;
        if (*(v13 + v16 + 152) == 1)
        {
          v18 = *(v17 + 144);
          if (v18 != -1)
          {
            (off_2867CE610[v18])(&v24, v17 + 24);
          }

          *(v17 + 144) = -1;
          *(v17 + 152) = 0;
        }
      }

      if (*(v11 + v16 + 8))
      {
        e5rt_tensor_desc_release();
      }

      if (*(v11 + v16 + 16))
      {
        e5rt_buffer_object_release();
      }

      *(v11 + v16 + 8) = 0;
      *(v11 + v16 + 16) = 0;
      v19 = v11 + v16;
      *(v11 + v16) = 3;
      if (*(v11 + v16 + 152) == 1)
      {
        v20 = *(v19 + 144);
        if (v20 != -1)
        {
          (off_2867CE610[v20])(&v25, v19 + 24);
        }

        *(v19 + 144) = -1;
        *(v19 + 152) = 0;
      }

      v16 += 160;
    }

    while (v16 + v11 != v12 || v16 + v13 != v14);
  }
}