void *sub_10004B7D0(void *a1, uint64_t a2)
{
  v4 = sub_10004B420();
  v5 = sub_10004B844(a2, v4, a1);
  v5[4] = 0;
  *a1 = v5;
  a1[2] = *(a2 + 16);
  sub_10004B420()[2] = v5;
  v6 = a1[3];
  result = sub_10004B420();
  result[1] = v6;
  atomic_store(v5, a1 + 1);
  return result;
}

void *sub_10004B844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  v7 = v6 + 72;
  if (v6 + 72 > *(a1 + 16))
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 398);
    v8 = sub_10004FD04(v13, "CHECK failed: (pos + ArenaImpl::kSerialArenaSize) <= (b->size()): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = sub_10004B6D8(a1, v6);
  *(a1 + 8) = v7;
  *v9 = a3;
  v9[1] = a2;
  v9[2] = a1;
  v9[5] = sub_10004B6D8(a1, v7);
  v10 = sub_10004B6D8(a1, *(a1 + 16));
  v9[3] = 0;
  v9[7] = 0;
  v9[8] = 0;
  v9[6] = v10;
  return v9;
}

void sub_10004B918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10004B930(uint64_t *a1)
{
  for (i = *a1; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      sub_10004C488(i);
    }
  }

  v3 = a1[4];
  if (v3)
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
  }

  else
  {
    v5 = operator delete;
    v4 = 0;
  }

  v6 = *a1;
  while (v6)
  {
    v7 = *(v6 + 16);
    v6 = *(v6 + 32);
    if (v7)
    {
      do
      {
        v8 = *v7;
        if ((*v7 & 2) == 0)
        {
          (v5)(v7, v7[2]);
        }

        v7 = (v8 & 0xFFFFFFFFFFFFFFFCLL);
      }

      while ((v8 & 0xFFFFFFFFFFFFFFFCLL) != 0);
    }
  }

  if (v4)
  {
    (*(*v4 + 16))(v4, a1[2]);
  }

  return a1;
}

uint64_t *sub_10004BA14(uint64_t *result)
{
  for (i = *result; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      result = sub_10004C488(i);
    }
  }

  return result;
}

uint64_t sub_10004BA70(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      (*(*v3 + 24))(v3, *(a1 + 16));
    }
  }

  for (i = *a1; i; i = *(i + 32))
  {
    if (*(i + 24))
    {
      sub_10004C488(i);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = operator delete;
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(v7 + 16);
      v7 = *(v7 + 32);
      if (v10)
      {
        do
        {
          v11 = *v10;
          v12 = v10[2];
          if (*v10)
          {
            if (v9)
            {
              sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 217);
              v13 = sub_10004FD04(v19, "CHECK failed: special_block == nullptr: ");
              sub_10004FE40(&v18, &v13->__r_.__value_.__l.__data_);
              sub_10004FE48(v19);
            }

            v9 = v10;
          }

          else
          {
            (v6)(v10, v10[2]);
          }

          v8 += v12;
          v10 = (v11 & 0xFFFFFFFFFFFFFFFCLL);
        }

        while ((v11 & 0xFFFFFFFFFFFFFFFCLL) != 0);
      }
    }

    while (v7);
  }

  else
  {
    v8 = 0;
    v9 = 0;
  }

  sub_10004B768(a1, *(a1 + 24) & 1);
  if (v9)
  {
    v14 = *v9;
    if (*v9 >= 4)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 226);
      v15 = sub_10004FD04(v19, "CHECK failed: (special_block->next()) == (nullptr): ");
      sub_10004FE40(&v18, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
      v14 = *v9;
    }

    *v9 = v14 & 3;
    v16 = 64;
    if (!*(a1 + 32))
    {
      v16 = 24;
    }

    v9[1] = v16;
    sub_10004B7D0(a1, v9);
  }

  return v8;
}

void sub_10004BC60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10004BC80(uint64_t a1, uint64_t a2, unint64_t a3)
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
    sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arena.cc", 245);
    v8 = sub_10004FD04(v12, "CHECK failed: (min_bytes) <= (std::numeric_limits<size_t>::max() - kBlockHeaderSize): ");
    sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v12);
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

void sub_10004BD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10004BD84(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = -1;
  }

  v7 = sub_10004BC80(a3, v6, a2);

  return sub_10004C598(v7, v8, a1, 0, 0);
}

void *sub_10004BDE0(uint64_t *a1, uint64_t a2, uint64_t a3)
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

    result = sub_10004BE7C(a1, (16 * v7 + 23) & 0xFF0);
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

unint64_t sub_10004BE7C(uint64_t *a1, unint64_t a2)
{
  if (((a2 + 7) & 0xFFFFFFFFFFFFFFF8) != a2)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 159);
    v4 = sub_10004FD04(v9, "CHECK failed: (internal::AlignUpTo8(n)) == (n): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  result = a1[5];
  v6 = a1[6];
  if (v6 < result)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 160);
    v7 = sub_10004FD04(v9, "CHECK failed: (limit_) >= (ptr_): ");
    sub_10004FE40(&v8, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
    result = a1[5];
    v6 = a1[6];
  }

  if (v6 - result < a2)
  {
    return sub_10004C344(a1, a2);
  }

  a1[5] = result + a2;
  return result;
}

void sub_10004BF64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10004BF84(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10004B420();
  if (v6[1] == a1[3])
  {
    explicit = v6[2];
    goto LABEL_3;
  }

  v9 = sub_10004B420();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v9)
  {
LABEL_3:

    return sub_10004C030(explicit, a2, a3);
  }

  return sub_10004C090(a1, a2, a3);
}

unint64_t sub_10004C030(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_10004BE7C(a1, a2);
  v6 = v5;
  v7 = a1[7];
  if (v7 == a1[8])
  {
    sub_10004BDE0(a1, v5, a3);
  }

  else
  {
    *v7 = v5;
    v7[1] = a3;
    a1[7] = (v7 + 2);
  }

  return v6;
}

unint64_t sub_10004C090(void *a1, unint64_t a2, uint64_t a3)
{
  v6 = sub_10004B420();
  v7 = sub_10004C27C(a1, v6);

  return sub_10004C030(v7, a2, a3);
}

uint64_t *sub_10004C0E8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B420();
  if (v6[1] == a1[3])
  {
    result = v6[2];
    goto LABEL_3;
  }

  v9 = sub_10004B420();
  result = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (result && result[1] == v9)
  {
LABEL_3:
    v8 = result[7];
    if (v8 == result[8])
    {

      return sub_10004BDE0(result, a2, a3);
    }

    else
    {
      *v8 = a2;
      v8[1] = a3;
      result[7] = (v8 + 2);
    }

    return result;
  }

  return sub_10004C1B8(a1, a2, a3);
}

uint64_t *sub_10004C1B8(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10004B420();
  result = sub_10004C27C(a1, v6);
  v8 = result[7];
  if (v8 == result[8])
  {

    return sub_10004BDE0(result, a2, a3);
  }

  else
  {
    *v8 = a2;
    v8[1] = a3;
    result[7] = (v8 + 2);
  }

  return result;
}

unint64_t sub_10004C234(void *a1, unint64_t a2)
{
  v4 = sub_10004B420();
  v5 = sub_10004C27C(a1, v4);

  return sub_10004BE7C(v5, a2);
}

unint64_t sub_10004C27C(void *a1, uint64_t a2)
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
    v5 = sub_10004BC80(a1, -1, 0x48uLL);
    *v5 = xmmword_1000915E0;
    v5[2] = v6;
    v7 = sub_10004B844(v5, a2, a1);
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

  sub_10004B420()[2] = explicit;
  v12 = a1[3];
  sub_10004B420()[1] = v12;
  atomic_store(explicit, a1 + 1);
  return explicit;
}

uint64_t sub_10004C344(uint64_t *a1, unint64_t a2)
{
  v4 = a1[2];
  *(v4 + 8) = *(v4 + 16) - a1[6] + a1[5];
  v5 = sub_10004BD84(v4, a2, *a1);
  a1[2] = v5;
  a1[5] = sub_10004B6D8(v5, v5[1]);
  a1[6] = sub_10004B6D8(a1[2], *(a1[2] + 16));

  return sub_10004BE7C(a1, a2);
}

uint64_t sub_10004C3C0(atomic_ullong *a1)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    v3 = 0;
    do
    {
      v3 += sub_10004C420(explicit);
      explicit = *(explicit + 32);
    }

    while (explicit);
  }

  else
  {
    v3 = 0;
  }

  if (a1[4])
  {
    return v3 - 40;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10004C420(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v2 - sub_10004B6D8(*(a1 + 16), 0x18uLL);
  v4 = **(a1 + 16);
  while (1)
  {
    v5 = (v4 & 0xFFFFFFFFFFFFFFFCLL);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v4 = *v5;
    v3 = v3 + v6[1] - 24;
  }

  return v3 - 72;
}

uint64_t sub_10004C478(uint64_t result)
{
  if (*(result + 24))
  {
    return sub_10004C488(result);
  }

  return result;
}

uint64_t sub_10004C488(uint64_t result)
{
  v1 = *(result + 24);
  v2 = (*(result + 56) - v1 - 16) >> 4;
  if (v2)
  {
LABEL_2:
    v3 = &v1[2 * v2 + 1];
    do
    {
      result = (*v3)(*(v3 - 1));
      v3 -= 2;
      --v2;
    }

    while (v2);
  }

  while (1)
  {
    v1 = v1[1];
    if (!v1)
    {
      return result;
    }

    v2 = *v1;
    if (*v1)
    {
      goto LABEL_2;
    }
  }
}

unint64_t sub_10004C504(void *a1, unint64_t a2)
{
  v4 = sub_10004B420();
  if (v4[1] == a1[3])
  {
    explicit = v4[2];
    goto LABEL_3;
  }

  v7 = sub_10004B420();
  explicit = atomic_load_explicit(a1 + 1, memory_order_acquire);
  if (explicit && explicit[1] == v7)
  {
LABEL_3:

    return sub_10004BE7C(explicit, a2);
  }

  return sub_10004C234(a1, a2);
}

uint64_t *sub_10004C598(uint64_t *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5)
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
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arena_impl.h", 107);
    v7 = sub_10004FD04(v10, "CHECK failed: (reinterpret_cast<uintptr_t>(next) & 3) == (0u): ");
    sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  return a1;
}

void sub_10004C62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10004C644(void *a1)
{
  if (a1)
  {
    operator delete(a1, 0x40uLL);
  }
}

unint64_t sub_10004C654(unint64_t *a1)
{
  if ((atomic_load_explicit(&qword_1000B65A0, memory_order_acquire) & 1) == 0)
  {
    sub_10004D0E0();
  }

  std::mutex::lock(&stru_1000B5930);
  explicit = atomic_load_explicit(a1 + 3, memory_order_acquire);
  if (!explicit)
  {
    v3 = a1[1];
    if (v3 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003DBC();
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

  std::mutex::unlock(&stru_1000B5930);
  return explicit;
}

std::string *sub_10004C750(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (*a1 == a2)
  {
    if (!a4)
    {
      operator new();
    }

    if (*(a4 + 24))
    {
      sub_10004D148(a4);
    }

    result = sub_10004BF84(a4, 0x18uLL, sub_1000467B8);
    v12 = result;
    if (*(a3 + 23) < 0)
    {
      result = sub_100019AD4(result, *a3, *(a3 + 1));
    }

    else
    {
      v13 = *a3;
      result->__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&result->__r_.__value_.__l.__data_ = v13;
    }

    *a1 = v12;
  }

  else
  {
    v6 = sub_10003CD54(a1);
    v7 = *(a3 + 23);
    if (v7 >= 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    if (v7 >= 0)
    {
      v9 = *(a3 + 23);
    }

    else
    {
      v9 = *(a3 + 1);
    }

    return std::string::assign(v6, v8, v9);
  }

  return result;
}

void sub_10004C894(uint64_t *a1, uint64_t a2, __int128 *a3, uint64_t a4)
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
      sub_10004D148(a4);
      a4 = v11;
    }

    v9 = sub_10004BF84(a4, 0x18uLL, sub_1000467B8);
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
    v6 = sub_10003CD54(a1);
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

uint64_t *sub_10004C9D8(uint64_t *a1, uint64_t a2)
{
  if (*a1 == &qword_1000B6A48)
  {
    return sub_10004C9F4(a1, a2);
  }

  else
  {
    return sub_10003CD54(a1);
  }
}

uint64_t *sub_10004C9F4(uint64_t **a1, uint64_t a2)
{
  if (*a1 != &qword_1000B6A48)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v4 = sub_10004FD04(v7, "CHECK failed: IsDefault(default_value): ");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_10004D178(a2);
  }

  result = sub_10004BF84(a2, 0x18uLL, sub_1000467B8);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *a1 = result;
  return result;
}

void sub_10004CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10004CAE4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    return sub_10003CD54(a1);
  }

  else
  {
    return sub_10004CB00(a1, a3, a2);
  }
}

unint64_t sub_10004CB00(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 147);
    v6 = sub_10004FD04(v13, "CHECK failed: IsDefault(default_value): ");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
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

  explicit = sub_10004C654(a3);
  if (!a2)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(a2 + 24))
  {
    sub_10004D178(a2);
  }

  v8 = sub_10004BF84(a2, 0x18uLL, sub_1000467B8);
  v9 = v8;
  if (*(explicit + 23) < 0)
  {
    sub_100019AD4(v8, *explicit, *(explicit + 8));
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

void *sub_10004CC64(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2)
  {
    if (!a3)
    {
      operator new();
    }

    if (*(a3 + 24))
    {
      v5 = a3;
      sub_10004D148(a3);
      a3 = v5;
    }

    result = sub_10004BF84(a3, 0x18uLL, sub_1000467B8);
    *result = 0;
    result[1] = 0;
    result[2] = 0;
    *a1 = result;
  }

  else
  {

    return sub_10003CD54(a1);
  }

  return result;
}

