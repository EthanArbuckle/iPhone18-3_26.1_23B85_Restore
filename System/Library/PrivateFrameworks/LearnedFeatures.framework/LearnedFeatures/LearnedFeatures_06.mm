void sub_255AE11C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF13A8(va);
  _Unwind_Resume(a1);
}

void sub_255AE11D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF16D8(va);
  _Unwind_Resume(a1);
}

void sub_255AE11EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF0088(va);
  _Unwind_Resume(a1);
}

void sub_255AE1200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEF3C8(va);
  _Unwind_Resume(a1);
}

void sub_255AE1214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEFA28(va);
  _Unwind_Resume(a1);
}

void sub_255AE1228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF1078(va);
  _Unwind_Resume(a1);
}

void sub_255AE123C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF03B8(va);
  _Unwind_Resume(a1);
}

void sub_255AE1250(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEF6F8(va);
  _Unwind_Resume(a1);
}

void sub_255AE1264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF0D48(va);
  _Unwind_Resume(a1);
}

void sub_255AE1278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF0A18(va);
  _Unwind_Resume(a1);
}

void sub_255AE128C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEFD58(va);
  _Unwind_Resume(a1);
}

void sub_255AE12A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF06E8(va);
  _Unwind_Resume(a1);
}

void sub_255AE12B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AF1A08(va);
  _Unwind_Resume(a1);
}

void sub_255AE12C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEF098(va);
  _Unwind_Resume(a1);
}

void sub_255AE12DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    if ((v18 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v18)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v19);
  goto LABEL_6;
}

void sub_255AE1314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255AE1328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEF098(va);
  _Unwind_Resume(a1);
}

void sub_255AE133C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_255AEFD58(va);
  _Unwind_Resume(a1);
}

