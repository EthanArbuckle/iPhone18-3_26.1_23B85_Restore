BOOL sub_232CB2EB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void *sub_232CB2F04(void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CB315C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_232CB39D0(a1);
}

void sub_232CB3168()
{
  if (!dword_27DDD5658)
  {
    v0 = sub_232CB31B0(MEMORY[0x277D82670], "Program terminated with an unrecoverable error.");
    v1 = sub_232CB31F8(v0);
    sub_232CB32B0(v1);
    exit(-1);
  }

  dword_27DDD5658 = 2;
}

void *sub_232CB31B0(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_232C85DAC(a1, __s, v4);
}

void *sub_232CB31F8(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x277D82680]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *sub_232CB32BC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_232CB36A4(a1, v2);
  }

  return a1;
}

void sub_232CB3400(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_232CB36A4(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_232CB3424(void *result, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  return result;
}

void sub_232CB34D4(uint64_t *a1, void *a2)
{
  v3 = *a1;
  if (*a1 != *a2)
  {
    if (*a2)
    {
      operator new();
    }

    *a1 = 0;
    if (v3)
    {

      sub_232CB36A4(a1, v3);
    }
  }
}

const char *sub_232CB35B4(uint64_t *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return "";
  }

  result = (v1 + 8);
  if (*(v1 + 31) < 0)
  {
    return *result;
  }

  return result;
}

std::string *sub_232CB35E0@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v4 = result;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v5 = *v3 - 1;
    if (v5 < 0x10)
    {
      MEMORY[0x238392910](a2, off_2789A7B00[v5]);
    }

    std::string::append(a2, ": ");
    v6 = *(v4->__r_.__value_.__r.__words[0] + 31);
    if (v6 >= 0)
    {
      v7 = (v4->__r_.__value_.__r.__words[0] + 8);
    }

    else
    {
      v7 = *(v4->__r_.__value_.__r.__words[0] + 8);
    }

    if (v6 >= 0)
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 31);
    }

    else
    {
      v8 = *(v4->__r_.__value_.__r.__words[0] + 16);
    }

    return std::string::append(a2, v7, v8);
  }

  else
  {
    *(a2 + 23) = 2;
    strcpy(a2, "OK");
  }

  return result;
}

void sub_232CB3688(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_232CB36A4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x238392C10);
  }
}

void *sub_232CB3700()
{
  if ((atomic_load_explicit(&qword_27DDD4D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4D90))
  {
    operator new();
  }

  v0 = qword_27DDD4D88;

  return sub_232CB37D0(v0);
}

void sub_232CB3798(_Unwind_Exception *a1)
{
  MEMORY[0x238392C10](v1, 0x1000C4000313F17);
  __cxa_guard_abort(&qword_27DDD4D90);
  _Unwind_Resume(a1);
}

void *sub_232CB37D0(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_232D00ED0;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t sub_232CB3838(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) < a2)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = sub_232CB571C(v7, "CHECK failed: n <= size_: ");
    sub_232CB5858(&v6, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

  return a1 + a2;
}

void sub_232CB38B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CB38E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6 + 72;
  if (v6 + 72 > *(a1 + 16))
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v8 = sub_232CB571C(v13, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    sub_232CB5858(&v12, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
  }

  v9 = sub_232CB3838(a1, v6);
  *(a1 + 8) = v7;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = a1;
  v9[5] = sub_232CB3838(a1, v7);
  v10 = sub_232CB3838(a1, *(a1 + 16));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_232CB39B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CB3A00(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = *(a1 + 32);
  if (a2 == -1)
  {
    if (v5)
    {
      v7 = *v5;
    }

    else
    {
      v7 = 256;
    }
  }

  else
  {
    if (v5)
    {
      v6 = *(v5 + 8);
    }

    else
    {
      v6 = 0x2000;
    }

    if (v6 >= 2 * a2)
    {
      v7 = 2 * a2;
    }

    else
    {
      v7 = v6;
    }
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    sub_232CB5704(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = sub_232CB571C(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_232CB5858(&v11, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v12);
    v5 = *(a1 + 32);
  }

  if (v7 <= a3 + 24)
  {
    v9 = a3 + 24;
  }

  else
  {
    v9 = v7;
  }

  if (v5)
  {
    result = (*(v5 + 16))(v9);
  }

  else
  {
    result = operator new(v9);
  }

  atomic_fetch_add_explicit((a1 + 16), v9, memory_order_relaxed);
  return result;
}

void sub_232CB3AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CB3B04(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  v7 = sub_232CB3A00(a3, v6, a2);

  return sub_232CB4098(v7, v8, a1, 0, 0);
}

void *sub_232CB3B60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = a1[3];
  do
  {
    if (result)
    {
      if ((2 * *result) >= 0x40)
      {
        v7 = 64;
      }

      else
      {
        v7 = 2 * *result;
      }
    }

    else
    {
      v7 = 8;
    }

    result = sub_232CB3BFC(a1, (16 * v7 + 23) & 0xFF0);
    v8 = a1[3];
    *result = v7;
    result[1] = v8;
    a1[3] = result;
    a1[7] = (result + 2);
    a1[8] = &result[2 * v7 + 2];
  }

  while (!v7);
  result[2] = a2;
  result[3] = a3;
  a1[7] = (result + 4);
  return result;
}

unint64_t sub_232CB3BFC(uint64_t *a1, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v4 = sub_232CB571C(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    sub_232CB5858(&v8, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v9);
  }

  result = a1[5];
  v6 = a1[6];
  if (v6 < result)
  {
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v7 = sub_232CB571C(v9, "CHECK failed: (limit_) >= (ptr_): ");
    sub_232CB5858(&v8, &v7->__r_.__value_.__l.__data_);
    sub_232CB5860(v9);
    result = a1[5];
    v6 = a1[6];
  }

  if (v6 - result < a2)
  {
    return sub_232CB3F84(a1, a2);
  }

  a1[5] = result + a2;
  return result;
}

void sub_232CB3CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unint64_t sub_232CB3D04(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232CB3700();
  if (v6[1] == a1[3])
  {
    explicit = v6[2];
    goto LABEL_3;
  }

  v9 = sub_232CB3700();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v9)
  {
LABEL_3:

    return sub_232CB3DB0(explicit, a2, a3);
  }

  return sub_232CB3E10(a1, a2, a3);
}

unint64_t sub_232CB3DB0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_232CB3BFC(a1, a2);
  v6 = v5;
  v7 = a1[7];
  if (v7 == a1[8])
  {
    sub_232CB3B60(a1, v5, a3);
  }

  else
  {
    *v7 = v5;
    v7[1] = a3;
    a1[7] = (v7 + 2);
  }

  return v6;
}

unint64_t sub_232CB3E10(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_232CB3700();
  v7 = sub_232CB3EBC(a1, v6);

  return sub_232CB3DB0(v7, a2, a3);
}

unint64_t sub_232CB3E74(void *a1, unint64_t a2)
{
  v4 = sub_232CB3700();
  v5 = sub_232CB3EBC(a1, v4);

  return sub_232CB3BFC(v5, a2);
}

unint64_t sub_232CB3EBC(void *a1, uint64_t a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    while (*(explicit + 8) != a2)
    {
      explicit = *(explicit + 32);
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v5 = sub_232CB3A00(a1, -1, 0x48uLL);
    *v5 = xmmword_232D00EE0;
    v5[2] = v6;
    v7 = sub_232CB38E4(v5, a2, a1);
    explicit = v7;
    v8 = *a1;
    v7[4] = *a1;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(a1, &v9, v7, memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        v7[4] = v9;
        atomic_compare_exchange_strong_explicit(a1, &v10, v7, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  sub_232CB3700()[2] = explicit;
  v12 = a1[3];
  sub_232CB3700()[1] = v12;
  atomic_store(explicit, a1 + 1);
  return explicit;
}

uint64_t sub_232CB3F84(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  *(v4 + 8) = *(v4 + 16) - a1[6] + a1[5];
  v5 = sub_232CB3B04(v4, a2, *a1);
  a1[2] = v5;
  a1[5] = sub_232CB3838(v5, v5[1]);
  a1[6] = sub_232CB3838(a1[2], *(a1[2] + 16));

  return sub_232CB3BFC(a1, a2);
}

unint64_t sub_232CB4004(void *a1, unint64_t a2)
{
  v4 = sub_232CB3700();
  if (v4[1] == a1[3])
  {
    explicit = v4[2];
    goto LABEL_3;
  }

  v7 = sub_232CB3700();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v7)
  {
LABEL_3:

    return sub_232CB3BFC(explicit, a2);
  }

  return sub_232CB3E74(a1, a2);
}

uint64_t *sub_232CB4098(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
{
  v6 = 2;
  if (!a5)
  {
    v6 = 0;
  }

  *a1 = v6 | a4 | a3;
  a1[1] = 24;
  a1[2] = a2;
  if ((a3 & 3) != 0)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = sub_232CB571C(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
    sub_232CB5860(v10);
  }

  return a1;
}

void sub_232CB412C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB4144(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x238392C00);
  }

  return result;
}

unint64_t sub_232CB4154(unint64_t *a1)
{
  if ((atomic_load_explicit(&qword_27DDD4D98, memory_order_acquire) & 1) == 0)
  {
    sub_232CB47DC();
  }

  std::mutex::lock(&stru_27DDC8830);
  explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = a1[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_232C85C94();
    }

    v4 = *a1;
    if (v3 >= 0x17)
    {
      operator new();
    }

    *(a1 + 23) = v3;
    if (v3)
    {
      memmove(a1, v4, v3);
    }

    *(a1 + v3) = 0;
    atomic_store(a1, a1 + 3);
    explicit = a1;
  }

  std::mutex::unlock(&stru_27DDC8830);
  return explicit;
}

unint64_t sub_232CB4250(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != a2)
  {
    sub_232CA7F94(a1);
    if (*(a3 + 23) >= 0)
    {
      v7 = *(a3 + 23);
    }

    else
    {
      v6 = *a3;
      v7 = *(a3 + 1);
    }

    JUMPOUT(0x238392920);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    sub_232CB4844(a4);
  }

  result = sub_232CB3D04(a4, 0x18uLL, sub_232CAFA9C);
  v10 = result;
  if (*(a3 + 23) < 0)
  {
    result = sub_232C866C0(result, *a3, *(a3 + 1));
  }

  else
  {
    v11 = *a3;
    *(result + 16) = *(a3 + 2);
    *result = v11;
  }

  *a1 = v10;
  return result;
}

void sub_232CB4394(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      v11 = a4;
      sub_232CB4844(a4);
      a4 = v11;
    }

    v9 = sub_232CB3D04(a4, 0x18uLL, sub_232CAFA9C);
    v10 = *(a3 + 2);
    *v9 = *a3;
    *(v9 + 16) = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *a1 = v9;
  }

  else
  {
    v6 = sub_232CA7F94(a1);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    v8 = *a3;
    *(v7 + 16) = *(a3 + 2);
    *v7 = v8;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

uint64_t *sub_232CB44C8(uint64_t *a1, uint64_t a2)
{
  if (*a1 == &qword_27DDD5660)
  {
    return sub_232CB44E4(a1, a2);
  }

  else
  {
    return sub_232CA7F94(a1);
  }
}

uint64_t *sub_232CB44E4(uint64_t **a1, uint64_t a2)
{
  if (*a1 != &qword_27DDD5660)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = sub_232CB571C(v7, "CHECK failed: IsDefault(default_value): ");
    sub_232CB5858(&v6, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_232CB4874(a2);
  }

  result = sub_232CB3D04(a2, 0x18uLL, sub_232CAFA9C);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_232CB45BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unint64_t sub_232CB45D4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_232CA7F94(a1);
  }

  else
  {
    return sub_232CB45F0(a1, a3, a2);
  }
}

unint64_t sub_232CB45F0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = sub_232CB571C(v13, "CHECK failed: IsDefault(default_value): ");
    sub_232CB5858(&v12, &v6->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
  }

  explicit = atomic_load_explicit((a3 + 24), memory_order_acquire);
  if (explicit)
  {
    if (a2)
    {
      goto LABEL_5;
    }

LABEL_10:
    operator new();
  }

  explicit = sub_232CB4154(a3);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(a2 + 24))
  {
    sub_232CB4874(a2);
  }

  v8 = sub_232CB3D04(a2, 0x18uLL, sub_232CAFA9C);
  v9 = v8;
  if (*(explicit + 23) < 0)
  {
    sub_232C866C0(v8, *explicit, *(explicit + 8));
  }

  else
  {
    v10 = *explicit;
    *(v8 + 16) = *(explicit + 16);
    *v8 = v10;
  }

  *a1 = v9;
  return v9;
}

std::string *sub_232CB4754(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = sub_232CA7F94(result);
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_232CB4154(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

uint64_t *sub_232CB47C8(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sub_232CB47DC()
{
  if (__cxa_guard_acquire(&qword_27DDD4D98))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_27DDC8830, &dword_232B02000);

    __cxa_guard_release(&qword_27DDD4D98);
  }
}

int64_t sub_232CB48B4(uint64_t a1, char *a2)
{
  while (1)
  {
    v5 = *a1;
    v4 = *(a1 + 8);
    if (!v4)
    {
      v10 = v5 - a2;
      v9 = v10 + 16;
      *(a1 + 8) = a2;
      if (((v10 + 16) & 0x80000000) == 0)
      {
        return v9;
      }

      goto LABEL_12;
    }

    v6 = a2 - v5;
    if (a2 <= v5)
    {
      break;
    }

    if (*(a1 + 56) == 1)
    {
      sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = sub_232CB571C(v15, "CHECK failed: !had_error_: ");
      sub_232CB5858(&v14, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v15);
    }

    if (v6 >= 17)
    {
      sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = sub_232CB571C(v15, "CHECK failed: overrun <= kSlopBytes: ");
      sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
      sub_232CB5860(v15);
    }

    a2 = &sub_232CB4A50(a1)[v6];
    if (*(a1 + 56))
    {
      return 0;
    }
  }

  memcpy(v4, (a1 + 16), &a2[-a1 - 16]);
  v11 = *a1;
  *(a1 + 8) += &a2[-a1 - 16];
  v9 = v11 - a2;
  if (((v11 - a2) & 0x80000000) == 0)
  {
    return v9;
  }

LABEL_12:
  sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = sub_232CB571C(v15, "CHECK failed: s >= 0: ");
  sub_232CB5858(&v14, &v12->__r_.__value_.__l.__data_);
  sub_232CB5860(v15);
  return v9;
}

void sub_232CB4A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4A50(char **a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = sub_232CB571C(v13, "CHECK failed: !had_error_: ");
    sub_232CB5858(&v12, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v13);
  }

  if (a1[6])
  {
    v3 = (a1 + 2);
    v5 = *a1;
    v4 = a1[1];
    if (v4)
    {
      memcpy(v4, a1 + 2, v5 - v3);
      v12 = 0;
      do
      {
        v13[0].__r_.__value_.__r.__words[0] = 0;
        if (((*(*a1[6] + 16))(a1[6], v13, &v12) & 1) == 0)
        {
          *(a1 + 56) = 1;
          goto LABEL_14;
        }

        v6 = v12;
      }

      while (!v12);
      v5 = v13[0].__r_.__value_.__r.__words[0];
      if (v12 >= 17)
      {
        *v13[0].__r_.__value_.__l.__data_ = **a1;
        *a1 = &v5[v6 - 16];
        a1[1] = 0;
        return v5;
      }

      if (v12 <= 0)
      {
        v10 = v13[0].__r_.__value_.__r.__words[0];
        sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = sub_232CB571C(v13, "CHECK failed: size > 0: ");
        sub_232CB5858(&v11, &v9->__r_.__value_.__l.__data_);
        sub_232CB5860(v13);
        LODWORD(v6) = v12;
        v5 = v10;
      }

      *v3 = **a1;
      v7 = &v3[v6];
    }

    else
    {
      *v3 = *v5;
      v7 = (a1 + 4);
    }

    *a1 = v7;
    a1[1] = v5;
  }

  else
  {
    *(a1 + 56) = 1;
    v3 = (a1 + 2);
LABEL_14:
    *a1 = (a1 + 4);
  }

  return v3;
}

void sub_232CB4BEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4C0C(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_232CB48B4(a1, a2);
    if (v3)
    {
      (*(**(a1 + 48) + 24))(*(a1 + 48), v3);
    }

    a2 = (a1 + 16);
    *a1 = a1 + 16;
    *(a1 + 8) = a1 + 16;
  }

  return a2;
}

char *sub_232CB4C78(uint64_t a1, char *a2)
{
  while (*(a1 + 56) != 1)
  {
    v3 = &a2[-*a1];
    if ((v3 & 0x80000000) != 0)
    {
      sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = sub_232CB571C(v8, "CHECK failed: overrun >= 0: ");
      sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = sub_232CB571C(v8, "CHECK failed: overrun <= kSlopBytes: ");
      sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      sub_232CB5860(v8);
    }

    a2 = &sub_232CB4A50(a1)[v3];
    if (a2 < *a1)
    {
      return a2;
    }
  }

  return (a1 + 16);
}