uint64_t sub_10004CD20(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2)
  {
    return 0;
  }

  else
  {
    return sub_10004CD38(a1, a2, a3);
  }
}

uint64_t sub_10004CD38(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a2)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/arenastring.cc", 165);
    v6 = sub_10004FD04(v10, "CHECK failed: !IsDefault(default_value): ");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
    if (a3)
    {
LABEL_3:
      operator new();
    }
  }

  else if (a3)
  {
    goto LABEL_3;
  }

  v7 = sub_10003CD54(a1);
  *a1 = a2;
  return v7;
}

void sub_10004CE14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10004CE2C(uint64_t *result, uint64_t a2, __int128 *a3, uint64_t a4)
{
  if (a4)
  {
    if (a3)
    {
      if (*(a4 + 24))
      {
        sub_10004D148(a4);
      }

      v6 = sub_10004BF84(a4, 0x18uLL, sub_1000467B8);
      if (*(a3 + 23) < 0)
      {
        sub_100019AD4(v6, *a3, *(a3 + 1));
      }

      else
      {
        v7 = *a3;
        *(v6 + 16) = *(a3 + 2);
        *v6 = v7;
      }

      if (*(a3 + 23) < 0)
      {
        operator delete(*a3);
      }

      operator delete();
    }
  }

  else
  {
    if (*result != a2)
    {
      v8 = sub_10003CD54(result);
      if (*(v8 + 23) < 0)
      {
        operator delete(*v8);
      }

      operator delete();
    }

    if (a3)
    {
      operator new();
    }
  }

  *result = a2;
  return result;
}

uint64_t *sub_10004CF94(uint64_t *result, uint64_t a2, uint64_t a3)
{
  if (!a3 && *result != a2)
  {
    v4 = sub_10003CD54(result);
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    operator delete();
  }

  return result;
}

void *sub_10004D01C(void *result)
{
  if (*result != &qword_1000B6A48)
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

std::string *sub_10004D058(std::string *result, uint64_t a2)
{
  if (result->__r_.__value_.__r.__words[0])
  {
    v3 = sub_10003CD54(result);
    explicit = atomic_load_explicit((a2 + 24), memory_order_acquire);
    if (!explicit)
    {
      explicit = sub_10004C654(a2);
    }

    return std::string::operator=(v3, explicit);
  }

  return result;
}

uint64_t *sub_10004D0CC(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

void sub_10004D0E0()
{
  if (__cxa_guard_acquire(&qword_1000B65A0))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1000B5930, &_mh_execute_header);

    __cxa_guard_release(&qword_1000B65A0);
  }
}

uint64_t sub_10004D1B8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10004D1F0(a1);
  }

  return a1;
}

uint64_t sub_10004D1F0(uint64_t result)
{
  if (*(result + 28) + *(result + 44) + *(result + 8) - *result >= 1)
  {
    v1 = result;
    result = (*(**(result + 16) + 24))(*(result + 16));
    v2 = *(v1 + 24) - *(v1 + 44) + *v1 - *(v1 + 8);
    *(v1 + 8) = *v1;
    *(v1 + 44) = 0;
    *(v1 + 24) = v2;
  }

  return result;
}

uint64_t sub_10004D28C(uint64_t result, int a2)
{
  *(result + 40) = a2;
  v2 = *(result + 48);
  v3 = *(result + 8) + *(result + 44);
  *(result + 8) = v3;
  if (v2 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = v2;
  }

  v5 = *(result + 24);
  v6 = __OFSUB__(v5, v4);
  v7 = v5 - v4;
  if ((v7 < 0) ^ v6 | (v7 == 0))
  {
    v7 = 0;
  }

  else
  {
    *(result + 8) = v3 - v7;
  }

  *(result + 44) = v7;
  *(result + 36) = 0;
  return result;
}

uint64_t sub_10004D2D4(uint64_t a1, int a2)
{
  v3 = *(a1 + 36);
  *(a1 + 40) = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 8) + *(a1 + 44);
  *(a1 + 8) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(a1 + 24);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(a1 + 8) = v5 - v9;
  }

  *(a1 + 44) = v9;
  *(a1 + 36) = 0;
  v10 = *(a1 + 52);
  if (v10 >= *(a1 + 56))
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 161);
    v11 = sub_10004FD04(v14, "CHECK failed: (recursion_budget_) < (recursion_limit_): ");
    sub_10004FE40(&v13, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v14);
    v10 = *(a1 + 52);
  }

  *(a1 + 52) = v10 + 1;
  return v3;
}

void sub_10004D39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D3B4(uint64_t a1, int a2)
{
  result = *(a1 + 36);
  *(a1 + 40) = a2;
  v4 = *(a1 + 48);
  v5 = *(a1 + 8) + *(a1 + 44);
  *(a1 + 8) = v5;
  if (v4 >= a2)
  {
    v6 = a2;
  }

  else
  {
    v6 = v4;
  }

  v7 = *(a1 + 24);
  v8 = __OFSUB__(v7, v6);
  v9 = v7 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(a1 + 8) = v5 - v9;
  }

  *(a1 + 44) = v9;
  *(a1 + 36) = 0;
  return result;
}

uint64_t sub_10004D404(_DWORD *a1)
{
  v1 = a1[10];
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - a1[6] + a1[11] + a1[2] - *a1);
  }
}

uint64_t sub_10004D440(uint64_t result, int a2)
{
  v2 = *(result + 24);
  v3 = *(result + 8);
  v4 = *(result + 40);
  v5 = *(result + 44);
  v6 = v2 - v5 + *result - v3;
  if (v6 <= a2)
  {
    v6 = a2;
  }

  *(result + 48) = v6;
  v7 = v3 + v5;
  *(result + 8) = v7;
  if (v6 >= v4)
  {
    v6 = v4;
  }

  v8 = __OFSUB__(v2, v6);
  v9 = v2 - v6;
  if ((v9 < 0) ^ v8 | (v9 == 0))
  {
    v9 = 0;
  }

  else
  {
    *(result + 8) = v7 - v9;
  }

  *(result + 44) = v9;
  return result;
}

uint64_t sub_10004D49C(_DWORD *a1)
{
  v1 = a1[12];
  if (v1 == 0x7FFFFFFF)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return (v1 - a1[6] + a1[11] + a1[2] - *a1);
  }
}

uint64_t sub_10004D4D8(uint64_t a1)
{
  sub_10004FCEC(v7, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 193);
  v2 = sub_10004FD04(v7, "A protocol message was rejected because it was too big (more than ");
  v3 = sub_100050324(v2, *(a1 + 48));
  v4 = sub_10004FD04(v3, " bytes).  To increase the limit (or to disable these warnings), see CodedInputStream::SetTotalBytesLimit() in third_party/protobuf/src/google/protobuf/io/coded_stream.h.");
  sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
  return sub_10004FE48(v7);
}

void sub_10004D550(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D568(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 44) < 1)
  {
    v5 = (a2 - a3);
    *a1 = 0;
    *(a1 + 8) = 0;
    v6 = *(a1 + 48);
    if (v6 >= *(a1 + 40))
    {
      v6 = *(a1 + 40);
    }

    v7 = v6 - *(a1 + 24);
    if (v7 >= v5)
    {
      if ((*(**(a1 + 16) + 32))(*(a1 + 16), v5))
      {
        *(a1 + 24) += v5;
        return 1;
      }

      else
      {
        v8 = (*(**(a1 + 16) + 40))(*(a1 + 16));
        result = 0;
        *(a1 + 24) = v8;
      }
    }

    else
    {
      if (v7 >= 1)
      {
        *(a1 + 24) = v6;
        (*(**(a1 + 16) + 32))(*(a1 + 16));
      }

      return 0;
    }
  }

  else
  {
    result = 0;
    *a1 += a3;
  }

  return result;
}

uint64_t sub_10004D684(uint64_t a1, void *a2, _DWORD *a3)
{
  v6 = *a1;
  if (*(a1 + 8) == *a1)
  {
    result = sub_10004D6EC(a1);
    if (!result)
    {
      return result;
    }

    v6 = *a1;
  }

  *a2 = v6;
  *a3 = *(a1 + 8) - *a1;
  return 1;
}

uint64_t sub_10004D6EC(uint64_t a1)
{
  if (*(a1 + 8) != *a1)
  {
    sub_10004FCEC(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 617);
    v2 = sub_10004FD04(v24, "CHECK failed: (0) == (BufferSize()): ");
    sub_10004FE40(&v23, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v24);
  }

  v3 = *(a1 + 44);
  if (v3 > 0 || *(a1 + 28) > 0 || *(a1 + 24) == *(a1 + 40))
  {
    v4 = *(a1 + 24) - v3;
    v5 = *(a1 + 48);
    if (v4 >= v5 && v5 != *(a1 + 40))
    {
      sub_10004D4D8(a1);
    }

    return 0;
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v8 = *(a1 + 16);
    do
    {
      v6 = (*(*v8 + 16))(v8, &v23, &v22);
      if (!v6)
      {
        *a1 = 0;
        *(a1 + 8) = 0;
        return v6;
      }

      v9 = v22;
    }

    while (!v22);
    v10 = v23 + v22;
    *a1 = v23;
    *(a1 + 8) = v10;
    if (v9 < 0)
    {
      sub_10004FCEC(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 638);
      v11 = sub_10004FD04(v24, "CHECK failed: (buffer_size) >= (0): ");
      sub_10004FE40(&v21, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v24);
      v9 = v22;
    }

    v12 = *(a1 + 24);
    v13 = v12 - (v9 ^ 0x7FFFFFFF);
    if (v12 <= (v9 ^ 0x7FFFFFFF))
    {
      v15 = v9 + v12;
      v14 = *(a1 + 8);
    }

    else
    {
      *(a1 + 28) = v13;
      v14 = *(a1 + 8) - v13;
      *(a1 + 8) = v14;
      v15 = 0x7FFFFFFF;
    }

    *(a1 + 24) = v15;
    v16 = *(a1 + 40);
    v17 = v14 + *(a1 + 44);
    *(a1 + 8) = v17;
    v18 = *(a1 + 48);
    if (v18 >= v16)
    {
      v18 = v16;
    }

    v19 = __OFSUB__(v15, v18);
    v20 = v15 - v18;
    if ((v20 < 0) ^ v19 | (v20 == 0))
    {
      v20 = 0;
    }

    else
    {
      *(a1 + 8) = v17 - v20;
    }

    *(a1 + 44) = v20;
  }

  return v6;
}

void sub_10004D8D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_10004D8F8(const void **a1, char *__dst, int a3)
{
  while (1)
  {
    v6 = a3;
    v7 = *a1;
    v8 = a1[1] - *a1;
    v9 = __OFSUB__(a3, v8);
    a3 -= v8;
    if ((a3 < 0) ^ v9 | (a3 == 0))
    {
      break;
    }

    memcpy(__dst, v7, v8);
    __dst += v8;
    *a1 = *a1 + v8;
    if ((sub_10004D6EC(a1) & 1) == 0)
    {
      return v6 <= v8;
    }
  }

  memcpy(__dst, v7, v6);
  *a1 = *a1 + v6;
  return v6 <= v8;
}

BOOL sub_10004D990(uint64_t a1, std::string *this, std::string::size_type __n)
{
  if ((__n & 0x80000000) != 0)
  {
    return 0;
  }

  v3 = this;
  if (*(a1 + 8) - *a1 >= __n)
  {
    v6 = __n;
    std::string::resize(this, __n, 0);
    if (SHIBYTE(v3->__r_.__value_.__r.__words[2]) < 0)
    {
      v3 = v3->__r_.__value_.__r.__words[0];
      if (!v3)
      {
        sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 267);
        v7 = sub_10004FD04(v9, "CHECK failed: z.first != NULL: ");
        sub_10004FE40(&v8, &v7->__r_.__value_.__l.__data_);
        sub_10004FE48(v9);
        v3 = 0;
      }
    }

    memcpy(v3, *a1, v6);
    *a1 += v6;
    return 1;
  }

  else
  {

    return sub_10004DAAC(a1, this, __n);
  }
}

void sub_10004DA94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_10004DAAC(_DWORD *a1, std::string *this, std::string::size_type __requested_capacity)
{
  v3 = __requested_capacity;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v6 = a1[12];
  if (v6 >= a1[10])
  {
    v6 = a1[10];
  }

  if (v6 != 0x7FFFFFFF)
  {
    v7 = v6 - a1[6] + a1[11] + a1[2] - *a1;
    v8 = v7 < __requested_capacity || __requested_capacity < 1;
    if (!v8 && v7 >= 1)
    {
      std::string::reserve(this, __requested_capacity);
    }
  }

  while (1)
  {
    v10 = v3;
    v11 = *a1;
    v12 = *(a1 + 1) - *a1;
    v13 = __OFSUB__(v3, v12);
    v3 -= v12;
    if ((v3 < 0) ^ v13 | (v3 == 0))
    {
      break;
    }

    if (v12)
    {
      v14 = v12;
      std::string::append(this, v11, v12);
      v11 = *a1;
    }

    else
    {
      v14 = 0;
    }

    *a1 = &v11[v14];
    if ((sub_10004D6EC(a1) & 1) == 0)
    {
      return v10 <= v12;
    }
  }

  std::string::append(this, v11, v10);
  *a1 += v10;
  return v10 <= v12;
}

