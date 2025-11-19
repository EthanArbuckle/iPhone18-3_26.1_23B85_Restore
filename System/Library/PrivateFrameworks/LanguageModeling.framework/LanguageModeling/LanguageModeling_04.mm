uint64_t sub_1AE608454(uint64_t a1, uint64_t a2)
{
  if (sub_1AE6085B4(a2, &unk_1F2429EB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_1AE6084A0(void *a1, uint64_t a2)
{
  v4 = sub_1AE608044(a1, *a2, *(a2 + 8));
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

  v11 = *v10;
  if (*v10)
  {
    v14 = a2;
    v12 = *a2;
    v13 = *(v14 + 8);
    do
    {
      v15 = v11[1];
      if (v15 == v6)
      {
        if (v11[3] == v13 && !memcmp(v11[2], v12, v13))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v15 >= *&v5)
          {
            v15 %= *&v5;
          }
        }

        else
        {
          v15 &= *&v5 - 1;
        }

        if (v15 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

BOOL sub_1AE6085B4(uint64_t a1, uint64_t a2)
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

void *sub_1AE608608(void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_1AE608860(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1AE6090F0(a1);
}

void sub_1AE60886C()
{
  if (!dword_1EB5E12B0)
  {
    v0 = sub_1AE6088B4(MEMORY[0x1E69E5300], "Program terminated with an unrecoverable error.");
    v1 = sub_1AE6088FC(v0);
    sub_1AE6089B4(v1);
    exit(-1);
  }

  dword_1EB5E12B0 = 2;
}

void *sub_1AE6088B4(void *a1, char *__s)
{
  v4 = strlen(__s);

  return sub_1AE5DB608(a1, __s, v4);
}

void *sub_1AE6088FC(void *a1)
{
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v2 = std::locale::use_facet(&v4, MEMORY[0x1E69E5318]);
  (v2->__vftable[2].~facet_0)(v2, 10);
  std::locale::~locale(&v4);
  std::ostream::put();
  std::ostream::flush();
  return a1;
}

uint64_t *sub_1AE6089C0(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1AE608DAC(a1, v2);
  }

  return a1;
}

void sub_1AE608B04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  *v1 = 0;
  if (v3)
  {
    sub_1AE608DAC(v1, v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1AE608B28(void *result, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  *result = 0;
  return result;
}

void sub_1AE608BD8(uint64_t *a1, void *a2)
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

      sub_1AE608DAC(a1, v3);
    }
  }
}

const char *sub_1AE608CB8(uint64_t *a1)
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

std::string *sub_1AE608CE4@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
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
      MEMORY[0x1B2705F20](a2, off_1E7A2D758[v5]);
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

void sub_1AE608D8C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE608DAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    JUMPOUT(0x1B2706400);
  }
}

void *sub_1AE608E20()
{
  if ((atomic_load_explicit(&qword_1EB5E0B98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB5E0B98))
  {
    operator new();
  }

  v0 = qword_1EB5E0B90;

  return sub_1AE608EF0(v0);
}

void sub_1AE608EB8(_Unwind_Exception *a1)
{
  MEMORY[0x1B2706400](v1, 0x1000C4000313F17);
  __cxa_guard_abort(&qword_1EB5E0B98);
  _Unwind_Resume(a1);
}

void *sub_1AE608EF0(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_1AE799EF0;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t sub_1AE608F58(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) < a2)
  {
    sub_1AE60AE24(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 111);
    v4 = sub_1AE60AE3C(v7, "CHECK failed: n <= size_: ");
    sub_1AE60AF78(&v6, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v7);
  }

  return a1 + a2;
}

void sub_1AE608FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void *sub_1AE609004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6 + 72;
  if (v6 + 72 > *(a1 + 16))
  {
    sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v8 = sub_1AE60AE3C(v13, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    sub_1AE60AF78(&v12, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v13);
  }

  v9 = sub_1AE608F58(a1, v6);
  *(a1 + 8) = v7;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = a1;
  v9[5] = sub_1AE608F58(a1, v7);
  v10 = sub_1AE608F58(a1, *(a1 + 16));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_1AE6090D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void *sub_1AE609120(uint64_t a1, uint64_t a2, unint64_t a3)
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
    sub_1AE60AE24(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = sub_1AE60AE3C(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_1AE60AF78(&v11, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v12);
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

void sub_1AE60920C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE609224(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  v7 = sub_1AE609120(a3, v6, a2);

  return sub_1AE6097B8(v7, v8, a1, 0, 0);
}

void *sub_1AE609280(uint64_t *a1, uint64_t a2, uint64_t a3)
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

    result = sub_1AE60931C(a1, (16 * v7 + 23) & 0xFF0);
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

unint64_t sub_1AE60931C(uint64_t *a1, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    sub_1AE60AE24(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v4 = sub_1AE60AE3C(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    sub_1AE60AF78(&v8, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v9);
  }

  result = a1[5];
  v6 = a1[6];
  if (v6 < result)
  {
    sub_1AE60AE24(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v7 = sub_1AE60AE3C(v9, "CHECK failed: (limit_) >= (ptr_): ");
    sub_1AE60AF78(&v8, &v7->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v9);
    result = a1[5];
    v6 = a1[6];
  }

  if (v6 - result < a2)
  {
    return sub_1AE6096A4(a1, a2);
  }

  a1[5] = result + a2;
  return result;
}

void sub_1AE609404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1AE609424(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AE608E20();
  if (v6[1] == a1[3])
  {
    explicit = v6[2];
    goto LABEL_3;
  }

  v9 = sub_1AE608E20();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v9)
  {
LABEL_3:

    return sub_1AE6094D0(explicit, a2, a3);
  }

  return sub_1AE609530(a1, a2, a3);
}

unint64_t sub_1AE6094D0(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_1AE60931C(a1, a2);
  v6 = v5;
  v7 = a1[7];
  if (v7 == a1[8])
  {
    sub_1AE609280(a1, v5, a3);
  }

  else
  {
    *v7 = v5;
    v7[1] = a3;
    a1[7] = (v7 + 2);
  }

  return v6;
}

unint64_t sub_1AE609530(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_1AE608E20();
  v7 = sub_1AE6095DC(a1, v6);

  return sub_1AE6094D0(v7, a2, a3);
}

unint64_t sub_1AE609594(void *a1, unint64_t a2)
{
  v4 = sub_1AE608E20();
  v5 = sub_1AE6095DC(a1, v4);

  return sub_1AE60931C(v5, a2);
}

unint64_t sub_1AE6095DC(void *a1, uint64_t a2)
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
    v5 = sub_1AE609120(a1, -1, 0x48uLL);
    *v5 = xmmword_1AE799F00;
    v5[2] = v6;
    v7 = sub_1AE609004(v5, a2, a1);
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

  sub_1AE608E20()[2] = explicit;
  v12 = a1[3];
  sub_1AE608E20()[1] = v12;
  atomic_store(explicit, a1 + 1);
  return explicit;
}

uint64_t sub_1AE6096A4(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  *(v4 + 8) = *(v4 + 16) - a1[6] + a1[5];
  v5 = sub_1AE609224(v4, a2, *a1);
  a1[2] = v5;
  a1[5] = sub_1AE608F58(v5, v5[1]);
  a1[6] = sub_1AE608F58(a1[2], *(a1[2] + 16));

  return sub_1AE60931C(a1, a2);
}

unint64_t sub_1AE609724(void *a1, unint64_t a2)
{
  v4 = sub_1AE608E20();
  if (v4[1] == a1[3])
  {
    explicit = v4[2];
    goto LABEL_3;
  }

  v7 = sub_1AE608E20();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v7)
  {
LABEL_3:

    return sub_1AE60931C(explicit, a2);
  }

  return sub_1AE609594(a1, a2);
}

uint64_t *sub_1AE6097B8(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
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
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = sub_1AE60AE3C(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v10);
  }

  return a1;
}

void sub_1AE60984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE609864(uint64_t result)
{
  if (result)
  {
    JUMPOUT(0x1B27063F0);
  }

  return result;
}

unint64_t sub_1AE609874(unint64_t *a1)
{
  if ((atomic_load_explicit(&qword_1EB5E0BA0, memory_order_acquire) & 1) == 0)
  {
    sub_1AE609EFC();
  }

  std::mutex::lock(&stru_1EB5E01D0);
  explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = a1[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1AE5DB4F0();
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

  std::mutex::unlock(&stru_1EB5E01D0);
  return explicit;
}

unint64_t sub_1AE609970(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 != a2)
  {
    sub_1AE5FD4D8(a1);

    JUMPOUT(0x1B2705F30);
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
    sub_1AE609F64(a4);
  }

  result = sub_1AE609424(a4, 0x18uLL, sub_1AE604FE0);
  v8 = result;
  if (*(a3 + 23) < 0)
  {
    result = sub_1AE5DBF1C(result, *a3, *(a3 + 1));
  }

  else
  {
    v9 = *a3;
    *(result + 16) = *(a3 + 2);
    *result = v9;
  }

  *a1 = v8;
  return result;
}

void sub_1AE609AB4(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
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
      sub_1AE609F64(a4);
      a4 = v11;
    }

    v9 = sub_1AE609424(a4, 0x18uLL, sub_1AE604FE0);
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
    v6 = sub_1AE5FD4D8(a1);
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

uint64_t *sub_1AE609BE8(uint64_t *a1, uint64_t a2)
{
  if (*a1 == &qword_1EB5E0FA8)
  {
    return sub_1AE609C04(a1, a2);
  }

  else
  {
    return sub_1AE5FD4D8(a1);
  }
}

uint64_t *sub_1AE609C04(uint64_t **a1, uint64_t a2)
{
  if (*a1 != &qword_1EB5E0FA8)
  {
    sub_1AE60AE24(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = sub_1AE60AE3C(v7, "CHECK failed: IsDefault(default_value): ");
    sub_1AE60AF78(&v6, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v7);
  }

  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_1AE609F94(a2);
  }

  result = sub_1AE609424(a2, 0x18uLL, sub_1AE604FE0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_1AE609CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1AE609CF4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_1AE5FD4D8(a1);
  }

  else
  {
    return sub_1AE609D10(a1, a3, a2);
  }
}

unint64_t sub_1AE609D10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = sub_1AE60AE3C(v13, "CHECK failed: IsDefault(default_value): ");
    sub_1AE60AF78(&v12, &v6->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v13);
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

  explicit = sub_1AE609874(a3);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(a2 + 24))
  {
    sub_1AE609F94(a2);
  }

  v8 = sub_1AE609424(a2, 0x18uLL, sub_1AE604FE0);
  v9 = v8;
  if (*(explicit + 23) < 0)
  {
    sub_1AE5DBF1C(v8, *explicit, *(explicit + 8));
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

std::string *sub_1AE609E74(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = sub_1AE5FD4D8(result);
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_1AE609874(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

void sub_1AE609EFC()
{
  if (__cxa_guard_acquire(&qword_1EB5E0BA0))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1EB5E01D0, &dword_1AE5C8000);

    __cxa_guard_release(&qword_1EB5E0BA0);
  }
}

int64_t sub_1AE609FD4(uint64_t a1, char *a2)
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
      sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = sub_1AE60AE3C(v15, "CHECK failed: !had_error_: ");
      sub_1AE60AF78(&v14, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v15);
    }

    if (v6 >= 17)
    {
      sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = sub_1AE60AE3C(v15, "CHECK failed: overrun <= kSlopBytes: ");
      sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v15);
    }

    a2 = &sub_1AE60A170(a1)[v6];
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
  sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = sub_1AE60AE3C(v15, "CHECK failed: s >= 0: ");
  sub_1AE60AF78(&v14, &v12->__r_.__value_.__l.__data_);
  sub_1AE60AF80(v15);
  return v9;
}

void sub_1AE60A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE60A170(char **a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = sub_1AE60AE3C(v13, "CHECK failed: !had_error_: ");
    sub_1AE60AF78(&v12, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v13);
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
        sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = sub_1AE60AE3C(v13, "CHECK failed: size > 0: ");
        sub_1AE60AF78(&v11, &v9->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v13);
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

void sub_1AE60A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE60A32C(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_1AE609FD4(a1, a2);
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

char *sub_1AE60A398(uint64_t a1, char *a2)
{
  while (*(a1 + 56) != 1)
  {
    v3 = &a2[-*a1];
    if ((v3 & 0x80000000) != 0)
    {
      sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = sub_1AE60AE3C(v8, "CHECK failed: overrun >= 0: ");
      sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = sub_1AE60AE3C(v8, "CHECK failed: overrun <= kSlopBytes: ");
      sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      sub_1AE60AF80(v8);
    }

    a2 = &sub_1AE60A170(a1)[v3];
    if (a2 < *a1)
    {
      return a2;
    }
  }

  return (a1 + 16);
}

void sub_1AE60A490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE60A4B0(uint64_t *a1, char *a2, int a3, unint64_t a4)
{
  v4 = a4;
  for (i = sub_1AE60A554(a1, a4); a3 > i; i = sub_1AE60A554(a1, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = sub_1AE60A398(a1, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t sub_1AE60A554(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1 + 16 < a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
    v3 = *a1;
  }

  return v3 - a2 + 16;
}

void sub_1AE60A5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE60A5F0(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if (sub_1AE60A554(a1, a4) <= a3)
  {
    v8 = sub_1AE60A32C(a1, a4);
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

  return sub_1AE60A4B0(a1, a2, a3, a4);
}

char *sub_1AE60A6F8(unint64_t *a1, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_1AE60A398(a1, a4);
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
    sub_1AE60AE24(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_1AE60AE3C(v23, "CHECK failed: ptr < end_: ");
    sub_1AE60AF78(&v22, &v10->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v23);
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

  return sub_1AE60A880(a1, v18, v9, v17);
}

void sub_1AE60A868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE60A880(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_1AE60A5F0(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_1AE60A4B0(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_1AE60A910(uint64_t *a1, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_1AE60A398(a1, a4);
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
    sub_1AE60AE24(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_1AE60AE3C(v23, "CHECK failed: ptr < end_: ");
    sub_1AE60AF78(&v22, &v10->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v23);
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
    return sub_1AE60A4B0(a1, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_1AE60AAA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE60AAC0(int a1, int a2, const std::string::value_type *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a2 > 3014000)
  {
    LODWORD(v20) = 3;
    v21 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v22 = 76;
    memset(&v23, 0, sizeof(v23));
    std::string::append(&v23, "This program requires version ");
    sub_1AE60AEAC(a2, &v17);
    if ((v19 & 0x80u) == 0)
    {
      v6 = &v17;
    }

    else
    {
      v6 = v17;
    }

    if ((v19 & 0x80u) == 0)
    {
      v7 = v19;
    }

    else
    {
      v7 = v18;
    }

    std::string::append(&v23, v6, v7);
    std::string::append(&v23, " of the Protocol Buffer runtime library, but the installed version is ");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v25 = 0;
    sub_1AE5CC990(&__p, __str);
    if ((v16 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v16 & 0x80u) == 0)
    {
      v9 = v16;
    }

    else
    {
      v9 = v15;
    }

    std::string::append(&v23, p_p, v9);
    std::string::append(&v23, ".  Please update your library.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v23, a3);
    std::string::append(&v23, ".)");
    sub_1AE60B134(&v20);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }

  if (a1 < 3014000)
  {
    LODWORD(v20) = 3;
    v21 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v22 = 87;
    memset(&v23, 0, sizeof(v23));
    std::string::append(&v23, "This program was compiled against version ");
    sub_1AE60AEAC(a1, &v17);
    if ((v19 & 0x80u) == 0)
    {
      v10 = &v17;
    }

    else
    {
      v10 = v17;
    }

    if ((v19 & 0x80u) == 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = v18;
    }

    std::string::append(&v23, v10, v11);
    std::string::append(&v23, " of the Protocol Buffer runtime library, which is not compatible with the installed version (");
    snprintf(__str, 0x80uLL, "%d.%d.%d", 3, 14, 0);
    v25 = 0;
    sub_1AE5CC990(&__p, __str);
    if ((v16 & 0x80u) == 0)
    {
      v12 = &__p;
    }

    else
    {
      v12 = __p;
    }

    if ((v16 & 0x80u) == 0)
    {
      v13 = v16;
    }

    else
    {
      v13 = v15;
    }

    std::string::append(&v23, v12, v13);
    std::string::append(&v23, ").  Contact the program author for an update.  If you compiled the program yourself, make sure that your headers are from the same version of Protocol Buffers as your link-time library.  (Version verification failed in ");
    std::string::append(&v23, a3);
    std::string::append(&v23, ".)");
    sub_1AE60B134(&v20);
    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v19 < 0)
    {
      operator delete(v17);
    }

    if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v23.__r_.__value_.__l.__data_);
    }
  }
}

void sub_1AE60ADB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_1AE60AE24(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_1AE60AE68(std::string *a1, const std::string::value_type *a2)
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

_BYTE *sub_1AE60AEAC@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  return sub_1AE5CC990(a2, __str);
}

uint64_t sub_1AE60AF80(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_1AE60AFB4(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    v4 = MEMORY[0x1E69E9848];
    if (*(a4 + 23) >= 0)
    {
      v5 = a4;
    }

    else
    {
      v5 = *a4;
    }

    fprintf(*MEMORY[0x1E69E9848], "[libprotobuf %s %s:%d] %s\n", off_1E7A2D7D8[result], a2, a3, v5);
    v6 = *v4;

    return fflush(v6);
  }

  return result;
}

std::string *sub_1AE60B034(std::string *a1, int a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_1AE60B0B4(std::string *a1, uint64_t a2)
{
  v5 = *MEMORY[0x1E69E9840];
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

const char **sub_1AE60B134(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(&unk_1EB5E0BA8);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_1EE7BD158(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_1AE60B1F4(exception, v1[1], *(v1 + 4), v1 + 3);
    __cxa_throw(exception, &unk_1F2429EC0, sub_1AE60B1F8);
  }

  return result;
}

void sub_1AE60B1FC(std::exception *this)
{
  this->__vftable = &unk_1F2429EE8;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_1AE60B25C(std::exception *a1)
{
  sub_1AE60B1FC(a1);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE60B294(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_1AE60B2B0(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &unk_1F2429EE8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_1AE5DBF1C((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_1AE60B330(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_1EB5E0BB0)
  {
    v3 = *(qword_1EB5E0BB0 + 8);
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

      v10 = *(*qword_1EB5E0BB0 + 8 * v9);
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

uint64_t sub_1AE60B444(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_1AE60B454(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_1AE614D78(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_1AE614AA0(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_1AE615E70(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      MEMORY[0x1B27063D0](*(a1 + 16), 0x1062C802AB6010CLL);
    }
  }

  return a1;
}

unsigned __int8 *sub_1AE60B514(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = result[8];
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = sub_1AE60AE3C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v10, &v3->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v11);
    }

    v4 = dword_1AE79A290[v2];
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
        return sub_1AE6050D4(*v1);
      }

      else if (v4 == 10)
      {
        return sub_1AE615670(*v1);
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
      sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = sub_1AE60AE3C(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v10, &v6->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v11);
    }

    v7 = dword_1AE79A290[v5];
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

void sub_1AE60B730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60B750(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 1)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 1)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1AE60B92C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60B964(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 1)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE615EC8(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DE8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 1)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61A9A4(v23, v24 + 1);
    result = sub_1AE61AE14(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_1AE61AE14(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60BC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60BC74(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 2)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 2)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1AE60BE50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60BE88(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 2)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE615F08(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DEC);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 2)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61B5FC(v23, v24 + 1);
    result = sub_1AE61BA6C(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_1AE61BA6C(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60C158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60C198(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 3)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 3)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1AE60C374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60C3AC(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 3)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE615F48(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DF0);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 3)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61AFD0(v23, v24 + 1);
    result = sub_1AE61B440(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_1AE61B440(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60C67C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60C6BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 4)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 4)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1AE60C898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60C8D0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE615F88(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DF4);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61BC28(v23, v24 + 1);
    result = sub_1AE61C098(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_1AE61C098(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60CBA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60CBE0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 6)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 6)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_1AE60CDC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60CDFC(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 6)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE615FC8(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DF8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 6)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61C254(v23, v24 + 1);
    result = sub_1AE61C6C4(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = sub_1AE61C6C4(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60D0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60D114(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 5)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 5)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_1AE60D2F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60D330(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 5)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE616008(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DFC);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 5)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61C880(v23, v24 + 1);
    result = sub_1AE61CCF0(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = sub_1AE61CCF0(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60D608(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60D648(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 7)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v9[9] = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = v9[8];
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 7)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  v9[10] &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1AE60D824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60D85C(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 7)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE616048(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614E00);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 7)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61A380(v23, v24 + 1);
    result = sub_1AE61A7EC(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = sub_1AE61A7EC(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60DB2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60DB6C(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_1AE60FF30(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_1AE79A290[a3];
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
            sub_1AE616148(v13);
          }

          v14 = sub_1AE614DF8;
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
            sub_1AE616118(v13);
          }

          v14 = sub_1AE614E00;
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
            sub_1AE6160B8(v15);
          }

          v16 = sub_1AE614E04;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_1AE616088(v15);
          }

          v16 = sub_1AE614E08;
LABEL_54:
          v17 = sub_1AE609424(v15, 0x18uLL, v16);
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
          sub_1AE6161D8(v13);
        }

        v14 = sub_1AE614DF0;
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
          sub_1AE6161A8(v13);
        }

        v14 = sub_1AE614DF4;
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
          sub_1AE616178(v13);
        }

        v14 = sub_1AE614DFC;
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
      sub_1AE6160E8(v13);
    }

LABEL_43:
    v14 = sub_1AE614DE8;
LABEL_48:
    v17 = sub_1AE609424(v13, 0x10uLL, v14);
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
        sub_1AE616208(v13);
      }

      v14 = sub_1AE614DEC;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t sub_1AE60DE5C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_1AE60FF30(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[a3] != 8)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1AE60AF78(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = sub_1AE60AE3C(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_1AE60AE3C(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }

    if (dword_1AE79A290[v14] != 8)
    {
      sub_1AE60AE24(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = sub_1AE60AE3C(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1AE60AF78(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1AE60E038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60E070(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_1AE60FF30(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[a3] != 8)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1AE60AF78(&v27, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
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
      sub_1AE615EC8(*a1);
    }

    v17 = sub_1AE609424(v16, 0x10uLL, sub_1AE614DE8);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = sub_1AE60AE3C(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v27, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_1AE60AE3C(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v27, &v20->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (dword_1AE79A290[v19] != 8)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = sub_1AE60AE3C(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_1AE60AF78(&v27, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_1AE60AE24(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = sub_1AE60AE3C(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_1AE60AF78(&v27, &v22->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_1AE61A9A4(v23, v24 + 1);
    result = sub_1AE61AE14(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_1AE61AE14(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1AE60E340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60E380(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_1AE60FF30(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_1AE60AE3C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v19, &v10->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v20);
    }

    if (dword_1AE79A290[a3] != 9)
    {
      sub_1AE60AE24(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = sub_1AE60AE3C(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1AE60AF78(&v19, &v11->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v20);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_1AE609F94(v12);
    }

    v13 = sub_1AE609424(v12, 0x18uLL, sub_1AE604FE0);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *v8 = v13;
  }

  else
  {
    if (*(v7 + 9))
    {
      sub_1AE60AE24(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = sub_1AE60AE3C(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v19, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v20);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_1AE60AE3C(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v19, &v16->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v20);
    }

    if (dword_1AE79A290[v15] != 9)
    {
      sub_1AE60AE24(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = sub_1AE60AE3C(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1AE60AF78(&v19, &v17->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v20);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_1AE60E5BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void *sub_1AE60E5F4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_1AE60FF30(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_1AE60AE3C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v26, &v10->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v27);
    }

    if (dword_1AE79A290[a3] != 9)
    {
      sub_1AE60AE24(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = sub_1AE60AE3C(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1AE60AF78(&v26, &v11->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v27);
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
      sub_1AE616238(v12);
    }

    v13 = sub_1AE609424(v12, 0x18uLL, sub_1AE614E04);
    v13[2] = 0;
    *v13 = v12;
    v13[1] = 0;
    *v8 = v13;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = sub_1AE60AE3C(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v26, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v27);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_1AE60AE3C(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v26, &v16->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v27);
    }

    if (dword_1AE79A290[v15] != 9)
    {
      sub_1AE60AE24(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = sub_1AE60AE3C(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_1AE60AF78(&v26, &v17->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v27);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    sub_1AE61CF88(v18, v21 + 1);
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
    sub_1AE609F94(*v18);
  }

  result = sub_1AE609424(v23, 0x18uLL, sub_1AE604FE0);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_1AE60E908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60E940(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AE60FF30(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_1AE60AE3C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v20, &v12->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v21);
    }

    if (dword_1AE79A290[a3] != 10)
    {
      sub_1AE60AE24(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = sub_1AE60AE3C(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1AE60AF78(&v20, &v13->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v21);
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
      sub_1AE60AE24(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = sub_1AE60AE3C(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_1AE60AF78(&v20, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v21);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = sub_1AE60AE3C(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v20, &v17->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v21);
    }

    if (dword_1AE79A290[v16] != 10)
    {
      sub_1AE60AE24(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = sub_1AE60AE3C(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1AE60AF78(&v20, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v21);
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

void sub_1AE60EB9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE60EBD4(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1AE60FF30(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_1AE60AE3C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v25, &v12->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v26);
    }

    if (dword_1AE79A290[a3] != 10)
    {
      sub_1AE60AE24(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = sub_1AE60AE3C(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1AE60AF78(&v25, &v13->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v26);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      sub_1AE616278(*a1);
    }

    v15 = sub_1AE609424(v14, 0x18uLL, sub_1AE614E08);
    v15[2] = 0;
    *v15 = v14;
    v15[1] = 0;
    *v10 = v15;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = sub_1AE60AE3C(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_1AE60AF78(&v25, &v16->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v26);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = sub_1AE60AE3C(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v25, &v18->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v26);
    }

    if (dword_1AE79A290[v17] != 10)
    {
      sub_1AE60AE24(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = sub_1AE60AE3C(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_1AE60AF78(&v25, &v19->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v26);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    sub_1AE614F20(*v10, v23);
  }

  return v23;
}

void sub_1AE60EE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AE60EEC4(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_1AE615054(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_1AE60B514(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1AE60EF2C(uint64_t result, size_t __sz)
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
          sub_1AE6162B8(*result);
          v8 = 32 * v2;
        }

        result = sub_1AE609720(v7, v8);
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
        sub_1AE6162F4(*result);
      }

      result = sub_1AE609424(v7, 0x18uLL, sub_1AE615898);
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
          result = sub_1AE6158A0(v9, v10, &v15);
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
      result = MEMORY[0x1B27063D0](v5, 0x1062C802AB6010CLL);
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

uint64_t sub_1AE60F0EC(char *a1, char *a2, void *a3, void *a4)
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

void sub_1AE60F1F4(uint64_t *a1, uint64_t a2, void *a3)
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
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_1AE60AE3C(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v67, &v12->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }

    v13 = dword_1AE79A290[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          sub_1AE60B750(a1, a2, *(a3 + 8), *a3, a3[2]);
        }

        else if (v13 == 2)
        {
          sub_1AE60BC74(a1, a2, *(a3 + 8), *a3, a3[2]);
        }
      }

      else if (v13 == 3)
      {
        sub_1AE60C198(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else if (v13 == 4)
      {
        sub_1AE60C6BC(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else
      {
        sub_1AE60D114(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        sub_1AE60CBE0(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      else
      {
        sub_1AE60D648(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      return;
    }

    if (v13 == 8)
    {
      sub_1AE60DE5C(a1, a2, *(a3 + 8), *a3, a3[2]);
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_1AE5DBF1C(&v65, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v66 = *(v45 + 2);
        v65 = v46;
      }

      v53 = sub_1AE60E380(a1, a2, v44, a3[2]);
      v54 = v53;
      if (*(v53 + 23) < 0)
      {
        operator delete(*v53);
      }

      v55 = v65;
      *(v54 + 16) = v66;
      *v54 = v55;
      return;
    }

    if (v13 != 10)
    {
      return;
    }

    v24 = a3[2];
    v25 = sub_1AE60FF30(a1, a2);
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
        v64 = (*(**a3 + 16))(*a3, *a1);
        *v26 = v64;
        (*(*v64 + 104))(v64, *a3);
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
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = sub_1AE60AE3C(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_1AE60AF78(&v67, &v47->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = sub_1AE60AE3C(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_1AE60AF78(&v67, &v48->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }

    if (*(v26 + 9) == 1)
    {
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = sub_1AE60AE3C(v68, "CHECK failed: !extension->is_repeated: ");
      sub_1AE60AF78(&v67, &v49->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }

    v50 = *v26;
    v51 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v26 + 10) & 0x10) != 0)
      {
        (*(*v50 + 104))(*v26, v51);
        goto LABEL_151;
      }

      v51 = (*(*v51 + 24))(*a3, *v26);
      v52 = *v50;
    }

    else
    {
      v52 = *v50;
      if ((*(v26 + 10) & 0x10) != 0)
      {
        v29 = (*(v52 + 32))(*v26, v51);
        goto LABEL_118;
      }
    }

    (*(v52 + 64))(v50, v51);
    goto LABEL_151;
  }

  v6 = a3[2];
  v7 = sub_1AE60FF30(a1, a2);
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
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = sub_1AE60AE3C(v68, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_1AE60AF78(&v67, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = sub_1AE60AE3C(v68, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_1AE60AF78(&v67, &v15->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = sub_1AE60AE3C(v68, "CHECK failed: extension->is_repeated: ");
      sub_1AE60AF78(&v67, &v16->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v68);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    sub_1AE60AE24(v68, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = sub_1AE60AE3C(v68, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1AE60AF78(&v67, &v18->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v68);
  }

  v19 = dword_1AE79A290[v17];
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
            sub_1AE615F48(v37);
          }

          v38 = sub_1AE609424(v37, 0x10uLL, sub_1AE614DF0);
          *v38 = 0;
          *(v38 + 8) = v37;
          *v8 = v38;
        }

        else
        {
          v38 = *v8;
        }

        sub_1AE61B4CC(v38, *a3);
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
            sub_1AE615F88(v40);
          }

          v41 = sub_1AE609424(v40, 0x10uLL, sub_1AE614DF4);
          *v41 = 0;
          *(v41 + 8) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        sub_1AE61C124(v41, *a3);
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
            sub_1AE616008(v20);
          }

          v21 = sub_1AE609424(v20, 0x10uLL, sub_1AE614DFC);
          *v21 = 0;
          *(v21 + 8) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        sub_1AE61CD7C(v21, *a3);
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
            sub_1AE615F08(v30);
          }

          v31 = sub_1AE609424(v30, 0x10uLL, sub_1AE614DEC);
          *v31 = 0;
          *(v31 + 8) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        sub_1AE61BAF8(v31, *a3);
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
          sub_1AE615FC8(v35);
        }

        v36 = sub_1AE609424(v35, 0x10uLL, sub_1AE614DF8);
        *v36 = 0;
        *(v36 + 8) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      sub_1AE61C750(v36, *a3);
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
          sub_1AE616048(v32);
        }

        v33 = sub_1AE609424(v32, 0x10uLL, sub_1AE614E00);
        *v33 = 0;
        *(v33 + 8) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      sub_1AE61A878(v33, *a3);
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
              sub_1AE615EC8(v34);
            }

LABEL_81:
            v39 = sub_1AE609424(v34, 0x10uLL, sub_1AE614DE8);
            *v39 = 0;
            *(v39 + 8) = v34;
            *v8 = v39;
LABEL_108:
            sub_1AE61AEA0(v39, *a3);
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
            sub_1AE616238(v42);
          }

          v43 = sub_1AE609424(v42, 0x18uLL, sub_1AE614E04);
          v43[2] = 0;
          *v43 = v42;
          v43[1] = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        sub_1AE6053D8(v43, *a3);
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
            sub_1AE616278(*a1);
          }

          v23 = sub_1AE609424(v22, 0x18uLL, sub_1AE614E08);
          v23[2] = 0;
          *v23 = v22;
          v23[1] = 0;
          *v8 = v23;
        }

        v56 = *a3;
        if (*(v56 + 8) >= 1)
        {
          v57 = 0;
          do
          {
            v58 = sub_1AE614E40(v56, v57);
            v59 = v58;
            v60 = *v8;
            v61 = *(*v8 + 16);
            if (!v61 || (v62 = *(v60 + 8), v62 >= *v61) || (*(v60 + 8) = v62 + 1, (v63 = *&v61[2 * v62 + 2]) == 0))
            {
              v63 = (*(*v58 + 32))(v58, *a1);
              sub_1AE614F20(*v8, v63);
            }

            (*(*v63 + 64))(v63, v59);
            ++v57;
          }

          while (v57 < *(v56 + 8));
        }

        break;
    }
  }
}

uint64_t sub_1AE60FE64(uint64_t result, uint64_t a2)
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
    sub_1AE797318(&v7, a2);
    sub_1AE60EEC4(a2);
    sub_1AE797318(a2, v3);
    sub_1AE60EEC4(v3);
    sub_1AE797318(v3, &v7);
    return sub_1AE60B454(&v7);
  }

  return result;
}

void sub_1AE60FF1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE60B454(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE60FF30(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return sub_1AE6157CC(v4, &v14) + 5;
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

    sub_1AE60EF2C(a1, v6 + 1);
    return sub_1AE60FF30(a1, a2);
  }
}

uint64_t sub_1AE610054(uint64_t a1)
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
        v4 = sub_1AE610128(v6 + 40);
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
      if (!sub_1AE610128(v5))
      {
        break;
      }

      v1 = v5 + 24;
      if (*(a1 + 8) > 0x100u)
      {
        sub_1AE616324();
      }
    }
  }

  return v4;
}

uint64_t sub_1AE610128(unsigned __int8 *a1)
{
  v2 = a1[8];
  if ((v2 - 19) <= 0xFFFFFFED)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v3 = sub_1AE60AE3C(v10, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1AE60AF78(&v9, &v3->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v10);
  }

  if (dword_1AE79A290[v2] != 10)
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
        v6 = sub_1AE614E40(v4, v5);
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

void sub_1AE610284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61029C(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = *a5;
    if ((v10 - 19) <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_1AE60AE3C(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v14, &v11->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v15);
    }

    v12 = dword_1AE79A2DC[v10];
    *a6 = 0;
    if (a2 == 2 && (a5[1] & 1) != 0)
    {
      if (v12 > 5)
      {
        sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 82);
        v13 = sub_1AE60AE3C(v15, "can't reach here.");
        sub_1AE60AF78(&v14, &v13->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v15);
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

void sub_1AE6103D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE6103F8(uint64_t *a1, unint64_t a2, char *a3, uint64_t a4, unint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = &unk_1F2429F20;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (sub_1AE61029C(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_1AE6104D8(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v13 = sub_1AE5FD6EC(a5);
  }

  return sub_1AE6181C0(v9, v13, a3, a6);
}

char *sub_1AE6104D8(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, char *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v46 = sub_1AE60DB6C(a1, a2, 1, *(a4 + 2), *(a4 + 24));

        result = sub_1AE618058(v46, v8, a7);
        break;
      case 2:
        v47 = sub_1AE60DB6C(a1, a2, 2, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617FDC(v47, v8, a7);
        break;
      case 3:
        v36 = sub_1AE60DB6C(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617D9C(v36, v8, a7);
        break;
      case 4:
        v42 = sub_1AE60DB6C(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617DAC(v42, v8, a7);
        break;
      case 5:
        v28 = sub_1AE60DB6C(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617D7C(v28, v8, a7);
        break;
      case 6:
        v53 = sub_1AE60DB6C(a1, a2, 6, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617EE4(v53, v8, a7);
        break;
      case 7:
        v61 = sub_1AE60DB6C(a1, a2, 7, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617DEC(v61, v8, a7);
        break;
      case 8:
        v44 = sub_1AE60DB6C(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617DDC(v44, v8, a7);
        break;
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        sub_1AE60AE24(&v92, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/extension_set_inl.h", 79);
        v13 = sub_1AE60AE3C(&v92, "Non-primitive types can't be packed.");
        sub_1AE60AF78(&v91, &v13->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v92);
        goto LABEL_170;
      case 0xD:
        v29 = sub_1AE60DB6C(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617D8C(v29, v8, a7);
        break;
      case 0xE:
        v92.__r_.__value_.__r.__words[0] = sub_1AE60DB6C(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        *&v92.__r_.__value_.__r.__words[1] = *(a4 + 8);
        v93 = a5;
        v94 = v11;
        v8 = sub_1AE6151B4(a7, v8, &v92);
        goto LABEL_170;
      case 0xF:
        v19 = sub_1AE60DB6C(a1, a2, 15, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617E68(v19, v8, a7);
        break;
      case 0x10:
        v38 = sub_1AE60DB6C(a1, a2, 16, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617F60(v38, v8, a7);
        break;
      case 0x11:
        v16 = sub_1AE60DB6C(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617DBC(v16, v8, a7);
        break;
      case 0x12:
        v50 = sub_1AE60DB6C(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = sub_1AE617DCC(v50, v8, a7);
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
          sub_1AE60D330(a1, a2, 1, *(a4 + 2), *(a4 + 24), v48);
        }

        else
        {
          sub_1AE60D114(a1, a2, 1, *(a4 + 24), v48);
        }

        goto LABEL_170;
      case 2:
        v8 = a6 + 4;
        v49 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_1AE60CDFC(a1, a2, 2, *(a4 + 2), *(a4 + 24), v49);
        }

        else
        {
          sub_1AE60CBE0(a1, a2, 2, *(a4 + 24), v49);
        }

        goto LABEL_170;
      case 3:
        v37 = *a6;
        if (v37 < 0)
        {
          v37 = (a6[1] << 7) + v37 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1AE617C78(a6, v37);
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
            v8 = sub_1AE617C78(a6, v43);
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
            v8 = sub_1AE617C78(a6, v31);
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
          sub_1AE60C8D0(a1, a2, v56, v54, v43, v55);
        }

        else
        {
          v73 = *(a4 + 24);
          v74 = 6;
LABEL_150:
          sub_1AE60C6BC(a1, a2, v74, v43, v73);
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
            v8 = sub_1AE617C78(a6, v45);
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
          sub_1AE60D85C(v12, v11, 8, *(a4 + 2), v45 != 0, *(a4 + 24));
        }

        else
        {
          sub_1AE60D648(v12, v11, 8, v45 != 0, *(a4 + 24));
        }

        goto LABEL_170;
      case 9:
      case 0xC:
        v14 = *(a4 + 1);
        v15 = *(a4 + 24);
        if (v14 == 1)
        {
          v32 = sub_1AE60E5F4(a1, a2, 9, v15);
        }

        else
        {
          v32 = sub_1AE60E380(a1, a2, 9, v15);
        }

        v33 = v32;
        v34 = *v8;
        if (*v8 < 0)
        {
          v67 = sub_1AE79785C(v8, *v8);
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

        return sub_1AE615148(a7, v35, v34, v33);
      case 0xA:
        v57 = *(a4 + 1);
        v58 = *(a4 + 8);
        v59 = *(a4 + 24);
        if (v57 == 1)
        {
          v60 = sub_1AE60EBD4(a1, a2, 10, v58, v59);
        }

        else
        {
          v60 = sub_1AE60E940(a1, a2, 10, v58, v59);
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
          v27 = sub_1AE60EBD4(a1, a2, 11, v25, v26);
        }

        else
        {
          v27 = sub_1AE60E940(a1, a2, 11, v25, v26);
        }

        return sub_1AE617B5C(a7, v27, v8);
      case 0xD:
        v30 = *a6;
        if (v30 < 0)
        {
          v30 = (a6[1] << 7) + v30 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1AE617C78(a6, v30);
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
          sub_1AE60C3AC(a1, a2, v65, v63, v66, v64);
        }

        else
        {
          v79 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v80 = 13;
          v81 = v30;
LABEL_131:
          sub_1AE60C198(a1, a2, v80, v81, v79);
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
            v8 = sub_1AE617C78(a6, (v82 - 128));
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
            sub_1AE60E070(v12, v11, 14, *(a4 + 2), v52, *(a4 + 24));
          }

          else
          {
            sub_1AE60DE5C(v12, v11, 14, v52, *(a4 + 24));
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
            v90 = sub_1AE5FD6EC(a5);
          }

          sub_1AE617B60(v11, v52, v90);
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
            v8 = sub_1AE617C78(a6, v18);
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
          sub_1AE60B964(a1, a2, v23, v21, v83, v22);
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
          sub_1AE60B750(a1, a2, v70, v84, v69);
        }

        goto LABEL_170;
      case 0x12:
        v51 = *a6;
        if ((v51 & 0x8000000000000000) != 0)
        {
          v51 = (a6[1] << 7) + v51 - 128;
          if (a6[1] < 0)
          {
            v8 = sub_1AE617C78(a6, v51);
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
          sub_1AE60BE88(a1, a2, v41, v39, v37, v40);
        }

        else
        {
          v71 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v72 = 18;
LABEL_160:
          sub_1AE60BC74(a1, a2, v72, v37, v71);
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

void sub_1AE611190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE6111AC(uint64_t a1, signed int a2, int a3, char *a4, uint64_t *a5)
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

          a4 = sub_1AE6112D8(v19 + 40, v20, a4, a5);
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

      a4 = sub_1AE6112D8(v7 + 8, v14, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

char *sub_1AE6112D8(unsigned __int8 *a1, uint64_t a2, char *a3, uint64_t *a4)
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
          v5 = sub_1AE60A398(a4, a3);
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
          sub_1AE60AE24(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
          v41 = sub_1AE60AE3C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
          sub_1AE60AF78(&v426, &v41->__r_.__value_.__l.__data_);
          sub_1AE60AF80(v427);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v343 = *a1;
                }

                *v5 = *sub_1AE61CBC4(v343, v344);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v345 = *a1;
                }

                *v5 = *sub_1AE61C598(v345, v346);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v327 = *a1;
                }

                v329 = *sub_1AE61B940(v327, v328);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v335 = *a1;
                }

                v337 = *sub_1AE61BF6C(v335, v336);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v315 = *a1;
                }

                v317 = *sub_1AE61ACE8(v315, v316);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v360 = *a1;
                }

                *v5 = *sub_1AE61BF6C(v360, v361);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v362 = *a1;
                }

                *v5 = *sub_1AE61B314(v362, v363);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v341 = *a1;
                }

                *v5++ = *sub_1AE61A6C0(v341, v342++);
                v341 = *a1;
              }

              while (v342 < **a1);
            }

            break;
          case 9:
          case 10:
          case 11:
          case 12:
            sub_1AE60AE24(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1966);
            v42 = sub_1AE60AE3C(v427, "Non-primitive types can't be packed.");
            sub_1AE60AF78(&v426, &v42->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v427);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v321 = *a1;
                }

                v323 = *sub_1AE61B314(v321, v322);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v354 = *a1;
                }

                v356 = *sub_1AE61ACE8(v354, v355);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v313 = *a1;
                }

                *v5 = *sub_1AE61ACE8(v313, v314);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v333 = *a1;
                }

                *v5 = *sub_1AE61B940(v333, v334);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v306 = *a1;
                }

                v308 = sub_1AE61ACE8(v306, v307);
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
                  v5 = sub_1AE60A398(a4, v5);
                  v347 = *a1;
                }

                v349 = sub_1AE61B940(v347, v348);
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
        sub_1AE60AE24(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = sub_1AE60AE3C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1AE60AF78(&v426, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v427);
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
                v5 = sub_1AE60A398(a4, v5);
                v13 = *a1;
              }

              v20 = *sub_1AE61CBC4(v13, v14);
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
                v5 = sub_1AE60A398(a4, v5);
                v205 = *a1;
              }

              v212 = *sub_1AE61C598(v205, v206);
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
                v5 = sub_1AE60A398(a4, v5);
                v153 = *a1;
              }

              v158 = *sub_1AE61B940(v153, v154);
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
                v5 = sub_1AE60A398(a4, v5);
                v180 = *a1;
              }

              v185 = *sub_1AE61BF6C(v180, v181);
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
                v5 = sub_1AE60A398(a4, v5);
                v103 = *a1;
              }

              v108 = *sub_1AE61ACE8(v103, v104);
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
                v5 = sub_1AE60A398(a4, v5);
                v234 = *a1;
              }

              v241 = *sub_1AE61BF6C(v234, v235);
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
                v5 = sub_1AE60A398(a4, v5);
                v260 = *a1;
              }

              v267 = *sub_1AE61B314(v260, v261);
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
                v5 = sub_1AE60A398(a4, v5);
                v194 = *a1;
              }

              v199 = *sub_1AE61A6C0(v194, v195);
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
                v5 = sub_1AE60A398(a4, v5);
                v292 = *a1;
              }

              v298 = sub_1AE605198(v292, v293);
              v299 = *(v298 + 23);
              if (v299 < 0 && (v299 = *(v298 + 8), v299 > 127) || *a4 + v297 - v5 + 16 < v299)
              {
                v5 = sub_1AE60A910(a4, a2, v298, v5);
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
                v5 = sub_1AE60A398(a4, v5);
                v133 = *a1;
              }

              v141 = sub_1AE614E40(v133, v134);
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
                v146 = sub_1AE60A398(a4, v146);
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
                v5 = sub_1AE60A398(a4, v5);
                v272 = *a1;
              }

              v278 = sub_1AE614E40(v272, v273);
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
                v5 = sub_1AE60A398(a4, v5);
                v78 = *a1;
              }

              v84 = sub_1AE605198(v78, v79);
              v85 = *(v84 + 23);
              if (v85 < 0 && (v85 = *(v84 + 8), v85 > 127) || *a4 + v83 - v5 + 16 < v85)
              {
                v5 = sub_1AE60A910(a4, a2, v84, v5);
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
                v5 = sub_1AE60A398(a4, v5);
                v118 = *a1;
              }

              v123 = *sub_1AE61B314(v118, v119);
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
                v5 = sub_1AE60A398(a4, v5);
                v246 = *a1;
              }

              v251 = *sub_1AE61ACE8(v246, v247);
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
                v5 = sub_1AE60A398(a4, v5);
                v60 = *a1;
              }

              v67 = *sub_1AE61ACE8(v60, v61);
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
                v5 = sub_1AE60A398(a4, v5);
                v167 = *a1;
              }

              v174 = *sub_1AE61B940(v167, v168);
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
                v5 = sub_1AE60A398(a4, v5);
                v43 = *a1;
              }

              v48 = *sub_1AE61ACE8(v43, v44);
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
                v5 = sub_1AE60A398(a4, v5);
                v218 = *a1;
              }

              v223 = *sub_1AE61B940(v218, v219);
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
    sub_1AE60AE24(v427, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v26 = sub_1AE60AE3C(v427, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1AE60AF78(&v426, &v26->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v427);
  }

  switch(v25)
  {
    case 1:
      if (*a4 <= v5)
      {
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_1AE60A910(a4, a2, v92, v5);
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
        return sub_1AE60A910(a4, a2, v92, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v59 = sub_1AE60A398(a4, v59);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
      }

      v92 = *a1;
      v93 = *(*a1 + 23);
      if (v93 < 0)
      {
        v93 = *(v92 + 1);
        if (v93 > 127)
        {
          return sub_1AE60A910(a4, a2, v92, v5);
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

      return sub_1AE60A910(a4, a2, v92, v5);
    case 13:
      if (*a4 <= v5)
      {
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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
        v5 = sub_1AE60A398(a4, v5);
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

void sub_1AE613D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE613DCC(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_1AE6155E4(*v1, v1 + 1, &v7);
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
      v2 += sub_1AE613E60(v1 + 1, v5);
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

unint64_t sub_1AE613E60(_DWORD **a1, int a2)
{
  if (*(a1 + 9) == 1)
  {
    v4 = *(a1 + 8);
    v5 = v4 - 19;
    if (*(a1 + 11) == 1)
    {
      if (v5 <= 0xFFFFFFED)
      {
        sub_1AE60AE24(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v6 = sub_1AE60AE3C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1AE60AF78(&v102, &v6->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v103);
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
            v22 += (9 * (__clz(*sub_1AE61B940(v45, v46++) | 1) ^ 0x3F) + 73) >> 6;
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
            v22 += (9 * (__clz(*sub_1AE61BF6C(v47, v48++) | 1) ^ 0x3F) + 73) >> 6;
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
            v39 = sub_1AE61ACE8(v37, v38);
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
          sub_1AE60AE24(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1599);
          v7 = sub_1AE60AE3C(v103, "Non-primitive types can't be packed.");
          sub_1AE60AF78(&v102, &v7->__r_.__value_.__l.__data_);
          sub_1AE60AF80(v103);
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
            v22 += (9 * (__clz(*sub_1AE61B314(v30, v31++) | 1) ^ 0x1F) + 73) >> 6;
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
            v34 = sub_1AE61ACE8(v32, v33);
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
            v29 = sub_1AE61ACE8(v27, v28);
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
            v44 = sub_1AE61B940(v42, v43);
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
        sub_1AE60AE24(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v9 = sub_1AE60AE3C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1AE60AF78(&v102, &v9->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v103);
        v10 = *(a1 + 8);
        v11 = (v10 - 19) < 0xFFFFFFEE;
      }

      v16 = v4 == 10;
      if (v11)
      {
        sub_1AE60AE24(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v17 = sub_1AE60AE3C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_1AE60AF78(&v102, &v17->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v103);
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
              v8 += (9 * (__clz(*sub_1AE61B940(v85, v87++) | 1) ^ 0x3F) + 73) >> 6;
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
              v8 += (9 * (__clz(*sub_1AE61BF6C(v88, v90++) | 1) ^ 0x3F) + 73) >> 6;
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
              v78 = sub_1AE61ACE8(v75, v77);
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
              v99 = sub_1AE605198(v96, v98);
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
              v61 = sub_1AE614E40(v58, v60);
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
              v67 = sub_1AE614E40(v64, v66);
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
              v94 = sub_1AE605198(v91, v93);
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
              v8 += (9 * (__clz(*sub_1AE61B314(v55, v57++) | 1) ^ 0x1F) + 73) >> 6;
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
              v72 = sub_1AE61ACE8(v69, v71);
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
              v53 = sub_1AE61ACE8(v50, v52);
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
              v84 = sub_1AE61B940(v81, v83);
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
      sub_1AE60AE24(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v13 = sub_1AE60AE3C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v102, &v13->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v103);
      v14 = *(a1 + 8);
      v15 = (v14 - 19) < 0xFFFFFFEE;
    }

    v20 = v12 == 10;
    if (v15)
    {
      sub_1AE60AE24(v103, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v21 = sub_1AE60AE3C(v103, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v102, &v21->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v103);
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