void sub_255AE1350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AE14E4(uint64_t a1)
{
  *a1 = &unk_2867C8360;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_255AE1570(uint64_t a1)
{
  *a1 = &unk_2867C8120;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_255AE15FC(uint64_t a1)
{
  *a1 = &unk_2867C86C0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_255AE1688(uint64_t a1)
{
  *a1 = &unk_2867C8510;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40A1F8E8FFLL);
}

uint64_t sub_255AE1714(uint64_t a1)
{
  *a1 = &unk_2867C82D0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE17A0(uint64_t a1)
{
  *a1 = &unk_2867C8630;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE182C(uint64_t a1)
{
  *a1 = &unk_2867C8480;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE18B8(uint64_t a1)
{
  *a1 = &unk_2867C8240;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE1944(uint64_t a1)
{
  *a1 = &unk_2867C8090;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE19D0(uint64_t a1)
{
  *a1 = &unk_2867C81B0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE1A5C(uint64_t a1)
{
  *a1 = &unk_2867C85A0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE1AE8(uint64_t a1)
{
  *a1 = &unk_2867C83F0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE1B74(uint64_t a1)
{
  *a1 = &unk_2867C81B0;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

uint64_t sub_255AE1C00(uint64_t a1)
{
  *a1 = &unk_2867C8000;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_2867CF0E0[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x259C49320](a1, 0x10A3C40ED729E16);
}

void sub_255AE1C8C(uint64_t a1, void *a2)
{
  *a2 = &unk_2867C8750;
  v2 = a2[2];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_255AE1D34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

__n128 sub_255AE1D44(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  *v2 = &unk_2867C8750;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return result;
}

__n128 sub_255AE1D74(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_2867C7FE0;
  return result;
}

__n128 sub_255AE1DA4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  result = *(a2 + 8);
  *(v2 + 8) = result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *v2 = &unk_2867C7FC0;
  return result;
}

__n128 sub_255AE1DD4(__n128 **a1, __n128 *a2)
{
  result = *a2;
  **a1 = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  return result;
}

void sub_255AE1DE8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4)
  {
    v7 = a3;
    (off_2867CF0E0[v4])(&v8, v3);
    a3 = v7;
LABEL_7:
    *v3 = &unk_2867C8750;
    *(v3 + 8) = *(a3 + 8);
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(v3 + 24) = 0;
    return;
  }

  v5 = *(a3 + 8);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  v6 = *(a2 + 16);
  *(a2 + 8) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

__n128 sub_255AE1EF0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 1)
  {
    v6 = a3;
    (off_2867CF0E0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_2867C7FE0;
    *(v3 + 24) = 1;
    return result;
  }

  sub_255B01774(a2, a3);
  return result;
}

__n128 sub_255AE1FA8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  if (v4 == -1)
  {
    goto LABEL_7;
  }

  if (v4 != 2)
  {
    v6 = a3;
    (off_2867CF0E0[v4])(&v7, v3);
    a3 = v6;
LABEL_7:
    result = *(a3 + 8);
    *(v3 + 8) = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *v3 = &unk_2867C7FC0;
    *(v3 + 24) = 2;
    return result;
  }

  sub_255B019C0(a2, a3);
  return result;
}

__n128 sub_255AE2060(__n128 **a1, __n128 *a2, __n128 *a3)
{
  v3 = *a1;
  v4 = (*a1)[1].n128_i32[2];
  if (v4 == -1)
  {
    goto LABEL_8;
  }

  if (v4 != 3)
  {
    v7 = a3;
    (off_2867CF0E0[v4])(&v8, v3);
    a3 = v7;
LABEL_8:
    result = *a3;
    *v3 = *a3;
    a3->n128_u64[0] = 0;
    a3->n128_u64[1] = 0;
    v3[1].n128_u32[2] = 3;
    return result;
  }

  result = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  v6 = a2->n128_u64[1];
  *a2 = result;
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }

  return result;
}

void sub_255AE2108(uint64_t a1, int a2)
{
  v2 = *MEMORY[0x277D85DE8];
  switch(a2)
  {
    case 1:
      operator new();
    case 2:
      operator new();
    case 3:
      operator new();
    case 4:
      operator new();
    case 5:
      operator new();
    case 7:
      operator new();
    case 8:
      operator new();
    case 21:
      operator new();
    case 22:
      operator new();
    case 25:
      operator new();
    case 31:
      operator new();
    case 32:
      operator new();
    case 37:
      operator new();
    case 38:
      operator new();
    default:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/Image/include/Kit/Image/FormatAlgorithm.h", 523, &unk_255C2500B, 0, "Runtime format not in given Formats list", 0x28uLL, sub_255C101E0);
      abort();
  }
}

void sub_255AE8E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AE93F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_255A7A508(va2);
  sub_255AEC594(va3);
  sub_255ADD2D0(va);
  sub_255ADD2D0(va1);
  _Unwind_Resume(a1);
}

void sub_255AE941C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  v7 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  va_copy(va3, va2);
  v9 = va_arg(va3, void);
  v11 = va_arg(va3, void);
  sub_255A7A508(va2);
  sub_255AEBA6C(va3);
  sub_255AD9B58(va);
  sub_255AD9B58(va1);
  _Unwind_Resume(a1);
}

void sub_255AE9448(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_255A7A508(v2 + 8);
  sub_255A7A508(va2);
  sub_255ADD2D0(va);
  sub_255ADD2D0(va1);
  _Unwind_Resume(a1);
}

void sub_255AE9474(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  sub_255A7A508(v2 + 8);
  sub_255A7A508(va2);
  sub_255AD9B58(va);
  sub_255AD9B58(va1);
  _Unwind_Resume(a1);
}

void sub_255AE94A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_255ADD2D0(va);
  sub_255ADD2D0(va1);
  _Unwind_Resume(a1);
}

void sub_255AE94BC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_255AD9B58(va);
  sub_255AD9B58(va1);
  _Unwind_Resume(a1);
}

void sub_255AE9508(_Unwind_Exception *a1)
{
  sub_255ABBCA4(v3);
  MEMORY[0x259C49320](v2, v1);
  _Unwind_Resume(a1);
}

void *sub_255AE95D0(void *result)
{
  *result = &unk_2867C7D40;
  v1 = result[2];
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

void sub_255AE9664(void *a1)
{
  *a1 = &unk_2867C7D40;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AE9738(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AE97CC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AE9804(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8360;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
  }

  return result;
}

uint64_t sub_255AE9894(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE1EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AE98F4(void *result)
{
  *result = &unk_2867C7D40;
  v1 = result[2];
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

void *sub_255AE9988(void *result)
{
  *result = &unk_2867C7AC0;
  v1 = result[2];
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

void sub_255AE9A1C(void *a1)
{
  *a1 = &unk_2867C7AC0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AE9AF0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AE9B84(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AE9BBC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8120;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
  }

  return result;
}

uint64_t sub_255AE9C4C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE2EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AE9CAC(void *result)
{
  *result = &unk_2867C7AC0;
  v1 = result[2];
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

void *sub_255AE9D40(void *result)
{
  *result = &unk_2867C7800;
  v1 = result[2];
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

void sub_255AE9DD4(void *a1)
{
  *a1 = &unk_2867C7800;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AE9EA8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AE9F3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AE9F74(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C86C0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
  }

  return result;
}

uint64_t sub_255AEA004(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE3EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEA064(void *result)
{
  *result = &unk_2867C7800;
  v1 = result[2];
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

void *sub_255AEA0F8(void *result)
{
  *result = &unk_2867C7780;
  v1 = result[2];
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

void sub_255AEA18C(void *a1)
{
  *a1 = &unk_2867C7780;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEA260(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEA2F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEA32C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8510;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40A1F8E8FFLL);
  }

  return result;
}

uint64_t sub_255AEA3BC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE4EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEA41C(void *result)
{
  *result = &unk_2867C7780;
  v1 = result[2];
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

void *sub_255AEA4B0(void *result)
{
  *result = &unk_2867C7700;
  v1 = result[2];
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

void sub_255AEA544(void *a1)
{
  *a1 = &unk_2867C7700;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEA618(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEA6AC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEA6E4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C82D0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEA774(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE5EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEA7D4(void *result)
{
  *result = &unk_2867C7700;
  v1 = result[2];
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

void *sub_255AEA868(void *result)
{
  *result = &unk_2867C7680;
  v1 = result[2];
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

void sub_255AEA8FC(void *a1)
{
  *a1 = &unk_2867C7680;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEA9D0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEAA64(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEAA9C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8630;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEAB2C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE7EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEAB8C(void *result)
{
  *result = &unk_2867C7680;
  v1 = result[2];
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

void *sub_255AEAC20(void *result)
{
  *result = &unk_2867C7600;
  v1 = result[2];
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

void sub_255AEACB4(void *a1)
{
  *a1 = &unk_2867C7600;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEAD88(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEAE1C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEAE54(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8480;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEAEE4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE8EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEAF44(void *result)
{
  *result = &unk_2867C7600;
  v1 = result[2];
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

void *sub_255AEAFD8(void *result)
{
  *result = &unk_2867C7C80;
  v1 = result[2];
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

void sub_255AEB06C(void *a1)
{
  *a1 = &unk_2867C7C80;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEB140(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEB1D4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEB20C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8240;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEB29C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE21EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEB2FC(void *result)
{
  *result = &unk_2867C7C80;
  v1 = result[2];
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

void *sub_255AEB390(void *result)
{
  *result = &unk_2867C7C00;
  v1 = result[2];
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

void sub_255AEB424(void *a1)
{
  *a1 = &unk_2867C7C00;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEB4F8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEB58C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEB5C4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8090;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEB654(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE22EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEB6B4(void *result)
{
  *result = &unk_2867C7C00;
  v1 = result[2];
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

void *sub_255AEB748(void *result)
{
  *result = &unk_2867C7B80;
  v1 = result[2];
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

void sub_255AEB7DC(void *a1)
{
  *a1 = &unk_2867C7B80;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEB8B0(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEB944(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEB97C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C81B0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEBA0C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE25EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEBA6C(void *result)
{
  *result = &unk_2867C7B80;
  v1 = result[2];
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

void *sub_255AEBB00(void *result)
{
  *result = &unk_2867C7A40;
  v1 = result[2];
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

void sub_255AEBB94(void *a1)
{
  *a1 = &unk_2867C7A40;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEBC68(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEBCFC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEBD34(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C85A0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEBDC4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE31EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEBE24(void *result)
{
  *result = &unk_2867C7A40;
  v1 = result[2];
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

void *sub_255AEBEB8(void *result)
{
  *result = &unk_2867C79C0;
  v1 = result[2];
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

void sub_255AEBF4C(void *a1)
{
  *a1 = &unk_2867C79C0;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEC020(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEC0B4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEC0EC(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C83F0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEC17C(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE32EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEC1DC(void *result)
{
  *result = &unk_2867C79C0;
  v1 = result[2];
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

void *sub_255AEC270(void *result)
{
  *result = &unk_2867C7900;
  v1 = result[2];
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

void sub_255AEC304(void *a1)
{
  *a1 = &unk_2867C7900;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEC3D8(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEC46C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEC4A4(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C81B0;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEC534(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE37EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEC594(void *result)
{
  *result = &unk_2867C7900;
  v1 = result[2];
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

void *sub_255AEC628(void *result)
{
  *result = &unk_2867C7880;
  v1 = result[2];
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

void sub_255AEC6BC(void *a1)
{
  *a1 = &unk_2867C7880;
  v1 = a1[2];
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEC790(uint64_t a1)
{
  result = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void sub_255AEC824(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEC85C(uint64_t result)
{
  v1 = *(result + 24);
  if (v1)
  {
    *v1 = &unk_2867C8000;
    v2 = *(v1 + 40);
    if (v2 != -1)
    {
      (off_2867CF0E0[v2])(&v3, v1 + 16);
    }

    *(v1 + 40) = -1;
    return MEMORY[0x259C49320](v1, 0x10A3C40ED729E16);
  }

  return result;
}

uint64_t sub_255AEC8EC(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE")
  {
    if (((v2 & "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE" & 0x8000000000000000) != 0) == __OFSUB__(v2, "NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("NSt3__114default_deleteIN4cv3d3kit2cv13CVImageBufferILNS2_3img6FormatE38EEEEE" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *sub_255AEC94C(void *result)
{
  *result = &unk_2867C7880;
  v1 = result[2];
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

uint64_t sub_255AEC9E0(uint64_t result)
{
  if (*(result + 32) == 1)
  {
    v1 = result;
    (**result)();
    return v1;
  }

  else if (*(result + 31) < 0)
  {
    v2 = result;
    operator delete(*(result + 8));
    return v2;
  }

  return result;
}

void sub_255AECC70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_255AECCB4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
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

void sub_255AECDA8(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CF140[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255AECF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AECFC4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255AED204(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

size_t sub_255AED220(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
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

void sub_255AED314(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CF140[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255AED4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AED530(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255AED770(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_255AED79C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v4 = *(a2 + 8);
  if (v4 >= *(a2 + 16))
  {
    result = sub_255AEDB9C(a2, v3);
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

size_t sub_255AED89C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
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

void sub_255AED990(uint64_t *a1, uint64_t a2)
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
    (off_2867CF140[v9])(&v12, v2);
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

void sub_255AEDB50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_255AEDB9C(uint64_t a1, const char *a2)
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

void sub_255AEDD38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255AEDD50(std::exception *a1)
{
  std::exception::~exception(a1);

  JUMPOUT(0x259C49320);
}

void sub_255AEDF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

size_t sub_255AEDFD4(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
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

void sub_255AEE0C8(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CF140[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255AEE28C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AEE2E4(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255AEE524(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255AEE544(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CF140[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255AEE708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AEE760(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255AEE9A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

void sub_255AEE9BC()
{
  v1 = 0;
  v2[0] = v0;
  v2[1] = "Attempting to map pixel buffer of format ";
  v2[2] = v0;
  v2[3] = "Attempting to map pixel buffer of format ";
  v2[4] = "Attempting to map pixel buffer of format ";
  v3 = v2;
  sub_255A9A020(&v3);
  sub_255AECA68();
}

void sub_255AEEADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255AEEAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255AEEB04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

void sub_255AEEB18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A993DC(va);
  _Unwind_Resume(a1);
}

size_t sub_255AEEB2C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*a1)[1];
  v3 = *(v1 + 24);
  if (v3 != -1)
  {
    (off_2867CF140[v3])(&v6, v1);
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

void sub_255AEEC20(uint64_t *a1, uint64_t a2)
{
  v19[2] = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(*a1 + 16);
  *(v19 + 7) = *(a2 + 15);
  v5 = *a2;
  v19[0] = *(a2 + 8);
  v4 = v19[0];
  v6 = *(a2 + 23);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v14 = v5;
  *v15 = v4;
  *&v15[7] = *(v19 + 7);
  v16 = v6;
  memset(v19, 0, 15);
  v7 = *(v2 + 24);
  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_255A7BCA8();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  v18 = v8;
  if (v8)
  {
    memmove(&__p, v7, v8);
    *(&__p + v9) = 0;
    v10 = *(v3 + 24);
    if (v10 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  LOBYTE(__p) = 0;
  v10 = *(v3 + 24);
  if (v10 != -1)
  {
LABEL_8:
    (off_2867CF140[v10])(&v13, v3);
  }

LABEL_9:
  *(v3 + 24) = -1;
  sub_255A7FF3C(v3, &v14, 2uLL);
  *(v3 + 24) = 2;
  if (v18 < 0)
  {
    operator delete(__p);
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((v16 & 0x80000000) == 0)
  {
LABEL_11:
    v11 = *MEMORY[0x277D85DE8];
    return;
  }

  operator delete(v14);
  v12 = *MEMORY[0x277D85DE8];
}

void sub_255AEEDE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_255A7B4D4(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_255AEEE3C(uint64_t a1, uint64_t a2)
{
  v3 = *(*a1 + 32);
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v5 >= v4)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * (&v5[-*a2] >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_255A7B4E8();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a2) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_255A7B590();
    }

    v13 = (8 * (&v5[-*a2] >> 3));
    v19 = v13;
    v20 = v13;
    v14 = strlen(v3);
    if (v14 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v15 = v14;
    if (v14 >= 0x17)
    {
      operator new();
    }

    v13[23] = v14;
    if (v14)
    {
      memmove(v13, v3, v14);
    }

    v13[v15] = 0;
    v12 = v13 + 24;
    v16 = *(a2 + 8) - *a2;
    v17 = &v19[-v16];
    memcpy(&v19[-v16], *a2, v16);
    v18 = *a2;
    *a2 = v17;
    *(a2 + 8) = v20 + 24;
    *(a2 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = strlen(*(*a1 + 32));
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_255A7BCA8();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v5[23] = v6;
    if (v6)
    {
      memmove(v5, v3, v6);
    }

    v5[v7] = 0;
    v12 = v5 + 24;
    *(a2 + 8) = v5 + 24;
  }

  *(a2 + 8) = v12;
}

void sub_255AEF07C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_255A80158(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AEF098(uint64_t result)
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

void sub_255AEF110(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEF1C8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AEF26C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 1;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AEF3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AEF3C8(uint64_t result)
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

void sub_255AEF440(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEF4F8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AEF59C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 2;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AEF6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AEF6F8(uint64_t result)
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

void sub_255AEF770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEF828(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AEF8CC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 3;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AEFA14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AEFA28(uint64_t result)
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

void sub_255AEFAA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEFB58(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AEFBFC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 2, a1 + 40, 2, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 48);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 4;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AEFD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AEFD58(uint64_t result)
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

void sub_255AEFDD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AEFE88(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AEFF2C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 5;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF0074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF0088(uint64_t result)
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

void sub_255AF0100(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF01B8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF025C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 7;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF03A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF03B8(uint64_t result)
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

void sub_255AF0430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF04E8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF058C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 8;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF06D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF06E8(uint64_t result)
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

void sub_255AF0760(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF0818(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF08BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 21;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF0A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF0A18(uint64_t result)
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

void sub_255AF0A90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF0B48(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF0BEC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 22;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF0D34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF0D48(uint64_t result)
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

void sub_255AF0DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF0E78(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF0F1C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 25;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF1064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF1078(uint64_t result)
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

void sub_255AF10F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF11A8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF124C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 31;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF1394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF13A8(uint64_t result)
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

void sub_255AF1420(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF14D8(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF157C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 4);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 32;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF16C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF16D8(uint64_t result)
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

void sub_255AF1750(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF1808(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF18AC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 1);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 37;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF19F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF1A08(uint64_t result)
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

void sub_255AF1A80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C49320);
}

uint64_t sub_255AF1B38(uint64_t a1)
{
  result = *(a1 + 8);
  if (result)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void sub_255AF1BDC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  v11 = v5;
  v12 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_255BF8FC8(&v9, a1 + 32, 3, a1 + 44, 3, 2);
  v6 = *(a1 + 24);
  v7 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v9;
  *(a2 + 24) = v10;
  *(a2 + 32) = v6;
  *(a2 + 40) = 38;
  *(a2 + 44) = v7;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v8 = v12;
  if (v12)
  {
    if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_255AF1D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

uint64_t sub_255AF1D38(int a1)
{
  result = 1;
  if (a1 <= 1278226487)
  {
    if (a1 > 875704421)
    {
      if (a1 > 875836533)
      {
        if (a1 != 875836534)
        {
          if (a1 == 1094862674)
          {
            return result;
          }

          v3 = 1111970369;
          goto LABEL_37;
        }
      }

      else if (a1 != 875704422 && a1 != 875704438 && a1 != 875836518)
      {
        goto LABEL_39;
      }

      return 2;
    }

    if (a1 > 843264055)
    {
      v4 = -843264056;
LABEL_26:
      v5 = a1 + v4;
      if (v5 > 0x30 || ((1 << v5) & 0x1400000000001) == 0)
      {
        goto LABEL_39;
      }

      return result;
    }

    if (a1 != 24 && a1 != 32)
    {
      v3 = 842285639;
      goto LABEL_37;
    }
  }

  else
  {
    if (a1 <= 1647392358)
    {
      if (a1 > 1278226741)
      {
        if (a1 > 1380410944)
        {
          if (a1 == 1380410945)
          {
            return result;
          }

          v3 = 1380411457;
        }

        else
        {
          if (a1 == 1278226742)
          {
            return result;
          }

          v3 = 1380401729;
        }

        goto LABEL_37;
      }

      v4 = -1278226488;
      goto LABEL_26;
    }

    if (a1 > 1717855599)
    {
      if (a1 > 1751410031)
      {
        if (a1 == 1751410032)
        {
          return result;
        }

        v3 = 1751411059;
      }

      else
      {
        if (a1 == 1717855600)
        {
          return result;
        }

        v3 = 1717856627;
      }

LABEL_37:
      if (a1 == v3)
      {
        return result;
      }

LABEL_39:
      sub_255C0F7E8("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Kit/PixelFormat/include/Kit/PixelFormat/Properties.h", 396, &unk_255C2500B, 0, "not yet implemented", 0x13uLL, sub_255C101E0);
      abort();
    }

    if (a1 != 1647392359 && a1 != 1647589490)
    {
      v3 = 1647719521;
      goto LABEL_37;
    }
  }

  return result;
}

uint64_t sub_255AF1F80(uint64_t a1, uint64_t a2, _DWORD *a3, unsigned int *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2867C5250;
  v6 = *a3 == 0;
  if (!a3[1])
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = *a4 << 32;
  }

  v9 = v8 | (2 * (*a3 != 0));
  v10 = *a3;
  if (!v7)
  {
    v10 = 0;
  }

  LODWORD(v19) = 2;
  HIDWORD(v19) = v10;
  v11 = v10;
  v12 = v19;
  v13 = HIDWORD(v10);
  LODWORD(v20) = 1;
  HIDWORD(v20) = v8 | (2 * (*a3 != 0));
  v14 = HIDWORD(v8);
  if (HIDWORD(v10) * HIDWORD(v8) == -1)
  {
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v15 = qword_27F7DD608, v16 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_16:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        goto LABEL_17;
      }
    }

    else
    {
      v15 = qword_27F7DD608;
      v16 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_18;
      }
    }

    do
    {
      (*v15)(*(v15 + 8), "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
      v15 += 16;
    }

    while (v15 != v16);
    if (byte_27F7DD630)
    {
      goto LABEL_16;
    }

LABEL_18:
    abort();
  }

LABEL_17:
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = a2;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13;
  *(a1 + 44) = v20;
  *(a1 + 52) = v14;
  *(a1 + 56) = v11;
  *(a1 + 64) = v9;
  *(a1 + 72) = 0;
  v17 = *MEMORY[0x277D85DE8];
  return a1;
}

void sub_255AF21B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void sub_255AF21C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_255A7A508(va);
  _Unwind_Resume(a1);
}

void *sub_255AF21DC(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v9 = *(v1 + 2);
    v10 = *(v1 + 3);
    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return result;
    }

    v12 = result[1];
    v13 = v9 - 1;
    v14 = *v1;
    v15 = v10 - 1;
    if (v15)
    {
      v16 = *(v1 + 5);
      v17 = *v12;
      if (v13)
      {
        for (i = 0; i != v15; ++i)
        {
          v19 = v13;
          v20 = v14;
          do
          {
            *v20 = v17;
            v20 += v2;
            --v19;
          }

          while (v19);
          v17 = *v12;
          *v20 = *v12;
          v14 += v16;
        }

        goto LABEL_20;
      }

      do
      {
        *v14 = v17;
        v14 += v16;
        --v15;
      }

      while (v15);
    }

    if (!v13)
    {
LABEL_21:
      *v14 = *v12;
      return result;
    }

    v17 = *v12;
    do
    {
LABEL_20:
      *v14 = v17;
      v14 += v2;
      --v13;
    }

    while (v13);
    goto LABEL_21;
  }

  v3 = *(v1 + 5);
  v4 = *(v1 + 2);
  v5 = result[1];
  if (v3 == v4)
  {
    v6 = (*(v1 + 3) * v3);
    v7 = *v1;
    v8 = *v5;

    return memset(v7, v8, v6);
  }

  v21 = *(v1 + 3);
  if (v4)
  {
    v22 = v21 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22)
  {
    v23 = *v1;
    v24 = v21 - 1;
    if (v21 != 1)
    {
      do
      {
        memset(v23, *v5, v4);
        v23 += v3;
        --v24;
      }

      while (v24);
    }

    v8 = *v5;
    v7 = v23;
    v6 = v4;

    return memset(v7, v8, v6);
  }

  return result;
}

_DWORD *sub_255AF2374(_DWORD *result, char **a2)
{
  v2 = result[4];
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v17 = result[5];
    v18 = *(a2 + 5);
    v19 = result[2];
    if (v17 == v18 && v17 == v19)
    {
      v28 = (result[3] * v17);
      if (!v28)
      {
        return result;
      }

      v29 = *a2;
      v27 = *result;
      v26 = v29;
    }

    else
    {
      v21 = result[3];
      if (v19)
      {
        v22 = v21 == 0;
      }

      else
      {
        v22 = 1;
      }

      if (v22)
      {
        return result;
      }

      v23 = *result;
      v24 = *a2;
      v25 = v21 - 1;
      if (v21 != 1)
      {
        do
        {
          memmove(v24, v23, v19);
          v23 += v17;
          v24 += v18;
          --v25;
        }

        while (v25);
      }

      v26 = v24;
      v27 = v23;
      v28 = v19;
    }

    return memmove(v26, v27, v28);
  }

  v5 = result[2];
  v6 = result[3];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *result;
    v10 = *a2;
    v11 = v6 - 1;
    if (v11)
    {
      v12 = *(a2 + 5);
      v13 = result[5];
      if (v8)
      {
        for (i = 0; i != v11; ++i)
        {
          v15 = v8;
          v16 = v9;
          result = v10;
          do
          {
            *result = *v16;
            v16 += v2;
            result = (result + v3);
            --v15;
          }

          while (v15);
          *result = *v16;
          v9 += v13;
          v10 += v12;
        }

        goto LABEL_18;
      }

      do
      {
        *v10 = *v9;
        v9 += v13;
        v10 += v12;
        --v11;
      }

      while (v11);
    }

    if (!v8)
    {
LABEL_19:
      *v10 = *v9;
      return result;
    }

    do
    {
LABEL_18:
      *v10 = *v9;
      v9 += v2;
      v10 += v3;
      --v8;
    }

    while (v8);
    goto LABEL_19;
  }

  return result;
}

void *sub_255AF2530(void *result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 24);
  if (v3 != *(*result + 20) * v2)
  {
    v12 = *(v1 + 3);
    v11 = *(v1 + 4);
    if (v2)
    {
      v13 = v12 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v11 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v12 - 1;
    v17 = *v1;
    v18 = v11 - 1;
    if (v11 != 1)
    {
      v19 = *(v1 + 7);
      if (v12 != 1)
      {
        v20 = 0;
        do
        {
          v21 = v16;
          v22 = v17;
          do
          {
            memset(v22, *v15, v2);
            v22 += v3;
            --v21;
          }

          while (v21);
          memset(v22, *v15, v2);
          v17 += v19;
          ++v20;
        }

        while (v20 != v18);
        goto LABEL_20;
      }

      do
      {
        memset(v17, *v15, v2);
        v17 += v19;
        --v18;
      }

      while (v18);
    }

    if (!v16)
    {
LABEL_21:
      v10 = *v15;
      v9 = v17;
      v8 = v2;
      goto LABEL_34;
    }

    do
    {
LABEL_20:
      memset(v17, *v15, v2);
      v17 += v3;
      --v16;
    }

    while (v16);
    goto LABEL_21;
  }

  v4 = *(v1 + 7);
  v5 = *(v1 + 3);
  v6 = result[1];
  v7 = (v5 * v2);
  if (v4 == v5 * v3)
  {
    v8 = (*(v1 + 4) * v7);
    v9 = *v1;
    v10 = *v6;
LABEL_34:

    return memset(v9, v10, v8);
  }

  v23 = *(v1 + 4);
  if (v2)
  {
    v24 = v5 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (!v24 && v23 != 0)
  {
    v26 = *v1;
    v27 = v23 - 1;
    if (v23 != 1)
    {
      do
      {
        memset(v26, *v6, v7);
        v26 += v4;
        --v27;
      }

      while (v27);
    }

    v10 = *v6;
    v9 = v26;
    v8 = v7;
    goto LABEL_34;
  }

  return result;
}

size_t *sub_255AF26F0(size_t *result, uint64_t a2)
{
  v3 = result;
  if (*(result + 5) != 1 || *(a2 + 20) != 1)
  {
    v5 = *(result + 3);
    v6 = *(result + 4);
    if (*(result + 2))
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7 && v6 != 0)
    {
      v9 = v5 - 1;
      v10 = *(result + 6);
      v11 = *(a2 + 24);
      v12 = *result;
      v13 = *a2;
      v14 = v6 - 1;
      if (v14)
      {
        v15 = *(a2 + 28);
        v16 = *(result + 7);
        if (v9)
        {
          v17 = 0;
          v18 = v12 + 1;
          result = (v13 + 1);
          do
          {
            v19 = result;
            v20 = v18;
            v21 = v9;
            do
            {
              *(v19 - 1) = *(v20 - 1);
              *v19 = *v20;
              v20 += v10;
              v19 = (v19 + v11);
              --v21;
            }

            while (v21);
            *(v19 - 1) = *(v20 - 1);
            *v19 = *v20;
            v12 += v16;
            v13 += v15;
            ++v17;
            v18 += v16;
            result = (result + v15);
          }

          while (v17 != v14);
          goto LABEL_21;
        }

        do
        {
          *v13 = *v12;
          v13[1] = v12[1];
          v12 += v16;
          v13 += v15;
          --v14;
        }

        while (v14);
      }

      if (!v9)
      {
LABEL_22:
        *v13 = *v12;
        v13[1] = v12[1];
        return result;
      }

      do
      {
LABEL_21:
        *v13 = *v12;
        v13[1] = v12[1];
        v12 += v10;
        v13 += v11;
        --v9;
      }

      while (v9);
      goto LABEL_22;
    }

    return result;
  }

  v22 = *(result + 6);
  v23 = *(result + 2);
  if (v22 != *(a2 + 24) || v22 != v23)
  {
    v39 = *(result + 2);
    if (v23)
    {
      v25 = *(result + 3) == 0;
    }

    else
    {
      v25 = 1;
    }

    if (!v25 && *(result + 4) != 0)
    {
      return sub_255AF2940(&v39, result, a2);
    }

    return result;
  }

  v27 = *(result + 7);
  v28 = *(a2 + 28);
  v29 = *(result + 3);
  v30 = (v29 * v22);
  if (v27 == v28 && v27 == v30)
  {
    v38 = (*(result + 4) * v27);
    if (!v38)
    {
      return result;
    }

    v36 = *a2;
    v37 = *v3;
    goto LABEL_50;
  }

  if (v22)
  {
    if (v29)
    {
      v32 = *(result + 4);
      if (v32)
      {
        v33 = *result;
        v34 = *a2;
        v35 = v32 - 1;
        if (v32 != 1)
        {
          if (!v30)
          {
            return result;
          }

          do
          {
            result = memmove(v34, v33, v30);
            v33 += v27;
            v34 += v28;
            --v35;
          }

          while (v35);
        }

        if (v30)
        {
          v36 = v34;
          v37 = v33;
          v38 = v30;
LABEL_50:

          return memmove(v36, v37, v38);
        }
      }
    }
  }

  return result;
}

size_t *sub_255AF2940(size_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v30 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v23 = *(a2 + 7);
        v24 = v4 - 2;
LABEL_39:
        result = memmove(v12, v11, v15);
        while (1)
        {
          v11 += v23;
          v12 += v13;
          if (!v24)
          {
            break;
          }

          v15 = *v7;
          --v24;
          if (*v7)
          {
            goto LABEL_39;
          }
        }
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v28 = *(a2 + 7);
        v29 = v13;
        v25 = v3 - 1;
        v26 = *(a2 + 3);
        v16 = 0;
        v27 = v3 - 2;
        v31 = &v11[v9];
        v17 = &v12[v10];
LABEL_14:
        v18 = 0;
        v19 = 0;
        v20 = v27;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v18], &v11[v19], v15);
        }

        while (v20)
        {
          v15 = *v7;
          --v20;
          v19 += v9;
          v18 += v10;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        if (*v7)
        {
          result = memmove(&v17[v18], &v31[v19], *v7);
        }

        while (1)
        {
          v11 += v28;
          v12 += v29;
          if (++v16 == v30)
          {
            break;
          }

          v15 = *v7;
          v31 += v28;
          v17 += v29;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v8 = v25;
        v3 = v26;
      }
    }

    v21 = *v7;
    if (v8)
    {
      if (!v21)
      {
        return result;
      }

      v22 = v3 - 2;
LABEL_28:
      result = memmove(v12, v11, v21);
      while (1)
      {
        v11 += v9;
        v12 += v10;
        if (!v22)
        {
          break;
        }

        v21 = *v7;
        --v22;
        if (*v7)
        {
          goto LABEL_28;
        }
      }

      v21 = *v7;
    }

    if (v21)
    {

      return memmove(v12, v11, v21);
    }
  }

  return result;
}

unint64_t sub_255AF2B3C(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) == 1)
  {
    return sub_255AF2530(result);
  }

  v2 = *(v1 + 12);
  v3 = *(v1 + 16);
  if (*(v1 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = *(result + 8);
    v7 = v2 - 1;
    v8 = *(v1 + 24);
    v9 = *v1;
    v10 = v3 - 1;
    if (v10)
    {
      v11 = *(v1 + 28);
      v12 = *v6;
      if (v7)
      {
        v13 = 0;
        v14 = v9 + 2;
        do
        {
          v15 = v14;
          LODWORD(result) = v7;
          do
          {
            *(v15 - 2) = v12;
            v12 = *v6;
            *(v15 - 1) = *v6;
            *v15 = v12;
            v15 += v8;
            result = (result - 1);
          }

          while (result);
          v16 = *v6;
          *(v15 - 2) = *v6;
          *(v15 - 1) = v16;
          v12 = *v6;
          *v15 = *v6;
          v9 += v11;
          ++v13;
          v14 += v11;
        }

        while (v13 != v10);
        goto LABEL_19;
      }

      do
      {
        *v9 = v12;
        v12 = *v6;
        v9[1] = *v6;
        v9[2] = v12;
        v9 += v11;
        --v10;
      }

      while (v10);
    }

    v12 = *v6;
    if (!v7)
    {
LABEL_21:
      *v9 = v12;
      v17 = *v6;
      v9[1] = v17;
      v9[2] = v17;
      return result;
    }

    do
    {
LABEL_19:
      *v9 = v12;
      v12 = *v6;
      v9[1] = *v6;
      v9[2] = v12;
      v9 += v8;
      --v7;
    }

    while (v7);
    v12 = *v6;
    goto LABEL_21;
  }

  return result;
}

void sub_255AF2C3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v24 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v25 = &v24;
      sub_255AF2DC0(&v25, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v25 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_255AF2940(&v25, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v23 = (*(a1 + 16) * v12);
    if (!v23)
    {
      return;
    }

    v21 = *a2;
    v22 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          do
          {
            memmove(v19, v18, v15);
            v18 += v12;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v21 = v19;
          v22 = v18;
          v23 = v15;
LABEL_40:

          memmove(v21, v22, v23);
        }
      }
    }
  }
}

void sub_255AF2DC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *(a2 + 24);
    v9 = *(a3 + 24);
    v10 = *a2;
    v11 = *a3;
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 2;
        v17 = v10 + 2;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 2) = *(v18 - 2);
            *(v19 - 1) = *(v18 - 1);
            *v19 = *v18;
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

uint64_t sub_255AF2EE8(uint64_t result, uint64_t a2, _DWORD *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  if (a3[1])
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = *a3;
  if (v3)
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  LODWORD(v6) = v5 * v4;
  if (HIDWORD(v4))
  {
    v6 = v6;
  }

  else
  {
    v6 = 0;
  }

  LODWORD(v13) = 1;
  *(&v13 + 4) = v5 | (v6 << 32);
  *result = a2;
  *(result + 8) = __PAIR64__(v4, 3);
  *(result + 16) = HIDWORD(v4);
  *(result + 20) = v13;
  *(result + 28) = v6;
  *(result + 32) = v4;
  *(result + 40) = *(&v13 + 4);
  if (v6 * HIDWORD(v4) == -1)
  {
    v7 = result;
    sub_255C0F8E4("/Library/Caches/com.apple.xbs/Sources/AppleCV3D_LearnedFeatures/library/Essentials/Array/include/Essentials/Array/ArrayView.h", 983, "total_size < std::numeric_limits<uint32_t>::max()", 0x31uLL, "Given data block is too big to be represented by uint32_t indexed ArrayView", 0x4BuLL, sub_255C101E0);
    if (byte_27F7DD630 == 1)
    {
      if (byte_27F7DD638 != 1 || (v8 = qword_27F7DD608, v9 = *algn_27F7DD610, qword_27F7DD608 == *algn_27F7DD610))
      {
LABEL_20:
        qword_27F7DD620(*algn_27F7DD628, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
        result = v7;
        goto LABEL_21;
      }
    }

    else
    {
      v8 = qword_27F7DD608;
      v9 = *algn_27F7DD610;
      if (qword_27F7DD608 == *algn_27F7DD610)
      {
        goto LABEL_22;
      }
    }

    do
    {
      v11 = *v8;
      v10 = *(v8 + 8);
      v8 += 16;
      v11(v10, "total_size < std::numeric_limits<uint32_t>::max()", 49, "Given data block is too big to be represented by uint32_t indexed ArrayView", 75);
    }

    while (v8 != v9);
    if (byte_27F7DD630)
    {
      goto LABEL_20;
    }

LABEL_22:
    abort();
  }

LABEL_21:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE ***sub_255AF30C4(_BYTE ***result, uint64_t a2)
{
  v2 = *(a2 + 12);
  v3 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4 && v3 != 0)
  {
    v6 = v2 - 1;
    v7 = *(a2 + 24);
    v8 = *a2;
    v9 = v3 - 1;
    if (v9)
    {
      v10 = *(a2 + 28);
      if (v6)
      {
        v11 = 0;
        v12 = v8 + 3;
        do
        {
          v13 = v12;
          v14 = v6;
          do
          {
            *(v13 - 3) = ***result;
            *(v13 - 2) = ***result;
            *(v13 - 1) = ***result;
            *v13 = ***result;
            v13 += v7;
            --v14;
          }

          while (v14);
          *(v13 - 3) = ***result;
          *(v13 - 2) = ***result;
          *(v13 - 1) = ***result;
          *v13 = ***result;
          v8 += v10;
          ++v11;
          v12 += v10;
        }

        while (v11 != v9);
        goto LABEL_17;
      }

      do
      {
        *v8 = ***result;
        v8[1] = ***result;
        v8[2] = ***result;
        v8[3] = ***result;
        v8 += v10;
        --v9;
      }

      while (v9);
    }

    if (!v6)
    {
LABEL_18:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      return result;
    }

    do
    {
LABEL_17:
      *v8 = ***result;
      v8[1] = ***result;
      v8[2] = ***result;
      v8[3] = ***result;
      v8 += v7;
      --v6;
    }

    while (v6);
    goto LABEL_18;
  }

  return result;
}

void sub_255AF328C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v24 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v25 = &v24;
      sub_255AF3410(&v25, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v25 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_255AF2940(&v25, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v23 = (*(a1 + 16) * v12);
    if (!v23)
    {
      return;
    }

    v21 = *a2;
    v22 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          do
          {
            memmove(v19, v18, v15);
            v18 += v12;
            v19 += v13;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v21 = v19;
          v22 = v18;
          v23 = v15;
LABEL_40:

          memmove(v21, v22, v23);
        }
      }
    }
  }
}

void sub_255AF3410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *(a2 + 24);
    v9 = *(a3 + 24);
    v10 = *a2;
    v11 = *a3;
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (v7)
      {
        v15 = 0;
        v16 = v11 + 3;
        v17 = v10 + 1;
        do
        {
          v18 = v17;
          v19 = v16;
          v20 = v7;
          do
          {
            *(v19 - 3) = *(v18 - 1);
            *(v19 - 2) = *v18;
            *(v19 - 1) = v18[1];
            *v19 = v18[2];
            v19 += v9;
            v18 += v8;
            --v20;
          }

          while (v20);
          *(v19 - 3) = *(v18 - 1);
          *(v19 - 2) = *v18;
          *(v19 - 1) = v18[1];
          *v19 = v18[2];
          v10 += v14;
          v11 += v13;
          ++v15;
          v16 += v13;
          v17 += v14;
        }

        while (v15 != v12);
        goto LABEL_17;
      }

      do
      {
        *v11 = *v10;
        v11[1] = v10[1];
        v11[2] = v10[2];
        v11[3] = v10[3];
        v10 += v14;
        v11 += v13;
        --v12;
      }

      while (v12);
    }

    if (!v7)
    {
LABEL_18:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      return;
    }

    do
    {
LABEL_17:
      *v11 = *v10;
      v11[1] = v10[1];
      v11[2] = v10[2];
      v11[3] = v10[3];
      v10 += v8;
      v11 += v9;
      --v7;
    }

    while (v7);
    goto LABEL_18;
  }
}

void *sub_255AF3560(void *result)
{
  v1 = *result;
  v2 = *(*result + 16);
  if (v2 != 1)
  {
    v10 = *(v1 + 8);
    v11 = *(v1 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v1;
    v16 = 2 * v2;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v1 + 20);
      if (!v14)
      {
        v48 = *v13;
        do
        {
          v15->i16[0] = v48;
          v15 = (v15 + 2 * v18);
          --v17;
        }

        while (v17);
        goto LABEL_50;
      }

      v19 = 0;
      v20 = *v13;
      v21 = 2 * v18;
      do
      {
        v22 = v15;
        v23 = v14;
        do
        {
          v22->i16[0] = v20;
          v22 = (v22 + v16);
          --v23;
        }

        while (v23);
        v20 = *v13;
        v22->i16[0] = *v13;
        v15 = (v15 + v21);
        ++v19;
      }

      while (v19 != v17);
    }

    else
    {
      v20 = *v13;
      if (!v14)
      {
LABEL_51:
        v15->i16[0] = v20;
        return result;
      }
    }

    do
    {
      v15->i16[0] = v20;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
LABEL_50:
    v20 = *v13;
    goto LABEL_51;
  }

  v3 = *(v1 + 20);
  v4 = *(v1 + 8);
  if (v3 != v4)
  {
    v24 = *(v1 + 12);
    if (v4)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v1;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v4 & 3);
      v30 = v27 + 1;
      v31 = 2 * v3;
      do
      {
        v32 = *v26;
        v33 = v4;
        v34 = v27;
        if (v4 >= 4)
        {
          if (v4 < 0x10)
          {
            v35 = 0;
LABEL_31:
            v34 = (v27 + 2 * (v4 & 0xFFFFFFFC));
            v39 = vdup_n_s16(v32);
            v40 = 2 * v35;
            v41 = v35 - (v4 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v33 = v4 & 3;
            if ((v4 & 0xFFFFFFFC) == v4)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v36 = vdupq_n_s16(v32);
          v37 = v4 & 0xFFFFFFF0;
          v38 = v30;
          do
          {
            v38[-1] = v36;
            *v38 = v36;
            v38 += 2;
            v37 -= 16;
          }

          while (v37);
          if ((v4 & 0xFFFFFFF0) == v4)
          {
            goto LABEL_23;
          }

          v35 = v4 & 0xFFFFFFF0;
          if ((v4 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v34 = (v27 + 2 * (v4 & 0xFFFFFFF0));
          v33 = v4 & 0xF;
        }

LABEL_36:
        v42 = v33 + 1;
        do
        {
          v34->i16[0] = v32;
          v34 = (v34 + 2);
          --v42;
        }

        while (v42 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    v43 = *v26;
    v44 = v4 - (v4 != 0) + 1;
    if (v44 < 4)
    {
      v45 = v27;
      goto LABEL_73;
    }

    if (v44 >= 0x10)
    {
      v47 = v44 & 0xFFFFFFFFFFFFFFF0;
      v55 = vdupq_n_s16(v43);
      v56 = v27 + 1;
      v57 = v44 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v56[-1] = v55;
        *v56 = v55;
        v56 += 2;
        v57 -= 16;
      }

      while (v57);
      if (v44 == v47)
      {
        return result;
      }

      if ((v44 & 0xC) == 0)
      {
        v45 = (v27 + 2 * v47);
        v4 -= v47;
        goto LABEL_73;
      }
    }

    else
    {
      v47 = 0;
    }

    v4 -= v44 & 0xFFFFFFFFFFFFFFFCLL;
    v45 = (v27 + 2 * (v44 & 0xFFFFFFFFFFFFFFFCLL));
    v58 = vdup_n_s16(v43);
    v59 = (v27 + 2 * v47);
    v60 = v47 - (v44 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v59++ = v58;
      v60 += 4;
    }

    while (v60);
    if (v44 == (v44 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_73:
    v62 = v4 + 1;
    do
    {
      v45->i16[0] = v43;
      v45 = (v45 + 2);
      --v62;
    }

    while (v62 > 1);
    return result;
  }

  v5 = (*(v1 + 12) * v3);
  if (!v5)
  {
    return result;
  }

  v6 = *v1;
  v7 = *result[1];
  if (v5 < 4)
  {
    v8 = (*(v1 + 12) * v3);
    v9 = *v1;
    goto LABEL_69;
  }

  if (v5 >= 0x10)
  {
    v46 = v5 & 0xFFFFFFF0;
    v49 = vdupq_n_s16(v7);
    v50 = v6 + 1;
    v51 = v46;
    do
    {
      v50[-1] = v49;
      *v50 = v49;
      v50 += 2;
      v51 -= 16;
    }

    while (v51);
    if (v46 == v5)
    {
      return result;
    }

    if ((v5 & 0xC) == 0)
    {
      v9 = (v6 + 2 * v46);
      v8 = v5 & 0xF;
LABEL_69:
      v61 = v8 + 1;
      do
      {
        v9->i16[0] = v7;
        v9 = (v9 + 2);
        --v61;
      }

      while (v61 > 1);
      return result;
    }
  }

  else
  {
    v46 = 0;
  }

  v8 = v5 & 3;
  v9 = (v6 + 2 * (v5 & 0xFFFFFFFC));
  v52 = vdup_n_s16(v7);
  v53 = (v6 + 2 * v46);
  v54 = v46 - (v5 & 0xFFFFFFFC);
  do
  {
    *v53++ = v52;
    v54 += 4;
  }

  while (v54);
  if ((v5 & 0xFFFFFFFC) != v5)
  {
    goto LABEL_69;
  }

  return result;
}

unint64_t sub_255AF38B0(unint64_t result, char **a2)
{
  v2 = *(result + 16);
  v3 = *(a2 + 4);
  if (v2 == 1 && v3 == 1)
  {
    v22 = *(result + 20);
    v23 = *(a2 + 5);
    v24 = *(result + 8);
    if (v22 == v23 && v22 == v24)
    {
      v37 = *(result + 12) * v22;
      if (!v37)
      {
        return result;
      }

      v36 = 2 * v37;
      v38 = *a2;
      v35 = *result;
      v34 = v38;
    }

    else
    {
      v26 = *(result + 12);
      if (v24)
      {
        v27 = v26 == 0;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        return result;
      }

      v28 = *result;
      v29 = *a2;
      v30 = 2 * v24;
      v31 = v26 - 1;
      if (v26 != 1)
      {
        v32 = 2 * v22;
        v33 = 2 * v23;
        do
        {
          memmove(v29, v28, v30);
          v28 += v32;
          v29 += v33;
          --v31;
        }

        while (v31);
      }

      v34 = v29;
      v35 = v28;
      v36 = v30;
    }

    return memmove(v34, v35, v36);
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = v5 - 1;
    v9 = *result;
    v10 = *a2;
    v11 = 2 * v2;
    v12 = 2 * v3;
    v13 = v6 - 1;
    if (v13)
    {
      v14 = *(a2 + 5);
      v15 = *(result + 20);
      if (!v8)
      {
        do
        {
          *v10 = *v9;
          v9 += v15;
          v10 += 2 * v14;
          --v13;
        }

        while (v13);
        goto LABEL_38;
      }

      v16 = 0;
      v17 = 2 * v15;
      v18 = 2 * v14;
      do
      {
        v19 = v10;
        v20 = v9;
        v21 = v8;
        do
        {
          *v19 = *v20;
          v20 = (v20 + v11);
          v19 = (v19 + v12);
          --v21;
        }

        while (v21);
        result = *v20;
        *v19 = result;
        v9 = (v9 + v17);
        v10 += v18;
        ++v16;
      }

      while (v16 != v13);
    }

    else if (!v8)
    {
LABEL_38:
      *v10 = *v9;
      return result;
    }

    do
    {
      *v10 = *v9;
      v9 = (v9 + v11);
      v10 += v12;
      --v8;
    }

    while (v8);
    goto LABEL_38;
  }

  return result;
}

void *sub_255AF3A94(void *result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = result[1];
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v12 == 1)
    {
      v22 = *v15;
      if (!v16)
      {
LABEL_54:
        v17->i16[0] = v22;
        v17->i16[1] = v22;
        v17->i16[2] = *v15;
        return result;
      }
    }

    else
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        v22 = *v15;
        do
        {
          v17->i16[0] = v22;
          v17->i16[1] = v22;
          v22 = *v15;
          v17->i16[2] = *v15;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_54;
      }

      v21 = 0;
      v22 = *v15;
      v23 = (v17->i64 + 4);
      do
      {
        result = v23;
        v24 = v16;
        do
        {
          *(result - 2) = v22;
          *(result - 1) = v22;
          v22 = *v15;
          *result = *v15;
          result = (result + v18);
          --v24;
        }

        while (v24);
        *(result - 2) = v22;
        *(result - 1) = v22;
        v22 = *v15;
        *result = *v15;
        v17 = (v17 + 2 * v20);
        ++v21;
        v23 = (v23 + 2 * v20);
      }

      while (v21 != v19);
    }

    do
    {
      v17->i16[0] = v22;
      v17->i16[1] = v22;
      v22 = *v15;
      v17->i16[2] = *v15;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_54;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v25 = result[1];
    v65[0] = *result;
    v65[1] = v25;
    return sub_255AF3E74(v65);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v26 = *(v1 + 16);
    if (v2)
    {
      v27 = v4 == 0;
    }

    else
    {
      v27 = 1;
    }

    if (v27 || v26 == 0)
    {
      return result;
    }

    v29 = result[1];
    v30 = *v1;
    v31 = v26 - 1;
    if (v31)
    {
      if (!v5)
      {
        return result;
      }

      v32 = 0;
      result = (v5 & 3);
      v33 = v30 + 1;
      v34 = 2 * v3;
      do
      {
        v35 = *v29;
        v36 = v5;
        v37 = v30;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v38 = 0;
LABEL_41:
            v37 = (v30 + 2 * (v5 & 0xFFFFFFFC));
            v42 = vdup_n_s16(v35);
            v43 = 2 * v38;
            v44 = v38 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v30->i8[v43] = v42;
              v43 += 8;
              v44 += 4;
            }

            while (v44);
            v36 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v39 = vdupq_n_s16(v35);
          v40 = v5 & 0xFFFFFFF0;
          v41 = v33;
          do
          {
            v41[-1] = v39;
            *v41 = v39;
            v41 += 2;
            v40 -= 16;
          }

          while (v40);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v38 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v37 = (v30 + 2 * (v5 & 0xFFFFFFF0));
          v36 = v5 & 0xF;
        }

LABEL_46:
        v45 = v36 + 1;
        do
        {
          v37->i16[0] = v35;
          v37 = (v37 + 2);
          --v45;
        }

        while (v45 > 1);
LABEL_33:
        v30 = (v30 + v34);
        ++v32;
        v33 = (v33 + v34);
      }

      while (v32 != v31);
    }

    if (!v5)
    {
      return result;
    }

    v46 = *v29;
    if (v5 < 4)
    {
      v47 = v5;
      v48 = v30;
      goto LABEL_83;
    }

    if (v5 >= 0x10)
    {
      v56 = v5 & 0xFFFFFFF0;
      v57 = vdupq_n_s16(v46);
      v58 = v30 + 1;
      v59 = v56;
      do
      {
        v58[-1] = v57;
        *v58 = v57;
        v58 += 2;
        v59 -= 16;
      }

      while (v59);
      if (v56 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v48 = (v30 + 2 * v56);
        v47 = v5 & 0xF;
        goto LABEL_83;
      }
    }

    else
    {
      v56 = 0;
    }

    v47 = v5 & 3;
    v48 = (v30 + 2 * (v5 & 0xFFFFFFFC));
    v60 = vdup_n_s16(v46);
    v61 = (v30 + 2 * v56);
    v62 = v56 - (v5 & 0xFFFFFFFC);
    do
    {
      *v61++ = v60;
      v62 += 4;
    }

    while (v62);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_83:
    v64 = v47 + 1;
    do
    {
      v48->i16[0] = v46;
      v48 = (v48 + 2);
      --v64;
    }

    while (v64 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = *result[1];
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = *v1;
    goto LABEL_79;
  }

  if (v6 >= 0x10)
  {
    v49 = v6 & 0xFFFFFFF0;
    v50 = vdupq_n_s16(v8);
    v51 = v7 + 1;
    v52 = v49;
    do
    {
      v51[-1] = v50;
      *v51 = v50;
      v51 += 2;
      v52 -= 16;
    }

    while (v52);
    if (v49 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v49);
      v9 = v6 & 0xF;
LABEL_79:
      v63 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v63;
      }

      while (v63 > 1);
      return result;
    }
  }

  else
  {
    v49 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v53 = vdup_n_s16(v8);
  v54 = (v7 + 2 * v49);
  v55 = v49 - (v6 & 0xFFFFFFFC);
  do
  {
    *v54++ = v53;
    v55 += 4;
  }

  while (v55);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_79;
  }

  return result;
}

unint64_t sub_255AF3E74(unint64_t result)
{
  v1 = *result;
  v2 = *(*result + 8);
  v3 = *(*result + 12);
  v4 = *(*result + 16);
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = *(result + 8);
    v8 = v3 - 1;
    v9 = *v1;
    v10 = 2 * *(v1 + 6);
    v11 = v4 - 1;
    if (v11)
    {
      v12 = *(v1 + 7);
      v13 = v2 & 0xFFFFFFF0;
      v14 = 2 * v13;
      result = v2 & 0xFFFFFFFC;
      v15 = 2 * result;
      v16 = 0;
      v17 = v9 + 1;
      v18 = 2 * v12;
      if (!v8)
      {
        while (1)
        {
          v43 = *v7;
          v44 = v2;
          v45 = v9;
          if (v2 >= 4)
          {
            if (v2 < 0x10)
            {
              v46 = 0;
LABEL_53:
              v45 = (v9 + v15);
              v50 = vdup_n_s16(v43);
              v51 = 2 * v46;
              v52 = v46 - (v2 & 0xFFFFFFFC);
              do
              {
                *&v9->i8[v51] = v50;
                v51 += 8;
                v52 += 4;
              }

              while (v52);
              v44 = (v2 & 3);
              if (result == v2)
              {
                goto LABEL_45;
              }

              goto LABEL_58;
            }

            v47 = vdupq_n_s16(v43);
            v48 = v2 & 0xFFFFFFF0;
            v49 = v17;
            do
            {
              v49[-1] = v47;
              *v49 = v47;
              v49 += 2;
              v48 -= 16;
            }

            while (v48);
            if (v13 == v2)
            {
              goto LABEL_45;
            }

            v46 = v2 & 0xFFFFFFF0;
            if ((v2 & 0xC) != 0)
            {
              goto LABEL_53;
            }

            v45 = (v9 + v14);
            v44 = (v2 & 0xF);
          }

LABEL_58:
          v53 = v44 + 1;
          do
          {
            v45->i16[0] = v43;
            v45 = (v45 + 2);
            --v53;
          }

          while (v53 > 1);
LABEL_45:
          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            goto LABEL_61;
          }
        }
      }

LABEL_12:
      v19 = 0;
      v20 = v9;
      v21 = v17;
      while (1)
      {
        v22 = *v7;
        v23 = v2;
        v24 = v20;
        if (v2 >= 4)
        {
          if (v2 < 0x10)
          {
            v25 = 0;
LABEL_21:
            v24 = (v20 + v15);
            v29 = vdup_n_s16(v22);
            v30 = 2 * v25;
            v31 = v25 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v30] = v29;
              v30 += 8;
              v31 += 4;
            }

            while (v31);
            v23 = (v2 & 3);
            if (result == v2)
            {
              goto LABEL_13;
            }

            goto LABEL_26;
          }

          v26 = vdupq_n_s16(v22);
          v27 = v2 & 0xFFFFFFF0;
          v28 = v21;
          do
          {
            v28[-1] = v26;
            *v28 = v26;
            v28 += 2;
            v27 -= 16;
          }

          while (v27);
          if (v13 == v2)
          {
            goto LABEL_13;
          }

          v25 = v2 & 0xFFFFFFF0;
          if ((v2 & 0xC) != 0)
          {
            goto LABEL_21;
          }

          v24 = (v20 + v14);
          v23 = (v2 & 0xF);
        }

LABEL_26:
        v32 = v23 + 1;
        do
        {
          v24->i16[0] = v22;
          v24 = (v24 + 2);
          --v32;
        }

        while (v32 > 1);
LABEL_13:
        v20 = (v20 + v10);
        ++v19;
        v21 = (v21 + v10);
        if (v19 == v8)
        {
          v33 = *v7;
          if (v2 < 4)
          {
            v34 = v2;
            v35 = v20;
            goto LABEL_42;
          }

          if (v2 >= 0x10)
          {
            v37 = 0;
            v38 = vdupq_n_s16(v33);
            do
            {
              v20[v37 / 0x10] = v38;
              v21[v37 / 0x10] = v38;
              v37 += 32;
            }

            while (v14 != v37);
            if (v13 != v2)
            {
              v36 = v2 & 0xFFFFFFF0;
              if ((v2 & 0xC) == 0)
              {
                v35 = (v20 + v14);
                v34 = (v2 & 0xF);
                goto LABEL_42;
              }

              goto LABEL_37;
            }
          }

          else
          {
            v36 = 0;
LABEL_37:
            v35 = (v20 + v15);
            v39 = vdup_n_s16(v33);
            v40 = 2 * v36;
            v41 = v36 - (v2 & 0xFFFFFFFC);
            do
            {
              *&v20->i8[v40] = v39;
              v40 += 8;
              v41 += 4;
            }

            while (v41);
            v34 = (v2 & 3);
            if (result != v2)
            {
LABEL_42:
              v42 = v34 + 1;
              do
              {
                v35->i16[0] = v33;
                v35 = (v35 + 2);
                --v42;
              }

              while (v42 > 1);
            }
          }

          v9 = (v9 + v18);
          ++v16;
          v17 = (v17 + v18);
          if (v16 == v11)
          {
            break;
          }

          goto LABEL_12;
        }
      }
    }

LABEL_61:
    if (v8)
    {
      v54 = 0;
      v55 = v2 - (v2 != 0) + 1;
      result = v55 & 0xC;
      v56 = v9 + 1;
      do
      {
        v57 = *v7;
        v58 = v2;
        v59 = v9;
        if (v55 >= 4)
        {
          if (v55 < 0x10)
          {
            v60 = 0;
LABEL_71:
            v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFFCLL));
            v64 = vdup_n_s16(v57);
            v65 = 2 * v60;
            v66 = v60 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            do
            {
              *&v9->i8[v65] = v64;
              v65 += 8;
              v66 += 4;
            }

            while (v66);
            v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFFCLL);
            if (v55 == (v55 & 0xFFFFFFFFFFFFFFFCLL))
            {
              goto LABEL_63;
            }

            goto LABEL_76;
          }

          v61 = vdupq_n_s16(v57);
          v62 = v55 & 0xFFFFFFFFFFFFFFF0;
          v63 = v56;
          do
          {
            v63[-1] = v61;
            *v63 = v61;
            v63 += 2;
            v62 -= 16;
          }

          while (v62);
          if (v55 == (v55 & 0xFFFFFFFFFFFFFFF0))
          {
            goto LABEL_63;
          }

          v60 = v55 & 0xFFFFFFFFFFFFFFF0;
          if ((v55 & 0xC) != 0)
          {
            goto LABEL_71;
          }

          v59 = (v9 + 2 * (v55 & 0xFFFFFFFFFFFFFFF0));
          v58 = v2 - (v55 & 0xFFFFFFFFFFFFFFF0);
        }

LABEL_76:
        v67 = (v58 + 1);
        do
        {
          v59->i16[0] = v57;
          v59 = (v59 + 2);
          --v67;
        }

        while (v67 > 1);
LABEL_63:
        v9 = (v9 + v10);
        ++v54;
        v56 = (v56 + v10);
      }

      while (v54 != v8);
    }

    v68 = *v7;
    v69 = v2 - (v2 != 0) + 1;
    if (v69 < 4)
    {
      v70 = v9;
      goto LABEL_92;
    }

    if (v69 >= 0x10)
    {
      v71 = v69 & 0xFFFFFFFFFFFFFFF0;
      v72 = vdupq_n_s16(v68);
      v73 = v9 + 1;
      v74 = v69 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v73[-1] = v72;
        *v73 = v72;
        v73 += 2;
        v74 -= 16;
      }

      while (v74);
      if (v69 == v71)
      {
        return result;
      }

      if ((v69 & 0xC) == 0)
      {
        v70 = (v9 + 2 * v71);
        v2 = (v2 - v71);
LABEL_92:
        v78 = v2 + 1;
        do
        {
          v70->i16[0] = v68;
          v70 = (v70 + 2);
          --v78;
        }

        while (v78 > 1);
        return result;
      }
    }

    else
    {
      v71 = 0;
    }

    v2 = (v2 - (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v70 = (v9 + 2 * (v69 & 0xFFFFFFFFFFFFFFFCLL));
    v75 = vdup_n_s16(v68);
    v76 = (v9 + 2 * v71);
    v77 = v71 - (v69 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v76++ = v75;
      v77 += 4;
    }

    while (v77);
    if (v69 != (v69 & 0xFFFFFFFFFFFFFFFCLL))
    {
      goto LABEL_92;
    }
  }

  return result;
}

void sub_255AF42D4(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 20) != 1 || *(a2 + 20) != 1)
  {
    v27 = 0;
    if (*(a1 + 8))
    {
      v5 = *(a1 + 12) == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5 && *(a1 + 16) != 0)
    {
      v28 = &v27;
      sub_255AF46AC(&v28, a1, a2);
    }

    return;
  }

  v7 = *(a1 + 24);
  v8 = *(a1 + 8);
  if (v7 != *(a2 + 24) || v7 != v8)
  {
    v28 = *(a1 + 8);
    if (v8)
    {
      v10 = *(a1 + 12) == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10 && *(a1 + 16) != 0)
    {
      sub_255AF4464(&v28, a1, a2);
    }

    return;
  }

  v12 = *(a1 + 28);
  v13 = *(a2 + 28);
  v14 = *(a1 + 12);
  v15 = (v14 * v7);
  if (v12 == v13 && v12 == v15)
  {
    v26 = *(a1 + 16) * v12;
    if (!v26)
    {
      return;
    }

    v23 = 2 * v26;
    v24 = *a2;
    v25 = *a1;
    goto LABEL_40;
  }

  if (v7)
  {
    if (v14)
    {
      v17 = *(a1 + 16);
      if (v17)
      {
        v18 = *a1;
        v19 = *a2;
        v20 = v17 - 1;
        if (v17 != 1)
        {
          if (!v15)
          {
            return;
          }

          v21 = 2 * v12;
          v22 = 2 * v13;
          do
          {
            memmove(v19, v18, 2 * v15);
            v18 += v21;
            v19 += v22;
            --v20;
          }

          while (v20);
        }

        if (v15)
        {
          v23 = 2 * v15;
          v24 = v19;
          v25 = v18;
LABEL_40:

          memmove(v24, v25, v23);
        }
      }
    }
  }
}

uint64_t *sub_255AF4464(uint64_t *result, char **a2, char **a3)
{
  v3 = *(a2 + 3);
  v4 = *(a2 + 4);
  if (*(a2 + 2))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = result;
    v8 = v3 - 1;
    v9 = *(a2 + 6);
    v10 = *(a3 + 6);
    v11 = *a2;
    v12 = *a3;
    v35 = v4 - 1;
    if (v4 != 1)
    {
      v13 = *(a3 + 7);
      v14 = *(a2 + 7);
      v15 = *result;
      if (v3 == 1)
      {
        if (!v15)
        {
          return result;
        }

        v30 = 0;
        v31 = *(a2 + 3);
        v25 = v4 - 2;
LABEL_27:
        result = memmove(v12, v11, 2 * v15);
        while (v25)
        {
          v15 = *v7;
          --v25;
          v11 += 2 * v14;
          v12 += 2 * v13;
          if (*v7)
          {
            goto LABEL_27;
          }
        }

        v11 += 2 * v14;
        v12 += 2 * v13;
      }

      else
      {
        if (!v15)
        {
          return result;
        }

        v30 = v3 - 1;
        v31 = *(a2 + 3);
        v16 = 0;
        v32 = v3 - 2;
        v28 = *(a3 + 6);
        v29 = *(a2 + 6);
        v17 = 2 * v9;
        v18 = &v11[2 * v9];
        v19 = 2 * v14;
        v20 = 2 * v10;
        v21 = &v12[2 * v10];
        v33 = 2 * v13;
        v34 = v19;
LABEL_14:
        v36 = v18;
        v22 = 0;
        v23 = 0;
        v24 = v32;
        if (v15)
        {
LABEL_15:
          result = memmove(&v12[v22], &v11[v23], 2 * v15);
        }

        while (v24)
        {
          v15 = *v7;
          --v24;
          v23 += v17;
          v22 += v20;
          if (*v7)
          {
            goto LABEL_15;
          }
        }

        v18 = v36;
        if (*v7)
        {
          result = memmove(&v21[v22], &v36[v23], 2 * *v7);
        }

        while (1)
        {
          v11 += v34;
          v12 += v33;
          if (++v16 == v35)
          {
            break;
          }

          v15 = *v7;
          v18 += v34;
          v21 += v33;
          if (*v7)
          {
            goto LABEL_14;
          }
        }

        v10 = v28;
        v9 = v29;
      }

      v8 = v30;
      v3 = v31;
    }

    v26 = *v7;
    if (v8)
    {
      if (!v26)
      {
        return result;
      }

      v27 = v3 - 2;
LABEL_36:
      result = memmove(v12, v11, 2 * v26);
      while (v27)
      {
        v26 = *v7;
        --v27;
        v11 += 2 * v9;
        v12 += 2 * v10;
        if (*v7)
        {
          goto LABEL_36;
        }
      }

      v26 = *v7;
      v11 += 2 * v9;
      v12 += 2 * v10;
    }

    if (v26)
    {

      return memmove(v12, v11, 2 * v26);
    }
  }

  return result;
}

void sub_255AF46AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      return;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }
}

unint64_t sub_255AF47F0(unint64_t result)
{
  v1 = *result;
  if (*(*result + 20) != 1)
  {
    v11 = *(v1 + 12);
    v12 = *(v1 + 16);
    if (*(v1 + 8))
    {
      v13 = v11 == 0;
    }

    else
    {
      v13 = 1;
    }

    if (v13 || v12 == 0)
    {
      return result;
    }

    v15 = *(result + 8);
    v16 = v11 - 1;
    v17 = *v1;
    v18 = 2 * *(v1 + 24);
    v19 = v12 - 1;
    if (v19)
    {
      v20 = *(v1 + 28);
      if (!v16)
      {
        do
        {
          v51 = *v15;
          v17->i16[0] = *v15;
          v17->i16[1] = v51;
          v52 = *v15;
          v17->i16[2] = *v15;
          v17->i16[3] = v52;
          v17 = (v17 + 2 * v20);
          --v19;
        }

        while (v19);
        goto LABEL_53;
      }

      v21 = 0;
      v22 = &v17->i16[2];
      do
      {
        v23 = v22;
        v24 = v16;
        do
        {
          v25 = *v15;
          *(v23 - 2) = *v15;
          *(v23 - 1) = v25;
          v26 = *v15;
          *v23 = *v15;
          v23[1] = v26;
          v23 = (v23 + v18);
          --v24;
        }

        while (v24);
        v27 = *v15;
        *(v23 - 2) = *v15;
        *(v23 - 1) = v27;
        result = *v15;
        *v23 = result;
        v23[1] = result;
        v17 = (v17 + 2 * v20);
        ++v21;
        v22 += v20;
      }

      while (v21 != v19);
    }

    else if (!v16)
    {
LABEL_53:
      v53 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v53;
      v54 = *v15;
      v17->i16[2] = v54;
      v17->i16[3] = v54;
      return result;
    }

    do
    {
      v49 = *v15;
      v17->i16[0] = *v15;
      v17->i16[1] = v49;
      v50 = *v15;
      v17->i16[2] = *v15;
      v17->i16[3] = v50;
      v17 = (v17 + v18);
      --v16;
    }

    while (v16);
    goto LABEL_53;
  }

  v2 = *(v1 + 24);
  if (v2 != *(v1 + 8))
  {
    v28 = *(result + 8);
    v74[0] = *result;
    v74[1] = v28;
    return sub_255AF3E74(v74);
  }

  v3 = *(v1 + 28);
  v4 = *(v1 + 12);
  v5 = (v4 * v2);
  if (v3 != v5)
  {
    v29 = *(v1 + 16);
    if (v2)
    {
      v30 = v4 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (v30 || v29 == 0)
    {
      return result;
    }

    v32 = *(result + 8);
    v33 = *v1;
    v34 = v29 - 1;
    if (v34)
    {
      if (!v5)
      {
        return result;
      }

      v35 = 0;
      result = v5 & 3;
      v36 = v33 + 1;
      v37 = 2 * v3;
      do
      {
        v38 = *v32;
        v39 = v5;
        v40 = v33;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v41 = 0;
LABEL_41:
            v40 = (v33 + 2 * (v5 & 0xFFFFFFFC));
            v45 = vdup_n_s16(v38);
            v46 = 2 * v41;
            v47 = v41 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v33->i8[v46] = v45;
              v46 += 8;
              v47 += 4;
            }

            while (v47);
            v39 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_33;
            }

            goto LABEL_46;
          }

          v42 = vdupq_n_s16(v38);
          v43 = v5 & 0xFFFFFFF0;
          v44 = v36;
          do
          {
            v44[-1] = v42;
            *v44 = v42;
            v44 += 2;
            v43 -= 16;
          }

          while (v43);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_33;
          }

          v41 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_41;
          }

          v40 = (v33 + 2 * (v5 & 0xFFFFFFF0));
          v39 = v5 & 0xF;
        }

LABEL_46:
        v48 = v39 + 1;
        do
        {
          v40->i16[0] = v38;
          v40 = (v40 + 2);
          --v48;
        }

        while (v48 > 1);
LABEL_33:
        v33 = (v33 + v37);
        ++v35;
        v36 = (v36 + v37);
      }

      while (v35 != v34);
    }

    if (!v5)
    {
      return result;
    }

    v55 = *v32;
    if (v5 < 4)
    {
      v56 = v5;
      v57 = v33;
      goto LABEL_82;
    }

    if (v5 >= 0x10)
    {
      v65 = v5 & 0xFFFFFFF0;
      v66 = vdupq_n_s16(v55);
      v67 = v33 + 1;
      v68 = v65;
      do
      {
        v67[-1] = v66;
        *v67 = v66;
        v67 += 2;
        v68 -= 16;
      }

      while (v68);
      if (v65 == v5)
      {
        return result;
      }

      if ((v5 & 0xC) == 0)
      {
        v57 = (v33 + 2 * v65);
        v56 = v5 & 0xF;
        goto LABEL_82;
      }
    }

    else
    {
      v65 = 0;
    }

    v56 = v5 & 3;
    v57 = (v33 + 2 * (v5 & 0xFFFFFFFC));
    v69 = vdup_n_s16(v55);
    v70 = (v33 + 2 * v65);
    v71 = v65 - (v5 & 0xFFFFFFFC);
    do
    {
      *v70++ = v69;
      v71 += 4;
    }

    while (v71);
    if ((v5 & 0xFFFFFFFC) == v5)
    {
      return result;
    }

LABEL_82:
    v73 = v56 + 1;
    do
    {
      v57->i16[0] = v55;
      v57 = (v57 + 2);
      --v73;
    }

    while (v73 > 1);
    return result;
  }

  v6 = (*(v1 + 16) * v3);
  if (!v6)
  {
    return result;
  }

  v7 = *v1;
  v8 = **(result + 8);
  if (v6 < 4)
  {
    v9 = (*(v1 + 16) * v3);
    v10 = v7;
    goto LABEL_78;
  }

  if (v6 >= 0x10)
  {
    v58 = v6 & 0xFFFFFFF0;
    v59 = vdupq_n_s16(v8);
    v60 = v7 + 1;
    v61 = v58;
    do
    {
      v60[-1] = v59;
      *v60 = v59;
      v60 += 2;
      v61 -= 16;
    }

    while (v61);
    if (v58 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v10 = (v7 + 2 * v58);
      v9 = v6 & 0xF;
LABEL_78:
      v72 = v9 + 1;
      do
      {
        v10->i16[0] = v8;
        v10 = (v10 + 2);
        --v72;
      }

      while (v72 > 1);
      return result;
    }
  }

  else
  {
    v58 = 0;
  }

  v9 = v6 & 3;
  v10 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v62 = vdup_n_s16(v8);
  v63 = (v7 + 2 * v58);
  v64 = v58 - (v6 & 0xFFFFFFFC);
  do
  {
    *v63++ = v62;
    v64 += 4;
  }

  while (v64);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_78;
  }

  return result;
}

void sub_255AF4BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 12);
  v4 = *(a2 + 16);
  if (*(a2 + 8))
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && v4 != 0)
  {
    v7 = v3 - 1;
    v8 = *a2;
    v9 = *a3;
    v10 = 2 * *(a2 + 24);
    v11 = 2 * *(a3 + 24);
    v12 = v4 - 1;
    if (v12)
    {
      v13 = *(a3 + 28);
      v14 = *(a2 + 28);
      if (!v7)
      {
        do
        {
          *v9 = *v8;
          v9[1] = v8[1];
          v9[2] = v8[2];
          v9[3] = v8[3];
          v8 += v14;
          v9 += v13;
          --v12;
        }

        while (v12);
        goto LABEL_19;
      }

      v15 = 0;
      v16 = v9 + 2;
      v17 = v8 + 2;
      do
      {
        v18 = v17;
        v19 = v16;
        v20 = v7;
        do
        {
          *(v19 - 2) = *(v18 - 2);
          *(v19 - 1) = *(v18 - 1);
          *v19 = *v18;
          v19[1] = v18[1];
          v19 = (v19 + v11);
          v18 = (v18 + v10);
          --v20;
        }

        while (v20);
        *(v19 - 2) = *(v18 - 2);
        *(v19 - 1) = *(v18 - 1);
        *v19 = *v18;
        v19[1] = v18[1];
        v8 += v14;
        v9 += v13;
        ++v15;
        v16 += v13;
        v17 += v14;
      }

      while (v15 != v12);
    }

    else if (!v7)
    {
LABEL_19:
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      return;
    }

    do
    {
      *v9 = *v8;
      v9[1] = v8[1];
      v9[2] = v8[2];
      v9[3] = v8[3];
      v8 = (v8 + v10);
      v9 = (v9 + v11);
      --v7;
    }

    while (v7);
    goto LABEL_19;
  }
}

void *sub_255AF4D58(void *result, int16x4_t a2)
{
  v2 = *result;
  v3 = *(*result + 16);
  if (v3 != 1)
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 12);
    if (v10)
    {
      v12 = v11 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      return result;
    }

    v13 = result[1];
    v14 = v10 - 1;
    v15 = *v2;
    v16 = 2 * v3;
    v17 = v11 - 1;
    if (v17)
    {
      v18 = *(v2 + 20);
      v19 = *v13;
      if (v14)
      {
        v20 = 0;
        v21 = 2 * v18;
        do
        {
          v22 = v15;
          v23 = v14;
          do
          {
            v22->i16[0] = v19;
            v22 = (v22 + v16);
            --v23;
          }

          while (v23);
          v19 = *v13;
          v22->i16[0] = *v13;
          v15 = (v15 + v21);
          ++v20;
        }

        while (v20 != v17);
        goto LABEL_48;
      }

      do
      {
        v15->i16[0] = v19;
        v15 = (v15 + 2 * v18);
        --v17;
      }

      while (v17);
    }

    if (!v14)
    {
LABEL_49:
      v15->i16[0] = *v13;
      return result;
    }

    v19 = *v13;
    do
    {
LABEL_48:
      v15->i16[0] = v19;
      v15 = (v15 + v16);
      --v14;
    }

    while (v14);
    goto LABEL_49;
  }

  v4 = *(v2 + 20);
  v5 = *(v2 + 8);
  if (v4 != v5)
  {
    v24 = *(v2 + 12);
    if (v5)
    {
      v25 = v24 == 0;
    }

    else
    {
      v25 = 1;
    }

    if (v25)
    {
      return result;
    }

    v26 = result[1];
    v27 = *v2;
    v28 = v24 - 1;
    if (v28)
    {
      v29 = 0;
      result = (v5 & 3);
      v30 = v27 + 1;
      v31 = 2 * v4;
      do
      {
        a2.i16[0] = *v26;
        v32 = v5;
        v33 = v27;
        if (v5 >= 4)
        {
          if (v5 < 0x10)
          {
            v34 = 0;
LABEL_31:
            v33 = (v27 + 2 * (v5 & 0xFFFFFFFC));
            v38 = vdup_lane_s16(a2, 0);
            v39 = 2 * v34;
            v40 = v34 - (v5 & 0xFFFFFFFC);
            do
            {
              *&v27->i8[v39] = v38;
              v39 += 8;
              v40 += 4;
            }

            while (v40);
            v32 = v5 & 3;
            if ((v5 & 0xFFFFFFFC) == v5)
            {
              goto LABEL_23;
            }

            goto LABEL_36;
          }

          v35 = vdupq_lane_s16(a2, 0);
          v36 = v5 & 0xFFFFFFF0;
          v37 = v30;
          do
          {
            v37[-1] = v35;
            *v37 = v35;
            v37 += 2;
            v36 -= 16;
          }

          while (v36);
          if ((v5 & 0xFFFFFFF0) == v5)
          {
            goto LABEL_23;
          }

          v34 = v5 & 0xFFFFFFF0;
          if ((v5 & 0xC) != 0)
          {
            goto LABEL_31;
          }

          v33 = (v27 + 2 * (v5 & 0xFFFFFFF0));
          v32 = v5 & 0xF;
        }

LABEL_36:
        v41 = v32 + 1;
        do
        {
          v33->i16[0] = a2.i16[0];
          v33 = (v33 + 2);
          --v41;
        }

        while (v41 > 1);
LABEL_23:
        v27 = (v27 + v31);
        ++v29;
        v30 = (v30 + v31);
      }

      while (v29 != v28);
    }

    a2.i16[0] = *v26;
    v42 = v5 - (v5 != 0) + 1;
    if (v42 < 4)
    {
      v43 = v27;
      goto LABEL_71;
    }

    if (v42 >= 0x10)
    {
      v45 = v42 & 0xFFFFFFFFFFFFFFF0;
      v52 = vdupq_lane_s16(a2, 0);
      v53 = v27 + 1;
      v54 = v42 & 0xFFFFFFFFFFFFFFF0;
      do
      {
        v53[-1] = v52;
        *v53 = v52;
        v53 += 2;
        v54 -= 16;
      }

      while (v54);
      if (v42 == v45)
      {
        return result;
      }

      if ((v42 & 0xC) == 0)
      {
        v43 = (v27 + 2 * v45);
        v5 -= v45;
        goto LABEL_71;
      }
    }

    else
    {
      v45 = 0;
    }

    v5 -= v42 & 0xFFFFFFFFFFFFFFFCLL;
    v43 = (v27 + 2 * (v42 & 0xFFFFFFFFFFFFFFFCLL));
    v55 = vdup_lane_s16(a2, 0);
    v56 = (v27 + 2 * v45);
    v57 = v45 - (v42 & 0xFFFFFFFFFFFFFFFCLL);
    do
    {
      *v56++ = v55;
      v57 += 4;
    }

    while (v57);
    if (v42 == (v42 & 0xFFFFFFFFFFFFFFFCLL))
    {
      return result;
    }

LABEL_71:
    v59 = v5 + 1;
    do
    {
      v43->i16[0] = a2.i16[0];
      v43 = (v43 + 2);
      --v59;
    }

    while (v59 > 1);
    return result;
  }

  v6 = (*(v2 + 12) * v4);
  if (!v6)
  {
    return result;
  }

  v7 = *v2;
  a2.i16[0] = *result[1];
  if (v6 < 4)
  {
    v8 = (*(v2 + 12) * v4);
    v9 = *v2;
    goto LABEL_67;
  }

  if (v6 >= 0x10)
  {
    v44 = v6 & 0xFFFFFFF0;
    v46 = vdupq_lane_s16(a2, 0);
    v47 = v7 + 1;
    v48 = v44;
    do
    {
      v47[-1] = v46;
      *v47 = v46;
      v47 += 2;
      v48 -= 16;
    }

    while (v48);
    if (v44 == v6)
    {
      return result;
    }

    if ((v6 & 0xC) == 0)
    {
      v9 = (v7 + 2 * v44);
      v8 = v6 & 0xF;
LABEL_67:
      v58 = v8 + 1;
      do
      {
        v9->i16[0] = a2.i16[0];
        v9 = (v9 + 2);
        --v58;
      }

      while (v58 > 1);
      return result;
    }
  }

  else
  {
    v44 = 0;
  }

  v8 = v6 & 3;
  v9 = (v7 + 2 * (v6 & 0xFFFFFFFC));
  v49 = vdup_lane_s16(a2, 0);
  v50 = (v7 + 2 * v44);
  v51 = v44 - (v6 & 0xFFFFFFFC);
  do
  {
    *v50++ = v49;
    v51 += 4;
  }

  while (v51);
  if ((v6 & 0xFFFFFFFC) != v6)
  {
    goto LABEL_67;
  }

  return result;
}

__int16 sub_255AF5094@<H0>(void *a1@<X0>, int16x4_t a2@<D0>)
{
  v2 = *a1;
  if (*(*a1 + 20) != 1)
  {
    v12 = *(v2 + 12);
    v13 = *(v2 + 16);
    if (*(v2 + 8))
    {
      v14 = v12 == 0;
    }

    else
    {
      v14 = 1;
    }

    if (v14 || v13 == 0)
    {
      return a2.i16[0];
    }

    v16 = a1[1];
    v17 = v12 - 1;
    v18 = *v2;
    v19 = 2 * *(v2 + 24);
    v20 = v13 - 1;
    if (v20)
    {
      v21 = *(v2 + 28);
      v22 = *v16;
      if (v17)
      {
        v23 = 0;
        v24 = &v18->i16[1];
        do
        {
          v25 = v24;
          v26 = v17;
          do
          {
            *(v25 - 1) = v22;
            v22 = *v16;
            *v25 = *v16;
            v25 = (v25 + v19);
            --v26;
          }

          while (v26);
          *(v25 - 1) = v22;
          v22 = *v16;
          *v25 = *v16;
          v18 = (v18 + 2 * v21);
          ++v23;
          v24 += v21;
        }

        while (v23 != v20);
        goto LABEL_60;
      }

      v52 = 2 * v21;
      do
      {
        v18->i16[0] = v22;
        v22 = *v16;
        v18->i16[1] = *v16;
        v18 = (v18 + v52);
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = *v16;
    }

    if (!v17)
    {
LABEL_61:
      v18->i16[0] = v22;
      a2.i16[0] = *v16;
      v18->i16[1] = *v16;
      return a2.i16[0];
    }

    do
    {
LABEL_60:
      v18->i16[0] = v22;
      v22 = *v16;
      v18->i16[1] = *v16;
      v18 = (v18 + v19);
      --v17;
    }

    while (v17);
    goto LABEL_61;
  }

  v3 = *(v2 + 24);
  v4 = *(v2 + 8);
  if (v3 != v4)
  {
    v27 = a1[1];
    v73 = 0;
    v72 = v4;
    v74[0] = &v73;
    v74[1] = &v72;
    v74[2] = v27;
    v29 = *(v2 + 12);
    v28 = *(v2 + 16);
    if (v4)
    {
      v30 = v29 == 0;
    }

    else
    {
      v30 = 1;
    }

    if (!v30 && v28 != 0)
    {
      v75[0] = 0;
      v75[1] = v4 - 1;
      v75[2] = 1;
      v75[3] = v29 - 1;
      v75[4] = v3;
      v75[5] = v28 - 1;
      v75[6] = *(v2 + 28);
      v32 = *v2;
      v76[0] = 0;
      v76[1] = 0;
      sub_255AF54AC(v75, v76, v74, v32, a2);
    }

    return a2.i16[0];
  }

  v5 = *(v2 + 28);
  v6 = *(v2 + 12);
  v7 = (v6 * v3);
  if (v5 != v7)
  {
    v33 = *(v2 + 16);
    if (v3)
    {
      v34 = v6 == 0;
    }

    else
    {
      v34 = 1;
    }

    if (v34 || v33 == 0)
    {
      return a2.i16[0];
    }

    v36 = a1[1];
    v37 = *v2;
    v38 = v33 - 1;
    if (v38)
    {
      if (!v7)
      {
        return a2.i16[0];
      }

      v39 = 0;
      v40 = v37 + 1;
      v41 = 2 * v5;
      do
      {
        a2.i16[0] = *v36;
        v42 = v7;
        v43 = v37;
        if (v7 >= 4)
        {
          if (v7 < 0x10)
          {
            v44 = 0;
LABEL_48:
            v43 = (v37 + 2 * (v7 & 0xFFFFFFFC));
            v48 = vdup_lane_s16(a2, 0);
            v49 = 2 * v44;
            v50 = v44 - (v7 & 0xFFFFFFFC);
            do
            {
              *&v37->i8[v49] = v48;
              v49 += 8;
              v50 += 4;
            }

            while (v50);
            v42 = v7 & 3;
            if ((v7 & 0xFFFFFFFC) == v7)
            {
              goto LABEL_40;
            }

            goto LABEL_53;
          }

          v45 = vdupq_lane_s16(a2, 0);
          v46 = v7 & 0xFFFFFFF0;
          v47 = v40;
          do
          {
            v47[-1] = v45;
            *v47 = v45;
            v47 += 2;
            v46 -= 16;
          }

          while (v46);
          if ((v7 & 0xFFFFFFF0) == v7)
          {
            goto LABEL_40;
          }

          v44 = v7 & 0xFFFFFFF0;
          if ((v7 & 0xC) != 0)
          {
            goto LABEL_48;
          }

          v43 = (v37 + 2 * (v7 & 0xFFFFFFF0));
          v42 = v7 & 0xF;
        }

LABEL_53:
        v51 = v42 + 1;
        do
        {
          v43->i16[0] = a2.i16[0];
          v43 = (v43 + 2);
          --v51;
        }

        while (v51 > 1);
LABEL_40:
        v37 = (v37 + v41);
        ++v39;
        v40 = (v40 + v41);
      }

      while (v39 != v38);
    }

    if (!v7)
    {
      return a2.i16[0];
    }

    a2.i16[0] = *v36;
    if (v7 < 4)
    {
      v53 = v7;
      v54 = v37;
      goto LABEL_90;
    }

    if (v7 >= 0x10)
    {
      v62 = v7 & 0xFFFFFFF0;
      v63 = vdupq_lane_s16(a2, 0);
      v64 = v37 + 1;
      v65 = v62;
      do
      {
        v64[-1] = v63;
        *v64 = v63;
        v64 += 2;
        v65 -= 16;
      }

      while (v65);
      if (v62 == v7)
      {
        return a2.i16[0];
      }

      if ((v7 & 0xC) == 0)
      {
        v54 = (v37 + 2 * v62);
        v53 = v7 & 0xF;
        goto LABEL_90;
      }
    }

    else
    {
      v62 = 0;
    }

    v53 = v7 & 3;
    v54 = (v37 + 2 * (v7 & 0xFFFFFFFC));
    v66 = vdup_lane_s16(a2, 0);
    v67 = (v37 + 2 * v62);
    v68 = v62 - (v7 & 0xFFFFFFFC);
    do
    {
      *v67++ = v66;
      v68 += 4;
    }

    while (v68);
    if ((v7 & 0xFFFFFFFC) == v7)
    {
      return a2.i16[0];
    }

LABEL_90:
    v70 = v53 + 1;
    do
    {
      v54->i16[0] = a2.i16[0];
      v54 = (v54 + 2);
      --v70;
    }

    while (v70 > 1);
    return a2.i16[0];
  }

  v8 = (*(v2 + 16) * v5);
  if (!v8)
  {
    return a2.i16[0];
  }

  v9 = *v2;
  a2.i16[0] = *a1[1];
  if (v8 < 4)
  {
    v10 = (*(v2 + 16) * v5);
    v11 = v9;
    goto LABEL_86;
  }

  if (v8 >= 0x10)
  {
    v55 = v8 & 0xFFFFFFF0;
    v56 = vdupq_lane_s16(a2, 0);
    v57 = v9 + 1;
    v58 = v55;
    do
    {
      v57[-1] = v56;
      *v57 = v56;
      v57 += 2;
      v58 -= 16;
    }

    while (v58);
    if (v55 == v8)
    {
      return a2.i16[0];
    }

    if ((v8 & 0xC) == 0)
    {
      v11 = (v9 + 2 * v55);
      v10 = v8 & 0xF;
LABEL_86:
      v69 = v10 + 1;
      do
      {
        v11->i16[0] = a2.i16[0];
        v11 = (v11 + 2);
        --v69;
      }

      while (v69 > 1);
      return a2.i16[0];
    }
  }

  else
  {
    v55 = 0;
  }

  v10 = v8 & 3;
  v11 = (v9 + 2 * (v8 & 0xFFFFFFFC));
  v59 = vdup_lane_s16(a2, 0);
  v60 = (v9 + 2 * v55);
  v61 = v55 - (v8 & 0xFFFFFFFC);
  do
  {
    *v60++ = v59;
    v61 += 4;
  }

  while (v61);
  if ((v8 & 0xFFFFFFFC) != v8)
  {
    goto LABEL_86;
  }

  return a2.i16[0];
}