void sub_232CB4D70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4D90(uint64_t *a1, char *a2, int a3, unint64_t a4)
{
  v4 = a4;
  for (i = sub_232CB4E34(a1, a4); a3 > i; i = sub_232CB4E34(a1, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = sub_232CB4C78(a1, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t sub_232CB4E34(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1 + 16 < a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = sub_232CB571C(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
    v3 = *a1;
  }

  return v3 - a2 + 16;
}

void sub_232CB4EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB4ED0(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if (sub_232CB4E34(a1, a4) <= a3)
  {
    v8 = sub_232CB4C0C(a1, a4);
    if (((*(**(a1 + 48) + 40))(*(a1 + 48), a2, a3) & 1) == 0)
    {
      *(a1 + 56) = 1;
      v8 = (a1 + 16);
      *a1 = a1 + 32;
    }

    return v8;
  }

  if (*a1 - a4 >= a3)
  {
    memcpy(a4, a2, a3);
    return &a4[a3];
  }

  return sub_232CB4D90(a1, a2, a3, a4);
}

char *sub_232CB4FD8(unint64_t *a1, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_232CB4C78(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    v9 = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 2);
  }

  if (v8 <= v4)
  {
    sub_232CB5704(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_232CB571C(v23, "CHECK failed: ptr < end_: ");
    sub_232CB5858(&v22, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  return sub_232CB5160(a1, v18, v9, v17);
}

void sub_232CB5148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CB5160(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_232CB4ED0(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_232CB4D90(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_232CB51F0(uint64_t *a1, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_232CB4C78(a1, a4);
    v8 = *a1;
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v9) = *(a3 + 23);
  }

  else
  {
    v9 = *(a3 + 8);
  }

  if (v8 <= v4)
  {
    sub_232CB5704(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_232CB571C(v23, "CHECK failed: ptr < end_: ");
    sub_232CB5858(&v22, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v23);
  }

  v11 = 8 * a2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v11 | 0x82;
    v13 = v11 >> 7;
    if (v11 >> 14)
    {
      v12 = v4 + 2;
      do
      {
        *(v12 - 1) = v13 | 0x80;
        v14 = v13 >> 7;
        ++v12;
        v15 = v13 >> 14;
        v13 >>= 7;
      }

      while (v15);
      *(v12 - 1) = v14;
    }

    else
    {
      v4[1] = v13;
      v12 = v4 + 2;
    }
  }

  else
  {
    *v4 = v11 | 2;
    v12 = v4 + 1;
  }

  if (v9 >= 0x80)
  {
    v20 = v9;
    do
    {
      *v12++ = v20 | 0x80;
      v16 = v20 >> 7;
      v21 = v20 >> 14;
      v20 >>= 7;
    }

    while (v21);
  }

  else
  {
    LOBYTE(v16) = v9;
  }

  *v12 = v16;
  v17 = v12 + 1;
  if (*(a3 + 23) >= 0)
  {
    v18 = a3;
  }

  else
  {
    v18 = *a3;
  }

  if (*a1 - v17 < v9)
  {
    return sub_232CB4D90(a1, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_232CB5388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CB53A0(int a1, int a2, const std::string::value_type *a3)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a2 > 3014000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v23 = 76;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program requires version ");
    sub_232CB578C(a2, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v6 = &v18;
    }

    else
    {
      v6 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v7 = v20;
    }

    else
    {
      v7 = v19;
    }

    std::string::append(&v24, v6, v7);
    std::string::append(&v24, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v26 = 0;
    sub_232C8C2D0(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v9 = v17;
    }

    else
    {
      v9 = v16;
    }

    std::string::append(&v24, p_p, v9);
    std::string::append(&v24, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_232CB5A14(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  if (a1 < 3014000)
  {
    LODWORD(v21) = 3;
    v22 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v23 = 87;
    memset(&v24, 0, sizeof(v24));
    std::string::append(&v24, "This program was compiled against version ");
    sub_232CB578C(a1, &v18);
    if ((v20 & 0x80u) == 0)
    {
      v10 = &v18;
    }

    else
    {
      v10 = v18;
    }

    if ((v20 & 0x80u) == 0)
    {
      v11 = v20;
    }

    else
    {
      v11 = v19;
    }

    std::string::append(&v24, v10, v11);
    std::string::append(&v24, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v26 = 0;
    sub_232C8C2D0(&__p, __str);
    if ((v17 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v17 & 0x80u) == 0)
    {
      v13 = v17;
    }

    else
    {
      v13 = v16;
    }

    std::string::append(&v24, v12, v13);
    std::string::append(&v24, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v24, a3);
    std::string::append(&v24, ".)");
    sub_232CB5A14(&v21);
    if (v17 < 0)
    {
      operator delete(__p);
    }

    if (v20 < 0)
    {
      operator delete(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void sub_232CB5694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232CB5704(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_232CB5748(std::string *a1, const std::string::value_type *a2)
{
  v3 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v4 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v4 = v3;
  }

  std::string::append(a1 + 1, a2, v4);
  return a1;
}

_BYTE *sub_232CB578C@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  result = sub_232C8C2D0(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232CB5860(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_232CB5894(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x277D85DF8];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x277D85DF8], "[libprotobuf %s %s:%d] %s\n", off_2789A7B80[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *sub_232CB5914(std::string *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

std::string *sub_232CB5994(std::string *a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

const char **sub_232CB5A14(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&unk_27DDD4DA0);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_281934830(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_232CB5AD4(exception, v1[1], *(v1 + 4), v1 + 3);
    __cxa_throw(exception, &unk_284815AE0, sub_232CB5AD8);
  }

  return result;
}

void sub_232CB5ADC(std::exception *this)
{
  this->__vftable = &unk_284815B08;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_232CB5B3C(std::exception *a1)
{
  sub_232CB5ADC(a1);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CB5B74(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_232CB5B90(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_284815B08;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_232C866C0((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_232CB5C10(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_27DDD4DA8)
  {
    v3 = *(qword_27DDD4DA8 + 8);
    if (v3)
    {
      v4 = *(a1 + 8);
      v5 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
      v6 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v5 >> 47) ^ v5);
      v7 = (0x9DDFEA08EB382D69 * (v6 ^ (v6 >> 47))) ^ a2;
      v8 = vcnt_s8(v3);
      v8.i16[0] = vaddlv_u8(v8);
      if (v8.u32[0] > 1uLL)
      {
        v9 = v7;
        if (v7 >= *&v3)
        {
          v9 = v7 % *&v3;
        }
      }

      else
      {
        v9 = (*&v3 - 1) & v7;
      }

      v10 = *(*qword_27DDD4DA8 + 8 * v9);
      if (v10)
      {
        for (i = *v10; i; i = *i)
        {
          v12 = i[1];
          if (v7 == v12)
          {
            if (i[2] == v4 && *(i + 6) == a2)
            {
              v14 = *(i + 3);
              *a3 = *(i + 2);
              a3[1] = v14;
              return 1;
            }
          }

          else
          {
            if (v8.u32[0] > 1uLL)
            {
              if (v12 >= *&v3)
              {
                v12 %= *&v3;
              }
            }

            else
            {
              v12 &= *&v3 - 1;
            }

            if (v12 != v9)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t sub_232CB5D24(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_232CB5D34(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_232CBF658(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_232CBF380(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_232CC03D0(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      MEMORY[0x238392BE0](*(a1 + 16), 0x1062C802AB6010CLL);
    }
  }

  return a1;
}

unsigned __int8 *sub_232CB5DF4(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = result[8];
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = sub_232CB571C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v10, &v3->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v11);
    }

    v4 = dword_232D01270[v2];
    if (v4 > 5)
    {
      if (v4 <= 8)
      {
LABEL_20:
        **v1 = 0;
        return result;
      }

      if (v4 == 9)
      {
        return sub_232CAFB90(*v1);
      }

      else if (v4 == 10)
      {
        return sub_232CBFF50(*v1);
      }
    }

    else if (v4 > 2 || v4 == 1 || v4 == 2)
    {
      goto LABEL_20;
    }
  }

  else if ((result[10] & 1) == 0)
  {
    v5 = result[8];
    if ((v5 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = sub_232CB571C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v10, &v6->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v11);
    }

    v7 = dword_232D01270[v5];
    if (v7 == 10)
    {
      v9 = **v1;
      if ((v1[10] & 0x10) != 0)
      {
        result = (*(v9 + 112))();
      }

      else
      {
        result = (*(v9 + 40))();
      }
    }

    else if (v7 == 9)
    {
      v8 = *v1;
      if (*(*v1 + 23) < 0)
      {
        **v8 = 0;
        *(v8 + 8) = 0;
      }

      else
      {
        *v8 = 0;
        *(v8 + 23) = 0;
      }
    }

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return result;
}

void sub_232CB6010(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6030(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 1)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 1)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB620C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6244(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 1)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0428(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6C8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 1)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC4F04(v23, v24 + 1);
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB6514(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6554(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 2)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 2)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB6730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6768(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 2)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0468(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6CC);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 2)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC5B5C(v23, v24 + 1);
    result = sub_232CC5FCC(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_232CC5FCC(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB6A38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6A78(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 3)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 3)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB6C54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6C8C(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 3)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC04A8(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6D0);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 3)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC5530(v23, v24 + 1);
    result = sub_232CC59A0(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_232CC59A0(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB6F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB6F9C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 4)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 4)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB7178(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB71B0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC04E8(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6D4);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC6188(v23, v24 + 1);
    result = sub_232CC65F8(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_232CC65F8(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB7480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB74C0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 6)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 6)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_232CB76A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB76DC(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 6)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0528(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6D8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 6)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC67B4(v23, v24 + 1);
    result = sub_232CC6C24(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = sub_232CC6C24(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB79B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB79F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 5)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 5)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_232CB7BD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB7C10(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 5)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0568(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6DC);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 5)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC6DE0(v23, v24 + 1);
    result = sub_232CC7250(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = sub_232CC7250(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB7EE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB7F28(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 7)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v9[9] = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = v9[8];
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 7)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  v9[10] &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB8104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB813C(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 7)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC05A8(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6E0);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 7)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC48E0(v23, v24 + 1);
    result = sub_232CC4D4C(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = sub_232CC4D4C(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB840C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB844C(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_232CBA810(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_232D01270[a3];
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_232CC06A8(v13);
          }

          v14 = sub_232CBF6D8;
          goto LABEL_48;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          if (*(v13 + 24))
          {
            sub_232CC0678(v13);
          }

          v14 = sub_232CBF6E0;
          goto LABEL_48;
        }
      }

      goto LABEL_49;
    }

    switch(v12)
    {
      case 8:
        v13 = *a1;
        if (!v13)
        {
          goto LABEL_49;
        }

        if (*(v13 + 24))
        {
          goto LABEL_42;
        }

        goto LABEL_43;
      case 9:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_232CC0618(v15);
          }

          v16 = sub_232CBF6E4;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_232CC05E8(v15);
          }

          v16 = sub_232CBF6E8;
LABEL_54:
          v17 = sub_232CB3D04(v15, 0x18uLL, v16);
          v17[2] = 0;
          *v17 = v15;
          v17[1] = 0;
          goto LABEL_56;
        }

        break;
      default:
        return *v10;
    }

    operator new();
  }

  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_232CC0738(v13);
        }

        v14 = sub_232CBF6D0;
        goto LABEL_48;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_232CC0708(v13);
        }

        v14 = sub_232CBF6D4;
        goto LABEL_48;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        if (*(v13 + 24))
        {
          sub_232CC06D8(v13);
        }

        v14 = sub_232CBF6DC;
        goto LABEL_48;
      }
    }

LABEL_49:
    operator new();
  }

  if (v12 == 1)
  {
    v13 = *a1;
    if (!v13)
    {
      goto LABEL_49;
    }

    if (*(v13 + 24))
    {
LABEL_42:
      sub_232CC0648(v13);
    }

LABEL_43:
    v14 = sub_232CBF6C8;
LABEL_48:
    v17 = sub_232CB3D04(v13, 0x10uLL, v14);
    *v17 = 0;
    v17[1] = v13;
LABEL_56:
    *v10 = v17;
    return *v10;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      if (*(v13 + 24))
      {
        sub_232CC0768(v13);
      }

      v14 = sub_232CBF6CC;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t sub_232CB873C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_232CBA810(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[a3] != 8)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = sub_232CB571C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = sub_232CB571C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_232CB571C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }

    if (dword_232D01270[v14] != 8)
    {
      sub_232CB5704(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = sub_232CB571C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_232CB8918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB8950(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_232CBA810(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[a3] != 8)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = sub_232CB571C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v27, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    *(v12 + 9) = 1;
    *(v12 + 11) = a4;
    v16 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v16 + 24))
    {
      sub_232CC0428(*a1);
    }

    v17 = sub_232CB3D04(v16, 0x10uLL, sub_232CBF6C8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = sub_232CB571C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v27, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_232CB571C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v27, &v20->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (dword_232D01270[v19] != 8)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = sub_232CB571C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_232CB5858(&v27, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_232CB5704(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = sub_232CB571C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_232CB5858(&v27, &v22->__r_.__value_.__l.__data_);
      sub_232CB5860(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_232CC4F04(v23, v24 + 1);
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_232CC5374(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_232CB8C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB8C60(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_232CBA810(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_232CB571C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v19, &v10->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    if (dword_232D01270[a3] != 9)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = sub_232CB571C(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v19, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_232CB4874(v12);
    }

    v13 = sub_232CB3D04(v12, 0x18uLL, sub_232CAFA9C);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *v8 = v13;
  }

  else
  {
    if (*(v7 + 9))
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = sub_232CB571C(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v19, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_232CB571C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v19, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }

    if (dword_232D01270[v15] != 9)
    {
      sub_232CB5704(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = sub_232CB571C(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v19, &v17->__r_.__value_.__l.__data_);
      sub_232CB5860(v20);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_232CB8E9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void *sub_232CB8ED4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_232CBA810(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_232CB571C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v26, &v10->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    if (dword_232D01270[a3] != 9)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = sub_232CB571C(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v26, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    *(v8 + 9) = 1;
    *(v8 + 11) = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_232CC0798(v12);
    }

    v13 = sub_232CB3D04(v12, 0x18uLL, sub_232CBF6E4);
    v13[2] = 0;
    *v13 = v12;
    v13[1] = 0;
    *v8 = v13;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = sub_232CB571C(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v26, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_232CB571C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v26, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }

    if (dword_232D01270[v15] != 9)
    {
      sub_232CB5704(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = sub_232CB571C(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_232CB5858(&v26, &v17->__r_.__value_.__l.__data_);
      sub_232CB5860(v27);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    sub_232CC74E8(v18, v21 + 1);
    v19 = *(v18 + 16);
    v21 = *v19;
    goto LABEL_23;
  }

  v20 = *(v18 + 8);
  v21 = *v19;
  if (v20 < *v19)
  {
    *(v18 + 8) = v20 + 1;
    return *&v19[2 * v20 + 2];
  }

  if (v21 == *(v18 + 12))
  {
    goto LABEL_22;
  }

LABEL_23:
  *v19 = v21 + 1;
  v23 = *v18;
  if (!*v18)
  {
    operator new();
  }

  if (*(v23 + 24))
  {
    sub_232CB4874(*v18);
  }

  result = sub_232CB3D04(v23, 0x18uLL, sub_232CAFA9C);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_232CB91E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB9220(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232CBA810(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_232CB571C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v20, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    if (dword_232D01270[a3] != 10)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = sub_232CB571C(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v20, &v13->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    *(v10 + 9) = 0;
    *(v10 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    if (*(v9 + 9))
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = sub_232CB571C(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_232CB5858(&v20, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = sub_232CB571C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v20, &v17->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    if (dword_232D01270[v16] != 10)
    {
      sub_232CB5704(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = sub_232CB571C(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v20, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v21);
    }

    v19 = *(v10 + 10);
    *(v10 + 10) = v19 & 0xF0;
    result = *v10;
    if ((v19 & 0x10) != 0)
    {
      return (*(*result + 32))(result, a4);
    }
  }

  return result;
}

void sub_232CB947C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CB94B4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_232CBA810(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_232CB571C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v25, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    if (dword_232D01270[a3] != 10)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = sub_232CB571C(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v25, &v13->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      sub_232CC07D8(*a1);
    }

    v15 = sub_232CB3D04(v14, 0x18uLL, sub_232CBF6E8);
    v15[2] = 0;
    *v15 = v14;
    v15[1] = 0;
    *v10 = v15;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = sub_232CB571C(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_232CB5858(&v25, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = sub_232CB571C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v25, &v18->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }

    if (dword_232D01270[v17] != 10)
    {
      sub_232CB5704(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = sub_232CB571C(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_232CB5858(&v25, &v19->__r_.__value_.__l.__data_);
      sub_232CB5860(v26);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    sub_232CBF800(*v10, v23);
  }

  return v23;
}

void sub_232CB976C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CB97A4(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_232CBF934(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_232CB5DF4(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_232CB980C(uint64_t result, size_t __sz)
{
  v2 = *(result + 8);
  if (v2 <= 0x100 && v2 < __sz)
  {
    v4 = result;
    do
    {
      if (v2)
      {
        LOWORD(v2) = 4 * v2;
      }

      else
      {
        LOWORD(v2) = 1;
      }
    }

    while (v2 < __sz);
    v5 = *(result + 16);
    v6 = *(result + 10);
    v7 = *result;
    if (v2 < 0x101u)
    {
      v8 = 32 * v2;
      if (v7)
      {
        if (*(v7 + 24))
        {
          sub_232CC0818(*result);
          v8 = 32 * v2;
        }

        result = sub_232CB4000(v7, v8);
      }

      else
      {
        result = operator new[](32 * v2);
      }

      v9 = result;
      if (v6)
      {
        result = memmove(result, v5, 32 * v6);
      }
    }

    else
    {
      if (!v7)
      {
        operator new();
      }

      if (*(v7 + 24))
      {
        sub_232CC0854(*result);
      }

      result = sub_232CB3D04(v7, 0x18uLL, sub_232CC0178);
      v9 = result;
      *(result + 8) = 0;
      v10 = (result + 8);
      *(result + 16) = 0;
      *result = result + 8;
      if (v6)
      {
        v11 = &v5[32 * v6];
        v12 = v5;
        do
        {
          v15 = *v12;
          v13 = *(v12 + 3);
          v16 = *(v12 + 8);
          v17 = v13;
          result = sub_232CC0180(v9, v10, &v15);
          v10 = result;
          v12 += 32;
        }

        while (v12 != v11);
      }
    }

    if (*v4)
    {
      v14 = 1;
    }

    else
    {
      v14 = v5 == 0;
    }

    if (!v14)
    {
      result = MEMORY[0x238392BE0](v5, 0x1062C802AB6010CLL);
    }

    *(v4 + 8) = v2;
    *(v4 + 16) = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 10) = 0;
    }
  }

  return result;
}

uint64_t sub_232CB99CC(char *a1, char *a2, void *a3, void *a4)
{
  v4 = 0;
  if (a1 != a2 && a3 != a4)
  {
    v4 = 0;
    do
    {
      v5 = *(a3 + 8);
      if (*a1 >= v5)
      {
        if (*a1 == v5)
        {
          a1 += 32;
          v6 = a3[1];
          if (v6)
          {
            do
            {
              a3 = v6;
              v6 = *v6;
            }

            while (v6);
          }

          else
          {
            do
            {
              v7 = a3;
              a3 = a3[2];
            }

            while (*a3 != v7);
          }
        }

        else
        {
          v8 = a3[1];
          if (v8)
          {
            do
            {
              a3 = v8;
              v8 = *v8;
            }

            while (v8);
          }

          else
          {
            do
            {
              v9 = a3;
              a3 = a3[2];
            }

            while (*a3 != v9);
          }
        }
      }

      else
      {
        a1 += 32;
      }

      ++v4;
    }

    while (a1 != a2 && a3 != a4);
  }

  if (a3 == a4)
  {
    v10 = 0;
  }

  else
  {
    v10 = 0;
    do
    {
      v11 = a3[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v12 = a3[2];
          v13 = *v12 == a3;
          a3 = v12;
        }

        while (!v13);
      }

      ++v10;
      a3 = v12;
    }

    while (v12 != a4);
  }

  return v4 + ((a2 - a1) >> 5) + v10;
}

void sub_232CB9AD4(uint64_t *a1, uint64_t a2, void *a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v11 = *(a3 + 8);
    if ((v11 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_232CB571C(v69, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v68, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }

    v13 = dword_232D01270[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          sub_232CB6030(a1, a2, *(a3 + 8), *a3, a3[2]);
        }

        else if (v13 == 2)
        {
          sub_232CB6554(a1, a2, *(a3 + 8), *a3, a3[2]);
        }
      }

      else if (v13 == 3)
      {
        sub_232CB6A78(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else if (v13 == 4)
      {
        sub_232CB6F9C(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else
      {
        sub_232CB79F4(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        sub_232CB74C0(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      else
      {
        sub_232CB7F28(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      return;
    }

    if (v13 == 8)
    {
      sub_232CB873C(a1, a2, *(a3 + 8), *a3, a3[2]);
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_232C866C0(&v66, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v67 = *(v45 + 2);
        v66 = v46;
      }

      v54 = sub_232CB8C60(a1, a2, v44, a3[2]);
      v55 = v54;
      if (*(v54 + 23) < 0)
      {
        operator delete(*v54);
      }

      v56 = v66;
      *(v55 + 16) = v67;
      *v55 = v56;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v24 = a3[2];
    v25 = sub_232CBA810(a1, a2);
    v26 = v25;
    v25[2] = v24;
    if (v27)
    {
      *(v25 + 8) = *(a3 + 8);
      *(v25 + 11) = *(a3 + 11);
      *(v25 + 9) = 0;
      v28 = *(v25 + 10) & 0xF;
      if ((*(a3 + 10) & 0x10) != 0)
      {
        *(v25 + 10) = v28 | 0x10;
        v65 = (*(**a3 + 16))(*a3, *a1);
        *v26 = v65;
        (*(*v65 + 104))(v65, *a3);
        goto LABEL_151;
      }

      *(v25 + 10) = v28;
      v29 = (*(**a3 + 32))(*a3, *a1);
      *v26 = v29;
LABEL_118:
      (*(*v29 + 64))(v29, *a3);
LABEL_151:
      *(v26 + 10) &= 0xF0u;
      return;
    }

    if (*(v25 + 8) != *(a3 + 8))
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = sub_232CB571C(v69, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_232CB5858(&v68, &v47->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = sub_232CB571C(v69, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_232CB5858(&v68, &v48->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }

    if (*(v26 + 9) == 1)
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = sub_232CB571C(v69, "CHECK failed: !extension->is_repeated: ");
      sub_232CB5858(&v68, &v49->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }

    v50 = *(v26 + 10);
    v51 = *v26;
    v52 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v26 + 10) & 0x10) != 0)
      {
        (*(*v51 + 104))(*v26, v52);
        goto LABEL_151;
      }

      v52 = (*(*v52 + 24))(*a3, *v26);
      v53 = *v51;
    }

    else
    {
      v53 = *v51;
      if ((*(v26 + 10) & 0x10) != 0)
      {
        v29 = (*(v53 + 32))(*v26, v52);
        goto LABEL_118;
      }
    }

    (*(v53 + 64))(v51, v52);
    goto LABEL_151;
  }

  v6 = a3[2];
  v7 = sub_232CBA810(a1, a2);
  v8 = v7;
  v10 = v9;
  v7[2] = v6;
  if (v9)
  {
    *(v7 + 8) = *(a3 + 8);
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  else
  {
    if (*(v7 + 8) != *(a3 + 8))
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = sub_232CB571C(v69, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_232CB5858(&v68, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = sub_232CB571C(v69, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_232CB5858(&v68, &v15->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = sub_232CB571C(v69, "CHECK failed: extension->is_repeated: ");
      sub_232CB5858(&v68, &v16->__r_.__value_.__l.__data_);
      sub_232CB5860(v69);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    sub_232CB5704(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = sub_232CB571C(v69, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v68, &v18->__r_.__value_.__l.__data_);
    sub_232CB5860(v69);
  }

  v19 = dword_232D01270[v17];
  if (v19 <= 5)
  {
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        if (v10)
        {
          v37 = *a1;
          if (!v37)
          {
            operator new();
          }

          if (*(v37 + 24))
          {
            sub_232CC04A8(v37);
          }

          v38 = sub_232CB3D04(v37, 0x10uLL, sub_232CBF6D0);
          *v38 = 0;
          *(v38 + 8) = v37;
          *v8 = v38;
        }

        else
        {
          v38 = *v8;
        }

        sub_232CC5A2C(v38, *a3);
      }

      else if (v19 == 4)
      {
        if (v10)
        {
          v40 = *a1;
          if (!v40)
          {
            operator new();
          }

          if (*(v40 + 24))
          {
            sub_232CC04E8(v40);
          }

          v41 = sub_232CB3D04(v40, 0x10uLL, sub_232CBF6D4);
          *v41 = 0;
          *(v41 + 8) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        sub_232CC6684(v41, *a3);
      }

      else
      {
        if (v10)
        {
          v20 = *a1;
          if (!v20)
          {
            operator new();
          }

          if (*(v20 + 24))
          {
            sub_232CC0568(v20);
          }

          v21 = sub_232CB3D04(v20, 0x10uLL, sub_232CBF6DC);
          *v21 = 0;
          *(v21 + 8) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        sub_232CC72DC(v21, *a3);
      }

      return;
    }

    if (v19 != 1)
    {
      if (v19 == 2)
      {
        if (v10)
        {
          v30 = *a1;
          if (!v30)
          {
            operator new();
          }

          if (*(v30 + 24))
          {
            sub_232CC0468(v30);
          }

          v31 = sub_232CB3D04(v30, 0x10uLL, sub_232CBF6CC);
          *v31 = 0;
          *(v31 + 8) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        sub_232CC6058(v31, *a3);
      }

      return;
    }

    if (v10)
    {
      v34 = *a1;
      if (v34)
      {
        if (*(v34 + 24))
        {
          goto LABEL_80;
        }

        goto LABEL_81;
      }

      goto LABEL_107;
    }

    goto LABEL_82;
  }

  if (v19 <= 7)
  {
    if (v19 == 6)
    {
      if (v10)
      {
        v35 = *a1;
        if (!v35)
        {
          operator new();
        }

        if (*(v35 + 24))
        {
          sub_232CC0528(v35);
        }

        v36 = sub_232CB3D04(v35, 0x10uLL, sub_232CBF6D8);
        *v36 = 0;
        *(v36 + 8) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      sub_232CC6CB0(v36, *a3);
    }

    else
    {
      if (v10)
      {
        v32 = *a1;
        if (!v32)
        {
          operator new();
        }

        if (*(v32 + 24))
        {
          sub_232CC05A8(v32);
        }

        v33 = sub_232CB3D04(v32, 0x10uLL, sub_232CBF6E0);
        *v33 = 0;
        *(v33 + 8) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      sub_232CC4DD8(v33, *a3);
    }
  }

  else
  {
    switch(v19)
    {
      case 8:
        if (v10)
        {
          v34 = *a1;
          if (v34)
          {
            if (*(v34 + 24))
            {
LABEL_80:
              sub_232CC0428(v34);
            }

LABEL_81:
            v39 = sub_232CB3D04(v34, 0x10uLL, sub_232CBF6C8);
            *v39 = 0;
            *(v39 + 8) = v34;
            *v8 = v39;
LABEL_108:
            sub_232CC5400(v39, *a3);
            return;
          }

LABEL_107:
          operator new();
        }

LABEL_82:
        v39 = *v8;
        goto LABEL_108;
      case 9:
        if (v10)
        {
          v42 = *a1;
          if (!v42)
          {
            operator new();
          }

          if (*(v42 + 24))
          {
            sub_232CC0798(v42);
          }

          v43 = sub_232CB3D04(v42, 0x18uLL, sub_232CBF6E4);
          v43[2] = 0;
          *v43 = v42;
          v43[1] = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        sub_232CAFE94(v43, *a3);
        break;
      case 10:
        if (v10)
        {
          v22 = *a1;
          if (!*a1)
          {
            operator new();
          }

          if (*(v22 + 24))
          {
            sub_232CC07D8(*a1);
          }

          v23 = sub_232CB3D04(v22, 0x18uLL, sub_232CBF6E8);
          v23[2] = 0;
          *v23 = v22;
          v23[1] = 0;
          *v8 = v23;
        }

        v57 = *a3;
        if (*(v57 + 8) >= 1)
        {
          v58 = 0;
          do
          {
            v59 = sub_232CBF720(v57, v58);
            v60 = v59;
            v61 = *v8;
            v62 = *(*v8 + 16);
            if (!v62 || (v63 = *(v61 + 8), v63 >= *v62) || (*(v61 + 8) = v63 + 1, (v64 = *&v62[2 * v63 + 2]) == 0))
            {
              v64 = (*(*v59 + 32))(v59, *a1);
              sub_232CBF800(*v8, v64);
            }

            (*(*v64 + 64))(v64, v60);
            ++v58;
          }

          while (v58 < *(v57 + 8));
        }

        break;
    }
  }
}

uint64_t sub_232CBA744(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (*result == *a2)
  {
    v4 = *(result + 8);
    *(result + 8) = *(a2 + 8);
    *(a2 + 8) = v4;
    v5 = *(result + 10);
    *(result + 10) = *(a2 + 10);
    *(a2 + 10) = v5;
    v6 = *(result + 16);
    *(result + 16) = *(a2 + 16);
    *(a2 + 16) = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    sub_232CE835C(&v7, a2);
    sub_232CB97A4(a2);
    sub_232CE835C(a2, v3);
    sub_232CB97A4(v3);
    sub_232CE835C(v3, &v7);
    return sub_232CB5D34(&v7);
  }

  return result;
}

void sub_232CBA7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232CB5D34(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CBA810(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return sub_232CC00AC(v4, &v14) + 5;
  }

  else
  {
    v6 = *(a1 + 10);
    v7 = &v4[32 * v6];
    if (*(a1 + 10))
    {
      v8 = *(a1 + 10);
      do
      {
        v9 = v8 >> 1;
        v10 = &v4[32 * (v8 >> 1)];
        v12 = *v10;
        v11 = (v10 + 8);
        v8 += ~(v8 >> 1);
        if (v12 < a2)
        {
          v4 = v11;
        }

        else
        {
          v8 = v9;
        }
      }

      while (v8);
    }

    if (v4 == v7)
    {
      if (v6 < v3)
      {
LABEL_15:
        *(a1 + 10) = v6 + 1;
        *v4 = a2;
        *(v4 + 1) = 0;
        result = (v4 + 8);
        *(v4 + 2) = 0;
        *(v4 + 3) = 0;
        return result;
      }
    }

    else
    {
      if (*v4 == a2)
      {
        return (v4 + 8);
      }

      if (v6 < v3)
      {
        memmove(v4 + 32, v4, v7 - v4);
        LOWORD(v6) = *(a1 + 10);
        goto LABEL_15;
      }
    }

    sub_232CB980C(a1, v6 + 1);
    return sub_232CBA810(a1, a2);
  }
}

uint64_t sub_232CBA934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v8 = *v1;
    v7 = (v1 + 1);
    v6 = v8;
    if (v8 == v7)
    {
      return 1;
    }

    else
    {
      do
      {
        v4 = sub_232CBAA08(v6 + 40);
        if (!v4)
        {
          break;
        }

        v9 = *(v6 + 1);
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
            v10 = *(v6 + 2);
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v7);
    }
  }

  else
  {
    while (1)
    {
      v3 = *(a1 + 16) + 32 * *(a1 + 10);
      v4 = v1 == v3;
      if (v1 == v3)
      {
        break;
      }

      v5 = (v1 + 1);
      if (!sub_232CBAA08(v5))
      {
        break;
      }

      v1 = v5 + 24;
      if (*(a1 + 8) > 0x100u)
      {
        sub_232CC0884();
      }
    }
  }

  return v4;
}

uint64_t sub_232CBAA08(unsigned __int8 *a1)
{
  v2 = a1[8];
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = sub_232CB571C(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v9, &v3->__r_.__value_.__l.__data_);
    sub_232CB5860(v10);
  }

  if (dword_232D01270[v2] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v4 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = sub_232CBF720(v4, v5);
        if (((*(*v6 + 48))(v6) & 1) == 0)
        {
          break;
        }

        ++v5;
        v4 = *a1;
        if (v5 >= *(*a1 + 8))
        {
          return 1;
        }
      }

      return 0;
    }

    return 1;
  }

  if (a1[10])
  {
    return 1;
  }

  v8 = **a1;
  if ((a1[10] & 0x10) != 0)
  {
    return ((*(v8 + 72))() & 1) != 0;
  }

  result = (*(v8 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

void sub_232CBAB64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CBAB7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_232CB571C(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v14, &v11->__r_.__value_.__l.__data_);
      sub_232CB5860(v15);
    }

    v12 = dword_232D012BC[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = sub_232CB571C(v15, "can't reach here.");
        sub_232CB5858(&v14, &v13->__r_.__value_.__l.__data_);
        sub_232CB5860(v15);
      }

      else
      {
        result = 1;
        if (((1 << v12) & 0x1C) == 0)
        {
          *a6 = 1;
          return result;
        }
      }
    }

    return v12 == a2;
  }

  return result;
}

void sub_232CBACB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CBACD8(uint64_t *a1, unint64_t a2, char *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_284815B40;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (sub_232CBAB7C(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_232CBADB8(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v13 = sub_232CA81A8(a5);
  }

  return sub_232CC2720(v9, v13, a3, a6);
}

char *sub_232CBADB8(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, char *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v46 = sub_232CB844C(a1, a2, 1, *(a4 + 2), *(a4 + 24));

        result = sub_232CC25B8(v46, v8, a7);
        break;
      case 2:
        v47 = sub_232CB844C(a1, a2, 2, *(a4 + 2), *(a4 + 24));

        result = sub_232CC253C(v47, v8, a7);
        break;
      case 3:
        v36 = sub_232CB844C(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        result = sub_232CC22FC(v36, v8, a7);
        break;
      case 4:
        v42 = sub_232CB844C(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        result = sub_232CC230C(v42, v8, a7);
        break;
      case 5:
        v28 = sub_232CB844C(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        result = sub_232CC22DC(v28, v8, a7);
        break;
      case 6:
        v53 = sub_232CB844C(a1, a2, 6, *(a4 + 2), *(a4 + 24));

        result = sub_232CC2444(v53, v8, a7);
        break;
      case 7:
        v61 = sub_232CB844C(a1, a2, 7, *(a4 + 2), *(a4 + 24));

        result = sub_232CC234C(v61, v8, a7);
        break;
      case 8:
        v44 = sub_232CB844C(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        result = sub_232CC233C(v44, v8, a7);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        sub_232CB5704(&v92, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/extension_set_inl.h", 79);
        v13 = sub_232CB571C(&v92, "Non-primitive types can't be packed.");
        sub_232CB5858(&v91, &v13->__r_.__value_.__l.__data_);
        sub_232CB5860(&v92);
        goto LABEL_170;
      case 0xD:
        v29 = sub_232CB844C(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        result = sub_232CC22EC(v29, v8, a7);
        break;
      case 0xE:
        v92.__r_.__value_.__r.__words[0] = sub_232CB844C(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v92.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v93 = a5;
        v94 = v11;
        v8 = sub_232CBFA94(a7, v8, &v92);
        goto LABEL_170;
      case 0xF:
        v19 = sub_232CB844C(a1, a2, 15, *(a4 + 2), *(a4 + 24));

        result = sub_232CC23C8(v19, v8, a7);
        break;
      case 0x10:
        v38 = sub_232CB844C(a1, a2, 16, *(a4 + 2), *(a4 + 24));

        result = sub_232CC24C0(v38, v8, a7);
        break;
      case 0x11:
        v16 = sub_232CB844C(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = sub_232CC231C(v16, v8, a7);
        break;
      case 0x12:
        v50 = sub_232CB844C(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = sub_232CC232C(v50, v8, a7);
        break;
      default:
        goto LABEL_170;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = a6 + 8;
        v48 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_232CB7C10(a1, a2, 1, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          sub_232CB79F4(a1, a2, 1, *(a4 + 24), v48);
        }

        goto LABEL_170;
      case 2:
        v8 = a6 + 4;
        v49 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_232CB76DC(a1, a2, 2, *(a4 + 2), *(a4 + 24), v49);
        }

        else
        {
          sub_232CB74C0(a1, a2, 2, *(a4 + 24), v49);
        }

        goto LABEL_170;
      case 3:
        v37 = *a6;
        if (v37 < 0)
        {
          v37 = (a6[1] << 7) + v37 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v37);
            if (!v8)
            {
              goto LABEL_170;
            }

            v37 = v87;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 3;
          goto LABEL_158;
        }

        v71 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v72 = 3;
        goto LABEL_160;
      case 4:
        v43 = *a6;
        if (v43 < 0)
        {
          v43 = (a6[1] << 7) + v43 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v43);
            if (!v8)
            {
              goto LABEL_170;
            }

            v43 = v88;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v56 = 4;
          goto LABEL_148;
        }

        v73 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v74 = 4;
        goto LABEL_150;
      case 5:
        v31 = *a6;
        if (v31 < 0)
        {
          v31 = (a6[1] << 7) + v31 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v31);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v31) = v86;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 5;
          v83 = v31;
          goto LABEL_136;
        }

        v69 = *(a4 + 24);
        a1 = v12;
        a2 = v11;
        v70 = 5;
        v84 = v31;
        goto LABEL_138;
      case 6:
        v8 = a6 + 8;
        v43 = *a6;
        if (*(a4 + 1) == 1)
        {
          v54 = *(a4 + 2);
          v55 = *(a4 + 24);
          v56 = 6;
LABEL_148:
          sub_232CB71B0(a1, a2, v56, v54, v43, v55);
        }

        else
        {
          v73 = *(a4 + 24);
          v74 = 6;
LABEL_150:
          sub_232CB6F9C(a1, a2, v74, v43, v73);
        }

        goto LABEL_170;
      case 7:
        v8 = a6 + 4;
        v62 = *a6;
        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          v65 = 7;
          v66 = v62;
          goto LABEL_129;
        }

        v79 = *(a4 + 24);
        v80 = 7;
        v81 = *a6;
        goto LABEL_131;
      case 8:
        v45 = *a6;
        if (v45 < 0)
        {
          v45 = (a6[1] << 7) + v45 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v45);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          sub_232CB813C(v12, v11, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          sub_232CB7F28(v12, v11, 8, v45 != 0, *(a4 + 24));
        }

        goto LABEL_170;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v32 = sub_232CB8ED4(a1, a2, 9, v15);
        }

        else
        {
          v32 = sub_232CB8C60(a1, a2, 9, v15);
        }

        v33 = v32;
        v34 = *v8;
        if (*v8 < 0)
        {
          v67 = sub_232CE88A0(v8, *v8);
          if (!v67)
          {
LABEL_101:
            v8 = 0;
            goto LABEL_170;
          }

          v35 = v67;
          v34 = v68;
        }

        else
        {
          v35 = (v8 + 1);
        }

        return sub_232CBFA28(a7, v35, v34, v33);
      case 0xA:
        v57 = *(a4 + 1);
        v58 = *(a4 + 8);
        v59 = *(a4 + 24);
        if (v57 == 1)
        {
          v60 = sub_232CB94B4(a1, a2, 10, v58, v59);
        }

        else
        {
          v60 = sub_232CB9220(a1, a2, 10, v58, v59);
        }

        v75 = a7[11].i32[0];
        v76 = __OFSUB__(v75--, 1);
        a7[11].i32[0] = v75;
        if (v75 < 0 != v76)
        {
          goto LABEL_101;
        }

        ++a7[11].i32[1];
        v77 = (*(*v60 + 88))(v60, v8, a7);
        a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
        v78 = a7[10].i32[0];
        a7[10].i32[0] = 0;
        if (v78 == ((8 * v11) | 3))
        {
          v8 = v77;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_170;
      case 0xB:
        v24 = *(a4 + 1);
        v25 = *(a4 + 8);
        v26 = *(a4 + 24);
        if (v24 == 1)
        {
          v27 = sub_232CB94B4(a1, a2, 11, v25, v26);
        }

        else
        {
          v27 = sub_232CB9220(a1, a2, 11, v25, v26);
        }

        return sub_232CC20BC(a7, v27, v8);
      case 0xD:
        v30 = *a6;
        if (v30 < 0)
        {
          v30 = (a6[1] << 7) + v30 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v30);
            if (!v8)
            {
              goto LABEL_170;
            }

            LODWORD(v30) = v85;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if (*(a4 + 1) == 1)
        {
          v63 = *(a4 + 2);
          v64 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v65 = 13;
          v66 = v30;
LABEL_129:
          sub_232CB6C8C(a1, a2, v65, v63, v66, v64);
        }

        else
        {
          v79 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v80 = 13;
          v81 = v30;
LABEL_131:
          sub_232CB6A78(a1, a2, v80, v81, v79);
        }

        goto LABEL_170;
      case 0xE:
        v52 = *a6;
        if ((v52 & 0x8000000000000000) != 0)
        {
          v82 = (a6[1] << 7) + v52;
          v52 = (v82 - 128);
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, (v82 - 128));
            if (!v8)
            {
              goto LABEL_170;
            }

            v52 = v89;
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        if ((*(a4 + 8))(*(a4 + 16), v52))
        {
          if (*(a4 + 1) == 1)
          {
            sub_232CB8950(v12, v11, 14, *(a4 + 2), v52, *(a4 + 24));
          }

          else
          {
            sub_232CB873C(v12, v11, 14, v52, *(a4 + 24));
          }
        }

        else
        {
          if (*a5)
          {
            v90 = ((*a5 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v90 = sub_232CA81A8(a5);
          }

          sub_232CC20C0(v11, v52, v90);
        }

        goto LABEL_170;
      case 0xF:
        v8 = a6 + 4;
        v20 = *a6;
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          v23 = 15;
          goto LABEL_122;
        }

        v69 = *(a4 + 24);
        v70 = 15;
        goto LABEL_124;
      case 0x10:
        v8 = a6 + 8;
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          v41 = 16;
          goto LABEL_158;
        }

        v71 = *(a4 + 24);
        v72 = 16;
        goto LABEL_160;
      case 0x11:
        v18 = *a6;
        if (v18 < 0)
        {
          v18 = (a6[1] << 7) + v18 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v18);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v20 = -(v18 & 1) ^ (v18 >> 1);
        if (*(a4 + 1) == 1)
        {
          v21 = *(a4 + 2);
          v22 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v23 = 17;
LABEL_122:
          v83 = v20;
LABEL_136:
          sub_232CB6244(a1, a2, v23, v21, v83, v22);
        }

        else
        {
          v69 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v70 = 17;
LABEL_124:
          v84 = v20;
LABEL_138:
          sub_232CB6030(a1, a2, v70, v84, v69);
        }

        goto LABEL_170;
      case 0x12:
        v51 = *a6;
        if ((v51 & 0x8000000000000000) != 0)
        {
          v51 = (a6[1] << 7) + v51 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_232CC21D8(a6, v51);
            if (!v8)
            {
              goto LABEL_170;
            }
          }

          else
          {
            v8 = a6 + 2;
          }
        }

        else
        {
          v8 = a6 + 1;
        }

        v37 = -(v51 & 1) ^ (v51 >> 1);
        if (*(a4 + 1) == 1)
        {
          v39 = *(a4 + 2);
          v40 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v41 = 18;
LABEL_158:
          sub_232CB6768(a1, a2, v41, v39, v37, v40);
        }

        else
        {
          v71 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v72 = 18;
LABEL_160:
          sub_232CB6554(a1, a2, v72, v37, v71);
        }

LABEL_170:
        result = v8;
        break;
      default:
        goto LABEL_170;
    }
  }

  return result;
}

void sub_232CBBA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CBBA8C(uint64_t a1, signed int a2, int a3, char *a4, uint64_t *a5)
{
  v7 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v18 = *(v7 + 1);
    v17 = v7 + 2;
    v16 = v18;
    if (v18)
    {
      v19 = v17;
      do
      {
        if (*(v16 + 32) >= a2)
        {
          v19 = v16;
        }

        v16 = *(v16 + 8 * (*(v16 + 32) < a2));
      }

      while (v16);
      if (v19 != v17)
      {
        do
        {
          v20 = *(v19 + 8);
          if (v20 >= a3)
          {
            break;
          }

          a4 = sub_232CBBBB8(v19 + 40, v20, a4, a5);
          v21 = *(v19 + 1);
          if (v21)
          {
            do
            {
              v22 = v21;
              v21 = *v21;
            }

            while (v21);
          }

          else
          {
            do
            {
              v22 = *(v19 + 2);
              v23 = *v22 == v19;
              v19 = v22;
            }

            while (!v23);
          }

          v19 = v22;
        }

        while (v22 != v17);
      }
    }
  }

  else
  {
    v8 = *(a1 + 10);
    v9 = &v7[8 * v8];
    while (v8)
    {
      v10 = v8 >> 1;
      v11 = &v7[8 * (v8 >> 1)];
      v13 = *v11;
      v12 = v11 + 8;
      v8 += ~(v8 >> 1);
      if (v13 < a2)
      {
        v7 = v12;
      }

      else
      {
        v8 = v10;
      }
    }

    while (v7 != v9)
    {
      v14 = *v7;
      if (v14 >= a3)
      {
        break;
      }

      a4 = sub_232CBBBB8(v7 + 8, v14, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

char *sub_232CBBBB8(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v5 = a3;
  if (a1[9] == 1)
  {
    if (a1[11] == 1)
    {
      if (*(a1 + 3))
      {
        if (*a4 <= a3)
        {
          v5 = sub_232CB4C78(a4, a3);
        }

        v8 = 8 * a2;
        if ((8 * a2) > 0x7F)
        {
          *v5 = v8 | 0x82;
          v33 = v8 >> 7;
          if (v8 >> 14)
          {
            v9 = v5 + 2;
            do
            {
              *(v9 - 1) = v33 | 0x80;
              v34 = v33 >> 7;
              ++v9;
              v35 = v33 >> 14;
              v33 >>= 7;
            }

            while (v35);
            *(v9 - 1) = v34;
          }

          else
          {
            v5[1] = v33;
            v9 = v5 + 2;
          }
        }

        else
        {
          *v5 = v8 | 2;
          v9 = v5 + 1;
        }

        v36 = *(a1 + 3);
        if (v36 > 0x7F)
        {
          *v9 = v36 | 0x80;
          v37 = v36 >> 7;
          if (v36 >> 14)
          {
            v5 = v9 + 2;
            do
            {
              *(v5 - 1) = v37 | 0x80;
              v38 = v37 >> 7;
              ++v5;
              v39 = v37 >> 14;
              v37 >>= 7;
            }

            while (v39);
            *(v5 - 1) = v38;
          }

          else
          {
            v9[1] = v37;
            v5 = v9 + 2;
          }
        }

        else
        {
          *v9 = v36;
          v5 = v9 + 1;
        }

        v40 = a1[8];
        if ((v40 - 19) <= 0xFFFFFFED)
        {
          sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
          v41 = sub_232CB571C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
          sub_232CB5858(&v426, &v41->__r_.__value_.__l.__data_);
          sub_232CB5860(v427);
        }

        switch(v40)
        {
          case 1:
            v343 = *a1;
            if (**a1 >= 1)
            {
              v344 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v343 = *a1;
                }

                *v5 = *sub_232CC7124(v343, v344);
                v5 += 8;
                ++v344;
                v343 = *a1;
              }

              while (v344 < **a1);
            }

            break;
          case 2:
            v345 = *a1;
            if (**a1 >= 1)
            {
              v346 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v345 = *a1;
                }

                *v5 = *sub_232CC6AF8(v345, v346);
                v5 += 4;
                ++v346;
                v345 = *a1;
              }

              while (v346 < **a1);
            }

            break;
          case 3:
            v327 = *a1;
            if (**a1 >= 1)
            {
              v328 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v327 = *a1;
                }

                v329 = *sub_232CC5EA0(v327, v328);
                if (v329 > 0x7F)
                {
                  *v5 = v329 | 0x80;
                  v330 = v329 >> 7;
                  if (v329 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v330 | 0x80;
                      v331 = v330 >> 7;
                      ++v5;
                      v332 = v330 >> 14;
                      v330 >>= 7;
                    }

                    while (v332);
                    *(v5 - 1) = v331;
                  }

                  else
                  {
                    v5[1] = v330;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v329;
                }

                ++v328;
                v327 = *a1;
              }

              while (v328 < **a1);
            }

            break;
          case 4:
            v335 = *a1;
            if (**a1 >= 1)
            {
              v336 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v335 = *a1;
                }

                v337 = *sub_232CC64CC(v335, v336);
                if (v337 > 0x7F)
                {
                  *v5 = v337 | 0x80;
                  v338 = v337 >> 7;
                  if (v337 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v338 | 0x80;
                      v339 = v338 >> 7;
                      ++v5;
                      v340 = v338 >> 14;
                      v338 >>= 7;
                    }

                    while (v340);
                    *(v5 - 1) = v339;
                  }

                  else
                  {
                    v5[1] = v338;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v337;
                }

                ++v336;
                v335 = *a1;
              }

              while (v336 < **a1);
            }

            break;
          case 5:
            v315 = *a1;
            if (**a1 >= 1)
            {
              v316 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v315 = *a1;
                }

                v317 = *sub_232CC5248(v315, v316);
                if (v317 > 0x7F)
                {
                  *v5 = v317 | 0x80;
                  v318 = v317 >> 7;
                  if (v317 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v318 | 0x80;
                      v319 = v318 >> 7;
                      ++v5;
                      v320 = v318 >> 14;
                      v318 >>= 7;
                    }

                    while (v320);
                    *(v5 - 1) = v319;
                  }

                  else
                  {
                    v5[1] = v318;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v317;
                }

                ++v316;
                v315 = *a1;
              }

              while (v316 < **a1);
            }

            break;
          case 6:
            v360 = *a1;
            if (**a1 >= 1)
            {
              v361 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v360 = *a1;
                }

                *v5 = *sub_232CC64CC(v360, v361);
                v5 += 8;
                ++v361;
                v360 = *a1;
              }

              while (v361 < **a1);
            }

            break;
          case 7:
            v362 = *a1;
            if (**a1 >= 1)
            {
              v363 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v362 = *a1;
                }

                *v5 = *sub_232CC5874(v362, v363);
                v5 += 4;
                ++v363;
                v362 = *a1;
              }

              while (v363 < **a1);
            }

            break;
          case 8:
            v341 = *a1;
            if (**a1 >= 1)
            {
              v342 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v341 = *a1;
                }

                *v5++ = *sub_232CC4C20(v341, v342++);
                v341 = *a1;
              }

              while (v342 < **a1);
            }

            break;
          case 9:
          case 10:
          case 11:
          case 12:
            sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1966);
            v42 = sub_232CB571C(v427, "Non-primitive types can't be packed.");
            sub_232CB5858(&v426, &v42->__r_.__value_.__l.__data_);
            sub_232CB5860(v427);
            break;
          case 13:
            v321 = *a1;
            if (**a1 >= 1)
            {
              v322 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v321 = *a1;
                }

                v323 = *sub_232CC5874(v321, v322);
                if (v323 > 0x7F)
                {
                  *v5 = v323 | 0x80;
                  v324 = v323 >> 7;
                  if (v323 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v324 | 0x80;
                      v325 = v324 >> 7;
                      ++v5;
                      v326 = v324 >> 14;
                      v324 >>= 7;
                    }

                    while (v326);
                    *(v5 - 1) = v325;
                  }

                  else
                  {
                    v5[1] = v324;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v323;
                }

                ++v322;
                v321 = *a1;
              }

              while (v322 < **a1);
            }

            break;
          case 14:
            v354 = *a1;
            if (**a1 >= 1)
            {
              v355 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v354 = *a1;
                }

                v356 = *sub_232CC5248(v354, v355);
                if (v356 > 0x7F)
                {
                  *v5 = v356 | 0x80;
                  v357 = v356 >> 7;
                  if (v356 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v357 | 0x80;
                      v358 = v357 >> 7;
                      ++v5;
                      v359 = v357 >> 14;
                      v357 >>= 7;
                    }

                    while (v359);
                    *(v5 - 1) = v358;
                  }

                  else
                  {
                    v5[1] = v357;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v356;
                }

                ++v355;
                v354 = *a1;
              }

              while (v355 < **a1);
            }

            break;
          case 15:
            v313 = *a1;
            if (**a1 >= 1)
            {
              v314 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v313 = *a1;
                }

                *v5 = *sub_232CC5248(v313, v314);
                v5 += 4;
                ++v314;
                v313 = *a1;
              }

              while (v314 < **a1);
            }

            break;
          case 16:
            v333 = *a1;
            if (**a1 >= 1)
            {
              v334 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v333 = *a1;
                }

                *v5 = *sub_232CC5EA0(v333, v334);
                v5 += 8;
                ++v334;
                v333 = *a1;
              }

              while (v334 < **a1);
            }

            break;
          case 17:
            v306 = *a1;
            if (**a1 >= 1)
            {
              v307 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v306 = *a1;
                }

                v308 = sub_232CC5248(v306, v307);
                v309 = (2 * *v308) ^ (*v308 >> 31);
                if (v309 > 0x7F)
                {
                  *v5 = v309 | 0x80;
                  v310 = v309 >> 7;
                  if (v309 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v310 | 0x80;
                      v311 = v310 >> 7;
                      ++v5;
                      v312 = v310 >> 14;
                      v310 >>= 7;
                    }

                    while (v312);
                    *(v5 - 1) = v311;
                  }

                  else
                  {
                    v5[1] = v310;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v309;
                }

                ++v307;
                v306 = *a1;
              }

              while (v307 < **a1);
            }

            break;
          case 18:
            v347 = *a1;
            if (**a1 >= 1)
            {
              v348 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_232CB4C78(a4, v5);
                  v347 = *a1;
                }

                v349 = sub_232CC5EA0(v347, v348);
                v350 = (2 * *v349) ^ (*v349 >> 63);
                if (v350 > 0x7F)
                {
                  *v5 = v350 | 0x80;
                  v351 = v350 >> 7;
                  if (v350 >> 14)
                  {
                    v5 += 2;
                    do
                    {
                      *(v5 - 1) = v351 | 0x80;
                      v352 = v351 >> 7;
                      ++v5;
                      v353 = v351 >> 14;
                      v351 >>= 7;
                    }

                    while (v353);
                    *(v5 - 1) = v352;
                  }

                  else
                  {
                    v5[1] = v351;
                    v5 += 2;
                  }
                }

                else
                {
                  *v5++ = v350;
                }

                ++v348;
                v347 = *a1;
              }

              while (v348 < **a1);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      v11 = a1[8];
      if ((v11 - 19) <= 0xFFFFFFED)
      {
        sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = sub_232CB571C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v426, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(v427);
      }

      switch(v11)
      {
        case 1:
          v13 = *a1;
          if (**a1 >= 1)
          {
            v14 = 0;
            v15 = 8 * a2;
            v16 = (8 * a2) | 0x81;
            v17 = (a2 >> 4) & 0x1FFFFFF;
            v18 = (8 * a2) | 1;
            v19 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v13 = *a1;
              }

              v20 = *sub_232CC7124(v13, v14);
              if (v15 > 0x7F)
              {
                *v5 = v16;
                if (v15 >= 0x4000)
                {
                  v21 = v5 + 2;
                  v22 = v17;
                  do
                  {
                    *(v21 - 1) = v22 | 0x80;
                    v23 = v22 >> 7;
                    v21 = (v21 + 1);
                    v24 = v22 >> 14;
                    v22 >>= 7;
                  }

                  while (v24);
                  *(v21 - 1) = v23;
                }

                else
                {
                  v5[1] = v19;
                  v21 = v5 + 2;
                }
              }

              else
              {
                *v5 = v18;
                v21 = v5 + 1;
              }

              *v21 = v20;
              v5 = (v21 + 1);
              ++v14;
              v13 = *a1;
            }

            while (v14 < **a1);
          }

          break;
        case 2:
          v205 = *a1;
          if (**a1 >= 1)
          {
            v206 = 0;
            v207 = 8 * a2;
            v208 = (a2 >> 4) & 0x1FFFFFF;
            v209 = (8 * a2) | 5;
            v210 = (8 * a2) >> 7;
            v211 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v205 = *a1;
              }

              v212 = *sub_232CC6AF8(v205, v206);
              if (v207 > 0x7F)
              {
                *v5 = v211;
                if (v207 >= 0x4000)
                {
                  v213 = v5 + 2;
                  v214 = v208;
                  do
                  {
                    *(v213 - 1) = v214 | 0x80;
                    v215 = v214 >> 7;
                    v213 = (v213 + 1);
                    v216 = v214 >> 14;
                    v214 >>= 7;
                  }

                  while (v216);
                  *(v213 - 1) = v215;
                }

                else
                {
                  v5[1] = v210;
                  v213 = v5 + 2;
                }
              }

              else
              {
                *v5 = v209;
                v213 = v5 + 1;
              }

              *v213 = v212;
              v5 = (v213 + 1);
              ++v206;
              v205 = *a1;
            }

            while (v206 < **a1);
          }

          break;
        case 3:
          v153 = *a1;
          if (**a1 >= 1)
          {
            v154 = 0;
            v155 = 8 * a2;
            v156 = (8 * a2) | 0x80;
            v157 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v153 = *a1;
              }

              v158 = *sub_232CC5EA0(v153, v154);
              if (v155 > 0x7F)
              {
                *v5 = v156;
                if (v155 >= 0x4000)
                {
                  v159 = v5 + 2;
                  v160 = v157;
                  do
                  {
                    *(v159 - 1) = v160 | 0x80;
                    v161 = v160 >> 7;
                    ++v159;
                    v162 = v160 >> 14;
                    v160 >>= 7;
                  }

                  while (v162);
                  *(v159 - 1) = v161;
                }

                else
                {
                  v5[1] = v155 >> 7;
                  v159 = v5 + 2;
                }
              }

              else
              {
                v159 = v5 + 1;
                *v5 = v155;
              }

              if (v158 > 0x7F)
              {
                *v159 = v158 | 0x80;
                v163 = v158 >> 7;
                if (v158 >> 14)
                {
                  v5 = v159 + 2;
                  do
                  {
                    *(v5 - 1) = v163 | 0x80;
                    v164 = v163 >> 7;
                    ++v5;
                    v165 = v163 >> 14;
                    v163 >>= 7;
                  }

                  while (v165);
                  *(v5 - 1) = v164;
                }

                else
                {
                  v159[1] = v163;
                  v5 = v159 + 2;
                }
              }

              else
              {
                *v159 = v158;
                v5 = v159 + 1;
              }

              ++v154;
              v153 = *a1;
            }

            while (v154 < **a1);
          }

          break;
        case 4:
          v180 = *a1;
          if (**a1 >= 1)
          {
            v181 = 0;
            v182 = 8 * a2;
            v183 = (8 * a2) | 0x80;
            v184 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v180 = *a1;
              }

              v185 = *sub_232CC64CC(v180, v181);
              if (v182 > 0x7F)
              {
                *v5 = v183;
                if (v182 >= 0x4000)
                {
                  v186 = v5 + 2;
                  v187 = v184;
                  do
                  {
                    *(v186 - 1) = v187 | 0x80;
                    v188 = v187 >> 7;
                    ++v186;
                    v189 = v187 >> 14;
                    v187 >>= 7;
                  }

                  while (v189);
                  *(v186 - 1) = v188;
                }

                else
                {
                  v5[1] = v182 >> 7;
                  v186 = v5 + 2;
                }
              }

              else
              {
                v186 = v5 + 1;
                *v5 = v182;
              }

              if (v185 > 0x7F)
              {
                *v186 = v185 | 0x80;
                v190 = v185 >> 7;
                if (v185 >> 14)
                {
                  v5 = v186 + 2;
                  do
                  {
                    *(v5 - 1) = v190 | 0x80;
                    v191 = v190 >> 7;
                    ++v5;
                    v192 = v190 >> 14;
                    v190 >>= 7;
                  }

                  while (v192);
                  *(v5 - 1) = v191;
                }

                else
                {
                  v186[1] = v190;
                  v5 = v186 + 2;
                }
              }

              else
              {
                *v186 = v185;
                v5 = v186 + 1;
              }

              ++v181;
              v180 = *a1;
            }

            while (v181 < **a1);
          }

          break;
        case 5:
          v103 = *a1;
          if (**a1 >= 1)
          {
            v104 = 0;
            v105 = 8 * a2;
            v106 = (8 * a2) | 0x80;
            v107 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v103 = *a1;
              }

              v108 = *sub_232CC5248(v103, v104);
              if (v105 > 0x7F)
              {
                *v5 = v106;
                if (v105 >= 0x4000)
                {
                  v109 = v5 + 2;
                  v110 = v107;
                  do
                  {
                    *(v109 - 1) = v110 | 0x80;
                    v111 = v110 >> 7;
                    ++v109;
                    v112 = v110 >> 14;
                    v110 >>= 7;
                  }

                  while (v112);
                  *(v109 - 1) = v111;
                }

                else
                {
                  v5[1] = v105 >> 7;
                  v109 = v5 + 2;
                }
              }

              else
              {
                v109 = v5 + 1;
                *v5 = v105;
              }

              if (v108 > 0x7F)
              {
                *v109 = v108 | 0x80;
                v113 = v108 >> 7;
                if (v108 >> 14)
                {
                  v5 = v109 + 2;
                  do
                  {
                    *(v5 - 1) = v113 | 0x80;
                    v114 = v113 >> 7;
                    ++v5;
                    v115 = v113 >> 14;
                    v113 >>= 7;
                  }

                  while (v115);
                  *(v5 - 1) = v114;
                }

                else
                {
                  v109[1] = v113;
                  v5 = v109 + 2;
                }
              }

              else
              {
                *v109 = v108;
                v5 = v109 + 1;
              }

              ++v104;
              v103 = *a1;
            }

            while (v104 < **a1);
          }

          break;
        case 6:
          v234 = *a1;
          if (**a1 >= 1)
          {
            v235 = 0;
            v236 = 8 * a2;
            v237 = (8 * a2) | 0x81;
            v238 = (a2 >> 4) & 0x1FFFFFF;
            v239 = (8 * a2) | 1;
            v240 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v234 = *a1;
              }

              v241 = *sub_232CC64CC(v234, v235);
              if (v236 > 0x7F)
              {
                *v5 = v237;
                if (v236 >= 0x4000)
                {
                  v242 = v5 + 2;
                  v243 = v238;
                  do
                  {
                    *(v242 - 1) = v243 | 0x80;
                    v244 = v243 >> 7;
                    v242 = (v242 + 1);
                    v245 = v243 >> 14;
                    v243 >>= 7;
                  }

                  while (v245);
                  *(v242 - 1) = v244;
                }

                else
                {
                  v5[1] = v240;
                  v242 = v5 + 2;
                }
              }

              else
              {
                *v5 = v239;
                v242 = v5 + 1;
              }

              *v242 = v241;
              v5 = (v242 + 1);
              ++v235;
              v234 = *a1;
            }

            while (v235 < **a1);
          }

          break;
        case 7:
          v260 = *a1;
          if (**a1 >= 1)
          {
            v261 = 0;
            v262 = 8 * a2;
            v263 = (a2 >> 4) & 0x1FFFFFF;
            v264 = (8 * a2) | 5;
            v265 = (8 * a2) >> 7;
            v266 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v260 = *a1;
              }

              v267 = *sub_232CC5874(v260, v261);
              if (v262 > 0x7F)
              {
                *v5 = v266;
                if (v262 >= 0x4000)
                {
                  v268 = v5 + 2;
                  v269 = v263;
                  do
                  {
                    *(v268 - 1) = v269 | 0x80;
                    v270 = v269 >> 7;
                    v268 = (v268 + 1);
                    v271 = v269 >> 14;
                    v269 >>= 7;
                  }

                  while (v271);
                  *(v268 - 1) = v270;
                }

                else
                {
                  v5[1] = v265;
                  v268 = v5 + 2;
                }
              }

              else
              {
                *v5 = v264;
                v268 = v5 + 1;
              }

              *v268 = v267;
              v5 = (v268 + 1);
              ++v261;
              v260 = *a1;
            }

            while (v261 < **a1);
          }

          break;
        case 8:
          v194 = *a1;
          if (**a1 >= 1)
          {
            v195 = 0;
            v196 = 8 * a2;
            v197 = (8 * a2) | 0x80;
            v198 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v194 = *a1;
              }

              v199 = *sub_232CC4C20(v194, v195);
              if (v196 > 0x7F)
              {
                *v5 = v197;
                if (v196 >= 0x4000)
                {
                  v200 = v5 + 2;
                  v201 = v198;
                  do
                  {
                    *(v200 - 1) = v201 | 0x80;
                    v202 = v201 >> 7;
                    ++v200;
                    v203 = v201 >> 14;
                    v201 >>= 7;
                  }

                  while (v203);
                  *(v200 - 1) = v202;
                }

                else
                {
                  v5[1] = v196 >> 7;
                  v200 = v5 + 2;
                }
              }

              else
              {
                *v5 = v196;
                v200 = v5 + 1;
              }

              *v200 = v199;
              v5 = v200 + 1;
              ++v195;
              v194 = *a1;
            }

            while (v195 < **a1);
          }

          break;
        case 9:
          v292 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v293 = 0;
            v294 = 8 * a2;
            v295 = -3;
            if ((8 * a2) < 0x80)
            {
              v295 = -2;
            }

            v296 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v296 = -5;
            }

            if (v294 < 0x200000)
            {
              v296 = -4;
            }

            if (v294 >= 0x4000)
            {
              v297 = v296;
            }

            else
            {
              v297 = v295;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v292 = *a1;
              }

              v298 = sub_232CAFC54(v292, v293);
              v299 = *(v298 + 23);
              if (v299 < 0 && (v299 = *(v298 + 8), v299 > 127) || *a4 + v297 - v5 + 16 < v299)
              {
                v5 = sub_232CB51F0(a4, a2, v298, v5);
              }

              else
              {
                if (v294 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v294 >= 0x4000)
                  {
                    v300 = v5 + 2;
                    v301 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v300 - 1) = v301 | 0x80;
                      v302 = v301 >> 7;
                      ++v300;
                      v303 = v301 >> 14;
                      v301 >>= 7;
                    }

                    while (v303);
                    *(v300 - 1) = v302;
                  }

                  else
                  {
                    v5[1] = v294 >> 7;
                    v300 = v5 + 2;
                  }
                }

                else
                {
                  v300 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v300 = v299;
                v304 = v300 + 1;
                if (*(v298 + 23) >= 0)
                {
                  v305 = v298;
                }

                else
                {
                  v305 = *v298;
                }

                memcpy(v304, v305, v299);
                v5 = &v304[v299];
              }

              ++v293;
              v292 = *a1;
            }

            while (v293 < *(*a1 + 8));
          }

          break;
        case 10:
          v133 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v134 = 0;
            v135 = 8 * a2;
            v425 = (8 * a2) | 0x83;
            v136 = (a2 >> 4) & 0x1FFFFFF;
            v137 = (8 * a2) | 3;
            v138 = (8 * a2) | 4;
            v139 = (8 * a2) >> 7;
            v140 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v133 = *a1;
              }

              v141 = sub_232CBF720(v133, v134);
              if (v135 > 0x7F)
              {
                *v5 = v425;
                if (v135 >= 0x4000)
                {
                  v142 = v5 + 2;
                  v143 = v136;
                  do
                  {
                    *(v142 - 1) = v143 | 0x80;
                    v144 = v143 >> 7;
                    ++v142;
                    v145 = v143 >> 14;
                    v143 >>= 7;
                  }

                  while (v145);
                  *(v142 - 1) = v144;
                }

                else
                {
                  v5[1] = v139;
                  v142 = v5 + 2;
                }
              }

              else
              {
                v142 = v5 + 1;
                *v5 = v137;
              }

              v146 = (*(*v141 + 96))(v141, v142, a4);
              if (*a4 <= v146)
              {
                v146 = sub_232CB4C78(a4, v146);
              }

              if (v135 > 0x7F)
              {
                *v146 = v140;
                if (v135 >= 0x4000)
                {
                  v5 = v146 + 2;
                  v147 = v136;
                  do
                  {
                    *(v5 - 1) = v147 | 0x80;
                    v148 = v147 >> 7;
                    ++v5;
                    v149 = v147 >> 14;
                    v147 >>= 7;
                  }

                  while (v149);
                  *(v5 - 1) = v148;
                }

                else
                {
                  v146[1] = v139;
                  v5 = v146 + 2;
                }
              }

              else
              {
                v5 = v146 + 1;
                *v146 = v138;
              }

              ++v134;
              v133 = *a1;
            }

            while (v134 < *(*a1 + 8));
          }

          break;
        case 11:
          v272 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v273 = 0;
            v274 = 8 * a2;
            v275 = (a2 >> 4) & 0x1FFFFFF;
            v276 = (8 * a2) | 2;
            v277 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v272 = *a1;
              }

              v278 = sub_232CBF720(v272, v273);
              v279 = v278;
              if (v274 > 0x7F)
              {
                *v5 = v277;
                if (v274 >= 0x4000)
                {
                  v280 = v5 + 2;
                  v281 = v275;
                  do
                  {
                    *(v280 - 1) = v281 | 0x80;
                    v282 = v281 >> 7;
                    ++v280;
                    v283 = v281 >> 14;
                    v281 >>= 7;
                  }

                  while (v283);
                  *(v280 - 1) = v282;
                }

                else
                {
                  v5[1] = v274 >> 7;
                  v280 = v5 + 2;
                }
              }

              else
              {
                v280 = v5 + 1;
                *v5 = v276;
              }

              v284 = (*(*v278 + 80))(v278);
              if (v284 > 0x7F)
              {
                *v280 = v284 | 0x80;
                v286 = v284 >> 7;
                if (v284 >> 14)
                {
                  v285 = v280 + 2;
                  do
                  {
                    *(v285 - 1) = v286 | 0x80;
                    v287 = v286 >> 7;
                    ++v285;
                    v288 = v286 >> 14;
                    v286 >>= 7;
                  }

                  while (v288);
                  *(v285 - 1) = v287;
                }

                else
                {
                  v280[1] = v286;
                  v285 = v280 + 2;
                }
              }

              else
              {
                *v280 = v284;
                v285 = v280 + 1;
              }

              v5 = (*(*v279 + 96))(v279, v285, a4);
              ++v273;
              v272 = *a1;
            }

            while (v273 < *(*a1 + 8));
          }

          break;
        case 12:
          v78 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v79 = 0;
            v80 = 8 * a2;
            v81 = -3;
            if ((8 * a2) < 0x80)
            {
              v81 = -2;
            }

            v82 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v82 = -5;
            }

            if (v80 < 0x200000)
            {
              v82 = -4;
            }

            if (v80 >= 0x4000)
            {
              v83 = v82;
            }

            else
            {
              v83 = v81;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v78 = *a1;
              }

              v84 = sub_232CAFC54(v78, v79);
              v85 = *(v84 + 23);
              if (v85 < 0 && (v85 = *(v84 + 8), v85 > 127) || *a4 + v83 - v5 + 16 < v85)
              {
                v5 = sub_232CB51F0(a4, a2, v84, v5);
              }

              else
              {
                if (v80 > 0x7F)
                {
                  *v5 = (8 * a2) | 0x82;
                  if (v80 >= 0x4000)
                  {
                    v86 = v5 + 2;
                    v87 = (a2 >> 4) & 0x1FFFFFF;
                    do
                    {
                      *(v86 - 1) = v87 | 0x80;
                      v88 = v87 >> 7;
                      ++v86;
                      v89 = v87 >> 14;
                      v87 >>= 7;
                    }

                    while (v89);
                    *(v86 - 1) = v88;
                  }

                  else
                  {
                    v5[1] = v80 >> 7;
                    v86 = v5 + 2;
                  }
                }

                else
                {
                  v86 = v5 + 1;
                  *v5 = (8 * a2) | 2;
                }

                *v86 = v85;
                v90 = v86 + 1;
                if (*(v84 + 23) >= 0)
                {
                  v91 = v84;
                }

                else
                {
                  v91 = *v84;
                }

                memcpy(v90, v91, v85);
                v5 = &v90[v85];
              }

              ++v79;
              v78 = *a1;
            }

            while (v79 < *(*a1 + 8));
          }

          break;
        case 13:
          v118 = *a1;
          if (**a1 >= 1)
          {
            v119 = 0;
            v120 = 8 * a2;
            v121 = (8 * a2) | 0x80;
            v122 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v118 = *a1;
              }

              v123 = *sub_232CC5874(v118, v119);
              if (v120 > 0x7F)
              {
                *v5 = v121;
                if (v120 >= 0x4000)
                {
                  v124 = v5 + 2;
                  v125 = v122;
                  do
                  {
                    *(v124 - 1) = v125 | 0x80;
                    v126 = v125 >> 7;
                    ++v124;
                    v127 = v125 >> 14;
                    v125 >>= 7;
                  }

                  while (v127);
                  *(v124 - 1) = v126;
                }

                else
                {
                  v5[1] = v120 >> 7;
                  v124 = v5 + 2;
                }
              }

              else
              {
                v124 = v5 + 1;
                *v5 = v120;
              }

              if (v123 > 0x7F)
              {
                *v124 = v123 | 0x80;
                v128 = v123 >> 7;
                if (v123 >> 14)
                {
                  v5 = v124 + 2;
                  do
                  {
                    *(v5 - 1) = v128 | 0x80;
                    v129 = v128 >> 7;
                    ++v5;
                    v130 = v128 >> 14;
                    v128 >>= 7;
                  }

                  while (v130);
                  *(v5 - 1) = v129;
                }

                else
                {
                  v124[1] = v128;
                  v5 = v124 + 2;
                }
              }

              else
              {
                *v124 = v123;
                v5 = v124 + 1;
              }

              ++v119;
              v118 = *a1;
            }

            while (v119 < **a1);
          }

          break;
        case 14:
          v246 = *a1;
          if (**a1 >= 1)
          {
            v247 = 0;
            v248 = 8 * a2;
            v249 = (8 * a2) | 0x80;
            v250 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v246 = *a1;
              }

              v251 = *sub_232CC5248(v246, v247);
              if (v248 > 0x7F)
              {
                *v5 = v249;
                if (v248 >= 0x4000)
                {
                  v252 = v5 + 2;
                  v253 = v250;
                  do
                  {
                    *(v252 - 1) = v253 | 0x80;
                    v254 = v253 >> 7;
                    ++v252;
                    v255 = v253 >> 14;
                    v253 >>= 7;
                  }

                  while (v255);
                  *(v252 - 1) = v254;
                }

                else
                {
                  v5[1] = v248 >> 7;
                  v252 = v5 + 2;
                }
              }

              else
              {
                v252 = v5 + 1;
                *v5 = v248;
              }

              if (v251 > 0x7F)
              {
                *v252 = v251 | 0x80;
                v256 = v251 >> 7;
                if (v251 >> 14)
                {
                  v5 = v252 + 2;
                  do
                  {
                    *(v5 - 1) = v256 | 0x80;
                    v257 = v256 >> 7;
                    ++v5;
                    v258 = v256 >> 14;
                    v256 >>= 7;
                  }

                  while (v258);
                  *(v5 - 1) = v257;
                }

                else
                {
                  v252[1] = v256;
                  v5 = v252 + 2;
                }
              }

              else
              {
                *v252 = v251;
                v5 = v252 + 1;
              }

              ++v247;
              v246 = *a1;
            }

            while (v247 < **a1);
          }

          break;
        case 15:
          v60 = *a1;
          if (**a1 >= 1)
          {
            v61 = 0;
            v62 = 8 * a2;
            v63 = (a2 >> 4) & 0x1FFFFFF;
            v64 = (8 * a2) | 5;
            v65 = (8 * a2) >> 7;
            v66 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v60 = *a1;
              }

              v67 = *sub_232CC5248(v60, v61);
              if (v62 > 0x7F)
              {
                *v5 = v66;
                if (v62 >= 0x4000)
                {
                  v68 = v5 + 2;
                  v69 = v63;
                  do
                  {
                    *(v68 - 1) = v69 | 0x80;
                    v70 = v69 >> 7;
                    v68 = (v68 + 1);
                    v71 = v69 >> 14;
                    v69 >>= 7;
                  }

                  while (v71);
                  *(v68 - 1) = v70;
                }

                else
                {
                  v5[1] = v65;
                  v68 = v5 + 2;
                }
              }

              else
              {
                *v5 = v64;
                v68 = v5 + 1;
              }

              *v68 = v67;
              v5 = (v68 + 1);
              ++v61;
              v60 = *a1;
            }

            while (v61 < **a1);
          }

          break;
        case 16:
          v167 = *a1;
          if (**a1 >= 1)
          {
            v168 = 0;
            v169 = 8 * a2;
            v170 = (8 * a2) | 0x81;
            v171 = (a2 >> 4) & 0x1FFFFFF;
            v172 = (8 * a2) | 1;
            v173 = (8 * a2) >> 7;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v167 = *a1;
              }

              v174 = *sub_232CC5EA0(v167, v168);
              if (v169 > 0x7F)
              {
                *v5 = v170;
                if (v169 >= 0x4000)
                {
                  v175 = v5 + 2;
                  v176 = v171;
                  do
                  {
                    *(v175 - 1) = v176 | 0x80;
                    v177 = v176 >> 7;
                    v175 = (v175 + 1);
                    v178 = v176 >> 14;
                    v176 >>= 7;
                  }

                  while (v178);
                  *(v175 - 1) = v177;
                }

                else
                {
                  v5[1] = v173;
                  v175 = v5 + 2;
                }
              }

              else
              {
                *v5 = v172;
                v175 = v5 + 1;
              }

              *v175 = v174;
              v5 = (v175 + 1);
              ++v168;
              v167 = *a1;
            }

            while (v168 < **a1);
          }

          break;
        case 17:
          v43 = *a1;
          if (**a1 >= 1)
          {
            v44 = 0;
            v45 = 8 * a2;
            v46 = (8 * a2) | 0x80;
            v47 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v43 = *a1;
              }

              v48 = *sub_232CC5248(v43, v44);
              if (v45 > 0x7F)
              {
                *v5 = v46;
                if (v45 >= 0x4000)
                {
                  v49 = v5 + 2;
                  v50 = v47;
                  do
                  {
                    *(v49 - 1) = v50 | 0x80;
                    v51 = v50 >> 7;
                    ++v49;
                    v52 = v50 >> 14;
                    v50 >>= 7;
                  }

                  while (v52);
                  *(v49 - 1) = v51;
                }

                else
                {
                  v5[1] = v45 >> 7;
                  v49 = v5 + 2;
                }
              }

              else
              {
                v49 = v5 + 1;
                *v5 = v45;
              }

              v53 = (2 * v48) ^ (v48 >> 31);
              if (v53 > 0x7F)
              {
                *v49 = v53 | 0x80;
                v54 = v53 >> 7;
                if (v53 >> 14)
                {
                  v5 = v49 + 2;
                  do
                  {
                    *(v5 - 1) = v54 | 0x80;
                    v55 = v54 >> 7;
                    ++v5;
                    v56 = v54 >> 14;
                    v54 >>= 7;
                  }

                  while (v56);
                  *(v5 - 1) = v55;
                }

                else
                {
                  v49[1] = v54;
                  v5 = v49 + 2;
                }
              }

              else
              {
                *v49 = v53;
                v5 = v49 + 1;
              }

              ++v44;
              v43 = *a1;
            }

            while (v44 < **a1);
          }

          break;
        case 18:
          v218 = *a1;
          if (**a1 >= 1)
          {
            v219 = 0;
            v220 = 8 * a2;
            v221 = (8 * a2) | 0x80;
            v222 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_232CB4C78(a4, v5);
                v218 = *a1;
              }

              v223 = *sub_232CC5EA0(v218, v219);
              if (v220 > 0x7F)
              {
                *v5 = v221;
                if (v220 >= 0x4000)
                {
                  v224 = v5 + 2;
                  v225 = v222;
                  do
                  {
                    *(v224 - 1) = v225 | 0x80;
                    v226 = v225 >> 7;
                    ++v224;
                    v227 = v225 >> 14;
                    v225 >>= 7;
                  }

                  while (v227);
                  *(v224 - 1) = v226;
                }

                else
                {
                  v5[1] = v220 >> 7;
                  v224 = v5 + 2;
                }
              }

              else
              {
                v224 = v5 + 1;
                *v5 = v220;
              }

              v228 = (2 * v223) ^ (v223 >> 63);
              if (v228 > 0x7F)
              {
                *v224 = v228 | 0x80;
                v229 = v228 >> 7;
                if (v228 >> 14)
                {
                  v5 = v224 + 2;
                  do
                  {
                    *(v5 - 1) = v229 | 0x80;
                    v230 = v229 >> 7;
                    ++v5;
                    v231 = v229 >> 14;
                    v229 >>= 7;
                  }

                  while (v231);
                  *(v5 - 1) = v230;
                }

                else
                {
                  v224[1] = v229;
                  v5 = v224 + 2;
                }
              }

              else
              {
                *v224 = v228;
                v5 = v224 + 1;
              }

              ++v219;
              v218 = *a1;
            }

            while (v219 < **a1);
          }

          break;
        default:
          return v5;
      }
    }

    return v5;
  }

  if (a1[10])
  {
    return v5;
  }

  v25 = a1[8];
  if ((v25 - 19) <= 0xFFFFFFED)
  {
    sub_232CB5704(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v26 = sub_232CB571C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v426, &v26->__r_.__value_.__l.__data_);
    sub_232CB5860(v427);
  }

  switch(v25)
  {
    case 1:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v32 = v29 >> 14;
        v29 >>= 7;
      }

      while (v32);
      goto LABEL_698;
    case 2:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v217 = v74 >> 14;
        v74 >>= 7;
      }

      while (v217);
      goto LABEL_713;
    case 3:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v166 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v166 | 0x80;
        v368 = v166 >> 7;
        if (v166 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v368 | 0x80;
            v396 = v368 >> 7;
            ++v59;
            v397 = v368 >> 14;
            v368 >>= 7;
          }

          while (v397);
          *(v59 - 1) = v396;
        }

        else
        {
          v5[1] = v368;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v166;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v398 = v385 >> 14;
        v385 >>= 7;
      }

      while (v398);
      goto LABEL_710;
    case 4:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v193 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v193 | 0x80;
        v369 = v193 >> 7;
        if (v193 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v369 | 0x80;
            v399 = v369 >> 7;
            ++v59;
            v400 = v369 >> 14;
            v369 >>= 7;
          }

          while (v400);
          *(v59 - 1) = v399;
        }

        else
        {
          v5[1] = v369;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v193;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v401 = v385 >> 14;
        v385 >>= 7;
      }

      while (v401);
      goto LABEL_710;
    case 5:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v117 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v117 | 0x80;
        v365 = v117 >> 7;
        if (v117 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v365 | 0x80;
            v383 = v365 >> 7;
            ++v59;
            v384 = v365 >> 14;
            v365 >>= 7;
          }

          while (v384);
          *(v59 - 1) = v383;
        }

        else
        {
          v5[1] = v365;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v117;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
        goto LABEL_704;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
        goto LABEL_706;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v387 = v385 >> 14;
        v385 >>= 7;
      }

      while (v387);
      goto LABEL_710;
    case 6:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_360;
      }

      *v5 = v28 | 0x81;
      v29 = v28 >> 7;
      if (!(v28 >> 14))
      {
        goto LABEL_613;
      }

      v30 = (v5 + 2);
      do
      {
        *(v30 - 1) = v29 | 0x80;
        v31 = v29 >> 7;
        v30 = (v30 + 1);
        v410 = v29 >> 14;
        v29 >>= 7;
      }

      while (v410);
      goto LABEL_698;
    case 7:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
        goto LABEL_401;
      }

      *v5 = v73 | 0x85;
      v74 = v73 >> 7;
      if (!(v73 >> 14))
      {
        goto LABEL_617;
      }

      v75 = v5 + 2;
      do
      {
        *(v75 - 1) = v74 | 0x80;
        v76 = v74 >> 7;
        v75 = (v75 + 1);
        v414 = v74 >> 14;
        v74 >>= 7;
      }

      while (v414);
      goto LABEL_713;
    case 8:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      LOBYTE(v131) = *a1;
      v204 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v204 | 0x80;
        v370 = v204 >> 7;
        if (v204 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v370 | 0x80;
            v402 = v370 >> 7;
            ++v59;
            v403 = v370 >> 14;
            v370 >>= 7;
          }

          while (v403);
          *(v59 - 1) = v402;
        }

        else
        {
          v5[1] = v370;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v204;
        v59 = v5 + 1;
      }

      goto LABEL_685;
    case 9:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_232CB51F0(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
        goto LABEL_461;
      }

      v374 = 2;
      v375 = 3;
      v376 = 4;
      if (v95 >> 28)
      {
        v376 = 5;
      }

      if (v95 >= 0x200000)
      {
        v375 = v376;
      }

      if (v95 >= 0x4000)
      {
        v374 = v375;
      }

      if ((v94 + ~&v5[v374] + 16) < v93)
      {
        return sub_232CB51F0(a4, a2, v92, v5);
      }

      *v5 = v95 | 0x82;
      v99 = v95 >> 7;
      if (!(v95 >> 14))
      {
        goto LABEL_627;
      }

      v100 = v5 + 2;
      do
      {
        *(v100 - 1) = v99 | 0x80;
        v101 = v99 >> 7;
        ++v100;
        v416 = v99 >> 14;
        v99 >>= 7;
      }

      while (v416);
      goto LABEL_719;
    case 10:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v150 = *a1;
      v151 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v151 | 0x83;
        v367 = v151 >> 7;
        if (v151 >> 14)
        {
          v152 = v5 + 2;
          do
          {
            *(v152 - 1) = v367 | 0x80;
            v393 = v367 >> 7;
            ++v152;
            v394 = v367 >> 14;
            v367 >>= 7;
          }

          while (v394);
          *(v152 - 1) = v393;
        }

        else
        {
          v5[1] = v367;
          v152 = v5 + 2;
        }
      }

      else
      {
        *v5 = v151 | 3;
        v152 = v5 + 1;
      }

      v59 = (*(*v150 + 96))(v150, v152, a4);
      if (*a4 <= v59)
      {
        v59 = sub_232CB4C78(a4, v59);
      }

      if (v151 <= 0x7F)
      {
        LOBYTE(v131) = v151 | 4;
LABEL_685:
        *v59 = v131;
        return v59 + 1;
      }

      *v59 = v151 | 0x84;
      v380 = v151 >> 7;
      if (!(v151 >> 14))
      {
        goto LABEL_662;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v395 = v380 >> 14;
        v380 >>= 7;
      }

      while (v395);
      goto LABEL_665;
    case 11:
      if ((a1[10] & 0x10) != 0)
      {
        return (*(**a1 + 136))(*a1, a2, v5, a4);
      }

      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v289 = *a1;
      v290 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v290 | 0x82;
        v415 = v290 >> 7;
        if (v290 >> 14)
        {
          v291 = v5 + 2;
          do
          {
            *(v291 - 1) = v415 | 0x80;
            v418 = v415 >> 7;
            ++v291;
            v419 = v415 >> 14;
            v415 >>= 7;
          }

          while (v419);
          *(v291 - 1) = v418;
        }

        else
        {
          v5[1] = v415;
          v291 = v5 + 2;
        }
      }

      else
      {
        *v5 = v290 | 2;
        v291 = v5 + 1;
      }

      v420 = (*(*v289 + 80))(v289);
      if (v420 > 0x7F)
      {
        *v291 = v420 | 0x80;
        v422 = v420 >> 7;
        if (v420 >> 14)
        {
          v421 = v291 + 2;
          do
          {
            *(v421 - 1) = v422 | 0x80;
            v423 = v422 >> 7;
            ++v421;
            v424 = v422 >> 14;
            v422 >>= 7;
          }

          while (v424);
          *(v421 - 1) = v423;
        }

        else
        {
          v291[1] = v422;
          v421 = v291 + 2;
        }
      }

      else
      {
        *v291 = v420;
        v421 = v291 + 1;
      }

      return (*(*v289 + 96))(v289, v421, a4);
    case 12:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_232CB51F0(a4, a2, v92, v5);
        }
      }

      v94 = *a4;
      v95 = 8 * a2;
      if ((8 * a2) < 0x80)
      {
LABEL_461:
        if (v94 - v5 + 14 >= v93)
        {
          *v5 = v95 | 2;
          v100 = v5 + 1;
LABEL_720:
          *v100 = v93;
          v417 = v100 + 1;
          if (*(v92 + 23) < 0)
          {
            v92 = *v92;
          }

          memcpy(v417, v92, v93);
          return &v417[v93];
        }
      }

      else
      {
        v96 = 2;
        v97 = 3;
        v98 = 4;
        if (v95 >> 28)
        {
          v98 = 5;
        }

        if (v95 >= 0x200000)
        {
          v97 = v98;
        }

        if (v95 >= 0x4000)
        {
          v96 = v97;
        }

        if ((v94 + ~&v5[v96] + 16) >= v93)
        {
          *v5 = v95 | 0x82;
          v99 = v95 >> 7;
          if (v95 >> 14)
          {
            v100 = v5 + 2;
            do
            {
              *(v100 - 1) = v99 | 0x80;
              v101 = v99 >> 7;
              ++v100;
              v102 = v99 >> 14;
              v99 >>= 7;
            }

            while (v102);
LABEL_719:
            *(v100 - 1) = v101;
          }

          else
          {
LABEL_627:
            v5[1] = v99;
            v100 = v5 + 2;
          }

          goto LABEL_720;
        }
      }

      return sub_232CB51F0(a4, a2, v92, v5);
    case 13:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v131 = *a1;
      v132 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v132 | 0x80;
        v366 = v132 >> 7;
        if (v132 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v366 | 0x80;
            v388 = v366 >> 7;
            ++v59;
            v389 = v366 >> 14;
            v366 >>= 7;
          }

          while (v389);
          *(v59 - 1) = v388;
        }

        else
        {
          v5[1] = v366;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v132;
        v59 = v5 + 1;
      }

      if (v131 <= 0x7F)
      {
        goto LABEL_685;
      }

      *v59 = v131 | 0x80;
      v390 = v131 >> 7;
      if (!(v131 >> 14))
      {
        v59[1] = v390;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v390 | 0x80;
        v391 = v390 >> 7;
        ++v5;
        v392 = v390 >> 14;
        v390 >>= 7;
      }

      while (v392);
      *(v5 - 1) = v391;
      return v5;
    case 14:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v116 = *a1;
      v259 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v259 | 0x80;
        v372 = v259 >> 7;
        if (v259 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v372 | 0x80;
            v411 = v372 >> 7;
            ++v59;
            v412 = v372 >> 14;
            v372 >>= 7;
          }

          while (v412);
          *(v59 - 1) = v411;
        }

        else
        {
          v5[1] = v372;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v259;
        v59 = v5 + 1;
      }

      if (v116 <= 0x7F)
      {
LABEL_704:
        *v59 = v116;
        return v59 + 1;
      }

      *v59 = v116 | 0x80;
      v385 = v116 >> 7;
      if (!(v116 >> 14))
      {
LABEL_706:
        v59[1] = v385;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v385 | 0x80;
        v386 = v385 >> 7;
        ++v5;
        v413 = v385 >> 14;
        v385 >>= 7;
      }

      while (v413);