BOOL sub_10004DBD4(uint64_t a1, _DWORD *a2)
{
  v3 = *a1;
  if (((*(a1 + 8) - *a1) & 0xFFFFFFFC) != 0)
  {
    *a1 = v3 + 4;
  }

  else
  {
    v3 = __dst;
    result = sub_10004D8F8(a1, __dst, 4);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

BOOL sub_10004DC3C(uint64_t a1, void *a2)
{
  v3 = *a1;
  if (((*(a1 + 8) - *a1) & 0xFFFFFFF8) != 0)
  {
    *a1 = v3 + 8;
  }

  else
  {
    v3 = v5;
    result = sub_10004D8F8(a1, v5, 8);
    if (!result)
    {
      return result;
    }
  }

  *a2 = *v3;
  return 1;
}

unint64_t sub_10004DCFC(uint64_t a1)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  if ((v2 - *a1) <= 9 && (v2 <= v3 || *(v2 - 1) < 0))
  {
    v38[0].__r_.__value_.__r.__words[0] = 0;
    sub_10004E790(a1, v38);
    return v38[0].__r_.__value_.__r.__words[0];
  }

  if ((*v3 & 0x80000000) == 0)
  {
    sub_10004FCEC(v38, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 417);
    v4 = sub_10004FD04(v38, "CHECK failed: (buffer[0]) >= (128): ");
    sub_10004FE40(&v37, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v38);
  }

  v5 = v3[1];
  if ((v5 & 0x8000000000000000) == 0)
  {
    result = *v3 + (v5 << 7) - 128;
    v7 = 2;
LABEL_38:
    *a1 = &v3[v7];
    return result;
  }

  v8 = v3[2];
  if ((v8 & 0x8000000000000000) == 0)
  {
    result = (v3[1] << 7) + (v8 << 14) + *v3 - 16512;
    v7 = 3;
    goto LABEL_38;
  }

  v9 = v3[3];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = 0;
    result = v9 << 21;
    v7 = 4;
    v11 = v3;
    do
    {
      v12 = *v11++;
      result += (v12 - 128) << v10;
      v10 += 7;
    }

    while (v10 != 21);
    goto LABEL_38;
  }

  v13 = v3[4];
  if ((v13 & 0x8000000000000000) == 0)
  {
    v14 = 0;
    result = v13 << 28;
    v7 = 5;
    v15 = v3;
    do
    {
      v16 = *v15++;
      result += (v16 - 128) << v14;
      v14 += 7;
    }

    while (v14 != 28);
    goto LABEL_38;
  }

  v17 = v3[5];
  if ((v17 & 0x8000000000000000) == 0)
  {
    v18 = 0;
    result = v17 << 35;
    v7 = 6;
    v19 = v3;
    do
    {
      v20 = *v19++;
      result += (v20 - 128) << v18;
      v18 += 7;
    }

    while (v18 != 35);
    goto LABEL_38;
  }

  v21 = v3[6];
  if ((v21 & 0x8000000000000000) == 0)
  {
    v22 = 0;
    result = v21 << 42;
    v7 = 7;
    v23 = v3;
    do
    {
      v24 = *v23++;
      result += (v24 - 128) << v22;
      v22 += 7;
    }

    while (v22 != 42);
    goto LABEL_38;
  }

  v25 = v3[7];
  if ((v25 & 0x8000000000000000) == 0)
  {
    v26 = 0;
    result = v25 << 49;
    v7 = 8;
    v27 = v3;
    do
    {
      v28 = *v27++;
      result += (v28 - 128) << v26;
      v26 += 7;
    }

    while (v26 != 49);
    goto LABEL_38;
  }

  v29 = v3[8];
  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    result = v29 << 56;
    v7 = 9;
    v31 = v3;
    do
    {
      v32 = *v31++;
      result += (v32 - 128) << v30;
      v30 += 7;
    }

    while (v30 != 56);
    goto LABEL_38;
  }

  v33 = v3[9];
  if ((v33 & 0x8000000000000000) == 0)
  {
    v34 = 0;
    result = v33 << 63;
    v7 = 10;
    v35 = v3;
    do
    {
      v36 = *v35++;
      result += (v36 - 128) << v34;
      v34 += 7;
    }

    while (v34 != 63);
    goto LABEL_38;
  }

  return 0;
}

void sub_10004DF8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004DFA4(unsigned __int8 **a1, int a2)
{
  v5 = *a1;
  v4 = a1[1];
  if ((v4 - *a1) <= 9 && (v4 <= v5 || *(v4 - 1) < 0))
  {
    LODWORD(result) = sub_10004DCFC(a1);
    if (v14)
    {
      return result;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    if (!a2)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 462);
      v6 = sub_10004FD04(v18, "CHECK failed: (first_byte_or_zero) != (0): ");
      v7 = sub_10004FD04(v6, "Caller should provide us with *buffer_ when buffer is non-empty");
      sub_10004FE40(&v17, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v18);
      v5 = *a1;
    }

    if (*v5 != a2)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 373);
      v8 = sub_10004FD04(v18, "CHECK failed: (*buffer) == (first_byte): ");
      sub_10004FE40(&v17, &v8->__r_.__value_.__l.__data_);
      sub_10004FE48(v18);
    }

    if ((a2 & 0x80) == 0)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 374);
      v9 = sub_10004FD04(v18, "CHECK failed: (first_byte & 0x80) == (0x80): ");
      v10 = sub_1000503A4(v9, a2);
      sub_10004FE40(&v17, &v10->__r_.__value_.__l.__data_);
      sub_10004FE48(v18);
    }

    v11 = a2 + (v5[1] << 7) - 128;
    if (v5[1] < 0)
    {
      v11 = v11 + (v5[2] << 14) - 0x4000;
      if (v5[2] < 0)
      {
        v11 = v11 + (v5[3] << 21) - 0x200000;
        if (v5[3] < 0)
        {
          v15 = v5[4];
          v11 = v11 + (v15 << 28) - 0x10000000;
          if (v15 < 0)
          {
            v12 = v5 + 6;
            v16 = 5;
            result = -1;
            while (*(v12 - 1) < 0)
            {
              ++v12;
              if (!--v16)
              {
                return result;
              }
            }
          }

          else
          {
            v12 = v5 + 5;
          }
        }

        else
        {
          v12 = v5 + 4;
        }
      }

      else
      {
        v12 = v5 + 3;
      }
    }

    else
    {
      v12 = v5 + 2;
    }

    result = v11;
    *a1 = v12;
  }

  return result;
}

void sub_10004E188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10004E1B0(uint64_t a1)
{
  result = sub_10004DCFC(a1);
  if ((v2 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

unint64_t sub_10004E1DC(char **a1)
{
  v3 = *a1;
  v2 = a1[1];
  if ((v2 - *a1) > 9 || v2 > v3 && (*(v2 - 1) & 0x80000000) == 0)
  {
    if ((*v3 & 0x80000000) == 0)
    {
      sub_10004FCEC(v39, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 417);
      v4 = sub_10004FD04(v39, "CHECK failed: (buffer[0]) >= (128): ");
      sub_10004FE40(&v38, &v4->__r_.__value_.__l.__data_);
      sub_10004FE48(v39);
    }

    v5 = v3[1];
    if (v5 < 0)
    {
      v9 = v3[2];
      if (v9 < 0)
      {
        v10 = v3[3];
        if (v10 < 0)
        {
          v14 = v3[4];
          if (v14 < 0)
          {
            v18 = v3[5];
            if (v18 < 0)
            {
              v22 = v3[6];
              if (v22 < 0)
              {
                v26 = v3[7];
                if (v26 < 0)
                {
                  v30 = v3[8];
                  if (v30 < 0)
                  {
                    v34 = v3[9];
                    if (v34 < 0)
                    {
                      return 0xFFFFFFFFLL;
                    }

                    v35 = 0;
                    result = v34 << 63;
                    v7 = 10;
                    v36 = v3;
                    do
                    {
                      v37 = *v36++;
                      result += (v37 - 128) << v35;
                      v35 += 7;
                    }

                    while (v35 != 63);
                  }

                  else
                  {
                    v31 = 0;
                    result = v30 << 56;
                    v7 = 9;
                    v32 = v3;
                    do
                    {
                      v33 = *v32++;
                      result += (v33 - 128) << v31;
                      v31 += 7;
                    }

                    while (v31 != 56);
                  }
                }

                else
                {
                  v27 = 0;
                  result = v26 << 49;
                  v7 = 8;
                  v28 = v3;
                  do
                  {
                    v29 = *v28++;
                    result += (v29 - 128) << v27;
                    v27 += 7;
                  }

                  while (v27 != 49);
                }
              }

              else
              {
                v23 = 0;
                result = v22 << 42;
                v7 = 7;
                v24 = v3;
                do
                {
                  v25 = *v24++;
                  result += (v25 - 128) << v23;
                  v23 += 7;
                }

                while (v23 != 42);
              }
            }

            else
            {
              v19 = 0;
              result = v18 << 35;
              v7 = 6;
              v20 = v3;
              do
              {
                v21 = *v20++;
                result += (v21 - 128) << v19;
                v19 += 7;
              }

              while (v19 != 35);
            }
          }

          else
          {
            v15 = 0;
            result = v14 << 28;
            v7 = 5;
            v16 = v3;
            do
            {
              v17 = *v16++;
              result += (v17 - 128) << v15;
              v15 += 7;
            }

            while (v15 != 28);
          }
        }

        else
        {
          v11 = 0;
          result = v10 << 21;
          v7 = 4;
          v12 = v3;
          do
          {
            v13 = *v12++;
            result += (v13 - 128) << v11;
            v11 += 7;
          }

          while (v11 != 21);
        }
      }

      else
      {
        result = (v3[1] << 7) + (v9 << 14) + *v3 - 16512;
        v7 = 3;
      }
    }

    else
    {
      result = *v3 + (v5 << 7) - 128;
      v7 = 2;
    }

    if (!(result >> 31))
    {
      *a1 = &v3[v7];
      return result;
    }

    return 0xFFFFFFFFLL;
  }

  result = sub_10004DCFC(a1);
  if ((v8 & (result >> 31 == 0)) != 0)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_10004E46C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10004E484(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (*a1 != v3)
  {
LABEL_4:
    if (v2 >= v3 || (result = *v2, (result & 0x80000000) != 0))
    {
      result = sub_10004DCFC(a1);
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      *a1 = v2 + 1;
    }

    return result;
  }

  if (sub_10004D6EC(a1))
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    goto LABEL_4;
  }

  v6 = *(a1 + 48);
  result = 0;
  v7 = *(a1 + 24) - *(a1 + 44) < v6 || *(a1 + 40) == v6;
  *(a1 + 36) = v7;
  return result;
}

unint64_t sub_10004E524(unsigned __int8 **a1, int a2)
{
  v4 = a1[1];
  v5 = v4 - *a1;
  if (v5 <= 9)
  {
    if (v5 < 1)
    {
      if (!v5)
      {
        v14 = *(a1 + 11);
        v15 = *(a1 + 6);
        if ((v14 > 0 || v15 == *(a1 + 10)) && v15 - v14 < *(a1 + 12))
        {
          result = 0;
          *(a1 + 36) = 1;
          return result;
        }
      }
    }

    else if ((*(v4 - 1) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    return sub_10004E484(a1);
  }

LABEL_4:
  if (**a1 != a2)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 537);
    v6 = sub_10004FD04(v19, "CHECK failed: (first_byte_or_zero) == (buffer_[0]): ");
    sub_10004FE40(&v18, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
  }

  v7 = *a1;
  if (a2)
  {
    if (*v7 != a2)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 373);
      v8 = sub_10004FD04(v19, "CHECK failed: (*buffer) == (first_byte): ");
      sub_10004FE40(&v18, &v8->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    if ((a2 & 0x80) == 0)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 374);
      v9 = sub_10004FD04(v19, "CHECK failed: (first_byte & 0x80) == (0x80): ");
      v10 = sub_1000503A4(v9, a2);
      sub_10004FE40(&v18, &v10->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    v11 = a2 + (v7[1] << 7) - 128;
    if (v7[1] < 0)
    {
      v11 = v11 + (v7[2] << 14) - 0x4000;
      if (v7[2] < 0)
      {
        v11 = v11 + (v7[3] << 21) - 0x200000;
        if (v7[3] < 0)
        {
          v16 = v7[4];
          v11 = (v11 + (v16 << 28) - 0x10000000);
          if (v16 < 0)
          {
            v12 = v7 + 6;
            v17 = 5;
            result = 0;
            while (*(v12 - 1) < 0)
            {
              ++v12;
              if (!--v17)
              {
                return result;
              }
            }
          }

          else
          {
            v12 = v7 + 5;
          }
        }

        else
        {
          v12 = v7 + 4;
        }
      }

      else
      {
        v12 = v7 + 3;
      }
    }

    else
    {
      v12 = v7 + 2;
    }

    *a1 = v12;
    return v11;
  }

  else
  {
    result = 0;
    *a1 = v7 + 1;
  }

  return result;
}

void sub_10004E768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_10004E790(char **a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  while (1)
  {
    v6 = v4 != 10;
    if (v4 == 10)
    {
      break;
    }

    while (1)
    {
      v7 = *a1;
      if (*a1 != a1[1])
      {
        break;
      }

      if ((sub_10004D6EC(a1) & 1) == 0)
      {
        v5 = 0;
        v6 = 0;
        goto LABEL_7;
      }
    }

    v8 = *v7;
    v5 |= (*v7 & 0x7F) << (7 * v4);
    *a1 = v7 + 1;
    ++v4;
    if ((v8 & 0x80) == 0)
    {
      goto LABEL_7;
    }
  }

  v5 = 0;
LABEL_7:
  *a2 = v5;
  return v6;
}

uint64_t sub_10004E834(uint64_t a1, int a2)
{
  if (a2)
  {
    result = (*(**(a1 + 48) + 48))(*(a1 + 48));
  }

  else
  {
    result = 0;
  }

  *(a1 + 57) = result;
  return result;
}

int64_t sub_10004E8EC(uint64_t a1, char *a2)
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
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 685);
      v7 = sub_10004FD04(v15, "CHECK failed: !had_error_: ");
      sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
    }

    if (v6 >= 17)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 686);
      v8 = sub_10004FD04(v15, "CHECK failed: overrun <= kSlopBytes: ");
      sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
    }

    a2 = &sub_10004EA88(a1)[v6];
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
  sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 700);
  v12 = sub_10004FD04(v15, "CHECK failed: s >= 0: ");
  sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
  sub_10004FE48(v15);
  return v9;
}

