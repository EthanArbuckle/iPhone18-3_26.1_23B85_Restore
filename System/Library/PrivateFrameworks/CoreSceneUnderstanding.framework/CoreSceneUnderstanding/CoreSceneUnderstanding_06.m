unsigned __int8 *sub_1AC0FEFB8(uint64_t a1)
{
  result = sub_1AC0FFC34((a1 + 16));
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AC0FF00C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v22 = a2;
  if ((sub_1AC0FF968(a3, &v22, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v22 + 1;
      v6 = *v22;
      if ((*v22 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_1AC119AE0(v22, v7 - 128);
      v22 = v19;
      if (!v19)
      {
        return 0;
      }

      v5 = v19;
      v6 = v20;
LABEL_6:
      if (v6 == 10)
      {
        v11 = v5 - 1;
        while (1)
        {
          v12 = v11 + 1;
          v22 = v11 + 1;
          v13 = *(a1 + 32);
          if (!v13)
          {
            break;
          }

          v18 = *(a1 + 24);
          v14 = *v13;
          if (v18 < *v13)
          {
            *(a1 + 24) = v18 + 1;
            v15 = *&v13[2 * v18 + 2];
            goto LABEL_23;
          }

          if (v14 == *(a1 + 28))
          {
            goto LABEL_19;
          }

LABEL_20:
          *v13 = v14 + 1;
          v15 = sub_1AC0FF6A4(*(a1 + 16));
          v16 = *(a1 + 24);
          v17 = *(a1 + 32) + 8 * v16;
          *(a1 + 24) = v16 + 1;
          *(v17 + 8) = v15;
          v12 = v22;
LABEL_23:
          v11 = sub_1AC122378(a3, v15, v12);
          v22 = v11;
          if (!v11)
          {
            return 0;
          }

          if (*a3 <= v11 || *v11 != 10)
          {
            goto LABEL_14;
          }
        }

        v14 = *(a1 + 28);
LABEL_19:
        sub_1AC11EDA8(a1 + 16, v14 + 1);
        v13 = *(a1 + 32);
        v14 = *v13;
        goto LABEL_20;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v22;
      }

      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = (v9 & 0xFFFFFFFFFFFFFFFELL) + 8;
      }

      else
      {
        v10 = sub_1AC0FFAA8((a1 + 8));
        v5 = v22;
      }

      v22 = sub_1AC119FE0(v6, v10, v5, a3);
      if (!v22)
      {
        return 0;
      }

LABEL_14:
      if (sub_1AC0FF968(a3, &v22, a3[11].i32[1]))
      {
        return v22;
      }
    }

    v5 = v22 + 2;
LABEL_5:
    v22 = v5;
    goto LABEL_6;
  }

  return v22;
}

char *sub_1AC0FF1DC(uint64_t a1, char *__dst, unint64_t *a3)
{
  v6 = *(a1 + 24);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= __dst)
      {
        __dst = sub_1AC10C538(a3, __dst);
      }

      v8 = sub_1AC0F3B60(a1 + 16, i);
      *__dst = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        __dst[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = __dst + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          __dst[2] = v11;
          v10 = __dst + 3;
        }
      }

      else
      {
        __dst[1] = v9;
        v10 = __dst + 2;
      }

      __dst = sub_1AC0FE8C8(v8, v10, a3);
    }
  }

  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return __dst;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - __dst) >= v17)
  {
    v19 = v17;
    memcpy(__dst, v18, v17);
    __dst += v19;
    return __dst;
  }

  return sub_1AC10C650(a3, v18, v17, __dst);
}

uint64_t sub_1AC0FF344(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = (v3 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (v2)
  {
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = sub_1AC0FEAB4(v6);
      v2 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      v5 -= 8;
    }

    while (v5);
  }

  else
  {
    v2 = 0;
  }

  v8 = *(a1 + 8);
  if (v8)
  {
    v10 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    v2 += v11;
  }

  *(a1 + 40) = v2;
  return v2;
}

void sub_1AC0FF3E8(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D1C18, 0))
  {
    sub_1AC1002AC();
  }

  sub_1AC0FF470(a1, lpsrc);
}

void sub_1AC0FF470(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece.pb.cc", 877);
    v4 = sub_1AC10CFDC(v14, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v13, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v14);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_1AC100100(a1 + 16, a2 + 16);
}

void sub_1AC0FF53C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AC0FF55C(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_1AC0F3B60(a1, v2);
    if (!sub_1AC1121F4(v5 + 16))
    {
      break;
    }
  }

  while (sub_1AC0FEDD4(v5 + 48));
  return v3 < 1;
}

uint64_t sub_1AC0FF5D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D1BE8, 80);
  }

  v2 = sub_1AC10B8C0(a1, 80);
  sub_1AC0FD360(v2, a1);
  return v2;
}

uint64_t sub_1AC0FF6A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D1C00, 88);
  }

  v2 = sub_1AC10B8C0(a1, 88);
  sub_1AC0FE34C(v2, a1);
  return v2;
}

uint64_t sub_1AC0FF774(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D1C18, 48);
  }

  v2 = sub_1AC10B8C0(a1, 48);
  sub_1AC0FEE3C(v2, a1);
  return v2;
}

uint64_t sub_1AC0FF894(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_1AC10CFC4(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 363);
    v3 = sub_1AC10CFDC(v6, "CHECK failed: !tagged_ptr_.IsTagged(): ");
    sub_1AC10D118(&v5, &v3->__r_.__value_.__l.__data_);
    sub_1AC10D120(v6);
    result = *a1;
  }

  if (!result)
  {
    sub_1AC10CFC4(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/arenastring.h", 364);
    v4 = sub_1AC10CFDC(v6, "CHECK failed: tagged_ptr_.UnsafeGet() != nullptr: ");
    sub_1AC10D118(&v5, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v6);
    return *a1;
  }

  return result;
}

void sub_1AC0FF948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC0FF968(uint64_t a1, char **a2, int a3)
{
  v6 = *a2;
  if (!*a2)
  {
    sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 209);
    v7 = sub_1AC10CFDC(v13, "CHECK failed: *ptr: ");
    sub_1AC10D118(&v12, &v7->__r_.__value_.__l.__data_);
    sub_1AC10D120(v13);
    v6 = *a2;
  }

  if (v6 >= *a1)
  {
    v10 = v6 - *(a1 + 8);
    if (v10 >= 17)
    {
      sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 212);
      v11 = sub_1AC10CFDC(v13, "CHECK failed: (overrun) <= (kSlopBytes): ");
      sub_1AC10D118(&v12, &v11->__r_.__value_.__l.__data_);
      sub_1AC10D120(v13);
    }

    if (*(a1 + 28) == v10)
    {
      if (v10 >= 1 && !*(a1 + 16))
      {
        *a2 = 0;
      }

      v8 = 1;
    }

    else
    {
      *a2 = sub_1AC11959C(a1, v10, a3);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

void sub_1AC0FFA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1AC0FFAA8(unint64_t *a1)
{
  v2 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_7:
    operator new();
  }

  v2 = *(v2 & 0xFFFFFFFFFFFFFFFELL);
  if (!v2)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (*(v2 + 24))
  {
    (*(**(*(v2 + 32) + 32) + 40))(*(*(v2 + 32) + 32), &unk_1F20D1C40, 32);
  }

  v3 = sub_1AC10B5C4(v2, 0x20uLL, sub_1AC0FFB70);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *a1 = v3 | 1;
  *v3 = v2;
  return v3 + 8;
}

void sub_1AC0FFB70(uint64_t a1)
{
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }
}

