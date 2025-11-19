void sub_194D93C(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = a3;
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, *(a2 + 8) + *(a1 + 8), 0);
  if ((v5->__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v5 = v5->__r_.__value_.__r.__words[0];
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    memcpy(v5, *a1, v6);
    v5 = (v5 + *(a1 + 8));
  }

  v7 = *(a2 + 8);
  if (v7)
  {
    v8 = *a2;

    memcpy(v5, v8, v7);
  }
}

void sub_194D9E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_194DA04(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t *a4)
{
  v5 = *a1;
  if (*a1 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    *v9 = v8;
    v9[1] = sub_195A650;
    v10 = *(a3 + 2);
    *v8 = *a3;
    *(v8 + 16) = v10;
    *(a3 + 1) = 0;
    *(a3 + 2) = 0;
    *a3 = 0;
    *a1 = v8;
  }

  else
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    v6 = *a3;
    *(v5 + 16) = *(a3 + 2);
    *v5 = v6;
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

BOOL sub_194DAE0(uint64_t a1, std::string *a2)
{
  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    *a2->__r_.__value_.__l.__data_ = 0;
    a2->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    a2->__r_.__value_.__s.__data_[0] = 0;
    *(&a2->__r_.__value_.__s + 23) = 0;
  }

  return sub_19579C0(a1, a2);
}

uint64_t *sub_194DB04(void *a1, uint64_t *a2)
{
  if (*a1 == &qword_278E990)
  {
    return sub_194EA64(a1, a2);
  }

  else
  {
    return *a1;
  }
}