void sub_10004EA60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10004EA88(char **a1)
{
  if (*(a1 + 56) == 1)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 788);
    v2 = sub_10004FD04(v13, "CHECK failed: !had_error_: ");
    sub_10004FE40(&v12, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
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
        sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 810);
        v9 = sub_10004FD04(v13, "CHECK failed: size > 0: ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v13);
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

void sub_10004EC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10004EC44(uint64_t a1, char *a2)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = sub_10004E8EC(a1, a2);
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

uint64_t sub_10004ECB0(uint64_t a1, char *a2)
{
  if (*(a1 + 56) == 1)
  {
    return a1 + 16;
  }

  v3 = sub_10004E8EC(a1, a2);
  if (*(a1 + 56) == 1)
  {
    return a1 + 16;
  }

  v5 = *(a1 + 8) + v3 - 16;
  if (v3 > 16)
  {
    v6 = 0;
  }

  else
  {
    v5 = a1 + 16 + v3;
    v6 = *(a1 + 8);
  }

  if (v3 <= 16)
  {
    result = a1 + 16;
  }

  else
  {
    result = *(a1 + 8);
  }

  *a1 = v5;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_10004ED20(uint64_t a1, int a2, char **a3)
{
  if (a2 < 0)
  {
    return 0;
  }

  if (*(a1 + 56) == 1 || (v5 = a2, v13 = sub_10004E8EC(a1, *a3), *(a1 + 56) == 1))
  {
    v6 = 0;
    v7 = (a1 + 16);
  }

  else
  {
    v12 = *(a1 + 8);
    while (1)
    {
      v6 = v5 <= v13;
      if (v5 <= v13)
      {
        break;
      }

      v5 -= v13;
      if (((*(**(a1 + 48) + 16))(*(a1 + 48), &v12, &v13) & 1) == 0)
      {
        *(a1 + 56) = 1;
        v7 = (a1 + 16);
        *a1 = a1 + 32;
        goto LABEL_5;
      }
    }

    v9 = v13 - v5;
    v10 = v12 + v5 + v9 - 16;
    if (v9 > 16)
    {
      v11 = 0;
    }

    else
    {
      v10 = a1 + 16 + v9;
      v11 = v12 + v5;
    }

    if (v9 <= 16)
    {
      v7 = (a1 + 16);
    }

    else
    {
      v7 = (v12 + v5);
    }

    *a1 = v10;
    *(a1 + 8) = v11;
  }

LABEL_5:
  *a3 = v7;
  return v6;
}

uint64_t sub_10004EE38(uint64_t a1, char **a2, _DWORD *a3, char **a4)
{
  if (*(a1 + 56) == 1 || (*a3 = sub_10004E8EC(a1, *a4), *(a1 + 56) == 1))
  {
    result = 0;
    v9 = (a1 + 16);
  }

  else
  {
    *a2 = *(a1 + 8);
    while (1)
    {
      v10 = *a3;
      if (v10)
      {
        break;
      }

      if (((*(**(a1 + 48) + 16))(*(a1 + 48), a2, a3) & 1) == 0)
      {
        result = 0;
        *(a1 + 56) = 1;
        v9 = (a1 + 16);
        *a1 = a1 + 32;
        goto LABEL_4;
      }
    }

    v11 = &(*a2)[v10 - 16];
    if (v10 > 16)
    {
      v12 = 0;
    }

    else
    {
      v11 = a1 + 16 + v10;
      v12 = *a2;
    }

    if (v10 <= 16)
    {
      v9 = (a1 + 16);
    }

    else
    {
      v9 = *a2;
    }

    *a1 = v11;
    *(a1 + 8) = v12;
    result = 1;
  }

LABEL_4:
  *a4 = v9;
  return result;
}

uint64_t sub_10004EF30(uint64_t a1, int a2, char **a3)
{
  if (*(a1 + 56) == 1 || (v6 = sub_10004E8EC(a1, *a3), *(a1 + 56) == 1))
  {
    result = 0;
    v8 = (a1 + 16);
  }

  else
  {
    v9 = v6;
    result = *(a1 + 8);
    if (v9 >= a2)
    {
      v12 = v9 - a2;
      v13 = result + a2 + v12 - 16;
      if (v12 > 16)
      {
        v14 = 0;
      }

      else
      {
        v13 = a1 + 16 + v12;
        v14 = result + a2;
      }

      if (v12 <= 16)
      {
        v8 = (a1 + 16);
      }

      else
      {
        v8 = (result + a2);
      }

      *a1 = v13;
      *(a1 + 8) = v14;
    }

    else
    {
      v10 = result + v9 - 16;
      if (v9 > 16)
      {
        v11 = 0;
      }

      else
      {
        v10 = a1 + 16 + v9;
        v11 = *(a1 + 8);
      }

      if (v9 <= 16)
      {
        v8 = (a1 + 16);
      }

      else
      {
        v8 = *(a1 + 8);
      }

      *a1 = v10;
      *(a1 + 8) = v11;
      result = 0;
    }
  }

  *a3 = v8;
  return result;
}

char *sub_10004F000(uint64_t a1, char *a2)
{
  while (*(a1 + 56) != 1)
  {
    v3 = &a2[-*a1];
    if ((v3 & 0x80000000) != 0)
    {
      sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 829);
      v5 = sub_10004FD04(v8, "CHECK failed: overrun >= 0: ");
      sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
      goto LABEL_6;
    }

    if (v3 > 0x10)
    {
      sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 830);
      v4 = sub_10004FD04(v8, "CHECK failed: overrun <= kSlopBytes: ");
      sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
LABEL_6:
      sub_10004FE48(v8);
    }

    a2 = &sub_10004EA88(a1)[v3];
    if (a2 < *a1)
    {
      return a2;
    }
  }

  return (a1 + 16);
}

void sub_10004F0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10004F118(uint64_t *a1, char *a2, int a3, unint64_t a4)
{
  v4 = a4;
  for (i = sub_10004F1BC(a1, a4); a3 > i; i = sub_10004F1BC(a1, v4))
  {
    memcpy(v4, a2, i);
    a3 -= i;
    a2 += i;
    v4 = sub_10004F000(a1, &v4[i]);
  }

  memcpy(v4, a2, a3);
  return &v4[a3];
}

uint64_t sub_10004F1BC(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  if (*a1 + 16 < a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 838);
    v5 = sub_10004FD04(v8, "CHECK failed: ptr <= end_ + kSlopBytes: ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
    v3 = *a1;
  }

  return v3 - a2 + 16;
}

void sub_10004F240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10004F258(uint64_t a1, void *a2, uint64_t a3, char *a4)
{
  if (sub_10004F1BC(a1, a4) <= a3)
  {
    v8 = sub_10004EC44(a1, a4);
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

  return sub_10004F118(a1, a2, a3, a4);
}

char *sub_10004F360(unint64_t *a1, int a2, void **a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_10004F000(a1, a4);
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
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_10004FD04(v23, "CHECK failed: ptr < end_: ");
    sub_10004FE40(&v22, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
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

  return sub_10004F4E8(a1, v18, v9, v17);
}

void sub_10004F4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10004F4E8(uint64_t a1, void *a2, uint64_t a3, char *__dst)
{
  if (*(a1 + 57) == 1)
  {

    return sub_10004F258(a1, a2, a3, __dst);
  }

  else if (*a1 - __dst < a3)
  {

    return sub_10004F118(a1, a2, a3, __dst);
  }

  else
  {
    v6 = a3;
    memcpy(__dst, a2, a3);
    return &__dst[v6];
  }
}

char *sub_10004F578(uint64_t *a1, int a2, uint64_t a3, char *a4)
{
  v4 = a4;
  v8 = *a1;
  if (*a1 <= a4)
  {
    v4 = sub_10004F000(a1, a4);
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
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 858);
    v10 = sub_10004FD04(v23, "CHECK failed: ptr < end_: ");
    sub_10004FE40(&v22, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
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
    return sub_10004F118(a1, v18, v9, v17);
  }

  memcpy(v17, v18, v9);
  return &v17[v9];
}

void sub_10004F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10004F728(uint64_t a1, uint64_t a2, int a3)
{
  v6 = byte_1000B6A40 & 1;
  v7 = a1 + 16;
  *a1 = a1 + 16;
  *(a1 + 8) = a1 + 16;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 58) = v6;
  *(a1 + 64) = a1 + 16;
  *(a1 + 72) = (*(*a2 + 32))(a2);
  if (a3)
  {
    v14 = 0;
    v13 = 0;
    if ((*(*a2 + 16))(a2, &v14, &v13) && v13 != 0)
    {
      v9 = v14;
      if (v13 <= 16)
      {
        v10 = v7 + v13;
      }

      else
      {
        v10 = v14 + v13 - 16;
      }

      if (v13 <= 16)
      {
        v11 = v14;
      }

      else
      {
        v11 = 0;
      }

      if (v13 <= 16)
      {
        v9 = v7;
      }

      *a1 = v10;
      *(a1 + 8) = v11;
      *(a1 + 64) = v9;
    }
  }

  return a1;
}

char *sub_10004F864(uint64_t a1, _BYTE *a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0 && *(a1 + 12))
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/coded_stream.cc", 949);
    v5 = sub_10004FD04(v15, "CHECK failed: (str.size()) <= (kuint32max): ");
    sub_10004FE40(&v14, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LOBYTE(v4) = *(v3 + 23);
  }

  if ((v4 & 0x80u) == 0)
  {
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 2);
  }

  if (v6 > 0x7F)
  {
    *a2 = v6 | 0x80;
    v8 = v6 >> 7;
    if (v6 >> 14)
    {
      v7 = a2 + 2;
      do
      {
        *(v7 - 1) = v8 | 0x80;
        v9 = v8 >> 7;
        ++v7;
        v10 = v8 >> 14;
        v8 >>= 7;
      }

      while (v10);
      *(v7 - 1) = v9;
    }

    else
    {
      a2[1] = v8;
      v7 = a2 + 2;
    }
  }

  else
  {
    *a2 = v6;
    v7 = a2 + 1;
  }

  v11 = *(v3 + 23);
  if (v11 >= 0)
  {
    v12 = v3;
  }

  else
  {
    v12 = *v3;
  }

  if (v11 >= 0)
  {
    LODWORD(v3) = *(v3 + 23);
  }

  else
  {
    v3 = v3[1];
  }

  memcpy(v7, v12, v3);
  return &v7[v3];
}