unsigned __int8 *sub_1AC0FFB84(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1AC10CFC4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1AC10CFDC(v7, "CHECK failed: (n) >= (0): ");
    sub_1AC10D118(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1AC10D120(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1AC0FD600(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_1AC0FFC1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AC0FFC34(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1AC10CFC4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1AC10CFDC(v7, "CHECK failed: (n) >= (0): ");
    sub_1AC10D118(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1AC10D120(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1AC0FE59C(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_1AC0FFCCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC0FFCE4(uint64_t *a1)
{
  sub_1AC0FFD20(a1);

  return sub_1AC0FFDA4(a1);
}

void sub_1AC0FFD20(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_1AC0FD3F0(*v3);
          MEMORY[0x1AC5AC440](v5, 0x10A1C40E4A317A1);
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

uint64_t *sub_1AC0FFDA4(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    sub_1AC10B2A4(v2);
  }

  return a1;
}

uint64_t sub_1AC0FFDD8(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 >= 0x7FFFFFF0)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 128);
    v6 = sub_1AC10CFDC(v11, "CHECK failed: limit >= 0 && limit <= INT_MAX - kSlopBytes: ");
    sub_1AC10D118(&v10, &v6->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
  }

  v7 = *(a1 + 8);
  v8 = a2 - v7 + a3;
  *a1 = v7 + (v8 & (v8 >> 31));
  LODWORD(v7) = *(a1 + 28);
  *(a1 + 28) = v8;
  return (v7 - v8);
}

void sub_1AC0FFE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC0FFE94(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1AC10CFDC(v11, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v10, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1AC11EDBC(a1, v5);
    sub_1AC0FFF80(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_1AC0FFF68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC0FFF80(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_1AC100030(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_1AC0FF5D4(v18);
      sub_1AC100030(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

uint64_t *sub_1AC100040(uint64_t *a1)
{
  sub_1AC10007C(a1);

  return sub_1AC0FFDA4(a1);
}

void sub_1AC10007C(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_1AC0FE3FC(*v3);
          MEMORY[0x1AC5AC440](v5, 0x10A1C40431D3885);
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

void sub_1AC100100(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1AC10CFDC(v11, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v10, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1AC11EDBC(a1, v5);
    sub_1AC1001EC(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_1AC1001D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC1001EC(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_1AC10029C(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_1AC0FF6A4(v18);
      sub_1AC10029C(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

void sub_1AC1002D8()
{
  sub_1AC10CC60(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1AC10536C(&unk_1EB54A8C8, 0);

  sub_1AC118CAC(sub_1AC118170, &unk_1EB54A8C8);
}

void sub_1AC100348()
{
  sub_1AC10CC60(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1AC104A30(qword_1EB54A620, 0);

  sub_1AC118CAC(sub_1AC118170, qword_1EB54A620);
}

void sub_1AC1003B8()
{
  sub_1AC10CC60(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1AC102CF8(&unk_1EB54A6E0, 0);

  sub_1AC118CAC(sub_1AC118170, &unk_1EB54A6E0);
}

void sub_1AC100428()
{
  sub_1AC10CC60(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1AC104284(&unk_1EB54A738, 0);

  sub_1AC118CAC(sub_1AC118170, &unk_1EB54A738);
}

void sub_1AC100498()
{
  sub_1AC10CC60(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1AC103AC0(qword_1EB54A660, 0);

  sub_1AC118CAC(sub_1AC118170, qword_1EB54A660);
}

void sub_1AC100508()
{
  sub_1AC10CC60(3014000, 3014000, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc");
  sub_1AC100588(&unk_1EB54A780, 0);

  sub_1AC118CAC(sub_1AC118170, &unk_1EB54A780);
}

uint64_t sub_1AC100588(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F20D1C68;
  *(a1 + 8) = a2;
  sub_1AC10D5E4(a1 + 16, a2);
  *(a1 + 128) = a2;
  *(a1 + 40) = 0;
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  if (atomic_load_explicit(dword_1EE77CBF8, memory_order_acquire))
  {
    sub_1AC1183E0(dword_1EE77CBF8);
  }

  *(a1 + 152) = &qword_1EB54A5B0;
  *(a1 + 160) = &qword_1EB54A5B0;
  *(a1 + 168) = &qword_1EB54A5B0;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 216) = &qword_1EB54A5B0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0x1F4000000001;
  *(a1 + 280) = 0xF42403F7FDF3BLL;
  *(a1 + 288) = 1061158912;
  *(a1 + 292) = xmmword_1AC12A4A0;
  *(a1 + 308) = 16843009;
  *(a1 + 312) = 257;
  *(a1 + 316) = 1;
  *(a1 + 320) = 0xFFFFFFFF00000002;
  return a1;
}

void sub_1AC1006B4(_Unwind_Exception *a1)
{
  sub_1AC11EDA4(v3);
  sub_1AC11EDA4(v5);
  sub_1AC11EDA4(v4);
  sub_1AC11EDA4(v2);
  sub_1AC10D6B0(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC1006E8(uint64_t *a1)
{
  sub_1AC100744(a1);
  sub_1AC0FD54C(a1 + 1);
  sub_1AC11EDA4(a1 + 16);
  sub_1AC11EDA4(a1 + 13);
  sub_1AC11EDA4(a1 + 10);
  sub_1AC11EDA4(a1 + 7);
  sub_1AC10D6B0((a1 + 2));
  return a1;
}

uint64_t *sub_1AC100744(uint64_t *a1)
{
  v2 = a1[1];
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AC10CFC4(v26, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 519);
    v3 = sub_1AC10CFDC(v26, "CHECK failed: GetArena() == nullptr: ");
    sub_1AC10D118(&v25, &v3->__r_.__value_.__l.__data_);
    sub_1AC10D120(v26);
  }

LABEL_4:
  if (a1[19] != &qword_1EB54A5B0)
  {
    v4 = sub_1AC0FF894(a1 + 19);
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1AC5AC440](v5, 0x1012C40EC159624);
  }

  if (a1[20] != &qword_1EB54A5B0)
  {
    v6 = sub_1AC0FF894(a1 + 20);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    MEMORY[0x1AC5AC440](v7, 0x1012C40EC159624);
  }

  if (a1[21] != &qword_1EB54A5B0)
  {
    v8 = sub_1AC0FF894(a1 + 21);
    v9 = v8;
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    MEMORY[0x1AC5AC440](v9, 0x1012C40EC159624);
  }

  if (a1[22])
  {
    v10 = sub_1AC0FF894(a1 + 22);
    v11 = v10;
    if (*(v10 + 23) < 0)
    {
      operator delete(*v10);
    }

    MEMORY[0x1AC5AC440](v11, 0x1012C40EC159624);
  }

  if (a1[23])
  {
    v12 = sub_1AC0FF894(a1 + 23);
    v13 = v12;
    if (*(v12 + 23) < 0)
    {
      operator delete(*v12);
    }

    MEMORY[0x1AC5AC440](v13, 0x1012C40EC159624);
  }

  if (a1[24])
  {
    v14 = sub_1AC0FF894(a1 + 24);
    v15 = v14;
    if (*(v14 + 23) < 0)
    {
      operator delete(*v14);
    }

    MEMORY[0x1AC5AC440](v15, 0x1012C40EC159624);
  }

  if (a1[25])
  {
    v16 = sub_1AC0FF894(a1 + 25);
    v17 = v16;
    if (*(v16 + 23) < 0)
    {
      operator delete(*v16);
    }

    MEMORY[0x1AC5AC440](v17, 0x1012C40EC159624);
  }

  result = a1 + 26;
  if (a1[26])
  {
    v19 = sub_1AC0FF894(result);
    v20 = v19;
    if (*(v19 + 23) < 0)
    {
      operator delete(*v19);
    }

    result = MEMORY[0x1AC5AC440](v20, 0x1012C40EC159624);
  }

  v22 = a1[27];
  v21 = a1 + 27;
  if (v22 != &qword_1EB54A5B0)
  {
    v23 = sub_1AC0FF894(v21);
    v24 = v23;
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    return MEMORY[0x1AC5AC440](v24, 0x1012C40EC159624);
  }

  return result;
}

void sub_1AC1009A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC1009C0(uint64_t *a1)
{
  sub_1AC1006E8(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC1009F8(uint64_t a1)
{
  sub_1AC111064((a1 + 16));
  sub_1AC107490(a1 + 56);
  sub_1AC107490(a1 + 80);
  sub_1AC107490(a1 + 104);
  result = sub_1AC107490(a1 + 128);
  v3 = *(a1 + 40);
  if (!v3)
  {
    goto LABEL_10;
  }

  if (v3)
  {
    v4 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_16;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_5;
    }

LABEL_20:
    v6 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
      if ((v3 & 8) != 0)
      {
        goto LABEL_24;
      }
    }

LABEL_6:
    if ((v3 & 0x10) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

  if ((v3 & 2) == 0)
  {
    goto LABEL_4;
  }

LABEL_16:
  v5 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  if (*(v5 + 23) < 0)
  {
    **v5 = 0;
    *(v5 + 8) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    *v5 = 0;
    *(v5 + 23) = 0;
    if ((v3 & 4) != 0)
    {
      goto LABEL_20;
    }
  }

LABEL_5:
  if ((v3 & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_24:
  v7 = *(a1 + 8);
  if (v7)
  {
    v15 = *(v7 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10C014((a1 + 176), &off_1EB549FE8);
  if ((v3 & 0x10) == 0)
  {
LABEL_7:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_27:
  v8 = *(a1 + 8);
  if (v8)
  {
    v16 = *(v8 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10C014((a1 + 184), &off_1EB54A010);
  if ((v3 & 0x20) == 0)
  {
LABEL_8:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_33;
  }

LABEL_30:
  v9 = *(a1 + 8);
  if (v9)
  {
    v17 = *(v9 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10C014((a1 + 192), &off_1EB54A0F8);
  if ((v3 & 0x40) != 0)
  {
LABEL_33:
    v10 = *(a1 + 8);
    if (v10)
    {
      v18 = *(v10 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_1AC10C014((a1 + 200), &off_1EB54A0D8);
    if ((v3 & 0x80) != 0)
    {
      goto LABEL_36;
    }

LABEL_10:
    if ((v3 & 0x100) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

LABEL_9:
  if ((v3 & 0x80) == 0)
  {
    goto LABEL_10;
  }

LABEL_36:
  v11 = *(a1 + 8);
  if (v11)
  {
    v19 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10C014((a1 + 208), &off_1EB54A030);
  if ((v3 & 0x100) != 0)
  {
LABEL_39:
    v12 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v12 + 23) < 0)
    {
      **v12 = 0;
      *(v12 + 8) = 0;
    }

    else
    {
      *v12 = 0;
      *(v12 + 23) = 0;
    }
  }

LABEL_42:
  if ((v3 & 0xFE00) != 0)
  {
    *(a1 + 224) = 0;
    *(a1 + 232) = 0;
    *(a1 + 239) = 0;
  }

  if ((v3 & 0xFF0000) != 0)
  {
    *(a1 + 247) = 0;
    *(a1 + 271) = 0;
    *(a1 + 255) = 0;
    *(a1 + 263) = 0;
    *(a1 + 272) = 1;
  }

  if (HIBYTE(v3))
  {
    *(a1 + 276) = 0x3F7FDF3B00001F40;
    *(a1 + 284) = 0x3F400000000F4240;
    *(a1 + 292) = xmmword_1AC12A4A0;
  }

  if (*(a1 + 44))
  {
    *(a1 + 312) = 257;
    *(a1 + 308) = 16843009;
    *(a1 + 316) = 0x200000001;
  }

  *(a1 + 324) = -1;
  *(a1 + 40) = 0;
  v13 = *(a1 + 8);
  if (v13)
  {
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v14 + 31) < 0)
    {
      **(v14 + 8) = 0;
      *(v14 + 16) = 0;
    }

    else
    {
      *(v14 + 8) = 0;
      *(v14 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AC100CC0(uint64_t a1, char *a2, uint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = sub_1AC107554(a1 + 56, i);
      v9 = *(v8 + 23);
      if (v9 < 0 && (v9 = *(v8 + 8), v9 > 127) || *a3 - a2 + 14 < v9)
      {
        a2 = sub_1AC10CAB0(a3, 1, v8, a2);
      }

      else
      {
        *a2 = 10;
        a2[1] = v9;
        if (*(v8 + 23) >= 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *v8;
        }

        memcpy(a2 + 2, v10, v9);
        a2 += v9 + 2;
      }
    }
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    a2 = sub_1AC0FDC94(a3, 2, (*(a1 + 152) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v11 & 0x800000) == 0)
    {
LABEL_15:
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_16;
    }
  }

  else if ((v11 & 0x800000) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v13 = *(a1 + 272);
  *a2 = 24;
  if (v13 > 0x7F)
  {
    a2[1] = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v15 | 0x80;
        v18 = v15 >> 7;
        ++a2;
        v19 = v15 >> 14;
        v15 >>= 7;
      }

      while (v19);
      *(a2 - 1) = v18;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      a2[2] = v15;
      a2 += 3;
      if ((v11 & 0x1000000) == 0)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    a2[1] = v13;
    a2 += 2;
    if ((v11 & 0x1000000) == 0)
    {
      goto LABEL_37;
    }
  }

LABEL_16:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v12 = *(a1 + 276);
  *a2 = 32;
  if (v12 > 0x7F)
  {
    a2[1] = v12 | 0x80;
    v14 = v12 >> 7;
    if (v12 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v14 | 0x80;
        v16 = v14 >> 7;
        ++a2;
        v17 = v14 >> 14;
        v14 >>= 7;
      }

      while (v17);
      *(a2 - 1) = v16;
    }

    else
    {
      a2[2] = v14;
      a2 += 3;
    }
  }

  else
  {
    a2[1] = v12;
    a2 += 2;
  }

LABEL_37:
  v20 = *(a1 + 88);
  if (v20 >= 1)
  {
    for (j = 0; j != v20; ++j)
    {
      v22 = sub_1AC107554(a1 + 80, j);
      v23 = *(v22 + 23);
      if (v23 < 0 && (v23 = *(v22 + 8), v23 > 127) || *a3 - a2 + 14 < v23)
      {
        a2 = sub_1AC10CAB0(a3, 5, v22, a2);
      }

      else
      {
        *a2 = 42;
        a2[1] = v23;
        if (*(v22 + 23) >= 0)
        {
          v24 = v22;
        }

        else
        {
          v24 = *v22;
        }

        memcpy(a2 + 2, v24, v23);
        a2 += v23 + 2;
      }
    }
  }

  if ((v11 & 0x200) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v26 = *(a1 + 224);
    *a2 = 48;
    if (v26 > 0x7F)
    {
      a2[1] = v26 | 0x80;
      v28 = v26 >> 7;
      if (v26 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v28 | 0x80;
          v31 = v28 >> 7;
          ++a2;
          v32 = v28 >> 14;
          v28 >>= 7;
        }

        while (v32);
        *(a2 - 1) = v31;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }

      else
      {
        a2[2] = v28;
        a2 += 3;
        if ((v11 & 2) != 0)
        {
          goto LABEL_80;
        }
      }
    }

    else
    {
      a2[1] = v26;
      a2 += 2;
      if ((v11 & 2) != 0)
      {
        goto LABEL_80;
      }
    }

LABEL_51:
    if ((v11 & 0x2000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_81;
  }

  if ((v11 & 2) == 0)
  {
    goto LABEL_51;
  }

LABEL_80:
  a2 = sub_1AC0FDC94(a3, 7, (*(a1 + 160) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v11 & 0x2000000) == 0)
  {
LABEL_52:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_84;
  }

LABEL_81:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v33 = *(a1 + 280);
  *a2 = 85;
  *(a2 + 1) = v33;
  a2 += 5;
  if ((v11 & 0x800) == 0)
  {
LABEL_53:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_54;
    }

LABEL_95:
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v38 = *(a1 + 228);
    *a2 = 96;
    if (v38 > 0x7F)
    {
      a2[1] = v38 | 0x80;
      v39 = v38 >> 7;
      if (v38 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v39 | 0x80;
          v40 = v39 >> 7;
          ++a2;
          v41 = v39 >> 14;
          v39 >>= 7;
        }

        while (v41);
        *(a2 - 1) = v40;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }

      else
      {
        a2[2] = v39;
        a2 += 3;
        if ((v11 & 0x1000) != 0)
        {
          goto LABEL_106;
        }
      }
    }

    else
    {
      a2[1] = v38;
      a2 += 2;
      if ((v11 & 0x1000) != 0)
      {
        goto LABEL_106;
      }
    }

LABEL_55:
    if ((v11 & 0x4000000) == 0)
    {
      goto LABEL_56;
    }

LABEL_117:
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v46 = *(a1 + 284);
    *a2 = 112;
    if (v46 > 0x7F)
    {
      a2[1] = v46 | 0x80;
      v47 = v46 >> 7;
      if (v46 >> 14)
      {
        a2 += 3;
        do
        {
          *(a2 - 1) = v47 | 0x80;
          v48 = v47 >> 7;
          ++a2;
          v49 = v47 >> 14;
          v47 >>= 7;
        }

        while (v49);
        *(a2 - 1) = v48;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        a2[2] = v47;
        a2 += 3;
        if ((v11 & 0x8000000) != 0)
        {
          goto LABEL_128;
        }
      }
    }

    else
    {
      a2[1] = v46;
      a2 += 2;
      if ((v11 & 0x8000000) != 0)
      {
        goto LABEL_128;
      }
    }

LABEL_57:
    if ((v11 & 0x10000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_131:
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v51 = *(a1 + 292);
    *a2 = 384;
    if (v51 > 0x7F)
    {
      a2[2] = v51 | 0x80;
      v52 = v51 >> 7;
      if (v51 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v52 | 0x80;
          v53 = v52 >> 7;
          ++a2;
          v54 = v52 >> 14;
          v52 >>= 7;
        }

        while (v54);
        *(a2 - 1) = v53;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }

      else
      {
        a2[3] = v52;
        a2 += 4;
        if ((v11 & 0x20000000) != 0)
        {
          goto LABEL_142;
        }
      }
    }

    else
    {
      a2[2] = v51;
      a2 += 3;
      if ((v11 & 0x20000000) != 0)
      {
        goto LABEL_142;
      }
    }

LABEL_59:
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }

    goto LABEL_60;
  }

LABEL_84:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v34 = *(a1 + 232);
  *a2 = 88;
  if (v34 > 0x7F)
  {
    a2[1] = v34 | 0x80;
    v35 = v34 >> 7;
    if (v34 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v35 | 0x80;
        v36 = v35 >> 7;
        ++a2;
        v37 = v35 >> 14;
        v35 >>= 7;
      }

      while (v37);
      *(a2 - 1) = v36;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }

    else
    {
      a2[2] = v35;
      a2 += 3;
      if ((v11 & 0x400) != 0)
      {
        goto LABEL_95;
      }
    }
  }

  else
  {
    a2[1] = v34;
    a2 += 2;
    if ((v11 & 0x400) != 0)
    {
      goto LABEL_95;
    }
  }

LABEL_54:
  if ((v11 & 0x1000) == 0)
  {
    goto LABEL_55;
  }

LABEL_106:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v42 = *(a1 + 240);
  *a2 = 104;
  if (v42 > 0x7F)
  {
    a2[1] = v42 | 0x80;
    v43 = v42 >> 7;
    if (v42 >> 14)
    {
      a2 += 3;
      do
      {
        *(a2 - 1) = v43 | 0x80;
        v44 = v43 >> 7;
        ++a2;
        v45 = v43 >> 14;
        v43 >>= 7;
      }

      while (v45);
      *(a2 - 1) = v44;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }

    else
    {
      a2[2] = v43;
      a2 += 3;
      if ((v11 & 0x4000000) != 0)
      {
        goto LABEL_117;
      }
    }
  }

  else
  {
    a2[1] = v42;
    a2 += 2;
    if ((v11 & 0x4000000) != 0)
    {
      goto LABEL_117;
    }
  }

LABEL_56:
  if ((v11 & 0x8000000) == 0)
  {
    goto LABEL_57;
  }

LABEL_128:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v50 = *(a1 + 288);
  *a2 = 125;
  *(a2 + 1) = v50;
  a2 += 5;
  if ((v11 & 0x10000000) != 0)
  {
    goto LABEL_131;
  }

LABEL_58:
  if ((v11 & 0x20000000) == 0)
  {
    goto LABEL_59;
  }

LABEL_142:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v55 = *(a1 + 296);
  *a2 = 392;
  if (v55 > 0x7F)
  {
    a2[2] = v55 | 0x80;
    v56 = v55 >> 7;
    if (v55 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v56 | 0x80;
        v57 = v56 >> 7;
        ++a2;
        v58 = v56 >> 14;
        v56 >>= 7;
      }

      while (v58);
      *(a2 - 1) = v57;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      a2[3] = v56;
      a2 += 4;
      if ((v11 & 0x40000000) == 0)
      {
        goto LABEL_153;
      }
    }
  }

  else
  {
    a2[2] = v55;
    a2 += 3;
    if ((v11 & 0x40000000) == 0)
    {
      goto LABEL_153;
    }
  }

LABEL_60:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v25 = *(a1 + 300);
  *a2 = 400;
  if (v25 > 0x7F)
  {
    a2[2] = v25 | 0x80;
    v27 = v25 >> 7;
    if (v25 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v27 | 0x80;
        v29 = v27 >> 7;
        ++a2;
        v30 = v27 >> 14;
        v27 >>= 7;
      }

      while (v30);
      *(a2 - 1) = v29;
    }

    else
    {
      a2[3] = v27;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v25;
    a2 += 3;
  }

LABEL_153:
  if (*(a1 + 44))
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v59 = *(a1 + 308);
    *a2 = 408;
    a2[2] = v59;
    a2 += 3;
  }

  if ((*(a1 + 40) & 0x80000000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v60 = *(a1 + 304);
    *a2 = 416;
    if (v60 > 0x7F)
    {
      a2[2] = v60 | 0x80;
      v61 = v60 >> 7;
      if (v60 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v61 | 0x80;
          v62 = v61 >> 7;
          ++a2;
          v63 = v61 >> 14;
          v61 >>= 7;
        }

        while (v63);
        *(a2 - 1) = v62;
      }

      else
      {
        a2[3] = v61;
        a2 += 4;
      }
    }

    else
    {
      a2[2] = v60;
      a2 += 3;
    }
  }

  v64 = *(a1 + 44);
  if ((v64 & 2) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v65 = *(a1 + 309);
    *a2 = 424;
    a2[2] = v65;
    a2 += 3;
    if ((v64 & 8) == 0)
    {
LABEL_169:
      if ((v64 & 4) == 0)
      {
        goto LABEL_180;
      }

      goto LABEL_177;
    }
  }

  else if ((v64 & 8) == 0)
  {
    goto LABEL_169;
  }

  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v66 = *(a1 + 311);
  *a2 = 432;
  a2[2] = v66;
  a2 += 3;
  if ((v64 & 4) != 0)
  {
LABEL_177:
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v67 = *(a1 + 310);
    *a2 = 440;
    a2[2] = v67;
    a2 += 3;
  }

LABEL_180:
  v68 = *(a1 + 40);
  if ((v68 & 0x4000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v69 = *(a1 + 245);
    *a2 = 448;
    a2[2] = v69;
    a2 += 3;
    if ((v68 & 0x10000) == 0)
    {
LABEL_182:
      if ((v68 & 0x8000) == 0)
      {
        goto LABEL_193;
      }

      goto LABEL_190;
    }
  }

  else if ((v68 & 0x10000) == 0)
  {
    goto LABEL_182;
  }

  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v70 = *(a1 + 247);
  *a2 = 456;
  a2[2] = v70;
  a2 += 3;
  if ((v68 & 0x8000) != 0)
  {
LABEL_190:
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v71 = *(a1 + 246);
    *a2 = 464;
    a2[2] = v71;
    a2 += 3;
  }

LABEL_193:
  v72 = *(a1 + 112);
  if (v72 >= 1)
  {
    for (k = 0; k != v72; ++k)
    {
      v74 = sub_1AC107554(a1 + 104, k);
      v75 = *(v74 + 23);
      if (v75 < 0 && (v75 = *(v74 + 8), v75 > 127) || *a3 - a2 + 13 < v75)
      {
        a2 = sub_1AC10CAB0(a3, 30, v74, a2);
      }

      else
      {
        *a2 = 498;
        a2[2] = v75;
        if (*(v74 + 23) >= 0)
        {
          v76 = v74;
        }

        else
        {
          v76 = *v74;
        }

        memcpy(a2 + 3, v76, v75);
        a2 += v75 + 3;
      }
    }
  }

  v77 = *(a1 + 136);
  if (v77 >= 1)
  {
    for (m = 0; m != v77; ++m)
    {
      v79 = sub_1AC107554(a1 + 128, m);
      v80 = *(v79 + 23);
      if (v80 < 0 && (v80 = *(v79 + 8), v80 > 127) || *a3 - a2 + 13 < v80)
      {
        a2 = sub_1AC10CAB0(a3, 31, v79, a2);
      }

      else
      {
        *a2 = 506;
        a2[2] = v80;
        if (*(v79 + 23) >= 0)
        {
          v81 = v79;
        }

        else
        {
          v81 = *v79;
        }

        memcpy(a2 + 3, v81, v80);
        a2 += v80 + 3;
      }
    }
  }

  v82 = *(a1 + 44);
  if ((v82 & 0x10) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v83 = *(a1 + 312);
    *a2 = 640;
    a2[2] = v83;
    a2 += 3;
  }

  if ((v82 & 0x20) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v84 = *(a1 + 313);
    *a2 = 648;
    a2[2] = v84;
    a2 += 3;
  }

  v85 = *(a1 + 40);
  if ((v85 & 0x40000) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v86 = *(a1 + 249);
    *a2 = 656;
    a2[2] = v86;
    a2 += 3;
    if ((v85 & 0x20000) == 0)
    {
LABEL_227:
      if ((v85 & 4) == 0)
      {
        goto LABEL_228;
      }

      goto LABEL_236;
    }
  }

  else if ((v85 & 0x20000) == 0)
  {
    goto LABEL_227;
  }

  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v87 = *(a1 + 248);
  *a2 = 664;
  a2[2] = v87;
  a2 += 3;
  if ((v85 & 4) == 0)
  {
LABEL_228:
    if ((v85 & 0x100000) == 0)
    {
      goto LABEL_246;
    }

    goto LABEL_237;
  }

LABEL_236:
  a2 = sub_1AC0FDC94(a3, 36, (*(a1 + 168) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v85 & 0x100000) == 0)
  {
    goto LABEL_246;
  }

LABEL_237:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v88 = *(a1 + 252);
  *a2 = 704;
  if (v88 > 0x7F)
  {
    a2[2] = v88 | 0x80;
    v89 = v88 >> 7;
    if (v88 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v89 | 0x80;
        v90 = v89 >> 7;
        ++a2;
        v91 = v89 >> 14;
        v89 >>= 7;
      }

      while (v91);
      *(a2 - 1) = v90;
    }

    else
    {
      a2[3] = v89;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v88;
    a2 += 3;
  }

LABEL_246:
  v92 = *(a1 + 44);
  if ((v92 & 0x40) != 0)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v94 = *(a1 + 316);
    *a2 = 712;
    if (v94 > 0x7F)
    {
      a2[2] = v94 | 0x80;
      v96 = v94 >> 7;
      if (v94 >> 14)
      {
        a2 += 4;
        do
        {
          *(a2 - 1) = v96 | 0x80;
          v99 = v96 >> 7;
          ++a2;
          v100 = v96 >> 14;
          v96 >>= 7;
        }

        while (v100);
        *(a2 - 1) = v99;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }

      else
      {
        a2[3] = v96;
        a2 += 4;
        if ((v92 & 0x80) != 0)
        {
          goto LABEL_269;
        }
      }
    }

    else
    {
      a2[2] = v94;
      a2 += 3;
      if ((v92 & 0x80) != 0)
      {
        goto LABEL_269;
      }
    }

LABEL_248:
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }

    goto LABEL_249;
  }

  if ((v92 & 0x80) == 0)
  {
    goto LABEL_248;
  }

LABEL_269:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v101 = *(a1 + 320);
  *a2 = 720;
  if (v101 > 0x7F)
  {
    a2[2] = v101 | 0x80;
    v102 = v101 >> 7;
    if (v101 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v102 | 0x80;
        v103 = v102 >> 7;
        ++a2;
        v104 = v102 >> 14;
        v102 >>= 7;
      }

      while (v104);
      *(a2 - 1) = v103;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }

    else
    {
      a2[3] = v102;
      a2 += 4;
      if ((v92 & 0x100) == 0)
      {
        goto LABEL_280;
      }
    }
  }

  else
  {
    a2[2] = v101;
    a2 += 3;
    if ((v92 & 0x100) == 0)
    {
      goto LABEL_280;
    }
  }

LABEL_249:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v93 = *(a1 + 324);
  *a2 = 728;
  if (v93 > 0x7F)
  {
    a2[2] = v93 | 0x80;
    v95 = v93 >> 7;
    if (v93 >> 14)
    {
      a2 += 4;
      do
      {
        *(a2 - 1) = v95 | 0x80;
        v97 = v95 >> 7;
        ++a2;
        v98 = v95 >> 14;
        v95 >>= 7;
      }

      while (v98);
      *(a2 - 1) = v97;
    }

    else
    {
      a2[3] = v95;
      a2 += 4;
    }
  }

  else
  {
    a2[2] = v93;
    a2 += 3;
  }

LABEL_280:
  v105 = *(a1 + 40);
  if ((v105 & 8) != 0)
  {
    a2 = sub_1AC0FDC94(a3, 44, (*(a1 + 176) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v105 & 0x10) == 0)
    {
LABEL_282:
      if ((v105 & 0x20) == 0)
      {
        goto LABEL_283;
      }

      goto LABEL_295;
    }
  }

  else if ((v105 & 0x10) == 0)
  {
    goto LABEL_282;
  }

  a2 = sub_1AC0FDC94(a3, 45, (*(a1 + 184) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x20) == 0)
  {
LABEL_283:
    if ((v105 & 0x40) == 0)
    {
      goto LABEL_284;
    }

    goto LABEL_296;
  }

LABEL_295:
  a2 = sub_1AC0FDC94(a3, 46, (*(a1 + 192) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x40) == 0)
  {
LABEL_284:
    if ((v105 & 0x80) == 0)
    {
      goto LABEL_285;
    }

    goto LABEL_297;
  }

LABEL_296:
  a2 = sub_1AC0FDC94(a3, 47, (*(a1 + 200) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80) == 0)
  {
LABEL_285:
    if ((v105 & 0x80000) == 0)
    {
      goto LABEL_286;
    }

    goto LABEL_298;
  }

LABEL_297:
  a2 = sub_1AC0FDC94(a3, 48, (*(a1 + 208) & 0xFFFFFFFFFFFFFFFELL), a2);
  if ((v105 & 0x80000) == 0)
  {
LABEL_286:
    if ((v105 & 0x2000) == 0)
    {
      goto LABEL_287;
    }

    goto LABEL_301;
  }

LABEL_298:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v110 = *(a1 + 250);
  *a2 = 904;
  a2[2] = v110;
  a2 += 3;
  if ((v105 & 0x2000) == 0)
  {
LABEL_287:
    if ((v105 & 0x200000) == 0)
    {
      goto LABEL_288;
    }

    goto LABEL_304;
  }

LABEL_301:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v111 = *(a1 + 244);
  *a2 = 912;
  a2[2] = v111;
  a2 += 3;
  if ((v105 & 0x200000) == 0)
  {
LABEL_288:
    if ((v105 & 0x400000) == 0)
    {
      goto LABEL_289;
    }

    goto LABEL_307;
  }

LABEL_304:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v112 = *(a1 + 256);
  *a2 = 925;
  *(a2 + 2) = v112;
  a2 += 6;
  if ((v105 & 0x400000) == 0)
  {
LABEL_289:
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

    goto LABEL_290;
  }

LABEL_307:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v113 = *(a1 + 264);
  *a2 = 928;
  if (v113 <= 0x7F)
  {
    a2[2] = v113;
    a2 += 3;
    if ((v105 & 0x100) == 0)
    {
      goto LABEL_291;
    }

LABEL_290:
    a2 = sub_1AC0FDC94(a3, 53, (*(a1 + 216) & 0xFFFFFFFFFFFFFFFELL), a2);
    goto LABEL_291;
  }

  a2[2] = v113 | 0x80;
  v114 = v113 >> 7;
  if (v113 >> 14)
  {
    a2 += 4;
    do
    {
      *(a2 - 1) = v114 | 0x80;
      v115 = v114 >> 7;
      ++a2;
      v116 = v114 >> 14;
      v114 >>= 7;
    }

    while (v116);
    *(a2 - 1) = v115;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    a2[3] = v114;
    a2 += 4;
    if ((v105 & 0x100) != 0)
    {
      goto LABEL_290;
    }
  }

LABEL_291:
  v106 = sub_1AC11334C(a1 + 16, 200, 0x20000000, a2, a3);
  v107 = v106;
  v108 = *(a1 + 8);
  if ((v108 & 1) == 0)
  {
    return v107;
  }

  v117 = v108 & 0xFFFFFFFFFFFFFFFELL;
  v118 = *(v117 + 31);
  if (v118 < 0)
  {
    v119 = *(v117 + 8);
    v118 = *(v117 + 16);
  }

  else
  {
    v119 = (v117 + 8);
  }

  if (*a3 - v106 >= v118)
  {
    v120 = v118;
    memcpy(v106, v119, v118);
    v107 += v120;
    return v107;
  }

  return sub_1AC10C650(a3, v119, v118, v106);
}

uint64_t sub_1AC101E54(uint64_t a1)
{
  v2 = sub_1AC115F6C(a1 + 16);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  if (v3 >= 1)
  {
    v5 = 0;
    do
    {
      v6 = sub_1AC107554(a1 + 56, v5);
      v7 = *(v6 + 23);
      if ((v7 & 0x80u) != 0)
      {
        v7 = *(v6 + 8);
      }

      v4 += v7 + ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6);
      ++v5;
    }

    while (v3 != v5);
  }

  v8 = *(a1 + 88);
  v9 = v4 + v8;
  if (v8 >= 1)
  {
    v10 = 0;
    do
    {
      v11 = sub_1AC107554(a1 + 80, v10);
      v12 = *(v11 + 23);
      if ((v12 & 0x80u) != 0)
      {
        v12 = *(v11 + 8);
      }

      v9 += v12 + ((9 * (__clz(v12 | 1) ^ 0x1F) + 73) >> 6);
      ++v10;
    }

    while (v8 != v10);
  }

  v13 = *(a1 + 112);
  v14 = v9 + 2 * v13;
  if (v13 >= 1)
  {
    v15 = 0;
    do
    {
      v16 = sub_1AC107554(a1 + 104, v15);
      v17 = *(v16 + 23);
      if ((v17 & 0x80u) != 0)
      {
        v17 = *(v16 + 8);
      }

      v14 += v17 + ((9 * (__clz(v17 | 1) ^ 0x1F) + 73) >> 6);
      ++v15;
    }

    while (v13 != v15);
  }

  v18 = *(a1 + 136);
  v19 = v14 + 2 * v18;
  if (v18 >= 1)
  {
    v20 = 0;
    do
    {
      v21 = sub_1AC107554(a1 + 128, v20);
      v22 = *(v21 + 23);
      if ((v22 & 0x80u) != 0)
      {
        v22 = *(v21 + 8);
      }

      v19 += v22 + ((9 * (__clz(v22 | 1) ^ 0x1F) + 73) >> 6);
      ++v20;
    }

    while (v18 != v20);
  }

  v23 = *(a1 + 40);
  if (!v23)
  {
    goto LABEL_33;
  }

  if (v23)
  {
    v58 = *(a1 + 152) & 0xFFFFFFFFFFFFFFFELL;
    v59 = *(v58 + 23);
    v60 = *(v58 + 8);
    if ((v59 & 0x80u) == 0)
    {
      v60 = v59;
    }

    v19 += v60 + ((9 * (__clz(v60 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v23 & 2) == 0)
    {
LABEL_24:
      if ((v23 & 4) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_131;
    }
  }

  else if ((v23 & 2) == 0)
  {
    goto LABEL_24;
  }

  v61 = *(a1 + 160) & 0xFFFFFFFFFFFFFFFELL;
  v62 = *(v61 + 23);
  v63 = *(v61 + 8);
  if ((v62 & 0x80u) == 0)
  {
    v63 = v62;
  }

  v19 += v63 + ((9 * (__clz(v63 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v23 & 4) == 0)
  {
LABEL_25:
    if ((v23 & 8) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_134;
  }

LABEL_131:
  v64 = *(a1 + 168) & 0xFFFFFFFFFFFFFFFELL;
  v65 = *(v64 + 23);
  v66 = *(v64 + 8);
  if ((v65 & 0x80u) == 0)
  {
    v66 = v65;
  }

  v19 += v66 + ((9 * (__clz(v66 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 8) == 0)
  {
LABEL_26:
    if ((v23 & 0x10) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_137;
  }

LABEL_134:
  v67 = *(a1 + 176) & 0xFFFFFFFFFFFFFFFELL;
  v68 = *(v67 + 23);
  v69 = *(v67 + 8);
  if ((v68 & 0x80u) == 0)
  {
    v69 = v68;
  }

  v19 += v69 + ((9 * (__clz(v69 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x10) == 0)
  {
LABEL_27:
    if ((v23 & 0x20) == 0)
    {
      goto LABEL_28;
    }

LABEL_140:
    v73 = *(a1 + 192) & 0xFFFFFFFFFFFFFFFELL;
    v74 = *(v73 + 23);
    v75 = *(v73 + 8);
    if ((v74 & 0x80u) == 0)
    {
      v75 = v74;
    }

    v19 += v75 + ((9 * (__clz(v75 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x40) == 0)
    {
LABEL_29:
      if ((v23 & 0x80) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    goto LABEL_143;
  }

LABEL_137:
  v70 = *(a1 + 184) & 0xFFFFFFFFFFFFFFFELL;
  v71 = *(v70 + 23);
  v72 = *(v70 + 8);
  if ((v71 & 0x80u) == 0)
  {
    v72 = v71;
  }

  v19 += v72 + ((9 * (__clz(v72 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x20) != 0)
  {
    goto LABEL_140;
  }

LABEL_28:
  if ((v23 & 0x40) == 0)
  {
    goto LABEL_29;
  }

LABEL_143:
  v76 = *(a1 + 200) & 0xFFFFFFFFFFFFFFFELL;
  v77 = *(v76 + 23);
  v78 = *(v76 + 8);
  if ((v77 & 0x80u) == 0)
  {
    v78 = v77;
  }

  v19 += v78 + ((9 * (__clz(v78 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if ((v23 & 0x80) != 0)
  {
LABEL_30:
    v24 = *(a1 + 208) & 0xFFFFFFFFFFFFFFFELL;
    v25 = *(v24 + 23);
    v26 = *(v24 + 8);
    if ((v25 & 0x80u) == 0)
    {
      v26 = v25;
    }

    v19 += v26 + ((9 * (__clz(v26 | 1) ^ 0x1F) + 73) >> 6) + 2;
  }

LABEL_33:
  if ((v23 & 0xFF00) == 0)
  {
    goto LABEL_50;
  }

  if ((v23 & 0x100) != 0)
  {
    v79 = *(a1 + 216) & 0xFFFFFFFFFFFFFFFELL;
    v80 = *(v79 + 23);
    v81 = *(v79 + 8);
    if ((v80 & 0x80u) == 0)
    {
      v81 = v80;
    }

    v19 += v81 + ((9 * (__clz(v81 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if ((v23 & 0x200) == 0)
    {
LABEL_36:
      if ((v23 & 0x400) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_154;
    }
  }

  else if ((v23 & 0x200) == 0)
  {
    goto LABEL_36;
  }

  v82 = *(a1 + 224);
  v83 = ((9 * (__clz(v82 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v82 >= 0)
  {
    v84 = v83;
  }

  else
  {
    v84 = 11;
  }

  v19 += v84;
  if ((v23 & 0x400) == 0)
  {
LABEL_37:
    if ((v23 & 0x800) == 0)
    {
      goto LABEL_38;
    }

LABEL_158:
    v19 += ((9 * (__clz(*(a1 + 232) | 1) ^ 0x3F) + 73) >> 6) + 1;
    if ((v23 & 0x1000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_43;
  }

LABEL_154:
  v85 = *(a1 + 228);
  v86 = ((9 * (__clz(v85 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if (v85 >= 0)
  {
    v87 = v86;
  }

  else
  {
    v87 = 11;
  }

  v19 += v87;
  if ((v23 & 0x800) != 0)
  {
    goto LABEL_158;
  }

LABEL_38:
  if ((v23 & 0x1000) != 0)
  {
LABEL_39:
    v27 = *(a1 + 240);
    v28 = ((9 * (__clz(v27 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v27 >= 0)
    {
      v29 = v28;
    }

    else
    {
      v29 = 11;
    }

    v19 += v29;
  }

LABEL_43:
  v30 = v19 + 3;
  if ((v23 & 0x2000) == 0)
  {
    v30 = v19;
  }

  if ((v23 & 0x4000) != 0)
  {
    v30 += 3;
  }

  if ((v23 & 0x8000) != 0)
  {
    v19 = v30 + 3;
  }

  else
  {
    v19 = v30;
  }

LABEL_50:
  if ((v23 & 0xFF0000) != 0)
  {
    v31 = v19 + 3;
    if ((v23 & 0x10000) == 0)
    {
      v31 = v19;
    }

    if ((v23 & 0x20000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x40000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x80000) != 0)
    {
      v31 += 3;
    }

    if ((v23 & 0x100000) != 0)
    {
      v32 = *(a1 + 252);
      v33 = ((9 * (__clz(v32 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v32 >= 0)
      {
        v34 = v33;
      }

      else
      {
        v34 = 12;
      }

      v31 += v34;
    }

    if ((v23 & 0x200000) != 0)
    {
      v19 = v31 + 6;
    }

    else
    {
      v19 = v31;
    }

    if ((v23 & 0x400000) != 0)
    {
      v19 += ((9 * (__clz(*(a1 + 264) | 1) ^ 0x3F) + 73) >> 6) + 2;
    }

    if ((v23 & 0x800000) != 0)
    {
      v35 = *(a1 + 272);
      v36 = ((9 * (__clz(v35 | 1) ^ 0x1F) + 73) >> 6) + 1;
      if (v35 >= 0)
      {
        v37 = v36;
      }

      else
      {
        v37 = 11;
      }

      v19 += v37;
    }
  }

  if (!HIBYTE(v23))
  {
    goto LABEL_94;
  }

  if ((v23 & 0x1000000) != 0)
  {
    v38 = *(a1 + 276);
    v39 = ((9 * (__clz(v38 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v38 >= 0)
    {
      v40 = v39;
    }

    else
    {
      v40 = 11;
    }

    v19 += v40;
  }

  v41 = v19 + 5;
  if ((v23 & 0x2000000) == 0)
  {
    v41 = v19;
  }

  if ((v23 & 0x4000000) != 0)
  {
    v42 = *(a1 + 284);
    v43 = ((9 * (__clz(v42 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if (v42 >= 0)
    {
      v44 = v43;
    }

    else
    {
      v44 = 11;
    }

    v41 += v44;
  }

  if ((v23 & 0x8000000) != 0)
  {
    v19 = v41 + 5;
  }

  else
  {
    v19 = v41;
  }

  if ((v23 & 0x10000000) == 0)
  {
    if ((v23 & 0x20000000) == 0)
    {
      goto LABEL_92;
    }

LABEL_164:
    v91 = *(a1 + 296);
    v92 = ((9 * (__clz(v91 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v91 >= 0)
    {
      v93 = v92;
    }

    else
    {
      v93 = 12;
    }

    v19 += v93;
    if ((v23 & 0x40000000) == 0)
    {
LABEL_93:
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_172;
    }

    goto LABEL_168;
  }

  v88 = *(a1 + 292);
  v89 = ((9 * (__clz(v88 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v88 >= 0)
  {
    v90 = v89;
  }

  else
  {
    v90 = 12;
  }

  v19 += v90;
  if ((v23 & 0x20000000) != 0)
  {
    goto LABEL_164;
  }

LABEL_92:
  if ((v23 & 0x40000000) == 0)
  {
    goto LABEL_93;
  }

LABEL_168:
  v94 = *(a1 + 300);
  v95 = ((9 * (__clz(v94 | 1) ^ 0x1F) + 73) >> 6) + 2;
  if (v94 >= 0)
  {
    v96 = v95;
  }

  else
  {
    v96 = 12;
  }

  v19 += v96;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_172:
    v97 = *(a1 + 304);
    v98 = ((9 * (__clz(v97 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v97 >= 0)
    {
      v99 = v98;
    }

    else
    {
      v99 = 12;
    }

    v19 += v99;
  }

LABEL_94:
  v45 = *(a1 + 44);
  if (v45)
  {
    v46 = v19 + 3;
    if ((v45 & 1) == 0)
    {
      v46 = v19;
    }

    if ((v45 & 2) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 4) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 8) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x10) != 0)
    {
      v46 += 3;
    }

    if ((v45 & 0x20) != 0)
    {
      v19 = v46 + 3;
    }

    else
    {
      v19 = v46;
    }

    if ((v45 & 0x40) != 0)
    {
      v47 = *(a1 + 316);
      v48 = ((9 * (__clz(v47 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v47 >= 0)
      {
        v49 = v48;
      }

      else
      {
        v49 = 12;
      }

      v19 += v49;
    }

    if ((v45 & 0x80) != 0)
    {
      v50 = *(a1 + 320);
      v51 = ((9 * (__clz(v50 | 1) ^ 0x1F) + 73) >> 6) + 2;
      if (v50 >= 0)
      {
        v52 = v51;
      }

      else
      {
        v52 = 12;
      }

      v19 += v52;
    }
  }

  if ((v45 & 0x100) != 0)
  {
    v53 = *(a1 + 324);
    v54 = ((9 * (__clz(v53 | 1) ^ 0x1F) + 73) >> 6) + 2;
    if (v53 >= 0)
    {
      v55 = v54;
    }

    else
    {
      v55 = 12;
    }

    v19 += v55;
  }

  v56 = *(a1 + 8);
  if (v56)
  {
    v100 = v56 & 0xFFFFFFFFFFFFFFFELL;
    v101 = *((v56 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v101 < 0)
    {
      v101 = *(v100 + 16);
    }

    v19 += v101;
  }

  *(a1 + 48) = v19;
  return v19;
}

unint64_t sub_1AC1026E4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D2108, 0))
  {
    sub_1AC1002AC();
  }

  return sub_1AC10276C(a1, lpsrc);
}

unint64_t sub_1AC10276C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v36, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1671);
    v4 = sub_1AC10CFDC(v36, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v35, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v36);
  }

  sub_1AC123898(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_1AC107794(a1 + 56, a2 + 56);
  sub_1AC107794(a1 + 80, a2 + 80);
  sub_1AC107794(a1 + 104, a2 + 104);
  result = sub_1AC107794(a1 + 128, a2 + 128);
  v14 = *(a2 + 40);
  if (!v14)
  {
    goto LABEL_47;
  }

  if (v14)
  {
    v15 = *(a2 + 152);
    *(a1 + 40) |= 1u;
    v16 = *(a1 + 8);
    if (v16)
    {
      v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_1AC10BD50((a1 + 152), (v15 & 0xFFFFFFFFFFFFFFFELL), v16);
    if ((v14 & 2) == 0)
    {
LABEL_16:
      if ((v14 & 4) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_29;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_16;
  }

  v17 = *(a2 + 160);
  *(a1 + 40) |= 2u;
  v18 = *(a1 + 8);
  if (v18)
  {
    v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10BD50((a1 + 160), (v17 & 0xFFFFFFFFFFFFFFFELL), v18);
  if ((v14 & 4) == 0)
  {
LABEL_17:
    if ((v14 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_29:
  v19 = *(a2 + 168);
  *(a1 + 40) |= 4u;
  v20 = *(a1 + 8);
  if (v20)
  {
    v20 = *(v20 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10BD50((a1 + 168), (v19 & 0xFFFFFFFFFFFFFFFELL), v20);
  if ((v14 & 8) == 0)
  {
LABEL_18:
    if ((v14 & 0x10) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_35;
  }

LABEL_32:
  v21 = *(a2 + 176);
  *(a1 + 40) |= 8u;
  v22 = *(a1 + 8);
  if (v22)
  {
    v22 = *(v22 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10BD78((a1 + 176), (v21 & 0xFFFFFFFFFFFFFFFELL), v22);
  if ((v14 & 0x10) == 0)
  {
LABEL_19:
    if ((v14 & 0x20) == 0)
    {
      goto LABEL_20;
    }

LABEL_38:
    v25 = *(a2 + 192);
    *(a1 + 40) |= 0x20u;
    v26 = *(a1 + 8);
    if (v26)
    {
      v26 = *(v26 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_1AC10BD78((a1 + 192), (v25 & 0xFFFFFFFFFFFFFFFELL), v26);
    if ((v14 & 0x40) == 0)
    {
LABEL_21:
      if ((v14 & 0x80) == 0)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    }

    goto LABEL_41;
  }

LABEL_35:
  v23 = *(a2 + 184);
  *(a1 + 40) |= 0x10u;
  v24 = *(a1 + 8);
  if (v24)
  {
    v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10BD78((a1 + 184), (v23 & 0xFFFFFFFFFFFFFFFELL), v24);
  if ((v14 & 0x20) != 0)
  {
    goto LABEL_38;
  }

LABEL_20:
  if ((v14 & 0x40) == 0)
  {
    goto LABEL_21;
  }

LABEL_41:
  v27 = *(a2 + 200);
  *(a1 + 40) |= 0x40u;
  v28 = *(a1 + 8);
  if (v28)
  {
    v28 = *(v28 & 0xFFFFFFFFFFFFFFFELL);
  }

  result = sub_1AC10BD78((a1 + 200), (v27 & 0xFFFFFFFFFFFFFFFELL), v28);
  if ((v14 & 0x80) != 0)
  {
LABEL_44:
    v29 = *(a2 + 208);
    *(a1 + 40) |= 0x80u;
    v30 = *(a1 + 8);
    if (v30)
    {
      v30 = *(v30 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_1AC10BD78((a1 + 208), (v29 & 0xFFFFFFFFFFFFFFFELL), v30);
  }

LABEL_47:
  if ((v14 & 0xFF00) == 0)
  {
    goto LABEL_58;
  }

  if ((v14 & 0x100) != 0)
  {
    v33 = *(a2 + 216);
    *(a1 + 40) |= 0x100u;
    v34 = *(a1 + 8);
    if (v34)
    {
      v34 = *(v34 & 0xFFFFFFFFFFFFFFFELL);
    }

    result = sub_1AC10BD50((a1 + 216), (v33 & 0xFFFFFFFFFFFFFFFELL), v34);
    if ((v14 & 0x200) == 0)
    {
LABEL_50:
      if ((v14 & 0x400) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_97;
    }
  }

  else if ((v14 & 0x200) == 0)
  {
    goto LABEL_50;
  }

  *(a1 + 224) = *(a2 + 224);
  if ((v14 & 0x400) == 0)
  {
LABEL_51:
    if ((v14 & 0x800) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_98;
  }

LABEL_97:
  *(a1 + 228) = *(a2 + 228);
  if ((v14 & 0x800) == 0)
  {
LABEL_52:
    if ((v14 & 0x1000) == 0)
    {
      goto LABEL_53;
    }

    goto LABEL_99;
  }

LABEL_98:
  *(a1 + 232) = *(a2 + 232);
  if ((v14 & 0x1000) == 0)
  {
LABEL_53:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_54;
    }

    goto LABEL_100;
  }

LABEL_99:
  *(a1 + 240) = *(a2 + 240);
  if ((v14 & 0x2000) == 0)
  {
LABEL_54:
    if ((v14 & 0x4000) == 0)
    {
      goto LABEL_55;
    }

LABEL_101:
    *(a1 + 245) = *(a2 + 245);
    if ((v14 & 0x8000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

LABEL_100:
  *(a1 + 244) = *(a2 + 244);
  if ((v14 & 0x4000) != 0)
  {
    goto LABEL_101;
  }

LABEL_55:
  if ((v14 & 0x8000) != 0)
  {
LABEL_56:
    *(a1 + 246) = *(a2 + 246);
  }

LABEL_57:
  *(a1 + 40) |= v14;
LABEL_58:
  if ((v14 & 0xFF0000) == 0)
  {
    goto LABEL_69;
  }

  if ((v14 & 0x10000) != 0)
  {
    *(a1 + 247) = *(a2 + 247);
    if ((v14 & 0x20000) == 0)
    {
LABEL_61:
      if ((v14 & 0x40000) == 0)
      {
        goto LABEL_62;
      }

      goto LABEL_105;
    }
  }

  else if ((v14 & 0x20000) == 0)
  {
    goto LABEL_61;
  }

  *(a1 + 248) = *(a2 + 248);
  if ((v14 & 0x40000) == 0)
  {
LABEL_62:
    if ((v14 & 0x80000) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_106;
  }

LABEL_105:
  *(a1 + 249) = *(a2 + 249);
  if ((v14 & 0x80000) == 0)
  {
LABEL_63:
    if ((v14 & 0x100000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_107;
  }

LABEL_106:
  *(a1 + 250) = *(a2 + 250);
  if ((v14 & 0x100000) == 0)
  {
LABEL_64:
    if ((v14 & 0x200000) == 0)
    {
      goto LABEL_65;
    }

    goto LABEL_108;
  }

LABEL_107:
  *(a1 + 252) = *(a2 + 252);
  if ((v14 & 0x200000) == 0)
  {
LABEL_65:
    if ((v14 & 0x400000) == 0)
    {
      goto LABEL_66;
    }

LABEL_109:
    *(a1 + 264) = *(a2 + 264);
    if ((v14 & 0x800000) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_108:
  *(a1 + 256) = *(a2 + 256);
  if ((v14 & 0x400000) != 0)
  {
    goto LABEL_109;
  }

LABEL_66:
  if ((v14 & 0x800000) != 0)
  {
LABEL_67:
    *(a1 + 272) = *(a2 + 272);
  }

LABEL_68:
  *(a1 + 40) |= v14;
LABEL_69:
  if (!HIBYTE(v14))
  {
    goto LABEL_79;
  }

  if ((v14 & 0x1000000) != 0)
  {
    *(a1 + 276) = *(a2 + 276);
    if ((v14 & 0x2000000) == 0)
    {
LABEL_72:
      if ((v14 & 0x4000000) == 0)
      {
        goto LABEL_73;
      }

      goto LABEL_121;
    }
  }

  else if ((v14 & 0x2000000) == 0)
  {
    goto LABEL_72;
  }

  *(a1 + 280) = *(a2 + 280);
  if ((v14 & 0x4000000) == 0)
  {
LABEL_73:
    if ((v14 & 0x8000000) == 0)
    {
      goto LABEL_74;
    }

    goto LABEL_122;
  }

LABEL_121:
  *(a1 + 284) = *(a2 + 284);
  if ((v14 & 0x8000000) == 0)
  {
LABEL_74:
    if ((v14 & 0x10000000) == 0)
    {
      goto LABEL_75;
    }

    goto LABEL_123;
  }

LABEL_122:
  *(a1 + 288) = *(a2 + 288);
  if ((v14 & 0x10000000) == 0)
  {
LABEL_75:
    if ((v14 & 0x20000000) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_124;
  }

LABEL_123:
  *(a1 + 292) = *(a2 + 292);
  if ((v14 & 0x20000000) == 0)
  {
LABEL_76:
    if ((v14 & 0x40000000) == 0)
    {
      goto LABEL_77;
    }

LABEL_125:
    *(a1 + 300) = *(a2 + 300);
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

LABEL_126:
    *(a1 + 304) = *(a2 + 304);
    goto LABEL_78;
  }

LABEL_124:
  *(a1 + 296) = *(a2 + 296);
  if ((v14 & 0x40000000) != 0)
  {
    goto LABEL_125;
  }

LABEL_77:
  if ((v14 & 0x80000000) != 0)
  {
    goto LABEL_126;
  }

LABEL_78:
  *(a1 + 40) |= v14;
LABEL_79:
  v31 = *(a2 + 44);
  if (!v31)
  {
    goto LABEL_90;
  }

  if (v31)
  {
    *(a1 + 308) = *(a2 + 308);
    if ((v31 & 2) == 0)
    {
LABEL_82:
      if ((v31 & 4) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_113;
    }
  }

  else if ((v31 & 2) == 0)
  {
    goto LABEL_82;
  }

  *(a1 + 309) = *(a2 + 309);
  if ((v31 & 4) == 0)
  {
LABEL_83:
    if ((v31 & 8) == 0)
    {
      goto LABEL_84;
    }

    goto LABEL_114;
  }

LABEL_113:
  *(a1 + 310) = *(a2 + 310);
  if ((v31 & 8) == 0)
  {
LABEL_84:
    if ((v31 & 0x10) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_115;
  }

LABEL_114:
  *(a1 + 311) = *(a2 + 311);
  if ((v31 & 0x10) == 0)
  {
LABEL_85:
    if ((v31 & 0x20) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_116;
  }

LABEL_115:
  *(a1 + 312) = *(a2 + 312);
  if ((v31 & 0x20) == 0)
  {
LABEL_86:
    if ((v31 & 0x40) == 0)
    {
      goto LABEL_87;
    }

LABEL_117:
    *(a1 + 316) = *(a2 + 316);
    if ((v31 & 0x80) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_88;
  }

LABEL_116:
  *(a1 + 313) = *(a2 + 313);
  if ((v31 & 0x40) != 0)
  {
    goto LABEL_117;
  }

LABEL_87:
  if ((v31 & 0x80) != 0)
  {
LABEL_88:
    *(a1 + 320) = *(a2 + 320);
  }

LABEL_89:
  *(a1 + 44) |= v31;
LABEL_90:
  if ((v31 & 0x100) != 0)
  {
    v32 = *(a2 + 324);
    *(a1 + 44) |= 0x100u;
    *(a1 + 324) = v32;
  }

  return result;
}

void sub_1AC102CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC102CF8(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F20D1CE8;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_1F20D1D88;
  sub_1AC10D5E4(a1 + 24, a2);
  *(a1 + 48) = 0;
  if (atomic_load_explicit(dword_1EE77CC80, memory_order_acquire))
  {
    sub_1AC1183E0(dword_1EE77CC80);
  }

  *(a1 + 56) = &qword_1EB54A5B0;
  *(a1 + 64) = &qword_1EB54A5B0;
  *(a1 + 72) = &qword_1EB54A5B0;
  *(a1 + 80) = 16843008;
  return a1;
}

uint64_t sub_1AC102DB4(uint64_t a1)
{
  sub_1AC102DF0(a1);
  sub_1AC0FD54C((a1 + 8));
  sub_1AC10D6B0(a1 + 24);
  return a1;
}

uint64_t *sub_1AC102DF0(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AC10CFC4(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 1972);
    v3 = sub_1AC10CFDC(v14, "CHECK failed: GetArena() == nullptr: ");
    sub_1AC10D118(&v13, &v3->__r_.__value_.__l.__data_);
    sub_1AC10D120(v14);
  }

LABEL_4:
  if (*(a1 + 56) != &qword_1EB54A5B0)
  {
    v4 = sub_1AC0FF894((a1 + 56));
    v5 = v4;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x1AC5AC440](v5, 0x1012C40EC159624);
  }

  result = (a1 + 64);
  if (*(a1 + 64) != &qword_1EB54A5B0)
  {
    v7 = sub_1AC0FF894(result);
    v8 = v7;
    if (*(v7 + 23) < 0)
    {
      operator delete(*v7);
    }

    result = MEMORY[0x1AC5AC440](v8, 0x1012C40EC159624);
  }

  v10 = *(a1 + 72);
  v9 = (a1 + 72);
  if (v10 != &qword_1EB54A5B0)
  {
    v11 = sub_1AC0FF894(v9);
    v12 = v11;
    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    return MEMORY[0x1AC5AC440](v12, 0x1012C40EC159624);
  }

  return result;
}

void sub_1AC102F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC102F50(uint64_t a1)
{
  sub_1AC102DB4(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC102F88(uint64_t a1)
{
  sub_1AC102DB4(a1 - 16);

  JUMPOUT(0x1AC5AC440);
}

unsigned __int8 *sub_1AC102FC4(uint64_t a1)
{
  result = sub_1AC111064((a1 + 24));
  v3 = *(a1 + 48);
  if ((v3 & 7) != 0)
  {
    if ((v3 & 1) == 0)
    {
      if ((v3 & 2) == 0)
      {
        goto LABEL_4;
      }

LABEL_10:
      v5 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v5 + 23) < 0)
      {
        **v5 = 0;
        *(v5 + 8) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        *v5 = 0;
        *(v5 + 23) = 0;
        if ((v3 & 4) == 0)
        {
          goto LABEL_17;
        }
      }

      goto LABEL_14;
    }

    v4 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
      if ((v3 & 2) != 0)
      {
        goto LABEL_10;
      }
    }

LABEL_4:
    if ((v3 & 4) == 0)
    {
      goto LABEL_17;
    }

LABEL_14:
    v6 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 23) < 0)
    {
      **v6 = 0;
      *(v6 + 8) = 0;
    }

    else
    {
      *v6 = 0;
      *(v6 + 23) = 0;
    }
  }

LABEL_17:
  if ((v3 & 0x78) != 0)
  {
    *(a1 + 80) = 16843008;
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v8 + 31) < 0)
    {
      **(v8 + 8) = 0;
      *(v8 + 16) = 0;
    }

    else
    {
      *(v8 + 8) = 0;
      *(v8 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AC1030D4(uint64_t a1, char *a2, int32x2_t *a3)
{
  v41 = a2;
  v5 = 0;
  if ((sub_1AC0FF968(a3, &v41, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v41 + 1;
      v8 = *v41;
      if ((*v41 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v21 = sub_1AC119AE0(v41, v9 - 128);
      v41 = v21;
      if (!v21)
      {
        goto LABEL_76;
      }

      v7 = v21;
      v8 = v22;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 <= 3)
      {
        if (v10 == 1)
        {
          if (v8 != 10)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 1u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 56);
LABEL_53:
          v28 = sub_1AC10BD88(v24, v23);
          v29 = sub_1AC119B24(v28, v41, a3);
          goto LABEL_54;
        }

        if (v10 == 2)
        {
          if (v8 != 18)
          {
            goto LABEL_57;
          }

          *(a1 + 48) |= 2u;
          v23 = *(a1 + 8);
          if (v23)
          {
            v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
          }

          v24 = (a1 + 64);
          goto LABEL_53;
        }

        if (v10 != 3 || v8 != 24)
        {
          goto LABEL_57;
        }

        v5 |= 0x10u;
        v16 = v7 + 1;
        v15 = *v7;
        if ((v15 & 0x8000000000000000) == 0)
        {
          goto LABEL_26;
        }

        v17 = *v16;
        v15 = (v17 << 7) + v15 - 128;
        if ((v17 & 0x80000000) == 0)
        {
          v16 = v7 + 2;
LABEL_26:
          v41 = v16;
          *(a1 + 81) = v15 != 0;
          goto LABEL_55;
        }

        v39 = sub_1AC119A98(v7, v15);
        v41 = v39;
        *(a1 + 81) = v40 != 0;
        if (!v39)
        {
LABEL_76:
          v41 = 0;
          goto LABEL_2;
        }
      }

      else if (v8 >> 3 > 5)
      {
        if (v10 == 6)
        {
          if (v8 == 50)
          {
            *(a1 + 48) |= 4u;
            v23 = *(a1 + 8);
            if (v23)
            {
              v23 = *(v23 & 0xFFFFFFFFFFFFFFFELL);
            }

            v24 = (a1 + 72);
            goto LABEL_53;
          }

LABEL_57:
          if (v8)
          {
            v30 = (v8 & 7) == 4;
          }

          else
          {
            v30 = 1;
          }

          if (v30)
          {
            a3[10].i32[0] = v8 - 1;
            goto LABEL_2;
          }

          if (v8 < 0x648)
          {
            v31 = *(a1 + 8);
            if (v31)
            {
              v32 = (v31 & 0xFFFFFFFFFFFFFFFELL) + 8;
            }

            else
            {
              v32 = sub_1AC0FFAA8((a1 + 8));
              v7 = v41;
            }

            v29 = sub_1AC119FE0(v8, v32, v7, a3);
          }

          else
          {
            v29 = sub_1AC112598((a1 + 24), v8, v7, &unk_1EB54A6E0, (a1 + 8), a3);
          }

LABEL_54:
          v41 = v29;
          if (!v29)
          {
            goto LABEL_76;
          }

          goto LABEL_55;
        }

        if (v10 != 200 || v8 != 64)
        {
          goto LABEL_57;
        }

        v5 |= 8u;
        v19 = v7 + 1;
        v18 = *v7;
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        v20 = *v19;
        v18 = (v20 << 7) + v18 - 128;
        if ((v20 & 0x80000000) == 0)
        {
          v19 = v7 + 2;
LABEL_33:
          v41 = v19;
          *(a1 + 80) = v18 != 0;
          goto LABEL_55;
        }

        v37 = sub_1AC119A98(v7, v18);
        v41 = v37;
        *(a1 + 80) = v38 != 0;
        if (!v37)
        {
          goto LABEL_76;
        }
      }

      else if (v10 == 4)
      {
        if (v8 != 32)
        {
          goto LABEL_57;
        }

        v5 |= 0x20u;
        v26 = v7 + 1;
        v25 = *v7;
        if ((v25 & 0x8000000000000000) == 0)
        {
          goto LABEL_44;
        }

        v27 = *v26;
        v25 = (v27 << 7) + v25 - 128;
        if ((v27 & 0x80000000) == 0)
        {
          v26 = v7 + 2;
LABEL_44:
          v41 = v26;
          *(a1 + 82) = v25 != 0;
          goto LABEL_55;
        }

        v33 = sub_1AC119A98(v7, v25);
        v41 = v33;
        *(a1 + 82) = v34 != 0;
        if (!v33)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v10 != 5 || v8 != 40)
        {
          goto LABEL_57;
        }

        v5 |= 0x40u;
        v12 = v7 + 1;
        v11 = *v7;
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_15;
        }

        v13 = *v12;
        v11 = (v13 << 7) + v11 - 128;
        if ((v13 & 0x80000000) == 0)
        {
          v12 = v7 + 2;
LABEL_15:
          v41 = v12;
          *(a1 + 83) = v11 != 0;
          goto LABEL_55;
        }

        v35 = sub_1AC119A98(v7, v11);
        v41 = v35;
        *(a1 + 83) = v36 != 0;
        if (!v35)
        {
          goto LABEL_76;
        }
      }

LABEL_55:
      if (sub_1AC0FF968(a3, &v41, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v41 + 2;
LABEL_6:
    v41 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 48) |= v5;
  return v41;
}

char *sub_1AC1034CC(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 48);
  if (v6)
  {
    v4 = sub_1AC0FDC94(a3, 1, (*(a1 + 56) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  v4 = sub_1AC0FDC94(a3, 2, (*(a1 + 64) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 0x10) == 0)
  {
LABEL_4:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_11:
  if (*a3 <= v4)
  {
    v4 = sub_1AC10C538(a3, v4);
  }

  v7 = *(a1 + 81);
  *v4 = 24;
  v4[1] = v7;
  v4 += 2;
  if ((v6 & 0x20) == 0)
  {
LABEL_5:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_14:
  if (*a3 <= v4)
  {
    v4 = sub_1AC10C538(a3, v4);
  }

  v8 = *(a1 + 82);
  *v4 = 32;
  v4[1] = v8;
  v4 += 2;
  if ((v6 & 0x40) == 0)
  {
LABEL_6:
    if ((v6 & 4) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_20;
  }

LABEL_17:
  if (*a3 <= v4)
  {
    v4 = sub_1AC10C538(a3, v4);
  }

  v9 = *(a1 + 83);
  *v4 = 40;
  v4[1] = v9;
  v4 += 2;
  if ((v6 & 4) == 0)
  {
LABEL_7:
    if ((v6 & 8) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_21;
  }

LABEL_20:
  v4 = sub_1AC0FDC94(a3, 6, (*(a1 + 72) & 0xFFFFFFFFFFFFFFFELL), v4);
  if ((v6 & 8) == 0)
  {
    goto LABEL_24;
  }

LABEL_21:
  if (*a3 <= v4)
  {
    v4 = sub_1AC10C538(a3, v4);
  }

  v10 = *(a1 + 80);
  *v4 = 3264;
  v4[2] = v10;
  v4 += 3;
LABEL_24:
  v11 = sub_1AC11334C(a1 + 24, 201, 0x20000000, v4, a3);
  v12 = v11;
  v13 = *(a1 + 8);
  if ((v13 & 1) == 0)
  {
    return v12;
  }

  v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
  v16 = *(v15 + 31);
  if (v16 < 0)
  {
    v17 = *(v15 + 8);
    v16 = *(v15 + 16);
  }

  else
  {
    v17 = (v15 + 8);
  }

  if ((*a3 - v11) >= v16)
  {
    v18 = v16;
    memcpy(v11, v17, v16);
    v12 += v18;
    return v12;
  }

  return sub_1AC10C650(a3, v17, v16, v11);
}

uint64_t sub_1AC1036DC(uint64_t a1)
{
  result = sub_1AC115F6C(a1 + 24);
  v3 = *(a1 + 48);
  if ((v3 & 0x7F) == 0)
  {
    goto LABEL_11;
  }

  if ((v3 & 1) == 0)
  {
    if ((v3 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_16:
    v12 = *(a1 + 64) & 0xFFFFFFFFFFFFFFFELL;
    v13 = *(v12 + 23);
    v14 = *(v12 + 8);
    if ((v13 & 0x80u) == 0)
    {
      v14 = v13;
    }

    result += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v3 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_5;
  }

  v9 = *(a1 + 56) & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 23);
  v11 = *(v9 + 8);
  if ((v10 & 0x80u) == 0)
  {
    v11 = v10;
  }

  result += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v3 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_4:
  if ((v3 & 4) != 0)
  {
LABEL_5:
    v4 = *(a1 + 72) & 0xFFFFFFFFFFFFFFFELL;
    v5 = *(v4 + 23);
    v6 = *(v4 + 8);
    if ((v5 & 0x80u) == 0)
    {
      v6 = v5;
    }

    result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_8:
  v7 = result + 3;
  if ((v3 & 8) == 0)
  {
    v7 = result;
  }

  result = v7 + ((v3 >> 4) & 2) + ((v3 >> 3) & 2) + ((v3 >> 5) & 2);
LABEL_11:
  v8 = *(a1 + 8);
  if (v8)
  {
    v15 = v8 & 0xFFFFFFFFFFFFFFFELL;
    v16 = *((v8 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v16 < 0)
    {
      v16 = *(v15 + 16);
    }

    result += v16;
  }

  *(a1 + 52) = result;
  return result;
}

void sub_1AC10383C(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D2130, 0))
  {
    sub_1AC1002AC();
  }

  sub_1AC1038C4(a1, lpsrc);
}

void sub_1AC1038C4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v21, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2246);
    v4 = sub_1AC10CFDC(v21, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v20, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v21);
  }

  sub_1AC123898(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 48);
  if ((v13 & 0x7F) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 56);
      *(a1 + 48) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1AC10BD50((a1 + 56), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_30;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    v16 = *(a2 + 64);
    *(a1 + 48) |= 2u;
    v17 = *(a1 + 8);
    if (v17)
    {
      v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_1AC10BD50((a1 + 64), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    if ((v13 & 4) == 0)
    {
LABEL_17:
      if ((v13 & 8) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_33;
    }

LABEL_30:
    v18 = *(a2 + 72);
    *(a1 + 48) |= 4u;
    v19 = *(a1 + 8);
    if (v19)
    {
      v19 = *(v19 & 0xFFFFFFFFFFFFFFFELL);
    }

    sub_1AC10BD50((a1 + 72), (v18 & 0xFFFFFFFFFFFFFFFELL), v19);
    if ((v13 & 8) == 0)
    {
LABEL_18:
      if ((v13 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_34;
    }

LABEL_33:
    *(a1 + 80) = *(a2 + 80);
    if ((v13 & 0x10) == 0)
    {
LABEL_19:
      if ((v13 & 0x20) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_35;
    }

LABEL_34:
    *(a1 + 81) = *(a2 + 81);
    if ((v13 & 0x20) == 0)
    {
LABEL_20:
      if ((v13 & 0x40) == 0)
      {
LABEL_22:
        *(a1 + 48) |= v13;
        return;
      }

LABEL_21:
      *(a1 + 83) = *(a2 + 83);
      goto LABEL_22;
    }

LABEL_35:
    *(a1 + 82) = *(a2 + 82);
    if ((v13 & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }
}

void sub_1AC103A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void *sub_1AC103AC0(void *a1, uint64_t a2)
{
  *a1 = &unk_1F20D1DC8;
  a1[1] = a2;
  a1[2] = 0;
  if (atomic_load_explicit(dword_1EE77CC68, memory_order_acquire))
  {
    sub_1AC1183E0(dword_1EE77CC68);
  }

  a1[3] = &qword_1EB54A5B0;
  a1[4] = &qword_1EB54A5B0;
  return a1;
}

uint64_t sub_1AC103B30(uint64_t a1)
{
  sub_1AC103B64(a1);
  sub_1AC0FD54C((a1 + 8));
  return a1;
}

uint64_t *sub_1AC103B64(uint64_t a1)
{
  v2 = *(a1 + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AC10CFC4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2362);
    v3 = sub_1AC10CFDC(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_1AC10D118(&v11, &v3->__r_.__value_.__l.__data_);
    sub_1AC10D120(v12);
  }

LABEL_4:
  result = (a1 + 24);
  if (*(a1 + 24) != &qword_1EB54A5B0)
  {
    v5 = sub_1AC0FF894(result);
    v6 = v5;
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    result = MEMORY[0x1AC5AC440](v6, 0x1012C40EC159624);
  }

  v8 = *(a1 + 32);
  v7 = (a1 + 32);
  if (v8 != &qword_1EB54A5B0)
  {
    v9 = sub_1AC0FF894(v7);
    v10 = v9;
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    return MEMORY[0x1AC5AC440](v10, 0x1012C40EC159624);
  }

  return result;
}

void sub_1AC103C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC103C88(uint64_t a1)
{
  sub_1AC103B30(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC103CC0(uint64_t result)
{
  v1 = *(result + 16);
  if ((v1 & 3) != 0)
  {
    if (v1)
    {
      v2 = *(result + 24) & 0xFFFFFFFFFFFFFFFELL;
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        if ((v1 & 2) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_6;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }

    if ((v1 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    v3 = *(result + 32) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v3 + 23) < 0)
    {
      **v3 = 0;
      *(v3 + 8) = 0;
    }

    else
    {
      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

LABEL_11:
  *(result + 16) = 0;
  v4 = *(result + 8);
  if (v4)
  {
    v5 = v4 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v5 + 31) < 0)
    {
      **(v5 + 8) = 0;
      *(v5 + 16) = 0;
    }

    else
    {
      *(v5 + 8) = 0;
      *(v5 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AC103D5C(uint64_t a1, char *a2, int32x2_t *a3)
{
  v20 = a2;
  for (i = a3[11].i32[1]; (sub_1AC0FF968(a3, &v20, i) & 1) == 0; i = a3[11].i32[1])
  {
    v6 = v20 + 1;
    v7 = *v20;
    if ((*v20 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    v8 = v7 + (*v6 << 7);
    v7 = v8 - 128;
    if ((*v6 & 0x80000000) == 0)
    {
      v6 = v20 + 2;
LABEL_6:
      v20 = v6;
      goto LABEL_7;
    }

    v17 = sub_1AC119AE0(v20, v8 - 128);
    v20 = v17;
    if (!v17)
    {
      return 0;
    }

    v6 = v17;
    v7 = v18;
LABEL_7:
    if (v7 >> 3 == 2)
    {
      if (v7 == 18)
      {
        *(a1 + 16) |= 2u;
        v14 = *(a1 + 8);
        if (v14)
        {
          v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
        }

        v15 = (a1 + 32);
        goto LABEL_26;
      }
    }

    else if (v7 >> 3 == 1 && v7 == 10)
    {
      *(a1 + 16) |= 1u;
      v14 = *(a1 + 8);
      if (v14)
      {
        v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
      }

      v15 = (a1 + 24);
LABEL_26:
      v16 = sub_1AC10BD88(v15, v14);
      v13 = sub_1AC119B24(v16, v20, a3);
      goto LABEL_27;
    }

    if (v7)
    {
      v10 = (v7 & 7) == 4;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      a3[10].i32[0] = v7 - 1;
      return v20;
    }

    v11 = *(a1 + 8);
    if (v11)
    {
      v12 = (v11 & 0xFFFFFFFFFFFFFFFELL) + 8;
    }

    else
    {
      v12 = sub_1AC0FFAA8((a1 + 8));
      v6 = v20;
    }

    v13 = sub_1AC119FE0(v7, v12, v6, a3);
LABEL_27:
    v20 = v13;
    if (!v13)
    {
      return 0;
    }
  }

  return v20;
}

char *sub_1AC103EE0(uint64_t a1, char *__dst, unint64_t *a3)
{
  v4 = __dst;
  v6 = *(a1 + 16);
  if (v6)
  {
    v4 = sub_1AC0FDC94(a3, 1, (*(a1 + 24) & 0xFFFFFFFFFFFFFFFELL), __dst);
  }

  if ((v6 & 2) != 0)
  {
    v4 = sub_1AC0FDC94(a3, 2, (*(a1 + 32) & 0xFFFFFFFFFFFFFFFELL), v4);
  }

  v7 = *(a1 + 8);
  if ((v7 & 1) == 0)
  {
    return v4;
  }

  v9 = v7 & 0xFFFFFFFFFFFFFFFELL;
  v10 = *(v9 + 31);
  if (v10 < 0)
  {
    v11 = *(v9 + 8);
    v10 = *(v9 + 16);
  }

  else
  {
    v11 = (v9 + 8);
  }

  if ((*a3 - v4) >= v10)
  {
    v12 = v10;
    memcpy(v4, v11, v10);
    v4 += v12;
    return v4;
  }

  return sub_1AC10C650(a3, v11, v10, v4);
}

uint64_t sub_1AC103FC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if ((v1 & 3) == 0)
  {
    v2 = 0;
    goto LABEL_12;
  }

  if ((v1 & 1) == 0)
  {
    v2 = 0;
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  v3 = *(a1 + 24) & 0xFFFFFFFFFFFFFFFELL;
  v4 = *(v3 + 23);
  v5 = *(v3 + 8);
  if ((v4 & 0x80u) == 0)
  {
    v5 = v4;
  }

  v2 = v5 + ((9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v1 & 2) != 0)
  {
LABEL_9:
    v6 = *(a1 + 32) & 0xFFFFFFFFFFFFFFFELL;
    v7 = *(v6 + 23);
    v8 = *(v6 + 8);
    if ((v7 & 0x80u) == 0)
    {
      v8 = v7;
    }

    v2 += v8 + ((9 * (__clz(v8 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_12:
  v9 = *(a1 + 8);
  if (v9)
  {
    v11 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v12 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v12 < 0)
    {
      v12 = *(v11 + 16);
    }

    v2 += v12;
  }

  *(a1 + 20) = v2;
  return v2;
}

unint64_t sub_1AC104098(unint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D2168, 0))
  {
    sub_1AC1002AC();
  }

  return sub_1AC104120(a1, lpsrc);
}

unint64_t sub_1AC104120(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2516);
    v4 = sub_1AC10CFDC(v19, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v18, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v19);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(v3 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((v3 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    result = std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 16);
  if ((v13 & 3) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 24);
      *(v3 + 16) |= 1u;
      v15 = *(v3 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      result = sub_1AC10BD50((v3 + 24), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
    }

    if ((v13 & 2) != 0)
    {
      v16 = *(a2 + 32);
      *(v3 + 16) |= 2u;
      v17 = *(v3 + 8);
      if (v17)
      {
        v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
      }

      return sub_1AC10BD50((v3 + 32), (v16 & 0xFFFFFFFFFFFFFFFELL), v17);
    }
  }

  return result;
}

void sub_1AC104254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC104284(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F20D1E48;
  *(a1 + 8) = a2;
  sub_1AC10D5E4(a1 + 16, a2);
  *(a1 + 40) = a2;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  if (atomic_load_explicit(dword_1EE77CC48, memory_order_acquire))
  {
    sub_1AC1183E0(dword_1EE77CC48);
  }

  return a1;
}

void sub_1AC104304(_Unwind_Exception *a1)
{
  sub_1AC107988(v2);
  sub_1AC10D6B0(v1 + 16);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC104320(uint64_t a1)
{
  v3 = (a1 + 8);
  v2 = *(a1 + 8);
  if (v2)
  {
    if (!*(v2 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (v2)
  {
LABEL_3:
    sub_1AC10CFC4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2589);
    v4 = sub_1AC10CFDC(v7, "CHECK failed: GetArena() == nullptr: ");
    sub_1AC10D118(&v6, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v7);
  }

LABEL_4:
  sub_1AC0FD54C(v3);
  sub_1AC107988((a1 + 40));
  sub_1AC10D6B0(a1 + 16);
  return a1;
}

void sub_1AC1043C0(void *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  sub_1AC10B290(a1);
}

void sub_1AC1043E4(uint64_t a1)
{
  sub_1AC104320(a1);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC10441C(uint64_t a1)
{
  sub_1AC111064((a1 + 16));
  result = sub_1AC107634(a1 + 40);
  v3 = *(a1 + 8);
  if (v3)
  {
    v4 = v3 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 31) < 0)
    {
      **(v4 + 8) = 0;
      *(v4 + 16) = 0;
    }

    else
    {
      *(v4 + 8) = 0;
      *(v4 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AC104478(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  if ((sub_1AC0FF968(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v5 = v23 + 1;
      v6 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      v7 = v6 + (*v5 << 7);
      v6 = v7 - 128;
      if ((*v5 & 0x80000000) == 0)
      {
        break;
      }

      v20 = sub_1AC119AE0(v23, v7 - 128);
      v23 = v20;
      if (!v20)
      {
        return 0;
      }

      v5 = v20;
      v6 = v21;
LABEL_6:
      if (v6 == 10)
      {
        v10 = v5 - 1;
        while (1)
        {
          v11 = v10 + 1;
          v23 = v10 + 1;
          v12 = *(a1 + 56);
          if (!v12)
          {
            break;
          }

          v17 = *(a1 + 48);
          v13 = *v12;
          if (v17 < *v12)
          {
            *(a1 + 48) = v17 + 1;
            v14 = *&v12[2 * v17 + 2];
            goto LABEL_20;
          }

          if (v13 == *(a1 + 52))
          {
            goto LABEL_16;
          }

LABEL_17:
          *v12 = v13 + 1;
          v14 = sub_1AC1067D4(*(a1 + 40));
          v15 = *(a1 + 48);
          v16 = *(a1 + 56) + 8 * v15;
          *(a1 + 48) = v15 + 1;
          *(v16 + 8) = v14;
          v11 = v23;
LABEL_20:
          v10 = sub_1AC1234B0(a3, v14, v11);
          v23 = v10;
          if (!v10)
          {
            return 0;
          }

          if (*a3 <= v10 || *v10 != 10)
          {
            goto LABEL_30;
          }
        }

        v13 = *(a1 + 52);
LABEL_16:
        sub_1AC11EDA8(a1 + 40, v13 + 1);
        v12 = *(a1 + 56);
        v13 = *v12;
        goto LABEL_17;
      }

      if (v6)
      {
        v8 = (v6 & 7) == 4;
      }

      else
      {
        v8 = 1;
      }

      if (v8)
      {
        a3[10].i32[0] = v6 - 1;
        return v23;
      }

      if (v6 < 0x640)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v19 = (v18 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v19 = sub_1AC0FFAA8((a1 + 8));
          v5 = v23;
        }

        v9 = sub_1AC119FE0(v6, v19, v5, a3);
      }

      else
      {
        v9 = sub_1AC112598((a1 + 16), v6, v5, &unk_1EB54A738, (a1 + 8), a3);
      }

      v23 = v9;
      if (!v9)
      {
        return 0;
      }

LABEL_30:
      if (sub_1AC0FF968(a3, &v23, a3[11].i32[1]))
      {
        return v23;
      }
    }

    v5 = v23 + 2;
LABEL_5:
    v23 = v5;
    goto LABEL_6;
  }

  return v23;
}

char *sub_1AC104674(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 48);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_1AC10C538(a3, a2);
      }

      v8 = sub_1AC1073B0(a1 + 40, i);
      *a2 = 10;
      v9 = *(v8 + 20);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_1AC103EE0(v8, v10, a3);
    }
  }

  v14 = sub_1AC11334C(a1 + 16, 200, 0x20000000, a2, a3);
  v15 = v14;
  v16 = *(a1 + 8);
  if ((v16 & 1) == 0)
  {
    return v15;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFFFELL;
  v19 = *(v18 + 31);
  if (v19 < 0)
  {
    v20 = *(v18 + 8);
    v19 = *(v18 + 16);
  }

  else
  {
    v20 = (v18 + 8);
  }

  if ((*a3 - v14) >= v19)
  {
    v21 = v19;
    memcpy(v14, v20, v19);
    v15 += v21;
    return v15;
  }

  return sub_1AC10C650(a3, v20, v19, v14);
}

uint64_t sub_1AC1047F8(uint64_t a1)
{
  v2 = sub_1AC115F6C(a1 + 16);
  v3 = *(a1 + 48);
  v4 = v2 + v3;
  v5 = *(a1 + 56);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_1AC103FC8(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    v12 = v10 & 0xFFFFFFFFFFFFFFFELL;
    v13 = *((v10 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v13 < 0)
    {
      v13 = *(v12 + 16);
    }

    v4 += v13;
  }

  *(a1 + 64) = v4;
  return v4;
}

unint64_t sub_1AC1048A0(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D2180, 0))
  {
    sub_1AC1002AC();
  }

  return sub_1AC104928(a1, lpsrc);
}

unint64_t sub_1AC104928(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2724);
    v4 = sub_1AC10CFDC(v15, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v14, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v15);
  }

  sub_1AC123898(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  return sub_1AC107A48(a1 + 40, a2 + 40);
}

void sub_1AC104A00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void *sub_1AC104A30(void *a1, uint64_t a2)
{
  *a1 = &unk_1F20D1EC8;
  a1[1] = a2;
  sub_1AC10D5E4((a1 + 2), a2);
  a1[5] = 0;
  if (atomic_load_explicit(dword_1EE77CCD0, memory_order_acquire))
  {
    sub_1AC1183E0(dword_1EE77CCD0);
  }

  a1[6] = &qword_1EB54A5B0;
  a1[7] = 0x100000000;
  return a1;
}

uint64_t sub_1AC104ABC(uint64_t a1)
{
  sub_1AC104AF8(a1);
  sub_1AC0FD54C((a1 + 8));
  sub_1AC10D6B0(a1 + 16);
  return a1;
}

uint64_t sub_1AC104AF8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AC10CFC4(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 2813);
    v3 = sub_1AC10CFDC(v9, "CHECK failed: GetArena() == nullptr: ");
    sub_1AC10D118(&v8, &v3->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v9);
  }

LABEL_4:
  v5 = *(v1 + 48);
  v4 = (v1 + 48);
  if (v5 != &qword_1EB54A5B0)
  {
    v6 = sub_1AC0FF894(v4);
    v7 = v6;
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    return MEMORY[0x1AC5AC440](v7, 0x1012C40EC159624);
  }

  return result;
}

void sub_1AC104BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC104BDC(uint64_t a1)
{
  sub_1AC104ABC(a1);

  JUMPOUT(0x1AC5AC440);
}

unsigned __int8 *sub_1AC104C14(uint64_t a1)
{
  result = sub_1AC111064((a1 + 16));
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
    if (*(v4 + 23) < 0)
    {
      **v4 = 0;
      *(v4 + 8) = 0;
    }

    else
    {
      *v4 = 0;
      *(v4 + 23) = 0;
    }
  }

  if ((v3 & 6) != 0)
  {
    *(a1 + 56) = 0x100000000;
  }

  *(a1 + 40) = 0;
  v5 = *(a1 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v6 + 31) < 0)
    {
      **(v6 + 8) = 0;
      *(v6 + 16) = 0;
    }

    else
    {
      *(v6 + 8) = 0;
      *(v6 + 31) = 0;
    }
  }

  return result;
}

char *sub_1AC104CAC(uint64_t a1, char *a2, int32x2_t *a3)
{
  v23 = a2;
  v5 = 0;
  if ((sub_1AC0FF968(a3, &v23, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v7 = v23 + 1;
      v8 = *v23;
      if ((*v23 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v9 = v8 + (*v7 << 7);
      v8 = v9 - 128;
      if ((*v7 & 0x80000000) == 0)
      {
        break;
      }

      v19 = sub_1AC119AE0(v23, v9 - 128);
      v23 = v19;
      if (!v19)
      {
        goto LABEL_44;
      }

      v7 = v19;
      v8 = v20;
LABEL_7:
      v10 = v8 >> 3;
      if (v8 >> 3 == 3)
      {
        if (v8 == 24)
        {
          v15 = v7 + 1;
          v14 = *v7;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_25;
          }

          v16 = *v15;
          v14 = (v16 << 7) + v14 - 128;
          if (v16 < 0)
          {
            v23 = sub_1AC119A98(v7, v14);
            if (!v23)
            {
LABEL_44:
              v23 = 0;
              goto LABEL_2;
            }
          }

          else
          {
            v15 = v7 + 2;
LABEL_25:
            v23 = v15;
          }

          if ((v14 - 1) > 5)
          {
            sub_1AC107FC4((a1 + 8), v14);
          }

          else
          {
            *(a1 + 40) |= 4u;
            *(a1 + 60) = v14;
          }

          goto LABEL_37;
        }
      }

      else if (v10 == 2)
      {
        if (v8 == 21)
        {
          v5 |= 2u;
          *(a1 + 56) = *v7;
          v23 = v7 + 4;
          goto LABEL_37;
        }
      }

      else if (v10 == 1 && v8 == 10)
      {
        *(a1 + 40) |= 1u;
        v17 = *(a1 + 8);
        if (v17)
        {
          v17 = *(v17 & 0xFFFFFFFFFFFFFFFELL);
        }

        v18 = sub_1AC10BD88((a1 + 48), v17);
        v13 = sub_1AC119B24(v18, v23, a3);
        goto LABEL_36;
      }

      if (v8)
      {
        v12 = (v8 & 7) == 4;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        a3[10].i32[0] = v8 - 1;
        goto LABEL_2;
      }

      if (v8 < 0x640)
      {
        v21 = *(a1 + 8);
        if (v21)
        {
          v22 = (v21 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v22 = sub_1AC0FFAA8((a1 + 8));
          v7 = v23;
        }

        v13 = sub_1AC119FE0(v8, v22, v7, a3);
      }

      else
      {
        v13 = sub_1AC112598((a1 + 16), v8, v7, qword_1EB54A620, (a1 + 8), a3);
      }

LABEL_36:
      v23 = v13;
      if (!v13)
      {
        goto LABEL_44;
      }

LABEL_37:
      if (sub_1AC0FF968(a3, &v23, a3[11].i32[1]))
      {
        goto LABEL_2;
      }
    }

    v7 = v23 + 2;
LABEL_6:
    v23 = v7;
    goto LABEL_7;
  }

LABEL_2:
  *(a1 + 40) |= v5;
  return v23;
}

char *sub_1AC104EF4(uint64_t a1, char *a2, unint64_t *a3)
{
  v4 = a2;
  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = sub_1AC0FDC94(a3, 1, (*(a1 + 48) & 0xFFFFFFFFFFFFFFFELL), a2);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  if (*a3 <= v4)
  {
    v4 = sub_1AC10C538(a3, v4);
  }

  v7 = *(a1 + 56);
  *v4 = 21;
  *(v4 + 1) = v7;
  v4 += 5;
  if ((v6 & 4) != 0)
  {
LABEL_9:
    if (*a3 <= v4)
    {
      v4 = sub_1AC10C538(a3, v4);
    }

    v8 = *(a1 + 60);
    *v4 = 24;
    if (v8 > 0x7F)
    {
      v4[1] = v8 | 0x80;
      v9 = v8 >> 7;
      if (v8 >> 14)
      {
        v4 += 3;
        do
        {
          *(v4 - 1) = v9 | 0x80;
          v10 = v9 >> 7;
          ++v4;
          v11 = v9 >> 14;
          v9 >>= 7;
        }

        while (v11);
        *(v4 - 1) = v10;
      }

      else
      {
        v4[2] = v9;
        v4 += 3;
      }
    }

    else
    {
      v4[1] = v8;
      v4 += 2;
    }
  }

LABEL_18:
  v12 = sub_1AC11334C(a1 + 16, 200, 0x20000000, v4, a3);
  v13 = v12;
  v14 = *(a1 + 8);
  if ((v14 & 1) == 0)
  {
    return v13;
  }

  v16 = v14 & 0xFFFFFFFFFFFFFFFELL;
  v17 = *(v16 + 31);
  if (v17 < 0)
  {
    v18 = *(v16 + 8);
    v17 = *(v16 + 16);
  }

  else
  {
    v18 = (v16 + 8);
  }

  if ((*a3 - v12) >= v17)
  {
    v19 = v17;
    memcpy(v12, v18, v17);
    v13 += v19;
    return v13;
  }

  return sub_1AC10C650(a3, v18, v17, v12);
}

uint64_t sub_1AC10509C(uint64_t a1)
{
  result = sub_1AC115F6C(a1 + 16);
  v3 = *(a1 + 40);
  if ((v3 & 7) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 48) & 0xFFFFFFFFFFFFFFFELL;
      v5 = *(v4 + 23);
      v6 = *(v4 + 8);
      if ((v5 & 0x80u) == 0)
      {
        v6 = v5;
      }

      result += v6 + ((9 * (__clz(v6 | 1) ^ 0x1F) + 73) >> 6) + 1;
    }

    if ((v3 & 2) != 0)
    {
      result += 5;
    }

    if ((v3 & 4) != 0)
    {
      v7 = *(a1 + 60);
      if (v7 < 0)
      {
        v8 = 11;
      }

      else
      {
        v8 = ((9 * (__clz(v7 | 1) ^ 0x1F) + 73) >> 6) + 1;
      }

      result += v8;
    }
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    v11 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v11 < 0)
    {
      v11 = *(v10 + 16);
    }

    result += v11;
  }

  *(a1 + 44) = result;
  return result;
}

void sub_1AC105178(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D2198, 0))
  {
    sub_1AC1002AC();
  }

  sub_1AC105200(a1, lpsrc);
}

void sub_1AC105200(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3001);
    v4 = sub_1AC10CFDC(v17, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v16, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v17);
  }

  sub_1AC123898(a1 + 16, a2 + 16);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  v13 = *(a2 + 40);
  if ((v13 & 7) != 0)
  {
    if (v13)
    {
      v14 = *(a2 + 48);
      *(a1 + 40) |= 1u;
      v15 = *(a1 + 8);
      if (v15)
      {
        v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
      }

      sub_1AC10BD50((a1 + 48), (v14 & 0xFFFFFFFFFFFFFFFELL), v15);
      if ((v13 & 2) == 0)
      {
LABEL_16:
        if ((v13 & 4) == 0)
        {
LABEL_18:
          *(a1 + 40) |= v13;
          return;
        }

LABEL_17:
        *(a1 + 60) = *(a2 + 60);
        goto LABEL_18;
      }
    }

    else if ((v13 & 2) == 0)
    {
      goto LABEL_16;
    }

    *(a1 + 56) = *(a2 + 56);
    if ((v13 & 4) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }
}

void sub_1AC10533C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC10536C(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F20D1F48;
  *(a1 + 8) = a2;
  *(a1 + 16) = &unk_1F20D2060;
  sub_1AC10D5E4(a1 + 24, a2);
  *(a1 + 56) = a2;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(dword_1EE77CC98, memory_order_acquire))
  {
    sub_1AC1183E0(dword_1EE77CC98);
  }

  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  return a1;
}

void sub_1AC105418(_Unwind_Exception *a1)
{
  sub_1AC107BF4(v2);
  sub_1AC10D6B0(v1 + 24);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC105438(uint64_t a1)
{
  sub_1AC10547C(a1);
  sub_1AC0FD54C((a1 + 8));
  sub_1AC107BF4((a1 + 56));
  sub_1AC10D6B0(a1 + 24);
  return a1;
}

uint64_t sub_1AC10547C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if ((v2 & 1) == 0)
  {
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (*(v2 & 0xFFFFFFFFFFFFFFFELL))
  {
LABEL_3:
    sub_1AC10CFC4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3145);
    v3 = sub_1AC10CFDC(v12, "CHECK failed: GetArena() == nullptr: ");
    sub_1AC10D118(&v11, &v3->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v12);
  }

LABEL_4:
  if (v1 != &unk_1EB54A8C8)
  {
    v4 = *(v1 + 80);
    if (v4)
    {
      v5 = sub_1AC1006E8(v4);
      MEMORY[0x1AC5AC440](v5, 0x10A1C4074230EEALL);
    }

    v6 = *(v1 + 88);
    if (v6)
    {
      v7 = sub_1AC102DB4(v6);
      MEMORY[0x1AC5AC440](v7, 0x10A1C402CDD3876);
    }

    v8 = *(v1 + 96);
    if (v8)
    {
      v9 = sub_1AC104320(v8);
      MEMORY[0x1AC5AC440](v9, 0x10A1C4075D007F8);
    }

    result = *(v1 + 104);
    if (result)
    {
      v10 = sub_1AC102DB4(result);
      return MEMORY[0x1AC5AC440](v10, 0x10A1C402CDD3876);
    }
  }

  return result;
}

void sub_1AC105584(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC1055A8(uint64_t a1)
{
  sub_1AC105438(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC1055E0(uint64_t a1)
{
  sub_1AC105438(a1 - 16);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC10561C(uint64_t a1)
{
  sub_1AC111064((a1 + 24));
  result = sub_1AC1076E4((a1 + 56));
  v3 = *(a1 + 48);
  if ((v3 & 0xF) != 0)
  {
    if (v3)
    {
      v4 = *(a1 + 80);
      if (!v4)
      {
        sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3178);
        v5 = sub_1AC10CFDC(v15, "CHECK failed: trainer_spec_ != nullptr: ");
        sub_1AC10D118(&v14, &v5->__r_.__value_.__l.__data_);
        sub_1AC10D120(v15);
        v4 = *(a1 + 80);
      }

      result = sub_1AC1009F8(v4);
    }

    if ((v3 & 2) != 0)
    {
      v6 = *(a1 + 88);
      if (!v6)
      {
        sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3182);
        v7 = sub_1AC10CFDC(v15, "CHECK failed: normalizer_spec_ != nullptr: ");
        sub_1AC10D118(&v14, &v7->__r_.__value_.__l.__data_);
        sub_1AC10D120(v15);
        v6 = *(a1 + 88);
      }

      result = sub_1AC102FC4(v6);
    }

    if ((v3 & 4) != 0)
    {
      v8 = *(a1 + 96);
      if (!v8)
      {
        sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3186);
        v9 = sub_1AC10CFDC(v15, "CHECK failed: self_test_data_ != nullptr: ");
        sub_1AC10D118(&v14, &v9->__r_.__value_.__l.__data_);
        sub_1AC10D120(v15);
        v8 = *(a1 + 96);
      }

      result = sub_1AC10441C(v8);
    }

    if ((v3 & 8) != 0)
    {
      v10 = *(a1 + 104);
      if (!v10)
      {
        sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3190);
        v11 = sub_1AC10CFDC(v15, "CHECK failed: denormalizer_spec_ != nullptr: ");
        sub_1AC10D118(&v14, &v11->__r_.__value_.__l.__data_);
        sub_1AC10D120(v15);
        v10 = *(a1 + 104);
      }

      result = sub_1AC102FC4(v10);
    }
  }

  *(a1 + 48) = 0;
  v12 = *(a1 + 8);
  if (v12)
  {
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (*(v13 + 31) < 0)
    {
      **(v13 + 8) = 0;
      *(v13 + 16) = 0;
    }

    else
    {
      *(v13 + 8) = 0;
      *(v13 + 31) = 0;
    }
  }

  return result;
}

void sub_1AC1057D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC105800(uint64_t a1, char *a2, int32x2_t *a3)
{
  v32 = a2;
  if ((sub_1AC0FF968(a3, &v32, a3[11].i32[1]) & 1) == 0)
  {
    while (1)
    {
      v6 = v32 + 1;
      v7 = *v32;
      if ((*v32 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      v8 = v7 + (*v6 << 7);
      v7 = v8 - 128;
      if ((*v6 & 0x80000000) == 0)
      {
        break;
      }

      v28 = sub_1AC119AE0(v32, v8 - 128);
      v32 = v28;
      if (!v28)
      {
        return 0;
      }

      v6 = v28;
      v7 = v29;
LABEL_7:
      v9 = v7 >> 3;
      if (v7 >> 3 > 2)
      {
        if (v9 == 3)
        {
          if (v7 == 26)
          {
            *(a1 + 48) |= 2u;
            v10 = *(a1 + 88);
            if (!v10)
            {
              v16 = *(a1 + 8);
              if (v16)
              {
                v16 = *(v16 & 0xFFFFFFFFFFFFFFFELL);
              }

              v10 = sub_1AC106704(v16);
              *(a1 + 88) = v10;
LABEL_32:
              v6 = v32;
            }

LABEL_33:
            v15 = sub_1AC123708(a3, v10, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 4)
        {
          if (v7 == 34)
          {
            *(a1 + 48) |= 4u;
            v17 = *(a1 + 96);
            if (!v17)
            {
              v18 = *(a1 + 8);
              if (v18)
              {
                v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
              }

              v17 = sub_1AC1068A4(v18);
              *(a1 + 96) = v17;
              v6 = v32;
            }

            v15 = sub_1AC1237D0(a3, v17, v6);
            goto LABEL_65;
          }
        }

        else if (v9 == 5 && v7 == 42)
        {
          *(a1 + 48) |= 8u;
          v10 = *(a1 + 104);
          if (!v10)
          {
            v11 = *(a1 + 8);
            if (v11)
            {
              v11 = *(v11 & 0xFFFFFFFFFFFFFFFELL);
            }

            v10 = sub_1AC106704(v11);
            *(a1 + 104) = v10;
            goto LABEL_32;
          }

          goto LABEL_33;
        }

        goto LABEL_54;
      }

      if (v9 == 1)
      {
        if (v7 != 10)
        {
          goto LABEL_54;
        }

        v19 = v6 - 1;
        while (2)
        {
          v20 = v19 + 1;
          v32 = v19 + 1;
          v21 = *(a1 + 72);
          if (!v21)
          {
            v22 = *(a1 + 68);
            goto LABEL_44;
          }

          v26 = *(a1 + 64);
          v22 = *v21;
          if (v26 >= *v21)
          {
            if (v22 == *(a1 + 68))
            {
LABEL_44:
              sub_1AC11EDA8(a1 + 56, v22 + 1);
              v21 = *(a1 + 72);
              v22 = *v21;
            }

            *v21 = v22 + 1;
            v23 = sub_1AC106974(*(a1 + 56));
            v24 = *(a1 + 64);
            v25 = *(a1 + 72) + 8 * v24;
            *(a1 + 64) = v24 + 1;
            *(v25 + 8) = v23;
            v20 = v32;
          }

          else
          {
            *(a1 + 64) = v26 + 1;
            v23 = *&v21[2 * v26 + 2];
          }

          v19 = sub_1AC123578(a3, v23, v20);
          v32 = v19;
          if (!v19)
          {
            return 0;
          }

          if (*a3 <= v19 || *v19 != 10)
          {
            goto LABEL_66;
          }

          continue;
        }
      }

      if (v9 == 2 && v7 == 18)
      {
        *(a1 + 48) |= 1u;
        v13 = *(a1 + 80);
        if (!v13)
        {
          v14 = *(a1 + 8);
          if (v14)
          {
            v14 = *(v14 & 0xFFFFFFFFFFFFFFFELL);
          }

          v13 = sub_1AC106634(v14);
          *(a1 + 80) = v13;
          v6 = v32;
        }

        sub_1AC123640(a3, v13, v6);
        goto LABEL_65;
      }

LABEL_54:
      if (v7)
      {
        v27 = (v7 & 7) == 4;
      }

      else
      {
        v27 = 1;
      }

      if (v27)
      {
        a3[10].i32[0] = v7 - 1;
        return v32;
      }

      if (v7 < 0x640)
      {
        v30 = *(a1 + 8);
        if (v30)
        {
          v31 = (v30 & 0xFFFFFFFFFFFFFFFELL) + 8;
        }

        else
        {
          v31 = sub_1AC0FFAA8((a1 + 8));
          v6 = v32;
        }

        v15 = sub_1AC119FE0(v7, v31, v6, a3);
      }

      else
      {
        v15 = sub_1AC112598((a1 + 24), v7, v6, &unk_1EB54A8C8, (a1 + 8), a3);
      }

LABEL_65:
      v32 = v15;
      if (!v15)
      {
        return 0;
      }

LABEL_66:
      if (sub_1AC0FF968(a3, &v32, a3[11].i32[1]))
      {
        return v32;
      }
    }

    v6 = v32 + 2;
LABEL_6:
    v32 = v6;
    goto LABEL_7;
  }

  return v32;
}

char *sub_1AC105B68(uint64_t a1, char *a2, unint64_t *a3)
{
  v6 = *(a1 + 64);
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      if (*a3 <= a2)
      {
        a2 = sub_1AC10C538(a3, a2);
      }

      v8 = sub_1AC0DDAA0(a1 + 56, i);
      *a2 = 10;
      v9 = *(v8 + 44);
      if (v9 > 0x7F)
      {
        a2[1] = v9 | 0x80;
        v11 = v9 >> 7;
        if (v9 >> 14)
        {
          v10 = a2 + 3;
          do
          {
            *(v10 - 1) = v11 | 0x80;
            v12 = v11 >> 7;
            ++v10;
            v13 = v11 >> 14;
            v11 >>= 7;
          }

          while (v13);
          *(v10 - 1) = v12;
        }

        else
        {
          a2[2] = v11;
          v10 = a2 + 3;
        }
      }

      else
      {
        a2[1] = v9;
        v10 = a2 + 2;
      }

      a2 = sub_1AC104EF4(v8, v10, a3);
    }
  }

  v14 = *(a1 + 48);
  if (v14)
  {
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v15 = *(a1 + 80);
    *a2 = 18;
    v16 = *(v15 + 48);
    if (v16 > 0x7F)
    {
      a2[1] = v16 | 0x80;
      v18 = v16 >> 7;
      if (v16 >> 14)
      {
        v17 = a2 + 3;
        do
        {
          *(v17 - 1) = v18 | 0x80;
          v19 = v18 >> 7;
          ++v17;
          v20 = v18 >> 14;
          v18 >>= 7;
        }

        while (v20);
        *(v17 - 1) = v19;
      }

      else
      {
        a2[2] = v18;
        v17 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v16;
      v17 = a2 + 2;
    }

    a2 = sub_1AC100CC0(v15, v17, a3);
    if ((v14 & 2) == 0)
    {
LABEL_15:
      if ((v14 & 4) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_38;
    }
  }

  else if ((v14 & 2) == 0)
  {
    goto LABEL_15;
  }

  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v21 = *(a1 + 88);
  *a2 = 26;
  v22 = *(v21 + 52);
  if (v22 > 0x7F)
  {
    a2[1] = v22 | 0x80;
    v24 = v22 >> 7;
    if (v22 >> 14)
    {
      v23 = a2 + 3;
      do
      {
        *(v23 - 1) = v24 | 0x80;
        v25 = v24 >> 7;
        ++v23;
        v26 = v24 >> 14;
        v24 >>= 7;
      }

      while (v26);
      *(v23 - 1) = v25;
    }

    else
    {
      a2[2] = v24;
      v23 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v22;
    v23 = a2 + 2;
  }

  a2 = sub_1AC1034CC(v21, v23, a3);
  if ((v14 & 4) == 0)
  {
LABEL_16:
    if ((v14 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_48;
  }

LABEL_38:
  if (*a3 <= a2)
  {
    a2 = sub_1AC10C538(a3, a2);
  }

  v27 = *(a1 + 96);
  *a2 = 34;
  v28 = *(v27 + 64);
  if (v28 > 0x7F)
  {
    a2[1] = v28 | 0x80;
    v30 = v28 >> 7;
    if (v28 >> 14)
    {
      v29 = a2 + 3;
      do
      {
        *(v29 - 1) = v30 | 0x80;
        v31 = v30 >> 7;
        ++v29;
        v32 = v30 >> 14;
        v30 >>= 7;
      }

      while (v32);
      *(v29 - 1) = v31;
    }

    else
    {
      a2[2] = v30;
      v29 = a2 + 3;
    }
  }

  else
  {
    a2[1] = v28;
    v29 = a2 + 2;
  }

  a2 = sub_1AC104674(v27, v29, a3);
  if ((v14 & 8) != 0)
  {
LABEL_48:
    if (*a3 <= a2)
    {
      a2 = sub_1AC10C538(a3, a2);
    }

    v33 = *(a1 + 104);
    *a2 = 42;
    v34 = *(v33 + 52);
    if (v34 > 0x7F)
    {
      a2[1] = v34 | 0x80;
      v36 = v34 >> 7;
      if (v34 >> 14)
      {
        v35 = a2 + 3;
        do
        {
          *(v35 - 1) = v36 | 0x80;
          v37 = v36 >> 7;
          ++v35;
          v38 = v36 >> 14;
          v36 >>= 7;
        }

        while (v38);
        *(v35 - 1) = v37;
      }

      else
      {
        a2[2] = v36;
        v35 = a2 + 3;
      }
    }

    else
    {
      a2[1] = v34;
      v35 = a2 + 2;
    }

    a2 = sub_1AC1034CC(v33, v35, a3);
  }

LABEL_58:
  v39 = sub_1AC11334C(a1 + 24, 200, 0x20000000, a2, a3);
  v40 = v39;
  v41 = *(a1 + 8);
  if ((v41 & 1) == 0)
  {
    return v40;
  }

  v43 = v41 & 0xFFFFFFFFFFFFFFFELL;
  v44 = *(v43 + 31);
  if (v44 < 0)
  {
    v45 = *(v43 + 8);
    v44 = *(v43 + 16);
  }

  else
  {
    v45 = (v43 + 8);
  }

  if ((*a3 - v39) >= v44)
  {
    v46 = v44;
    memcpy(v39, v45, v44);
    v40 += v46;
    return v40;
  }

  return sub_1AC10C650(a3, v45, v44, v39);
}

uint64_t sub_1AC105F60(uint64_t a1)
{
  v2 = sub_1AC115F6C(a1 + 24);
  v3 = *(a1 + 64);
  v4 = v2 + v3;
  v5 = *(a1 + 72);
  if (v5)
  {
    v6 = (v5 + 8);
  }

  else
  {
    v6 = 0;
  }

  if (v3)
  {
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      v9 = sub_1AC10509C(v8);
      v4 += v9 + ((9 * (__clz(v9 | 1) ^ 0x1F) + 73) >> 6);
      v7 -= 8;
    }

    while (v7);
  }

  v10 = *(a1 + 48);
  if ((v10 & 0xF) == 0)
  {
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    if ((v10 & 2) == 0)
    {
      goto LABEL_10;
    }

LABEL_16:
    v15 = sub_1AC1036DC(*(a1 + 88));
    v4 += v15 + ((9 * (__clz(v15 | 1) ^ 0x1F) + 73) >> 6) + 1;
    if ((v10 & 4) == 0)
    {
LABEL_11:
      if ((v10 & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    goto LABEL_17;
  }

  v14 = sub_1AC101E54(*(a1 + 80));
  v4 += v14 + ((9 * (__clz(v14 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_10:
  if ((v10 & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_17:
  v16 = sub_1AC1047F8(*(a1 + 96));
  v4 += v16 + ((9 * (__clz(v16 | 1) ^ 0x1F) + 73) >> 6) + 1;
  if ((v10 & 8) != 0)
  {
LABEL_12:
    v11 = sub_1AC1036DC(*(a1 + 104));
    v4 += v11 + ((9 * (__clz(v11 | 1) ^ 0x1F) + 73) >> 6) + 1;
  }

LABEL_13:
  v12 = *(a1 + 8);
  if (v12)
  {
    v17 = v12 & 0xFFFFFFFFFFFFFFFELL;
    v18 = *((v12 & 0xFFFFFFFFFFFFFFFELL) + 31);
    if (v18 < 0)
    {
      v18 = *(v17 + 16);
    }

    v4 += v18;
  }

  *(a1 + 52) = v4;
  return v4;
}

void sub_1AC1060E4(uint64_t a1, char **lpsrc)
{
  v4 = **lpsrc;
  if (!__dynamic_cast(lpsrc, &unk_1F20D25B0, &unk_1F20D21B0, 0))
  {
    sub_1AC1002AC();
  }

  sub_1AC10616C(a1, lpsrc);
}

void sub_1AC10616C(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.cc", 3397);
    v4 = sub_1AC10CFDC(v27, "CHECK failed: (&from) != (this): ");
    sub_1AC10D118(&v26, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v27);
  }

  sub_1AC123898(a1 + 24, a2 + 24);
  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = v5 & 0xFFFFFFFFFFFFFFFELL;
    v7 = (v5 & 0xFFFFFFFFFFFFFFFELL) + 8;
    v8 = *(a1 + 8);
    if (v8)
    {
      v9 = ((v8 & 0xFFFFFFFFFFFFFFFELL) + 8);
    }

    else
    {
      v9 = sub_1AC0FFAA8((a1 + 8));
    }

    v10 = *(v6 + 31);
    if (v10 >= 0)
    {
      v11 = v7;
    }

    else
    {
      v11 = *(v6 + 8);
    }

    if (v10 >= 0)
    {
      v12 = *(v6 + 31);
    }

    else
    {
      v12 = *(v6 + 16);
    }

    std::string::append(v9, v11, v12);
  }

  sub_1AC107CB4(a1 + 56, a2 + 56);
  v13 = *(a2 + 48);
  if ((v13 & 0xF) != 0)
  {
    if (v13)
    {
      *(a1 + 48) |= 1u;
      v14 = *(a1 + 80);
      if (!v14)
      {
        v15 = *(a1 + 8);
        if (v15)
        {
          v15 = *(v15 & 0xFFFFFFFFFFFFFFFELL);
        }

        v14 = sub_1AC106634(v15);
        *(a1 + 80) = v14;
      }

      if (*(a2 + 80))
      {
        v16 = *(a2 + 80);
      }

      else
      {
        v16 = &unk_1EB54A780;
      }

      sub_1AC10276C(v14, v16);
    }

    if ((v13 & 2) != 0)
    {
      *(a1 + 48) |= 2u;
      v17 = *(a1 + 88);
      if (!v17)
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          v18 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
        }

        v17 = sub_1AC106704(v18);
        *(a1 + 88) = v17;
      }

      if (*(a2 + 88))
      {
        v19 = *(a2 + 88);
      }

      else
      {
        v19 = &unk_1EB54A6E0;
      }

      sub_1AC1038C4(v17, v19);
      if ((v13 & 4) == 0)
      {
LABEL_25:
        if ((v13 & 8) == 0)
        {
          return;
        }

        goto LABEL_43;
      }
    }

    else if ((v13 & 4) == 0)
    {
      goto LABEL_25;
    }

    *(a1 + 48) |= 4u;
    v20 = *(a1 + 96);
    if (!v20)
    {
      v21 = *(a1 + 8);
      if (v21)
      {
        v21 = *(v21 & 0xFFFFFFFFFFFFFFFELL);
      }

      v20 = sub_1AC1068A4(v21);
      *(a1 + 96) = v20;
    }

    if (*(a2 + 96))
    {
      v22 = *(a2 + 96);
    }

    else
    {
      v22 = &unk_1EB54A738;
    }

    sub_1AC104928(v20, v22);
    if ((v13 & 8) != 0)
    {
LABEL_43:
      *(a1 + 48) |= 8u;
      v23 = *(a1 + 104);
      if (!v23)
      {
        v24 = *(a1 + 8);
        if (v24)
        {
          v24 = *(v24 & 0xFFFFFFFFFFFFFFFELL);
        }

        v23 = sub_1AC106704(v24);
        *(a1 + 104) = v23;
      }

      if (*(a2 + 104))
      {
        v25 = *(a2 + 104);
      }

      else
      {
        v25 = &unk_1EB54A6E0;
      }

      sub_1AC1038C4(v23, v25);
    }
  }
}

void sub_1AC106384(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC10639C(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    sub_1AC10561C(a1);

    sub_1AC10616C(a1, a2);
  }
}

uint64_t sub_1AC1063E8(uint64_t a1)
{
  result = sub_1AC1121F4(a1 + 24);
  if (!result)
  {
    return result;
  }

  result = sub_1AC1065CC(a1 + 56);
  if (!result)
  {
    return result;
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = *(a1 + 80);
    if (!v4)
    {
      sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4741);
      v5 = sub_1AC10CFDC(v13, "CHECK failed: !value || trainer_spec_ != nullptr: ");
      sub_1AC10D118(&v12, &v5->__r_.__value_.__l.__data_);
      sub_1AC10D120(v13);
      v4 = *(a1 + 80);
    }

    result = sub_1AC1121F4(v4 + 16);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 2) != 0)
  {
    v6 = *(a1 + 88);
    if (!v6)
    {
      sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4824);
      v7 = sub_1AC10CFDC(v13, "CHECK failed: !value || normalizer_spec_ != nullptr: ");
      sub_1AC10D118(&v12, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v13);
      v6 = *(a1 + 88);
    }

    result = sub_1AC1121F4(v6 + 24);
    if (!result)
    {
      return result;
    }

    v3 = *(a1 + 48);
  }

  if ((v3 & 4) == 0)
  {
LABEL_18:
    if ((v3 & 8) == 0)
    {
      return 1;
    }

    v10 = *(a1 + 104);
    if (!v10)
    {
      sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4990);
      v11 = sub_1AC10CFDC(v13, "CHECK failed: !value || denormalizer_spec_ != nullptr: ");
      sub_1AC10D118(&v12, &v11->__r_.__value_.__l.__data_);
      sub_1AC10D120(v13);
      v10 = *(a1 + 104);
    }

    result = sub_1AC1121F4(v10 + 24);
    if (result)
    {
      return 1;
    }

    return result;
  }

  v8 = *(a1 + 96);
  if (!v8)
  {
    sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/builtin_pb/sentencepiece_model.pb.h", 4907);
    v9 = sub_1AC10CFDC(v13, "CHECK failed: !value || self_test_data_ != nullptr: ");
    sub_1AC10D118(&v12, &v9->__r_.__value_.__l.__data_);
    sub_1AC10D120(v13);
    v8 = *(a1 + 96);
  }

  result = sub_1AC1121F4(v8 + 16);
  if (result)
  {
    v3 = *(a1 + 48);
    goto LABEL_18;
  }

  return result;
}

void sub_1AC10659C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

BOOL sub_1AC1065CC(uint64_t a1)
{
  v2 = *(a1 + 8);
  do
  {
    v3 = v2;
    v4 = __OFSUB__(v2--, 1);
    if (v2 < 0 != v4)
    {
      break;
    }

    v5 = sub_1AC0DDAA0(a1, v2);
  }

  while ((sub_1AC1121F4(v5 + 16) & 1) != 0);
  return v3 < 1;
}

uint64_t sub_1AC106634(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D2108, 328);
  }

  v2 = sub_1AC10B8C0(a1, 328);
  sub_1AC100588(v2, a1);
  return v2;
}

uint64_t sub_1AC106704(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D2130, 88);
  }

  v2 = sub_1AC10B8C0(a1, 88);
  sub_1AC102CF8(v2, a1);
  return v2;
}

void *sub_1AC1067D4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D2168, 40);
  }

  v2 = sub_1AC10B8C0(a1, 40);
  sub_1AC103AC0(v2, a1);
  return v2;
}

uint64_t sub_1AC1068A4(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D2180, 72);
  }

  v2 = sub_1AC10B8C0(a1, 72);
  sub_1AC104284(v2, a1);
  return v2;
}

void *sub_1AC106974(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D2198, 64);
  }

  v2 = sub_1AC10B8C0(a1, 64);
  sub_1AC104A30(v2, a1);
  return v2;
}

uint64_t sub_1AC106A44(uint64_t a1)
{
  if (!a1)
  {
    operator new();
  }

  if (*(a1 + 24))
  {
    (*(**(*(a1 + 32) + 32) + 40))(*(*(a1 + 32) + 32), &unk_1F20D21B0, 112);
  }

  v2 = sub_1AC10B8C0(a1, 112);
  sub_1AC10536C(v2, a1);
  return v2;
}

unint64_t sub_1AC106BEC(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A000, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB549FE8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC106C50(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A028, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A010);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC106CB4(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A110, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A0F8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC106D18(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A0F0, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A0D8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC106D7C(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A048, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A030);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_1AC106DE0(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  return v1[248];
}

uint64_t sub_1AC106DFC(uint64_t a1)
{
  v1 = &unk_1EB54A780;
  if (*(a1 + 80))
  {
    v1 = *(a1 + 80);
  }

  return (v1[40] >> 3) & 1;
}

void *sub_1AC106E1C(uint64_t a1, int a2)
{
  v2 = *(sub_1AC0DDAA0(a1 + 56, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_1AC106F5C(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_1EB54A6E0;
  }

  return v1 + 16;
}

char *sub_1AC106F78(uint64_t a1)
{
  v1 = *(a1 + 104);
  if (!v1)
  {
    v1 = &unk_1EB54A6E0;
  }

  return v1 + 16;
}

uint64_t sub_1AC106F94(uint64_t a1)
{
  v1 = *(a1 + 80);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1AC106FC8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[22];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A000, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB549FE8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC10702C(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[23];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A028, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A010);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC107090(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[24];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A110, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A0F8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC1070F4(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[25];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A0F0, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A0D8);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

unint64_t sub_1AC107158(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[26];
  if (v2)
  {
    result = v2 & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    result = atomic_load_explicit(&qword_1EB54A048, memory_order_acquire);
    if (!result)
    {
      result = sub_1AC10BA14(&off_1EB54A030);
    }
  }

  if ((*(result + 23) & 0x8000000000000000) != 0)
  {
    v5 = result;
    result = *result;
    v4 = *(v5 + 8);
  }

  return result;
}

uint64_t sub_1AC1071BC(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  return v1[248];
}

uint64_t sub_1AC1071D8(uint64_t a1)
{
  v1 = &unk_1EB54A780;
  if (*(a1 + 64))
  {
    v1 = *(a1 + 64);
  }

  return (v1[40] >> 3) & 1;
}

uint64_t sub_1AC1071F8(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (!v1)
  {
    v1 = &unk_1EB54A780;
  }

  v2 = v1[68];
  v3 = v2 - 2;
  v4 = v2 - 1;
  if (v3 >= 3)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

void *sub_1AC107224(uint64_t a1, int a2)
{
  v2 = *(sub_1AC0DDAA0(a1 + 40, a2) + 48);
  result = (v2 & 0xFFFFFFFFFFFFFFFELL);
  if ((*((v2 & 0xFFFFFFFFFFFFFFFELL) + 23) & 0x8000000000000000) != 0)
  {
    result = *result;
    v4 = *((v2 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  return result;
}

char *sub_1AC107364(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    v1 = &unk_1EB54A6E0;
  }

  return v1 + 16;
}

char *sub_1AC107380(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (!v1)
  {
    v1 = &unk_1EB54A6E0;
  }

  return v1 + 16;
}

void sub_1AC10739C(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

uint64_t sub_1AC1073B0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AC107470(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC107490(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1AC10CFC4(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v4 = sub_1AC10CFDC(v6, "CHECK failed: (n) >= (0): ");
    sub_1AC10D118(&v5, &v4->__r_.__value_.__l.__data_);
    return sub_1AC10D120(v6);
  }

  else if (v1)
  {
    v2 = *(result + 16) + 8;
    do
    {
      v3 = *v2;
      if (*(*v2 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
      }

      else
      {
        *v3 = 0;
        *(v3 + 23) = 0;
      }

      v2 += 8;
      --v1;
    }

    while (v1);
    *(result + 8) = 0;
  }

  return result;
}

void sub_1AC10753C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC107554(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AC107614(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC107634(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1AC10CFC4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1AC10CFDC(v7, "CHECK failed: (n) >= (0): ");
    sub_1AC10D118(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1AC10D120(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 16) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1AC103CC0(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_1AC1076CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AC1076E4(unsigned __int8 *result)
{
  v1 = *(result + 2);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1AC10CFC4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1AC10CFDC(v7, "CHECK failed: (n) >= (0): ");
    sub_1AC10D118(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1AC10D120(v7);
  }

  else if (v1)
  {
    v2 = result;
    v3 = (*(result + 2) + 8);
    do
    {
      v4 = *v3++;
      result = sub_1AC104C14(v4);
      --v1;
    }

    while (v1);
    *(v2 + 2) = 0;
  }

  return result;
}

void sub_1AC10777C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC107794(uint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1AC10CFDC(v11, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1AC11EDBC(v3, v5);
    result = sub_1AC107880(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_1AC107868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

std::string *sub_1AC107880(std::string *result, std::string **a2, const std::string **a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = std::string::operator=(v15, v13);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = v9->__words[0];
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19;
      if (!v18)
      {
        operator new();
      }

      if (*(v18 + 24))
      {
        sub_1AC10800C(v18 + 32);
      }

      v22 = sub_1AC10B5C4(v18, 0x18uLL, sub_1AC10739C);
      v22->__r_.__value_.__r.__words[0] = 0;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      result = std::string::operator=(v22, v21);
      *v20++ = v22;
      ++v19;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_1AC107988(uint64_t *a1)
{
  sub_1AC1079C4(a1);

  return sub_1AC0FFDA4(a1);
}

void sub_1AC1079C4(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_1AC103B30(*v3);
          MEMORY[0x1AC5AC440](v5, 0x1081C400F7E8713);
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

unint64_t sub_1AC107A48(unint64_t result, uint64_t a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1AC10CFDC(v11, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1AC11EDBC(v3, v5);
    result = sub_1AC107B34(v3, v7, (v6 + 8), v5, **(v3 + 16) - *(v3 + 8));
    v8 = *(v3 + 8) + v5;
    *(v3 + 8) = v8;
    v9 = *(v3 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }

  return result;
}

void sub_1AC107B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1AC107B34(unint64_t result, unint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  v9 = result;
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      result = sub_1AC107BE4(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *v9;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_1AC1067D4(v18);
      result = sub_1AC107BE4(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t *sub_1AC107BF4(uint64_t *a1)
{
  sub_1AC107C30(a1);

  return sub_1AC0FFDA4(a1);
}

void sub_1AC107C30(void *a1)
{
  v2 = a1[2];
  if (v2 && !*a1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    if (v4 >= 1)
    {
      do
      {
        if (*v3)
        {
          v5 = sub_1AC104ABC(*v3);
          MEMORY[0x1AC5AC440](v5, 0x10A1C40F497E4DALL);
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

void sub_1AC107CB4(uint64_t a1, uint64_t a2)
{
  if (a2 == a1)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1799);
    v4 = sub_1AC10CFDC(v11, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v10, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
  }

  v5 = *(a2 + 8);
  if (v5)
  {
    v6 = *(a2 + 16);
    v7 = sub_1AC11EDBC(a1, v5);
    sub_1AC107DA0(a1, v7, (v6 + 8), v5, **(a1 + 16) - *(a1 + 8));
    v8 = *(a1 + 8) + v5;
    *(a1 + 8) = v8;
    v9 = *(a1 + 16);
    if (*v9 < v8)
    {
      *v9 = v8;
    }
  }
}

void sub_1AC107D88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC107DA0(uint64_t *a1, uint64_t *a2, uint64_t *a3, unsigned int a4, unsigned int a5)
{
  if (a5 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a5;
  }

  if (v10 >= 1)
  {
    v11 = a3;
    v12 = a2;
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = *v12++;
      sub_1AC107E50(v13, v15);
      --v10;
    }

    while (v10);
  }

  v16 = __OFSUB__(a4, a5);
  v17 = a4 - a5;
  if (!((v17 < 0) ^ v16 | (v17 == 0)))
  {
    v18 = *a1;
    v19 = &a3[a5];
    v20 = &a2[a5];
    do
    {
      v21 = *v19++;
      v22 = sub_1AC106974(v18);
      sub_1AC107E50(v21, v22);
      *v20++ = v22;
      --v17;
    }

    while (v17);
  }
}

unint64_t sub_1AC107E8C()
{

  return sub_1AC10B5C4(v0, 0x18uLL, sub_1AC10739C);
}

uint64_t *sub_1AC107F04()
{
  result = *(*(v0 + 32) + 32);
  v2 = *result;
  return result;
}

void *sub_1AC107F7C(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void sub_1AC107FAC()
{

  operator new();
}

void sub_1AC107FC4(unint64_t *a1, unint64_t a2)
{
  if (*a1)
  {
    v3 = ((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    v3 = sub_1AC0FFAA8(a1);
  }

  sub_1AC119980(3, a2, v3);
}

void *sub_1AC10810C(void *a1, const char *a2, uint64_t a3)
{
  *a1 = &unk_1F20D2208;
  v6 = a1 + 1;
  sub_1AC10AB68(a1 + 1);
  if (a3)
  {
    operator new();
  }

  v7 = MEMORY[0x1E69E52F0];
  a1[2] = MEMORY[0x1E69E52F0];
  if ((*(v7 + *(*v7 - 24) + 32) & 5) != 0)
  {
    v15 = 5;
    sub_1AC0DCA0C(&v16);
    sub_1AC084190(&v16, "", 1);
    v8 = strlen(a2);
    sub_1AC084190(&v16, a2, v8);
    sub_1AC084190(&v16, ": ", 3);
    v9 = __error();
    sub_1AC108DD4(*v9);
    if ((v14 & 0x80u) == 0)
    {
      v10 = __p;
    }

    else
    {
      v10 = __p[0];
    }

    if ((v14 & 0x80u) == 0)
    {
      v11 = v14;
    }

    else
    {
      v11 = __p[1];
    }

    sub_1AC084190(&v16, v10, v11);
    sub_1AC0D97F4(&v15, &v21);
    sub_1AC10AD88(v6, &v21);
    sub_1AC10AB70(&v21);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    v16 = *MEMORY[0x1E69E54E8];
    *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v17 = MEMORY[0x1E69E5548] + 16;
    if (v19 < 0)
    {
      operator delete(v18[7].__locale_);
    }

    v17 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v18);
    std::ostream::~ostream();
    MEMORY[0x1AC5AC380](&v20);
  }

  return a1;
}

void sub_1AC10839C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1AC10AB70((v16 - 56));
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1AC0D9884(&a15);
  sub_1AC10AB70(v15);
  _Unwind_Resume(a1);
}

void sub_1AC108418(void *a1)
{
  sub_1AC10865C(a1);

  JUMPOUT(0x1AC5AC440);
}

BOOL sub_1AC10845C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v8, MEMORY[0x1E69E5318]);
  v5 = (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v8);
  v6 = sub_1AC1086E0(v3, a2, v5);
  return (*(v6 + *(*v6 - 24) + 32) & 5) == 0;
}

BOOL sub_1AC108540(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E52F0];
  if (v2 == MEMORY[0x1E69E52F0])
  {
    if (sub_1AC108C30() <= 2)
    {
      v12 = 0;
      v4 = sub_1AC084190(MEMORY[0x1E69E5300], "filesystem.cc", 13);
      v5 = sub_1AC084190(v4, "(", 1);
      v6 = MEMORY[0x1AC5AC210](v5, 55);
      v7 = sub_1AC084190(v6, ") ", 2);
      v8 = sub_1AC084190(v7, "LOG(", 4);
      v9 = sub_1AC084190(v8, "ERROR", 5);
      v10 = sub_1AC084190(v9, ") ", 2);
      sub_1AC084190(v10, "ReadAll is not supported for stdin.", 35);
      sub_1AC0DCD3C(&v12);
    }
  }

  else
  {
    sub_1AC1088D4(a2, *(v2 + *(*v2 - 24) + 40), 0);
  }

  return v2 != v3;
}

void *sub_1AC10865C(void *a1)
{
  *a1 = &unk_1F20D2208;
  v2 = a1[2];
  if (v2 != MEMORY[0x1E69E52F0] && v2 != 0)
  {
    (*(*v2 + 8))(v2);
  }

  sub_1AC10AB70(a1 + 1);
  return a1;
}

void *sub_1AC1086E0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x1AC5AC140](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

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

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_1AC108844(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x1AC108804);
  }

  __cxa_rethrow();
}

void sub_1AC1088D4(uint64_t a1, void *a2, void *a3)
{
  sub_1AC108954(&__p, a2, a3);
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

  MEMORY[0x1AC5AC070](a1, p_p, size);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_1AC108938(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1AC108954(std::string *a1, void *a2, void *a3)
{
  v11 = a3;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = 0;
  while (1)
  {
    if (a2)
    {
      if (a2[3] == a2[4])
      {
        v6 = (*(*a2 + 72))(a2);
        v5 = v6 == -1;
        if (v6 == -1)
        {
          a2 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 1;
    }

    result = sub_1AC108AB4(&v11);
    if (v5 == result)
    {
      break;
    }

    v8 = a2[3];
    if (v8 == a2[4])
    {
      v9 = (*(*a2 + 72))(a2);
    }

    else
    {
      v9 = *v8;
    }

    std::string::push_back(a1, v9);
    v10 = a2[3];
    if (v10 == a2[4])
    {
      (*(*a2 + 80))(a2);
    }

    else
    {
      a2[3] = v10 + 1;
    }
  }

  return result;
}

void sub_1AC108A84(void *a1)
{
  __cxa_begin_catch(a1);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  __cxa_rethrow();
}

BOOL sub_1AC108AB4(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    if (v2[3] != v2[4])
    {
      return 0;
    }

    if ((*(*v2 + 72))(v2) != -1)
    {
      return *a1 == 0;
    }

    *a1 = 0;
  }

  return 1;
}

uint64_t sub_1AC108B34()
{
  v0 = atomic_load(&dword_1EB54A378);
  if (v0 != -1)
  {
    return atomic_load(&dword_1EB54A378);
  }

  sub_1AC108BBC(&v3);
  v1 = MEMORY[0x1AC5AC260](&v3);
  std::random_device::~random_device(&v3);
  return v1;
}

void sub_1AC108B94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, std::random_device a11, std::random_device a12)
{
  std::random_device::~random_device(&a11);
  __cxa_begin_catch(a1);
  atomic_load(v12);
  __cxa_end_catch();
  JUMPOUT(0x1AC108B80);
}

std::random_device *sub_1AC108BBC(std::random_device *a1)
{
  sub_1AC063200(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_1AC108C14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1AC108C40(char *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a1;
  if ((v3 & 0x80000000) == 0)
  {
    *a3 = 1;
    return *a1;
  }

  v5 = a2 - a1;
  if ((a2 - a1) >= 2)
  {
    if ((v3 & 0xE0) == 0xC0)
    {
      v6 = a1[1];
      if (v6 <= -65)
      {
        v7 = (v3 & 0x1F) << 6;
        if (v7 >= 0x80)
        {
          result = v7 | v6 & 0x3F;
          v8 = 2;
LABEL_8:
          *a3 = v8;
          return result;
        }
      }
    }

    else if (v5 != 2)
    {
      if ((v3 & 0xF0) == 0xE0)
      {
        v9 = a1[1];
        if (v9 <= -65)
        {
          v10 = a1[2];
          if (v10 <= -65)
          {
            v11 = (v3 & 0xF) << 12;
            v12 = v11 & 0xFFFFF03F | ((v9 & 0x3F) << 6);
            if (v12 >= 0x800 && ((v11 - 57344) < 0x102000 || v12 >> 11 <= 0x1A))
            {
              result = v11 & 0xFFFFF000 | ((v9 & 0x3F) << 6) | v10 & 0x3F;
              v8 = 3;
              goto LABEL_8;
            }
          }
        }
      }

      else if (v5 >= 4 && (v3 & 0xF8) == 0xF0)
      {
        v13 = a1[1];
        if (v13 <= -65)
        {
          v14 = a1[2];
          if (v14 <= -65)
          {
            v15 = a1[3];
            if (v15 <= -65)
            {
              v16 = ((v3 & 7) << 18) | ((v13 & 0x3F) << 12);
              if (v16 >= 0x10000)
              {
                result = v15 & 0x3F | ((v14 & 0x3F) << 6) | v16;
                if (v16 - 57344 < 0x102000 || result >> 11 <= 0x1A)
                {
                  v8 = 4;
                  goto LABEL_8;
                }
              }
            }
          }
        }
      }
    }
  }

  *a3 = 1;
  return 65533;
}

uint64_t sub_1AC108D90()
{
  if ((*off_1EE77CD00() & 1) == 0)
  {
    sub_1AC10925C();
  }

  return off_1EE77CCE8(&off_1EE77CCE8);
}

uint64_t sub_1AC108DD4(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  strerror_r(a1, __strerrbuf, 0x3FFuLL);
  sub_1AC0DCA0C(&v7);
  v2 = strlen(__strerrbuf);
  v3 = sub_1AC084190(&v7, __strerrbuf, v2);
  v4 = sub_1AC084190(v3, " Error #", 8);
  MEMORY[0x1AC5AC210](v4, a1);
  std::stringbuf::str();
  v7 = *MEMORY[0x1E69E54E8];
  *(&v7 + *(v7 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v10 < 0)
  {
    operator delete(v9[7].__locale_);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::ostream::~ostream();
  result = MEMORY[0x1AC5AC380](&v11);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1AC108FB8(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    sub_1AC1092E0();
  }

  return (a1 + a2 - 1) / a2 * a2;
}

void sub_1AC108FE0(std::string *this)
{
  LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if ((size & 3) != 0)
  {
    do
    {
      std::string::push_back(this, 0);
      LOBYTE(v3) = *(&this->__r_.__value_.__s + 23);
      if ((v3 & 0x80u) != 0)
      {
        v3 = this->__r_.__value_.__l.__size_;
      }
    }

    while ((v3 & 3) != 0);
  }
}

void *sub_1AC109048@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = a1[1];
  v5 = v4 >= a2;
  v6 = v4 - a2;
  if (v5)
  {
    *a1 += a2;
    a1[1] = v6;

    return sub_1AC10AB68(a3);
  }

  else
  {
    v9 = 13;
    v7 = sub_1AC0DCA0C(&v10);
    sub_1AC084190(v7, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/src/util.cc", 63);
    sub_1AC084190(&v10, "(", 1);
    MEMORY[0x1AC5AC210](&v10, 287);
    sub_1AC084190(&v10, ") [", 3);
    sub_1AC084190(&v10, "string.size() >= size", 21);
    sub_1AC084190(&v10, "] ", 2);
    sub_1AC0D97F4(&v9, a3);
    v10 = *MEMORY[0x1E69E54E8];
    *(&v10 + *(v10 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
    v11 = MEMORY[0x1E69E5548] + 16;
    if (v13 < 0)
    {
      operator delete(v12[7].__locale_);
    }

    v11 = MEMORY[0x1E69E5538] + 16;
    std::locale::~locale(v12);
    std::ostream::~ostream();
    return MEMORY[0x1AC5AC380](&v14);
  }
}

_BYTE *sub_1AC10925C()
{
  sub_1AC108B34();
  v0 = off_1EE77CCE8(&off_1EE77CCE8);
  *v0 = v3;
  do
  {
    v4 = v2(v1);
    *(v4 + 4 * v6) = v5;
  }

  while (v6 != 623);
  *(v2(v1) + 2496) = 0;
  result = off_1EE77CD00();
  *result = 1;
  return result;
}

uint64_t sub_1AC10930C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC0F9500(a1);
  *v4 = &unk_1F20D2268;
  v4[1] = a2 + 16;
  sub_1AC0DAC00(v4);
  return a1;
}

void *sub_1AC109374(uint64_t a1, uint64_t a2, _DWORD *a3, unint64_t a4)
{
  result = sub_1AC0D8B90(a1, a2, a3, a4);
  *result = &unk_1F20D2268;
  return result;
}

void sub_1AC1093AC(void *a1)
{
  sub_1AC0D9AA0(a1);

  JUMPOUT(0x1AC5AC440);
}

void sub_1AC1093E4(uint64_t *a1@<X0>, _BYTE *a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>, float a5@<S0>)
{
  v71 = *MEMORY[0x1E69E9840];
  (*(*a1 + 16))(v57);
  if (*&v57[0])
  {
    sub_1AC10AB70(v57);
LABEL_3:
    *a4 = 0;
    a4[1] = 0;
    a4[2] = 0;
    goto LABEL_4;
  }

  sub_1AC10AB70(v57);
  if (!a3)
  {
    goto LABEL_3;
  }

  v65 = 0;
  v66 = 0;
  v67 = 0;
  __p = 0;
  v62 = 0uLL;
  if (a3 >> 59)
  {
    sub_1AC060AAC();
  }

  sub_1AC10A268(v57, a3, 0, &__p);
  v11 = (*(&v57[0] + 1) - (v62 - __p));
  memcpy(v11, __p, v62 - __p);
  v12 = __p;
  v13 = *(&v62 + 1);
  __p = v11;
  v62 = v57[1];
  *&v57[1] = v12;
  *(&v57[1] + 1) = v13;
  *&v57[0] = v12;
  *(&v57[0] + 1) = v12;
  if (v12)
  {
    operator delete(v12);
  }

  memset(v59, 0, sizeof(v59));
  v60 = 1065353216;
  memset(v57 + 8, 0, 40);
  v58 = 256;
  v56[0] = a1;
  v56[1] = v57;
  v56[2] = &__p;
  v56[3] = &v65;
  v56[4] = v59;
  *&v57[0] = &unk_1F20D2380;
  v14 = 1;
  do
  {
    v64 = 0uLL;
    v15 = sub_1AC0E31E4(a1[2], a2, a3, &v63 + 8);
    *&v64 = a2;
    *(&v64 + 1) = v15;
    a3 -= v15;
    if (a3)
    {
      v16 = v14;
    }

    else
    {
      v16 = -1;
    }

    LODWORD(v63) = v14 - 2;
    DWORD1(v63) = v16;
    v17 = v62;
    if (v62 >= *(&v62 + 1))
    {
      v20 = (v62 - __p) >> 5;
      v21 = v20 + 1;
      if ((v20 + 1) >> 59)
      {
        sub_1AC060AAC();
      }

      v22 = *(&v62 + 1) - __p;
      if ((*(&v62 + 1) - __p) >> 4 > v21)
      {
        v21 = v22 >> 4;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFE0)
      {
        v23 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v23 = v21;
      }

      sub_1AC10A268(&v68, v23, v20, &__p);
      v24 = v70;
      v25 = v64;
      *v70 = v63;
      *(v24 + 16) = v25;
      *&v70 = v70 + 32;
      v26 = &v69[-(v62 - __p)];
      memcpy(v26, __p, v62 - __p);
      v27 = __p;
      v28 = *(&v62 + 1);
      __p = v26;
      v29 = v70;
      v62 = v70;
      *&v70 = v27;
      *(&v70 + 1) = v28;
      v68 = v27;
      v69 = v27;
      if (v27)
      {
        v55 = v29;
        operator delete(v27);
        v29 = v55;
      }

      v19 = v29;
    }

    else
    {
      v18 = v64;
      *v62 = v63;
      *(v17 + 16) = v18;
      v19 = (v17 + 32);
    }

    a2 += v15;
    *&v62 = v19;
    ++v14;
  }

  while (a3);
  if (__p != v19)
  {
    if ((v19 - __p) >= 0x21)
    {
      v30 = 1;
      do
      {
        sub_1AC109B4C(v56, v30 - 1, v30);
        ++v30;
      }

      while (v30 < (v62 - __p) >> 5);
    }

    v31 = v65;
    v32 = v66;
    if (v65 == v66)
    {
LABEL_55:
      *(&v64 + 1) = 0;
      operator new();
    }

    v33 = 0;
    while (1)
    {
      v34 = *v31;
      v35 = v32 - v31;
      if (v35 >= 2)
      {
        v36 = 0;
        v37 = v31;
        do
        {
          v38 = v37;
          v37 += v36 + 1;
          v39 = 2 * v36;
          v36 = (2 * v36) | 1;
          v40 = v39 + 2;
          if (v40 < v35)
          {
            v41 = v37[1];
            v42 = *(*v37 + 2);
            v43 = *(v41 + 2);
            if (v42 < v43 || v42 == v43 && **v37 > *v41)
            {
              ++v37;
              v36 = v40;
            }
          }

          *v38 = *v37;
        }

        while (v36 <= ((v35 - 2) >> 1));
        v44 = v32 - 1;
        if (v37 == v44)
        {
          *v37 = v34;
        }

        else
        {
          *v37 = *v44;
          *v44 = v34;
          sub_1AC109F34(v31, (v37 + 1), v37 + 1 - v31);
        }
      }

      --v66;
      v45 = *v34;
      v46 = *v34;
      v47 = __p;
      v48 = *(__p + 4 * v46 + 3);
      if (!v48)
      {
        goto LABEL_54;
      }

      v49 = v34[1];
      v50 = *(__p + 4 * v49 + 3);
      if (!v50 || v50 + v48 != *(v34 + 2))
      {
        goto LABEL_54;
      }

      if (a5 > 0.0)
      {
        if (a5 >= 1.0)
        {
          goto LABEL_54;
        }

        if (!v33)
        {
          v33 = sub_1AC108D90();
        }

        v51 = sub_1AC0F64D4(v33);
        if ((v51 + sub_1AC0F64D4(v33) * 4294967300.0) * 5.42101086e-20 < a5)
        {
          goto LABEL_54;
        }

        v47 = __p;
        v45 = *v34;
        v49 = v34[1];
        v46 = *v34;
      }

      v52 = &v47[8 * v46];
      v53 = &v47[8 * v49];
      *(v52 + 3) += *(v53 + 3);
      v54 = *(v53 + 1);
      *(v52 + 1) = v54;
      if ((v54 & 0x80000000) == 0)
      {
        v47[8 * v54] = v45;
      }

      *(v53 + 2) = "";
      *(v53 + 3) = 0;
      sub_1AC109B4C(v56, *(__p + 8 * v46), v45);
      sub_1AC109B4C(v56, *v34, *(__p + 8 * *v34 + 1));
LABEL_54:
      v31 = v65;
      v32 = v66;
      if (v65 == v66)
      {
        goto LABEL_55;
      }
    }
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  sub_1AC109E68(v57);
  sub_1AC09E19C(v59);
  if (__p)
  {
    *&v62 = __p;
    operator delete(__p);
  }

  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

LABEL_4:
  v10 = *MEMORY[0x1E69E9840];
}