uint64_t sub_194DB40(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_194DB58(std::string *a1, char *__s)
{
  v4 = strlen(__s);
  std::string::append(a1 + 1, __s, v4);
  return a1;
}

uint64_t sub_194DBA0(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_194DBD4(void *a1, uint64_t a2, uint64_t *a3)
{
  sub_194DC28(a1, a2 + 16, a3);

  return sub_194DCA4(a1, a2, a3);
}

void *sub_194DC28(void *a1, unint64_t a2, uint64_t *a3)
{
  v4 = a1[1];
  v5 = a1[5];
  *(v4 + 16) = a1[6];
  a1[3] = v5 - v4 + a1[3] - 24;
  result = sub_194DD44(a3, *(v4 + 8), a2);
  a1[4] += v7;
  *result = a1[1];
  result[1] = v7;
  result[2] = 0;
  a1[1] = result;
  a1[5] = result + 3;
  a1[6] = result + v7;
  return result;
}

uint64_t sub_194DCA4(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = a1[5];
  v4 = a1[6];
  if (v4 - v3 < (a2 + 16))
  {
    return sub_194DBD4(a1, a2, a3);
  }

  a1[5] = v3 + a2;
  a1[6] = v4 - 16;
  return v3;
}

uint64_t sub_194DCD0(void *a1, unint64_t a2, uint64_t *a3)
{
  sub_194DC28(a1, a2, a3);

  return sub_194DD20(a1, a2);
}

uint64_t sub_194DD20(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (*(a1 + 48) - v2 < a2)
  {
    return sub_194DCD0();
  }

  *(a1 + 40) = v2 + a2;
  return v2;
}

void *sub_194DD44(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
  }

  else
  {
    v6 = 0;
    v5 = 0x2000;
    v4 = 256;
  }

  if (v5 >= 2 * a2)
  {
    v5 = 2 * a2;
  }

  if (a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (a3 >= 0xFFFFFFFFFFFFFFE8)
  {
    LODWORD(v10[0]) = 3;
    v10[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/arena.cc";
    v11 = 67;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - SerialArena::kBlockHeaderSize): ", 0x63uLL);
    sub_1959854(v10);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (v7 <= a3 + 24)
  {
    v8 = a3 + 24;
  }

  else
  {
    v8 = v7;
  }

  if (v6)
  {
    return v6(v8);
  }

  else
  {
    return operator new(v8);
  }
}

void sub_194DE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_194DE60(uint64_t result)
{
  v1 = *(result + 8);
  v1[2] = *(result + 48);
  do
  {
    v2 = v1[2];
    v3 = v1 + (v1[1] & 0xFFFFFFFFFFFFFFF8);
    if (v3 - v2 >= 1 && v2 < v3)
    {
      do
      {
        v5 = *v2;
        v6 = *(v2 + 1);
        v2 += 16;
        result = v6(v5);
      }

      while (v2 < v3);
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

void *sub_194DEC4()
{
  if ((atomic_load_explicit(&qword_27ECB08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27ECB08))
  {
    operator new();
  }

  v0 = qword_27ECB00;

  return sub_194DF94(v0);
}

void *sub_194DF94(pthread_key_t *a1)
{
  v2 = pthread_getspecific(*a1);
  if (!v2)
  {
    v2 = operator new(0x40uLL, 0x40uLL);
    *v2 = xmmword_2266B40;
    v2[2] = 0;
    pthread_setspecific(*a1, v2);
  }

  return v2;
}

uint64_t sub_194E00C(uint64_t a1)
{
  for (i = *(a1 + 16); i; i = *(i + 16))
  {
    sub_194DE60(i);
  }

  v11 = 0;
  v3 = sub_194E0E8(a1, &v11);
  v5 = v4;
  v6 = *(a1 + 8);
  v7 = v6 & 0xFFFFFFFFFFFFFFF8;
  if ((v6 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v8 = *(v7 + 32);
    if (v6)
    {
      goto LABEL_10;
    }

    v9 = *(v7 + 24);
    if (v9)
    {
      v9(v3, v4);
      goto LABEL_10;
    }
  }

  else
  {
    if (v6)
    {
      return a1;
    }

    v8 = 0;
  }

  operator delete(v3);
LABEL_10:
  v11 += v5;
  if (v8)
  {
    (**v8)(v8);
  }

  return a1;
}

void *sub_194E0E8(uint64_t a1, void *a2)
{
  if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v3 = *((*(a1 + 8) & 0xFFFFFFFFFFFFFFF8) + 24);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  v6 = 0;
  do
  {
    if (result)
    {
      if (v3)
      {
        v3();
      }

      else
      {
        operator delete(result);
      }

      *a2 += v6;
    }

    result = sub_195A678(v4, v3, a2);
    v6 = v7;
    v4 = *(v4 + 16);
  }

  while (v4);
  return result;
}

uint64_t sub_194E1A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_194DEC4();
  if (v7[1] == v6)
  {
    explicit = v7[2];
    goto LABEL_3;
  }

  if ((v6 & 1) == 0)
  {
    v11 = sub_194DEC4();
    explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
    if (explicit)
    {
      if (*explicit == v11)
      {
LABEL_3:
        v9 = (a1[1] & 0xFFFFFFFFFFFFFFF8);

        return sub_194DCA4(explicit, a2, v9);
      }
    }
  }

  return sub_194E254(a1, a2, a3);
}

uint64_t sub_194E254(void *a1, uint64_t a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = a1 + 1;
  v8 = *((a1[1] & 0xFFFFFFFFFFFFFFF8) + 32);
  (*(*v8 + 16))(v8, a3, a2);
  v9 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v10 = sub_194DEC4();
  if (v10[1] == v9)
  {
    explicit = v10[2];
  }

  else
  {
    v13 = sub_194DEC4();
    explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
    if (!explicit || *explicit != v13)
    {
LABEL_2:
      v5 = sub_194DEC4();
      explicit = sub_194E578(a1, v5);
      v7 = a1 + 1;
    }
  }

  v11 = (*v7 & 0xFFFFFFFFFFFFFFF8);

  return sub_194DCA4(explicit, a2, v11);
}

void *sub_194E338(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v7 = sub_194DEC4();
  if (v7[1] == v6)
  {
    result = v7[2];
    goto LABEL_3;
  }

  v11 = sub_194DEC4();
  result = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (result && *result == v11)
  {
LABEL_3:
    v9 = result[6];
    if ((v9 - result[5]) <= 0xF)
    {
      result = sub_194DBD4(result, 0, (a1[1] & 0xFFFFFFFFFFFFFFF8));
    }

    else
    {
      v10 = (v9 - 16);
      result[6] = v9 - 16;
    }

    *v10 = a2;
    v10[1] = a3;
    return result;
  }

  return sub_194E400(a1, a2, a3);
}

void *sub_194E400(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_194DEC4();
  result = sub_194E578(a1, v6);
  v8 = result[6];
  if ((v8 - result[5]) <= 0xF)
  {
    result = sub_194DBD4(result, 0, (a1[1] & 0xFFFFFFFFFFFFFFF8));
  }

  else
  {
    v9 = (v8 - 16);
    result[6] = v8 - 16;
  }

  *v9 = a2;
  v9[1] = a3;
  return result;
}

uint64_t sub_194E470(void *a1, unint64_t a2, uint64_t a3)
{
  if ((*a1 & 1) == 0)
  {
    goto LABEL_2;
  }

  v7 = *((a1[1] & 0xFFFFFFFFFFFFFFF8) + 32);
  (*(*v7 + 16))(v7, a3, a2);
  v8 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v9 = sub_194DEC4();
  if (v9[1] == v8)
  {
    explicit = v9[2];
  }

  else
  {
    v13 = sub_194DEC4();
    explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
    if (!explicit || *explicit != v13)
    {
LABEL_2:
      v5 = sub_194DEC4();
      explicit = sub_194E578(a1, v5);
    }
  }

  v10 = explicit[5];
  if (explicit[6] - v10 < a2)
  {
    v12 = (a1[1] & 0xFFFFFFFFFFFFFFF8);

    return sub_194DCD0(explicit, a2, v12);
  }

  else
  {
    explicit[5] = v10 + a2;
    return v10;
  }
}

void *sub_194E578(void *a1, uint64_t a2)
{
  v4 = a1 + 2;
  explicit = atomic_load_explicit(a1 + 2, memory_order_acquire);
  if (explicit)
  {
    while (*explicit != a2)
    {
      explicit = explicit[2];
      if (!explicit)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v6 = sub_194DD44((a1[1] & 0xFFFFFFFFFFFFFFF8), 0, 0x38uLL);
    *v6 = 0;
    v6[1] = v7;
    v6[2] = 0;
    v6[3] = a2;
    explicit = v6 + 3;
    v6[6] = 0;
    v6[7] = v7;
    v6[4] = v6;
    v6[8] = v6 + 10;
    v6[9] = v6 + (v7 & 0xFFFFFFFFFFFFFFF8);
    v8 = a1[2];
    v6[5] = v8;
    v9 = v8;
    atomic_compare_exchange_strong_explicit(v4, &v9, (v6 + 3), memory_order_release, memory_order_relaxed);
    if (v9 != v8)
    {
      v10 = v9;
      do
      {
        v6[5] = v9;
        atomic_compare_exchange_strong_explicit(a1 + 2, &v10, explicit, memory_order_release, memory_order_relaxed);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }
  }

  sub_194DEC4()[2] = explicit;
  v12 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  sub_194DEC4()[1] = v12;
  atomic_store(explicit, a1 + 3);
  return explicit;
}

uint64_t sub_194E668(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = sub_194DEC4();
  if (v7[1] == v6)
  {
    explicit = v7[2];
    goto LABEL_3;
  }

  if ((v6 & 1) == 0)
  {
    v11 = sub_194DEC4();
    explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
    if (explicit)
    {
      if (*explicit == v11)
      {
LABEL_3:
        v9 = explicit[5];
        if (explicit[6] - v9 < a2)
        {
          v12 = (a1[1] & 0xFFFFFFFFFFFFFFF8);

          return sub_194DCD0(explicit, a2, v12);
        }

        else
        {
          explicit[5] = v9 + a2;
          return v9;
        }
      }
    }
  }

  return sub_194E470(a1, a2, a3);
}

unint64_t sub_194E784(unint64_t a1)
{
  std::mutex::lock(&stru_278C120);
  explicit = atomic_load_explicit((a1 + 24), memory_order_acquire);
  if (!explicit)
  {
    sub_194E7E8(a1, *a1, *(a1 + 8));
    atomic_store(a1, (a1 + 24));
    explicit = a1;
  }

  std::mutex::unlock(&stru_278C120);
  return explicit;
}

_BYTE *sub_194E7E8(_BYTE *__dst, void *__src, size_t __len)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_3244();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __dst[23] = __len;
  if (__len)
  {
    memmove(__dst, __src, __len);
  }

  __dst[__len] = 0;
  return __dst;
}

void sub_194E89C(void ***a1)
{
  if (*(*a1 + 23) < 0)
  {
    operator delete(**a1);
  }

  operator delete();
}

std::string *sub_194E8F0(std::string **a1, std::string *a2, __int128 *a3, uint64_t *a4)
{
  v6 = *a1;
  if (v6 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    v11 = result;
    *v12 = result;
    v12[1] = sub_195A650;
    if (*(a3 + 23) < 0)
    {
      result = sub_325C(result, *a3, *(a3 + 1));
    }

    else
    {
      v13 = *a3;
      result->__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&result->__r_.__value_.__l.__data_ = v13;
    }

    *a1 = v11;
  }

  else
  {
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = *(a3 + 23);
    }

    else
    {
      v8 = *(a3 + 1);
    }

    if (v7 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    return sub_195A048(v6, v9, v8);
  }

  return result;
}

void *sub_194EA64(void *a1, uint64_t *a2)
{
  if (!a2)
  {
    operator new();
  }

  *v4 = result;
  v4[1] = sub_195A650;
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

uint64_t sub_194EAD4(uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  if (*a1)
  {
    return *a1;
  }

  else
  {
    return sub_194EAF4(a1, a3, a2);
  }
}

uint64_t sub_194EAF4(uint64_t *a1, uint64_t *a2, unint64_t a3)
{
  explicit = atomic_load_explicit((a3 + 24), memory_order_acquire);
  if (explicit)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator new();
  }

  explicit = sub_194E784(a3);
  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = v6;
  *v8 = v6;
  v8[1] = sub_195A650;
  if (*(explicit + 23) < 0)
  {
    sub_325C(v6, *explicit, *(explicit + 8));
  }

  else
  {
    v9 = *explicit;
    *(v6 + 16) = *(explicit + 16);
    *v6 = v9;
  }

  *a1 = v7;
  return v7;
}

void *sub_194EC04(void *result)
{
  if (*result != &qword_278E990)
  {
    v1 = *result & 0xFFFFFFFFFFFFFFFELL;
    if (*(v1 + 23) < 0)
    {
      **v1 = 0;
      *(v1 + 8) = 0;
    }

    else
    {
      *v1 = 0;
      *(v1 + 23) = 0;
    }
  }

  return result;
}

std::string *sub_194EC40(std::string *result, unint64_t a2)
{
  v2 = result->__r_.__value_.__r.__words[0];
  if (result->__r_.__value_.__r.__words[0])
  {
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_194E784(a2);
    }

    return std::string::operator=(v2, explicit);
  }

  return result;
}

const std::string::value_type *sub_194ECB8(uint64_t a1, const std::string::value_type *__src, int a3, std::string *__dst)
{
  if (*(a1 + 8) - __src + 16 < a3)
  {

    return sub_225EFBC();
  }

  else
  {
    v5 = a3;
    sub_195A048(__dst, __src, a3);
    return &__src[v5];
  }
}

uint64_t sub_194ED30(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_27ECB20)
  {
    v3 = *(qword_27ECB20 + 8);
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

      v10 = *(*qword_27ECB20 + 8 * v9);
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

void sub_194EE44(unint64_t a1, signed int a2, int a3, char a4, char a5)
{
  v7 = a3;
  switch(a3)
  {
    case 10:
      LODWORD(v10) = 3;
      *(&v10 + 1) = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
      v11 = 142;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "CHECK failed: (type) != (WireFormatLite::TYPE_GROUP): ", 0x36uLL);
      sub_1959854(&v10);
      break;
    case 11:
      LODWORD(v10) = 3;
      *(&v10 + 1) = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
      v11 = 141;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "CHECK failed: (type) != (WireFormatLite::TYPE_MESSAGE): ", 0x38uLL);
      sub_1959854(&v10);
      break;
    case 14:
      LODWORD(v10) = 3;
      *(&v10 + 1) = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
      v11 = 140;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "CHECK failed: (type) != (WireFormatLite::TYPE_ENUM): ", 0x35uLL);
      sub_1959854(&v10);
      break;
    default:
      goto LABEL_9;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_9:
  LOBYTE(v10) = v7;
  BYTE1(v10) = a4;
  BYTE2(v10) = a5;
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_194EFD8(a1, a2, &v10);
}

void sub_194EFA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_194EFD8(unint64_t a1, signed int a2, __int128 *a3)
{
  if ((atomic_load_explicit(&qword_27ECB30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27ECB30))
  {
    operator new();
  }

  qword_27ECB20 = qword_27ECB28;
  v6 = a3[1];
  v21 = *a3;
  *v22 = v6;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
  v9 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
  v10 = *(qword_27ECB28 + 8);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
    if (v9 >= *&v10)
    {
      v12 = v9 % *&v10;
    }
  }

  else
  {
    v12 = (*&v10 - 1) & v9;
  }

  v13 = *(*qword_27ECB28 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_23:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == v9)
    {
      break;
    }

    if (v11.u32[0] > 1uLL)
    {
      if (v15 >= *&v10)
      {
        v15 %= *&v10;
      }
    }

    else
    {
      v15 &= *&v10 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_23;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  if (v14[2] != a1 || *(v14 + 6) != a2)
  {
    goto LABEL_22;
  }

  LODWORD(v21) = 3;
  *(&v21 + 1) = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
  LODWORD(v22[0]) = 108;
  v23 = 0;
  v24 = 0;
  v22[1] = 0;
  std::string::append(&v22[1], "Multiple extension registrations for type ", 0x2BuLL);
  (*(*a1 + 16))(__p, a1);
  if ((v20 & 0x80u) == 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if ((v20 & 0x80u) == 0)
  {
    v18 = v20;
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v22[1], v17, v18);
  std::string::append(&v22[1], ", field number ", 0x10uLL);
  sub_1956D0C(&v21, a2);
  std::string::append(&v22[1], ".", 1uLL);
  sub_1959854(&v21);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v22[1]);
  }
}

void sub_194F628(unint64_t a1, signed int a2, int a3, char a4, char a5, uint64_t a6)
{
  v9 = a3;
  if (a3 != 14)
  {
    LODWORD(v12) = 3;
    *(&v12 + 1) = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
    LODWORD(v13) = 164;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (type) == (WireFormatLite::TYPE_ENUM): ", 0x35uLL);
    sub_1959854(&v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  LOBYTE(v12) = v9;
  BYTE1(v12) = a4;
  BYTE2(v12) = a5;
  *(&v12 + 1) = sub_194F720;
  v13 = a6;
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_194EFD8(a1, a2, &v12);
}

void sub_194F700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_194F72C(unint64_t a1, signed int a2, char a3, char a4, char a5, uint64_t a6)
{
  if ((a3 & 0xFE) != 0xA)
  {
    LODWORD(v12) = 3;
    *(&v12 + 1) = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
    v13 = 177;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ", 0x5AuLL);
    sub_1959854(&v12);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  LOBYTE(v12) = a3;
  BYTE1(v12) = a4;
  BYTE2(v12) = a5;
  *(&v12 + 1) = a6;
  __p.__r_.__value_.__r.__words[0] = 0;
  sub_194EFD8(a1, a2, &v12);
}

void sub_194F7FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_194F82C(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_194F83C(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_195A70C(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_1951F68(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_195CDB4(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      operator delete[]();
    }
  }

  return a1;
}

uint64_t sub_194F918(uint64_t a1, int a2)
{
  v2 = sub_194F948(a1, a2);
  if (v2)
  {
    v3 = *(v2 + 10) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

_DWORD *sub_194F948(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  if (*(a1 + 8) < 0x101u)
  {
    v3 = *(a1 + 10);
    v4 = &v2[8 * v3];
    while (v3)
    {
      v5 = v3 >> 1;
      v6 = &v2[8 * (v3 >> 1)];
      v8 = *v6;
      v7 = v6 + 8;
      v3 += ~(v3 >> 1);
      if (v8 < a2)
      {
        v2 = v7;
      }

      else
      {
        v3 = v5;
      }
    }

    if (v2 != v4)
    {
      v10 = *v2;
      v9 = v2 + 2;
      if (v10 == a2)
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    return 0;
  }

  v14 = *(v2 + 1);
  v12 = v2 + 2;
  v13 = v14;
  if (!v14)
  {
    return 0;
  }

  v15 = v12;
  do
  {
    if (v13[8] >= a2)
    {
      v15 = v13;
    }

    v13 = *&v13[2 * (v13[8] < a2)];
  }

  while (v13);
  if (v15 == v12)
  {
    return 0;
  }

  v16 = v15[8];
  v17 = v15 + 10;
  if (v16 <= a2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *sub_194FA04(uint64_t a1, int a2)
{
  result = sub_194F948(a1, a2);
  if (result)
  {

    return sub_194FA38(result);
  }

  return result;
}

uint64_t sub_194FA38(unsigned __int8 *a1)
{
  v1 = dword_23668D8[a1[8]];
  if (v1 > 5)
  {
    if (v1 <= 8)
    {
      return **a1;
    }

    if (v1 == 9 || v1 == 10)
    {
      return *(*a1 + 8);
    }
  }

  else if (v1 > 2 || v1 == 1 || v1 == 2)
  {
    return **a1;
  }

  LODWORD(v3[0]) = 3;
  v3[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
  v4 = 1738;
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "Can't get here.", 0xFuLL);
  sub_1959854(v3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_194FB4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unsigned __int8 *sub_194FB80(uint64_t a1, int a2)
{
  result = sub_194F948(a1, a2);
  if (result)
  {

    return sub_194FBB8(result);
  }

  return result;
}

unsigned __int8 *sub_194FBB8(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = dword_23668D8[result[8]];
    if (v2 > 5)
    {
      if (v2 <= 8)
      {
LABEL_19:
        **result = 0;
        return result;
      }

      if (v2 == 9)
      {
        v10 = *result;

        return sub_12A41D0(v10);
      }

      else if (v2 == 10)
      {
        v5 = *result;
        v6 = *(*result + 8);
        if (v6 >= 1)
        {
          v7 = (*(v5 + 2) + 8);
          do
          {
            v8 = *v7++;
            result = (*(*v8 + 40))(v8);
            --v6;
          }

          while (v6);
          v5[2] = 0;
        }
      }
    }

    else if (v2 > 2 || v2 == 1 || v2 == 2)
    {
      goto LABEL_19;
    }
  }

  else if ((result[10] & 1) == 0)
  {
    v3 = dword_23668D8[result[8]];
    if (v3 == 10)
    {
      v9 = **result;
      if ((result[10] & 0x10) != 0)
      {
        result = (*(v9 + 112))();
      }

      else
      {
        result = (*(v9 + 40))();
      }
    }

    else if (v3 == 9)
    {
      v4 = *result;
      if (*(*result + 23) < 0)
      {
        **v4 = 0;
        v4[1] = 0;
      }

      else
      {
        *v4 = 0;
        *(v4 + 23) = 0;
      }
    }

    v1[10] = v1[10] & 0xF0 | 1;
  }

  return result;
}

void sub_194FD9C(uint64_t **a1, uint64_t a2, char a3, char a4, int a5, uint64_t a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A7EC;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1958E5C(v15, v17 + 1);
    *(*(v15 + 1) + 4 * v17) = a5;
  }

  else
  {
    *(*(v15 + 1) + 4 * v17) = a5;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

void sub_194FE98(unsigned int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_1958E5C(a1, v3 + 1);
    *(*(a1 + 1) + 4 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

uint64_t sub_194FEFC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_194F948(a1, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

void sub_194FF48(uint64_t **a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A80C;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1959094(v15, v17 + 1);
    *(*(v15 + 1) + 8 * v17) = a5;
  }

  else
  {
    *(*(v15 + 1) + 8 * v17) = a5;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

void sub_1950044(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_1959094(a1, v3 + 1);
    *(*(a1 + 1) + 8 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

uint64_t *sub_19500C0(uint64_t a1, uint64_t a2, char a3, int a4, uint64_t a5)
{
  result = sub_1952168(a1, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

void sub_1950114(uint64_t **a1, uint64_t a2, char a3, char a4, int a5, uint64_t a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A82C;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1958E5C(v15, v17 + 1);
    *(*(v15 + 1) + 4 * v17) = a5;
  }

  else
  {
    *(*(v15 + 1) + 4 * v17) = a5;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

uint64_t *sub_195022C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  result = sub_1952168(a1, a2);
  result[2] = a5;
  if (v9)
  {
    *(result + 8) = a3;
    *(result + 9) = 0;
  }

  *(result + 10) &= 0xF0u;
  *result = a4;
  return result;
}

void sub_1950280(uint64_t **a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A84C;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1959094(v15, v17 + 1);
    *(*(v15 + 1) + 8 * v17) = a5;
  }

  else
  {
    *(*(v15 + 1) + 8 * v17) = a5;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

void sub_1950394(uint64_t **a1, uint64_t a2, char a3, char a4, uint64_t a5, float a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A86C;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1958E5C(v15, v17 + 1);
    *(*(v15 + 1) + 4 * v17) = a6;
  }

  else
  {
    *(*(v15 + 1) + 4 * v17) = a6;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

void sub_1950498(uint64_t **a1, uint64_t a2, char a3, char a4, uint64_t a5, double a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A88C;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1959094(v15, v17 + 1);
    *(*(v15 + 1) + 8 * v17) = a6;
  }

  else
  {
    *(*(v15 + 1) + 8 * v17) = a6;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

void sub_195059C(unsigned int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_1959094(a1, v3 + 1);
    *(*(a1 + 1) + 8 * v3) = v4;
  }

  else
  {
    *(*(a1 + 1) + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
}

uint64_t sub_1950608(uint64_t a1, int a2, char a3)
{
  v4 = sub_194F948(a1, a2);
  if (v4 && (v4[10] & 1) == 0)
  {
    a3 = *v4;
  }

  return a3 & 1;
}

void sub_1950654(uint64_t **a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6)
{
  v11 = sub_1952168(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    *(v11 + 9) = 1;
    *(v11 + 11) = a4;
    v14 = *a1;
    if (!v14)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A8AC;
    *v15 = 0;
    *(v15 + 1) = v14;
    *v12 = v15;
  }

  else
  {
    v15 = *v11;
  }

  v17 = *v15;
  if (v17 == v15[1])
  {
    v18 = v17 + 1;
    sub_1958D44(v15, v17 + 1);
    *(*(v15 + 1) + v17) = a5;
  }

  else
  {
    *(*(v15 + 1) + v17) = a5;
    v18 = v17 + 1;
  }

  *v15 = v18;
}

uint64_t sub_1950754(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_194F948(a1, a2);
  if (v4)
  {
    return *v4;
  }

  return a3;
}

uint64_t sub_1950784(uint64_t **a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_1952168(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_23668D8[a3];
  if (v12 > 5)
  {
    if (v12 <= 7)
    {
      if (v12 == 6)
      {
        v13 = *a1;
        if (v13)
        {
          *v15 = v14;
          v16 = sub_195A86C;
          goto LABEL_29;
        }
      }

      else
      {
        v13 = *a1;
        if (v13)
        {
          *v15 = v14;
          v16 = sub_195A8AC;
          goto LABEL_29;
        }
      }

      goto LABEL_30;
    }

    switch(v12)
    {
      case 8:
        goto LABEL_21;
      case 9:
        v17 = *a1;
        if (v17)
        {
          *v18 = v14;
          v19 = sub_195A8CC;
          goto LABEL_33;
        }

        break;
      case 10:
        v17 = *a1;
        if (v17)
        {
          *v18 = v14;
          v19 = sub_195A8E8;
LABEL_33:
          v18[1] = v19;
          *v14 = v17;
          v14[1] = 0;
          v14[2] = 0;
          goto LABEL_35;
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
        *v15 = v14;
        v16 = sub_195A82C;
        goto LABEL_29;
      }
    }

    else if (v12 == 4)
    {
      v13 = *a1;
      if (v13)
      {
        *v15 = v14;
        v16 = sub_195A84C;
        goto LABEL_29;
      }
    }

    else
    {
      v13 = *a1;
      if (v13)
      {
        *v15 = v14;
        v16 = sub_195A88C;
LABEL_29:
        v15[1] = v16;
        *v14 = 0;
        v14[1] = v13;
LABEL_35:
        *v10 = v14;
        return *v10;
      }
    }

    goto LABEL_30;
  }

  if (v12 == 1)
  {
LABEL_21:
    v13 = *a1;
    if (v13)
    {
      *v15 = v14;
      v16 = sub_195A7EC;
      goto LABEL_29;
    }

    goto LABEL_30;
  }

  if (v12 == 2)
  {
    v13 = *a1;
    if (v13)
    {
      *v15 = v14;
      v16 = sub_195A80C;
      goto LABEL_29;
    }

LABEL_30:
    operator new();
  }

  return *v10;
}

uint64_t sub_1950A7C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_194F948(a1, a2);
  if (v4 && (*(v4 + 10) & 1) == 0)
  {
    return *v4;
  }

  return a3;
}

void *sub_1950AC0(uint64_t **a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1952168(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    *(v7 + 9) = 0;
    if (!*a1)
    {
      operator new();
    }

    *v11 = result;
    v11[1] = sub_195A650;
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *v8 = result;
  }

  else
  {
    result = *v7;
  }

  *(v8 + 10) &= 0xF0u;
  return result;
}

void *sub_1950B74(uint64_t **a1, uint64_t a2, char a3, uint64_t a4)
{
  v7 = sub_1952168(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    *(v7 + 9) = 1;
    *(v7 + 11) = 0;
    v10 = *a1;
    if (!*a1)
    {
      operator new();
    }

    *v12 = v11;
    v12[1] = sub_195A8CC;
    *v11 = v10;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v8 = v11;
  }

  else
  {
    v11 = *v7;
  }

  v13 = *(v11 + 16);
  if (v13 && (v14 = *(v11 + 8), v14 < *v13))
  {
    *(v11 + 8) = v14 + 1;
    return *&v13[2 * v14 + 2];
  }

  else
  {
    if (!*v11)
    {
      operator new();
    }

    *v16 = v15;
    v16[1] = sub_195A650;
    *v15 = 0;
    v15[1] = 0;
    v15[2] = 0;
    sub_19593CC(v11, v15);
  }

  return v15;
}

uint64_t sub_1950CD0(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_194F948(a1, a2);
  if (!v4)
  {
    return a3;
  }

  v5 = *(v4 + 10);
  v6 = *v4;
  if ((v5 & 0x10) == 0)
  {
    return v6;
  }

  v8 = *(*v6 + 24);

  return v8();
}

uint64_t sub_1950D4C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1952168(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    *(v9 + 9) = 0;
    *(v9 + 10) &= 0xFu;
    result = (*(*a4 + 32))(a4, *a1);
    *v10 = result;
    *(v10 + 10) &= 0xF0u;
  }

  else
  {
    v13 = *(v9 + 10);
    *(v9 + 10) = v13 & 0xF0;
    result = *v9;
    if ((v13 & 0x10) != 0)
    {
      v14 = *(*result + 32);

      return v14();
    }
  }

  return result;
}

uint64_t sub_1950E54(uint64_t a1, int a2, int a3)
{
  v4 = sub_194F948(a1, a2);
  if (!v4)
  {
    LODWORD(v6[0]) = 3;
    v6[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
    v7 = 747;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: extension != NULL: ", 0x21uLL);
    std::string::append(&__p, "Index out-of-bounds (field is empty).", 0x25uLL);
    sub_1959854(v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_1950F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1950F28(uint64_t a1, int a2, int a3)
{
  v4 = sub_194F948(a1, a2);
  if (!v4)
  {
    LODWORD(v6[0]) = 3;
    v6[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
    v7 = 754;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: extension != NULL: ", 0x21uLL);
    std::string::append(&__p, "Index out-of-bounds (field is empty).", 0x25uLL);
    sub_1959854(v6);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return *(*(*v4 + 16) + 8 * a3 + 8);
}

void sub_1950FDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1950FFC(uint64_t **a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1952168(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    *(v9 + 9) = 1;
    v12 = *a1;
    if (!*a1)
    {
      operator new();
    }

    *v14 = v13;
    v14[1] = sub_195A8E8;
    *v13 = v12;
    v13[1] = 0;
    v13[2] = 0;
    *v10 = v13;
  }

  else
  {
    v13 = *v9;
  }

  v15 = v13[2];
  if (!v15 || (v16 = *(v13 + 2), v16 >= *v15) || (*(v13 + 2) = v16 + 1, (v17 = *&v15[2 * v16 + 2]) == 0))
  {
    v17 = (*(*a4 + 32))(a4, *a1);
    sub_195A918(*v10, v17);
  }

  return v17;
}

unsigned __int8 *sub_1951124(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_195AA54(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_194FBB8(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

void *sub_19511A0(void *result, size_t __sz)
{
  v2 = *(result + 4);
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
    v5 = result[2];
    v6 = *(result + 5);
    v7 = *result;
    if (v2 < 0x101u)
    {
      if (v7)
      {
      }

      else
      {
        result = operator new[](32 * v2);
      }

      v8 = result;
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

      v8 = result;
      *v9 = result;
      v9[1] = sub_195B118;
      result[1] = 0;
      v10 = result + 1;
      result[2] = 0;
      *result = result + 1;
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
          result = sub_195B120(v8, v10, &v15);
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
      operator delete[]();
    }

    *(v4 + 4) = v2;
    v4[2] = v8;
  }

  return result;
}

uint64_t sub_195132C(char *a1, char *a2, void *a3, void *a4)
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

void sub_1951434(uint64_t **a1, uint64_t a2, int **a3)
{
  if (*(a3 + 9) != 1)
  {
    if (*(a3 + 10))
    {
      return;
    }

    v15 = *(a3 + 8);
    v16 = dword_23668D8[v15];
    if (v16 <= 5)
    {
      if (v16 <= 2)
      {
        if (v16 != 1)
        {
          if (v16 != 2)
          {
            return;
          }

LABEL_47:
          v39 = *a3;
          v40 = a3[2];
          v41 = sub_1952168(a1, a2);
          v41[2] = v40;
          if (v42)
          {
            *(v41 + 8) = v15;
            *(v41 + 9) = 0;
          }

          *(v41 + 10) &= 0xF0u;
          *v41 = v39;
          return;
        }
      }

      else if (v16 != 3)
      {
        if (v16 != 4)
        {
          v17 = *a3;
          v18 = a3[2];
          v19 = sub_1952168(a1, a2);
          v19[2] = v18;
          if (v20)
          {
            *(v19 + 8) = v15;
            *(v19 + 9) = 0;
          }

          *(v19 + 10) &= 0xF0u;
          *v19 = v17;
          return;
        }

        goto LABEL_47;
      }

LABEL_50:
      v43 = *a3;
      v44 = a3[2];
      v45 = sub_1952168(a1, a2);
      v45[2] = v44;
      if (v46)
      {
        *(v45 + 8) = v15;
        *(v45 + 9) = 0;
      }

      *(v45 + 10) &= 0xF0u;
      *v45 = v43;
      return;
    }

    if (v16 <= 7)
    {
      if (v16 == 6)
      {
        v63 = *a3;
        v64 = a3[2];
        v65 = sub_1952168(a1, a2);
        v65[2] = v64;
        if (v66)
        {
          *(v65 + 8) = v15;
          *(v65 + 9) = 0;
        }

        *(v65 + 10) &= 0xF0u;
        *v65 = v63;
      }

      else
      {
        v47 = *a3;
        v48 = a3[2];
        v49 = sub_1952168(a1, a2);
        v49[2] = v48;
        if (v50)
        {
          *(v49 + 8) = v15;
          *(v49 + 9) = 0;
        }

        *(v49 + 10) &= 0xF0u;
        *v49 = v47;
      }

      return;
    }

    if (v16 == 8)
    {
      goto LABEL_50;
    }

    if (v16 == 9)
    {
      v67 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_325C(&v108, *v67, *(v67 + 1));
      }

      else
      {
        v68 = *v67;
        v109 = *(v67 + 2);
        v108 = v68;
      }

      v104 = sub_1950AC0(a1, a2, v15, a3[2]);
      v105 = v104;
      if (*(v104 + 23) < 0)
      {
        operator delete(*v104);
      }

      v106 = v108;
      v105[2] = v109;
      *v105 = v106;
      return;
    }

    if (v16 != 10)
    {
      return;
    }

    v24 = a3[2];
    v25 = sub_1952168(a1, a2);
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
        v107 = (*(**a3 + 16))(*a3, *a1);
        *v26 = v107;
        (*(*v107 + 104))(v107, *a3);
        goto LABEL_124;
      }

      *(v25 + 10) = v28;
      v29 = (*(**a3 + 32))(*a3, *a1);
      *v26 = v29;
LABEL_80:
      (*(*v29 + 64))(v29, *a3);
LABEL_124:
      *(v26 + 10) &= 0xF0u;
      return;
    }

    v71 = *v25;
    v72 = *a3;
    if ((*(a3 + 10) & 0x10) != 0)
    {
      if ((*(v25 + 10) & 0x10) != 0)
      {
        (*(*v71 + 104))(*v25, v72);
        goto LABEL_124;
      }

      v72 = (*(*v72 + 24))(*a3, *v25);
      v73 = *v71;
    }

    else
    {
      v73 = *v71;
      if ((*(v25 + 10) & 0x10) != 0)
      {
        v29 = (*(v73 + 32))(*v25, v72);
        goto LABEL_80;
      }
    }

    (*(v73 + 64))(v71, v72);
    goto LABEL_124;
  }

  v6 = a3[2];
  v7 = sub_1952168(a1, a2);
  v9 = v7;
  v7[2] = v6;
  v10 = *(a3 + 8);
  if (v8)
  {
    *(v7 + 8) = v10;
    *(v7 + 11) = *(a3 + 11);
    *(v7 + 9) = 1;
  }

  v11 = dword_23668D8[v10];
  if (v11 > 5)
  {
    if (v11 <= 7)
    {
      if (v11 != 6)
      {
        if (v8)
        {
          v33 = *a1;
          if (!v33)
          {
            operator new();
          }

          *v35 = v34;
          v35[1] = sub_195A8AC;
          *v34 = 0;
          v34[1] = v33;
          *v9 = v34;
        }

        v76 = *a3;
        v77 = **a3;
        if (!v77)
        {
          return;
        }

        v78 = *v9;
        v79 = **v9;
        sub_1958D44(v78, v79 + v77);
        v80 = *(v78 + 8);
        *v78 += *v76;
        v81 = *(v76 + 1);
        v82 = *v76;
        v83 = (v80 + v79);
LABEL_108:

        memcpy(v83, v81, v82);
        return;
      }

      if (v8)
      {
        v51 = *a1;
        if (!v51)
        {
          operator new();
        }

        *v53 = v52;
        v53[1] = sub_195A86C;
        *v52 = 0;
        v52[1] = v51;
        *v9 = v52;
      }

      v69 = *a3;
      v70 = **a3;
      if (!v70)
      {
        return;
      }

LABEL_92:
      v84 = *v9;
      v85 = **v9;
      sub_1958E5C(v84, v85 + v70);
      v86 = *(v84 + 8);
      *v84 += *v69;
      v83 = (v86 + 4 * v85);
      v81 = *(v69 + 1);
      v82 = 4 * *v69;
      goto LABEL_108;
    }

    if (v11 != 8)
    {
      if (v11 == 9)
      {
        if (v8)
        {
          v60 = *a1;
          if (!v60)
          {
            operator new();
          }

          *v62 = v61;
          v62[1] = sub_195A8CC;
          *v61 = v60;
          v61[1] = 0;
          v61[2] = 0;
          *v9 = v61;
        }

        v97 = *a3;
        v98 = (*a3)[2];
        if (v98)
        {
          v99 = *v9;
          v100 = *(v97 + 2);
          v101 = sub_19592E8(v99, v98);
          sub_1201B48(v99, v101, (v100 + 8), v98, **(v99 + 16) - *(v99 + 8));
          v102 = *(v99 + 8) + v98;
          *(v99 + 8) = v102;
          v103 = *(v99 + 16);
          if (*v103 < v102)
          {
            *v103 = v102;
          }
        }
      }

      else if (v11 == 10)
      {
        if (v8)
        {
          v21 = *a1;
          if (!*a1)
          {
            operator new();
          }

          *v23 = v22;
          v23[1] = sub_195A8E8;
          *v22 = v21;
          v22[1] = 0;
          v22[2] = 0;
          *v9 = v22;
        }

        v87 = *a3;
        if ((*a3)[2] >= 1)
        {
          v88 = 0;
          do
          {
            v89 = *(*(v87 + 2) + 8 * v88 + 8);
            v90 = *v9;
            v91 = *(*v9 + 16);
            if (!v91 || (v92 = *(v90 + 8), v92 >= *v91) || (*(v90 + 8) = v92 + 1, (v93 = *&v91[2 * v92 + 2]) == 0))
            {
              v93 = (*(*v89 + 32))(v89, *a1);
              sub_195A918(*v9, v93);
            }

            (*(*v93 + 64))(v93, v89);
            ++v88;
          }

          while (v88 < v87[2]);
        }
      }

      return;
    }

LABEL_42:
    if (v8)
    {
      v36 = *a1;
      if (!v36)
      {
        operator new();
      }

      *v38 = v37;
      v38[1] = sub_195A7EC;
      *v37 = 0;
      v37[1] = v36;
      *v9 = v37;
    }

    v69 = *a3;
    v70 = **a3;
    if (!v70)
    {
      return;
    }

    goto LABEL_92;
  }

  if (v11 <= 2)
  {
    if (v11 != 1)
    {
      if (v11 == 2)
      {
        if (v8)
        {
          v30 = *a1;
          if (!v30)
          {
            operator new();
          }

          *v32 = v31;
          v32[1] = sub_195A80C;
          *v31 = 0;
          v31[1] = v30;
          *v9 = v31;
        }

        v74 = *a3;
        v75 = **a3;
        if (v75)
        {
          goto LABEL_107;
        }
      }

      return;
    }

    goto LABEL_42;
  }

  if (v11 == 3)
  {
    if (v8)
    {
      v54 = *a1;
      if (!v54)
      {
        operator new();
      }

      *v56 = v55;
      v56[1] = sub_195A82C;
      *v55 = 0;
      v55[1] = v54;
      *v9 = v55;
    }

    v69 = *a3;
    v70 = **a3;
    if (!v70)
    {
      return;
    }

    goto LABEL_92;
  }

  if (v11 == 4)
  {
    if (v8)
    {
      v57 = *a1;
      if (!v57)
      {
        operator new();
      }

      *v59 = v58;
      v59[1] = sub_195A84C;
      *v58 = 0;
      v58[1] = v57;
      *v9 = v58;
    }

    v74 = *a3;
    v75 = **a3;
    if (v75)
    {
      goto LABEL_107;
    }
  }

  else
  {
    if (v8)
    {
      v12 = *a1;
      if (!v12)
      {
        operator new();
      }

      *v14 = v13;
      v14[1] = sub_195A88C;
      *v13 = 0;
      v13[1] = v12;
      *v9 = v13;
    }

    v74 = *a3;
    v75 = **a3;
    if (v75)
    {
LABEL_107:
      v94 = *v9;
      v95 = **v9;
      sub_1959094(v94, v95 + v75);
      v96 = *(v94 + 8);
      *v94 += *v74;
      v83 = (v96 + 8 * v95);
      v81 = *(v74 + 1);
      v82 = 8 * *v74;
      goto LABEL_108;
    }
  }
}

void sub_1951EDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_1951F08(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  LOWORD(v2) = *(result + 4);
  *(result + 4) = *(a2 + 4);
  *(a2 + 4) = v2;
  LOWORD(v2) = *(result + 5);
  *(result + 5) = *(a2 + 5);
  *(a2 + 5) = v2;
  v3 = result[2];
  result[2] = a2[2];
  a2[2] = v3;
  return result;
}

_BYTE *sub_1951F68(_BYTE *result)
{
  v1 = dword_23668D8[result[8]];
  if (result[9] == 1)
  {
    if (v1 > 5)
    {
      if (v1 > 8)
      {
        if (v1 == 9)
        {
          if (*result)
          {
            sub_19591B0(*result);
            goto LABEL_27;
          }
        }

        else if (v1 == 10 && *result)
        {
          sub_195AFAC(*result);
          goto LABEL_27;
        }

        return result;
      }
    }

    else if (v1 <= 2 && v1 != 1 && v1 != 2)
    {
      return result;
    }

    v5 = *result;
    if (*result)
    {
      if (*(v5 + 4) >= 1)
      {
        v6 = *(v5 + 8);
        v8 = *(v6 - 8);
        v7 = (v6 - 8);
        if (!v8)
        {
          operator delete(v7);
        }
      }

      goto LABEL_27;
    }
  }

  else
  {
    if (v1 == 10)
    {
      v3 = result[10];
      result = *result;
      if ((v3 & 0x10) != 0)
      {
        if (!result)
        {
          return result;
        }

        v4 = *(*result + 8);
      }

      else
      {
        if (!result)
        {
          return result;
        }

        v4 = *(*result + 8);
      }

      return v4();
    }

    if (v1 == 9)
    {
      v2 = *result;
      if (*result)
      {
        if (*(v2 + 23) < 0)
        {
          operator delete(*v2);
        }

LABEL_27:

        operator delete();
      }
    }
  }

  return result;
}

uint64_t *sub_1952168(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return sub_195B038(v4, &v14) + 5;
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

    sub_19511A0(a1, v6 + 1);
    return sub_1952168(a1, a2);
  }
}

uint64_t sub_195228C(uint64_t a1)
{
  if (*(a1 + 8) < 0x101u)
  {
    if (*(a1 + 10))
    {
      v2 = *(a1 + 16);
      do
      {
        result = sub_1952348((v2 + 8));
        if ((result & 1) == 0)
        {
          break;
        }

        v2 += 32;
      }

      while (v2 != *(a1 + 16) + 32 * *(a1 + 10));
      return result;
    }

    return 1;
  }

  v4 = *(a1 + 16);
  v7 = *v4;
  v5 = (v4 + 1);
  v6 = v7;
  if (v7 == v5)
  {
    return 1;
  }

  do
  {
    result = sub_1952348(v6 + 40);
    if (!result)
    {
      break;
    }

    v8 = *(v6 + 1);
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
      }

      while (v8);
    }

    else
    {
      do
      {
        v9 = *(v6 + 2);
        v10 = *v9 == v6;
        v6 = v9;
      }

      while (!v10);
    }

    v6 = v9;
  }

  while (v9 != v5);
  return result;
}

uint64_t sub_1952348(unsigned __int8 *a1)
{
  if (dword_23668D8[a1[8]] != 10)
  {
    return 1;
  }

  if (a1[9] == 1)
  {
    v2 = *a1;
    if (*(*a1 + 8) >= 1)
    {
      v3 = 0;
      while (1)
      {
        v4 = *(v2[2] + 8 * v3 + 8);
        if (((*(*v4 + 48))(v4) & 1) == 0)
        {
          break;
        }

        ++v3;
        v2 = *a1;
        if (v3 >= *(*a1 + 8))
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

  v6 = **a1;
  if ((a1[10] & 0x10) != 0)
  {
    return ((*(v6 + 72))() & 1) != 0;
  }

  result = (*(v6 + 48))();
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t sub_1952470(uint64_t a1, int a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, _BYTE *a6)
{
  result = (*(*a4 + 16))(a4, a3, a5);
  if (result)
  {
    v10 = dword_2366924[*a5];
    *a6 = 0;
    if (a2 != 2 || (a5[1] & 1) == 0)
    {
      return v10 == a2;
    }

    if (v10 > 5)
    {
      LODWORD(v11[0]) = 3;
      v11[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
      v12 = 82;
      memset(&__p, 0, sizeof(__p));
      std::string::append(&__p, "can't reach here.", 0x11uLL);
      sub_1959854(v11);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      return v10 == a2;
    }

    result = 1;
    if (((1 << v10) & 0x1C) != 0)
    {
      return v10 == a2;
    }

    *a6 = 1;
  }

  return result;
}

void sub_1952580(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const std::string::value_type *sub_19525AC(uint64_t **a1, unint64_t a2, char *a3, uint64_t a4, uint64_t *a5, int32x2_t *a6)
{
  v9 = a2;
  v16[0] = off_2721660;
  v16[1] = a4;
  v11 = a2 >> 3;
  v15 = 0;
  if (sub_1952470(a1, a2 & 7, a2 >> 3, v16, v14, &v15))
  {
    return sub_19526BC(a1, v11, v15, v14, a5, a3, a6);
  }

  if (*a5)
  {
    v13 = (*a5 & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  else
  {
    v13 = sub_11F1920(a5);
  }

  v17.__r_.__value_.__r.__words[0] = v13;
  return sub_1958BA4(v9, &v17, a3, a6);
}

const std::string::value_type *sub_19526BC(uint64_t **a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, char *a6, int32x2_t *a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a3)
  {
    switch(*a4)
    {
      case 1:
        v51 = sub_1950784(a1, a2, 1, *(a4 + 2), *(a4 + 24));
        v52 = v8;
        v53 = a7;

        goto LABEL_76;
      case 2:
        v45 = sub_1950784(a1, a2, 2, *(a4 + 2), *(a4 + 24));
        v46 = v8;
        v47 = a7;

        goto LABEL_64;
      case 3:
        v50 = sub_1950784(a1, a2, 3, *(a4 + 2), *(a4 + 24));

        return sub_195BA5C(a7, v8, v50);
      case 4:
        v54 = sub_1950784(a1, a2, 4, *(a4 + 2), *(a4 + 24));

        return sub_195BC50(a7, v8, v54);
      case 5:
        v48 = sub_1950784(a1, a2, 5, *(a4 + 2), *(a4 + 24));

        return sub_195B714(a7, v8, v48);
      case 6:
        v51 = sub_1950784(a1, a2, 6, *(a4 + 2), *(a4 + 24));
        v52 = v8;
        v53 = a7;

        goto LABEL_76;
      case 7:
        v45 = sub_1950784(a1, a2, 7, *(a4 + 2), *(a4 + 24));
        v46 = v8;
        v47 = a7;

        goto LABEL_64;
      case 8:
        v55 = sub_1950784(a1, a2, 8, *(a4 + 2), *(a4 + 24));

        return sub_195C1A4(a7, v8, v55);
      case 9:
      case 0xA:
      case 0xB:
      case 0xC:
        v105[0] = 3;
        *&v106 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set_inl.h";
        DWORD2(v106) = 79;
        memset(&__p, 0, sizeof(__p));
        std::string::append(&__p, "Non-primitive types can't be packed.", 0x24uLL);
        sub_1959854(v105);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        goto LABEL_142;
      case 0xD:
        v49 = sub_1950784(a1, a2, 13, *(a4 + 2), *(a4 + 24));

        return sub_195B908(a7, v8, v49);
      case 0xE:
        *v105 = sub_1950784(a1, a2, 14, *(a4 + 2), *(a4 + 24));
        v106 = *(a4 + 8);
        __p.__r_.__value_.__r.__words[0] = a5;
        LODWORD(__p.__r_.__value_.__r.__words[1]) = v11;
        v8 = sub_195AB48(a7, v8, v105);
        goto LABEL_142;
      case 0xF:
        v45 = sub_1950784(a1, a2, 15, *(a4 + 2), *(a4 + 24));
        v46 = v8;
        v47 = a7;

LABEL_64:
        result = sub_195898C(v45, v46, v47);
        break;
      case 0x10:
        v51 = sub_1950784(a1, a2, 16, *(a4 + 2), *(a4 + 24));
        v52 = v8;
        v53 = a7;

LABEL_76:
        result = sub_1958A24(v51, v52, v53);
        break;
      case 0x11:
        v44 = sub_1950784(a1, a2, 17, *(a4 + 2), *(a4 + 24));

        result = sub_195BDA4(a7, v8, v44);
        break;
      case 0x12:
        v56 = sub_1950784(a1, a2, 18, *(a4 + 2), *(a4 + 24));

        result = sub_195BFA4(a7, v8, v56);
        break;
      default:
        goto LABEL_142;
    }
  }

  else
  {
    switch(*a4)
    {
      case 1:
        v8 = a6 + 8;
        v38 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_1950498(a1, a2, 1, *(a4 + 2), *(a4 + 24), v38);
        }

        else
        {
          v65 = *(a4 + 24);
          v66 = sub_1952168(a1, a2);
          v66[2] = v65;
          if (v67)
          {
            *(v66 + 4) = 1;
          }

          *(v66 + 10) &= 0xF0u;
          *v66 = v38;
        }

        goto LABEL_142;
      case 2:
        v8 = a6 + 4;
        v39 = *a6;
        if (*(a4 + 1) == 1)
        {
          sub_1950394(a1, a2, 2, *(a4 + 2), *(a4 + 24), v39);
        }

        else
        {
          v68 = *(a4 + 24);
          v69 = sub_1952168(a1, a2);
          v69[2] = v68;
          if (v70)
          {
            *(v69 + 4) = 2;
          }

          *(v69 + 10) &= 0xF0u;
          *v69 = v39;
        }

        goto LABEL_142;
      case 3:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        if (*(a4 + 1) == 1)
        {
          v28 = *(a4 + 2);
          v29 = *v105;
          v30 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v31 = 3;
          goto LABEL_49;
        }

        v32 = *v105;
        v83 = *(a4 + 24);
        v58 = sub_1952168(v12, v11);
        v58[2] = v83;
        if ((v84 & 1) == 0)
        {
          goto LABEL_132;
        }

        v60 = 3;
        goto LABEL_131;
      case 4:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        if (*(a4 + 1) == 1)
        {
          v33 = *(a4 + 2);
          v34 = *v105;
          v35 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v36 = 4;
          goto LABEL_39;
        }

        v32 = *v105;
        v85 = *(a4 + 24);
        v58 = sub_1952168(v12, v11);
        v58[2] = v85;
        if ((v86 & 1) == 0)
        {
          goto LABEL_132;
        }

        v60 = 4;
        goto LABEL_131;
      case 5:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v20 = v105[0];
          v21 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v22 = 5;
          goto LABEL_58;
        }

        v37 = v105[0];
        v81 = *(a4 + 24);
        v62 = sub_1952168(v12, v11);
        v62[2] = v81;
        if ((v82 & 1) == 0)
        {
          goto LABEL_141;
        }

        v64 = 5;
        goto LABEL_140;
      case 6:
        v8 = a6 + 8;
        v32 = *a6;
        if (*(a4 + 1) == 1)
        {
          v33 = *(a4 + 2);
          v35 = *(a4 + 24);
          v36 = 6;
          v34 = v32;
LABEL_39:
          sub_1950280(a1, a2, v36, v33, v34, v35);
          goto LABEL_142;
        }

        v71 = *(a4 + 24);
        v58 = sub_1952168(a1, a2);
        v58[2] = v71;
        if ((v72 & 1) == 0)
        {
          goto LABEL_132;
        }

        v60 = 6;
        goto LABEL_131;
      case 7:
        v8 = a6 + 4;
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v15 = *(a4 + 2);
          v17 = *(a4 + 24);
          v18 = 7;
          v16 = v37;
          goto LABEL_44;
        }

        v77 = *(a4 + 24);
        v62 = sub_1952168(a1, a2);
        v62[2] = v77;
        if ((v78 & 1) == 0)
        {
          goto LABEL_141;
        }

        v64 = 7;
        goto LABEL_140;
      case 8:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (v8)
        {
          if (*(a4 + 1) == 1)
          {
            sub_1950654(v12, v11, 8, *(a4 + 2), *v105 != 0, *(a4 + 24));
          }

          else
          {
            v87 = *v105;
            v88 = *(a4 + 24);
            v89 = sub_1952168(v12, v11);
            v89[2] = v88;
            if (v90)
            {
              *(v89 + 4) = 8;
            }

            *(v89 + 10) &= 0xF0u;
            *v89 = v87 != 0;
          }
        }

        goto LABEL_142;
      case 9:
      case 0xC:
        v13 = *(a4 + 1);
        v14 = *(a4 + 24);
        if (v13 == 1)
        {
          v23 = sub_1950B74(a1, a2, 9, v14);
        }

        else
        {
          v23 = sub_1950AC0(a1, a2, 9, v14);
        }

        v24 = v23;
        v25 = *v8;
        if (*v8 < 0)
        {
          v99 = sub_225F208(v8, *v8);
          if (!v99)
          {
LABEL_145:
            v8 = 0;
            goto LABEL_142;
          }

          v26 = v99;
          v25 = v100;
        }

        else
        {
          v26 = v8 + 1;
        }

        return sub_194ECB8(a7, v26, v25, v24);
      case 0xA:
        v40 = *(a4 + 1);
        v41 = *(a4 + 8);
        v42 = *(a4 + 24);
        if (v40 == 1)
        {
          v43 = sub_1950FFC(a1, a2, 10, v41, v42);
        }

        else
        {
          v43 = sub_1950D4C(a1, a2, 10, v41, v42);
        }

        v73 = a7[11].i32[0];
        v74 = __OFSUB__(v73--, 1);
        a7[11].i32[0] = v73;
        if (v73 < 0 != v74)
        {
          goto LABEL_145;
        }

        ++a7[11].i32[1];
        v75 = (*(*v43 + 88))(v43, v8, a7);
        a7[11] = vadd_s32(a7[11], 0xFFFFFFFF00000001);
        v76 = a7[10].i32[0];
        a7[10].i32[0] = 0;
        if (v76 == ((8 * v11) | 3))
        {
          v8 = v75;
        }

        else
        {
          v8 = 0;
        }

        goto LABEL_142;
      case 0xB:
        v101 = *(a4 + 1);
        v102 = *(a4 + 8);
        v103 = *(a4 + 24);
        if (v101 == 1)
        {
          v104 = sub_1950FFC(a1, a2, 11, v102, v103);
        }

        else
        {
          v104 = sub_1950D4C(a1, a2, 11, v102, v103);
        }

        return sub_225F148(a7, v104, v8);
      case 0xD:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        if (*(a4 + 1) == 1)
        {
          v15 = *(a4 + 2);
          v16 = v105[0];
          v17 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v18 = 13;
LABEL_44:
          sub_1950114(a1, a2, v18, v15, v16, v17);
          goto LABEL_142;
        }

        v37 = v105[0];
        v79 = *(a4 + 24);
        v62 = sub_1952168(v12, v11);
        v62[2] = v79;
        if ((v80 & 1) == 0)
        {
          goto LABEL_141;
        }

        v64 = 13;
        goto LABEL_140;
      case 0xE:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        v37 = v105[0];
        if (((*(a4 + 8))(*(a4 + 16), v105[0]) & 1) == 0)
        {
          v93 = *v105;
          if (*a5)
          {
            v94 = ((*a5 & 0xFFFFFFFFFFFFFFFCLL) + 8);
          }

          else
          {
            v94 = sub_11F1920(a5);
          }

          sub_19586BC(v11, v93, v94);
          goto LABEL_142;
        }

        if (*(a4 + 1) == 1)
        {
          sub_194FD9C(v12, v11, 14, *(a4 + 2), v37, *(a4 + 24));
          goto LABEL_142;
        }

        v97 = *(a4 + 24);
        v62 = sub_1952168(v12, v11);
        v62[2] = v97;
        if (v98)
        {
          v64 = 14;
          goto LABEL_140;
        }

        goto LABEL_141;
      case 0xF:
        v8 = a6 + 4;
        v37 = *a6;
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v21 = *(a4 + 24);
          v22 = 15;
          goto LABEL_57;
        }

        v61 = *(a4 + 24);
        v62 = sub_1952168(a1, a2);
        v62[2] = v61;
        if ((v63 & 1) == 0)
        {
          goto LABEL_141;
        }

        v64 = 15;
        goto LABEL_140;
      case 0x10:
        v8 = a6 + 8;
        v32 = *a6;
        if (*(a4 + 1) == 1)
        {
          v28 = *(a4 + 2);
          v30 = *(a4 + 24);
          v31 = 16;
          goto LABEL_48;
        }

        v57 = *(a4 + 24);
        v58 = sub_1952168(a1, a2);
        v58[2] = v57;
        if ((v59 & 1) == 0)
        {
          goto LABEL_132;
        }

        v60 = 16;
        goto LABEL_131;
      case 0x11:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        v37 = -(v105[0] & 1) ^ (v105[0] >> 1);
        if (*(a4 + 1) == 1)
        {
          v19 = *(a4 + 2);
          v21 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v22 = 17;
LABEL_57:
          v20 = v37;
LABEL_58:
          sub_194FD9C(a1, a2, v22, v19, v20, v21);
        }

        else
        {
          v95 = *(a4 + 24);
          v62 = sub_1952168(v12, v11);
          v62[2] = v95;
          if (v96)
          {
            v64 = 17;
LABEL_140:
            *(v62 + 4) = v64;
          }

LABEL_141:
          *(v62 + 10) &= 0xF0u;
          *v62 = v37;
        }

        goto LABEL_142;
      case 0x12:
        *v105 = 0;
        v8 = sub_1216520(a6, v105);
        if (!v8)
        {
          goto LABEL_142;
        }

        v32 = -(v105[0] & 1) ^ (*v105 >> 1);
        if (*(a4 + 1) == 1)
        {
          v28 = *(a4 + 2);
          v30 = *(a4 + 24);
          a1 = v12;
          a2 = v11;
          v31 = 18;
LABEL_48:
          v29 = v32;
LABEL_49:
          sub_194FF48(a1, a2, v31, v28, v29, v30);
        }

        else
        {
          v91 = *(a4 + 24);
          v58 = sub_1952168(v12, v11);
          v58[2] = v91;
          if (v92)
          {
            v60 = 18;
LABEL_131:
            *(v58 + 4) = v60;
          }

LABEL_132:
          *(v58 + 10) &= 0xF0u;
          *v58 = v32;
        }

LABEL_142:
        result = v8;
        break;
      default:
        goto LABEL_142;
    }
  }

  return result;
}

void sub_195336C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1953428(uint64_t a1, int a2, signed int a3, char *a4, _DWORD *a5)
{
  v7 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    v17 = *(v7 + 1);
    v16 = v7 + 2;
    v15 = v17;
    if (v17)
    {
      v18 = v16;
      do
      {
        if (*(v15 + 32) >= a2)
        {
          v18 = v15;
        }

        v15 = *(v15 + 8 * (*(v15 + 32) < a2));
      }

      while (v15);
      if (v18 != v16)
      {
        do
        {
          v19 = *(v18 + 8);
          if (v19 >= a3)
          {
            break;
          }

          a4 = sub_1953554(v18 + 40, v19, a4, a5);
          v20 = v18[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v18[2];
              v22 = *v21 == v18;
              v18 = v21;
            }

            while (!v22);
          }

          v18 = v21;
        }

        while (v21 != v16);
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

    while (v7 != v9 && *v7 < a3)
    {
      a4 = sub_1953554(v7 + 8, *v7, a4, a5);
      v7 += 8;
    }
  }

  return a4;
}

char *sub_1953554(_BYTE *a1, unsigned int a2, char *a3, _DWORD *a4)
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
          v5 = sub_225EB68(a4, a3);
        }

        v8 = 8 * a2;
        *v5 = (8 * a2) | 2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v8 | 0x82;
          v29 = v8 >> 7;
          v5[1] = v8 >> 7;
          v9 = v5 + 2;
          if (v8 >= 0x4000)
          {
            LOBYTE(v30) = v5[1];
            do
            {
              *(v9 - 1) = v30 | 0x80;
              v30 = v29 >> 7;
              *v9++ = v29 >> 7;
              v31 = v29 >> 14;
              v29 >>= 7;
            }

            while (v31);
          }
        }

        else
        {
          v9 = v5 + 1;
        }

        v32 = *(a1 + 3);
        *v9 = v32;
        if (v32 > 0x7F)
        {
          *v9 = v32 | 0x80;
          v33 = v32 >> 7;
          v9[1] = v32 >> 7;
          v5 = v9 + 2;
          if (v32 >= 0x4000)
          {
            LOBYTE(v9) = v9[1];
            do
            {
              *(v5 - 1) = v9 | 0x80;
              v9 = (v33 >> 7);
              *v5++ = v33 >> 7;
              v34 = v33 >> 14;
              v33 >>= 7;
            }

            while (v34);
          }
        }

        else
        {
          v5 = v9 + 1;
        }

        switch(a1[8])
        {
          case 1:
            v369 = *a1;
            if (**a1 >= 1)
            {
              v370 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v369 = *a1;
                }

                *v5 = *(*(v369 + 1) + 8 * v370);
                v5 += 8;
                ++v370;
                v369 = *a1;
              }

              while (v370 < **a1);
            }

            break;
          case 2:
            v371 = *a1;
            if (**a1 >= 1)
            {
              v372 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v371 = *a1;
                }

                *v5 = *(*(v371 + 8) + 4 * v372);
                v5 += 4;
                ++v372;
                v371 = *a1;
              }

              while (v372 < **a1);
            }

            break;
          case 3:
            v351 = *a1;
            if (**a1 >= 1)
            {
              v352 = 0;
              v353 = v5;
              do
              {
                if (*a4 <= v353)
                {
                  v353 = sub_225EB68(a4, v353);
                  v351 = *a1;
                }

                v354 = *(*(v351 + 8) + 8 * v352);
                *v353 = v354;
                if (v354 > 0x7F)
                {
                  *v353 = v354 | 0x80;
                  v355 = v354 >> 7;
                  v353[1] = v354 >> 7;
                  v5 = v353 + 2;
                  if (v354 >= 0x4000)
                  {
                    LOBYTE(v356) = v353[1];
                    do
                    {
                      *(v5 - 1) = v356 | 0x80;
                      v356 = v355 >> 7;
                      *v5++ = v355 >> 7;
                      v357 = v355 >> 14;
                      v355 >>= 7;
                    }

                    while (v357);
                  }
                }

                else
                {
                  v5 = v353 + 1;
                }

                ++v352;
                v351 = *a1;
                v353 = v5;
              }

              while (v352 < **a1);
            }

            break;
          case 4:
            v360 = *a1;
            if (**a1 >= 1)
            {
              v361 = 0;
              v362 = v5;
              do
              {
                if (*a4 <= v362)
                {
                  v362 = sub_225EB68(a4, v362);
                  v360 = *a1;
                }

                v363 = *(*(v360 + 8) + 8 * v361);
                *v362 = v363;
                if (v363 > 0x7F)
                {
                  *v362 = v363 | 0x80;
                  v364 = v363 >> 7;
                  v362[1] = v363 >> 7;
                  v5 = v362 + 2;
                  if (v363 >= 0x4000)
                  {
                    LOBYTE(v365) = v362[1];
                    do
                    {
                      *(v5 - 1) = v365 | 0x80;
                      v365 = v364 >> 7;
                      *v5++ = v364 >> 7;
                      v366 = v364 >> 14;
                      v364 >>= 7;
                    }

                    while (v366);
                  }
                }

                else
                {
                  v5 = v362 + 1;
                }

                ++v361;
                v360 = *a1;
                v362 = v5;
              }

              while (v361 < **a1);
            }

            break;
          case 5:
            v337 = *a1;
            if (**a1 >= 1)
            {
              v338 = 0;
              v339 = v5;
              do
              {
                if (*a4 <= v339)
                {
                  v339 = sub_225EB68(a4, v339);
                  v337 = *a1;
                }

                v340 = *(*(v337 + 8) + 4 * v338);
                *v339 = v340;
                if (v340 > 0x7F)
                {
                  *v339 = v340 | 0x80;
                  v341 = v340 >> 7;
                  v339[1] = v340 >> 7;
                  v5 = v339 + 2;
                  if (v340 >= 0x4000)
                  {
                    LOBYTE(v342) = v339[1];
                    do
                    {
                      *(v5 - 1) = v342 | 0x80;
                      v342 = v341 >> 7;
                      *v5++ = v341 >> 7;
                      v343 = v341 >> 14;
                      v341 >>= 7;
                    }

                    while (v343);
                  }
                }

                else
                {
                  v5 = v339 + 1;
                }

                ++v338;
                v337 = *a1;
                v339 = v5;
              }

              while (v338 < **a1);
            }

            break;
          case 6:
            v388 = *a1;
            if (**a1 >= 1)
            {
              v389 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v388 = *a1;
                }

                *v5 = *(*(v388 + 8) + 8 * v389);
                v5 += 8;
                ++v389;
                v388 = *a1;
              }

              while (v389 < **a1);
            }

            break;
          case 7:
            v390 = *a1;
            if (**a1 >= 1)
            {
              v391 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v390 = *a1;
                }

                *v5 = *(*(v390 + 8) + 4 * v391);
                v5 += 4;
                ++v391;
                v390 = *a1;
              }

              while (v391 < **a1);
            }

            break;
          case 8:
            v367 = *a1;
            if (**a1 >= 1)
            {
              v368 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v367 = *a1;
                }

                *v5++ = *(*(v367 + 8) + v368++);
                v367 = *a1;
              }

              while (v368 < **a1);
            }

            break;
          case 9:
          case 0xA:
          case 0xB:
          case 0xC:
            LODWORD(v459[0]) = 3;
            v459[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
            v460 = 1982;
            memset(&__p, 0, sizeof(__p));
            std::string::append(&__p, "Non-primitive types can't be packed.", 0x24uLL);
            sub_1959854(v459);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            break;
          case 0xD:
            v344 = *a1;
            if (**a1 >= 1)
            {
              v345 = 0;
              v346 = v5;
              do
              {
                if (*a4 <= v346)
                {
                  v346 = sub_225EB68(a4, v346);
                  v344 = *a1;
                }

                v347 = *(*(v344 + 8) + 4 * v345);
                *v346 = v347;
                if (v347 > 0x7F)
                {
                  *v346 = v347 | 0x80;
                  v348 = v347 >> 7;
                  v346[1] = v347 >> 7;
                  v5 = v346 + 2;
                  if (v347 >= 0x4000)
                  {
                    LOBYTE(v349) = v346[1];
                    do
                    {
                      *(v5 - 1) = v349 | 0x80;
                      v349 = v348 >> 7;
                      *v5++ = v348 >> 7;
                      v350 = v348 >> 14;
                      v348 >>= 7;
                    }

                    while (v350);
                  }
                }

                else
                {
                  v5 = v346 + 1;
                }

                ++v345;
                v344 = *a1;
                v346 = v5;
              }

              while (v345 < **a1);
            }

            break;
          case 0xE:
            v381 = *a1;
            if (**a1 >= 1)
            {
              v382 = 0;
              v383 = v5;
              do
              {
                if (*a4 <= v383)
                {
                  v383 = sub_225EB68(a4, v383);
                  v381 = *a1;
                }

                v384 = *(*(v381 + 8) + 4 * v382);
                *v383 = v384;
                if (v384 > 0x7F)
                {
                  *v383 = v384 | 0x80;
                  v385 = v384 >> 7;
                  v383[1] = v384 >> 7;
                  v5 = v383 + 2;
                  if (v384 >= 0x4000)
                  {
                    LOBYTE(v386) = v383[1];
                    do
                    {
                      *(v5 - 1) = v386 | 0x80;
                      v386 = v385 >> 7;
                      *v5++ = v385 >> 7;
                      v387 = v385 >> 14;
                      v385 >>= 7;
                    }

                    while (v387);
                  }
                }

                else
                {
                  v5 = v383 + 1;
                }

                ++v382;
                v381 = *a1;
                v383 = v5;
              }

              while (v382 < **a1);
            }

            break;
          case 0xF:
            v335 = *a1;
            if (**a1 >= 1)
            {
              v336 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v335 = *a1;
                }

                *v5 = *(*(v335 + 8) + 4 * v336);
                v5 += 4;
                ++v336;
                v335 = *a1;
              }

              while (v336 < **a1);
            }

            break;
          case 0x10:
            v358 = *a1;
            if (**a1 >= 1)
            {
              v359 = 0;
              do
              {
                if (*a4 <= v5)
                {
                  v5 = sub_225EB68(a4, v5);
                  v358 = *a1;
                }

                *v5 = *(*(v358 + 8) + 8 * v359);
                v5 += 8;
                ++v359;
                v358 = *a1;
              }

              while (v359 < **a1);
            }

            break;
          case 0x11:
            v327 = *a1;
            if (**a1 >= 1)
            {
              v328 = 0;
              v329 = v5;
              do
              {
                if (*a4 <= v329)
                {
                  v329 = sub_225EB68(a4, v329);
                  v327 = *a1;
                }

                v330 = *(*(v327 + 8) + 4 * v328);
                v331 = (2 * v330) ^ (v330 >> 31);
                *v329 = (2 * v330) ^ (v330 >> 31);
                if (v331 > 0x7F)
                {
                  *v329 = v331 | 0x80;
                  v332 = v331 >> 7;
                  v329[1] = v331 >> 7;
                  v5 = v329 + 2;
                  if (v331 >= 0x4000)
                  {
                    LOBYTE(v333) = v329[1];
                    do
                    {
                      *(v5 - 1) = v333 | 0x80;
                      v333 = v332 >> 7;
                      *v5++ = v332 >> 7;
                      v334 = v332 >> 14;
                      v332 >>= 7;
                    }

                    while (v334);
                  }
                }

                else
                {
                  v5 = v329 + 1;
                }

                ++v328;
                v327 = *a1;
                v329 = v5;
              }

              while (v328 < **a1);
            }

            break;
          case 0x12:
            v373 = *a1;
            if (**a1 >= 1)
            {
              v374 = 0;
              v375 = v5;
              do
              {
                if (*a4 <= v375)
                {
                  v375 = sub_225EB68(a4, v375);
                  v373 = *a1;
                }

                v376 = *(*(v373 + 8) + 8 * v374);
                v377 = (2 * v376) ^ (v376 >> 63);
                *v375 = v377;
                if (v377 > 0x7F)
                {
                  *v375 = v377 | 0x80;
                  v378 = v377 >> 7;
                  v375[1] = v377 >> 7;
                  v5 = v375 + 2;
                  if (v377 >= 0x4000)
                  {
                    LOBYTE(v379) = v375[1];
                    do
                    {
                      *(v5 - 1) = v379 | 0x80;
                      v379 = v378 >> 7;
                      *v5++ = v378 >> 7;
                      v380 = v378 >> 14;
                      v378 >>= 7;
                    }

                    while (v380);
                  }
                }

                else
                {
                  v5 = v375 + 1;
                }

                ++v374;
                v373 = *a1;
                v375 = v5;
              }

              while (v374 < **a1);
            }

            break;
          default:
            return v5;
        }
      }
    }

    else
    {
      switch(a1[8])
      {
        case 1:
          v16 = *a1;
          if (**a1 >= 1)
          {
            v17 = 0;
            v18 = 8 * a2;
            v19 = (8 * a2) | 1;
            v20 = (8 * a2) | 0x81;
            v21 = (a2 >> 4) & 0x1FFFFFF;
            v22 = (8 * a2) >> 7;
            v23 = a3;
            do
            {
              if (*a4 <= v23)
              {
                v23 = sub_225EB68(a4, v23);
                v16 = *a1;
              }

              v24 = *(*(v16 + 8) + 8 * v17);
              *v23 = v19;
              if (v18 > 0x7F)
              {
                *v23 = v20;
                v23[1] = v22;
                v25 = v23 + 2;
                if (v18 >= 0x4000)
                {
                  LOBYTE(v26) = v23[1];
                  v27 = v21;
                  do
                  {
                    *(v25 - 1) = v26 | 0x80;
                    v26 = v27 >> 7;
                    *v25 = v27 >> 7;
                    v25 = (v25 + 1);
                    v28 = v27 >> 14;
                    v27 >>= 7;
                  }

                  while (v28);
                }
              }

              else
              {
                v25 = v23 + 1;
              }

              *v25 = v24;
              v5 = (v25 + 1);
              ++v17;
              v16 = *a1;
              v23 = v5;
            }

            while (v17 < **a1);
          }

          break;
        case 2:
          v216 = *a1;
          if (**a1 >= 1)
          {
            v217 = 0;
            v218 = 8 * a2;
            v219 = (8 * a2) | 5;
            v220 = (a2 >> 4) & 0x1FFFFFF;
            v221 = (8 * a2) >> 7;
            v222 = a3;
            v223 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v222)
              {
                v222 = sub_225EB68(a4, v222);
                v216 = *a1;
              }

              v224 = *(*(v216 + 8) + 4 * v217);
              *v222 = v219;
              if (v218 > 0x7F)
              {
                *v222 = v223;
                v222[1] = v221;
                v225 = v222 + 2;
                if (v218 >= 0x4000)
                {
                  LOBYTE(v226) = v222[1];
                  v227 = v220;
                  do
                  {
                    *(v225 - 1) = v226 | 0x80;
                    v226 = v227 >> 7;
                    *v225 = v227 >> 7;
                    v225 = (v225 + 1);
                    v228 = v227 >> 14;
                    v227 >>= 7;
                  }

                  while (v228);
                }
              }

              else
              {
                v225 = v222 + 1;
              }

              *v225 = v224;
              v5 = (v225 + 1);
              ++v217;
              v216 = *a1;
              v222 = v5;
            }

            while (v217 < **a1);
          }

          break;
        case 3:
          v152 = *a1;
          if (**a1 >= 1)
          {
            v153 = 0;
            v154 = 8 * a2;
            v155 = (8 * a2) | 0x80;
            v156 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v152 = *a1;
              }

              v157 = *(*(v152 + 8) + 8 * v153);
              *v5 = v154;
              if (v154 > 0x7F)
              {
                *v5 = v155;
                v5[1] = v154 >> 7;
                v158 = v5 + 2;
                if (v154 >= 0x4000)
                {
                  LOBYTE(v159) = v5[1];
                  v160 = v156;
                  do
                  {
                    *(v158 - 1) = v159 | 0x80;
                    v159 = v160 >> 7;
                    *v158++ = v160 >> 7;
                    v161 = v160 >> 14;
                    v160 >>= 7;
                  }

                  while (v161);
                }
              }

              else
              {
                v158 = v5 + 1;
              }

              *v158 = v157;
              if (v157 > 0x7F)
              {
                *v158 = v157 | 0x80;
                v162 = v157 >> 7;
                v158[1] = v157 >> 7;
                v5 = v158 + 2;
                if (v157 >= 0x4000)
                {
                  LOBYTE(v163) = v158[1];
                  do
                  {
                    *(v5 - 1) = v163 | 0x80;
                    v163 = v162 >> 7;
                    *v5++ = v162 >> 7;
                    v164 = v162 >> 14;
                    v162 >>= 7;
                  }

                  while (v164);
                }
              }

              else
              {
                v5 = v158 + 1;
              }

              ++v153;
              v152 = *a1;
            }

            while (v153 < **a1);
          }

          break;
        case 4:
          v184 = *a1;
          if (**a1 >= 1)
          {
            v185 = 0;
            v186 = 8 * a2;
            v187 = (8 * a2) | 0x80;
            v188 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v184 = *a1;
              }

              v189 = *(*(v184 + 8) + 8 * v185);
              *v5 = v186;
              if (v186 > 0x7F)
              {
                *v5 = v187;
                v5[1] = v186 >> 7;
                v190 = v5 + 2;
                if (v186 >= 0x4000)
                {
                  LOBYTE(v191) = v5[1];
                  v192 = v188;
                  do
                  {
                    *(v190 - 1) = v191 | 0x80;
                    v191 = v192 >> 7;
                    *v190++ = v192 >> 7;
                    v193 = v192 >> 14;
                    v192 >>= 7;
                  }

                  while (v193);
                }
              }

              else
              {
                v190 = v5 + 1;
              }

              *v190 = v189;
              if (v189 > 0x7F)
              {
                *v190 = v189 | 0x80;
                v194 = v189 >> 7;
                v190[1] = v189 >> 7;
                v5 = v190 + 2;
                if (v189 >= 0x4000)
                {
                  LOBYTE(v195) = v190[1];
                  do
                  {
                    *(v5 - 1) = v195 | 0x80;
                    v195 = v194 >> 7;
                    *v5++ = v194 >> 7;
                    v196 = v194 >> 14;
                    v194 >>= 7;
                  }

                  while (v196);
                }
              }

              else
              {
                v5 = v190 + 1;
              }

              ++v185;
              v184 = *a1;
            }

            while (v185 < **a1);
          }

          break;
        case 5:
          v101 = *a1;
          if (**a1 >= 1)
          {
            v102 = 0;
            v103 = 8 * a2;
            v104 = (8 * a2) | 0x80;
            v105 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v101 = *a1;
              }

              v106 = *(*(v101 + 8) + 4 * v102);
              *v5 = v103;
              if (v103 > 0x7F)
              {
                *v5 = v104;
                v5[1] = v103 >> 7;
                v107 = v5 + 2;
                if (v103 >= 0x4000)
                {
                  LOBYTE(v108) = v5[1];
                  v109 = v105;
                  do
                  {
                    *(v107 - 1) = v108 | 0x80;
                    v108 = v109 >> 7;
                    *v107++ = v109 >> 7;
                    v110 = v109 >> 14;
                    v109 >>= 7;
                  }

                  while (v110);
                }
              }

              else
              {
                v107 = v5 + 1;
              }

              *v107 = v106;
              if (v106 > 0x7F)
              {
                *v107 = v106 | 0x80;
                v111 = v106 >> 7;
                v107[1] = v106 >> 7;
                v5 = v107 + 2;
                if (v106 >= 0x4000)
                {
                  LOBYTE(v112) = v107[1];
                  do
                  {
                    *(v5 - 1) = v112 | 0x80;
                    v112 = v111 >> 7;
                    *v5++ = v111 >> 7;
                    v113 = v111 >> 14;
                    v111 >>= 7;
                  }

                  while (v113);
                }
              }

              else
              {
                v5 = v107 + 1;
              }

              ++v102;
              v101 = *a1;
            }

            while (v102 < **a1);
          }

          break;
        case 6:
          v246 = *a1;
          if (**a1 >= 1)
          {
            v247 = 0;
            v248 = 8 * a2;
            v249 = (8 * a2) | 1;
            v250 = (8 * a2) | 0x81;
            v251 = (a2 >> 4) & 0x1FFFFFF;
            v252 = (8 * a2) >> 7;
            v253 = a3;
            do
            {
              if (*a4 <= v253)
              {
                v253 = sub_225EB68(a4, v253);
                v246 = *a1;
              }

              v254 = *(*(v246 + 8) + 8 * v247);
              *v253 = v249;
              if (v248 > 0x7F)
              {
                *v253 = v250;
                v253[1] = v252;
                v255 = v253 + 2;
                if (v248 >= 0x4000)
                {
                  LOBYTE(v256) = v253[1];
                  v257 = v251;
                  do
                  {
                    *(v255 - 1) = v256 | 0x80;
                    v256 = v257 >> 7;
                    *v255 = v257 >> 7;
                    v255 = (v255 + 1);
                    v258 = v257 >> 14;
                    v257 >>= 7;
                  }

                  while (v258);
                }
              }

              else
              {
                v255 = v253 + 1;
              }

              *v255 = v254;
              v5 = (v255 + 1);
              ++v247;
              v246 = *a1;
              v253 = v5;
            }

            while (v247 < **a1);
          }

          break;
        case 7:
          v275 = *a1;
          if (**a1 >= 1)
          {
            v276 = 0;
            v277 = 8 * a2;
            v278 = (8 * a2) | 5;
            v279 = (a2 >> 4) & 0x1FFFFFF;
            v280 = (8 * a2) >> 7;
            v281 = a3;
            v282 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v281)
              {
                v281 = sub_225EB68(a4, v281);
                v275 = *a1;
              }

              v283 = *(*(v275 + 8) + 4 * v276);
              *v281 = v278;
              if (v277 > 0x7F)
              {
                *v281 = v282;
                v281[1] = v280;
                v284 = v281 + 2;
                if (v277 >= 0x4000)
                {
                  LOBYTE(v285) = v281[1];
                  v286 = v279;
                  do
                  {
                    *(v284 - 1) = v285 | 0x80;
                    v285 = v286 >> 7;
                    *v284 = v286 >> 7;
                    v284 = (v284 + 1);
                    v287 = v286 >> 14;
                    v286 >>= 7;
                  }

                  while (v287);
                }
              }

              else
              {
                v284 = v281 + 1;
              }

              *v284 = v283;
              v5 = (v284 + 1);
              ++v276;
              v275 = *a1;
              v281 = v5;
            }

            while (v276 < **a1);
          }

          break;
        case 8:
          v200 = *a1;
          if (**a1 >= 1)
          {
            v201 = 0;
            v202 = 8 * a2;
            v203 = (8 * a2) | 0x80;
            v204 = (a2 >> 4) & 0x1FFFFFF;
            v205 = (8 * a2) >> 7;
            v206 = a3;
            do
            {
              if (*a4 <= v206)
              {
                v206 = sub_225EB68(a4, v206);
                v200 = *a1;
              }

              v207 = *(*(v200 + 8) + v201);
              *v206 = v202;
              if (v202 > 0x7F)
              {
                *v206 = v203;
                v206[1] = v205;
                v208 = v206 + 2;
                if (v202 >= 0x4000)
                {
                  LOBYTE(v209) = v206[1];
                  v210 = v204;
                  do
                  {
                    *(v208 - 1) = v209 | 0x80;
                    v209 = v210 >> 7;
                    *v208++ = v210 >> 7;
                    v211 = v210 >> 14;
                    v210 >>= 7;
                  }

                  while (v211);
                }
              }

              else
              {
                v208 = v206 + 1;
              }

              *v208 = v207;
              v5 = v208 + 1;
              ++v201;
              v200 = *a1;
              v206 = v5;
            }

            while (v201 < **a1);
          }

          break;
        case 9:
          v313 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v314 = 0;
            v315 = 8 * a2;
            v316 = (8 * a2) | 2;
            v458 = (8 * a2) | 0x82;
            v317 = -3;
            if (8 * a2 < 0x80)
            {
              v317 = -2;
            }

            v318 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v318 = -5;
            }

            if (v315 < 0x200000)
            {
              v318 = -4;
            }

            v455 = (a2 >> 4) & 0x1FFFFFF;
            if (v315 >= 0x4000)
            {
              v319 = v318;
            }

            else
            {
              v319 = v317;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v313 = *a1;
              }

              v320 = *(*(v313 + 16) + 8 * v314 + 8);
              v321 = *(v320 + 23);
              if (v321 < 0 && (v321 = v320[1], v321 > 127) || *a4 + v319 - v5 + 16 < v321)
              {
                v5 = sub_1957480(a4, a2, v320, v5);
              }

              else
              {
                *v5 = v316;
                if (v315 > 0x7F)
                {
                  *v5 = v458;
                  v5[1] = v315 >> 7;
                  v322 = v5 + 2;
                  if (v315 >= 0x4000)
                  {
                    LOBYTE(v323) = v5[1];
                    v324 = v455;
                    do
                    {
                      *(v322 - 1) = v323 | 0x80;
                      v323 = v324 >> 7;
                      *v322++ = v324 >> 7;
                      v325 = v324 >> 14;
                      v324 >>= 7;
                    }

                    while (v325);
                  }
                }

                else
                {
                  v322 = v5 + 1;
                }

                *v322 = v321;
                v326 = v322 + 1;
                if (*(v320 + 23) < 0)
                {
                  v320 = *v320;
                }

                memcpy(v326, v320, v321);
                v5 = &v326[v321];
              }

              ++v314;
              v313 = *a1;
            }

            while (v314 < *(*a1 + 8));
          }

          break;
        case 0xA:
          v133 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v134 = 0;
            v135 = 8 * a2;
            v136 = (8 * a2) | 3;
            v457 = (8 * a2) | 0x83;
            v137 = (a2 >> 4) & 0x1FFFFFF;
            v138 = (8 * a2) | 4;
            v139 = (8 * a2) >> 7;
            v140 = (8 * a2) | 0x84;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v133 = *a1;
              }

              v141 = *(*(v133 + 16) + 8 * v134 + 8);
              *v5 = v136;
              if (v135 > 0x7F)
              {
                *v5 = v457;
                v5[1] = v139;
                v142 = v5 + 2;
                if (v135 >= 0x4000)
                {
                  LOBYTE(v143) = v5[1];
                  v144 = v137;
                  do
                  {
                    *(v142 - 1) = v143 | 0x80;
                    v143 = v144 >> 7;
                    *v142++ = v144 >> 7;
                    v145 = v144 >> 14;
                    v144 >>= 7;
                  }

                  while (v145);
                }
              }

              else
              {
                v142 = v5 + 1;
              }

              v146 = (*(*v141 + 96))(v141, v142, a4);
              if (*a4 <= v146)
              {
                v146 = sub_225EB68(a4, v146);
              }

              *v146 = v138;
              if (v135 > 0x7F)
              {
                *v146 = v140;
                v146[1] = v139;
                v5 = v146 + 2;
                if (v135 >= 0x4000)
                {
                  LOBYTE(v147) = v146[1];
                  v148 = v137;
                  do
                  {
                    *(v5 - 1) = v147 | 0x80;
                    v147 = v148 >> 7;
                    *v5++ = v148 >> 7;
                    v149 = v148 >> 14;
                    v148 >>= 7;
                  }

                  while (v149);
                }
              }

              else
              {
                v5 = v146 + 1;
              }

              ++v134;
              v133 = *a1;
            }

            while (v134 < *(*a1 + 8));
          }

          break;
        case 0xB:
          v291 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v292 = 0;
            v293 = 8 * a2;
            v294 = (8 * a2) | 2;
            v295 = (a2 >> 4) & 0x1FFFFFF;
            v296 = (8 * a2) | 0x82;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v291 = *a1;
              }

              v297 = *(*(v291 + 16) + 8 * v292 + 8);
              *v5 = v294;
              if (v293 > 0x7F)
              {
                *v5 = v296;
                v5[1] = v293 >> 7;
                v298 = v5 + 2;
                if (v293 >= 0x4000)
                {
                  LOBYTE(v299) = v5[1];
                  v300 = v295;
                  do
                  {
                    *(v298 - 1) = v299 | 0x80;
                    v299 = v300 >> 7;
                    *v298++ = v300 >> 7;
                    v301 = v300 >> 14;
                    v300 >>= 7;
                  }

                  while (v301);
                }
              }

              else
              {
                v298 = v5 + 1;
              }

              v302 = (*(*v297 + 80))(v297);
              *v298 = v302;
              if (v302 > 0x7F)
              {
                *v298 = v302 | 0x80;
                v304 = v302 >> 7;
                v298[1] = v302 >> 7;
                v303 = v298 + 2;
                if (v302 >= 0x4000)
                {
                  LOBYTE(v305) = v298[1];
                  do
                  {
                    *(v303 - 1) = v305 | 0x80;
                    v305 = v304 >> 7;
                    *v303++ = v304 >> 7;
                    v306 = v304 >> 14;
                    v304 >>= 7;
                  }

                  while (v306);
                }
              }

              else
              {
                v303 = v298 + 1;
              }

              v5 = (*(*v297 + 96))(v297, v303, a4);
              ++v292;
              v291 = *a1;
            }

            while (v292 < *(*a1 + 8));
          }

          break;
        case 0xC:
          v81 = *a1;
          if (*(*a1 + 8) >= 1)
          {
            v82 = 0;
            v83 = 8 * a2;
            v84 = (8 * a2) | 2;
            v456 = (8 * a2) | 0x82;
            v85 = -3;
            if (8 * a2 < 0x80)
            {
              v85 = -2;
            }

            v86 = -6;
            if (((a2 >> 25) & 0xF) == 0)
            {
              v86 = -5;
            }

            if (v83 < 0x200000)
            {
              v86 = -4;
            }

            v454 = (a2 >> 4) & 0x1FFFFFF;
            if (v83 >= 0x4000)
            {
              v87 = v86;
            }

            else
            {
              v87 = v85;
            }

            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v81 = *a1;
              }

              v88 = *(*(v81 + 16) + 8 * v82 + 8);
              v89 = *(v88 + 23);
              if (v89 < 0 && (v89 = v88[1], v89 > 127) || *a4 + v87 - v5 + 16 < v89)
              {
                v5 = sub_1957480(a4, a2, v88, v5);
              }

              else
              {
                *v5 = v84;
                if (v83 > 0x7F)
                {
                  *v5 = v456;
                  v5[1] = v83 >> 7;
                  v90 = v5 + 2;
                  if (v83 >= 0x4000)
                  {
                    LOBYTE(v91) = v5[1];
                    v92 = v454;
                    do
                    {
                      *(v90 - 1) = v91 | 0x80;
                      v91 = v92 >> 7;
                      *v90++ = v92 >> 7;
                      v93 = v92 >> 14;
                      v92 >>= 7;
                    }

                    while (v93);
                  }
                }

                else
                {
                  v90 = v5 + 1;
                }

                *v90 = v89;
                v94 = v90 + 1;
                if (*(v88 + 23) < 0)
                {
                  v88 = *v88;
                }

                memcpy(v94, v88, v89);
                v5 = &v94[v89];
              }

              ++v82;
              v81 = *a1;
            }

            while (v82 < *(*a1 + 8));
          }

          break;
        case 0xD:
          v117 = *a1;
          if (**a1 >= 1)
          {
            v118 = 0;
            v119 = 8 * a2;
            v120 = (8 * a2) | 0x80;
            v121 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v117 = *a1;
              }

              v122 = *(*(v117 + 8) + 4 * v118);
              *v5 = v119;
              if (v119 > 0x7F)
              {
                *v5 = v120;
                v5[1] = v119 >> 7;
                v123 = v5 + 2;
                if (v119 >= 0x4000)
                {
                  LOBYTE(v124) = v5[1];
                  v125 = v121;
                  do
                  {
                    *(v123 - 1) = v124 | 0x80;
                    v124 = v125 >> 7;
                    *v123++ = v125 >> 7;
                    v126 = v125 >> 14;
                    v125 >>= 7;
                  }

                  while (v126);
                }
              }

              else
              {
                v123 = v5 + 1;
              }

              *v123 = v122;
              if (v122 > 0x7F)
              {
                *v123 = v122 | 0x80;
                v127 = v122 >> 7;
                v123[1] = v122 >> 7;
                v5 = v123 + 2;
                if (v122 >= 0x4000)
                {
                  LOBYTE(v128) = v123[1];
                  do
                  {
                    *(v5 - 1) = v128 | 0x80;
                    v128 = v127 >> 7;
                    *v5++ = v127 >> 7;
                    v129 = v127 >> 14;
                    v127 >>= 7;
                  }

                  while (v129);
                }
              }

              else
              {
                v5 = v123 + 1;
              }

              ++v118;
              v117 = *a1;
            }

            while (v118 < **a1);
          }

          break;
        case 0xE:
          v261 = *a1;
          if (**a1 >= 1)
          {
            v262 = 0;
            v263 = 8 * a2;
            v264 = (8 * a2) | 0x80;
            v265 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v261 = *a1;
              }

              v266 = *(*(v261 + 8) + 4 * v262);
              *v5 = v263;
              if (v263 > 0x7F)
              {
                *v5 = v264;
                v5[1] = v263 >> 7;
                v267 = v5 + 2;
                if (v263 >= 0x4000)
                {
                  LOBYTE(v268) = v5[1];
                  v269 = v265;
                  do
                  {
                    *(v267 - 1) = v268 | 0x80;
                    v268 = v269 >> 7;
                    *v267++ = v269 >> 7;
                    v270 = v269 >> 14;
                    v269 >>= 7;
                  }

                  while (v270);
                }
              }

              else
              {
                v267 = v5 + 1;
              }

              *v267 = v266;
              if (v266 > 0x7F)
              {
                *v267 = v266 | 0x80;
                v271 = v266 >> 7;
                v267[1] = v266 >> 7;
                v5 = v267 + 2;
                if (v266 >= 0x4000)
                {
                  LOBYTE(v272) = v267[1];
                  do
                  {
                    *(v5 - 1) = v272 | 0x80;
                    v272 = v271 >> 7;
                    *v5++ = v271 >> 7;
                    v273 = v271 >> 14;
                    v271 >>= 7;
                  }

                  while (v273);
                }
              }

              else
              {
                v5 = v267 + 1;
              }

              ++v262;
              v261 = *a1;
            }

            while (v262 < **a1);
          }

          break;
        case 0xF:
          v57 = *a1;
          if (**a1 >= 1)
          {
            v58 = 0;
            v59 = 8 * a2;
            v60 = (8 * a2) | 5;
            v61 = (a2 >> 4) & 0x1FFFFFF;
            v62 = (8 * a2) >> 7;
            v63 = a3;
            v64 = (8 * a2) | 0x85;
            do
            {
              if (*a4 <= v63)
              {
                v63 = sub_225EB68(a4, v63);
                v57 = *a1;
              }

              v65 = *(*(v57 + 8) + 4 * v58);
              *v63 = v60;
              if (v59 > 0x7F)
              {
                *v63 = v64;
                v63[1] = v62;
                v66 = v63 + 2;
                if (v59 >= 0x4000)
                {
                  LOBYTE(v67) = v63[1];
                  v68 = v61;
                  do
                  {
                    *(v66 - 1) = v67 | 0x80;
                    v67 = v68 >> 7;
                    *v66 = v68 >> 7;
                    v66 = (v66 + 1);
                    v69 = v68 >> 14;
                    v68 >>= 7;
                  }

                  while (v69);
                }
              }

              else
              {
                v66 = v63 + 1;
              }

              *v66 = v65;
              v5 = (v66 + 1);
              ++v58;
              v57 = *a1;
              v63 = v5;
            }

            while (v58 < **a1);
          }

          break;
        case 0x10:
          v169 = *a1;
          if (**a1 >= 1)
          {
            v170 = 0;
            v171 = 8 * a2;
            v172 = (8 * a2) | 1;
            v173 = (8 * a2) | 0x81;
            v174 = (a2 >> 4) & 0x1FFFFFF;
            v175 = (8 * a2) >> 7;
            v176 = a3;
            do
            {
              if (*a4 <= v176)
              {
                v176 = sub_225EB68(a4, v176);
                v169 = *a1;
              }

              v177 = *(*(v169 + 8) + 8 * v170);
              *v176 = v172;
              if (v171 > 0x7F)
              {
                *v176 = v173;
                v176[1] = v175;
                v178 = v176 + 2;
                if (v171 >= 0x4000)
                {
                  LOBYTE(v179) = v176[1];
                  v180 = v174;
                  do
                  {
                    *(v178 - 1) = v179 | 0x80;
                    v179 = v180 >> 7;
                    *v178 = v180 >> 7;
                    v178 = (v178 + 1);
                    v181 = v180 >> 14;
                    v180 >>= 7;
                  }

                  while (v181);
                }
              }

              else
              {
                v178 = v176 + 1;
              }

              *v178 = v177;
              v5 = (v178 + 1);
              ++v170;
              v169 = *a1;
              v176 = v5;
            }

            while (v170 < **a1);
          }

          break;
        case 0x11:
          v38 = *a1;
          if (**a1 >= 1)
          {
            v39 = 0;
            v40 = 8 * a2;
            v41 = (8 * a2) | 0x80;
            v42 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v38 = *a1;
              }

              v43 = *(*(v38 + 8) + 4 * v39);
              *v5 = v40;
              if (v40 > 0x7F)
              {
                *v5 = v41;
                v5[1] = v40 >> 7;
                v44 = v5 + 2;
                if (v40 >= 0x4000)
                {
                  LOBYTE(v45) = v5[1];
                  v46 = v42;
                  do
                  {
                    *(v44 - 1) = v45 | 0x80;
                    v45 = v46 >> 7;
                    *v44++ = v46 >> 7;
                    v47 = v46 >> 14;
                    v46 >>= 7;
                  }

                  while (v47);
                }
              }

              else
              {
                v44 = v5 + 1;
              }

              v48 = (2 * v43) ^ (v43 >> 31);
              *v44 = (2 * v43) ^ (v43 >> 31);
              if (v48 > 0x7F)
              {
                *v44 = v48 | 0x80;
                v49 = v48 >> 7;
                v44[1] = v48 >> 7;
                v5 = v44 + 2;
                if (v48 >= 0x4000)
                {
                  LOBYTE(v44) = v44[1];
                  do
                  {
                    *(v5 - 1) = v44 | 0x80;
                    LODWORD(v44) = v49 >> 7;
                    *v5++ = v49 >> 7;
                    v50 = v49 >> 14;
                    v49 >>= 7;
                  }

                  while (v50);
                }
              }

              else
              {
                v5 = v44 + 1;
              }

              ++v39;
              v38 = *a1;
            }

            while (v39 < **a1);
          }

          break;
        case 0x12:
          v231 = *a1;
          if (**a1 >= 1)
          {
            v232 = 0;
            v233 = 8 * a2;
            v234 = (8 * a2) | 0x80;
            v235 = (a2 >> 4) & 0x1FFFFFF;
            do
            {
              if (*a4 <= v5)
              {
                v5 = sub_225EB68(a4, v5);
                v231 = *a1;
              }

              v236 = *(*(v231 + 8) + 8 * v232);
              *v5 = v233;
              if (v233 > 0x7F)
              {
                *v5 = v234;
                v5[1] = v233 >> 7;
                v237 = v5 + 2;
                if (v233 >= 0x4000)
                {
                  LOBYTE(v238) = v5[1];
                  v239 = v235;
                  do
                  {
                    *(v237 - 1) = v238 | 0x80;
                    v238 = v239 >> 7;
                    *v237++ = v239 >> 7;
                    v240 = v239 >> 14;
                    v239 >>= 7;
                  }

                  while (v240);
                }
              }

              else
              {
                v237 = v5 + 1;
              }

              v241 = (2 * v236) ^ (v236 >> 63);
              *v237 = v241;
              if (v241 > 0x7F)
              {
                *v237 = v241 | 0x80;
                v242 = v241 >> 7;
                v237[1] = v241 >> 7;
                v5 = v237 + 2;
                if (v241 >= 0x4000)
                {
                  LOBYTE(v237) = v237[1];
                  do
                  {
                    *(v5 - 1) = v237 | 0x80;
                    v237 = (v242 >> 7);
                    *v5++ = v242 >> 7;
                    v243 = v242 >> 14;
                    v242 >>= 7;
                  }

                  while (v243);
                }
              }

              else
              {
                v5 = v237 + 1;
              }

              ++v232;
              v231 = *a1;
            }

            while (v232 < **a1);
          }

          break;
        default:
          return v5;
      }
    }
  }

  else if ((a1[10] & 1) == 0)
  {
    switch(a1[8])
    {
      case 1:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v10 = *a1;
        v11 = 8 * a2;
        *v5 = (8 * a2) | 1;
        if (8 * a2 <= 0x7F)
        {
          goto LABEL_301;
        }

        *v5 = v11 | 0x81;
        v12 = v11 >> 7;
        v5[1] = v11 >> 7;
        v13 = v5 + 2;
        if (v11 >= 0x4000)
        {
          LOBYTE(v14) = v5[1];
          do
          {
            *(v13 - 1) = v14 | 0x80;
            v14 = v12 >> 7;
            *v13++ = v12 >> 7;
            v15 = v12 >> 14;
            v12 >>= 7;
          }

          while (v15);
        }

        goto LABEL_302;
      case 2:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v51 = *a1;
        v212 = 8 * a2;
        *v5 = (8 * a2) | 5;
        if (8 * a2 <= 0x7F)
        {
          goto LABEL_340;
        }

        *v5 = v212 | 0x85;
        v213 = v212 >> 7;
        v5[1] = v212 >> 7;
        v54 = v5 + 2;
        if (v212 >= 0x4000)
        {
          LOBYTE(v214) = v5[1];
          do
          {
            *(v54 - 1) = v214 | 0x80;
            v214 = v213 >> 7;
            *v54++ = v213 >> 7;
            v215 = v213 >> 14;
            v213 >>= 7;
          }

          while (v215);
        }

        goto LABEL_341;
      case 3:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v150 = *a1;
        v151 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v151 | 0x80;
          v411 = v151 >> 7;
          v5[1] = v151 >> 7;
          v116 = v5 + 2;
          if (v151 >= 0x4000)
          {
            LOBYTE(v412) = v5[1];
            do
            {
              *(v116 - 1) = v412 | 0x80;
              v412 = v411 >> 7;
              *v116++ = v411 >> 7;
              v413 = v411 >> 14;
              v411 >>= 7;
            }

            while (v413);
          }
        }

        else
        {
          v116 = v5 + 1;
        }

        *v116 = v150;
        if (v150 <= 0x7F)
        {
          return v116 + 1;
        }

        *v116 = v150 | 0x80;
        v414 = v150 >> 7;
        v116[1] = v150 >> 7;
        v5 = v116 + 2;
        if (v150 >= 0x4000)
        {
          LOBYTE(v415) = v116[1];
          do
          {
            *(v5 - 1) = v415 | 0x80;
            v415 = v414 >> 7;
            *v5++ = v414 >> 7;
            v416 = v414 >> 14;
            v414 >>= 7;
          }

          while (v416);
        }

        return v5;
      case 4:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v182 = *a1;
        v183 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v183 | 0x80;
          v417 = v183 >> 7;
          v5[1] = v183 >> 7;
          v116 = v5 + 2;
          if (v183 >= 0x4000)
          {
            LOBYTE(v418) = v5[1];
            do
            {
              *(v116 - 1) = v418 | 0x80;
              v418 = v417 >> 7;
              *v116++ = v417 >> 7;
              v419 = v417 >> 14;
              v417 >>= 7;
            }

            while (v419);
          }
        }

        else
        {
          v116 = v5 + 1;
        }

        *v116 = v182;
        if (v182 <= 0x7F)
        {
          return v116 + 1;
        }

        *v116 = v182 | 0x80;
        v420 = v182 >> 7;
        v116[1] = v182 >> 7;
        v5 = v116 + 2;
        if (v182 >= 0x4000)
        {
          LOBYTE(v421) = v116[1];
          do
          {
            *(v5 - 1) = v421 | 0x80;
            v421 = v420 >> 7;
            *v5++ = v420 >> 7;
            v422 = v420 >> 14;
            v420 >>= 7;
          }

          while (v422);
        }

        return v5;
      case 5:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v95 = *a1;
        v96 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 <= 0x7F)
        {
          goto LABEL_317;
        }

        *v5 = v96 | 0x80;
        v97 = v96 >> 7;
        v5[1] = v96 >> 7;
        v98 = v5 + 2;
        if (v96 >= 0x4000)
        {
          LOBYTE(v99) = v5[1];
          do
          {
            *(v98 - 1) = v99 | 0x80;
            v99 = v97 >> 7;
            *v98++ = v97 >> 7;
            v100 = v97 >> 14;
            v97 >>= 7;
          }

          while (v100);
        }

        goto LABEL_318;
      case 6:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v10 = *a1;
        v244 = 8 * a2;
        *v5 = (8 * a2) | 1;
        if (8 * a2 <= 0x7F)
        {
          goto LABEL_301;
        }

        *v5 = v244 | 0x81;
        v432 = v244 >> 7;
        v5[1] = v244 >> 7;
        v13 = v5 + 2;
        if (v244 >= 0x4000)
        {
          LOBYTE(v433) = v5[1];
          do
          {
            *(v13 - 1) = v433 | 0x80;
            v433 = v432 >> 7;
            *v13++ = v432 >> 7;
            v434 = v432 >> 14;
            v432 >>= 7;
          }

          while (v434);
        }

        goto LABEL_302;
      case 7:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v51 = *a1;
        v274 = 8 * a2;
        *v5 = (8 * a2) | 5;
        if (8 * a2 <= 0x7F)
        {
          goto LABEL_340;
        }

        *v5 = v274 | 0x85;
        v438 = v274 >> 7;
        v5[1] = v274 >> 7;
        v54 = v5 + 2;
        if (v274 >= 0x4000)
        {
          LOBYTE(v439) = v5[1];
          do
          {
            *(v54 - 1) = v439 | 0x80;
            v439 = v438 >> 7;
            *v54++ = v438 >> 7;
            v440 = v438 >> 14;
            v438 >>= 7;
          }

          while (v440);
        }

        goto LABEL_341;
      case 8:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v197 = *a1;
        v198 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v198 | 0x80;
          v423 = v198 >> 7;
          v5[1] = v198 >> 7;
          v199 = v5 + 2;
          if (v198 >= 0x4000)
          {
            LOBYTE(v424) = v5[1];
            do
            {
              *(v199 - 1) = v424 | 0x80;
              v424 = v423 >> 7;
              *v199++ = v423 >> 7;
              v425 = v423 >> 14;
              v423 >>= 7;
            }

            while (v425);
          }
        }

        else
        {
          v199 = v5 + 1;
        }

        *v199 = v197;
        return v199 + 1;
      case 9:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v70 = *a1;
        v71 = *(*a1 + 23);
        if (v71 < 0)
        {
          v71 = v70[1];
          if (v71 > 127)
          {
            goto LABEL_626;
          }
        }

        v307 = 8 * a2;
        v308 = 1;
        v309 = 2;
        v310 = 3;
        v311 = 4;
        if ((8 * a2) >> 28)
        {
          v311 = 5;
        }

        if (v307 >= 0x200000)
        {
          v310 = v311;
        }

        if (v307 >= 0x4000)
        {
          v309 = v310;
        }

        if (v307 >= 0x80)
        {
          v308 = v309;
        }

        if ((*a4 + ~&v5[v308] + 16) < v71)
        {
          goto LABEL_626;
        }

        *v5 = v307 | 2;
        if (v307 <= 0x7F)
        {
          goto LABEL_388;
        }

        *v5 = v307 | 0x82;
        v442 = v307 >> 7;
        v5[1] = v307 >> 7;
        v78 = v5 + 2;
        if (v307 >= 0x4000)
        {
          LOBYTE(v443) = v5[1];
          do
          {
            *(v78 - 1) = v443 | 0x80;
            v443 = v442 >> 7;
            *v78++ = v442 >> 7;
            v444 = v442 >> 14;
            v442 >>= 7;
          }

          while (v444);
        }

        goto LABEL_389;
      case 0xA:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v130 = *a1;
        v131 = 8 * a2;
        *v5 = (8 * a2) | 3;
        if (8 * a2 > 0x7F)
        {
          *v5 = v131 | 0x83;
          v404 = v131 >> 7;
          v5[1] = v131 >> 7;
          v132 = v5 + 2;
          if (v131 >= 0x4000)
          {
            LOBYTE(v405) = v5[1];
            do
            {
              *(v132 - 1) = v405 | 0x80;
              v405 = v404 >> 7;
              *v132++ = v404 >> 7;
              v406 = v404 >> 14;
              v404 >>= 7;
            }

            while (v406);
          }
        }

        else
        {
          v132 = v5 + 1;
        }

        v407 = (*(*v130 + 96))(v130, v132, a4);
        if (*a4 <= v407)
        {
          v407 = sub_225EB68(a4, v407);
        }

        *v407 = v131 | 4;
        if (v131 <= 0x7F)
        {
          return v407 + 1;
        }

        *v407 = v131 | 0x84;
        v408 = v131 >> 7;
        v407[1] = v131 >> 7;
        v5 = v407 + 2;
        if (v131 >= 0x4000)
        {
          LOBYTE(v409) = v407[1];
          do
          {
            *(v5 - 1) = v409 | 0x80;
            v409 = v408 >> 7;
            *v5++ = v408 >> 7;
            v410 = v408 >> 14;
            v408 >>= 7;
          }

          while (v410);
        }

        return v5;
      case 0xB:
        if ((a1[10] & 0x10) != 0)
        {
          v441 = *(**a1 + 136);

          return v441();
        }

        else
        {
          if (*a4 <= a3)
          {
            v5 = sub_225EB68(a4, a3);
          }

          v288 = *a1;
          v289 = 8 * a2;
          *v5 = (8 * a2) | 2;
          if (8 * a2 > 0x7F)
          {
            *v5 = v289 | 0x82;
            v445 = v289 >> 7;
            v5[1] = v289 >> 7;
            v290 = v5 + 2;
            if (v289 >= 0x4000)
            {
              LOBYTE(v446) = v5[1];
              do
              {
                *(v290 - 1) = v446 | 0x80;
                v446 = v445 >> 7;
                *v290++ = v445 >> 7;
                v447 = v445 >> 14;
                v445 >>= 7;
              }

              while (v447);
            }
          }

          else
          {
            v290 = v5 + 1;
          }

          v448 = (*(*v288 + 80))(v288);
          *v290 = v448;
          if (v448 > 0x7F)
          {
            *v290 = v448 | 0x80;
            v450 = v448 >> 7;
            v290[1] = v448 >> 7;
            v449 = v290 + 2;
            if (v448 >= 0x4000)
            {
              LOBYTE(v451) = v290[1];
              do
              {
                *(v449 - 1) = v451 | 0x80;
                v451 = v450 >> 7;
                *v449++ = v450 >> 7;
                v452 = v450 >> 14;
                v450 >>= 7;
              }

              while (v452);
            }
          }

          else
          {
            v449 = v290 + 1;
          }

          v453 = *(*v288 + 96);

          return v453(v288, v449, a4);
        }

      case 0xC:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v70 = *a1;
        v71 = *(*a1 + 23);
        if (v71 < 0)
        {
          v71 = v70[1];
          if (v71 > 127)
          {
            goto LABEL_626;
          }
        }

        v72 = 8 * a2;
        v73 = 1;
        v74 = 2;
        v75 = 3;
        v76 = 4;
        if ((8 * a2) >> 28)
        {
          v76 = 5;
        }

        if (v72 >= 0x200000)
        {
          v75 = v76;
        }

        if (v72 >= 0x4000)
        {
          v74 = v75;
        }

        if (v72 >= 0x80)
        {
          v73 = v74;
        }

        if ((*a4 + ~&v5[v73] + 16) < v71)
        {
LABEL_626:

          return sub_1957480(a4, a2, v70, v5);
        }

        *v5 = v72 | 2;
        if (v72 <= 0x7F)
        {
LABEL_388:
          v78 = v5 + 1;
        }

        else
        {
          *v5 = v72 | 0x82;
          v77 = v72 >> 7;
          v5[1] = v72 >> 7;
          v78 = v5 + 2;
          if (v72 >= 0x4000)
          {
            LOBYTE(v79) = v5[1];
            do
            {
              *(v78 - 1) = v79 | 0x80;
              v79 = v77 >> 7;
              *v78++ = v77 >> 7;
              v80 = v77 >> 14;
              v77 >>= 7;
            }

            while (v80);
          }
        }