LABEL_710:
      *(v5 - 1) = v386;
      return v5;
    case 15:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v72 = *a1;
      v73 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_401:
        *v5 = v73 | 5;
        v75 = v5 + 1;
      }

      else
      {
        *v5 = v73 | 0x85;
        v74 = v73 >> 7;
        if (v73 >> 14)
        {
          v75 = v5 + 2;
          do
          {
            *(v75 - 1) = v74 | 0x80;
            v76 = v74 >> 7;
            v75 = (v75 + 1);
            v77 = v74 >> 14;
            v74 >>= 7;
          }

          while (v77);
LABEL_713:
          *(v75 - 1) = v76;
        }

        else
        {
LABEL_617:
          v5[1] = v74;
          v75 = v5 + 2;
        }
      }

      *v75 = v72;
      return (v75 + 1);
    case 16:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v27 = *a1;
      v28 = 8 * a2;
      if ((8 * a2) <= 0x7F)
      {
LABEL_360:
        *v5 = v28 | 1;
        v30 = (v5 + 1);
      }

      else
      {
        *v5 = v28 | 0x81;
        v29 = v28 >> 7;
        if (v28 >> 14)
        {
          v30 = (v5 + 2);
          do
          {
            *(v30 - 1) = v29 | 0x80;
            v31 = v29 >> 7;
            v30 = (v30 + 1);
            v179 = v29 >> 14;
            v29 >>= 7;
          }

          while (v179);
LABEL_698:
          *(v30 - 1) = v31;
        }

        else
        {
LABEL_613:
          v5[1] = v29;
          v30 = (v5 + 2);
        }
      }

      *v30 = v27;
      return (v30 + 1);
    case 17:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v57 = *a1;
      v58 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v58 | 0x80;
        v364 = v58 >> 7;
        if (v58 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v364 | 0x80;
            v377 = v364 >> 7;
            ++v59;
            v378 = v364 >> 14;
            v364 >>= 7;
          }

          while (v378);
          *(v59 - 1) = v377;
        }

        else
        {
          v5[1] = v364;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v58;
        v59 = v5 + 1;
      }

      v379 = (2 * v57) ^ (v57 >> 31);
      if (v379 <= 0x7F)
      {
        *v59 = v379;
        return v59 + 1;
      }

      *v59 = v379 | 0x80;
      v380 = v379 >> 7;
      if (!(v379 >> 14))
      {
LABEL_662:
        v59[1] = v380;
        return v59 + 2;
      }

      v5 = v59 + 2;
      do
      {
        *(v5 - 1) = v380 | 0x80;
        v381 = v380 >> 7;
        ++v5;
        v382 = v380 >> 14;
        v380 >>= 7;
      }

      while (v382);