void sub_10004F970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10004F988(int a1, int a2, const std::string::value_type *a3)
{
  if (a2 > 3014000)
  {
    LODWORD(v20) = 3;
    v21 = "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/common.cc";
    v22 = 76;
    memset(&v23, 0, sizeof(v23));
    std::string::append(&v23, "This program requires version ");
    sub_10004FD74(a2, &v17);
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
    sub_100009A74(&__p, __str);
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
    sub_100050724(&v20);
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
    sub_10004FD74(a1, &v17);
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
    sub_100009A74(&__p, __str);
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
    sub_100050724(&v20);
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

void sub_10004FC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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

uint64_t sub_10004FCEC(uint64_t result, int a2, uint64_t a3, int a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = 0;
  return result;
}

std::string *sub_10004FD30(std::string *a1, const std::string::value_type *a2)
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

_BYTE *sub_10004FD74@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  snprintf(__str, 0x80uLL, "%d.%d.%d", a1 / 1000000, a1 / 1000 % 1000, a1 % 1000);
  __str[127] = 0;
  return sub_100009A74(a2, __str);
}

uint64_t sub_10004FE48(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

uint64_t sub_10004FE7C(uint64_t result, const char *a2, int a3, uint64_t a4)
{
  if ((result & 0x80000000) == 0)
  {
    if (*(a4 + 23) >= 0)
    {
      v4 = a4;
    }

    else
    {
      v4 = *a4;
    }

    fprintf(__stderrp, "[libprotobuf %s %s:%d] %s\n", off_1000AE120[result], a2, a3, v4);
    v5 = __stderrp;

    return fflush(v5);
  }

  return result;
}

std::string *sub_10004FF00(std::string *a1, _BYTE *a2)
{
  sub_10004FF88(a2, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10004FF6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_10004FF88@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  if (*result)
  {
    v4 = *(result + 1);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100003DBC();
    }

    if (v4 >= 0x17)
    {
      operator new();
    }

    a2[23] = v4;
    if (v4)
    {
      result = memmove(a2, v3, v4);
    }

    a2[v4] = 0;
  }

  else
  {

    return sub_100009A74(a2, "");
  }

  return result;
}

std::string *sub_100050058(std::string *a1, uint64_t a2)
{
  sub_10007D1BC(a2, __p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::string::append(a1 + 1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_1000500C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000500E0(std::string *a1, __int128 *a2)
{
  sub_1000177C0(&v9);
  sub_10006ABBC(&v9, a2);
  std::stringbuf::str();
  if ((v8 & 0x80u) == 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  if ((v8 & 0x80u) == 0)
  {
    v5 = v8;
  }

  else
  {
    v5 = __p[1];
  }

  std::string::append(a1 + 1, v4, v5);
  if (v8 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[7].__locale_);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  std::ios::~ios();
  return a1;
}

void sub_100050270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

std::string *sub_1000502B4(std::string *a1, std::string::value_type a2)
{
  __s[0] = a2;
  __s[1] = 0;
  __s[127] = 0;
  std::string::append(a1 + 1, __s);
  return a1;
}

std::string *sub_100050324(std::string *a1, int a2)
{
  snprintf(__str, 0x80uLL, "%d", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_1000503A4(std::string *a1, int a2)
{
  snprintf(__str, 0x80uLL, "%u", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_100050424(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x80uLL, "%ld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_1000504A4(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x80uLL, "%lu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_100050524(std::string *a1, double a2)
{
  snprintf(__str, 0x80uLL, "%g", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_1000505A4(std::string *a1, const void *a2)
{
  snprintf(__str, 0x80uLL, "%p", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_100050624(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x80uLL, "%lld", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

std::string *sub_1000506A4(std::string *a1, uint64_t a2)
{
  snprintf(__str, 0x80uLL, "%llu", a2);
  __str[127] = 0;
  std::string::append(a1 + 1, __str);
  return a1;
}

const char **sub_100050724(const char **result)
{
  v1 = result;
  if (*result == 3)
  {
    v2 = 3;
  }

  else
  {
    v3 = atomic_load(dword_1000B65A8);
    if (v3 > 0)
    {
      goto LABEL_6;
    }

    v2 = *result;
  }

  result = off_1000B5978(v2, v1[1], *(v1 + 4), (v1 + 3));
LABEL_6:
  if (*v1 == 3)
  {
    exception = __cxa_allocate_exception(0x30uLL);
    sub_1000507E4(exception, v1[1], *(v1 + 4), v1 + 3);
  }

  return result;
}

uint64_t (*sub_1000507EC(uint64_t (*a1)()))()
{
  v1 = off_1000B5978;
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = nullsub_4;
  }

  off_1000B5978 = v2;
  if (v1 == nullsub_4)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

void sub_100050868(std::exception *this)
{
  this->__vftable = &off_1000AE168;
  if (SHIBYTE(this[5].__vftable) < 0)
  {
    operator delete(this[3].__vftable);
  }

  std::exception::~exception(this);
}

void sub_1000508C8(std::exception *a1)
{
  sub_100050868(a1);

  operator delete();
}

uint64_t sub_100050900(uint64_t a1)
{
  result = a1 + 24;
  if (*(a1 + 47) < 0)
  {
    return *result;
  }

  return result;
}

uint64_t sub_10005091C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = (*(a1 + 8))();
  if (a1 && (v2 & 1) != 0)
  {
    v4 = *(*a1 + 8);

    return v4(a1);
  }

  return result;
}

uint64_t sub_100050990(uint64_t a1, uint64_t a2, int a3, __int128 *a4)
{
  *a1 = &off_1000AE168;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (*(a4 + 23) < 0)
  {
    sub_100019AD4((a1 + 24), *a4, *(a4 + 1));
  }

  else
  {
    v5 = *a4;
    *(a1 + 40) = *(a4 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

uint64_t sub_100050A18(uint64_t a1, int a2, _OWORD *a3)
{
  if (qword_1000B65D0)
  {
    v3 = *(qword_1000B65D0 + 8);
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

      v10 = *(*qword_1000B65D0 + 8 * v9);
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

uint64_t sub_100050B2C(unint64_t a1, int a2, int a3, std::string::value_type a4, std::string::value_type a5)
{
  v7 = a3;
  switch(a3)
  {
    case 14:
      sub_10004FCEC(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 140);
      v10 = sub_10004FD04(&v15, "CHECK failed: (type) != (WireFormatLite::TYPE_ENUM): ");
      sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
LABEL_7:
      sub_10004FE48(&v15);
      break;
    case 11:
      sub_10004FCEC(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 141);
      v11 = sub_10004FD04(&v15, "CHECK failed: (type) != (WireFormatLite::TYPE_MESSAGE): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      goto LABEL_7;
    case 10:
      sub_10004FCEC(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 142);
      v12 = sub_10004FD04(&v15, "CHECK failed: (type) != (WireFormatLite::TYPE_GROUP): ");
      sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
      goto LABEL_7;
  }

  v15.__r_.__value_.__s.__data_[0] = v7;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v16 = 0;
  return sub_100050C80(a1, a2, &v15);
}

void sub_100050C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100050C80(unint64_t a1, int a2, _OWORD *a3)
{
  if ((atomic_load_explicit(&qword_1000B65E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B65E0))
  {
    operator new();
  }

  qword_1000B65D0 = qword_1000B65D8;
  v6 = a3[1];
  v26[0] = *a3;
  v26[1] = v6;
  v7 = 0x9DDFEA08EB382D69 * ((8 * (a1 & 0x1FFFFFFF) + 8) ^ HIDWORD(a1));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a1) ^ (v7 >> 47) ^ v7);
  v9 = (0x9DDFEA08EB382D69 * (v8 ^ (v8 >> 47))) ^ a2;
  v10 = *(qword_1000B65D8 + 8);
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

  v13 = *(*qword_1000B65D8 + 8 * v12);
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

  sub_10004FCEC(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 108);
  v17 = sub_10004FD04(v26, "Multiple extension registrations for type ");
  (*(*a1 + 16))(__p, a1);
  v18 = sub_10004FD30(v17, __p);
  v19 = sub_10004FD04(v18, ", field number ");
  v20 = sub_100050324(v19, a2);
  v21 = sub_10004FD04(v20, ".");
  sub_10004FE40(&v23, &v21->__r_.__value_.__l.__data_);
  if (v25 < 0)
  {
    operator delete(__p[0]);
  }

  return sub_10004FE48(v26);
}

uint64_t sub_100051294(unint64_t a1, int a2, int a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6)
{
  v9 = a3;
  if (a3 != 14)
  {
    sub_10004FCEC(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 164);
    v12 = sub_10004FD04(&v15, "CHECK failed: (type) == (WireFormatLite::TYPE_ENUM): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(&v15);
  }

  v15.__r_.__value_.__s.__data_[0] = v9;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = sub_10005136C;
  v15.__r_.__value_.__r.__words[2] = a6;
  v16 = 0;
  return sub_100050C80(a1, a2, &v15);
}

void sub_100051354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051378(unint64_t a1, int a2, std::string::value_type a3, std::string::value_type a4, std::string::value_type a5, std::string::size_type a6)
{
  if ((a3 & 0xFE) != 0xA)
  {
    sub_10004FCEC(&v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 177);
    v12 = sub_10004FD04(&v15, "CHECK failed: type == WireFormatLite::TYPE_MESSAGE || type == WireFormatLite::TYPE_GROUP: ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(&v15);
  }

  v15.__r_.__value_.__s.__data_[0] = a3;
  v15.__r_.__value_.__s.__data_[1] = a4;
  v15.__r_.__value_.__s.__data_[2] = a5;
  v15.__r_.__value_.__l.__size_ = a6;
  v16 = 0;
  return sub_100050C80(a1, a2, &v15);
}

void sub_100051430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051448(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_100051458(uint64_t a1)
{
  if (!*a1)
  {
    v2 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_100061D80(*v2, (v2 + 8));
    }

    else if (*(a1 + 10))
    {
      v3 = 32 * *(a1 + 10);
      v4 = (v2 + 8);
      do
      {
        sub_100061350(v4);
        v4 += 32;
        v3 -= 32;
      }

      while (v3);
    }

    v5 = *(a1 + 16);
    if (*(a1 + 8) >= 0x101u)
    {
      sub_10006353C(v5 == 0, *(a1 + 16));
    }

    else if (v5)
    {
      v6 = *(a1 + 16);
      operator delete[]();
    }
  }

  return a1;
}

uint64_t sub_100051514(uint64_t result)
{
  if (result)
  {
    operator delete[]();
  }

  return result;
}

uint64_t sub_100051534(uint64_t a1, int a2)
{
  v2 = sub_1000515D8(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 9) == 1)
    {
      sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 231);
      v4 = sub_10004FD04(v8, "CHECK failed: !ext->is_repeated: ");
      sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
      sub_10004FE48(v8);
    }

    v5 = *(v3 + 10) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

void sub_1000515C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000515D8(uint64_t a1, int a2)
{
  if (*(a1 + 8) >= 0x101u)
  {
    return sub_100061618(a1, a2);
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 10);
  v4 = &v2[8 * v3];
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[8 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 8;
    v3 += ~(v3 >> 1);
    v10 = __OFSUB__(v8, a2);
    v9 = v8 - a2 < 0;
    if (v8 >= a2)
    {
      v3 = v5;
    }

    if (v9 != v10)
    {
      v2 = v7;
    }
  }

  if (v2 == v4)
  {
    return 0;
  }

  v12 = *v2;
  v11 = v2 + 2;
  if (v12 == a2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100051640(uint64_t a1)
{
  v7 = 0;
  v1 = *(a1 + 16);
  if (*(a1 + 8) >= 0x101u)
  {
    sub_100061DF0(*v1, (v1 + 8), &v7);
    return v7;
  }

  else
  {
    v2 = *(a1 + 10);
    if (*(a1 + 10))
    {
      LODWORD(result) = 0;
      v4 = 32 * v2;
      v5 = (v1 + 18);
      do
      {
        v6 = *v5;
        v5 += 32;
        result = result + ((v6 & 1) == 0);
        v4 -= 32;
      }

      while (v4);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unsigned __int8 *sub_1000516B8(uint64_t a1, int a2)
{
  result = sub_1000515D8(a1, a2);
  if (result)
  {

    return sub_1000516EC(result);
  }

  return result;
}

uint64_t sub_1000516EC(unsigned __int8 *a1)
{
  if ((a1[9] & 1) == 0)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1700);
    v2 = sub_10004FD04(v9, "CHECK failed: is_repeated: ");
    sub_10004FE40(&v8, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v3 = a1[8];
  if ((v3 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = sub_10004FD04(v9, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = dword_100092BB0[v3];
  if (v5 > 5)
  {
    if (v5 <= 8)
    {
      return **a1;
    }

    if (v5 == 9 || v5 == 10)
    {
      return *(*a1 + 8);
    }
  }

  else if (v5 > 2 || v5 == 1 || v5 == 2)
  {
    return **a1;
  }

  sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1719);
  v7 = sub_10004FD04(v9, "Can't get here.");
  sub_10004FE40(&v8, &v7->__r_.__value_.__l.__data_);
  sub_10004FE48(v9);
  return 0;
}

void sub_100051878(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000518A0(uint64_t a1, int a2)
{
  v2 = sub_1000515D8(a1, a2);
  if (v2)
  {
    v3 = v2;
    if (*(v2 + 10))
    {
      sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 257);
      v4 = sub_10004FD04(v8, "Don't lookup extension types if they aren't present (2). ");
      sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
      sub_10004FE48(v8);
    }

    return *(v3 + 8);
  }

  else
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 253);
    v6 = sub_10004FD04(v8, "Don't lookup extension types if they aren't present (1). ");
    sub_10004FE40(&v7, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
    return 0;
  }
}

void sub_10005195C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10005197C(uint64_t a1, int a2)
{
  result = sub_1000519B0(a1, a2);
  if (result)
  {

    return sub_100051A18(result);
  }

  return result;
}

uint64_t sub_1000519B0(uint64_t a1, int a2)
{
  if (*(a1 + 8) >= 0x101u)
  {
    return sub_100061684(a1, a2);
  }

  v2 = *(a1 + 16);
  v3 = *(a1 + 10);
  v4 = &v2[8 * v3];
  while (v3)
  {
    v5 = v3 >> 1;
    v6 = &v2[8 * (v3 >> 1)];
    v8 = *v6;
    v7 = v6 + 8;
    v3 += ~(v3 >> 1);
    v10 = __OFSUB__(v8, a2);
    v9 = v8 - a2 < 0;
    if (v8 >= a2)
    {
      v3 = v5;
    }

    if (v9 != v10)
    {
      v2 = v7;
    }
  }

  if (v2 == v4)
  {
    return 0;
  }

  v12 = *v2;
  v11 = v2 + 2;
  if (v12 == a2)
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

unsigned __int8 *sub_100051A18(unsigned __int8 *result)
{
  v1 = result;
  if (result[9] == 1)
  {
    v2 = result[8];
    if ((v2 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v3 = sub_10004FD04(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v10, &v3->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v11);
    }

    v4 = dword_100092BB0[v2];
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
        return sub_100046908(*v1);
      }

      else if (v4 == 10)
      {
        return sub_100062AF8(*v1);
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
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v6 = sub_10004FD04(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v11);
    }

    v7 = dword_100092BB0[v5];
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

void sub_100051C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051C54(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 1)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_100051D78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051DA0(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 1)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 1)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_100051F7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100051FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t **a4)
{
  v6 = sub_10005A998(a1, a2);
  *a4 = v6;
  v6[2] = a3;
  return v7 & 1;
}

uint64_t sub_100051FE8(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 1)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_1000726BC(*v4, a3);
}

void sub_10005215C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005218C(uint64_t a1, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 1)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_100072DA0(*v5, a3, &v13);
}

void sub_100052304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052334(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 1)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_100063594(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E4C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 1)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT32): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 348);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100072364(v23, v24 + 1);
    result = sub_100072B4C(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_100072B4C(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_100052604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052644(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 2)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_100052768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052790(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 2)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 2)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_10005296C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000529A4(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_1000756EC(*v4, a3);
}

void sub_100052B18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052B48(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 2)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_100075DD0(*v5, a3, &v13);
}

void sub_100052CC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100052CF0(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 2)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_1000635D4(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E50);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 2)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_INT64): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 349);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100075394(v23, v24 + 1);
    result = sub_100075B7C(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_100075B7C(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_100052FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053000(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 3)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_100053124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005314C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 3)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 3)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_100053328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053360(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 3)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_100073EE8(*v4, a3);
}

void sub_1000534D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053504(uint64_t a1, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 3)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_1000745CC(*v5, a3, &v13);
}

void sub_10005367C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000536AC(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 3)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_100063614(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E54);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 3)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT32): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 350);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100073BA4(v23, v24 + 1);
    result = sub_100074378(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_100074378(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_10005397C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000539BC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 4)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_100053AE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 4)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 4)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_100053CE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053D1C(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_100076EDC(*v4, a3);
}

void sub_100053E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100053EC0(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 4)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_1000775C0(*v5, a3, &v13);
}

void sub_100054038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100054068(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_100063654(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E58);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_UINT64): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 351);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100076B98(v23, v24 + 1);
    result = sub_10007736C(v23);
    *(result + 8 * v24) = a5;
  }

  else
  {
    result = sub_10007736C(v23);
    *(result + 8 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_100054338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

float sub_100054378(uint64_t a1, int a2, float a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 6)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_1000544A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000544CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, float a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 6)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 6)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_1000546B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

float sub_1000546E8(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 6)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_100078690(*v4, a3);
}

void sub_10005485C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005488C(uint64_t a1, int a2, int a3, float a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 6)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_100078D74(*v5, a3, &v13);
}

void sub_100054A04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100054A34(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, float a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 6)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_100063694(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E5C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 6)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_FLOAT): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 352);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_10007834C(v23, v24 + 1);
    result = sub_100078B20(v23);
    *(result + 4 * v24) = a6;
  }

  else
  {
    result = sub_100078B20(v23);
    *(result + 4 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_100054D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

double sub_100054D4C(uint64_t a1, int a2, double a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 5)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_100054E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100054EA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4, double a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a4;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 5)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 5)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a5;
  return result;
}

void sub_100055084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

double sub_1000550BC(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 5)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_100079E98(*v4, a3);
}

void sub_100055230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055260(uint64_t a1, int a2, int a3, double a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_10007A57C(*v5, a3, &v13);
}

void sub_1000553D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055408(uint64_t *a1, uint64_t a2, int a3, int a4, uint64_t a5, double a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a5;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 5)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_1000636D4(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E60);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 5)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_DOUBLE): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 353);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100079B54(v23, v24 + 1);
    result = sub_10007A328(v23);
    *(result + 8 * v24) = a6;
  }

  else
  {
    result = sub_10007A328(v23);
    *(result + 8 * v24) = a6;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_1000556E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055720(uint64_t a1, int a2, char a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 7)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      a3 = *v5;
    }
  }

  return a3 & 1;
}