LABEL_389:
        *v78 = v71;
        v312 = v78 + 1;
        if (*(v70 + 23) < 0)
        {
          v70 = *v70;
        }

        memcpy(v312, v70, v71);
        v5 = &v312[v71];
        break;
      case 0xD:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v114 = *a1;
        v115 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v115 | 0x80;
          v398 = v115 >> 7;
          v5[1] = v115 >> 7;
          v116 = v5 + 2;
          if (v115 >= 0x4000)
          {
            LOBYTE(v399) = v5[1];
            do
            {
              *(v116 - 1) = v399 | 0x80;
              v399 = v398 >> 7;
              *v116++ = v398 >> 7;
              v400 = v398 >> 14;
              v398 >>= 7;
            }

            while (v400);
          }
        }

        else
        {
          v116 = v5 + 1;
        }

        *v116 = v114;
        if (v114 <= 0x7F)
        {
          return v116 + 1;
        }

        *v116 = v114 | 0x80;
        v401 = v114 >> 7;
        v116[1] = v114 >> 7;
        v5 = v116 + 2;
        if (v114 >= 0x4000)
        {
          LOBYTE(v402) = v116[1];
          do
          {
            *(v5 - 1) = v402 | 0x80;
            v402 = v401 >> 7;
            *v5++ = v401 >> 7;
            v403 = v401 >> 14;
            v401 >>= 7;
          }

          while (v403);
        }

        return v5;
      case 0xE:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v95 = *a1;
        v259 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v259 | 0x80;
          v435 = v259 >> 7;
          v5[1] = v259 >> 7;
          v98 = v5 + 2;
          if (v259 >= 0x4000)
          {
            LOBYTE(v436) = v5[1];
            do
            {
              *(v98 - 1) = v436 | 0x80;
              v436 = v435 >> 7;
              *v98++ = v435 >> 7;
              v437 = v435 >> 14;
              v435 >>= 7;
            }

            while (v437);
          }
        }

        else
        {
LABEL_317:
          v98 = v5 + 1;
        }