LABEL_665:
      *(v5 - 1) = v381;
      return v5;
    case 18:
      if (*a4 <= v5)
      {
        v5 = sub_232CB4C78(a4, v5);
      }

      v232 = *a1;
      v233 = 8 * a2;
      if ((8 * a2) > 0x7F)
      {
        *v5 = v233 | 0x80;
        v371 = v233 >> 7;
        if (v233 >> 14)
        {
          v59 = v5 + 2;
          do
          {
            *(v59 - 1) = v371 | 0x80;
            v404 = v371 >> 7;
            ++v59;
            v405 = v371 >> 14;
            v371 >>= 7;
          }

          while (v405);
          *(v59 - 1) = v404;
        }

        else
        {
          v5[1] = v371;
          v59 = v5 + 2;
        }
      }

      else
      {
        *v5 = v233;
        v59 = v5 + 1;
      }

      v406 = (2 * v232) ^ (v232 >> 63);
      if (v406 > 0x7F)
      {
        *v59 = v406 | 0x80;
        v407 = v406 >> 7;
        if (v406 >> 14)
        {
          v5 = v59 + 2;
          do
          {
            *(v5 - 1) = v407 | 0x80;
            v408 = v407 >> 7;
            ++v5;
            v409 = v407 >> 14;
            v407 >>= 7;
          }

          while (v409);
          *(v5 - 1) = v408;
        }

        else
        {
          v59[1] = v407;
          return v59 + 2;
        }
      }

      else
      {
        *v59 = v406;
        return v59 + 1;
      }

      return v5;
    default:
      return v5;
  }
}