void sub_100055844(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005586C(uint64_t a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 7)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v9[9] = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = v9[8];
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 7)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  v9[10] &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_100055A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055A80(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_100070EE4(*v4, a3);
}

void sub_100055BF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055C24(uint64_t a1, int a2, int a3, char a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 7)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_1000715F0(*v5, a3, &v13);
}

void sub_100055D9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100055DCC(uint64_t *a1, uint64_t a2, int a3, int a4, char a5, uint64_t a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 7)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_100063714(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E64);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 7)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_BOOL): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 354);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100070B88(v23, v24 + 1);
    result = sub_10007139C(v23);
    *(result + v24) = a5;
  }

  else
  {
    result = sub_10007139C(v23);
    *(result + v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_10005609C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000560DC(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    return *v4;
  }

  return a3;
}

uint64_t sub_10005610C(uint64_t *a1, uint64_t a2, int a3, char a4, uint64_t a5)
{
  v9 = sub_10005A998(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if ((v11 & 1) == 0)
  {
    return *v10;
  }

  *(v9 + 9) = 1;
  *(v9 + 8) = a3;
  *(v9 + 11) = a4;
  v12 = dword_100092BB0[a3];
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
            sub_100063814(v13);
          }

          v14 = sub_100061E5C;
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
            sub_1000637E4(v13);
          }

          v14 = sub_100061E64;
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
            sub_100063784(v15);
          }

          v16 = sub_100061E68;
          goto LABEL_54;
        }

        break;
      case 10:
        v15 = *a1;
        if (v15)
        {
          if (*(v15 + 24))
          {
            sub_100063754(v15);
          }

          v16 = sub_100061E6C;
LABEL_54:
          v17 = sub_10004BF84(v15, 0x18uLL, v16);
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
          sub_1000638A4(v13);
        }

        v14 = sub_100061E54;
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
          sub_100063874(v13);
        }

        v14 = sub_100061E58;
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
          sub_100063844(v13);
        }

        v14 = sub_100061E60;
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
      sub_1000637B4(v13);
    }

LABEL_43:
    v14 = sub_100061E4C;
LABEL_48:
    v17 = sub_10004BF84(v13, 0x10uLL, v14);
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
        sub_1000638D4(v13);
      }

      v14 = sub_100061E50;
      goto LABEL_48;
    }

    goto LABEL_49;
  }

  return *v10;
}

uint64_t sub_1000563FC(uint64_t a1, int a2)
{
  v2 = sub_1000519B0(a1, a2);
  if (!v2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 435);
    v3 = sub_10004FD04(v7, "CHECK failed: extension != NULL: ");
    v4 = sub_10004FD04(v3, "Extension not found.");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  return *v2;
}

void sub_100056478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100056490(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 450);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 8)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 450);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_1000565B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000565DC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5)
{
  result = sub_10005A998(a1, a2);
  v9 = result;
  *(result + 16) = a5;
  if (v10)
  {
    *(result + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v11 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v11->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[a3] != 8)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 460);
      v12 = sub_10004FD04(v18, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_10004FE40(&v17, &v12->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    *(v9 + 9) = 0;
  }

  else
  {
    if (*(result + 9))
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v13 = sub_10004FD04(v18, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v17, &v13->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    v14 = *(v9 + 8);
    if ((v14 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v15 = sub_10004FD04(v18, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v17, &v15->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }

    if (dword_100092BB0[v14] != 8)
    {
      sub_10004FCEC(v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 463);
      v16 = sub_10004FD04(v18, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_10004FE40(&v17, &v16->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v18);
    }
  }

  *(v9 + 10) &= 0xF0u;
  *v9 = a4;
  return result;
}

void sub_1000567B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000567F0(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 471);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 472);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 8)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 472);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return *sub_1000726BC(*v4, a3);
}

void sub_100056964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100056994(uint64_t a1, int a2, int a3, int a4)
{
  v13 = a4;
  v5 = sub_1000519B0(a1, a2);
  if (!v5)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 478);
    v6 = sub_10004FD04(v15, "CHECK failed: extension != NULL: ");
    v7 = sub_10004FD04(v6, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v14, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((*(v5 + 9) & 1) == 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 479);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = *(v5 + 8);
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 8)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 479);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return sub_100072DA0(*v5, a3, &v13);
}

void sub_100056B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100056B3C(uint64_t *a1, uint64_t a2, int a3, int a4, int a5, uint64_t a6)
{
  v11 = sub_10005A998(a1, a2);
  v12 = v11;
  v11[2] = a6;
  if (v13)
  {
    *(v11 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v14 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[a3] != 8)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 488);
      v15 = sub_10004FD04(v28, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_10004FE40(&v27, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
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
      sub_100063594(*a1);
    }

    v17 = sub_10004BF84(v16, 0x10uLL, sub_100061E4C);
    *v17 = 0;
    v17[1] = v16;
    *v12 = v17;
  }

  else
  {
    if ((*(v11 + 9) & 1) == 0)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v18 = sub_10004FD04(v28, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v27, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    v19 = *(v12 + 8);
    if ((v19 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v20 = sub_10004FD04(v28, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v27, &v20->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (dword_100092BB0[v19] != 8)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 494);
      v21 = sub_10004FD04(v28, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_ENUM): ");
      sub_10004FE40(&v27, &v21->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }

    if (*(v12 + 11) != a4)
    {
      sub_10004FCEC(v28, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 495);
      v22 = sub_10004FD04(v28, "CHECK failed: (extension->is_packed) == (packed): ");
      sub_10004FE40(&v27, &v22->__r_.__value_.__l.__data_);
      sub_10004FE48(v28);
    }
  }

  v23 = *v12;
  v24 = *v23;
  if (v24 == v23[1])
  {
    v25 = v24 + 1;
    sub_100072364(v23, v24 + 1);
    result = sub_100072B4C(v23);
    *(result + 4 * v24) = a5;
  }

  else
  {
    result = sub_100072B4C(v23);
    *(result + 4 * v24) = a5;
    v25 = v24 + 1;
  }

  *v23 = v25;
  return result;
}

void sub_100056E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100056E4C(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if ((*(v4 + 10) & 1) == 0)
    {
      if (*(v4 + 9))
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 510);
        v6 = sub_10004FD04(v12, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v11, &v6->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      v7 = v5[8];
      if ((v7 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v8 = sub_10004FD04(v12, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      if (dword_100092BB0[v7] != 9)
      {
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 510);
        v9 = sub_10004FD04(v12, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
        sub_10004FE40(&v11, &v9->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      return *v5;
    }
  }

  return a3;
}

void sub_100056F70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100056F98(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_10005A998(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_10004FD04(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v19, &v10->__r_.__value_.__l.__data_);
      sub_10004FE48(v20);
    }

    if (dword_100092BB0[a3] != 9)
    {
      sub_10004FCEC(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 520);
      v11 = sub_10004FD04(v20, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_10004FE40(&v19, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v20);
    }

    v8[9] = 0;
    v12 = *a1;
    if (!v12)
    {
      operator new();
    }

    if (*(v12 + 24))
    {
      sub_10004D178(v12);
    }

    v13 = sub_10004BF84(v12, 0x18uLL, sub_1000467B8);
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    *v8 = v13;
  }

  else
  {
    if (*(v7 + 9))
    {
      sub_10004FCEC(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v14 = sub_10004FD04(v20, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v19, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v20);
    }

    v15 = v8[8];
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_10004FD04(v20, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v19, &v16->__r_.__value_.__l.__data_);
      sub_10004FE48(v20);
    }

    if (dword_100092BB0[v15] != 9)
    {
      sub_10004FCEC(v20, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 524);
      v17 = sub_10004FD04(v20, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_10004FE40(&v19, &v17->__r_.__value_.__l.__data_);
      sub_10004FE48(v20);
    }
  }

  v8[10] &= 0xF0u;
  return *v8;
}

void sub_1000571D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005720C(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 533);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 534);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 9)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 534);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return sub_1000469CC(*v4, a3);
}

void sub_10005737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000573AC(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000519B0(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 540);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 541);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 9)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 541);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return sub_100061EA4(*v4, a3);
}

void sub_10005751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10005754C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = sub_10005A998(a1, a2);
  v8 = v7;
  v7[2] = a4;
  if (v9)
  {
    *(v7 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v10 = sub_10004FD04(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v26, &v10->__r_.__value_.__l.__data_);
      sub_10004FE48(v27);
    }

    if (dword_100092BB0[a3] != 9)
    {
      sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 550);
      v11 = sub_10004FD04(v27, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_10004FE40(&v26, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v27);
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
      sub_100063904(v12);
    }

    v13 = sub_10004BF84(v12, 0x18uLL, sub_100061E68);
    v13[2] = 0;
    *v13 = v12;
    v13[1] = 0;
    *v8 = v13;
  }

  else
  {
    if ((*(v7 + 9) & 1) == 0)
    {
      sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v14 = sub_10004FD04(v27, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v26, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v27);
    }

    v15 = *(v8 + 8);
    if ((v15 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v16 = sub_10004FD04(v27, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v26, &v16->__r_.__value_.__l.__data_);
      sub_10004FE48(v27);
    }

    if (dword_100092BB0[v15] != 9)
    {
      sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 556);
      v17 = sub_10004FD04(v27, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_STRING): ");
      sub_10004FE40(&v26, &v17->__r_.__value_.__l.__data_);
      sub_10004FE48(v27);
    }
  }

  v18 = *v8;
  v19 = *(v18 + 16);
  if (!v19)
  {
    v21 = *(v18 + 12);
LABEL_22:
    sub_10007BCC0(v18, v21 + 1);
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
    sub_10004D178(*v18);
  }

  result = sub_10004BF84(v23, 0x18uLL, sub_1000467B8);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v24 = *(v18 + 8);
  v25 = *(v18 + 16) + 8 * v24;
  *(v18 + 8) = v24 + 1;
  *(v25 + 8) = result;
  return result;
}