LABEL_318:

        return sub_195A17C(v95, v98);
      case 0xF:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v51 = *a1;
        v52 = 8 * a2;
        *v5 = (8 * a2) | 5;
        if (8 * a2 <= 0x7F)
        {
LABEL_340:
          v54 = v5 + 1;
        }

        else
        {
          *v5 = v52 | 0x85;
          v53 = v52 >> 7;
          v5[1] = v52 >> 7;
          v54 = v5 + 2;
          if (v52 >= 0x4000)
          {
            LOBYTE(v55) = v5[1];
            do
            {
              *(v54 - 1) = v55 | 0x80;
              v55 = v53 >> 7;
              *v54++ = v53 >> 7;
              v56 = v53 >> 14;
              v53 >>= 7;
            }

            while (v56);
          }
        }

LABEL_341:
        *v54 = v51;
        return v54 + 4;
      case 0x10:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v10 = *a1;
        v165 = 8 * a2;
        *v5 = (8 * a2) | 1;
        if (8 * a2 <= 0x7F)
        {
LABEL_301:
          v13 = v5 + 1;
        }

        else
        {
          *v5 = v165 | 0x81;
          v166 = v165 >> 7;
          v5[1] = v165 >> 7;
          v13 = v5 + 2;
          if (v165 >= 0x4000)
          {
            LOBYTE(v167) = v5[1];
            do
            {
              *(v13 - 1) = v167 | 0x80;
              v167 = v166 >> 7;
              *v13++ = v166 >> 7;
              v168 = v166 >> 14;
              v166 >>= 7;
            }

            while (v168);
          }
        }