void sub_232CBE67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CBE6AC(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_232CBFEC4(*v1, v1 + 1, &v7);
    return v7;
  }

  else if (*(a1 + 10))
  {
    v2 = 0;
    v3 = &v1[8 * *(a1 + 10)];
    v4 = *(a1 + 16);
    do
    {
      v5 = *v4;
      v4 += 8;
      v2 += sub_232CBE740(v1 + 1, v5);
      v1 = v4;
    }

    while (v4 != v3);
  }

  else
  {
    return 0;
  }

  return v2;
}

unint64_t sub_232CBE740(_DWORD **a1, int a2)
{
  if (*(a1 + 9) == 1)
  {
    v4 = *(a1 + 8);
    v5 = v4 - 19;
    if (*(a1 + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v102, &v6->__r_.__value_.__l.__data_);
        sub_232CB5860(v103);
      }

      switch(v4)
      {
        case 1:
        case 6:
        case 16:
          v22 = 8 * **a1;
          goto LABEL_71;
        case 2:
        case 7:
        case 15:
          v22 = 4 * **a1;
          goto LABEL_71;
        case 3:
          v45 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v46 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_232CC5EA0(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
            v45 = *a1;
          }

          while (v46 < **a1);
          goto LABEL_71;
        case 4:
          v47 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v48 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_232CC64CC(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
            v47 = *a1;
          }

          while (v48 < **a1);
          goto LABEL_71;
        case 5:
          v37 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v38 = 0;
          do
          {
            v39 = sub_232CC5248(v37, v38);
            v40 = (9 * (__clz(*v39 | 1) ^ 0x1F) + 73) >> 6;
            if (*v39 >= 0)
            {
              v41 = v40;
            }

            else
            {
              v41 = 10;
            }

            v22 += v41;
            ++v38;
            v37 = *a1;
          }

          while (v38 < **a1);
          goto LABEL_71;
        case 8:
          v22 = **a1;
          goto LABEL_71;
        case 9:
        case 10:
        case 11:
        case 12:
          sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = sub_232CB571C(v103, "Non-primitive types can't be packed.");
          sub_232CB5858(&v102, &v7->__r_.__value_.__l.__data_);
          sub_232CB5860(v103);
          goto LABEL_7;
        case 13:
          v30 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v31 = 0;
          do
          {
            v22 += (9 * (__clz(*sub_232CC5874(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
            v30 = *a1;
          }

          while (v31 < **a1);
          goto LABEL_71;
        case 14:
          v32 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v33 = 0;
          do
          {
            v34 = sub_232CC5248(v32, v33);
            v35 = (9 * (__clz(*v34 | 1) ^ 0x1F) + 73) >> 6;
            if (*v34 >= 0)
            {
              v36 = v35;
            }

            else
            {
              v36 = 10;
            }

            v22 += v36;
            ++v33;
            v32 = *a1;
          }

          while (v33 < **a1);
          goto LABEL_71;
        case 17:
          v27 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v28 = 0;
          do
          {
            v29 = sub_232CC5248(v27, v28);
            v22 += (9 * (__clz((2 * *v29) ^ (*v29 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            ++v28;
            v27 = *a1;
          }

          while (v28 < **a1);
          goto LABEL_71;
        case 18:
          v42 = *a1;
          if (**a1 < 1)
          {
            goto LABEL_7;
          }

          v22 = 0;
          v43 = 0;
          do
          {
            v44 = sub_232CC5EA0(v42, v43);
            v22 += (9 * (__clz((2 * *v44) ^ (*v44 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            ++v43;
            v42 = *a1;
          }

          while (v43 < **a1);
LABEL_71:
          *(a1 + 3) = v22;
          v49 = v22 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
          if (v22)
          {
            v8 = v49;
          }

          else
          {
            v8 = 0;
          }

          break;
        default:
LABEL_7:
          v8 = 0;
          *(a1 + 3) = 0;
          break;
      }
    }

    else
    {
      if (v5 > 0xFFFFFFED)
      {
        v11 = 0;
        v10 = *(a1 + 8);
      }

      else
      {
        sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v102, &v9->__r_.__value_.__l.__data_);
        sub_232CB5860(v103);
        v10 = *(a1 + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_232CB5858(&v102, &v17->__r_.__value_.__l.__data_);
        sub_232CB5860(v103);
      }

      v18 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v16;
      switch(v10)
      {
        case 1:
        case 6:
        case 16:
          v19 = v18 + 8;
          goto LABEL_27;
        case 2:
        case 7:
        case 15:
          v19 = v18 + 4;
LABEL_27:
          v8 = v19 * **a1;
          break;
        case 3:
          v85 = *a1;
          v86 = **a1;
          v8 = v18 * v86;
          if (v86 >= 1)
          {
            v87 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_232CC5EA0(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
              v85 = *a1;
            }

            while (v87 < **a1);
          }

          break;
        case 4:
          v88 = *a1;
          v89 = **a1;
          v8 = v18 * v89;
          if (v89 >= 1)
          {
            v90 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_232CC64CC(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
              v88 = *a1;
            }

            while (v90 < **a1);
          }

          break;
        case 5:
          v75 = *a1;
          v76 = **a1;
          v8 = v18 * v76;
          if (v76 >= 1)
          {
            v77 = 0;
            do
            {
              v78 = sub_232CC5248(v75, v77);
              v79 = (9 * (__clz(*v78 | 1) ^ 0x1F) + 73) >> 6;
              if (*v78 >= 0)
              {
                v80 = v79;
              }

              else
              {
                v80 = 10;
              }

              v8 += v80;
              ++v77;
              v75 = *a1;
            }

            while (v77 < **a1);
          }

          break;
        case 8:
          v8 = **a1 + **a1 * v18;
          break;
        case 9:
          v96 = *a1;
          v97 = (*a1)[2];
          v8 = v18 * v97;
          if (v97 >= 1)
          {
            v98 = 0;
            do
            {
              v99 = sub_232CAFC54(v96, v98);
              v100 = *(v99 + 23);
              if ((v100 & 0x80u) != 0)
              {
                v100 = *(v99 + 8);
              }

              v8 += v100 + ((9 * (__clz(v100 | 1) ^ 0x1F) + 73) >> 6);
              ++v98;
              v96 = *a1;
            }

            while (v98 < (*a1)[2]);
          }

          break;
        case 10:
          v58 = *a1;
          v59 = (*a1)[2];
          v8 = v18 * v59;
          if (v59 >= 1)
          {
            v60 = 0;
            do
            {
              v61 = sub_232CBF720(v58, v60);
              v8 += (*(*v61 + 72))(v61);
              ++v60;
              v58 = *a1;
            }

            while (v60 < (*a1)[2]);
          }

          break;
        case 11:
          v64 = *a1;
          v65 = (*a1)[2];
          v8 = v18 * v65;
          if (v65 >= 1)
          {
            v66 = 0;
            do
            {
              v67 = sub_232CBF720(v64, v66);
              v68 = (*(*v67 + 72))(v67);
              v8 += v68 + ((9 * (__clz(v68 | 1) ^ 0x1F) + 73) >> 6);
              ++v66;
              v64 = *a1;
            }

            while (v66 < (*a1)[2]);
          }

          break;
        case 12:
          v91 = *a1;
          v92 = (*a1)[2];
          v8 = v18 * v92;
          if (v92 >= 1)
          {
            v93 = 0;
            do
            {
              v94 = sub_232CAFC54(v91, v93);
              v95 = *(v94 + 23);
              if ((v95 & 0x80u) != 0)
              {
                v95 = *(v94 + 8);
              }

              v8 += v95 + ((9 * (__clz(v95 | 1) ^ 0x1F) + 73) >> 6);
              ++v93;
              v91 = *a1;
            }

            while (v93 < (*a1)[2]);
          }

          break;
        case 13:
          v55 = *a1;
          v56 = **a1;
          v8 = v18 * v56;
          if (v56 >= 1)
          {
            v57 = 0;
            do
            {
              v8 += (9 * (__clz(*sub_232CC5874(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
              v55 = *a1;
            }

            while (v57 < **a1);
          }

          break;
        case 14:
          v69 = *a1;
          v70 = **a1;
          v8 = v18 * v70;
          if (v70 >= 1)
          {
            v71 = 0;
            do
            {
              v72 = sub_232CC5248(v69, v71);
              v73 = (9 * (__clz(*v72 | 1) ^ 0x1F) + 73) >> 6;
              if (*v72 >= 0)
              {
                v74 = v73;
              }

              else
              {
                v74 = 10;
              }

              v8 += v74;
              ++v71;
              v69 = *a1;
            }

            while (v71 < **a1);
          }

          break;
        case 17:
          v50 = *a1;
          v51 = **a1;
          v8 = v18 * v51;
          if (v51 >= 1)
          {
            v52 = 0;
            do
            {
              v53 = sub_232CC5248(v50, v52);
              v8 += (9 * (__clz((2 * *v53) ^ (*v53 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              ++v52;
              v50 = *a1;
            }

            while (v52 < **a1);
          }

          break;
        case 18:
          v81 = *a1;
          v82 = **a1;
          v8 = v18 * v82;
          if (v82 >= 1)
          {
            v83 = 0;
            do
            {
              v84 = sub_232CC5EA0(v81, v83);
              v8 += (9 * (__clz((2 * *v84) ^ (*v84 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              ++v83;
              v81 = *a1;
            }

            while (v83 < **a1);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (*(a1 + 10))
  {
    return 0;
  }

  else
  {
    v12 = *(a1 + 8);
    if ((v12 - 19) > 0xFFFFFFED)
    {
      v15 = 0;
      v14 = *(a1 + 8);
    }

    else
    {
      sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v102, &v13->__r_.__value_.__l.__data_);
      sub_232CB5860(v103);
      v14 = *(a1 + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      sub_232CB5704(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = sub_232CB571C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v102, &v21->__r_.__value_.__l.__data_);
      sub_232CB5860(v103);
    }

    v8 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << v20;
    switch(v14)
    {
      case 1:
      case 6:
      case 16:
        v8 += 8;
        return v8;
      case 2:
      case 7:
      case 15:
        v8 += 4;
        return v8;
      case 3:
      case 4:
        v23 = *a1;
        goto LABEL_116;
      case 5:
      case 14:
        v24 = (9 * (__clz(*a1 | 1) ^ 0x1F) + 73) >> 6;
        if (*a1 >= 0)
        {
          v25 = v24;
        }

        else
        {
          v25 = 10;
        }

        v8 += v25;
        return v8;
      case 8:
        return ++v8;
      case 9:
      case 12:
        v26 = *(*a1 + 1);
        if (*(*a1 + 23) >= 0)
        {
          v26 = *(*a1 + 23);
        }

        v8 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 10:
        v8 += (*(**a1 + 72))();
        return v8;
      case 11:
        v62 = **a1;
        if ((*(a1 + 10) & 0x10) != 0)
        {
          v63 = (*(v62 + 88))();
        }

        else
        {
          v63 = (*(v62 + 72))();
        }

        v8 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6);
        return v8;
      case 13:
        v54 = *a1;
        goto LABEL_103;
      case 17:
        v54 = (2 * *a1) ^ (*a1 >> 31);
LABEL_103:
        v8 += (9 * (__clz(v54 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 18:
        v23 = (2 * *a1) ^ (*a1 >> 63);
LABEL_116:
        v8 += (9 * (__clz(v23 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v8;
    }
  }

  return v8;
}

void sub_232CBF340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CBF380(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  v3 = v2 - 19;
  if (result[9] != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = sub_232CB571C(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_232CB5858(&v12, &v7->__r_.__value_.__l.__data_);
      result = sub_232CB5860(v13);
    }

    v8 = dword_232D01270[v2];
    if (v8 == 10)
    {
      result = *v1;
      if ((v1[10] & 0x10) != 0)
      {
        if (!result)
        {
          return result;
        }
      }

      else if (!result)
      {
        return result;
      }

      return (*(*result + 8))(result);
    }

    if (v8 == 9)
    {
      v9 = *v1;
      if (v9)
      {
        if (v9[23] < 0)
        {
          operator delete(*v9);
        }

        v10 = 0x1012C40EC159624;
        v6 = v9;
        return MEMORY[0x238392C10](v6, v10);
      }
    }

    return result;
  }

  if (v3 <= 0xFFFFFFED)
  {
    sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = sub_232CB571C(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_232CB5858(&v12, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v13);
  }

  v5 = dword_232D01270[v2];
  if (v5 > 5)
  {
    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_232CC6C20();
      }

      else
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_232CC4D48();
      }

      goto LABEL_44;
    }

    if (v5 != 8)
    {
      if (v5 == 9)
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_232CC74E4();
      }

      else
      {
        if (v5 != 10)
        {
          return result;
        }

        v11 = *v1;
        if (!v11)
        {
          return result;
        }

        sub_232CC0020(v11);
        v6 = sub_232CA84A4(v11);
      }

      v10 = 0x1020C4014030ADELL;
      return MEMORY[0x238392C10](v6, v10);
    }

LABEL_34:
    result = *v1;
    if (!*v1)
    {
      return result;
    }

    v6 = sub_232CC5370();
    goto LABEL_44;
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_232CC599C();
    }

    else if (v5 == 4)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_232CC65F4();
    }

    else
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_232CC724C();
    }

    goto LABEL_44;
  }

  if (v5 == 1)
  {
    goto LABEL_34;
  }

  if (v5 == 2)
  {
    result = *v1;
    if (*v1)
    {
      v6 = sub_232CC5FC8();
LABEL_44:
      v10 = 0x1080C4057E67DB5;
      return MEMORY[0x238392C10](v6, v10);
    }
  }

  return result;
}

void sub_232CBF624(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_232CBF658(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_232CBF380(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_232CBF6E8(uint64_t *a1)
{
  sub_232CC0020(a1);

  return sub_232CA84A4(a1);
}

uint64_t sub_232CBF720(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_232CBF7E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CBF800(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return sub_232CBF854(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_232CBF854(result, a2);
  }

  v4 = v2 + 2;
  v5 = *(result + 8);
  if (v5 < v3)
  {
    *&v4[2 * v3] = *&v4[2 * v5];
  }

  *&v4[2 * v5] = a2;
  *(result + 8) = v5 + 1;
  ++**(result + 16);
  return result;
}

uint64_t sub_232CBF854(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    v5 = *(result + 12);
    goto LABEL_11;
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  if (v5 == v6)
  {
LABEL_11:
    result = sub_232CC74E8(result, v5 + 1);
    goto LABEL_12;
  }

  v7 = *v4;
  if (v7 != v6)
  {
    if (v5 >= v7)
    {
      v9 = v7 + 1;
      goto LABEL_13;
    }

    *&v4[2 * v7 + 2] = *&v4[2 * v5 + 2];
LABEL_12:
    v4 = *(v3 + 16);
    v9 = *v4 + 1;
LABEL_13:
    *v4 = v9;
    goto LABEL_14;
  }

  result = *&v4[2 * v5 + 2];
  if (result)
  {
    v8 = *v3 == 0;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    result = (*(*result + 8))(result);
    v4 = *(v3 + 16);
  }

LABEL_14:
  v10 = *(v3 + 8);
  *(v3 + 8) = v10 + 1;
  *&v4[2 * v10 + 2] = a2;
  return result;
}

unsigned __int8 *sub_232CBF934(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_232CB5DF4(v3 + 40);
      v4 = *(v3 + 1);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = *(v3 + 2);
          v6 = *v5 == v3;
          v3 = v5;
        }

        while (!v6);
      }

      v3 = v5;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t *sub_232CBF9A4(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_232CB9AD4(a3, *(v5 + 8), v5 + 5);
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

_OWORD *sub_232CBFA28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x238392920](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return sub_232CE8580();
  }
}

char *sub_232CBFA94(uint64_t a1, char *a2, __int128 *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_20;
    }

    v5 = v7;
  }

  else
  {
    result = a2 + 1;
  }

  v8 = *(a1 + 8);
  v9 = v8 - result;
  if (v5 <= v8 - result)
  {
LABEL_15:
    v15 = &result[v5];
    v16 = a3[1];
    v19 = *a3;
    v20 = v16;
    v21 = *(a3 + 4);
    result = sub_232CBFCE4(result, v15, &v19);
    if (v15 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v19 = *a3;
      v20 = v10;
      v21 = *(a3 + 4);
      result = sub_232CBFCE4(result, v8, &v19);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        sub_232CB5704(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = sub_232CB571C(&v19, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v22, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v19);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v24 = 0;
        v23 = 0;
        v22 = **(a1 + 8);
        v17 = a3[1];
        v19 = *a3;
        v20 = v17;
        v21 = *(a3 + 4);
        if (sub_232CBFCE4(&v22 + v11, &v22 + v13, &v19) != &v22 + v13)
        {
LABEL_19:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v13);
        break;
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        sub_232CB5704(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = sub_232CB571C(&v19, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v22, &v14->__r_.__value_.__l.__data_);
        sub_232CB5860(&v19);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_19;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v11;
      v8 = *(a1 + 8);
      v9 = v8 - result;
      if (v5 <= v8 - result)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_20:
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

char *sub_232CBFCE4(char *a1, unint64_t a2, unsigned int **a3)
{
  v3 = a1;
  while (v3 < a2)
  {
    v6 = *v3;
    if ((v6 & 0x8000000000000000) != 0)
    {
      v7 = (v3[1] << 7) + v6;
      v6 = (v7 - 128);
      if (v3[1] < 0)
      {
        v3 = sub_232CC21D8(v3, (v7 - 128));
        if (!v3)
        {
          return v3;
        }

        v6 = v8;
      }

      else
      {
        v3 += 2;
      }
    }

    else
    {
      ++v3;
    }

    if ((a3[1])(a3[2], v6))
    {
      v9 = *a3;
      v10 = **a3;
      if (v10 == (*a3)[1])
      {
        v11 = v10 + 1;
        sub_232CC4F04(*a3, v10 + 1);
        *(sub_232CC5374(v9) + 4 * v10) = v6;
      }

      else
      {
        *(sub_232CC5374(*a3) + 4 * v10) = v6;
        v11 = v10 + 1;
      }

      *v9 = v11;
    }

    else
    {
      v12 = *(a3 + 8);
      v13 = a3[3];
      if (*v13)
      {
        v14 = ((*v13 & 0xFFFFFFFFFFFFFFFELL) + 8);
      }

      else
      {
        v14 = sub_232CA81A8(v13);
      }

      sub_232CC20C0(v12, v6, v14);
    }
  }

  return v3;
}

char *sub_232CBFE10(uint64_t a1, char *__src, int64_t __n)
{
  *(a1 + 84) = 0;
  if (__n >= 17)
  {
    *(a1 + 28) = 16;
    v6 = &__src[__n - 16];
    *a1 = v6;
    *(a1 + 8) = v6;
    *(a1 + 16) = a1 + 40;
    if (*(a1 + 72) != 1)
    {
      return __src;
    }

    v7 = 2;
    v8 = __src;
    goto LABEL_6;
  }

  v8 = (a1 + 40);
  memcpy((a1 + 40), __src, __n);
  *(a1 + 28) = 0;
  *a1 = &v8[__n];
  *(a1 + 8) = &v8[__n];
  *(a1 + 16) = 0;
  if (*(a1 + 72) == 1)
  {
    v7 = __src - v8;
LABEL_6:
    *(a1 + 72) = v7;
  }

  return v8;
}

void *sub_232CBFEC4(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_232CBE740(v5 + 5, *(v5 + 8));
      v6 = v5[1];
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = v5[2];
          v8 = *v7 == v5;
          v5 = v7;
        }

        while (!v8);
      }

      v5 = v7;
    }

    while (v7 != a2);
  }

  return a3;
}

uint64_t sub_232CBFF50(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_232CB571C(v7, "CHECK failed: (n) >= (0): ");
    sub_232CB5858(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_232CB5860(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_232CC0008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC0020(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 2;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          (*(**v3 + 8))(*v3);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t *sub_232CC00AC(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t sub_232CC0180(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_232CC0218(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_232CC0218(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t sub_232CC03D0(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_232C86764(a2, *(a2 + 8));

    JUMPOUT(0x238392C10);
  }

  return result;
}

void sub_232CC08D4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_232CC08E8()
{
  if ((atomic_load_explicit(&qword_27DDD4DB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDD4DB0))
  {
    qword_27DDD5660 = 0;
    *algn_27DDD5668 = 0;
    qword_27DDD5670 = 0;
    sub_232CC13EC(sub_232CC08D4, &qword_27DDD5660);
    atomic_store(1u, &unk_27DDD5678);

    __cxa_guard_release(&qword_27DDD4DB0);
  }
}

uint64_t sub_232CC0994(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 24))(a1);
  (*(*v4 + 64))(v4, a1);
  (*(*a1 + 40))(a1);
  (*(*a1 + 64))(a1, a2);
  (*(*a2 + 40))(a2);
  (*(*a2 + 64))(a2, v4);
  v5 = *(*v4 + 8);

  return v5(v4);
}

void sub_232CC0B20(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_27DDD4DB8, memory_order_acquire) & 1) == 0)
  {
    sub_232CC0CFC();
  }

  v2 = pthread_self();
  if (qword_27DDD4DC0 == v2)
  {
    if (*a1 != 1)
    {
      sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v3 = sub_232CB571C(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_232CB5858(&v4, &v3->__r_.__value_.__l.__data_);
      sub_232CB5860(v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(&unk_27DDD5678, memory_order_acquire) & 1) == 0)
    {
      sub_232CC08E8();
    }

    std::mutex::lock(&stru_27DDC8878);
    qword_27DDD4DC0 = v2;
    sub_232CC0C44(a1);
    qword_27DDD4DC0 = 0;

    std::mutex::unlock(&stru_27DDC8878);
  }
}

void sub_232CC0C28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_232CC0C44(_DWORD *result)
{
  if (*result == -1)
  {
    v1 = result;
    *result = 1;
    v2 = result + 6;
    v3 = result[1];
    if (v3 >= 1)
    {
      for (i = 0; i < v3; ++i)
      {
        if (*&v2[2 * i])
        {
          sub_232CC0C44();
          v3 = *(v1 + 1);
        }
      }
    }

    v5 = v3;
    v6 = *(v1 + 2);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = &v2[2 * v5];
      do
      {
        if (**&v8[2 * v7])
        {
          sub_232CC0C44();
          v6 = *(v1 + 2);
        }

        ++v7;
      }

      while (v7 < v6);
    }

    result = v1[2]();
    atomic_store(0, v1);
  }

  return result;
}

void sub_232CC0CFC()
{
  if (__cxa_guard_acquire(&qword_27DDD4DB8))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_27DDC8878, &dword_232B02000);

    __cxa_guard_release(&qword_27DDD4DB8);
  }
}

uint64_t sub_232CC0DD0(uint64_t a1)
{
  sub_232CB5704(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  sub_232CC0E84("parse", a1, &__p);
  v2 = sub_232CB5748(v6, &__p);
  sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_232CB5860(v6);
}

void sub_232CC0E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_232CB5860(&a16);
  _Unwind_Resume(a1);
}

void sub_232CC0E84(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::append(a3, "Can't ");
  std::string::append(a3, a1);
  std::string::append(a3, " message of type ");
  (*(*a2 + 16))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v7 = v12;
  }

  else
  {
    v7 = v11;
  }

  std::string::append(a3, p_p, v7);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  std::string::append(a3, " because it is missing required fields: ");
  (*(*a2 + 56))(&__p, a2);
  if ((v12 & 0x80u) == 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if ((v12 & 0x80u) == 0)
  {
    v9 = v12;
  }

  else
  {
    v9 = v11;
  }

  std::string::append(a3, v8, v9);
  if (v12 < 0)
  {
    operator delete(__p);
  }
}

void sub_232CC0FC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_232CC1000(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_232CC17BC();
  }

  sub_232CC175C(a3, a2, a1);
  return v4;
}

BOOL sub_232CC103C(uint64_t a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_232CB5704(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = sub_232CB571C(v9, "CHECK failed: IsInitialized(): ");
    sub_232CC0E84("serialize", a1, &__p);
    v5 = sub_232CB5748(v4, &__p);
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_232CB5860(v9);
  }

  return sub_232CC1148(a1, a2);
}

void sub_232CC1114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_232CB5860(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_232CC1148(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x277D85DE8];
  size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v5 = (*(*a1 + 72))(a1);
  v6 = v5;
  v7 = v5 >> 31;
  if (v5 >> 31)
  {
    sub_232CB5704(v17, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = sub_232CB5748(v17, __p);
    v11 = sub_232CB571C(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = sub_232CB5994(v11, v6);
    sub_232CB5858(&v15, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v17;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v17[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v18 = 0;
  v19 = 0;
  v20 = byte_27DDD565C & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    sub_232CB5704(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = sub_232CB571C(__p, "CHECK failed: target + size == res: ");
    sub_232CB5858(&v15, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    sub_232CB5860(v9);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL sub_232CC137C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_232CC103C(a1, a2);
  if (!result)
  {
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }
  }

  return result;
}

void sub_232CC13D0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_232CC13EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_232CC14F8();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_232C84C3C();
    }

    v10 = v5 - *v4;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_232CC1698(v4, v11);
    }

    v12 = (16 * v8);
    *v12 = a1;
    v12[1] = a2;
    v7 = 16 * v8 + 16;
    v13 = *(v4 + 8) - *v4;
    v14 = (16 * v8 - v13);
    memcpy(v14, *v4, v13);
    v15 = *v4;
    *v4 = v14;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = a1;
    v6[1] = a2;
    v7 = (v6 + 2);
  }

  *(v4 + 8) = v7;

  std::mutex::unlock((v4 + 24));
}

uint64_t sub_232CC14F8()
{
  if ((atomic_load_explicit(&qword_27DDC88C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27DDC88C0))
  {
    operator new();
  }

  return qword_27DDC88B8;
}

void sub_232CC15A0()
{
  if ((byte_27DDD4DC8 & 1) == 0)
  {
    v0 = sub_232CC14F8();
    if (v0)
    {
      v1 = sub_232CC15F0(v0);
      MEMORY[0x238392C10](v1, 0x1020C40A0054943);
    }

    byte_27DDD4DC8 = 1;
  }
}

uint64_t sub_232CC15F0(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = v3 - 2;
  if (*a1 != v3 && v4 > v2)
  {
    do
    {
      v6 = *v2;
      *v2 = *v4;
      *v4 = v6;
      v7 = v2[1];
      v2[1] = v4[1];
      v4[1] = v7;
      v2 += 2;
      v4 -= 2;
    }

    while (v2 < v4);
    v2 = *a1;
    v3 = *(a1 + 8);
  }

  while (v2 != v3)
  {
    (*v2)(v2[1]);
    v2 += 2;
  }

  std::mutex::~mutex((a1 + 24));
  v8 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  return a1;
}

void sub_232CC1698(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_232C849B0();
}

uint64_t sub_232CC175C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_232CC1740(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = sub_232CE8490();
  *v3 = result;
  return result;
}

_OWORD *sub_232CC17E8(uint64_t a1)
{
  if (*(a1 + 28) <= 16)
  {
    sub_232CB5704(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = sub_232CB571C(v7, "CHECK failed: limit_ > kSlopBytes: ");
    sub_232CB5858(&v6, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v7);
  }

  result = sub_232CC18B0(a1, 0, -1);
  v4 = *(a1 + 8);
  if (result)
  {
    v5 = *(a1 + 28) + result - v4;
    *(a1 + 28) = v5;
    v4 += v5 & (v5 >> 31);
  }

  else
  {
    *(a1 + 80) = 1;
  }

  *a1 = v4;
  return result;
}

void sub_232CC1898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_232CC18B0(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a1 + 40);
  if (v3 != a1 + 40)
  {
    v6 = *(a1 + 24);
    if (v6 <= 16)
    {
      sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = sub_232CB571C(v34, "CHECK failed: size_ > kSlopBytes: ");
      sub_232CB5858(&__src, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v34);
      v3 = *(a1 + 16);
      v6 = *(a1 + 24);
    }

    *(a1 + 8) = v3 + v6 - 16;
    *(a1 + 16) = v5;
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 2;
    }

    return v3;
  }

  *v5 = **(a1 + 8);
  if (*(a1 + 84) < 1)
  {
    goto LABEL_23;
  }

  v8 = a3;
  if (a3 < 0)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x80000000) != 0)
  {
    sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = sub_232CB571C(v34, "CHECK failed: overrun >= 0: ");
    sub_232CB5858(&__src, &v11->__r_.__value_.__l.__data_);
    sub_232CB5860(v34);
LABEL_27:
    v16 = a1 + 56;
    v17 = v5 + a2;
    v18 = v17;
    while (1)
    {
      v19 = *v18++;
      v20 = v19;
      if (v19 < 0)
      {
        v20 = v20 + (*v18 << 7) - 128;
        if (*v18 < 0)
        {
          v18 = v17 + 3;
          v25 = -21;
          while (1)
          {
            v20 += (*(v18 - 1) - 1) << (v25 + 35);
            if ((*(v18 - 1) & 0x80000000) == 0)
            {
              break;
            }

            ++v18;
            v25 += 7;
            if (!v25)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          v18 = v17 + 2;
        }
      }

      if (v18 > v16)
      {
        goto LABEL_16;
      }

      if (!v20)
      {
        goto LABEL_23;
      }

      v21 = v20 & 7;
      if (v21 > 2)
      {
        switch(v21)
        {
          case 3:
            ++v8;
            break;
          case 4:
            v24 = __OFSUB__(v8--, 1);
            if (v8 < 0 != v24)
            {
              goto LABEL_23;
            }

            break;
          case 5:
            v18 += 4;
            break;
          default:
            goto LABEL_16;
        }
      }

      else if (v21)
      {
        if (v21 == 1)
        {
          v18 += 8;
        }

        else
        {
          v22 = *v18;
          if (*v18 < 0)
          {
            v23 = sub_232CE88A0(v18, v22);
            if (!v23)
            {
              goto LABEL_16;
            }
          }

          else
          {
            v23 = (v18 + 1);
          }

          if ((v16 - v23) < v22)
          {
            goto LABEL_16;
          }

          v18 = (v23 + v22);
        }
      }

      else
      {
        v34[0].__r_.__value_.__r.__words[0] = 0;
        v18 = sub_232CC28B0(v18, v34);
        if (!v18)
        {
          goto LABEL_16;
        }
      }

      v17 = v18;
      if (v18 >= v16)
      {
        goto LABEL_16;
      }
    }
  }

  if (a2 >= 0x11)
  {
    sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = sub_232CB571C(v34, "CHECK failed: overrun <= kSlopBytes: ");
    sub_232CB5858(&__src, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v34);
    goto LABEL_16;
  }

  if (a2 != 16)
  {
    goto LABEL_27;
  }

LABEL_16:
  __src = 0;
  if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
  {
LABEL_22:
    *(a1 + 84) = 0;
LABEL_23:
    if (*(a1 + 72) == 2)
    {
      *(a1 + 72) = *(a1 + 8) - v3;
    }

    *(a1 + 8) = a1 + 56;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    return v5;
  }

  while (1)
  {
    v12 = *(a1 + 24);
    *(a1 + 84) -= v12;
    if (v12 >= 17)
    {
      v28 = *(a1 + 72);
      v27 = (a1 + 72);
      v26 = v28;
      v29 = (v27 - 2);
      v30 = __src;
      *(v27 - 1) = *__src;
      *(v27 - 7) = v30;
      goto LABEL_59;
    }

    if (v12 >= 1)
    {
      break;
    }

    if (v12)
    {
      sub_232CB5704(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = sub_232CB571C(v34, "CHECK failed: size_ == 0: ");
      v14 = sub_232CB5914(v13, *(a1 + 24));
      sub_232CB5858(&v32, &v14->__r_.__value_.__l.__data_);
      sub_232CB5860(v34);
    }

    if (((*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  memcpy((a1 + 56), __src, v12);
  v31 = *(a1 + 72);
  v27 = (a1 + 72);
  v26 = v31;
  v29 = v5 + v12;
  *(v27 - 7) = v5;
LABEL_59:
  *(v27 - 8) = v29;
  if (v26 > 1)
  {
    *v27 = 1;
  }

  return v5;
}

void sub_232CC1CAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC1CDC(uint64_t a1, signed int a2, int a3)
{
  v3 = *(a1 + 28);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = sub_232CB571C(v19, "CHECK failed: overrun != limit_: ");
    sub_232CB5858(&v18, &v7->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= v5)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = sub_232CB571C(v19, "CHECK failed: overrun < limit_: ");
    sub_232CB5858(&v18, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
    v3 = *(a1 + 28);
  }

  if (*a1 != *(a1 + 8) + (v3 & (v3 >> 31)))
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = sub_232CB571C(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    sub_232CB5858(&v18, &v9->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= 0)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = sub_232CB571C(v19, "CHECK failed: limit_ > 0: ");
    sub_232CB5858(&v18, &v10->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
  }

  if (*a1 != *(a1 + 8))
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = sub_232CB571C(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    sub_232CB5858(&v18, &v11->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
  }

  while (1)
  {
    if (v5 < 0)
    {
      sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = sub_232CB571C(v19, "CHECK failed: overrun >= 0: ");
      sub_232CB5858(&v18, &v12->__r_.__value_.__l.__data_);
      sub_232CB5860(v19);
    }

    v13 = sub_232CC18B0(a1, v5, a3);
    if (!v13)
    {
      break;
    }

    v14 = *(a1 + 8);
    v15 = *(a1 + 28) + v13 - v14;
    *(a1 + 28) = v15;
    result = v13 + v5;
    v5 = result - v14;
    if (result - v14 < 0)
    {
      *a1 = v14 + (v15 & (v15 >> 31));
      return result;
    }
  }

  if (v5)
  {
    return 0;
  }

  if (*(a1 + 28) <= 0)
  {
    sub_232CB5704(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = sub_232CB571C(v19, "CHECK failed: limit_ > 0: ");
    sub_232CB5858(&v18, &v17->__r_.__value_.__l.__data_);
    sub_232CB5860(v19);
  }

  result = *(a1 + 8);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

void sub_232CC1F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_232CC1FD4(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = sub_232CB571C(v10, "CHECK failed: size > chunk_size: ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    if (!*(a1 + 16) || *(a1 + 28) < 17)
    {
      break;
    }

    result = sub_232CC17E8(a1);
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 8) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

void sub_232CC20A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC20C0(int a1, unint64_t a2, std::string *this)
{
  v5 = (8 * a1);
  if (v5 < 0x80)
  {
    LOBYTE(v6) = 8 * a1;
  }

  else
  {
    do
    {
      std::string::push_back(this, v5 | 0x80);
      v6 = v5 >> 7;
      v7 = v5 >> 14;
      v5 >>= 7;
    }

    while (v7);
  }

  std::string::push_back(this, v6);
  if (a2 < 0x80)
  {
    LOBYTE(v8) = a2;
  }

  else
  {
    do
    {
      std::string::push_back(this, a2 | 0x80);
      v8 = a2 >> 7;
      v9 = a2 >> 14;
      a2 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
}

uint64_t sub_232CC216C(uint64_t a1, int a2)
{
  result = a1 + 3;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 35);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = a1 + 6;
      v6 = 5;
      result = 0;
      while (*(v5 - 1) < 0)
      {
        ++v5;
        if (!--v6)
        {
          return result;
        }
      }

      return v5;
    }
  }

  return result;
}

uint64_t sub_232CC21D8(uint64_t a1, uint64_t a2)
{
  a2 = a2;
  result = a1 + 3;
  v4 = (a1 + 2);
  v5 = 14;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << v5;
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (v5 == 70)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_232CC2220(uint64_t a1, int a2)
{
  result = a1 + 3;
  v4 = (a1 + 2);
  v5 = -21;
  while (1)
  {
    v6 = *v4++;
    a2 += (v6 - 1) << (v5 + 35);
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v5 += 7;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

_OWORD *sub_232CC2264(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = (a2 + 1);
  }

  return sub_232CBFA28(a3, v6, v5, a1);
}

char *sub_232CC2350(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC3CF0(a3, v6, v5, a1);
}

char *sub_232CC23CC(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC3DF8(a3, v6, v5, a1);
}

char *sub_232CC2448(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC3F00(a3, v6, v5, a1);
}

char *sub_232CC24C4(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC4008(a3, v6, v5, a1);
}

char *sub_232CC2540(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC4110(a3, v6, v5, a1);
}

char *sub_232CC25BC(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      return result;
    }

    v6 = result;
    v5 = v8;
  }

  else
  {
    v6 = a2 + 1;
  }

  return sub_232CC4218(a3, v6, v5, a1);
}

char *sub_232CC2634(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_232CA8068(a3, &v10, *(a3 + 92)))
    {
      return v10;
    }

    v5 = v10 + 1;
    v6 = *v10;
    if (*v10 < 0)
    {
      v6 = v6 + (*v5 << 7) - 128;
      if (*v5 < 0)
      {
        v5 = v10 + 3;
        v8 = -21;
        while (1)
        {
          v6 += (*(v5 - 1) - 1) << (v8 + 35);
          if ((*(v5 - 1) & 0x80000000) == 0)
          {
            break;
          }

          ++v5;
          v8 += 7;
          if (!v8)
          {
            return 0;
          }
        }
      }

      else
      {
        v5 = v10 + 2;
      }
    }

    v10 = v5;
    if (!v6 || (v6 & 7) == 4)
    {
      break;
    }

    v10 = sub_232CC274C(v6, a1);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

char *sub_232CC274C(unint64_t a1, std::string *a2, int *a3, int32x2_t *a4)
{
  v4 = a1 >> 3;
  if (!(a1 >> 3))
  {
    return 0;
  }

  v5 = a3;
  v7 = a1;
  result = 0;
  v9 = v7 & 7;
  if (v9 > 2)
  {
    if (v9 != 3)
    {
      if (v9 == 4)
      {
        sub_232CB5704(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = sub_232CB571C(v12, "Can't happen");
        sub_232CB5858(&v11, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(v12);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_232CC4754(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_232CC4628(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_232CC28B0(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_232CC4320(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_232CC43E8(a2, v4, *a3);
    return v5;
  }

  result = sub_232CC44A8(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_232CC2898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC28B0(char *a1, unint64_t *a2)
{
  v2 = *a1;
  if ((v2 & 0x8000000000000000) != 0)
  {
    v4 = v2 & 0x7F | (a1[1] << 7);
    if (a1[1] < 0)
    {
      result = a1 + 3;
      v5 = 14;
      while (1)
      {
        v4 += (*(result - 1) - 1) << v5;
        if ((*(result - 1) & 0x80000000) == 0)
        {
          break;
        }

        ++result;
        v5 += 7;
        if (v5 == 70)
        {
          result = 0;
          v4 = 0;
          break;
        }
      }

      *a2 = v4;
    }

    else
    {
      *a2 = v4;
      return a1 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a1 + 1;
  }

  return result;
}

char *sub_232CC2920(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC2B40(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC2B40(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC2B40(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC2B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC2B40(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC4F04(a3, v7 + 1);
      *(sub_232CC5374(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_232CC5374(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC2BF0(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC2E10(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC2E10(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC2E10(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC2DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC2E10(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC5530(a3, v7 + 1);
      *(sub_232CC59A0(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_232CC59A0(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC2EC0(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC30E0(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC30E0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC30E0(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC30B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC30E0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC5B5C(a3, v7 + 1);
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3190(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC33B0(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC33B0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC33B0(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC3388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC33B0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC6188(a3, v7 + 1);
      *(sub_232CC65F8(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_232CC65F8(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3460(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC3680(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC3680(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC3680(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC3658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC3680(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC4F04(a3, v7 + 1);
      *(sub_232CC5374(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_232CC5374(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC373C(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC395C(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC395C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC395C(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC3934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC395C(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC5B5C(a3, v7 + 1);
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_232CC5FCC(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3A18(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_232CE88A0(a2, *a2);
    if (!result)
    {
      goto LABEL_18;
    }

    v5 = v15;
  }

  else
  {
    result = a2 + 1;
  }

  v7 = *(a1 + 8);
  v8 = v7 - result;
  if (v5 <= v7 - result)
  {
LABEL_13:
    v13 = &result[v5];
    result = sub_232CC3C38(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_232CC3C38(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_232CB571C(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_232CB5858(&v16, &v10->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_232CC3C38(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
        {
LABEL_17:
          result = 0;
          break;
        }

        result = (*(a1 + 8) + v11);
        break;
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_232CB5704(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_232CB571C(&v17, "CHECK failed: (size) > (0): ");
        sub_232CB5858(&v16, &v12->__r_.__value_.__l.__data_);
        sub_232CB5860(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        break;
      }

      result += v9;
      v7 = *(a1 + 8);
      v8 = v7 - result;
      if (v5 <= v7 - result)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_18:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CC3C10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

char *sub_232CC3C38(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_232CC28B0(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_232CC48E0(a3, v7 + 1);
      *(sub_232CC4D4C(a3) + v7) = v6;
    }

    else
    {
      *(sub_232CC4D4C(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_232CC3CF0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC5530(a4, *a4 + (v5 >> 2));
    v11 = sub_232CC56D4(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC5530(a4, *a4 + (v7 >> 2));
      v9 = sub_232CC56D4(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC3DF8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC4F04(a4, *a4 + (v5 >> 2));
    v11 = sub_232CC50A8(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC4F04(a4, *a4 + (v7 >> 2));
      v9 = sub_232CC50A8(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC3F00(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC6188(a4, *a4 + (v5 >> 3));
    v11 = sub_232CC632C(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC6188(a4, *a4 + (v7 >> 3));
      v9 = sub_232CC632C(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC4008(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC5B5C(a4, *a4 + (v5 >> 3));
    v11 = sub_232CC5D00(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC5B5C(a4, *a4 + (v7 >> 3));
      v9 = sub_232CC5D00(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC4110(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC67B4(a4, *a4 + (v5 >> 2));
    v11 = sub_232CC6958(a4, v5 >> 2);
    memcpy(v11, v6, (v5 & 0xFFFFFFFC));
    if (v5 == (v5 & 0xFFFFFFFC))
    {
      return &v6[v5 & 0xFFFFFFFC];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC67B4(a4, *a4 + (v7 >> 2));
      v9 = sub_232CC6958(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFFC;
      v6 = &result[-(v7 & 3) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 3));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

char *sub_232CC4218(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_232CC6DE0(a4, *a4 + (v5 >> 3));
    v11 = sub_232CC6F84(a4, v5 >> 3);
    memcpy(v11, v6, (v5 & 0xFFFFFFF8));
    if (v5 == (v5 & 0xFFFFFFF8))
    {
      return &v6[v5 & 0xFFFFFFF8];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      sub_232CC6DE0(a4, *a4 + (v7 >> 3));
      v9 = sub_232CC6F84(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_232CC17E8(a1);
      if (!result)
      {
        return result;
      }

      v5 -= v7 & 0xFFFFFFF8;
      v6 = &result[-(v7 & 7) + 16];
      v7 = *(a1 + 8) - (result - (v7 & 7));
      if (v5 <= v7)
      {
        goto LABEL_5;
      }
    }
  }
}

void sub_232CC4320(std::string **a1, int a2, unint64_t a3)
{
  v3 = *a1;
  if (*a1)
  {
    v6 = (8 * a2);
    if (v6 < 0x80)
    {
      LOBYTE(v7) = 8 * a2;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v9 = *a1;
    if (a3 < 0x80)
    {
      LOBYTE(v10) = a3;
    }

    else
    {
      do
      {
        std::string::push_back(v9, a3 | 0x80);
        v10 = a3 >> 7;
        v11 = a3 >> 14;
        a3 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v9, v10);
  }
}

std::string *sub_232CC43E8(std::string *result, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 1u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 1;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    v10[0] = a3;
    result = std::string::append(*v5, v10, 8uLL);
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

std::string::value_type *sub_232CC44A8(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_232CE88A0(a3, *a3);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v19;
  }

  else
  {
    v8 = a3 + 1;
  }

  v9 = *a1;
  if (*a1)
  {
    v10 = (8 * a2) | 2u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v11) = (8 * a2) | 2;
    }

    else
    {
      do
      {
        std::string::push_back(v9, v10 | 0x80);
        v11 = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }

    std::string::push_back(v9, v11);
    v14 = v7;
    v15 = *a1;
    if (v7 < 0x80)
    {
      LOBYTE(v16) = v7;
    }

    else
    {
      do
      {
        std::string::push_back(v15, v14 | 0x80);
        v16 = v14 >> 7;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
    }

    std::string::push_back(v15, v16);
    v18 = *a1;

    return sub_232CC47E8(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_232CC1FD4(a4, v8, v7);
  }
}

char *sub_232CC4628(std::string **a1, int a2, char *a3, int32x2_t *a4)
{
  v7 = *a1;
  v8 = 8 * a2;
  if (*a1)
  {
    v9 = v8 | 3;
    if (v8 < 0x80)
    {
      LOBYTE(v10) = v8 | 3;
    }

    else
    {
      do
      {
        std::string::push_back(v7, v9 | 0x80);
        v10 = v9 >> 7;
        v11 = v9 >> 14;
        v9 >>= 7;
      }

      while (v11);
    }

    std::string::push_back(v7, v10);
  }

  v12 = a4[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a4[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  ++a4[11].i32[1];
  v14 = sub_232CC2634(a1, a3, a4);
  a4[11] = vadd_s32(a4[11], 0xFFFFFFFF00000001);
  v15 = a4[10].i32[0];
  a4[10].i32[0] = 0;
  if (v15 != (v8 | 3) || v14 == 0)
  {
    return 0;
  }

  v17 = v14;
  v18 = *a1;
  if (v18)
  {
    v19 = v8 | 4;
    if (v8 < 0x80)
    {
      LOBYTE(v20) = v8 | 4;
    }

    else
    {
      do
      {
        std::string::push_back(v18, v19 | 0x80);
        v20 = v19 >> 7;
        v21 = v19 >> 14;
        v19 >>= 7;
      }

      while (v21);
    }

    std::string::push_back(v18, v20);
  }

  return v17;
}

std::string *sub_232CC4754(std::string *result, int a2, int a3)
{
  v3 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    v5 = result;
    v6 = (8 * a2) | 5u;
    if ((8 * a2) < 0x80)
    {
      LOBYTE(v7) = (8 * a2) | 5;
    }

    else
    {
      do
      {
        std::string::push_back(v3, v6 | 0x80);
        v7 = v6 >> 7;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
    }

    std::string::push_back(v3, v7);
    *__s = a3;
    return std::string::append(*v5, __s, 4uLL);
  }

  return result;
}

std::string::value_type *sub_232CC47E8(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_232CE86AC();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_232CC4854(uint64_t a1@<X8>)
{
  if (v1 >= 50000000)
  {
    v4 = 50000000;
  }

  else
  {
    v4 = v1;
  }

  std::string::reserve(v2, a1 + v4);
}

uint64_t sub_232CC48A8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_232CB5704(va, 3, v2, 323);
}

std::string *sub_232CC48C8(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void sub_232CC48E0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC4D4C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v12, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v13);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC4D4C(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  if (v6)
  {
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v10 = sub_232CB4000(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_232CC4D4C(a1);
  if (*a1 >= 1)
  {
    v11 = sub_232CC4D4C(a1);
    memcpy(v11, v5 + 1, *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC4A68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4A80(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC4B28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4B40(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC4D4C(a1) + a2;
}

void sub_232CC4C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4C20(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC4D4C(a1) + a2;
}

void sub_232CC4CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC4D00(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC4D4C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC4D4C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC4DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC4DD8(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC48E0(v3, *v3 + *a2);
    sub_232CC4A80(v3, *a2);
    v6 = sub_232CC4B40(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC4D4C(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_232CC4EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC4F04(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC5374(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC5374(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC5374(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC5374(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC5090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC50A8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC5150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5168(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5374(a1) + 4 * a2;
}

void sub_232CC5228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5248(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5374(a1) + 4 * a2;
}

void sub_232CC5308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5328(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC5374(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC5374(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC53E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC5400(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC4F04(v3, *v3 + *a2);
    sub_232CC50A8(v3, *a2);
    v6 = sub_232CC5168(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC5374(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_232CC5510(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC5530(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC59A0(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC59A0(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC59A0(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC59A0(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC56BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC56D4(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5794(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC59A0(a1) + 4 * a2;
}

void sub_232CC5854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5874(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC59A0(a1) + 4 * a2;
}

void sub_232CC5934(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5954(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC59A0(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC59A0(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC5A14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC5A2C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC5530(v3, *v3 + *a2);
    sub_232CC56D4(v3, *a2);
    v6 = sub_232CC5794(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC59A0(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_232CC5B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC5B5C(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC5FCC(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC5FCC(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC5FCC(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC5FCC(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC5CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5D00(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC5DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5DC0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5FCC(a1) + 8 * a2;
}

void sub_232CC5E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5EA0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC5FCC(a1) + 8 * a2;
}

void sub_232CC5F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC5F80(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC5FCC(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC5FCC(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC6040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC6058(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC5B5C(v3, *v3 + *a2);
    sub_232CC5D00(v3, *a2);
    v6 = sub_232CC5DC0(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC5FCC(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_232CC6168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC6188(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC65F8(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC65F8(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC65F8(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC65F8(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC6314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC632C(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC63D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC63EC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC65F8(a1) + 8 * a2;
}

void sub_232CC64AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC64CC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC65F8(a1) + 8 * a2;
}

void sub_232CC658C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC65AC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC65F8(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC65F8(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC666C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC6684(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC6188(v3, *v3 + *a2);
    sub_232CC632C(v3, *a2);
    v6 = sub_232CC63EC(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC65F8(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_232CC6794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC67B4(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC6C24(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC6C24(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 4 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC6C24(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC6C24(a1);
    memcpy(v13, v5 + 1, 4 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC6940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6958(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC6A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6A18(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC6C24(a1) + 4 * a2;
}

void sub_232CC6AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6AF8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC6C24(a1) + 4 * a2;
}

void sub_232CC6BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6BD8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC6C24(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC6C24(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC6C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC6CB0(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC67B4(v3, *v3 + *a2);
    sub_232CC6958(v3, *a2);
    v6 = sub_232CC6A18(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC6C24(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_232CC6DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

void sub_232CC6DE0(int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  v3 = a2;
  if (v2 < 1)
  {
    v5 = 0;
    if (v2)
    {
LABEL_4:
      v6 = *(sub_232CC7250(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_232CB5704(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_232CB571C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_232CB5858(&v14, &v8->__r_.__value_.__l.__data_);
            sub_232CB5860(v15);
          }

          v3 = 0x7FFFFFFF;
          goto LABEL_15;
        }

LABEL_13:
        v9 = 2 * v7;
        if (v9 > v3)
        {
          v3 = v9;
        }

        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v5 = (sub_232CC7250(a1) - 8);
    if (a1[1])
    {
      goto LABEL_4;
    }
  }

  v6 = *(a1 + 1);
  if (v3 >= 4)
  {
    v7 = 0;
    goto LABEL_13;
  }

LABEL_11:
  v3 = 4;
LABEL_15:
  v10 = 8 * v3;
  if (v6)
  {
    v11 = v10 + 15;
    if (*(v6 + 24))
    {
      sub_232CC7610(v6);
    }

    v12 = sub_232CB4000(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_232CC7250(a1);
  if (*a1 >= 1)
  {
    v13 = sub_232CC7250(a1);
    memcpy(v13, v5 + 1, 8 * *a1);
  }

  if (v5)
  {
    if (!*v5)
    {
      operator delete(v5);
    }
  }
}

void sub_232CC6F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC6F84(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_232CB5704(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_232CB571C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_232CB5914(v5, *(a1 + 4));
    v7 = sub_232CB571C(v6, ", ");
    v8 = sub_232CB5914(v7, *a1);
    sub_232CB5858(&v10, &v8->__r_.__value_.__l.__data_);
    sub_232CB5860(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_232CC702C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC7044(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC7250(a1) + 8 * a2;
}

void sub_232CC7104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC7124(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_232CB571C(v8, "CHECK failed: (index) >= (0): ");
    sub_232CB5858(&v7, &v4->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  if (*a1 <= a2)
  {
    sub_232CB5704(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_232CB571C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_232CB5858(&v7, &v5->__r_.__value_.__l.__data_);
    sub_232CB5860(v8);
  }

  return sub_232CC7250(a1) + 8 * a2;
}

void sub_232CC71E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CC7204(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_232CC7250(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_232CC7250(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_232CB5704(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_232CB571C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_232CB5858(&v4, &v2->__r_.__value_.__l.__data_);
    sub_232CB5860(v5);
  }

  return *(a1 + 8);
}

void sub_232CC72C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

int *sub_232CC72DC(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_232CB571C(v10, "CHECK failed: (&other) != (this): ");
    sub_232CB5858(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_232CB5860(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_232CC6DE0(v3, *v3 + *a2);
    sub_232CC6F84(v3, *a2);
    v6 = sub_232CC7044(v3, v5);
    if (*a2 <= 0)
    {
      sub_232CB5704(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_232CB571C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_232CB5858(&v9, &v7->__r_.__value_.__l.__data_);
      sub_232CB5860(v10);
    }

    v8 = sub_232CC7250(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_232CC73EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_232CC740C(uint64_t *a1)
{
  sub_232CC7448(a1);

  return sub_232CA84A4(a1);
}

void sub_232CC7448(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = (v2 + 2);
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        v5 = *v3;
        if (*v3)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x238392C10](v5, 0x1012C40EC159624);
        }

        ++v3;
        --v4;
      }

      while (v4);
      v2 = a1[2];
    }

    operator delete(v2);
  }

  a1[2] = 0;
}

uint64_t sub_232CC74E8(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_232CC74FC(result, v4);
  }

  return result;
}

uint64_t sub_232CC74FC(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 12);
  v4 = v2 + a2;
  v5 = *(a1 + 16);
  if (v3 < v2 + a2)
  {
    v7 = *a1;
    v8 = 2 * v3;
    if (2 * v3 <= v4)
    {
      v8 = v4;
    }

    if (v8 <= 4)
    {
      v9 = 4;
    }

    else
    {
      v9 = v8;
    }

    v10 = 8 * v9;
    if (v7)
    {
      v11 = v10 + 15;
      if (*(v7 + 24))
      {
        sub_232CC764C(*a1);
      }

      v12 = sub_232CB4000(v7, v11 & 0x7FFFFFFF8);
    }

    else
    {
      v12 = operator new(v10 + 8);
    }

    *(a1 + 16) = v12;
    *(a1 + 12) = v9;
    if (v5 && (v13 = *v5, v13 >= 1))
    {
      memcpy(v12 + 2, v5 + 2, 8 * v13);
      v12 = *(a1 + 16);
      *v12 = *v5;
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      *v12 = 0;
      if (!v7)
      {
LABEL_17:
        operator delete(v5);
        v12 = *(a1 + 16);
      }
    }

    v2 = *(a1 + 8);
    v5 = v12;
  }

  return &v5[2 * v2 + 2];
}

uint64_t *sub_232CC75F8(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_232CC7684(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_284815CC0;
  *(a1 + 16) = &unk_284815C80;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_284815C80;
  *(a1 + 40) = 0;
  sub_232CB32B4((a1 + 88));
  sub_232CC7778(a1, a2, a3, &v7);
  sub_232CB34D4((a1 + 88), &v7);
  sub_232CB32BC(&v7);
  return a1;
}

void sub_232CC7754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_232CB32BC(va);
  sub_232CB32BC((v2 + 88));
  _Unwind_Resume(a1);
}

void *sub_232CC7778@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_232C80728(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_232CB32BC(a4);
    result = sub_232CB1748(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_232CB32BC(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_232C80728(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_232CB32BC(a4);
        result = sub_232CB1748(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_232CB32BC(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_232C80728(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_232CB32BC(a4);
            result = sub_232CB1748(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_232CB32BC(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_232C8051C(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_232CB32BC(a4);
                result = sub_232CB1748(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_232CB32BC(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_232CB16B8(*(a1 + 48), 4uLL);
                  result = sub_232CB1748(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_232CB32BC(a4);
                    *(a1 + 64) = v13;
                    result = sub_232CB1748(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_232CB32BC(a4);
                      *(a1 + 72) = v13;
                      result = sub_232CB1748(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_232CB32BC(a4);
                        *(a1 + 80) = v13;
                        return sub_232CB32B4(v9);
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

  return result;
}

void *sub_232CC79BC(void *a1)
{
  *a1 = &unk_284815CC0;
  sub_232CB32BC(a1 + 11);
  return a1;
}

void sub_232CC7A00(void *a1)
{
  *a1 = &unk_284815CC0;
  sub_232CB32BC(a1 + 11);

  JUMPOUT(0x238392C10);
}

uint64_t sub_232CC7A6C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7AA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7AD4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7B08(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7B3C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_232CC7B94(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

id sub_232CCAA1C()
{
  if (qword_2814E2600 != -1)
  {
    dispatch_once(&qword_2814E2600, &unk_284815D98);
  }

  v1 = qword_2814E2608;

  return v1;
}

void sub_232CCAA70()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.TextUnderstanding", "Server XPCClient");
  v2 = qword_2814E2608;
  qword_2814E2608 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_232CCAACC()
{
  v0 = objc_autoreleasePoolPush();
  v1 = os_log_create("com.apple.private.proactive.TextUnderstanding", "File Notification");
  v2 = qword_27DDD4DD0;
  qword_27DDD4DD0 = v1;

  objc_autoreleasePoolPop(v0);
}

void sub_232CDFDC8(uint64_t a1, void *a2)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_self();
  objc_sync_enter(v3);
  v8 = *MEMORY[0x277CCA050];
  v9 = 1;
  v10 = MEMORY[0x277D86220];
  do
  {
    v11 = v9;
    v12 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v4, v5, v6, v7);
    v54 = 0;
    v14 = objc_msgSend_createDirectoryAtPath_withIntermediateDirectories_attributes_error_(v12, v13, v2, 1, 0, &v54);
    v15 = v54;

    if (v14)
    {
      goto LABEL_15;
    }

    if (objc_msgSend_code(v15, v16, v17, v18, v19) == 640)
    {
      v24 = objc_msgSend_domain(v15, v20, v21, v22, v23);
      isEqualToString = objc_msgSend_isEqualToString_(v24, v25, v8, v26, v27);

      if (isEqualToString)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v56 = v2;
          _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DUPaths: _createDirectoryAtPath: exiting due to lack of disk space while creating %@", buf, 0xCu);
        }

        if (objc_msgSend_isInternalBuild(MEMORY[0x277D42590], v49, v50, v51, v52) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DUPaths: unable to create directory due to lack of space.", buf, 2u);
        }

        v48 = 4002;
        goto LABEL_30;
      }
    }

    if (objc_msgSend_code(v15, v20, v21, v22, v23) == 513)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v56 = v2;
        _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DUPaths: _createDirectoryAtPath: exiting due to lack of write permissions to directory %@", buf, 0xCu);
      }

      if (objc_msgSend_isInternalBuild(MEMORY[0x277D42590], v44, v45, v46, v47) && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT))
      {
        *buf = 138412290;
        v56 = v2;
        _os_log_fault_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_FAULT, "DUPaths: unable to create directory %@ due to lack of permissions.", buf, 0xCu);
      }

LABEL_23:
      v48 = 4003;
LABEL_30:
      _exit(v48);
    }

    if (objc_msgSend_code(v15, v29, v30, v31, v32) != 516)
    {
      if (v15)
      {
        objc_msgSend_handleError_(FileErrorCode, v4, v15, v6, v7);
      }

      goto LABEL_14;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v56 = v2;
      v57 = 2112;
      v58 = v15;
      _os_log_error_impl(&dword_232B02000, v10, OS_LOG_TYPE_ERROR, "DUPaths: deleting file squatting at %@ due to error %@", buf, 0x16u);
    }

    v37 = objc_msgSend_defaultManager(MEMORY[0x277CCAA00], v33, v34, v35, v36);
    v53 = 0;
    objc_msgSend_removeItemAtPath_error_(v37, v38, v2, &v53, v39);
    v40 = v53;

    if (v40)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v56 = v2;
        v57 = 2112;
        v58 = v40;
        _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DUPaths: exiting due to failure to delete squatter file %@ due to error %@", buf, 0x16u);
      }

      goto LABEL_23;
    }

    v9 = 0;
  }

  while ((v11 & 1) != 0);
  v15 = 0;
LABEL_14:
  v41 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v4, v5, v6, v7);
  objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v41, v42, sel__createDirectoryAtPath_, v3, @"DUPaths.m", 239, @"DUPaths: _createDirectoryAtPath: %@ error: %@", v2, v15);

LABEL_15:
  objc_sync_exit(v3);

  v43 = *MEMORY[0x277D85DE8];
}

id sub_232CE01FC(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = @"TextUnderstanding";
  v4 = objc_opt_self();
  v5 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 1uLL, 1);
  v9 = objc_msgSend_objectAtIndexedSubscript_(v5, v6, 0, v7, v8);

  if (!v9 || !objc_msgSend_length(v9, v10, v11, v12, v13))
  {
    v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v10, v11, v12, v13);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v21, v22, sel_topDirectoryWithName_createIfNeeded_, v4, @"DUPaths.m", 133, @"failed to construct the root path");
  }

  v14 = objc_autoreleasePoolPush();
  v18 = objc_msgSend_stringByAppendingPathComponent_(v9, v15, @"TextUnderstanding", v16, v17);
  objc_autoreleasePoolPop(v14);
  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    if (!a2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v23 = 138412290;
  v24 = v18;
  _os_log_debug_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "using top directory: %@", &v23, 0xCu);
  if (a2)
  {
LABEL_5:
    sub_232CDFDC8(v4, v18);
  }

LABEL_6:

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

void sub_232CE044C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = sub_232CE01FC(*(a1 + 32), 1);
  v4 = qword_27DDD4DE0;
  qword_27DDD4DE0 = v3;

  objc_autoreleasePoolPop(v2);
}

void sub_232CE0890(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v9 = objc_msgSend_objcForResponse_(DUObjCCompatibilityUtils, v6, a2, v7, v8);
  (*(*(a1 + 32) + 16))();
}

void sub_232CE27DC(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238393A20]();
  if (v4 == MEMORY[0x277D86468])
  {
    string = xpc_dictionary_get_string(v3, "event_type");
    if (strcmp(string, "mds_index_updated") && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18) = 0;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "DocumentUnderstanding: DocumentUpdateHandler unknown event name", &v18, 2u);
    }

    uint64 = xpc_dictionary_get_uint64(v3, "num_updates");
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136315394;
      v19 = string;
      v20 = 1024;
      v21 = uint64;
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: DocumentUpdateHandler received event %s with number of updates %d", &v18, 0x12u);
    }

    objc_msgSend_triggerSpotlightFileUpdateNoArgsWithReply_(*(a1 + 32), v13, &unk_284815DD8, v14, v15);
  }

  else
  {
    v5 = v4;
    v6 = MEMORY[0x277D86480];
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5 == v6)
    {
      if (v7)
      {
        v17 = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v18 = 136315138;
        v19 = v17;
        v8 = MEMORY[0x277D86220];
        v9 = "DocumentUnderstanding: received DocumentUpdateHandler connection error %s";
        v10 = 12;
        goto LABEL_14;
      }
    }

    else if (v7)
    {
      LOWORD(v18) = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "DocumentUnderstanding: DocumentUpdateHandler XPC connction unknown message type";
      v10 = 2;
LABEL_14:
      _os_log_error_impl(&dword_232B02000, v8, OS_LOG_TYPE_ERROR, v9, &v18, v10);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_232CE29E8()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *v0 = 0;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: DocumentUpdateHandler completed call to triggerSpotlightFileUpdateNoArgsWithReply", v0, 2u);
  }
}

void sub_232CE2B74(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x238393A20]();
  if (v4 == MEMORY[0x277D86450])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v15 = 134217984;
      v16 = v3;
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "DocumentUnderstanding: DocumentUpdateHandler connection %p event from client", &v15, 0xCu);
    }

    objc_msgSend__newClientConnection_withTextUnderstandingManager_(*(a1 + 32), v11, v3, *(a1 + 40), v12);
  }

  else
  {
    v5 = v4;
    v6 = MEMORY[0x277D86480];
    v7 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v5 == v6)
    {
      if (v7)
      {
        string = xpc_dictionary_get_string(v3, *MEMORY[0x277D86400]);
        v15 = 136315138;
        v16 = string;
        v8 = MEMORY[0x277D86220];
        v9 = "DocumentUnderstanding: DocumentUpdateHandler xpc connection error: %s";
        v10 = 12;
        goto LABEL_11;
      }
    }

    else if (v7)
    {
      LOWORD(v15) = 0;
      v8 = MEMORY[0x277D86220];
      v9 = "DocumentUnderstanding: DocumentUpdateHandler unknown message type";
      v10 = 2;
LABEL_11:
      _os_log_error_impl(&dword_232B02000, v8, OS_LOG_TYPE_ERROR, v9, &v15, v10);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_232CE302C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

void sub_232CE3118(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = objc_opt_new();
  v5 = qword_27DDD4DF0;
  qword_27DDD4DF0 = v4;

  objc_autoreleasePoolPop(v2);
}

uint64_t sub_232CE3384(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  objc_msgSend_setClientProcessName_(v5, v7, a3, v8, v9);
  v10 = objc_alloc(MEMORY[0x277D42550]);
  v15 = objc_msgSend_processIdentifier(v6, v11, v12, v13, v14);
  v19 = objc_msgSend_initWithProcessIdentifier_(v10, v16, v15, v17, v18);
  objc_msgSend_setBundleIdResolver_(*(a1 + 32), v20, v19, v21, v22);

  v24 = objc_msgSend_checkForAndLogTrueBooleanEntitlement_connection_serviceName_(DUXPCServerHelper, v23, @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting", v6, @"com.apple.TextUnderstanding.DocumentUnderstandingHarvesting");
  return v24;
}

void sub_232CE3434()
{
  v0 = sub_232CCAA1C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_232B02000, v0, OS_LOG_TYPE_DEFAULT, "DUXPCServerHelper received call to invalidation handler", v1, 2u);
  }
}

void sub_232CE349C()
{
  v0 = sub_232CCAA1C();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_232B02000, v0, OS_LOG_TYPE_DEFAULT, "DUXPCServerHelper received call to interruption handler", v1, 2u);
  }
}

void sub_232CE3648(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "synchronousEventExtractionWithSerializedDocument failed with error: %@", &v13, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v13 = 134217984;
      v14 = objc_msgSend_count(v5, v8, v9, v10, v11);
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "synchronousEventExtractionWithSerializedDocument completed. Detected %ld entities", &v13, 0xCu);
    }

    v7 = *(*(a1 + 32) + 16);
  }

  v7();

  v12 = *MEMORY[0x277D85DE8];
}

void sub_232CE3864(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  if (v8)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v14 = 138412290;
      v15 = v8;
      _os_log_error_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "requestExtractionOfPersonalIDFromDocument failed with error: %@", &v14, 0xCu);
    }

    v9 = *(*(a1 + 32) + 16);
LABEL_5:
    v9();
    goto LABEL_10;
  }

  if (!v7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requestExtractionOfPersonalIDFromDocument completed. No entities detected", &v14, 2u);
    }

    v9 = *(*(a1 + 32) + 16);
    goto LABEL_5;
  }

  v10 = objc_alloc(MEMORY[0x277D06980]);
  isPartialExtraction = objc_msgSend_initWithResultType_attributes_isPartialExtraction_(v10, v11, a3, v7, 0);
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 134217984;
    v15 = a3;
    _os_log_impl(&dword_232B02000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "requestExtractionOfPersonalIDFromDocument completed. Detected entity of type '%ld'", &v14, 0xCu);
  }

  (*(*(a1 + 32) + 16))();

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

id sub_232CE3EF8(int a1, int *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  bzero(buffer, 0x400uLL);
  *__error() = 0;
  v4 = proc_name(a1, buffer, 0x400u);
  if (a2)
  {
    *a2 = *__error();
  }

  if ((v4 & 0x80000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    v5 = objc_alloc(MEMORY[0x277CCACA8]);
    v7 = objc_msgSend_initWithBytes_length_encoding_(v5, v6, buffer, v4, 4);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_232CE43B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 56));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v3 - 160));
  _Unwind_Resume(a1);
}

void sub_232CE43E8(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = sub_232CCAA1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = objc_msgSend_processIdentifier(WeakRetained, v4, v5, v6, v7);
      _os_log_impl(&dword_232B02000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v12, 0x20u);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_232CE44EC(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = sub_232CCAA1C();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v12 = 138412802;
      v13 = v8;
      v14 = 2112;
      v15 = v9;
      v16 = 2048;
      v17 = objc_msgSend_processIdentifier(WeakRetained, v4, v5, v6, v7);
      _os_log_impl(&dword_232B02000, v3, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v12, 0x20u);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    (*(v10 + 16))();
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t sub_232CE4820()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!qword_27DDD4E00)
  {
    qword_27DDD4E00 = _sl_dlopen();
  }

  result = qword_27DDD4E00;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232CE48F0()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DDD4E10;
  v6 = qword_27DDD4E10;
  if (!qword_27DDD4E10)
  {
    v1 = sub_232CE4A2C();
    v4[3] = dlsym(v1, "CopyHTMLForIWorkFileAtURL");
    qword_27DDD4E10 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_232CE49C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_232CE49DC(uint64_t a1)
{
  v2 = sub_232CE4A2C();
  result = dlsym(v2, "CopyHTMLForIWorkFileAtURL");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DDD4E10 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void *sub_232CE4A2C()
{
  v0 = sub_232CE4820();
  if (v0)
  {
    return v0;
  }

  v5 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v1, v2, v3, v4);
  v10 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v7, "void *iWorkImportLibrary(void)", v8, v9);
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v5, v11, v10, @"iWorkImportCompatibility.m", 13, @"%s", 0);

  __break(1u);
  free(v12);
  return v5;
}

uint64_t sub_232CE4ADC(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27DDD4E00 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_232CE4C40()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = qword_27DDD4E08;
  v6 = qword_27DDD4E08;
  if (!qword_27DDD4E08)
  {
    v1 = sub_232CE4A2C();
    v4[3] = dlsym(v1, "CopyHTMLForIWorkDataWithUTI");
    qword_27DDD4E08 = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_232CE4D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *sub_232CE4D2C(uint64_t a1)
{
  v2 = sub_232CE4A2C();
  result = dlsym(v2, "CopyHTMLForIWorkDataWithUTI");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_27DDD4E08 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_232CE5314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_232CE5334()
{
  v2 = *MEMORY[0x277D85DE8];
  if (!qword_27DDD4E18)
  {
    qword_27DDD4E18 = _sl_dlopen();
  }

  result = qword_27DDD4E18;
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CE5404(void *a1)
{
  if (!sub_232CE5334())
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v2, v3, v4, v5);
    a1 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "void *OfficeImportLibrary(void)", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v14, a1, @"OfficeImportCompatibility.m", 17, @"%s", 0);

    __break(1u);
    free(v15);
  }

  *(*(a1[4] + 8) + 24) = objc_getClass("OISpotlightImporter");
  if (*(*(a1[4] + 8) + 24))
  {
    qword_27DDD4E20 = *(*(a1[4] + 8) + 24);
  }

  else
  {
    v16 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v20 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v17, "Class getOISpotlightImporterClass(void)_block_invoke", v18, v19);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v16, v21, v20, @"OfficeImportCompatibility.m", 18, @"Unable to find class %s", "OISpotlightImporter");

    __break(1u);
  }
}

uint64_t sub_232CE554C(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27DDD4E18 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CE5704(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_232CE57CC;
  block[3] = &unk_2789A7E10;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void sub_232CE57CC(void *a1)
{
  if (*(a1[4] + 32))
  {
    v2 = a1[5];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v5 = *(a1[4] + 32);
    if (isKindOfClass)
    {
      (*(v5 + 16))(v5, a1[5], 0);
    }

    else
    {
      v6 = a1[6];
      if (v6)
      {
        (*(v5 + 16))(v5, 0, v6);
      }

      else
      {
        v9 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x277CCA9B8], v4, @"PageContentFetcher", -1, 0);
        (*(v5 + 16))(v5, 0, v9);
      }
    }

    v7 = a1[4];
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }
}

void sub_232CE5950(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 0, *(a1 + 40));
    v3 = *(a1 + 32);
    v4 = *(v3 + 32);
    *(v3 + 32) = 0;
  }
}

id sub_232CE5A98(uint64_t a1)
{
  v2 = _Block_copy(*(a1 + 48));
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  return objc_msgSend_loadHTMLString_baseURL_(*(*(a1 + 32) + 8), v5, *(a1 + 40), 0, v6);
}

void sub_232CE5FBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_232CE5FD8(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232CE6168(a1, a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebsiteDataStore");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27DDD4E30 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "Class getWKWebsiteDataStoreClass(void)_block_invoke", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v15, v14, @"PageContentFetcher.m", 21, @"Unable to find class %s", "WKWebsiteDataStore");

    __break(1u);
  }
}

void sub_232CE60A0(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_232CE6168(a1, a2, a3, a4, a5);
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WKWebpagePreferences");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_27DDD4E40 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v10 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v6, v7, v8, v9);
    v14 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v11, "Class getWKWebpagePreferencesClass(void)_block_invoke", v12, v13);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v10, v15, v14, @"PageContentFetcher.m", 22, @"Unable to find class %s", "WKWebpagePreferences");

    __break(1u);
  }
}

void sub_232CE6168(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  if (!qword_27DDD4E38)
  {
    v13[1] = MEMORY[0x277D85DD0];
    v13[2] = 3221225472;
    v13[3] = sub_232CE62B8;
    v13[4] = &unk_2789A7E98;
    v13[5] = v13;
    v14 = xmmword_2789A7E80;
    v15 = 0;
    qword_27DDD4E38 = _sl_dlopen();
  }

  if (!qword_27DDD4E38)
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], a2, a3, a4, a5);
    v11 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v8, "void *WebKitLibrary(void)", v9, v10);
    objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v7, v12, v11, @"PageContentFetcher.m", 17, @"%s", v13[0]);

    __break(1u);
    goto LABEL_7;
  }

  v5 = v13[0];
  if (v13[0])
  {
LABEL_7:
    free(v5);
  }

  v6 = *MEMORY[0x277D85DE8];
}

uint64_t sub_232CE62B8(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_27DDD4E38 = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_232CE6590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    operator delete(a25);
  }

  _Unwind_Resume(a1);
}

void sub_232CE67F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  sub_232C8BFB4(va);
  _Unwind_Resume(a1);
}

void sub_232CE697C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232CE6BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  sub_232CB32BC(&a9);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_232CE6C40(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x238392C10](v3, 0x10B3C403AC161EFLL);

  _Unwind_Resume(a1);
}

sqlite3 *DU_UDF_prenorm_cosine_distance_create_function(sqlite3 *result)
{
  if (result)
  {
    return sqlite3_create_function(result, "prenorm_cosine_distance", 2, 1, 0, DU_UDF_prenorm_cosine_distance, 0, 0);
  }

  return result;
}

void DU_UDF_prenorm_cosine_distance(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  if (a2 == 2 && ((v5 = sqlite3_value_bytes(*a3) >> 2, v6 = sqlite3_value_bytes(a3[1]) >> 2, v5 >= 1) ? (v7 = v5 == v6) : (v7 = 0), v7))
  {
    sqlite3_value_blob(*a3);
    sqlite3_value_blob(a3[1]);
    cblas_sdot_NEWLAPACK();
    v9 = 1.0 - v8;

    sqlite3_result_double(a1, v9);
  }

  else
  {

    sqlite3_result_null(a1);
  }
}

uint64_t sub_232CE6D74(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CA5DD0(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_232CE6E3C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CA6D30(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_232CE6F04(uint64_t a1, char *a2, int32x2_t *a3)
{
  v322 = a2;
  v5 = sub_232CA8068(a3, &v322, a3[11].i32[1]);
  v6 = v322;
  if (v5)
  {
    return;
  }

  while (2)
  {
    v7 = v6 + 1;
    v8 = *v6;
    if ((*v6 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v8 + (*v7 << 7) - 128;
    if ((*v7 & 0x80000000) == 0)
    {
      v7 = v6 + 2;
LABEL_6:
      v322 = v7;
      goto LABEL_7;
    }

    v31 = sub_232CC2220(v6, v8);
    v322 = v31;
    if (!v31)
    {
      return;
    }

    v7 = v31;
LABEL_7:
    switch(v8 >> 3)
    {
      case 1u:
        if (v8 != 10)
        {
          goto LABEL_269;
        }

        v9 = v7 - 1;
        while (2)
        {
          v322 = v9 + 1;
          v10 = *(a1 + 72);
          if (!v10)
          {
            v13 = *(a1 + 68);
LABEL_16:
            sub_232CC74E8(a1 + 56, v13 + 1);
            v12 = *(a1 + 72);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(a1 + 64);
          sub_232CB0664(v10);
          if (v14 != v15)
          {
            sub_232CB064C();
            *(a1 + 64) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_232CB06A0(v12);
          v21 = *(a1 + 56);
          if (!v21)
          {
            sub_232CB06AC();
          }

          if (*(v21 + 24))
          {
            v29 = sub_232CB0604();
            (*(v30 + 40))(v29, &unk_284815898, 24);
          }

          v22 = sub_232CB058C();
          sub_232CB067C(v22);
          v23 = *(a1 + 72);
          v24 = *(a1 + 64);
          sub_232CB0670();
          *(a1 + 64) = v25;
          v19 = sub_232CB0658(v26, v27);
LABEL_22:
          v322 = sub_232CC2264(v19, v16, a3);
          if (v322)
          {
            sub_232CB0640();
            if (!(!v257 & v28) || *v9 != 10)
            {
              goto LABEL_267;
            }

            continue;
          }

          return;
        }

      case 2u:
        if (v8 != 18)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 1);
        if (v56)
        {
          sub_232CB0688(v127, v56);
        }

        v57 = (a1 + 152);
        goto LABEL_227;
      case 3u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        v186 = (v7 + 1);
        v185 = *v7;
        if ((v185 & 0x8000000000000000) == 0)
        {
          goto LABEL_183;
        }

        sub_232CB0560(v185, v186);
        if (v188 < 0)
        {
          v322 = sub_232CC21D8(v187, v185);
          if (!v322)
          {
            return;
          }
        }

        else
        {
          v186 = (v187 + 2);
LABEL_183:
          v322 = v186;
        }

        if ((v185 - 1) > 3)
        {
          v316 = *(a1 + 8);
          if (v316)
          {
            v317 = ((v316 & 0xFFFFFFFFFFFFFFFELL) + 8);
          }

          else
          {
            v320 = v185;
            v321 = sub_232CA81A8((a1 + 8));
            v185 = v320;
            v317 = v321;
          }

          sub_232CC20C0(3, v185, v317);
        }

        else
        {
          *(a1 + 40) |= 0x800000u;
          *(a1 + 272) = v185;
        }

        goto LABEL_267;
      case 4u:
        if (v8 != 32)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_232CB0578(v123, v124);
        if (v126 < 0)
        {
          v284 = sub_232CC21D8(v125, v123);
          v322 = v284;
          *(a1 + 276) = v285;
          if (!v284)
          {
            return;
          }
        }

        else
        {
          v124 = (v125 + 2);
LABEL_122:
          v322 = v124;
          *(a1 + 276) = v123;
        }

        goto LABEL_267;
      case 5u:
        if (v8 != 42)
        {
          goto LABEL_269;
        }

        v152 = v7 - 1;
        while (1)
        {
          v322 = v152 + 1;
          v153 = *(a1 + 96);
          if (!v153)
          {
            break;
          }

          v154 = *(a1 + 88);
          sub_232CB0664(v153);
          if (v14 == v15)
          {
            if (v156 == *(a1 + 92))
            {
LABEL_154:
              sub_232CC74E8(a1 + 80, v156 + 1);
              v155 = *(a1 + 96);
              v161 = *v155;
            }

            sub_232CB06A0(v155);
            v162 = *(a1 + 80);
            if (!v162)
            {
              sub_232CB06AC();
            }

            if (*(v162 + 24))
            {
              v169 = sub_232CB0604();
              (*(v170 + 40))(v169, &unk_284815898, 24);
            }

            v163 = sub_232CB058C();
            sub_232CB067C(v163);
            v164 = *(a1 + 96);
            v165 = *(a1 + 88);
            sub_232CB0670();
            *(a1 + 88) = v166;
            v160 = sub_232CB0658(v167, v168);
            goto LABEL_160;
          }

          sub_232CB064C();
          *(a1 + 88) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          v322 = sub_232CC2264(v160, v157, a3);
          if (!v322)
          {
            return;
          }

          sub_232CB0640();
          if (!(!v257 & v28) || *v152 != 42)
          {
            goto LABEL_267;
          }
        }

        v156 = *(a1 + 92);
        goto LABEL_154;
      case 6u:
        if (v8 != 48)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_232CB0578(v181, v182);
        if (v184 < 0)
        {
          v298 = sub_232CC21D8(v183, v181);
          v322 = v298;
          *(a1 + 224) = v299;
          if (!v298)
          {
            return;
          }
        }

        else
        {
          v182 = (v183 + 2);
LABEL_178:
          v322 = v182;
          *(a1 + 224) = v181;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 2);
        if (v56)
        {
          sub_232CB0688(v219, v56);
        }

        v57 = (a1 + 160);
        goto LABEL_227;
      case 0xAu:
        if (v8 != 85)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x2000000u;
        v221 = *v7;
        v144 = v7 + 4;
        *(a1 + 280) = v221;
        goto LABEL_251;
      case 0xBu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_232CB0560(v97, v98);
        if (v100 < 0)
        {
          v274 = sub_232CC21D8(v99, v97);
          v322 = v274;
          *(a1 + 232) = v275;
          if (!v274)
          {
            return;
          }
        }

        else
        {
          v98 = (v99 + 2);
LABEL_100:
          v322 = v98;
          *(a1 + 232) = v97;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_232CB0578(v222, v223);
        if (v225 < 0)
        {
          v304 = sub_232CC21D8(v224, v222);
          v322 = v304;
          *(a1 + 228) = v305;
          if (!v304)
          {
            return;
          }
        }

        else
        {
          v223 = (v224 + 2);
LABEL_234:
          v322 = v223;
          *(a1 + 228) = v222;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_232CB0578(v113, v114);
        if (v116 < 0)
        {
          v280 = sub_232CC21D8(v115, v113);
          v322 = v280;
          *(a1 + 240) = v281;
          if (!v280)
          {
            return;
          }
        }

        else
        {
          v114 = (v115 + 2);
LABEL_113:
          v322 = v114;
          *(a1 + 240) = v113;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_232CB0578(v171, v172);
        if (v174 < 0)
        {
          v294 = sub_232CC21D8(v173, v171);
          v322 = v294;
          *(a1 + 284) = v295;
          if (!v294)
          {
            return;
          }
        }

        else
        {
          v172 = (v173 + 2);
LABEL_169:
          v322 = v172;
          *(a1 + 284) = v171;
        }

        goto LABEL_267;
      case 0xFu:
        if (v8 != 125)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x8000000u;
        v145 = *v7;
        v144 = v7 + 4;
        *(a1 + 288) = v145;
        goto LABEL_251;
      case 0x10u:
        if (v8 != 128)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_232CB0578(v74, v75);
        if (v77 < 0)
        {
          v272 = sub_232CC21D8(v76, v74);
          v322 = v272;
          *(a1 + 292) = v273;
          if (!v272)
          {
            return;
          }
        }

        else
        {
          v75 = (v76 + 2);
LABEL_76:
          v322 = v75;
          *(a1 + 292) = v74;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_232CB0578(v211, v212);
        if (v214 < 0)
        {
          v300 = sub_232CC21D8(v213, v211);
          v322 = v300;
          *(a1 + 296) = v301;
          if (!v300)
          {
            return;
          }
        }

        else
        {
          v212 = (v213 + 2);
LABEL_217:
          v322 = v212;
          *(a1 + 296) = v211;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_232CB0578(v215, v216);
        if (v218 < 0)
        {
          v302 = sub_232CC21D8(v217, v215);
          v322 = v302;
          *(a1 + 300) = v303;
          if (!v302)
          {
            return;
          }
        }

        else
        {
          v216 = (v217 + 2);
LABEL_222:
          v322 = v216;
          *(a1 + 300) = v215;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(v7, *(a1 + 44) | 1);
        if (v234 < 0 && (sub_232CB0560(v234, v235), v238 < 0))
        {
          sub_232CC21D8(v237, v236);
          sub_232CB05B4();
          *(a1 + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_232CB0578(v230, v231);
        if (v233 < 0)
        {
          v308 = sub_232CC21D8(v232, v230);
          v322 = v308;
          *(a1 + 304) = v309;
          if (!v308)
          {
            return;
          }
        }

        else
        {
          v231 = (v232 + 2);
LABEL_244:
          v322 = v231;
          *(a1 + 304) = v230;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(v7, *(a1 + 44) | 2);
        if (v58 < 0 && (sub_232CB0560(v58, v59), v62 < 0))
        {
          sub_232CC21D8(v61, v60);
          sub_232CB05B4();
          *(a1 + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(v7, *(a1 + 44) | 8);
        if (v146 < 0 && (sub_232CB0560(v146, v147), v150 < 0))
        {
          sub_232CC21D8(v149, v148);
          sub_232CB05B4();
          *(a1 + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(v7, *(a1 + 44) | 4);
        if (v241 < 0 && (sub_232CB0560(v241, v242), v245 < 0))
        {
          sub_232CC21D8(v244, v243);
          sub_232CB05B4();
          *(a1 + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x4000);
        if (v68 < 0 && (sub_232CB0560(v68, v69), v72 < 0))
        {
          sub_232CC21D8(v71, v70);
          sub_232CB05B4();
          *(a1 + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x10000);
        if (v138 < 0 && (sub_232CB0560(v138, v139), v142 < 0))
        {
          sub_232CC21D8(v141, v140);
          sub_232CB05B4();
          *(a1 + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x8000);
        if (v101 < 0 && (sub_232CB0560(v101, v102), v105 < 0))
        {
          sub_232CC21D8(v104, v103);
          sub_232CB05B4();
          *(a1 + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 246) = v106;
        }

        goto LABEL_267;
      case 0x1Eu:
        if (v8 != 242)
        {
          goto LABEL_269;
        }

        v189 = v7 - 2;
        while (1)
        {
          v322 = v189 + 2;
          v190 = *(a1 + 120);
          if (!v190)
          {
            break;
          }

          v191 = *(a1 + 112);
          sub_232CB0664(v190);
          if (v14 == v15)
          {
            if (v193 == *(a1 + 116))
            {
LABEL_194:
              sub_232CC74E8(a1 + 104, v193 + 1);
              v192 = *(a1 + 120);
              v198 = *v192;
            }

            sub_232CB06A0(v192);
            v199 = *(a1 + 104);
            if (!v199)
            {
              sub_232CB06AC();
            }

            if (*(v199 + 24))
            {
              v206 = sub_232CB0604();
              (*(v207 + 40))(v206, &unk_284815898, 24);
            }

            v200 = sub_232CB058C();
            sub_232CB067C(v200);
            v201 = *(a1 + 120);
            v202 = *(a1 + 112);
            sub_232CB0670();
            *(a1 + 112) = v203;
            v197 = sub_232CB0658(v204, v205);
            goto LABEL_200;
          }

          sub_232CB064C();
          *(a1 + 112) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          v322 = sub_232CC2264(v197, v194, a3);
          if (!v322)
          {
            return;
          }

          sub_232CB0640();
          if (!(!v257 & v28) || *v189 != 498)
          {
            goto LABEL_267;
          }
        }

        v193 = *(a1 + 116);
        goto LABEL_194;
      case 0x1Fu:
        if (v8 != 250)
        {
          goto LABEL_269;
        }

        v78 = v7 - 2;
        break;
      case 0x20u:
        if (v8)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(v7, *(a1 + 44) | 0x10);
        if (v49 < 0 && (sub_232CB0560(v49, v50), v53 < 0))
        {
          sub_232CC21D8(v52, v51);
          sub_232CB05B4();
          *(a1 + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_232CB05F4(v7, *(a1 + 44) | 0x20);
        if (v247 < 0 && (sub_232CB0560(v247, v248), v251 < 0))
        {
          sub_232CC21D8(v250, v249);
          sub_232CB05B4();
          *(a1 + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x40000);
        if (v117 < 0 && (sub_232CB0560(v117, v118), v121 < 0))
        {
          sub_232CC21D8(v120, v119);
          sub_232CB05B4();
          *(a1 + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x20000);
        if (v128 < 0 && (sub_232CB0560(v128, v129), v132 < 0))
        {
          sub_232CC21D8(v131, v130);
          sub_232CB05B4();
          *(a1 + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 4);
        if (v56)
        {
          sub_232CB0688(v210, v56);
        }

        v57 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_232CB05D4(v7, *(a1 + 40) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_232CB0578(v134, v135);
        if (v137 < 0)
        {
          v288 = sub_232CC21D8(v136, v134);
          v322 = v288;
          *(a1 + 252) = v289;
          if (!v288)
          {
            return;
          }
        }

        else
        {
          v135 = (v136 + 2);
LABEL_135:
          v322 = v135;
          *(a1 + 252) = v134;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_232CB0618(v7, *(a1 + 44) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_232CB0578(v36, v37);
        if (v39 < 0)
        {
          v262 = sub_232CC21D8(v38, v36);
          v322 = v262;
          *(a1 + 316) = v263;
          if (!v262)
          {
            return;
          }
        }

        else
        {
          v37 = (v38 + 2);
LABEL_38:
          v322 = v37;
          *(a1 + 316) = v36;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_232CB0618(v7, *(a1 + 44) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_232CB0578(v64, v65);
        if (v67 < 0)
        {
          v268 = sub_232CC21D8(v66, v64);
          v322 = v268;
          *(a1 + 320) = v269;
          if (!v268)
          {
            return;
          }
        }

        else
        {
          v65 = (v66 + 2);
LABEL_67:
          v322 = v65;
          *(a1 + 320) = v64;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_232CB0618(v7, *(a1 + 44) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_232CB0578(v226, v227);
        if (v229 < 0)
        {
          v306 = sub_232CC21D8(v228, v226);
          v322 = v306;
          *(a1 + 324) = v307;
          if (!v306)
          {
            return;
          }
        }

        else
        {
          v227 = (v228 + 2);
LABEL_239:
          v322 = v227;
          *(a1 + 324) = v226;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 8);
        if (v42)
        {
          sub_232CB0634(v253, v254, v42);
        }

        v43 = &off_27DDC8808;
        v44 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x10);
        if (v42)
        {
          sub_232CB0634(v47, v48, v42);
        }

        v43 = &off_27DDC8788;
        v44 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x20);
        if (v42)
        {
          sub_232CB0634(v208, v209, v42);
        }

        v43 = &off_27DDC87A8;
        v44 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x40);
        if (v42)
        {
          sub_232CB0634(v45, v46, v42);
        }

        v43 = &off_27DDC87C8;
        v44 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_232CB0628(*(a1 + 40) | 0x80);
        if (v42)
        {
          sub_232CB0634(v40, v41, v42);
        }

        v43 = &off_27DDC87E8;
        v44 = (a1 + 208);
LABEL_264:
        v220 = sub_232CB45D4(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x80000);
        if (v107 < 0 && (sub_232CB0560(v107, v108), v111 < 0))
        {
          sub_232CC21D8(v110, v109);
          sub_232CB05B4();
          *(a1 + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x2000);
        if (v175 < 0 && (sub_232CB0560(v175, v176), v179 < 0))
        {
          sub_232CC21D8(v178, v177);
          sub_232CB05B4();
          *(a1 + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          sub_232CB05C4();
          *(a1 + 244) = v180;
        }

        goto LABEL_267;
      case 0x33u:
        if (v8 != 157)
        {
          goto LABEL_269;
        }

        *(a1 + 40) |= 0x200000u;
        v240 = *v7;
        v144 = v7 + 4;
        *(a1 + 256) = v240;
LABEL_251:
        v322 = v144;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_232CB05E4(v7, *(a1 + 40) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_232CB0560(v32, v33);
        if (v35 < 0)
        {
          v260 = sub_232CC21D8(v34, v32);
          v322 = v260;
          *(a1 + 264) = v261;
          if (!v260)
          {
            return;
          }
        }

        else
        {
          v33 = (v34 + 2);
LABEL_33:
          v322 = v33;
          *(a1 + 264) = v32;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_232CB0694(*(a1 + 40) | 0x100);
        if (v56)
        {
          sub_232CB0688(v55, v56);
        }

        v57 = (a1 + 216);
LABEL_227:
        v220 = sub_232CB44C8(v57, v56);
LABEL_265:
        v255 = sub_232CC2264(v220, v322, a3);
        goto LABEL_266;
      default:
LABEL_269:
        if (v8)
        {
          v257 = (v8 & 7) == 4;
        }

        else
        {
          v257 = 1;
        }

        if (v257)
        {
          a3[10].i32[0] = v8 - 1;
          return;
        }

        if (v8 < 0x640)
        {
          v258 = *(a1 + 8);
          if (v258)
          {
            v259 = (v258 & 0xFFFFFFFFFFFFFFFELL) + 8;
          }

          else
          {
            v318 = v8;
            v319 = sub_232CA81A8((a1 + 8));
            v8 = v318;
            v259 = v319;
            v7 = v322;
          }

          v255 = sub_232CC2720(v8, v259, v7, a3);
        }

        else
        {
          v255 = sub_232CBACD8((a1 + 16), v8, v7, &unk_27DDD5398, (a1 + 8), a3);
        }

LABEL_266:
        v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = sub_232CA8068(a3, &v322, a3[11].i32[1]);
        v6 = v322;
        if (v256)
        {
          return;
        }

        continue;
    }

    break;
  }

  while (1)
  {
    v322 = v78 + 2;
    v79 = *(a1 + 144);
    if (!v79)
    {
      break;
    }

    v80 = *(a1 + 136);
    sub_232CB0664(v79);
    if (v14 == v15)
    {
      if (v82 == *(a1 + 140))
      {
LABEL_85:
        sub_232CC74E8(a1 + 128, v82 + 1);
        v81 = *(a1 + 144);
        v87 = *v81;
      }

      sub_232CB06A0(v81);
      v88 = *(a1 + 128);
      if (!v88)
      {
        sub_232CB06AC();
      }

      if (*(v88 + 24))
      {
        v95 = sub_232CB0604();
        (*(v96 + 40))(v95, &unk_284815898, 24);
      }

      v89 = sub_232CB058C();
      sub_232CB067C(v89);
      v90 = *(a1 + 144);
      v91 = *(a1 + 136);
      sub_232CB0670();
      *(a1 + 136) = v92;
      v86 = sub_232CB0658(v93, v94);
      goto LABEL_91;
    }

    sub_232CB064C();
    *(a1 + 136) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    v322 = sub_232CC2264(v86, v83, a3);
    if (!v322)
    {
      return;
    }

    sub_232CB0640();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(a1 + 140);
  goto LABEL_85;
}

uint64_t sub_232CE7F74(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CAC45C(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_232CE803C(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CAD3AC(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_232CE8104(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_232CE88A0(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_232CE6F04(a2, v8, a1);
    if (v15)
    {
      ++a1[11].i32[0];
      if (!a1[10].i32[0])
      {
        v16 = a1[3].i32[1] + v14;
        a1[3].i32[1] = v16;
        *a1 = (*&a1[1] + (v16 & (v16 >> 31)));
      }
    }
  }
}

uint64_t sub_232CE81CC(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CAB7D4(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

uint64_t sub_232CE8294(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = a3 + 1;
  }

  v11 = sub_232CA84D8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_232CACB78(a2, v8, a1);
  if (!result)
  {
    return result;
  }

  ++a1[11].i32[0];
  if (a1[10].i32[0])
  {
    return 0;
  }

  v15 = a1[3].i32[1] + v14;
  a1[3].i32[1] = v15;
  *a1 = (*&a1[1] + (v15 & (v15 >> 31)));
  return result;
}

void sub_232CE835C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_232CB99CC(v5, v6, *v7, (v7 + 8));
    }

    else
    {
      v8 = 0;
      v9 = v7 + 32 * *(a2 + 10);
      if (*(a1 + 10) && *(a2 + 10))
      {
        v8 = 0;
        do
        {
          if (*v5 == *v7)
          {
            v10 = v5 + 32;
          }

          else
          {
            v10 = v5;
          }

          if (*v5 < *v7)
          {
            v5 += 32;
          }

          else
          {
            v7 += 32;
            v5 = v10;
          }

          ++v8;
        }

        while (v5 != v6 && v7 != v9);
      }

      v12 = v8 + ((v9 - v7) >> 5) + ((v6 - v5) >> 5);
    }

    sub_232CB980C(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_232CBF9A4(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_232CB9AD4(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_232CE8490()
{
  sub_232CC1714();
  v13 = *MEMORY[0x277D85DE8];
  sub_232CC16F4();
  sub_232CC16E0();
  sub_232CBFE10(v2, v3, v4);
  sub_232CC1704();
  v6 = *(v5 + 88);
  v7 = sub_232CC1734();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if (v1 & 2) != 0 || (sub_232CC1728(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      sub_232CC0DD0(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

_OWORD *sub_232CE8580()
{
  sub_232CC4894();
  if (*(v6 + 23) < 0)
  {
    **v1 = 0;
    *(v1 + 8) = 0;
  }

  else
  {
    *v1 = 0;
    *(v1 + 23) = 0;
  }

  v7 = *(v2 + 8);
  if (v7 - v3 + *(v2 + 28) >= v0)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_232CC4854(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_232CC48A8(v4, v5);
      v11 = sub_232CB571C(v16, "CHECK failed: size > chunk_size: ");
      sub_232CB5858(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_232CB5860(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_232CC48C8(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_232CC17E8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_232CC487C(result);
    if (v14 ^ v10 | v13)
    {
      sub_232CC48C8(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_232CE8694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_232CE86AC()
{
  sub_232CC4894();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_232CC4854(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_232CC48A8(v4, v5);
      v11 = sub_232CB571C(v16, "CHECK failed: size > chunk_size: ");
      sub_232CB5858(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_232CB5860(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_232CC48C8(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_232CC17E8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_232CC487C(result);
    if (v14 ^ v10 | v13)
    {
      sub_232CC48C8(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_232CE87A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_232CB5860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_232CE87B8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_232CE88A0(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v15;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v9 = sub_232CA84D8(a1, v8, v7);
  v10 = *(a1 + 88);
  v11 = __OFSUB__(v10--, 1);
  *(a1 + 88) = v10;
  if (v10 < 0 == v11)
  {
    v12 = v9;
    result = (*(*a2 + 88))(a2, v8, a1);
    if (!result)
    {
      return result;
    }

    ++*(a1 + 88);
    if (!*(a1 + 80))
    {
      v14 = *(a1 + 28) + v12;
      *(a1 + 28) = v14;
      *a1 = *(a1 + 8) + (v14 & (v14 >> 31));
      return result;
    }
  }

  return 0;
}

uint64_t sub_232CE88A0(uint64_t a1, int a2)
{
  result = a1 + 2;
  v4 = -21;
  while (1)
  {
    a2 += (*(result - 1) - 1) << (v4 + 28);
    if ((*(result - 1) & 0x80000000) == 0)
    {
      break;
    }

    ++result;
    v4 += 7;
    if (!v4)
    {
      v5 = *(a1 + 4);
      v6 = a1 + 5;
      if (a2 + (v5 << 28) - 0x10000000 > 0x7FFFFFEF)
      {
        v6 = 0;
      }

      if (v5 <= 7)
      {
        return v6;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  MEMORY[0x2821DE300](string);
  result.y = v2;
  result.x = v1;
  return result;
}

CGRect CGRectFromString(NSString *string)
{
  MEMORY[0x2821DE308](string);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F7B8](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x28211F910](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73E8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x2821F73F8](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78E0]();
}

{
  return MEMORY[0x2821F78E8]();
}

{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

{
  return MEMORY[0x2821F7908]();
}

{
  return MEMORY[0x2821F7918]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, std::align_val_t a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz)
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void *__cdecl operator new(size_t __sz)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, std::align_val_t a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}