void sub_100057860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100057898(uint64_t a1, int a2, uint64_t a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (*(v4 + 9))
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 571);
      v6 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
    }

    v7 = *(v5 + 8);
    if ((v7 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v8 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
    }

    if (dword_100092BB0[v7] != 10)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 571);
      v9 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
    }

    v10 = *v5;
    if ((*(v5 + 10) & 0x10) != 0)
    {
      return (*(*v10 + 24))(v10, a3);
    }

    return v10;
  }

  return a3;
}

void sub_1000579F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100057A18(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10005A998(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_10004FD04(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v20, &v12->__r_.__value_.__l.__data_);
      sub_10004FE48(v21);
    }

    if (dword_100092BB0[a3] != 10)
    {
      sub_10004FCEC(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 591);
      v13 = sub_10004FD04(v21, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_10004FE40(&v20, &v13->__r_.__value_.__l.__data_);
      sub_10004FE48(v21);
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
      sub_10004FCEC(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v15 = sub_10004FD04(v21, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
      sub_10004FE40(&v20, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v21);
    }

    v16 = *(v10 + 8);
    if ((v16 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v17 = sub_10004FD04(v21, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v20, &v17->__r_.__value_.__l.__data_);
      sub_10004FE48(v21);
    }

    if (dword_100092BB0[v16] != 10)
    {
      sub_10004FCEC(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 598);
      v18 = sub_10004FD04(v21, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_10004FE40(&v20, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v21);
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

void sub_100057C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100057CAC(uint64_t **a1, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  if (a5)
  {
    v9 = a5[1];
    if (v9)
    {
      v9 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_10005A998(a1, a2);
    v11 = result;
    *(result + 2) = a4;
    if (v12)
    {
      result[8] = a3;
      if ((a3 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v13 = sub_10004FD04(v22, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v21, &v13->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v22);
      }

      if (dword_100092BB0[a3] != 10)
      {
        sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 624);
        v14 = sub_10004FD04(v22, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        sub_10004FE40(&v21, &v14->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v22);
      }

      v11[9] = 0;
      v11[10] &= 0xFu;
      if (v9 != *a1)
      {
        if (v9)
        {
LABEL_11:
          v15 = (*(*a5 + 32))(a5);
          *v11 = v15;
          result = (*(*v15 + 64))(v15, a5);
LABEL_32:
          v11[10] &= 0xF0u;
          return result;
        }

LABEL_30:
        *v11 = a5;
        result = sub_100058024(*a1, a5);
        goto LABEL_32;
      }
    }

    else
    {
      if (result[9])
      {
        sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 637);
        v16 = sub_10004FD04(v22, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v21, &v16->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v22);
      }

      v17 = v11[8];
      if ((v17 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v18 = sub_10004FD04(v22, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v21, &v18->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v22);
      }

      if (dword_100092BB0[v17] != 10)
      {
        sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 637);
        v19 = sub_10004FD04(v22, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        sub_10004FE40(&v21, &v19->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v22);
      }

      if ((v11[10] & 0x10) != 0)
      {
        result = (*(**v11 + 40))(*v11, a5);
        goto LABEL_32;
      }

      v20 = *a1;
      if (!*a1)
      {
        result = *v11;
        if (*v11)
        {
          result = (*(*result + 8))(result);
          v20 = *a1;
        }

        else
        {
          v20 = 0;
        }
      }

      if (v9 != v20)
      {
        if (v9)
        {
          goto LABEL_11;
        }

        goto LABEL_30;
      }
    }

    *v11 = a5;
    goto LABEL_32;
  }

  result = sub_1000519B0(a1, a2);
  if (result)
  {

    return sub_100051A18(result);
  }

  return result;
}

void sub_100057FEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_100058024(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    return sub_10004C0E8(result, a2, sub_100061F84);
  }

  return result;
}

unsigned __int8 *sub_100058040(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    result = sub_10005A998(a1, a2);
    v10 = result;
    *(result + 2) = a4;
    if (v11)
    {
      result[8] = a3;
      if ((a3 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v12 = sub_10004FD04(v19, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v18, &v12->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v19);
      }

      if (dword_100092BB0[a3] != 10)
      {
        sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 668);
        v13 = sub_10004FD04(v19, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        sub_10004FE40(&v18, &v13->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v19);
      }

      v10[9] = 0;
      v10[10] &= 0xFu;
    }

    else
    {
      if (result[9])
      {
        sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 673);
        v14 = sub_10004FD04(v19, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
        sub_10004FE40(&v18, &v14->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v19);
      }

      v15 = v10[8];
      if ((v15 - 19) <= 0xFFFFFFED)
      {
        sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
        v16 = sub_10004FD04(v19, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
        sub_10004FE40(&v18, &v16->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v19);
      }

      if (dword_100092BB0[v15] != 10)
      {
        sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 673);
        v17 = sub_10004FD04(v19, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
        sub_10004FE40(&v18, &v17->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v19);
      }

      if ((v10[10] & 0x10) != 0)
      {
        result = (*(**v10 + 48))(*v10, a5);
        goto LABEL_24;
      }

      if (!*a1)
      {
        result = *v10;
        if (*v10)
        {
          result = (*(*result + 8))(result);
        }
      }
    }

    *v10 = a5;
LABEL_24:
    v10[10] &= 0xF0u;
    return result;
  }

  result = sub_1000519B0(a1, a2);
  if (result)
  {

    return sub_100051A18(result);
  }

  return result;
}

void sub_1000582DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100058314(void *a1, int a2, uint64_t a3)
{
  v6 = sub_1000519B0(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (*(v6 + 9))
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 693);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = v7[8];
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 10)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 693);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if ((v7[10] & 0x10) != 0)
  {
    v12 = (*(**v7 + 56))(*v7, a3);
    if (!*a1 && *v7)
    {
      (*(**v7 + 8))(*v7);
    }
  }

  else
  {
    v12 = *v7;
    if (*a1)
    {
      v12 = (*(*v12 + 24))(*v7);
      (*(*v12 + 64))(v12, *v7);
    }
  }

  sub_100058550(a1, a2);
  return v12;
}

void sub_100058528(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_100058550(uint64_t a1, int a2)
{
  v12 = a2;
  v3 = *(a1 + 8);
  result = *(a1 + 16);
  if (v3 >= 0x101)
  {
    return sub_100062F68(result, &v12);
  }

  v5 = *(a1 + 10);
  v6 = &result[32 * v5];
  if (*(a1 + 10))
  {
    v7 = *(a1 + 10);
    do
    {
      v8 = v7 >> 1;
      v9 = &result[32 * (v7 >> 1)];
      v11 = *v9;
      v10 = (v9 + 8);
      v7 += ~(v7 >> 1);
      if (v11 < a2)
      {
        result = v10;
      }

      else
      {
        v7 = v8;
      }
    }

    while (v7);
  }

  if (result != v6 && *result == a2)
  {
    if (v6 != result + 32)
    {
      result = memmove(result, result + 32, v6 - (result + 32));
      LOWORD(v5) = *(a1 + 10);
    }

    *(a1 + 10) = v5 - 1;
  }

  return result;
}

uint64_t sub_100058600(void *a1, int a2, uint64_t a3)
{
  v6 = sub_1000519B0(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (*(v6 + 9))
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 722);
    v8 = sub_10004FD04(v15, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (OPTIONAL_FIELD): ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v9 = v7[8];
  if ((v9 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v10 = sub_10004FD04(v15, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (dword_100092BB0[v9] != 10)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 722);
    v11 = sub_10004FD04(v15, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  v12 = *v7;
  if ((v7[10] & 0x10) != 0)
  {
    v12 = (*(*v12 + 64))(*v7, a3);
    if (!*a1)
    {
      if (*v7)
      {
        (*(**v7 + 8))(*v7);
      }
    }
  }

  sub_100058550(a1, a2);
  return v12;
}

void sub_1000587B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000587DC(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000515D8(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 744);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 745);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 10)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 745);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return sub_100061FB0(*v4, a3);
}

void sub_10005894C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005897C(uint64_t a1, int a2, int a3)
{
  v4 = sub_1000519B0(a1, a2);
  if (!v4)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 751);
    v5 = sub_10004FD04(v13, "CHECK failed: extension != NULL: ");
    v6 = sub_10004FD04(v5, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if ((*(v4 + 9) & 1) == 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 752);
    v7 = sub_10004FD04(v13, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v8 = *(v4 + 8);
  if ((v8 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v9 = sub_10004FD04(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (dword_100092BB0[v8] != 10)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 752);
    v10 = sub_10004FD04(v13, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return sub_100062090(*v4, a3);
}

void sub_100058AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100058B1C(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10005A998(a1, a2);
  v10 = v9;
  v9[2] = a5;
  if (v11)
  {
    *(v9 + 8) = a3;
    if ((a3 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_10004FD04(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v25, &v12->__r_.__value_.__l.__data_);
      sub_10004FE48(v26);
    }

    if (dword_100092BB0[a3] != 10)
    {
      sub_10004FCEC(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 762);
      v13 = sub_10004FD04(v26, "CHECK failed: (cpp_type(extension->type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_10004FE40(&v25, &v13->__r_.__value_.__l.__data_);
      sub_10004FE48(v26);
    }

    v10[9] = 1;
    v14 = *a1;
    if (!*a1)
    {
      operator new();
    }

    if (*(v14 + 24))
    {
      sub_100063944(*a1);
    }

    v15 = sub_10004BF84(v14, 0x18uLL, sub_100061E6C);
    v15[2] = 0;
    *v15 = v14;
    v15[1] = 0;
    *v10 = v15;
  }

  else
  {
    if ((*(v9 + 9) & 1) == 0)
    {
      sub_10004FCEC(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v16 = sub_10004FD04(v26, "CHECK failed: ((*extension).is_repeated ? REPEATED_FIELD : OPTIONAL_FIELD) == (REPEATED_FIELD): ");
      sub_10004FE40(&v25, &v16->__r_.__value_.__l.__data_);
      sub_10004FE48(v26);
    }

    v17 = v10[8];
    if ((v17 - 19) <= 0xFFFFFFED)
    {
      sub_10004FCEC(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v18 = sub_10004FD04(v26, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v25, &v18->__r_.__value_.__l.__data_);
      sub_10004FE48(v26);
    }

    if (dword_100092BB0[v17] != 10)
    {
      sub_10004FCEC(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 767);
      v19 = sub_10004FD04(v26, "CHECK failed: (cpp_type((*extension).type)) == (WireFormatLite::CPPTYPE_MESSAGE): ");
      sub_10004FE40(&v25, &v19->__r_.__value_.__l.__data_);
      sub_10004FE48(v26);
    }
  }

  v20 = *v10;
  v21 = *(*v10 + 16);
  if (!v21 || (v22 = *(v20 + 8), v22 >= *v21) || (*(v20 + 8) = v22 + 1, (v23 = *&v21[2 * v22 + 2]) == 0))
  {
    v23 = (*(*a4 + 32))(a4, *a1);
    sub_100062170(*v10, v23);
  }

  return v23;
}

void sub_100058DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100058E0C(uint64_t a1, int a2)
{
  result = sub_1000519B0(a1, a2);
  v3 = result;
  if (!result)
  {
    sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 791);
    v4 = sub_10004FD04(v25, "CHECK failed: extension != NULL: ");
    v5 = sub_10004FD04(v4, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v24, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v25);
  }

  if ((*(v3 + 9) & 1) == 0)
  {
    sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 792);
    v6 = sub_10004FD04(v25, "CHECK failed: extension->is_repeated: ");
    sub_10004FE40(&v24, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v25);
  }

  v7 = *(v3 + 8);
  if ((v7 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v8 = sub_10004FD04(v25, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v24, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v25);
  }

  v9 = dword_100092BB0[v7];
  if (v9 <= 5)
  {
    if (v9 <= 2)
    {
      if (v9 != 1)
      {
        if (v9 != 2)
        {
          return result;
        }

        v10 = *v3;
        v11 = *v10;
        if (*v10 > 0)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v10 = *v3;
      v11 = *v10;
      if (*v10 > 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (v9 == 3)
      {
        v10 = *v3;
        v11 = *v10;
        if (*v10 <= 0)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      if (v9 != 4)
      {
        v10 = *v3;
        v11 = *v10;
        if (*v10 <= 0)
        {
          goto LABEL_36;
        }

LABEL_37:
        *v10 = v11 - 1;
        return result;
      }

      v10 = *v3;
      v11 = *v10;
      if (*v10 > 0)
      {
        goto LABEL_37;
      }
    }

LABEL_36:
    sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v17 = sub_10004FD04(v25, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v24, &v17->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v25);
    v11 = *v10;
    goto LABEL_37;
  }

  if (v9 <= 7)
  {
    if (v9 == 6)
    {
      v10 = *v3;
      v11 = *v10;
      if (*v10 <= 0)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v10 = *v3;
      v11 = *v10;
      if (*v10 <= 0)
      {
        goto LABEL_36;
      }
    }

    goto LABEL_37;
  }

  switch(v9)
  {
    case 8:
      v10 = *v3;
      v11 = *v10;
      if (*v10 <= 0)
      {
        goto LABEL_36;
      }

      goto LABEL_37;
    case 9:
      v18 = *v3;
      v19 = v18[2];
      if (v19 <= 0)
      {
        sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
        v20 = sub_10004FD04(v25, "CHECK failed: (current_size_) > (0): ");
        sub_10004FE40(&v24, &v20->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v25);
        v19 = v18[2];
      }

      v21 = v19 - 1;
      v22 = *(v18 + 2) + 8 * v21;
      v18[2] = v21;
      v23 = *(v22 + 8);
      if (*(v23 + 23) < 0)
      {
        **v23 = 0;
        *(v23 + 8) = 0;
      }

      else
      {
        *v23 = 0;
        *(v23 + 23) = 0;
      }

      break;
    case 10:
      v12 = *v3;
      v13 = v12[2];
      if (v13 <= 0)
      {
        sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
        v14 = sub_10004FD04(v25, "CHECK failed: (current_size_) > (0): ");
        sub_10004FE40(&v24, &v14->__r_.__value_.__l.__data_);
        sub_10004FE48(v25);
        v13 = v12[2];
      }

      v15 = v13 - 1;
      v16 = *(v12 + 2) + 8 * v15;
      v12[2] = v15;
      return (*(**(v16 + 8) + 40))(*(v16 + 8));
  }

  return result;
}

void sub_1000592F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005936C(uint64_t a1, int a2)
{
  v2 = sub_1000519B0(a1, a2);
  if (!v2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 830);
    v3 = sub_10004FD04(v11, "CHECK failed: extension != NULL: ");
    v4 = sub_10004FD04(v3, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if ((*(v2 + 9) & 1) == 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 831);
    v5 = sub_10004FD04(v11, "CHECK failed: extension->is_repeated: ");
    sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v6 = *(v2 + 8);
  if ((v6 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v7 = sub_10004FD04(v11, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (dword_100092BB0[v6] != 10)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 832);
    v8 = sub_10004FD04(v11, "CHECK failed: cpp_type(extension->type) == WireFormatLite::CPPTYPE_MESSAGE: ");
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  return sub_1000622A4(*v2);
}

void sub_1000594CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_1000594FC(uint64_t a1, int a2, int a3, int a4)
{
  v6 = sub_1000519B0(a1, a2);
  if (!v6)
  {
    sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 838);
    v7 = sub_10004FD04(v16, "CHECK failed: extension != NULL: ");
    v8 = sub_10004FD04(v7, "Index out-of-bounds (field is empty).");
    sub_10004FE40(&v15, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v16);
  }

  if ((*(v6 + 9) & 1) == 0)
  {
    sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 839);
    v9 = sub_10004FD04(v16, "CHECK failed: extension->is_repeated: ");
    sub_10004FE40(&v15, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v16);
  }

  v10 = *(v6 + 8);
  if ((v10 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v11 = sub_10004FD04(v16, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v15, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v16);
  }

  v12 = dword_100092BB0[v10];
  if (v12 <= 5)
  {
    if (v12 > 2)
    {
      if (v12 == 3)
      {
        sub_100074F90(*v6, a3, a4);
      }

      else if (v12 == 4)
      {
        sub_100077F48(*v6, a3, a4);
      }

      else
      {
        sub_10007AF1C(*v6, a3, a4);
      }

      return;
    }

    if (v12 != 1)
    {
      if (v12 == 2)
      {
        sub_100076758(*v6, a3, a4);
      }

      return;
    }

LABEL_22:
    sub_100073764(*v6, a3, a4);
    return;
  }

  if (v12 <= 7)
  {
    if (v12 == 6)
    {
      sub_100079750(*v6, a3, a4);
    }

    else
    {
      sub_100071F34(*v6, a3, a4);
    }

    return;
  }

  if (v12 == 8)
  {
    goto LABEL_22;
  }

  if (v12 == 9 || v12 == 10)
  {
    v13 = *(*v6 + 16) + 8;
    v14 = *(v13 + 8 * a3);
    *(v13 + 8 * a3) = *(v13 + 8 * a4);
    *(v13 + 8 * a4) = v14;
  }
}

void sub_100059730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_100059758(unsigned __int8 *result)
{
  v2 = *(result + 2);
  if (*(result + 4) >= 0x101u)
  {
    v7 = *v2;
    v6 = (v2 + 1);
    v5 = v7;

    return sub_1000623D0(v5, v6);
  }

  else if (*(result + 5))
  {
    v3 = 32 * *(result + 5);
    v4 = (v2 + 1);
    do
    {
      result = sub_100051A18(v4);
      v4 += 32;
      v3 -= 32;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1000597C0(uint64_t result, size_t __sz)
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
          sub_100063984(*result);
          v8 = 32 * v2;
        }

        result = sub_10004C500(v7, v8);
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
        sub_1000639C0(*result);
      }

      result = sub_10004BF84(v7, 0x18uLL, sub_100062D20);
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
          result = sub_100062D28(v9, v10, &v15);
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

    *(v4 + 8) = v2;
    *(v4 + 16) = v9;
    if (v2 >= 0x101u)
    {
      *(v4 + 10) = 0;
    }
  }

  return result;
}

uint64_t sub_100059980(char *a1, char *a2, void *a3, void *a4)
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

void sub_100059A88(uint64_t *a1, uint64_t a2, void *a3)
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
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v12 = sub_10004FD04(v69, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_10004FE40(&v68, &v12->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
    }

    v13 = dword_100092BB0[v11];
    if (v13 <= 5)
    {
      if (v13 <= 2)
      {
        if (v13 == 1)
        {
          sub_100051DA0(a1, a2, *(a3 + 8), *a3, a3[2]);
        }

        else if (v13 == 2)
        {
          sub_100052790(a1, a2, *(a3 + 8), *a3, a3[2]);
        }
      }

      else if (v13 == 3)
      {
        sub_10005314C(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else if (v13 == 4)
      {
        sub_100053B08(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      else
      {
        sub_100054EA0(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      return;
    }

    if (v13 <= 7)
    {
      if (v13 == 6)
      {
        sub_1000544CC(a1, a2, *(a3 + 8), a3[2], *a3);
      }

      else
      {
        sub_10005586C(a1, a2, *(a3 + 8), *a3, a3[2]);
      }

      return;
    }

    if (v13 == 8)
    {
      sub_1000565DC(a1, a2, *(a3 + 8), *a3, a3[2]);
      return;
    }

    if (v13 == 9)
    {
      v44 = *(a3 + 8);
      v45 = *a3;
      if (*(*a3 + 23) < 0)
      {
        sub_100019AD4(&v66, *v45, *(v45 + 1));
      }

      else
      {
        v46 = *v45;
        v67 = *(v45 + 2);
        v66 = v46;
      }

      v54 = sub_100056F98(a1, a2, v44, a3[2]);
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
    v25 = sub_10005A998(a1, a2);
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
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1026);
      v47 = sub_10004FD04(v69, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_10004FE40(&v68, &v47->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
    }

    if (*(v26 + 11) != *(a3 + 11))
    {
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1027);
      v48 = sub_10004FD04(v69, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_10004FE40(&v68, &v48->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
    }

    if (*(v26 + 9) == 1)
    {
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 1028);
      v49 = sub_10004FD04(v69, "CHECK failed: !extension->is_repeated: ");
      sub_10004FE40(&v68, &v49->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
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
  v7 = sub_10005A998(a1, a2);
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
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 931);
      v14 = sub_10004FD04(v69, "CHECK failed: (extension->type) == (other_extension.type): ");
      sub_10004FE40(&v68, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
    }

    if (*(v8 + 11) != *(a3 + 11))
    {
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 932);
      v15 = sub_10004FD04(v69, "CHECK failed: (extension->is_packed) == (other_extension.is_packed): ");
      sub_10004FE40(&v68, &v15->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
    }

    if ((*(v8 + 9) & 1) == 0)
    {
      sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 933);
      v16 = sub_10004FD04(v69, "CHECK failed: extension->is_repeated: ");
      sub_10004FE40(&v68, &v16->__r_.__value_.__l.__data_);
      sub_10004FE48(v69);
    }
  }

  v17 = *(a3 + 8);
  if ((v17 - 19) <= 0xFFFFFFED)
  {
    sub_10004FCEC(v69, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v18 = sub_10004FD04(v69, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_10004FE40(&v68, &v18->__r_.__value_.__l.__data_);
    sub_10004FE48(v69);
  }

  v19 = dword_100092BB0[v17];
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
            sub_100063614(v37);
          }

          v38 = sub_10004BF84(v37, 0x10uLL, sub_100061E54);
          *v38 = 0;
          *(v38 + 8) = v37;
          *v8 = v38;
        }

        else
        {
          v38 = *v8;
        }

        sub_100074A78(v38, *a3);
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
            sub_100063654(v40);
          }

          v41 = sub_10004BF84(v40, 0x10uLL, sub_100061E58);
          *v41 = 0;
          *(v41 + 8) = v40;
          *v8 = v41;
        }

        else
        {
          v41 = *v8;
        }

        sub_100077A6C(v41, *a3);
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
            sub_1000636D4(v20);
          }

          v21 = sub_10004BF84(v20, 0x10uLL, sub_100061E60);
          *v21 = 0;
          *(v21 + 8) = v20;
          *v8 = v21;
        }

        else
        {
          v21 = *v8;
        }

        sub_10007AA38(v21, *a3);
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
            sub_1000635D4(v30);
          }

          v31 = sub_10004BF84(v30, 0x10uLL, sub_100061E50);
          *v31 = 0;
          *(v31 + 8) = v30;
          *v8 = v31;
        }

        else
        {
          v31 = *v8;
        }

        sub_10007627C(v31, *a3);
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
          sub_100063694(v35);
        }

        v36 = sub_10004BF84(v35, 0x10uLL, sub_100061E5C);
        *v36 = 0;
        *(v36 + 8) = v35;
        *v8 = v36;
      }

      else
      {
        v36 = *v8;
      }

      sub_100079230(v36, *a3);
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
          sub_100063714(v32);
        }

        v33 = sub_10004BF84(v32, 0x10uLL, sub_100061E64);
        *v33 = 0;
        *(v33 + 8) = v32;
        *v8 = v33;
      }

      else
      {
        v33 = *v8;
      }

      sub_100071AA4(v33, *a3);
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
              sub_100063594(v34);
            }

LABEL_81:
            v39 = sub_10004BF84(v34, 0x10uLL, sub_100061E4C);
            *v39 = 0;
            *(v39 + 8) = v34;
            *v8 = v39;
LABEL_108:
            sub_10007324C(v39, *a3);
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
            sub_100063904(v42);
          }

          v43 = sub_10004BF84(v42, 0x18uLL, sub_100061E68);
          v43[2] = 0;
          *v43 = v42;
          v43[1] = 0;
          *v8 = v43;
        }

        else
        {
          v43 = *v8;
        }

        sub_100046C0C(v43, *a3);
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
            sub_100063944(*a1);
          }

          v23 = sub_10004BF84(v22, 0x18uLL, sub_100061E6C);
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
            v59 = sub_100061FB0(v57, v58);
            v60 = v59;
            v61 = *v8;
            v62 = *(*v8 + 16);
            if (!v62 || (v63 = *(v61 + 8), v63 >= *v62) || (*(v61 + 8) = v63 + 1, (v64 = *&v62[2 * v63 + 2]) == 0))
            {
              v64 = (*(*v59 + 32))(v59, *a1);
              sub_100062170(*v8, v64);
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

uint64_t sub_10005A6F8(uint64_t result, uint64_t a2)
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
    sub_10008D64C(&v7, a2);
    sub_100059758(a2);
    sub_10008D64C(a2, v3);
    sub_100059758(v3);
    sub_10008D64C(v3, &v7);
    return sub_100051458(&v7);
  }

  return result;
}

void sub_10005A7B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051458(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10005A7C4(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    v6 = sub_1000519B0(result, a3);
    result = sub_1000519B0(a2, a3);
    if (v6 | result)
    {
      v7 = result;
      if (v6 && result)
      {
        if (*v5 == *a2)
        {
          v9 = *(v6 + 16);
          v10 = *v6;
          v11 = *(result + 16);
          *v6 = *result;
          *(v6 + 16) = v11;
          *result = v10;
          *(result + 16) = v9;
        }

        else
        {
          v17 = 0;
          v18 = 0;
          v19 = 0;
          sub_100059A88(&v17, a3, result);
          v8 = sub_1000519B0(&v17, a3);
          sub_100051A18(v7);
          sub_100059A88(a2, a3, v6);
          sub_100051A18(v6);
          sub_100059A88(v5, a3, v8);
          return sub_100051458(&v17);
        }
      }

      else
      {
        if (v6)
        {
          if (result)
          {
            return result;
          }

          if (*v5 == *a2)
          {
            v15 = sub_10005A998(a2, a3);
            v16 = *(v6 + 16);
            *v15 = *v6;
            v15[2] = v16;
          }

          else
          {
            sub_100059A88(a2, a3, v6);
          }

          v14 = v5;
        }

        else
        {
          if (*v5 == *a2)
          {
            v12 = sub_10005A998(v5, a3);
            v13 = *(v7 + 16);
            *v12 = *v7;
            v12[2] = v13;
          }

          else
          {
            sub_100059A88(v5, a3, result);
          }

          v14 = a2;
        }

        return sub_100058550(v14, a3);
      }
    }
  }

  return result;
}

void sub_10005A980(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100051458(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10005A998(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= 0x101)
  {
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v14 = a2;
    return sub_100062C54(v4, &v14) + 5;
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

    sub_1000597C0(a1, v6 + 1);
    return sub_10005A998(a1, a2);
  }
}