LABEL_302:
        *v13 = v10;
        return v13 + 8;
      case 0x11:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v35 = *a1;
        v36 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v36 | 0x80;
          v392 = v36 >> 7;
          v5[1] = v36 >> 7;
          v37 = v5 + 2;
          if (v36 >= 0x4000)
          {
            LOBYTE(v393) = v5[1];
            do
            {
              *(v37 - 1) = v393 | 0x80;
              v393 = v392 >> 7;
              *v37++ = v392 >> 7;
              v394 = v392 >> 14;
              v392 >>= 7;
            }

            while (v394);
          }
        }

        else
        {
          v37 = v5 + 1;
        }

        v395 = (2 * v35) ^ (v35 >> 31);
        *v37 = (2 * v35) ^ (v35 >> 31);
        if (v395 <= 0x7F)
        {
          return v37 + 1;
        }

        *v37 = v395 | 0x80;
        v396 = v395 >> 7;
        v37[1] = v395 >> 7;
        v5 = v37 + 2;
        if (v395 >= 0x4000)
        {
          LOBYTE(v37) = v37[1];
          do
          {
            *(v5 - 1) = v37 | 0x80;
            LODWORD(v37) = v396 >> 7;
            *v5++ = v396 >> 7;
            v397 = v396 >> 14;
            v396 >>= 7;
          }

          while (v397);
        }

        return v5;
      case 0x12:
        if (*a4 <= a3)
        {
          v5 = sub_225EB68(a4, a3);
        }

        v229 = *a1;
        v230 = 8 * a2;
        *v5 = 8 * a2;
        if (8 * a2 > 0x7F)
        {
          *v5 = v230 | 0x80;
          v426 = v230 >> 7;
          v5[1] = v230 >> 7;
          v37 = v5 + 2;
          if (v230 >= 0x4000)
          {
            LOBYTE(v427) = v5[1];
            do
            {
              *(v37 - 1) = v427 | 0x80;
              v427 = v426 >> 7;
              *v37++ = v426 >> 7;
              v428 = v426 >> 14;
              v426 >>= 7;
            }

            while (v428);
          }
        }

        else
        {
          v37 = v5 + 1;
        }

        v429 = (2 * v229) ^ (v229 >> 63);
        *v37 = v429;
        if (v429 <= 0x7F)
        {
          return v37 + 1;
        }

        *v37 = v429 | 0x80;
        v430 = v429 >> 7;
        v37[1] = v429 >> 7;
        v5 = v37 + 2;
        if (v429 >= 0x4000)
        {
          LOBYTE(v37) = v37[1];
          do
          {
            *(v5 - 1) = v37 | 0x80;
            v37 = (v430 >> 7);
            *v5++ = v430 >> 7;
            v431 = v430 >> 14;
            v430 >>= 7;
          }

          while (v431);
        }

        return v5;
      default:
        return v5;
    }
  }

  return v5;
}

void sub_1955EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1955FBC(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_195AF20(*v1, v1 + 1, &v7);
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
      v2 += sub_195606C(v1 + 8, v5);
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

unint64_t sub_195606C(_BYTE *a1, int a2)
{
  if (a1[9] == 1)
  {
    if (a1[11] == 1)
    {
      switch(a1[8])
      {
        case 1:
        case 6:
        case 0x10:
          v6 = 8 * **a1;
          goto LABEL_110;
        case 2:
        case 7:
        case 0xF:
          v6 = 4 * **a1;
          goto LABEL_110;
        case 3:
          v67 = **a1;
          if (v67 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v68 = *(*a1 + 8);
          do
          {
            v69 = *v68++;
            v6 += (9 * (__clz(v69 | 1) ^ 0x3F) + 73) >> 6;
            --v67;
          }

          while (v67);
          goto LABEL_110;
        case 4:
          v70 = **a1;
          if (v70 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v71 = *(*a1 + 8);
          do
          {
            v72 = *v71++;
            v6 += (9 * (__clz(v72 | 1) ^ 0x3F) + 73) >> 6;
            --v70;
          }

          while (v70);
          goto LABEL_110;
        case 5:
          v50 = **a1;
          if (v50 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v51 = *(*a1 + 8);
          do
          {
            v53 = *v51++;
            v52 = v53;
            if (v53 < 0)
            {
              v54 = 10;
            }

            else
            {
              v54 = (9 * (__clz(v52 | 1) ^ 0x1F) + 73) >> 6;
            }

            v6 += v54;
            --v50;
          }

          while (v50);
          goto LABEL_110;
        case 8:
          v6 = **a1;
          goto LABEL_110;
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
          LODWORD(v85[0]) = 3;
          v85[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/extension_set.cc";
          v86 = 1618;
          memset(&__p, 0, sizeof(__p));
          std::string::append(&__p, "Non-primitive types can't be packed.", 0x24uLL);
          sub_1959854(v85);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          goto LABEL_113;
        case 0xD:
          v18 = **a1;
          if (v18 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v19 = *(*a1 + 8);
          do
          {
            v20 = *v19++;
            v6 += (9 * (__clz(v20 | 1) ^ 0x1F) + 73) >> 6;
            --v18;
          }

          while (v18);
          goto LABEL_110;
        case 0xE:
          v35 = **a1;
          if (v35 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v36 = *(*a1 + 8);
          do
          {
            v38 = *v36++;
            v37 = v38;
            if (v38 < 0)
            {
              v39 = 10;
            }

            else
            {
              v39 = (9 * (__clz(v37 | 1) ^ 0x1F) + 73) >> 6;
            }

            v6 += v39;
            --v35;
          }

          while (v35);
          goto LABEL_110;
        case 0x11:
          v11 = **a1;
          if (v11 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v12 = *(*a1 + 8);
          do
          {
            v13 = *v12++;
            v6 += (9 * (__clz((2 * v13) ^ (v13 >> 31) | 1) ^ 0x1F) + 73) >> 6;
            --v11;
          }

          while (v11);
          goto LABEL_110;
        case 0x12:
          v55 = **a1;
          if (v55 < 1)
          {
            goto LABEL_113;
          }

          v6 = 0;
          v56 = *(*a1 + 8);
          do
          {
            v57 = *v56++;
            v6 += (9 * (__clz((2 * v57) ^ (v57 >> 63) | 1) ^ 0x3F) + 73) >> 6;
            --v55;
          }

          while (v55);
LABEL_110:
          *(a1 + 3) = v6;
          v73 = v6 + ((9 * (__clz((8 * a2) | 3) ^ 0x1F) + 73) >> 6) + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6);
          if (v6)
          {
            v3 = v73;
          }

          else
          {
            v3 = 0;
          }

          break;
        default:
LABEL_113:
          v3 = 0;
          *(a1 + 3) = 0;
          break;
      }
    }

    else
    {
      v4 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (a1[8] == 10);
      switch(a1[8])
      {
        case 1:
        case 6:
        case 0x10:
          v5 = v4 + 8;
          goto LABEL_13;
        case 2:
        case 7:
        case 0xF:
          v5 = v4 + 4;
LABEL_13:
          v3 = v5 * **a1;
          break;
        case 3:
          v61 = **a1;
          v3 = v4 * v61;
          if (v61 >= 1)
          {
            v62 = *(*a1 + 8);
            do
            {
              v63 = *v62++;
              v3 += (9 * (__clz(v63 | 1) ^ 0x3F) + 73) >> 6;
              --v61;
            }

            while (v61);
          }

          break;
        case 4:
          v64 = **a1;
          v3 = v4 * v64;
          if (v64 >= 1)
          {
            v65 = *(*a1 + 8);
            do
            {
              v66 = *v65++;
              v3 += (9 * (__clz(v66 | 1) ^ 0x3F) + 73) >> 6;
              --v64;
            }

            while (v64);
          }

          break;
        case 5:
          v45 = **a1;
          v3 = v4 * v45;
          if (v45 >= 1)
          {
            v46 = *(*a1 + 8);
            do
            {
              v48 = *v46++;
              v47 = v48;
              if (v48 < 0)
              {
                v49 = 10;
              }

              else
              {
                v49 = (9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6;
              }

              v3 += v49;
              --v45;
            }

            while (v45);
          }

          break;
        case 8:
          v3 = **a1 + **a1 * v4;
          break;
        case 9:
          v80 = *(*a1 + 8);
          v3 = v4 * v80;
          if (v80 >= 1)
          {
            v81 = (*(*a1 + 16) + 8);
            do
            {
              v82 = *v81++;
              v83 = *(v82 + 23);
              v84 = *(v82 + 8);
              if ((v83 & 0x80u) == 0)
              {
                v84 = v83;
              }

              v3 += v84 + ((9 * (__clz(v84 | 1) ^ 0x1F) + 73) >> 6);
              --v80;
            }

            while (v80);
          }

          break;
        case 0xA:
          v24 = *a1;
          v25 = *(*a1 + 8);
          v3 = v4 * v25;
          if (v25 >= 1)
          {
            v26 = 0;
            do
            {
              v27 = *(*(v24 + 16) + 8 * v26 + 8);
              v3 += (*(*v27 + 72))(v27);
              ++v26;
              v24 = *a1;
            }

            while (v26 < *(*a1 + 8));
          }

          break;
        case 0xB:
          v30 = *a1;
          v31 = *(*a1 + 8);
          v3 = v4 * v31;
          if (v31 >= 1)
          {
            v32 = 0;
            do
            {
              v33 = *(*(v30 + 16) + 8 * v32 + 8);
              v34 = (*(*v33 + 72))(v33);
              v3 += v34 + ((9 * (__clz(v34 | 1) ^ 0x1F) + 73) >> 6);
              ++v32;
              v30 = *a1;
            }

            while (v32 < *(*a1 + 8));
          }

          break;
        case 0xC:
          v75 = *(*a1 + 8);
          v3 = v4 * v75;
          if (v75 >= 1)
          {
            v76 = (*(*a1 + 16) + 8);
            do
            {
              v77 = *v76++;
              v78 = *(v77 + 23);
              v79 = *(v77 + 8);
              if ((v78 & 0x80u) == 0)
              {
                v79 = v78;
              }

              v3 += v79 + ((9 * (__clz(v79 | 1) ^ 0x1F) + 73) >> 6);
              --v75;
            }

            while (v75);
          }

          break;
        case 0xD:
          v21 = **a1;
          v3 = v4 * v21;
          if (v21 >= 1)
          {
            v22 = *(*a1 + 8);
            do
            {
              v23 = *v22++;
              v3 += (9 * (__clz(v23 | 1) ^ 0x1F) + 73) >> 6;
              --v21;
            }

            while (v21);
          }

          break;
        case 0xE:
          v40 = **a1;
          v3 = v4 * v40;
          if (v40 >= 1)
          {
            v41 = *(*a1 + 8);
            do
            {
              v43 = *v41++;
              v42 = v43;
              if (v43 < 0)
              {
                v44 = 10;
              }

              else
              {
                v44 = (9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6;
              }

              v3 += v44;
              --v40;
            }

            while (v40);
          }

          break;
        case 0x11:
          v14 = **a1;
          v3 = v4 * v14;
          if (v14 >= 1)
          {
            v15 = *(*a1 + 8);
            do
            {
              v16 = *v15++;
              v3 += (9 * (__clz((2 * v16) ^ (v16 >> 31) | 1) ^ 0x1F) + 73) >> 6;
              --v14;
            }

            while (v14);
          }

          break;
        case 0x12:
          v58 = **a1;
          v3 = v4 * v58;
          if (v58 >= 1)
          {
            v59 = *(*a1 + 8);
            do
            {
              v60 = *v59++;
              v3 += (9 * (__clz((2 * v60) ^ (v60 >> 63) | 1) ^ 0x3F) + 73) >> 6;
              --v58;
            }

            while (v58);
          }

          break;
        default:
          return 0;
      }
    }
  }

  else if (a1[10])
  {
    return 0;
  }

  else
  {
    v3 = ((9 * (__clz((8 * a2) | 1) ^ 0x1F) + 73) >> 6) << (a1[8] == 10);
    switch(a1[8])
    {
      case 1:
      case 6:
      case 0x10:
        v3 += 8;
        return v3;
      case 2:
      case 7:
      case 0xF:
        v3 += 4;
        return v3;
      case 3:
      case 4:
        v7 = *a1;
        goto LABEL_94;
      case 5:
      case 0xE:
        v8 = (9 * (__clz(*a1 | 1) ^ 0x1F) + 73) >> 6;
        if (*a1 >= 0)
        {
          v9 = v8;
        }

        else
        {
          v9 = 10;
        }

        v3 += v9;
        return v3;
      case 8:
        return ++v3;
      case 9:
      case 0xC:
        v10 = *(*a1 + 8);
        if (*(*a1 + 23) >= 0)
        {
          v10 = *(*a1 + 23);
        }

        v3 += v10 + ((9 * (__clz(v10 | 1) ^ 0x1F) + 73) >> 6);
        return v3;
      case 0xA:
        v3 += (*(**a1 + 72))();
        return v3;
      case 0xB:
        v28 = **a1;
        if ((a1[10] & 0x10) != 0)
        {
          v29 = (*(v28 + 88))();
        }

        else
        {
          v29 = (*(v28 + 72))();
        }

        v3 += v29 + ((9 * (__clz(v29 | 1) ^ 0x1F) + 73) >> 6);
        return v3;
      case 0xD:
        v17 = *a1;
        goto LABEL_70;
      case 0x11:
        v17 = (2 * *a1) ^ (*a1 >> 31);
LABEL_70:
        v3 += (9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6;
        break;
      case 0x12:
        v7 = (2 * *a1) ^ (*a1 >> 63);
LABEL_94:
        v3 += (9 * (__clz(v7 | 1) ^ 0x3F) + 73) >> 6;
        break;
      default:
        return v3;
    }
  }

  return v3;
}

void sub_19569C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1956ABC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = *(a1 + 8);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1956B30(uint64_t a1, int *a2, unint64_t a3, int a4)
{
  v4 = &a2[a3];
  v5 = a2;
  if (a3)
  {
    v5 = a2;
    do
    {
      v6 = &v5[a3 >> 1];
      v7 = a4;
      if (*v6 != -1)
      {
        v7 = *(a1 + 24 * *v6 + 16);
      }

      v8 = v6 + 1;
      if (v7 >= a4)
      {
        a3 >>= 1;
      }

      else
      {
        a3 += ~(a3 >> 1);
      }

      if (v7 < a4)
      {
        v5 = v8;
      }
    }

    while (a3);
  }

  if (v5 == v4 || *(a1 + 24 * *v5 + 16) != a4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v5 - a2) >> 2;
  }
}

uint64_t sub_1956BB4(uint64_t a1, int *a2, uint64_t a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v8 = *a2++;
      sub_19594D4(a1 + 24 * v8, a4);
      sub_1957F6C(sub_1956C38, a4);
      a4 += 24;
      --v5;
    }

    while (v5);
  }

  return 1;
}

void sub_1956C38(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1956C4C()
{
  if ((atomic_load_explicit(&qword_27ECB10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27ECB10))
  {
    qword_278E990 = 0;
    *algn_278E998 = 0;
    qword_278E9A0 = 0;
    sub_1957F6C(sub_1956C38, &qword_278E990);
    atomic_store(1u, byte_278E9A8);

    __cxa_guard_release(&qword_27ECB10);
  }
}

std::string *sub_1956D0C(std::string *a1, unsigned int a2)
{
  v2 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v4 = v8;
    v7 = 45;
    v2 = -v2;
  }

  else
  {
    v4 = &v7;
  }

  v6 = sub_1959B30(v2, v4) - &v7;
  std::string::append(a1 + 1, &v7, v6);
  return a1;
}

uint64_t sub_1956DC4(uint64_t a1, uint64_t a2)
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

uint64_t sub_1956F58(uint64_t a1, char *a2)
{
  v4 = (a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (!v6)
    {
      result = v7 - a2 + 16;
      *(a1 + 8) = a2;
      return result;
    }

    v8 = a2 - v7;
    if (a2 <= v7)
    {
      memcpy(v6, v4, a2 - v4);
      v12 = *a1;
      *(a1 + 8) += a2 - v4;
      return v12 - a2;
    }

    if (!*(a1 + 48))
    {
      break;
    }

    memcpy(v6, v4, v7 - v4);
    v15 = 0;
    do
    {
      v14 = 0;
      if (((*(**(a1 + 48) + 16))(*(a1 + 48), &v14, &v15) & 1) == 0)
      {
        *(a1 + 56) = 1;
        *a1 = v5;
        goto LABEL_13;
      }

      v9 = v15;
    }

    while (!v15);
    v10 = v14;
    v11 = *a1;
    if (v15 >= 17)
    {
      *v14 = *v11;
      *a1 = v10 + v9 - 16;
      *(a1 + 8) = 0;
      goto LABEL_10;
    }

    *v4 = *v11;
    *a1 = v4 + v9;
    *(a1 + 8) = v10;
LABEL_13:
    v10 = v4;
LABEL_10:
    a2 = v10 + v8;
    if (*(a1 + 56))
    {
      return 0;
    }
  }

  result = 0;
  *(a1 + 56) = 1;
  *a1 = v5;
  return result;
}

char *sub_19570AC(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_1956F58(a1, a2);
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

char *sub_1957130(_DWORD *a1, char *__src, int a3, char *__dst)
{
  v4 = __dst;
  v5 = a3;
  v7 = *a1 - __dst + 16;
  if (v7 < a3)
  {
    do
    {
      memcpy(v4, __src, v7);
      v5 -= v7;
      __src += v7;
      v4 = sub_225EB68(a1, v4 + v7);
      v7 = *a1 - v4 + 16;
    }

    while (v5 > v7);
  }

  memcpy(v4, __src, v5);
  return &v4[v5];
}

char *sub_19571D0(uint64_t a1, void *__src, uint64_t a3, char *__dst)
{
  v8 = *a1 - __dst;
  if (v8 + 16 <= a3)
  {
    v9 = sub_19570AC(a1, __dst);
    if (((*(**(a1 + 48) + 40))(*(a1 + 48), __src, a3) & 1) == 0)
    {
      *(a1 + 56) = 1;
      v9 = (a1 + 16);
      *a1 = a1 + 32;
    }

    return v9;
  }

  if (v8 >= a3)
  {
    memcpy(__dst, __src, a3);
    return &__dst[a3];
  }

  return sub_1957130(a1, __src, a3, __dst);
}

char *sub_19572D4(void *a1, int a2, void **a3, char *a4)
{
  v4 = a4;
  if (*a1 <= a4)
  {
    v4 = sub_225EB68(a1, a4);
  }

  if (*(a3 + 23) >= 0)
  {
    v8 = *(a3 + 23);
  }

  else
  {
    v8 = *(a3 + 2);
  }

  v9 = 8 * a2;
  *v4 = (8 * a2) | 2;
  if ((8 * a2) > 0x7F)
  {
    *v4 = v9 | 0x82;
    v11 = v9 >> 7;
    v4[1] = v9 >> 7;
    v10 = v4 + 2;
    if (v9 >= 0x4000)
    {
      LOBYTE(v4) = v4[1];
      do
      {
        *(v10 - 1) = v4 | 0x80;
        LODWORD(v4) = v11 >> 7;
        *v10++ = v11 >> 7;
        v12 = v11 >> 14;
        v11 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v10 = v4 + 1;
  }

  if (v8 >= 0x80)
  {
    v17 = v8;
    do
    {
      *v10++ = v17 | 0x80;
      v13 = v17 >> 7;
      v18 = v17 >> 14;
      v17 >>= 7;
    }

    while (v18);
  }

  else
  {
    LOBYTE(v13) = v8;
  }

  *v10 = v13;
  v14 = v10 + 1;
  if (*(a3 + 23) >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  return sub_19573F0(a1, v15, v8, v14);
}

char *sub_19573F0(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_19571D0(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_1957130(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_1957480(_DWORD *a1, int a2, uint64_t a3, char *a4)
{
  if (*a1 <= a4)
  {
    a4 = sub_225EB68(a1, a4);
  }

  if (*(a3 + 23) >= 0)
  {
    LODWORD(v7) = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  v8 = 8 * a2;
  *a4 = (8 * a2) | 2;
  if ((8 * a2) > 0x7F)
  {
    *a4 = v8 | 0x82;
    v10 = v8 >> 7;
    a4[1] = v8 >> 7;
    v9 = a4 + 2;
    if (v8 >= 0x4000)
    {
      LOBYTE(v11) = a4[1];
      do
      {
        *(v9 - 1) = v11 | 0x80;
        v11 = v10 >> 7;
        *v9++ = v10 >> 7;
        v12 = v10 >> 14;
        v10 >>= 7;
      }

      while (v12);
    }
  }

  else
  {
    v9 = a4 + 1;
  }

  if (v7 >= 0x80)
  {
    v18 = v7;
    do
    {
      *v9++ = v18 | 0x80;
      v13 = v18 >> 7;
      v19 = v18 >> 14;
      v18 >>= 7;
    }

    while (v19);
  }

  else
  {
    LOBYTE(v13) = v7;
  }

  *v9 = v13;
  v14 = v9 + 1;
  if (*(a3 + 23) >= 0)
  {
    v15 = a3;
  }

  else
  {
    v15 = *a3;
  }

  if (*a1 - v14 < v7)
  {

    return sub_1957130(a1, v15, v7, v14);
  }

  else
  {
    v16 = v7;
    memcpy(v14, v15, v7);
    return &v14[v16];
  }
}

_BYTE *sub_19575D0(unsigned int a1, _BYTE *a2)
{
  *a2 |= 0x80u;
  v3 = a1 >> 7;
  a2[1] = a1 >> 7;
  result = a2 + 2;
  if (a1 >= 0x4000)
  {
    LOBYTE(v5) = a2[1];
    do
    {
      *(result - 1) = v5 | 0x80;
      v5 = v3 >> 7;
      *result++ = v3 >> 7;
      v6 = v3 >> 14;
      v3 >>= 7;
    }

    while (v6);
  }

  return result;
}

void sub_1957658(unint64_t a1@<X0>, std::string *a2@<X8>)
{
  v2 = 0;
  v6[0] = "MessageLite at 0x";
  v6[1] = 17;
  v3 = a1 | 1;
  do
  {
    *(&v5[5] + v2 + 7) = a0123456789abcd[a1 & 0xF];
    a1 >>= 4;
    --v2;
    v4 = v3 > 0xF;
    v3 >>= 4;
  }

  while (v4);
  v5[0] = &v5[6] + v2;
  v5[1] = -v2;
  sub_194D93C(v6, v5, a2);
}

void sub_1957728(uint64_t a1)
{
  LODWORD(v9[0]) = 2;
  v9[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/message_lite.cc";
  v10 = 133;
  memset(&v11, 0, sizeof(v11));
  memset(&__p, 0, sizeof(__p));
  std::string::append(&__p, "Can't ", 6uLL);
  std::string::append(&__p, "parse", 5uLL);
  std::string::append(&__p, " message of type ", 0x12uLL);
  (*(*a1 + 16))(&v12, a1);
  if ((v14 & 0x80u) == 0)
  {
    v2 = &v12;
  }

  else
  {
    v2 = v12;
  }

  if ((v14 & 0x80u) == 0)
  {
    v3 = v14;
  }

  else
  {
    v3 = v13;
  }

  std::string::append(&__p, v2, v3);
  if (v14 < 0)
  {
    operator delete(v12);
  }

  std::string::append(&__p, " because it is missing required fields: ", 0x29uLL);
  (*(*a1 + 56))(&v12, a1);
  if ((v14 & 0x80u) == 0)
  {
    v4 = &v12;
  }

  else
  {
    v4 = v12;
  }

  if ((v14 & 0x80u) == 0)
  {
    v5 = v14;
  }

  else
  {
    v5 = v13;
  }

  std::string::append(&__p, v4, v5);
  if (v14 < 0)
  {
    operator delete(v12);
  }

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
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  std::string::append(&v11, p_p, size);
  sub_1959854(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_19578D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1957934(uint64_t a1, void *a2)
{
  v3 = (*(*a1 + 24))(a1);
  v4 = v3;
  if (a2 && v3)
  {
    sub_194E338(a2, v3, sub_195A8EC);
  }

  return v4;
}

BOOL sub_19579C0(uint64_t a1, std::string *a2)
{
  v2 = a2;
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
    LODWORD(v13[0]) = 2;
    v13[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/message_lite.cc";
    v14 = 457;
    memset(&v15, 0, sizeof(v15));
    (*(*a1 + 16))(__p, a1);
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = __p[1];
    }

    std::string::append(&v15, v8, v9);
    std::string::append(&v15, " exceeded maximum protobuf size of 2GB: ", 0x28uLL);
    __s = v18;
    v17 = sub_1959CD8(v6, v18) - v18;
    std::string::append(&v15, __s, v17);
    sub_1959854(v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    std::string::resize(v2, v5 + size, 0);
    if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
    {
      v2 = v2->__r_.__value_.__r.__words[0];
    }

    __s = v2 + size + v6;
    v17 = 0;
    v19 = 0;
    v20 = 0;
    v21 = byte_278E9E0 & 1;
    (*(*a1 + 96))(a1);
  }

  return v7 == 0;
}

void sub_1957BC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1957C08(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*a1 + 72))(a1);
  v7 = v6;
  if (v6 >> 31)
  {
    LODWORD(v13[0]) = 2;
    v13[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/message_lite.cc";
    v14 = 487;
    memset(&v15, 0, sizeof(v15));
    (*(*a1 + 16))(__p, a1);
    if ((v12 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v12 & 0x80u) == 0)
    {
      v9 = v12;
    }

    else
    {
      v9 = __p[1];
    }

    std::string::append(&v15, v8, v9);
    std::string::append(&v15, " exceeded maximum protobuf size of 2GB: ", 0x28uLL);
    __s = v18;
    v17 = sub_1959CD8(v7, v18) - v18;
    std::string::append(&v15, __s, v17);
    sub_1959854(v13);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  if (v6 > a3)
  {
    return 0;
  }

  __s = (a2 + v6);
  v17 = 0;
  v19 = 0;
  v20 = 0;
  v21 = byte_278E9E0 & 1;
  (*(*a1 + 96))(a1, a2, &__s);
  return 1;
}

BOOL sub_1957E24@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_19579C0(a1, a2);
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

void sub_1957E78(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1957EA8(uint64_t *a1)
{
  if (*a1)
  {
    result = (*a1 & 0xFFFFFFFFFFFFFFFCLL) + 8;
  }

  else
  {
    result = sub_11F1920(a1);
  }

  if (*(result + 23) < 0)
  {
    **result = 0;
    *(result + 8) = 0;
  }

  else
  {
    *result = 0;
    *(result + 23) = 0;
  }

  return result;
}

std::string *sub_1957EF4(uint64_t *a1, uint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFCLL) + 8);
  }

  else
  {
    v3 = sub_11F1920(a1);
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  return std::string::append(v3, v5, v6);
}

void sub_1957F6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_195807C();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1794();
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
      sub_195A1E4(v4, v11);
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

uint64_t sub_195807C()
{
  if ((atomic_load_explicit(&qword_278C178, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_278C178))
  {
    operator new();
  }

  return qword_278C170;
}

_OWORD *sub_1958134(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    if (v2 == (a1 + 40))
    {
      *v3 = **(a1 + 8);
      if (*(a1 + 84) < 1)
      {
LABEL_15:
        if (*(a1 + 72) == 2)
        {
          *(a1 + 72) = *(a1 + 8) - v2;
        }

        v4 = a1 + 56;
        *(a1 + 8) = a1 + 56;
        *(a1 + 16) = 0;
        *(a1 + 24) = 0;
      }

      else
      {
        __src = 0;
        while (1)
        {
          if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
          {
            *(a1 + 84) = 0;
            goto LABEL_15;
          }

          v5 = *(a1 + 24);
          *(a1 + 84) -= v5;
          if (v5 >= 17)
          {
            break;
          }

          if (v5 >= 1)
          {
            memcpy((a1 + 56), __src, v5);
            v6 = (a1 + 72);
            v7 = *(a1 + 72);
            v4 = v3 + v5;
            *(a1 + 8) = v3 + v5;
            *(a1 + 16) = v3;
            if (v7 < 2)
            {
              goto LABEL_20;
            }

            goto LABEL_19;
          }
        }

        v6 = (a1 + 72);
        v8 = *(a1 + 72);
        v4 = a1 + 56;
        v9 = __src;
        *(a1 + 56) = *__src;
        *(a1 + 8) = a1 + 56;
        *(a1 + 16) = v9;
        if (v8 <= 1)
        {
          goto LABEL_20;
        }

LABEL_19:
        *v6 = 1;
      }
    }

    else
    {
      v4 = v2 + *(a1 + 24) - 16;
      *(a1 + 8) = v4;
      *(a1 + 16) = v3;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 2;
      }

      v3 = v2;
    }

LABEL_20:
    v10 = *(a1 + 28) + v3 - v4;
    *(a1 + 28) = v10;
    *a1 = v4 + (v10 & (v10 >> 31));
  }

  else
  {
    v3 = 0;
    *a1 = *(a1 + 8);
    *(a1 + 80) = 1;
  }

  return v3;
}

_OWORD *sub_19582D0(uint64_t a1, int a2, int a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0;
  }

  v5 = (a1 + 40);
  if (v3 == a1 + 40)
  {
    *v5 = **(a1 + 8);
    if (*(a1 + 84) < 1)
    {
LABEL_46:
      if (*(a1 + 72) == 2)
      {
        *(a1 + 72) = *(a1 + 8) - v3;
      }

      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = 0;
      *(a1 + 24) = 0;
    }

    else
    {
      v6 = a3;
      if ((a3 & 0x80000000) == 0 && a2 <= 15)
      {
        v7 = a1 + 56;
        v8 = v5 + a2;
        v9 = v8;
        do
        {
          v10 = *v9++;
          v11 = v10;
          if (v10 < 0)
          {
            v11 = v11 + (*v9 << 7) - 128;
            if (*v9 < 0)
            {
              v9 = v8 + 3;
              v16 = -21;
              while (1)
              {
                v11 += (*(v9 - 1) - 1) << (v16 + 35);
                if ((*(v9 - 1) & 0x80000000) == 0)
                {
                  break;
                }

                ++v9;
                v16 += 7;
                if (!v16)
                {
                  goto LABEL_39;
                }
              }
            }

            else
            {
              v9 = v8 + 2;
            }
          }

          if (v9 > v7)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_46;
          }

          v12 = v11 & 7;
          if (v12 > 2)
          {
            switch(v12)
            {
              case 3:
                ++v6;
                break;
              case 4:
                v15 = __OFSUB__(v6--, 1);
                if (v6 < 0 != v15)
                {
                  goto LABEL_46;
                }

                break;
              case 5:
                v9 += 4;
                break;
              default:
                goto LABEL_39;
            }
          }

          else if (v12)
          {
            if (v12 == 1)
            {
              v9 += 8;
            }

            else
            {
              v13 = *v9;
              if (*v9 < 0)
              {
                v14 = sub_225F208(v9, v13);
                if (!v14)
                {
                  break;
                }
              }

              else
              {
                v14 = (v9 + 1);
              }

              if ((v7 - v14) < v13)
              {
                break;
              }

              v9 = (v14 + v13);
            }
          }

          else
          {
            __src = 0;
            v9 = sub_1216520(v9, &__src);
            if (!v9)
            {
              break;
            }
          }

          v8 = v9;
        }

        while (v9 < v7);
      }

LABEL_39:
      __src = 0;
      while (1)
      {
        if (!(*(**(a1 + 32) + 16))(*(a1 + 32), &__src, a1 + 24))
        {
          *(a1 + 84) = 0;
          goto LABEL_46;
        }

        v17 = *(a1 + 24);
        *(a1 + 84) -= v17;
        if (v17 >= 17)
        {
          break;
        }

        if (v17 >= 1)
        {
          memcpy((a1 + 56), __src, v17);
          v19 = *(a1 + 72);
          v18 = (a1 + 72);
          *(v18 - 8) = v5 + v17;
          *(v18 - 7) = v5;
          if (v19 < 2)
          {
            return v5;
          }

          goto LABEL_50;
        }
      }

      v20 = *(a1 + 72);
      v18 = (a1 + 72);
      v21 = __src;
      *(v18 - 1) = *__src;
      *(v18 - 8) = v18 - 2;
      *(v18 - 7) = v21;
      if (v20 <= 1)
      {
        return v5;
      }

LABEL_50:
      *v18 = 1;
    }
  }

  else
  {
    *(a1 + 8) = v3 + *(a1 + 24) - 16;
    *(a1 + 16) = v5;
    if (*(a1 + 72) == 1)
    {
      *(a1 + 72) = 2;
    }

    return v3;
  }

  return v5;
}

_OWORD *sub_195857C(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (*(a1 + 16) && *(a1 + 28) >= 17)
  {
    result = sub_1958134(a1);
    if (!result)
    {
      return result;
    }

    a3 -= v5;
    v5 = *(a1 + 8) - result;
    if (a3 <= v5)
    {
      return (result + a3 + 16);
    }
  }

  return 0;
}

uint64_t sub_1958620(uint64_t a1, unsigned __int8 *a2, _DWORD *a3)
{
  v6 = *a2;
  v7 = *a2;
  if (v6 < 0)
  {
    result = sub_225F208(a2, v7);
    if (!result)
    {
      *a3 = 0;
      return result;
    }
  }

  else
  {
    result = (a2 + 1);
  }

  v9 = *(a1 + 8);
  v10 = v7 + result - v9;
  *a1 = v9 + (v10 & (v10 >> 31));
  LODWORD(v9) = *(a1 + 28);
  *(a1 + 28) = v10;
  *a3 = v9 - v10;
  LODWORD(v9) = *(a1 + 88);
  v11 = __OFSUB__(v9, 1);
  LODWORD(v9) = v9 - 1;
  *(a1 + 88) = v9;
  if (v9 < 0 != v11)
  {
    return 0;
  }

  return result;
}

void sub_19586BC(int a1, unint64_t a2, std::string *this)
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

uint64_t sub_1958770(uint64_t a1, int a2)
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

uint64_t sub_19587DC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1958824(uint64_t a1, int a2)
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

const std::string::value_type *sub_1958890(std::string *__dst, unsigned __int8 *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_225F208(a2, *a2);
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

  return sub_194ECB8(a3, v6, v5, __dst);
}

char *sub_195898C(unsigned int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_225F208(a2, *a2);
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

  return sub_195C3A0(a3, v6, v5, a1);
}

char *sub_1958A24(unsigned int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_225F208(a2, *a2);
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

  return sub_195C4B0(a3, v6, v5, a1);
}

char *sub_1958AB8(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_195ADC0(a3, &v10, *(a3 + 92)))
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

    v10 = sub_1958BA4(v6, a1);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

uint64_t sub_1958BA4(unint64_t a1, std::string *a2, int *a3, int32x2_t *a4)
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
        LODWORD(v10[0]) = 3;
        v10[1] = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/parse_context.h";
        v11 = 820;
        memset(&__p, 0, sizeof(__p));
        std::string::append(&__p, "Can't happen", 0xCuLL);
        sub_1959854(v10);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_195CA04(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_195C8D8(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v10[0] = 0;
    result = sub_1216520(a3, v10);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_195C5D0(a2, v4, v10[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_195C698(a2, v4, *a3);
    return v5;
  }

  result = sub_195C758(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_1958D08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1958D44(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = v4 - 1;
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  if (v4)
  {
  }

  else
  {
    v8 = operator new(v6 + 8);
  }

  *v8 = v4;
  v9 = v8 + 1;
  a1[1] = v6;
  *(a1 + 1) = v9;
  v10 = *a1;
  if (v10 >= 1)
  {
    memcpy(v9, v5 + 1, v10);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_1958E5C(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = v4 - 1;
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 4 * v6;
  if (v4)
  {
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 4 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

uint64_t sub_1958F70(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    LODWORD(v5) = 3;
    v6 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/repeated_field.h";
    v7 = 1337;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (index) >= (0): ", 0x1EuLL);
    sub_1959854(&v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  if (*a1 <= a2)
  {
    LODWORD(v5) = 3;
    v6 = "/Library/Caches/com.apple.xbs/Sources/MapsOfflineServices/submodules/offline-geo-protobuf-internal/submodules/protobuf-mirror/src/google/protobuf/repeated_field.h";
    v7 = 1338;
    memset(&__p, 0, sizeof(__p));
    std::string::append(&__p, "CHECK failed: (index) < (current_size_): ", 0x29uLL);
    sub_1959854(&v5);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  return *(a1 + 8) + 4 * a2;
}

void sub_195905C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1959094(unsigned int *a1, int a2)
{
  v2 = a1[1];
  if (v2 >= a2)
  {
    return;
  }

  if (v2 < 1)
  {
    v4 = *(a1 + 1);
    v5 = 0;
    if (!v2)
    {
      if (a2 < 4)
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 1);
    v5 = v4 - 1;
  }

  v4 = *(v4 - 1);
  if (a2 < 4)
  {
LABEL_6:
    v6 = 4;
    goto LABEL_13;
  }

  if (v2 > 0x3FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    goto LABEL_13;
  }

LABEL_10:
  v7 = 2 * v2;
  if (v7 <= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v7;
  }

LABEL_13:
  v8 = 8 * v6;
  if (v4)
  {
  }

  else
  {
    v9 = operator new(v8 + 8);
  }

  *v9 = v4;
  v10 = v9 + 1;
  a1[1] = v6;
  *(a1 + 1) = v10;
  v11 = *a1;
  if (v11 >= 1)
  {
    memcpy(v10, v5 + 1, 8 * v11);
  }

  if (v5 && !*v5)
  {

    operator delete(v5);
  }
}

void sub_19591B0(void *a1)
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

          operator delete();
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