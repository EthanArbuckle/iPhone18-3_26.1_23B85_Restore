void sub_1AC116C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AC116C40(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  v3 = v2 - 19;
  if (result[9] != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = sub_1AC10CFDC(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AC10D118(&v12, &v7->__r_.__value_.__l.__data_);
      result = sub_1AC10D120(v13);
    }

    v8 = dword_1AC12AC10[v2];
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
        return MEMORY[0x1AC5AC440](v6, v10);
      }
    }

    return result;
  }

  if (v3 <= 0xFFFFFFED)
  {
    sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = sub_1AC10CFDC(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1AC10D118(&v12, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v13);
  }

  v5 = dword_1AC12AC10[v2];
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

        v6 = sub_1AC11E4E0();
      }

      else
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_1AC11C608();
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

        v6 = sub_1AC11EDA4();
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

        sub_1AC1178E0(v11);
        v6 = sub_1AC0FFDA4(v11);
      }

      v10 = 0x1020C4014030ADELL;
      return MEMORY[0x1AC5AC440](v6, v10);
    }

LABEL_34:
    result = *v1;
    if (!*v1)
    {
      return result;
    }

    v6 = sub_1AC11CC30();
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

      v6 = sub_1AC11D25C();
    }

    else if (v5 == 4)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1AC11DEB4();
    }

    else
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1AC11EB0C();
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
      v6 = sub_1AC11D888();
LABEL_44:
      v10 = 0x1080C4057E67DB5;
      return MEMORY[0x1AC5AC440](v6, v10);
    }
  }

  return result;
}

void sub_1AC116EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AC116F18(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1AC116C40(v3 + 40);
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

uint64_t *sub_1AC116FA8(uint64_t *a1)
{
  sub_1AC1178E0(a1);

  return sub_1AC0FFDA4(a1);
}

uint64_t sub_1AC116FE0(uint64_t a1, int a2)
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

void sub_1AC1170A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC1170C0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return sub_1AC117114(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_1AC117114(result, a2);
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

uint64_t sub_1AC117114(uint64_t result, uint64_t a2)
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
    result = sub_1AC11EDA8(result, v5 + 1);
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

unsigned __int8 *sub_1AC1171F4(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1AC10D6B4(v3 + 40);
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

uint64_t *sub_1AC117264(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1AC111394(a3, *(v5 + 8), v5 + 5);
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

_OWORD *sub_1AC1172E8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x1AC5AC070](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return sub_1AC123ABC();
  }
}

char *sub_1AC117354(uint64_t a1, char *a2, __int128 *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC1175A4(result, v15, &v19);
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
      result = sub_1AC1175A4(result, v8, &v19);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        sub_1AC10CFC4(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = sub_1AC10CFDC(&v19, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v22, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v19);
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
        if (sub_1AC1175A4(&v22 + v11, &v22 + v13, &v19) != &v22 + v13)
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
        sub_1AC10CFC4(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = sub_1AC10CFDC(&v19, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v22, &v14->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v19);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_19;
      }

      result = sub_1AC1190A8(a1);
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
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

char *sub_1AC1175A4(char *a1, unint64_t a2, unsigned int **a3)
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
        v3 = sub_1AC119A98(v3, (v7 - 128));
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
        sub_1AC11C7C4(*a3, v10 + 1);
        *(sub_1AC11CC34(v9) + 4 * v10) = v6;
      }

      else
      {
        *(sub_1AC11CC34(*a3) + 4 * v10) = v6;
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
        v14 = sub_1AC0FFAA8(v13);
      }

      sub_1AC119980(v12, v6, v14);
    }
  }

  return v3;
}

char *sub_1AC1176D0(uint64_t a1, char *__src, int64_t __n)
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

void *sub_1AC117784(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_1AC116000(v5 + 5, *(v5 + 8));
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

uint64_t sub_1AC117810(uint64_t result)
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
      result = (*(*v4 + 40))(v4);
      --v1;
    }

    while (v1);
    *(v2 + 8) = 0;
  }

  return result;
}

void sub_1AC1178C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC1178E0(void *a1)
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

uint64_t *sub_1AC11796C(uint64_t a1, int *a2)
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

uint64_t sub_1AC117A40(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1AC117AD8(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1AC117AD8(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t sub_1AC117C90(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_1AC0DEB8C(a2, *(a2 + 8));

    JUMPOUT(0x1AC5AC440);
  }

  return result;
}

void sub_1AC118194(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1AC1181A8()
{
  if ((atomic_load_explicit(&qword_1EB54A418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB54A418))
  {
    qword_1EB54A5B0 = 0;
    *algn_1EB54A5B8 = 0;
    qword_1EB54A5C0 = 0;
    sub_1AC118CAC(sub_1AC118194, &qword_1EB54A5B0);
    atomic_store(1u, byte_1EB54A5C8);

    __cxa_guard_release(&qword_1EB54A418);
  }
}

uint64_t sub_1AC118254(uint64_t a1, uint64_t a2)
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

void sub_1AC1183E0(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_1EB54A420, memory_order_acquire) & 1) == 0)
  {
    sub_1AC1185BC();
  }

  v2 = pthread_self();
  if (qword_1EB54A588 == v2)
  {
    if (*a1 != 1)
    {
      sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v3 = sub_1AC10CFDC(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_1AC10D118(&v4, &v3->__r_.__value_.__l.__data_);
      sub_1AC10D120(v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(byte_1EB54A5C8, memory_order_acquire) & 1) == 0)
    {
      sub_1AC1181A8();
    }

    std::mutex::lock(&stru_1EB54A098);
    qword_1EB54A588 = v2;
    sub_1AC118504(a1);
    qword_1EB54A588 = 0;

    std::mutex::unlock(&stru_1EB54A098);
  }
}

void sub_1AC1184E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1AC118504(_DWORD *result)
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
          sub_1AC118504();
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
          sub_1AC118504();
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

void sub_1AC1185BC()
{
  if (__cxa_guard_acquire(&qword_1EB54A420))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1EB54A098, &dword_1AC05D000);

    __cxa_guard_release(&qword_1EB54A420);
  }
}

uint64_t sub_1AC118690(uint64_t a1)
{
  sub_1AC10CFC4(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  sub_1AC118744("parse", a1, &__p);
  v2 = sub_1AC10D008(v6, &__p);
  sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_1AC10D120(v6);
}

void sub_1AC118714(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AC10D120(&a16);
  _Unwind_Resume(a1);
}

void sub_1AC118744(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
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

void sub_1AC118880(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sub_1AC1188C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_1AC11907C();
  }

  sub_1AC11901C(a3, a2, a1);
  return v4;
}

BOOL sub_1AC1188FC(uint64_t a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_1AC10CFC4(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = sub_1AC10CFDC(v9, "CHECK failed: IsInitialized(): ");
    sub_1AC118744("serialize", a1, &__p);
    v5 = sub_1AC10D008(v4, &__p);
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1AC10D120(v9);
  }

  return sub_1AC118A08(a1, a2);
}

void sub_1AC1189D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AC10D120(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_1AC118A08(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v21 = *MEMORY[0x1E69E9840];
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
    sub_1AC10CFC4(v17, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = sub_1AC10D008(v17, __p);
    v11 = sub_1AC10CFDC(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = sub_1AC10D254(v11, v6);
    sub_1AC10D118(&v15, &v12->__r_.__value_.__l.__data_);
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
  v20 = byte_1EB54A96C & 1;
  if (v17[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    sub_1AC10CFC4(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = sub_1AC10CFDC(__p, "CHECK failed: target + size == res: ");
    sub_1AC10D118(&v15, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    sub_1AC10D120(v9);
  }

  result = v7 == 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL sub_1AC118C3C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1AC1188FC(a1, a2);
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

void sub_1AC118C90(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC118CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC118DB8();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1AC060AAC();
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
      sub_1AC118F58(v4, v11);
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

uint64_t sub_1AC118DB8()
{
  if ((atomic_load_explicit(&qword_1EB54A118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EB54A118))
  {
    operator new();
  }

  return qword_1EB54A090;
}

void sub_1AC118E60()
{
  if ((byte_1EB54A590 & 1) == 0)
  {
    v0 = sub_1AC118DB8();
    if (v0)
    {
      v1 = sub_1AC118EB0(v0);
      MEMORY[0x1AC5AC440](v1, 0x1020C40A0054943);
    }

    byte_1EB54A590 = 1;
  }
}

uint64_t sub_1AC118EB0(uint64_t a1)
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

void sub_1AC118F58(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AC066FD4();
}

uint64_t sub_1AC11901C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1AC119000(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = sub_1AC1239CC();
  *v3 = result;
  return result;
}

_OWORD *sub_1AC1190A8(uint64_t a1)
{
  if (*(a1 + 28) <= 16)
  {
    sub_1AC10CFC4(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = sub_1AC10CFDC(v7, "CHECK failed: limit_ > kSlopBytes: ");
    sub_1AC10D118(&v6, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v7);
  }

  result = sub_1AC119170(a1, 0, -1);
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

void sub_1AC119158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AC119170(uint64_t a1, unsigned int a2, int a3)
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
      sub_1AC10CFC4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = sub_1AC10CFDC(v34, "CHECK failed: size_ > kSlopBytes: ");
      sub_1AC10D118(&__src, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v34);
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
    sub_1AC10CFC4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = sub_1AC10CFDC(v34, "CHECK failed: overrun >= 0: ");
    sub_1AC10D118(&__src, &v11->__r_.__value_.__l.__data_);
    sub_1AC10D120(v34);
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
            v23 = sub_1AC123DDC(v18, v22);
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
        v18 = sub_1AC11A170(v18, v34);
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
    sub_1AC10CFC4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = sub_1AC10CFDC(v34, "CHECK failed: overrun <= kSlopBytes: ");
    sub_1AC10D118(&__src, &v10->__r_.__value_.__l.__data_);
    sub_1AC10D120(v34);
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
      sub_1AC10CFC4(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = sub_1AC10CFDC(v34, "CHECK failed: size_ == 0: ");
      v14 = sub_1AC10D1D4(v13, *(a1 + 24));
      sub_1AC10D118(&v32, &v14->__r_.__value_.__l.__data_);
      sub_1AC10D120(v34);
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

void sub_1AC11956C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11959C(uint64_t a1, signed int a2, int a3)
{
  v3 = *(a1 + 28);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = sub_1AC10CFDC(v19, "CHECK failed: overrun != limit_: ");
    sub_1AC10D118(&v18, &v7->__r_.__value_.__l.__data_);
    sub_1AC10D120(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= v5)
  {
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = sub_1AC10CFDC(v19, "CHECK failed: overrun < limit_: ");
    sub_1AC10D118(&v18, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v19);
    v3 = *(a1 + 28);
  }

  if (*a1 != *(a1 + 8) + (v3 & (v3 >> 31)))
  {
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = sub_1AC10CFDC(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    sub_1AC10D118(&v18, &v9->__r_.__value_.__l.__data_);
    sub_1AC10D120(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= 0)
  {
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = sub_1AC10CFDC(v19, "CHECK failed: limit_ > 0: ");
    sub_1AC10D118(&v18, &v10->__r_.__value_.__l.__data_);
    sub_1AC10D120(v19);
  }

  if (*a1 != *(a1 + 8))
  {
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = sub_1AC10CFDC(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    sub_1AC10D118(&v18, &v11->__r_.__value_.__l.__data_);
    sub_1AC10D120(v19);
  }

  while (1)
  {
    if (v5 < 0)
    {
      sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = sub_1AC10CFDC(v19, "CHECK failed: overrun >= 0: ");
      sub_1AC10D118(&v18, &v12->__r_.__value_.__l.__data_);
      sub_1AC10D120(v19);
    }

    v13 = sub_1AC119170(a1, v5, a3);
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
    sub_1AC10CFC4(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = sub_1AC10CFDC(v19, "CHECK failed: limit_ > 0: ");
    sub_1AC10D118(&v18, &v17->__r_.__value_.__l.__data_);
    sub_1AC10D120(v19);
  }

  result = *(a1 + 8);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

void sub_1AC11984C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AC119894(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: size > chunk_size: ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    if (!*(a1 + 16) || *(a1 + 28) < 17)
    {
      break;
    }

    result = sub_1AC1190A8(a1);
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

void sub_1AC119964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC119980(int a1, unint64_t a2, std::string *this)
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

uint64_t sub_1AC119A2C(uint64_t a1, int a2)
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

uint64_t sub_1AC119A98(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AC119AE0(uint64_t a1, int a2)
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

_OWORD *sub_1AC119B24(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC1172E8(a3, v6, v5, a1);
}

char *sub_1AC119C10(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC11B5B0(a3, v6, v5, a1);
}

char *sub_1AC119C8C(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC11B6B8(a3, v6, v5, a1);
}

char *sub_1AC119D08(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC11B7C0(a3, v6, v5, a1);
}

char *sub_1AC119D84(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC11B8C8(a3, v6, v5, a1);
}

char *sub_1AC119E00(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC11B9D0(a3, v6, v5, a1);
}

char *sub_1AC119E7C(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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

  return sub_1AC11BAD8(a3, v6, v5, a1);
}

char *sub_1AC119EF4(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_1AC0FF968(a3, &v10, *(a3 + 92)))
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

    v10 = sub_1AC11A00C(v6, a1);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

char *sub_1AC11A00C(unint64_t a1, std::string *a2, int *a3, int32x2_t *a4)
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
        sub_1AC10CFC4(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = sub_1AC10CFDC(v12, "Can't happen");
        sub_1AC10D118(&v11, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(v12);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_1AC11C014(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_1AC11BEE8(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_1AC11A170(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_1AC11BBE0(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_1AC11BCA8(a2, v4, *a3);
    return v5;
  }

  result = sub_1AC11BD68(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_1AC11A158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11A170(char *a1, unint64_t *a2)
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

char *sub_1AC11A1E0(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11A400(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11A400(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11A400(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11A3D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11A400(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11C7C4(a3, v7 + 1);
      *(sub_1AC11CC34(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1AC11CC34(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11A4B0(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11A6D0(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11A6D0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11A6D0(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11A6A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11A6D0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11CDF0(a3, v7 + 1);
      *(sub_1AC11D260(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1AC11D260(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11A780(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11A9A0(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11A9A0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11A9A0(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11A978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11A9A0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11D41C(a3, v7 + 1);
      *(sub_1AC11D88C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1AC11D88C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11AA50(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11AC70(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11AC70(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11AC70(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11AC48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11AC70(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11DA48(a3, v7 + 1);
      *(sub_1AC11DEB8(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1AC11DEB8(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11AD20(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11AF40(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11AF40(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11AF40(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11AF18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11AF40(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11C7C4(a3, v7 + 1);
      *(sub_1AC11CC34(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1AC11CC34(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11AFFC(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11B21C(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11B21C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11B21C(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11B1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11B21C(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11D41C(a3, v7 + 1);
      *(sub_1AC11D88C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1AC11D88C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11B2D8(uint64_t a1, char *a2, int *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AC123DDC(a2, *a2);
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
    result = sub_1AC11B4F8(result, v13, a3);
    if (v13 != result)
    {
      result = 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AC11B4F8(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AC10CFDC(&v17, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AC10D118(&v16, &v10->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v18 = 0;
        v17.__r_.__value_.__r.__words[2] = 0;
        *&v17.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AC11B4F8(&v17 + v9, &v17 + v11, a3) != &v17 + v11)
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
        sub_1AC10CFC4(&v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AC10CFDC(&v17, "CHECK failed: (size) > (0): ");
        sub_1AC10D118(&v16, &v12->__r_.__value_.__l.__data_);
        sub_1AC10D120(&v17);
      }

      if (*(a1 + 28) < 17)
      {
        goto LABEL_17;
      }

      result = sub_1AC1190A8(a1);
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
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1AC11B4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

char *sub_1AC11B4F8(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AC11A170(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AC11C1A0(a3, v7 + 1);
      *(sub_1AC11C60C(a3) + v7) = v6;
    }

    else
    {
      *(sub_1AC11C60C(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AC11B5B0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AC11CDF0(a4, *a4 + (v5 >> 2));
    v11 = sub_1AC11CF94(a4, v5 >> 2);
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
      sub_1AC11CDF0(a4, *a4 + (v7 >> 2));
      v9 = sub_1AC11CF94(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AC1190A8(a1);
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

char *sub_1AC11B6B8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AC11C7C4(a4, *a4 + (v5 >> 2));
    v11 = sub_1AC11C968(a4, v5 >> 2);
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
      sub_1AC11C7C4(a4, *a4 + (v7 >> 2));
      v9 = sub_1AC11C968(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AC1190A8(a1);
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

char *sub_1AC11B7C0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AC11DA48(a4, *a4 + (v5 >> 3));
    v11 = sub_1AC11DBEC(a4, v5 >> 3);
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
      sub_1AC11DA48(a4, *a4 + (v7 >> 3));
      v9 = sub_1AC11DBEC(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AC1190A8(a1);
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

char *sub_1AC11B8C8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AC11D41C(a4, *a4 + (v5 >> 3));
    v11 = sub_1AC11D5C0(a4, v5 >> 3);
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
      sub_1AC11D41C(a4, *a4 + (v7 >> 3));
      v9 = sub_1AC11D5C0(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AC1190A8(a1);
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

char *sub_1AC11B9D0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AC11E074(a4, *a4 + (v5 >> 2));
    v11 = sub_1AC11E218(a4, v5 >> 2);
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
      sub_1AC11E074(a4, *a4 + (v7 >> 2));
      v9 = sub_1AC11E218(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AC1190A8(a1);
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

char *sub_1AC11BAD8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AC11E6A0(a4, *a4 + (v5 >> 3));
    v11 = sub_1AC11E844(a4, v5 >> 3);
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
      sub_1AC11E6A0(a4, *a4 + (v7 >> 3));
      v9 = sub_1AC11E844(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AC1190A8(a1);
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

void sub_1AC11BBE0(std::string **a1, int a2, unint64_t a3)
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

std::string *sub_1AC11BCA8(std::string *result, int a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
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

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

std::string::value_type *sub_1AC11BD68(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_1AC123DDC(a3, *a3);
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

    return sub_1AC11C0A8(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_1AC119894(a4, v8, v7);
  }
}

char *sub_1AC11BEE8(std::string **a1, int a2, char *a3, int32x2_t *a4)
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
  v14 = sub_1AC119EF4(a1, a3, a4);
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

std::string *sub_1AC11C014(std::string *result, int a2, int a3)
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

std::string::value_type *sub_1AC11C0A8(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_1AC123BE8();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_1AC11C114(uint64_t a1@<X8>)
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

uint64_t sub_1AC11C168(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1AC10CFC4(va, 3, v2, 323);
}

std::string *sub_1AC11C188(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void sub_1AC11C1A0(int *a1, int a2)
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
      v6 = *(sub_1AC11C60C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v12, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v13);
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
    v5 = (sub_1AC11C60C(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v10 = sub_1AC10B8C0(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_1AC11C60C(a1);
  if (*a1 >= 1)
  {
    v11 = sub_1AC11C60C(a1);
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

void sub_1AC11C328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11C340(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11C3E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11C400(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11C60C(a1) + a2;
}

void sub_1AC11C4C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11C4E0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11C60C(a1) + a2;
}

void sub_1AC11C5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11C5C0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11C60C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11C60C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11C680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11C698(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11C1A0(v3, *v3 + *a2);
    sub_1AC11C340(v3, *a2);
    v6 = sub_1AC11C400(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11C60C(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_1AC11C7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC11C7C4(int *a1, int a2)
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
      v6 = *(sub_1AC11CC34(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v15);
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
    v5 = (sub_1AC11CC34(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v12 = sub_1AC10B8C0(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AC11CC34(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AC11CC34(a1);
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

void sub_1AC11C950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11C968(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11CA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11CA28(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11CC34(a1) + 4 * a2;
}

void sub_1AC11CAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11CB08(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11CC34(a1) + 4 * a2;
}

void sub_1AC11CBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11CBE8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11CC34(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11CC34(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11CCA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11CCC0(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11C7C4(v3, *v3 + *a2);
    sub_1AC11C968(v3, *a2);
    v6 = sub_1AC11CA28(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11CC34(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1AC11CDD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC11CDF0(int *a1, int a2)
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
      v6 = *(sub_1AC11D260(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v15);
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
    v5 = (sub_1AC11D260(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v12 = sub_1AC10B8C0(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AC11D260(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AC11D260(a1);
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

void sub_1AC11CF7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11CF94(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11D03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D054(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11D260(a1) + 4 * a2;
}

void sub_1AC11D114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D134(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11D260(a1) + 4 * a2;
}

void sub_1AC11D1F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D214(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11D260(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11D260(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11D2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11D2EC(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11CDF0(v3, *v3 + *a2);
    sub_1AC11CF94(v3, *a2);
    v6 = sub_1AC11D054(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11D260(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1AC11D3FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC11D41C(int *a1, int a2)
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
      v6 = *(sub_1AC11D88C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v15);
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
    v5 = (sub_1AC11D88C(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v12 = sub_1AC10B8C0(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AC11D88C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AC11D88C(a1);
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

void sub_1AC11D5A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D5C0(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11D668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D680(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11D88C(a1) + 8 * a2;
}

void sub_1AC11D740(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D760(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11D88C(a1) + 8 * a2;
}

void sub_1AC11D820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11D840(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11D88C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11D88C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11D900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11D918(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11D41C(v3, *v3 + *a2);
    sub_1AC11D5C0(v3, *a2);
    v6 = sub_1AC11D680(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11D88C(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1AC11DA28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC11DA48(int *a1, int a2)
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
      v6 = *(sub_1AC11DEB8(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v15);
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
    v5 = (sub_1AC11DEB8(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v12 = sub_1AC10B8C0(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AC11DEB8(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AC11DEB8(a1);
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

void sub_1AC11DBD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11DBEC(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11DC94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11DCAC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11DEB8(a1) + 8 * a2;
}

void sub_1AC11DD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11DD8C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11DEB8(a1) + 8 * a2;
}

void sub_1AC11DE4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11DE6C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11DEB8(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11DEB8(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11DF2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11DF44(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11DA48(v3, *v3 + *a2);
    sub_1AC11DBEC(v3, *a2);
    v6 = sub_1AC11DCAC(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11DEB8(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1AC11E054(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC11E074(int *a1, int a2)
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
      v6 = *(sub_1AC11E4E4(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v15);
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
    v5 = (sub_1AC11E4E4(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v12 = sub_1AC10B8C0(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AC11E4E4(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AC11E4E4(a1);
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

void sub_1AC11E200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E218(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11E2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E2D8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11E4E4(a1) + 4 * a2;
}

void sub_1AC11E398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E3B8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11E4E4(a1) + 4 * a2;
}

void sub_1AC11E478(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E498(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11E4E4(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11E4E4(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11E558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11E570(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11E074(v3, *v3 + *a2);
    sub_1AC11E218(v3, *a2);
    v6 = sub_1AC11E2D8(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11E4E4(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1AC11E680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

void sub_1AC11E6A0(int *a1, int a2)
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
      v6 = *(sub_1AC11EB10(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AC10CFC4(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AC10CFDC(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AC10D118(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AC10D120(v15);
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
    v5 = (sub_1AC11EB10(a1) - 8);
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
      sub_1AC11EED0(v6);
    }

    v12 = sub_1AC10B8C0(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AC11EB10(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AC11EB10(a1);
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

void sub_1AC11E82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E844(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AC10CFC4(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AC10CFDC(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AC10D1D4(v5, *(a1 + 4));
    v7 = sub_1AC10CFDC(v6, ", ");
    v8 = sub_1AC10D1D4(v7, *a1);
    sub_1AC10D118(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AC10D120(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AC11E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E904(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11EB10(a1) + 8 * a2;
}

void sub_1AC11E9C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11E9E4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AC10CFDC(v8, "CHECK failed: (index) >= (0): ");
    sub_1AC10D118(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AC10CFC4(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AC10CFDC(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AC10D118(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AC10D120(v8);
  }

  return sub_1AC11EB10(a1) + 8 * a2;
}

void sub_1AC11EAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC11EAC4(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AC11EB10(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AC11EB10(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AC10CFC4(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AC10CFDC(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AC10D118(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AC10D120(v5);
  }

  return *(a1 + 8);
}

void sub_1AC11EB84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

int *sub_1AC11EB9C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AC10CFDC(v10, "CHECK failed: (&other) != (this): ");
    sub_1AC10D118(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AC10D120(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AC11E6A0(v3, *v3 + *a2);
    sub_1AC11E844(v3, *a2);
    v6 = sub_1AC11E904(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AC10CFC4(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AC10CFDC(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AC10D118(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AC10D120(v10);
    }

    v8 = sub_1AC11EB10(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1AC11ECAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AC11ECCC(uint64_t *a1)
{
  sub_1AC11ED08(a1);

  return sub_1AC0FFDA4(a1);
}

void sub_1AC11ED08(void *a1)
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

          MEMORY[0x1AC5AC440](v5, 0x1012C40EC159624);
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

uint64_t sub_1AC11EDA8(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_1AC11EDBC(result, v4);
  }

  return result;
}

uint64_t sub_1AC11EDBC(uint64_t a1, int a2)
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
        sub_1AC11EF0C(*a1);
      }

      v12 = sub_1AC10B8C0(v7, v11 & 0x7FFFFFFF8);
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

uint64_t *sub_1AC11EEB8(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_1AC11EF44(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_1F20D2610;
  *(a1 + 16) = &unk_1F20D25D0;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F20D25D0;
  *(a1 + 40) = 0;
  sub_1AC10AB68((a1 + 88));
  sub_1AC11F038(a1, a2, a3, &v7);
  sub_1AC10AD88((a1 + 88), &v7);
  sub_1AC10AB70(&v7);
  return a1;
}

void sub_1AC11F014(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AC10AB70(va);
  sub_1AC10AB70((v2 + 88));
  _Unwind_Resume(a1);
}

void *sub_1AC11F038@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_1AC0D9578(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_1AC10AB70(a4);
    result = sub_1AC109048(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_1AC10AB70(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_1AC0D9578(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_1AC10AB70(a4);
        result = sub_1AC109048(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_1AC10AB70(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_1AC0D9578(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_1AC10AB70(a4);
            result = sub_1AC109048(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_1AC10AB70(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_1AC0D936C(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_1AC10AB70(a4);
                result = sub_1AC109048(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_1AC10AB70(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_1AC108FB8(*(a1 + 48), 4uLL);
                  result = sub_1AC109048(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_1AC10AB70(a4);
                    *(a1 + 64) = v13;
                    result = sub_1AC109048(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_1AC10AB70(a4);
                      *(a1 + 72) = v13;
                      result = sub_1AC109048(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_1AC10AB70(a4);
                        *(a1 + 80) = v13;
                        return sub_1AC10AB68(v9);
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

void *sub_1AC11F27C(void *a1)
{
  *a1 = &unk_1F20D2610;
  sub_1AC10AB70(a1 + 11);
  return a1;
}

void sub_1AC11F2C0(void *a1)
{
  *a1 = &unk_1F20D2610;
  sub_1AC10AB70(a1 + 11);

  JUMPOUT(0x1AC5AC440);
}

uint64_t sub_1AC11F32C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AC11F360(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AC11F394(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AC11F3C8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AC11F3FC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AC11F454(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

void sub_1AC11F520(uint64_t *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 23);
  v4 = *a1;
  v5 = *a2;
  status_string = espresso_get_status_string();
  if (v3 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = v4;
  }

  v9 = 136315394;
  v10 = v7;
  v11 = 2080;
  v12 = status_string;
  _os_log_error_impl(&dword_1AC05D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Encountered an error during: %s\n -> Espresso Error: %s", &v9, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11F5D8(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1AC11F600(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315138;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1AC05D000, log, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
}

void sub_1AC11F648(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = (*(*a1 + 16))(a1);
  v5 = 136315138;
  v6 = v3;
  _os_log_error_impl(&dword_1AC05D000, a2, OS_LOG_TYPE_ERROR, "CSU exception: %s", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1AC11F6F4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC05D000, a2, OS_LOG_TYPE_ERROR, "Encountered null input while getting tokens for text %@!", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1AC11F7DC(void *a1, uint8_t *a2, void *a3, NSObject *a4)
{
  v7 = a1;
  *a2 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&dword_1AC05D000, a4, OS_LOG_TYPE_DEBUG, "%@", a2, 0xCu);
}

void sub_1AC11F850(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1AC05D000, log, OS_LOG_TYPE_ERROR, "Non FP32 or FP16 datatype encountered!", buf, 2u);
}

void sub_1AC11FB00(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1AC05D000, log, OS_LOG_TYPE_DEBUG, "Problem with model execution. Exiting beam search.", buf, 2u);
}

void sub_1AC11FB40(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_debug_impl(&dword_1AC05D000, a2, OS_LOG_TYPE_DEBUG, "All beams contain finished sequences. Exiting beam search loop early after %d steps", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FBF8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1AC05D000, a2, OS_LOG_TYPE_ERROR, "End CSUVideoCaptioner init with error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FC70(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FCE8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FD60(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FDD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No section for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FE50(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No section for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FEC8(int *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1AC05D000, a2, OS_LOG_TYPE_DEBUG, "Loaded gender option set to %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FF44(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No section for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC11FFBC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No section for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC120034(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a1, a3, "No section for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1AC1200AC(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1AC0A9FBC(&dword_1AC05D000, a2, a3, "No section for %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1AC120228(unsigned __int8 **a1, uint64_t a2, int *a3)
{
  ++a1[3];
  v6 = *a1;
  if (*a1 == a1[1])
  {
    v7 = -1;
  }

  else
  {
    v7 = *v6;
    *a1 = v6 + 1;
  }

  a1[2] = v7;
  result = sub_1AC0B3390(a1, a2, "number");
  if (result)
  {
    v9 = *(a1 + 32) ? 0 : *(a1 + 4);
    v10 = *(a1 + 32) ? *(a1 + 4) : 0;
    ++a1[3];
    v11 = *a1;
    if (*a1 == a1[1])
    {
      v12 = -1;
    }

    else
    {
      v12 = *v11;
      *a1 = v11 + 1;
    }

    a1[2] = v12;
    result = sub_1AC0B3390(a1, a2, "number");
    if (result)
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 32) ? 0 : *(a1 + 4);
      v15 = *(a1 + 32) ? *(a1 + 4) : 0;
      ++a1[3];
      v16 = *a1;
      if (*a1 == a1[1])
      {
        v17 = -1;
      }

      else
      {
        v17 = *v16;
        *a1 = v16 + 1;
      }

      a1[2] = v17;
      result = sub_1AC0B3390(a1, a2, "number");
      if (result)
      {
        v18 = *(a1 + 4);
        v19 = *(a1 + 32) ? *(a1 + 4) : v14;
        v20 = *(a1 + 32) ? v15 : *(a1 + 4);
        ++a1[3];
        v21 = *a1;
        if (*a1 == a1[1])
        {
          v22 = -1;
        }

        else
        {
          v22 = *v21;
          *a1 = v21 + 1;
        }

        a1[2] = v22;
        result = sub_1AC0B3390(a1, a2, "number");
        if (result)
        {
          v23 = *(a1 + 4);
          if (*(a1 + 32))
          {
            v24 = *(a1 + 4);
          }

          else
          {
            v24 = v9;
          }

          if (*(a1 + 32))
          {
            LOBYTE(v23) = v10;
          }

          *a3 = (v19 << 16) | (v24 << 24) | (v20 << 8) | v23;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AC1203E0(unsigned __int8 **a1, uint64_t a2, unint64_t *a3)
{
  ++a1[3];
  v6 = *a1;
  if (*a1 == a1[1])
  {
    v7 = -1;
  }

  else
  {
    v7 = *v6;
    *a1 = v6 + 1;
  }

  a1[2] = v7;
  result = sub_1AC0B3390(a1, a2, "number");
  if (result)
  {
    v9 = a1[2];
    v10 = *(a1 + 32) ? 0 : a1[2];
    if (*(a1 + 32))
    {
      v11 = a1[2];
    }

    else
    {
      LOBYTE(v11) = 0;
    }

    ++a1[3];
    v12 = *a1;
    if (*a1 == a1[1])
    {
      v13 = -1;
    }

    else
    {
      v13 = *v12;
      *a1 = v12 + 1;
    }

    a1[2] = v13;
    result = sub_1AC0B3390(a1, a2, "number");
    if (result)
    {
      v14 = a1[2];
      if (*(a1 + 32))
      {
        LOBYTE(v15) = 0;
      }

      else
      {
        v15 = a1[2];
      }

      if (*(a1 + 32))
      {
        v16 = a1[2];
      }

      else
      {
        LOBYTE(v16) = 0;
      }

      ++a1[3];
      v17 = *a1;
      if (*a1 == a1[1])
      {
        v18 = -1;
      }

      else
      {
        v18 = *v17;
        *a1 = v17 + 1;
      }

      a1[2] = v18;
      result = sub_1AC0B3390(a1, a2, "number");
      if (result)
      {
        v19 = a1[2];
        if (*(a1 + 32))
        {
          LOBYTE(v20) = 0;
        }

        else
        {
          v20 = a1[2];
        }

        if (*(a1 + 32))
        {
          v21 = a1[2];
        }

        else
        {
          LOBYTE(v21) = 0;
        }

        ++a1[3];
        v22 = *a1;
        if (*a1 == a1[1])
        {
          v23 = -1;
        }

        else
        {
          v23 = *v22;
          *a1 = v22 + 1;
        }

        a1[2] = v23;
        result = sub_1AC0B3390(a1, a2, "number");
        if (result)
        {
          v44 = v15;
          v24 = a1[2];
          if (*(a1 + 32))
          {
            LOBYTE(v25) = 0;
          }

          else
          {
            v25 = a1[2];
          }

          if (*(a1 + 32))
          {
            v26 = a1[2];
          }

          else
          {
            LOBYTE(v26) = 0;
          }

          ++a1[3];
          v27 = *a1;
          if (*a1 == a1[1])
          {
            v28 = -1;
          }

          else
          {
            v28 = *v27;
            *a1 = v27 + 1;
          }

          a1[2] = v28;
          result = sub_1AC0B3390(a1, a2, "number");
          if (result)
          {
            v43 = a3;
            v29 = a1[2];
            if (*(a1 + 32))
            {
              v30 = a1[2];
            }

            else
            {
              LOBYTE(v30) = v25;
            }

            if (*(a1 + 32))
            {
              LOBYTE(v31) = v26;
            }

            else
            {
              v31 = a1[2];
            }

            ++a1[3];
            v32 = *a1;
            if (*a1 == a1[1])
            {
              v33 = -1;
            }

            else
            {
              v33 = *v32;
              *a1 = v32 + 1;
            }

            a1[2] = v33;
            result = sub_1AC0B3390(a1, a2, "number");
            if (result)
            {
              v34 = a1[2];
              if (*(a1 + 32))
              {
                v20 = a1[2];
              }

              else
              {
                v21 = a1[2];
              }

              ++a1[3];
              v35 = *a1;
              if (*a1 == a1[1])
              {
                v36 = -1;
              }

              else
              {
                v36 = *v35;
                *a1 = v35 + 1;
              }

              a1[2] = v36;
              result = sub_1AC0B3390(a1, a2, "number");
              if (result)
              {
                v37 = a1[2];
                if (*(a1 + 32))
                {
                  v38 = a1[2];
                }

                else
                {
                  LOBYTE(v38) = v44;
                }

                if (!*(a1 + 32))
                {
                  v16 = a1[2];
                }

                ++a1[3];
                v39 = *a1;
                if (*a1 == a1[1])
                {
                  v40 = -1;
                }

                else
                {
                  v40 = *v39;
                  *a1 = v39 + 1;
                }

                a1[2] = v40;
                result = sub_1AC0B3390(a1, a2, "number");
                if (result)
                {
                  v41 = a1[2];
                  if (*(a1 + 32))
                  {
                    v42 = a1[2];
                  }

                  else
                  {
                    v42 = v10;
                  }

                  if (*(a1 + 32))
                  {
                    LOBYTE(v41) = v11;
                  }

                  *v43 = (v38 << 48) | (v42 << 56) | (v20 << 40) | (v30 << 32) | (v31 << 24) | (v21 << 16) | (v16 << 8) | v41;
                  return 1;
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

uint64_t sub_1AC120710(unsigned __int8 **a1, uint64_t a2, _BYTE *a3)
{
  ++a1[3];
  v5 = *a1;
  if (*a1 == a1[1])
  {
    v6 = -1;
  }

  else
  {
    v6 = *v5;
    *a1 = v5 + 1;
  }

  a1[2] = v6;
  result = sub_1AC0B3390(a1, a2, "number");
  if (result)
  {
    *a3 = a1[2];
  }

  return result;
}

uint64_t sub_1AC12077C(unsigned __int8 **a1, uint64_t a2, _WORD *a3)
{
  ++a1[3];
  v6 = *a1;
  if (*a1 == a1[1])
  {
    v7 = -1;
  }

  else
  {
    v7 = *v6;
    *a1 = v6 + 1;
  }

  a1[2] = v7;
  result = sub_1AC0B3390(a1, a2, "number");
  if (result)
  {
    v9 = *(a1 + 16);
    ++a1[3];
    v10 = *a1;
    if (*a1 == a1[1])
    {
      v11 = -1;
    }

    else
    {
      v11 = *v10;
      *a1 = v10 + 1;
    }

    a1[2] = v11;
    result = sub_1AC0B3390(a1, a2, "number");
    if (result)
    {
      v12 = *(a1 + 16);
      if (*(a1 + 32))
      {
        v13 = v9;
      }

      else
      {
        v13 = *(a1 + 16);
      }

      if (!*(a1 + 32))
      {
        v12 = v9;
      }

      *a3 = v12 | (v13 << 8);
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AC120858(unsigned __int8 **a1, uint64_t a2, int *a3)
{
  ++a1[3];
  v6 = *a1;
  if (*a1 == a1[1])
  {
    v7 = -1;
  }

  else
  {
    v7 = *v6;
    *a1 = v6 + 1;
  }

  a1[2] = v7;
  result = sub_1AC0B3390(a1, a2, "number");
  if (result)
  {
    v9 = *(a1 + 32) ? *(a1 + 4) : 0;
    v10 = *(a1 + 32) ? 0 : *(a1 + 4);
    ++a1[3];
    v11 = *a1;
    if (*a1 == a1[1])
    {
      v12 = -1;
    }

    else
    {
      v12 = *v11;
      *a1 = v11 + 1;
    }

    a1[2] = v12;
    result = sub_1AC0B3390(a1, a2, "number");
    if (result)
    {
      v13 = *(a1 + 4);
      v14 = *(a1 + 32) ? *(a1 + 4) : 0;
      v15 = *(a1 + 32) ? 0 : *(a1 + 4);
      ++a1[3];
      v16 = *a1;
      if (*a1 == a1[1])
      {
        v17 = -1;
      }

      else
      {
        v17 = *v16;
        *a1 = v16 + 1;
      }

      a1[2] = v17;
      result = sub_1AC0B3390(a1, a2, "number");
      if (result)
      {
        v18 = *(a1 + 4);
        v19 = *(a1 + 32) ? v14 : *(a1 + 4);
        v20 = *(a1 + 32) ? *(a1 + 4) : v15;
        ++a1[3];
        v21 = *a1;
        if (*a1 == a1[1])
        {
          v22 = -1;
        }

        else
        {
          v22 = *v21;
          *a1 = v21 + 1;
        }

        a1[2] = v22;
        result = sub_1AC0B3390(a1, a2, "number");
        if (result)
        {
          v23 = *(a1 + 4);
          if (*(a1 + 32))
          {
            v24 = v9;
          }

          else
          {
            v24 = *(a1 + 4);
          }

          if (!*(a1 + 32))
          {
            LOBYTE(v23) = v10;
          }

          *a3 = (v19 << 16) | (v24 << 24) | (v20 << 8) | v23;
          return 1;
        }
      }
    }
  }

  return result;
}

uint64_t sub_1AC120A10(unsigned __int8 **a1, uint64_t a2, unint64_t *a3)
{
  ++a1[3];
  v6 = *a1;
  if (*a1 == a1[1])
  {
    v7 = -1;
  }

  else
  {
    v7 = *v6;
    *a1 = v6 + 1;
  }

  a1[2] = v7;
  result = sub_1AC0B3390(a1, a2, "number");
  if (result)
  {
    v9 = a1[2];
    v10 = *(a1 + 32) ? a1[2] : 0;
    if (*(a1 + 32))
    {
      LOBYTE(v11) = 0;
    }

    else
    {
      v11 = a1[2];
    }

    ++a1[3];
    v12 = *a1;
    if (*a1 == a1[1])
    {
      v13 = -1;
    }

    else
    {
      v13 = *v12;
      *a1 = v12 + 1;
    }

    a1[2] = v13;
    result = sub_1AC0B3390(a1, a2, "number");
    if (result)
    {
      v14 = a1[2];
      if (*(a1 + 32))
      {
        v15 = a1[2];
      }

      else
      {
        LOBYTE(v15) = 0;
      }

      if (*(a1 + 32))
      {
        LOBYTE(v16) = 0;
      }

      else
      {
        v16 = a1[2];
      }

      ++a1[3];
      v17 = *a1;
      if (*a1 == a1[1])
      {
        v18 = -1;
      }

      else
      {
        v18 = *v17;
        *a1 = v17 + 1;
      }

      a1[2] = v18;
      result = sub_1AC0B3390(a1, a2, "number");
      if (result)
      {
        v19 = a1[2];
        if (*(a1 + 32))
        {
          v20 = a1[2];
        }

        else
        {
          LOBYTE(v20) = 0;
        }

        if (*(a1 + 32))
        {
          LOBYTE(v21) = 0;
        }

        else
        {
          v21 = a1[2];
        }

        ++a1[3];
        v22 = *a1;
        if (*a1 == a1[1])
        {
          v23 = -1;
        }

        else
        {
          v23 = *v22;
          *a1 = v22 + 1;
        }

        a1[2] = v23;
        result = sub_1AC0B3390(a1, a2, "number");
        if (result)
        {
          v44 = v15;
          v24 = a1[2];
          if (*(a1 + 32))
          {
            v25 = a1[2];
          }

          else
          {
            LOBYTE(v25) = 0;
          }

          if (*(a1 + 32))
          {
            LOBYTE(v26) = 0;
          }

          else
          {
            v26 = a1[2];
          }

          ++a1[3];
          v27 = *a1;
          if (*a1 == a1[1])
          {
            v28 = -1;
          }

          else
          {
            v28 = *v27;
            *a1 = v27 + 1;
          }

          a1[2] = v28;
          result = sub_1AC0B3390(a1, a2, "number");
          if (result)
          {
            v43 = a3;
            v29 = a1[2];
            if (*(a1 + 32))
            {
              LOBYTE(v30) = v25;
            }

            else
            {
              v30 = a1[2];
            }

            if (*(a1 + 32))
            {
              v31 = a1[2];
            }

            else
            {
              LOBYTE(v31) = v26;
            }

            ++a1[3];
            v32 = *a1;
            if (*a1 == a1[1])
            {
              v33 = -1;
            }

            else
            {
              v33 = *v32;
              *a1 = v32 + 1;
            }

            a1[2] = v33;
            result = sub_1AC0B3390(a1, a2, "number");
            if (result)
            {
              v34 = a1[2];
              if (*(a1 + 32))
              {
                v21 = a1[2];
              }

              else
              {
                v20 = a1[2];
              }

              ++a1[3];
              v35 = *a1;
              if (*a1 == a1[1])
              {
                v36 = -1;
              }

              else
              {
                v36 = *v35;
                *a1 = v35 + 1;
              }

              a1[2] = v36;
              result = sub_1AC0B3390(a1, a2, "number");
              if (result)
              {
                v37 = a1[2];
                if (*(a1 + 32))
                {
                  LOBYTE(v38) = v44;
                }

                else
                {
                  v38 = a1[2];
                }

                if (*(a1 + 32))
                {
                  v16 = a1[2];
                }

                ++a1[3];
                v39 = *a1;
                if (*a1 == a1[1])
                {
                  v40 = -1;
                }

                else
                {
                  v40 = *v39;
                  *a1 = v39 + 1;
                }

                a1[2] = v40;
                result = sub_1AC0B3390(a1, a2, "number");
                if (result)
                {
                  v41 = a1[2];
                  if (*(a1 + 32))
                  {
                    v42 = v10;
                  }

                  else
                  {
                    v42 = a1[2];
                  }

                  if (!*(a1 + 32))
                  {
                    LOBYTE(v41) = v11;
                  }

                  *v43 = (v38 << 48) | (v42 << 56) | (v20 << 40) | (v30 << 32) | (v31 << 24) | (v21 << 16) | (v16 << 8) | v41;
                  return 1;
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

uint64_t sub_1AC120D40(unsigned __int8 **a1, unint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = sub_1AC0B5260(a1[5], a2);
  if (result)
  {
    if (v4 == -1)
    {
      while (1)
      {
        ++a1[3];
        v7 = *a1;
        if (*a1 == a1[1])
        {
          a1[2] = v4;
        }

        else
        {
          v8 = *v7;
          *a1 = v7 + 1;
          a1[2] = v8;
          if (v8 == 255)
          {
            goto LABEL_12;
          }
        }

        if ((sub_1AC0B13D4(a1, 0, a3) & 1) == 0)
        {
          return 0;
        }
      }
    }

    if (v4)
    {
      while ((sub_1AC0B13D4(a1, 1, a3) & 1) != 0)
      {
        if (!--v4)
        {
          goto LABEL_12;
        }
      }

      return 0;
    }

    else
    {
LABEL_12:
      *(a1[5] + 2) -= 8;
      return 1;
    }
  }

  return result;
}

BOOL sub_1AC120E10(unsigned __int8 **a1, uint64_t a2, unsigned int a3, std::string *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 1;
    v10 = a3;
    do
    {
      ++a1[3];
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v12 = -1;
      }

      else
      {
        v12 = *v11;
        *a1 = v11 + 1;
      }

      a1[2] = v12;
      if (!sub_1AC0B3390(a1, a2, "string"))
      {
        break;
      }

      std::string::push_back(a4, *(a1 + 16));
      v8 = v9++ >= a3;
      --v10;
    }

    while (v10);
  }

  else
  {
    return 1;
  }

  return v8;
}

uint64_t sub_1AC120ED8(unsigned __int8 **a1, uint64_t a2, unsigned int a3, std::string *a4)
{
  if (!a3)
  {
    return 1;
  }

  for (i = 0; i < a3; ++i)
  {
    ++a1[3];
    v9 = *a1;
    if (*a1 == a1[1])
    {
      v10 = -1;
    }

    else
    {
      v10 = *v9;
      *a1 = v9 + 1;
    }

    a1[2] = v10;
    v11 = sub_1AC0B3390(a1, a2, "string");
    if (!v11)
    {
      break;
    }

    std::string::push_back(a4, *(a1 + 16));
  }

  return v11;
}

BOOL sub_1AC120F94(unsigned __int8 **a1, uint64_t a2, unint64_t a3, std::string *a4)
{
  if (a3)
  {
    v8 = 0;
    v9 = 1;
    v10 = a3;
    do
    {
      ++a1[3];
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v12 = -1;
      }

      else
      {
        v12 = *v11;
        *a1 = v11 + 1;
      }

      a1[2] = v12;
      if (!sub_1AC0B3390(a1, a2, "string"))
      {
        break;
      }

      std::string::push_back(a4, *(a1 + 16));
      v8 = v9++ >= a3;
      --v10;
    }

    while (v10);
  }

  else
  {
    return 1;
  }

  return v8;
}

uint64_t sub_1AC12105C(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  result = sub_1AC0B5260(*(a1 + 40), a2);
  if (result)
  {
    if (v2)
    {
      while ((sub_1AC0B1FD8(a1) & 1) != 0)
      {
        if (!--v2)
        {
          goto LABEL_5;
        }
      }

      return 0;
    }

    else
    {
LABEL_5:
      *(*(a1 + 40) + 16) -= 8;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1AC1210C0(unsigned __int8 **a1, uint64_t a2)
{
  v2 = 0;
  switch(a1[2])
  {
    case 0xC4uLL:
      ++a1[3];
      v5 = *a1;
      if (*a1 == a1[1])
      {
        v6 = -1;
      }

      else
      {
        v6 = *v5;
        *a1 = v5 + 1;
      }

      a1[2] = v6;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v7 = *(a1 + 16);
      v8 = a1;
      v9 = a2;

      return sub_1AC0B74DC(v8, 2, v7, v9);
    case 0xC5uLL:
      ++a1[3];
      v21 = *a1;
      if (*a1 == a1[1])
      {
        v22 = -1;
      }

      else
      {
        v22 = *v21;
        *a1 = v21 + 1;
      }

      a1[2] = v22;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v23 = *(a1 + 16);
      ++a1[3];
      v24 = *a1;
      if (*a1 == a1[1])
      {
        v25 = -1;
      }

      else
      {
        v25 = *v24;
        *a1 = v24 + 1;
      }

      a1[2] = v25;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v26 = *(a1 + 16);
      if (*(a1 + 32))
      {
        v27 = v23;
      }

      else
      {
        v27 = *(a1 + 16);
      }

      if (!*(a1 + 32))
      {
        v26 = v23;
      }

      v7 = (v26 | (v27 << 8));
      v8 = a1;
      v9 = a2;

      return sub_1AC0B74DC(v8, 2, v7, v9);
    case 0xC6uLL:
      v50 = 0;
      v2 = 0;
      if (sub_1AC120858(a1, 2, &v50))
      {
        return sub_1AC0B7318(a1, 2, v50, a2);
      }

      return v2;
    case 0xC7uLL:
      ++a1[3];
      v28 = *a1;
      if (*a1 == a1[1])
      {
        v29 = -1;
      }

      else
      {
        v29 = *v28;
        *a1 = v28 + 1;
      }

      a1[2] = v29;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v30 = *(a1 + 16);
      ++a1[3];
      v31 = *a1;
      if (*a1 == a1[1])
      {
        v32 = -1;
      }

      else
      {
        v32 = *v31;
        *a1 = v31 + 1;
      }

      a1[2] = v32;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v33 = a1[2];
      if (!sub_1AC0B74DC(a1, 2, v30, a2))
      {
        return 0;
      }

      goto LABEL_58;
    case 0xC8uLL:
      ++a1[3];
      v34 = *a1;
      if (*a1 == a1[1])
      {
        v35 = -1;
      }

      else
      {
        v35 = *v34;
        *a1 = v34 + 1;
      }

      a1[2] = v35;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v36 = *(a1 + 16);
      ++a1[3];
      v37 = *a1;
      if (*a1 == a1[1])
      {
        v38 = -1;
      }

      else
      {
        v38 = *v37;
        *a1 = v37 + 1;
      }

      a1[2] = v38;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      if (*(a1 + 32))
      {
        v39 = v36;
      }

      else
      {
        v39 = *(a1 + 16);
      }

      if (*(a1 + 32))
      {
        LOBYTE(v36) = *(a1 + 16);
      }

      ++a1[3];
      v40 = *a1;
      if (*a1 == a1[1])
      {
        v41 = -1;
      }

      else
      {
        v41 = *v40;
        *a1 = v40 + 1;
      }

      a1[2] = v41;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v42 = v36 | (v39 << 8);
      v33 = a1[2];
      if (!sub_1AC0B74DC(a1, 2, v42, a2))
      {
        return 0;
      }

LABEL_58:
      *(a2 + 24) = v33;
      goto LABEL_69;
    case 0xC9uLL:
      v49 = 0;
      if (!sub_1AC120858(a1, 2, &v49))
      {
        return 0;
      }

      ++a1[3];
      v47 = *a1;
      if (*a1 == a1[1])
      {
        v48 = -1;
      }

      else
      {
        v48 = *v47;
        *a1 = v47 + 1;
      }

      a1[2] = v48;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v13 = a1[2];
      if (!sub_1AC0B7318(a1, 2, v49, a2))
      {
        return 0;
      }

      goto LABEL_68;
    case 0xD4uLL:
      ++a1[3];
      v18 = *a1;
      if (*a1 == a1[1])
      {
        v19 = -1;
      }

      else
      {
        v19 = *v18;
        *a1 = v18 + 1;
      }

      a1[2] = v19;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v20 = a1[2];
      v2 = 1;
      if (!sub_1AC0B53B8(a1, 2, 1, a2))
      {
        return 0;
      }

      *(a2 + 24) = v20;
      goto LABEL_70;
    case 0xD5uLL:
      ++a1[3];
      v43 = *a1;
      if (*a1 == a1[1])
      {
        v44 = -1;
      }

      else
      {
        v44 = *v43;
        *a1 = v43 + 1;
      }

      a1[2] = v44;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v13 = a1[2];
      v14 = a1;
      v15 = 2;
      goto LABEL_67;
    case 0xD6uLL:
      ++a1[3];
      v11 = *a1;
      if (*a1 == a1[1])
      {
        v12 = -1;
      }

      else
      {
        v12 = *v11;
        *a1 = v11 + 1;
      }

      a1[2] = v12;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v13 = a1[2];
      v14 = a1;
      v15 = 4;
      goto LABEL_67;
    case 0xD7uLL:
      ++a1[3];
      v16 = *a1;
      if (*a1 == a1[1])
      {
        v17 = -1;
      }

      else
      {
        v17 = *v16;
        *a1 = v16 + 1;
      }

      a1[2] = v17;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v13 = a1[2];
      v14 = a1;
      v15 = 8;
      goto LABEL_67;
    case 0xD8uLL:
      ++a1[3];
      v45 = *a1;
      if (*a1 == a1[1])
      {
        v46 = -1;
      }

      else
      {
        v46 = *v45;
        *a1 = v45 + 1;
      }

      a1[2] = v46;
      if (!sub_1AC0B3390(a1, 2, "number"))
      {
        return 0;
      }

      v13 = a1[2];
      v14 = a1;
      v15 = 16;
LABEL_67:
      if (!sub_1AC0B53B8(v14, 2, v15, a2))
      {
        return 0;
      }

LABEL_68:
      *(a2 + 24) = v13;
LABEL_69:
      v2 = 1;
LABEL_70:
      *(a2 + 25) = 1;
      return v2;
    default:
      return v2;
  }
}

uint64_t sub_1AC1216CC(uint64_t a1)
{
  v15 = 0;
  v16 = 0;
  result = sub_1AC0BBD60(a1, &v15);
  if (result)
  {
    v3 = *(a1 + 40);
    if (v15 == -1)
    {
      v17 = 2;
      v18 = sub_1AC0B36B0(v3, &v17);
      sub_1AC0B3598((v3 + 1), &v18);
      v9 = *(a1 + 16);
LABEL_16:
      while (v9 != 93)
      {
        result = sub_1AC0B834C(a1);
        if (!result)
        {
          return result;
        }

        v11 = *a1;
        v10 = *(a1 + 8);
        v12 = *(a1 + 24) + 1;
        while (1)
        {
          *(a1 + 24) = v12;
          if (v11 == v10)
          {
            break;
          }

          v13 = *v11++;
          v9 = v13;
          *a1 = v11;
          *(a1 + 16) = v13;
          ++v12;
          if (v13 != 78)
          {
            goto LABEL_16;
          }
        }

        v9 = -1;
        *(a1 + 16) = -1;
      }
    }

    else
    {
      result = sub_1AC0B5260(*(a1 + 40), v15);
      if (!result)
      {
        return result;
      }

      if (v16 != 78)
      {
        if (v16)
        {
          if (v15)
          {
            v14 = 0;
            while ((sub_1AC0B834C(a1) & 1) != 0)
            {
              if (++v14 >= v15)
              {
                goto LABEL_27;
              }
            }

            return 0;
          }
        }

        else if (v15)
        {
          v4 = 0;
          do
          {
            v6 = *a1;
            v5 = *(a1 + 8);
            v7 = *(a1 + 24) + 1;
            while (1)
            {
              *(a1 + 24) = v7;
              if (v6 == v5)
              {
                break;
              }

              v8 = *v6++;
              *a1 = v6;
              *(a1 + 16) = v8;
              ++v7;
              if (v8 != 78)
              {
                goto LABEL_11;
              }
            }

            *(a1 + 16) = -1;
LABEL_11:
            if ((sub_1AC0B834C(a1) & 1) == 0)
            {
              return 0;
            }
          }

          while (++v4 < v15);
        }
      }
    }

LABEL_27:
    *(*(a1 + 40) + 16) -= 8;
    return 1;
  }

  return result;
}

uint64_t sub_1AC12185C(uint64_t *a1, uint64_t a2, uint64_t *a3, _BYTE *a4)
{
  sub_1AC0BD17C(a1);
  if (v8)
  {
    v9 = -1;
  }

  else
  {
    sub_1AC0BD1B0();
  }

  *v7 = v9;
  v4[2] = v9;
  if (sub_1AC0B3390(v4, 1, "number"))
  {
    sub_1AC0BD1BC();
    if (v8)
    {
      v10 = -1;
    }

    else
    {
      sub_1AC0BD1B0();
    }

    *a3 = v10;
    v4[2] = v10;
    if (sub_1AC0B3390(v4, 1, "number"))
    {
      return 0;
    }
  }

  *a4 = 0;
  return 1;
}

void sub_1AC121900(char a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = a1 & 0x1F;
  if ((sub_1AC0B5260(*(a2 + 40), v7) & 1) == 0)
  {
LABEL_7:
    v8 = 0;
    goto LABEL_6;
  }

  if (v7)
  {
    while ((sub_1AC0B13D4(a2, 1, a3) & 1) != 0)
    {
      if (!--v7)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_7;
  }

LABEL_5:
  sub_1AC0BD1D4();
LABEL_6:
  *a4 = v8;
}

void sub_1AC121974(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1AC1219A0(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }
}

void sub_1AC1219CC(char a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1 & 0xF;
  if ((sub_1AC0B5260(*(a2 + 40), v5) & 1) == 0)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_6;
  }

  if (v5)
  {
    while ((sub_1AC0B1FD8(a2) & 1) != 0)
    {
      if (!--v5)
      {
        goto LABEL_5;
      }
    }

    goto LABEL_7;
  }

LABEL_5:
  sub_1AC0BD1D4();
LABEL_6:
  *a3 = v6;
}

uint64_t sub_1AC121A34(unsigned __int8 **a1)
{
  v4 = a1[5];
  ++a1[3];
  v5 = *a1;
  if (*a1 == a1[1])
  {
    v6 = -1;
  }

  else
  {
    v6 = *v5;
    *a1 = v5 + 1;
  }

  v9 = v1;
  v10 = v2;
  a1[2] = v6;
  v8 = v6 != 0;
  return sub_1AC0B5990(v4, &v8);
}

BOOL sub_1AC121A98(unsigned __int8 **a1, std::string *a2, int a3)
{
  v6 = 0;
  v7 = 1;
  v8 = a3;
  do
  {
    ++a1[3];
    v9 = *a1;
    if (*a1 == a1[1])
    {
      v10 = -1;
    }

    else
    {
      v10 = *v9;
      *a1 = v9 + 1;
    }

    a1[2] = v10;
    if (!sub_1AC0B3390(a1, 4, "string"))
    {
      break;
    }

    std::string::push_back(a2, *(a1 + 16));
    v6 = v7++ >= a3;
    --v8;
  }

  while (v8);
  return v6;
}

uint64_t *sub_1AC121B54(uint64_t *a1)
{
  result = sub_1AC0BD198(a1);
  if (v4)
  {
    v5 = -1;
  }

  else
  {
    v5 = *v3;
    *result = (v3 + 1);
  }

  result[2] = v5;
  *v2 = v5 != -1;
  return result;
}

BOOL sub_1AC121B90(uint64_t *a1, uint64_t a2, int a3, _BYTE *a4)
{
  sub_1AC0BD198(a1);
  if (v9)
  {
    v10 = -1;
  }

  else
  {
    v10 = *v8;
    *a1 = (v8 + 1);
  }

  a1[2] = v10;
  if (sub_1AC0B3390(a1, 4, "number"))
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = 0;
  }

  *(a2 + 24) = v11;
  *(a2 + 25) = 1;
  result = sub_1AC0B53B8(a1, 4, a3, a2);
  *a4 = result;
  return result;
}

uint64_t sub_1AC121C28(uint64_t *a1, char *a2)
{
  v4 = sub_1AC0BD17C(a1);
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    sub_1AC0BD1B0();
  }

  *(v2 + 16) = v7;
  result = sub_1AC0BD1EC(v4, v5, "number");
  if (!result)
  {
    goto LABEL_14;
  }

  v9 = *(v2 + 16);
  sub_1AC0BD1BC();
  if (v6)
  {
    v12 = -1;
  }

  else
  {
    sub_1AC0BD1B0();
  }

  *(v2 + 16) = v12;
  result = sub_1AC0BD1EC(v10, v11, "number");
  if (result)
  {
    v13 = *(v2 + 16);
    if (*(v2 + 32))
    {
      v14 = v9;
    }

    else
    {
      v14 = *(v2 + 16);
    }

    if (!*(v2 + 32))
    {
      v13 = v9;
    }

    v15 = *(v2 + 40);
    v17 = (v13 | (v14 << 8));
    result = sub_1AC0B5E20(v15, &v17);
    v16 = 1;
  }

  else
  {
LABEL_14:
    v16 = 0;
  }

  *a2 = v16;
  return result;
}

uint64_t sub_1AC121CE8(uint64_t *a1, char *a2)
{
  v4 = sub_1AC0BD17C(a1);
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    sub_1AC0BD1B0();
  }

  *(v2 + 16) = v7;
  result = sub_1AC0BD1EC(v4, v5, "number");
  if (result)
  {
    v9 = *(v2 + 40);
    v11 = *(v2 + 16);
    result = sub_1AC0B5E20(v9, &v11);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_1AC121D5C(uint64_t *a1, char *a2)
{
  v4 = sub_1AC0BD17C(a1);
  if (v6)
  {
    v7 = -1;
  }

  else
  {
    sub_1AC0BD1B0();
  }

  *(v2 + 16) = v7;
  result = sub_1AC0BD1EC(v4, v5, "number");
  if (result)
  {
    v9 = *(v2 + 40);
    v11 = *(v2 + 16);
    result = sub_1AC0B70BC(v9, &v11);
    v10 = 1;
  }

  else
  {
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

void sub_1AC121DD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    *(a1 + 64) = v3;
    operator delete(v3);
  }
}

uint64_t *sub_1AC121E20(uint64_t *a1)
{
  result = sub_1AC0BD198(a1);
  if (v3)
  {
    v4 = -1;
  }

  else
  {
    v4 = *v2;
    *result = (v2 + 1);
  }

  result[2] = v4;
  return result;
}

uint64_t sub_1AC121E50(uint64_t result, void *a2)
{
  v2 = (result + 40);
  v3 = *(result + 40);
  *(result + 24) = 1;
  --*a2;
  if (v3 || (v2 = (result + 48), (v3 = *(result + 48)) != 0))
  {
    *v2 = v3 - 1;
  }

  if (*(result + 20) != -1)
  {
    --*(result + 64);
  }

  return result;
}

uint64_t sub_1AC121EA0(int64x2_t *a1, _DWORD *a2)
{
  sub_1AC0BA3C8(a1);
  if (a1[1].i8[0] == 1)
  {
    do
    {
      if (a1[1].i32[1] != 47)
      {
        break;
      }

      if (!sub_1AC0BA580(a1))
      {
        goto LABEL_36;
      }

      sub_1AC0BA3C8(a1);
    }

    while ((a1[1].i8[0] & 1) != 0);
  }

  v4 = a1[1].i32[1];
  switch(v4)
  {
    case '""':
      result = sub_1AC0BA6A4(a1);
      goto LABEL_37;
    case '#':
    case '$':
    case '%':
    case '&':
    case '\'':
    case '(':
    case ')':
    case '*':
    case '+':
    case '.':
    case '/':
      goto LABEL_35;
    case ',':
      result = 13;
      goto LABEL_37;
    case '-':
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      result = sub_1AC0BB3B0(a1);
      goto LABEL_37;
    case ':':
      result = 12;
      goto LABEL_37;
    default:
      if ((v4 + 1) < 2)
      {
        result = 15;
        goto LABEL_37;
      }

      switch(v4)
      {
        case '[':
          result = 8;
          goto LABEL_37;
        case ']':
          result = 10;
          goto LABEL_37;
        case 'f':
          if (sub_1AC0BBA04(a1) == 97 && sub_1AC0BBA04(a1) == 108 && sub_1AC0BBA04(a1) == 115 && sub_1AC0BBA04(a1) == 101)
          {
            result = 2;
            goto LABEL_37;
          }

          break;
        case 'n':
          if (sub_1AC0BBA04(a1) == 117 && sub_1AC0BBA04(a1) == 108 && sub_1AC0BBA04(a1) == 108)
          {
            result = 3;
            goto LABEL_37;
          }

          break;
        case 't':
          if (sub_1AC0BBA04(a1) == 114 && sub_1AC0BBA04(a1) == 117 && sub_1AC0BBA04(a1) == 101)
          {
            result = 1;
            goto LABEL_37;
          }

          break;
        case '{':
          result = 9;
          goto LABEL_37;
        case '}':
          result = 11;
          goto LABEL_37;
      }

LABEL_35:
      a1[6].i64[1] = "invalid literal";
      break;
  }

LABEL_36:
  result = 14;
LABEL_37:
  *a2 = result;
  return result;
}

uint64_t sub_1AC1220B4(std::string::value_type *a1, std::string *this, int64x2_t *a3, _DWORD *a4)
{
  std::string::push_back(this, *a1);
  result = sub_1AC0BBA04(a3);
  if ((result - 48) <= 9)
  {
    do
    {
      std::string::push_back(this, *a1);
      result = sub_1AC0BBA04(a3);
    }

    while ((result - 48) < 0xA);
  }

  *a4 = 7;
  return result;
}

void sub_1AC1221D8(void **a1)
{
  if (*(a1 + 23) < 0)
  {
    sub_1AC0C0360(a1);
  }
}

void sub_1AC122270(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_debug_impl(&dword_1AC05D000, log, OS_LOG_TYPE_DEBUG, "Empty trigger tokens", buf, 2u);
}

uint64_t sub_1AC1222B0(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AC0FD6D0(a2, v8, a1);
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

uint64_t sub_1AC122378(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AC0FE630(a2, v8, a1);
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

void sub_1AC122440(uint64_t a1, char *a2, int32x2_t *a3)
{
  v322 = a2;
  v5 = sub_1AC0FF968(a3, &v322, a3[11].i32[1]);
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

    v31 = sub_1AC119AE0(v6, v8);
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
            sub_1AC11EDA8(a1 + 56, v13 + 1);
            v12 = *(a1 + 72);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(a1 + 64);
          sub_1AC107F64(v10);
          if (v14 != v15)
          {
            sub_1AC107F4C();
            *(a1 + 64) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_1AC107FA0(v12);
          v21 = *(a1 + 56);
          if (!v21)
          {
            sub_1AC107FAC();
          }

          if (*(v21 + 24))
          {
            v29 = sub_1AC107F04();
            (*(v30 + 40))(v29, &unk_1F20D21E8, 24);
          }

          v22 = sub_1AC107E8C();
          sub_1AC107F7C(v22);
          v23 = *(a1 + 72);
          v24 = *(a1 + 64);
          sub_1AC107F70();
          *(a1 + 64) = v25;
          v19 = sub_1AC107F58(v26, v27);
LABEL_22:
          v322 = sub_1AC119B24(v19, v16, a3);
          if (v322)
          {
            sub_1AC107F40();
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

        sub_1AC107F94(*(a1 + 40) | 1);
        if (v56)
        {
          sub_1AC107F88(v127, v56);
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

        sub_1AC107E60(v185, v186);
        if (v188 < 0)
        {
          v322 = sub_1AC119A98(v187, v185);
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
            v321 = sub_1AC0FFAA8((a1 + 8));
            v185 = v320;
            v317 = v321;
          }

          sub_1AC119980(3, v185, v317);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_1AC107E78(v123, v124);
        if (v126 < 0)
        {
          v284 = sub_1AC119A98(v125, v123);
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
          sub_1AC107F64(v153);
          if (v14 == v15)
          {
            if (v156 == *(a1 + 92))
            {
LABEL_154:
              sub_1AC11EDA8(a1 + 80, v156 + 1);
              v155 = *(a1 + 96);
              v161 = *v155;
            }

            sub_1AC107FA0(v155);
            v162 = *(a1 + 80);
            if (!v162)
            {
              sub_1AC107FAC();
            }

            if (*(v162 + 24))
            {
              v169 = sub_1AC107F04();
              (*(v170 + 40))(v169, &unk_1F20D21E8, 24);
            }

            v163 = sub_1AC107E8C();
            sub_1AC107F7C(v163);
            v164 = *(a1 + 96);
            v165 = *(a1 + 88);
            sub_1AC107F70();
            *(a1 + 88) = v166;
            v160 = sub_1AC107F58(v167, v168);
            goto LABEL_160;
          }

          sub_1AC107F4C();
          *(a1 + 88) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          v322 = sub_1AC119B24(v160, v157, a3);
          if (!v322)
          {
            return;
          }

          sub_1AC107F40();
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_1AC107E78(v181, v182);
        if (v184 < 0)
        {
          v298 = sub_1AC119A98(v183, v181);
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

        sub_1AC107F94(*(a1 + 40) | 2);
        if (v56)
        {
          sub_1AC107F88(v219, v56);
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

        sub_1AC107EE4(v7, *(a1 + 40) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_1AC107E60(v97, v98);
        if (v100 < 0)
        {
          v274 = sub_1AC119A98(v99, v97);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_1AC107E78(v222, v223);
        if (v225 < 0)
        {
          v304 = sub_1AC119A98(v224, v222);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_1AC107E78(v113, v114);
        if (v116 < 0)
        {
          v280 = sub_1AC119A98(v115, v113);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_1AC107E78(v171, v172);
        if (v174 < 0)
        {
          v294 = sub_1AC119A98(v173, v171);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_1AC107E78(v74, v75);
        if (v77 < 0)
        {
          v272 = sub_1AC119A98(v76, v74);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_1AC107E78(v211, v212);
        if (v214 < 0)
        {
          v300 = sub_1AC119A98(v213, v211);
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

        sub_1AC107ED4(v7, *(a1 + 40) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_1AC107E78(v215, v216);
        if (v218 < 0)
        {
          v302 = sub_1AC119A98(v217, v215);
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

        sub_1AC107EF4(v7, *(a1 + 44) | 1);
        if (v234 < 0 && (sub_1AC107E60(v234, v235), v238 < 0))
        {
          sub_1AC119A98(v237, v236);
          sub_1AC107EB4();
          *(a1 + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_1AC107ED4(v7, *(a1 + 40) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_1AC107E78(v230, v231);
        if (v233 < 0)
        {
          v308 = sub_1AC119A98(v232, v230);
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

        sub_1AC107EF4(v7, *(a1 + 44) | 2);
        if (v58 < 0 && (sub_1AC107E60(v58, v59), v62 < 0))
        {
          sub_1AC119A98(v61, v60);
          sub_1AC107EB4();
          *(a1 + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_1AC107EF4(v7, *(a1 + 44) | 8);
        if (v146 < 0 && (sub_1AC107E60(v146, v147), v150 < 0))
        {
          sub_1AC119A98(v149, v148);
          sub_1AC107EB4();
          *(a1 + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_1AC107EF4(v7, *(a1 + 44) | 4);
        if (v241 < 0 && (sub_1AC107E60(v241, v242), v245 < 0))
        {
          sub_1AC119A98(v244, v243);
          sub_1AC107EB4();
          *(a1 + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x4000);
        if (v68 < 0 && (sub_1AC107E60(v68, v69), v72 < 0))
        {
          sub_1AC119A98(v71, v70);
          sub_1AC107EB4();
          *(a1 + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x10000);
        if (v138 < 0 && (sub_1AC107E60(v138, v139), v142 < 0))
        {
          sub_1AC119A98(v141, v140);
          sub_1AC107EB4();
          *(a1 + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x8000);
        if (v101 < 0 && (sub_1AC107E60(v101, v102), v105 < 0))
        {
          sub_1AC119A98(v104, v103);
          sub_1AC107EB4();
          *(a1 + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
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
          sub_1AC107F64(v190);
          if (v14 == v15)
          {
            if (v193 == *(a1 + 116))
            {
LABEL_194:
              sub_1AC11EDA8(a1 + 104, v193 + 1);
              v192 = *(a1 + 120);
              v198 = *v192;
            }

            sub_1AC107FA0(v192);
            v199 = *(a1 + 104);
            if (!v199)
            {
              sub_1AC107FAC();
            }

            if (*(v199 + 24))
            {
              v206 = sub_1AC107F04();
              (*(v207 + 40))(v206, &unk_1F20D21E8, 24);
            }

            v200 = sub_1AC107E8C();
            sub_1AC107F7C(v200);
            v201 = *(a1 + 120);
            v202 = *(a1 + 112);
            sub_1AC107F70();
            *(a1 + 112) = v203;
            v197 = sub_1AC107F58(v204, v205);
            goto LABEL_200;
          }

          sub_1AC107F4C();
          *(a1 + 112) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          v322 = sub_1AC119B24(v197, v194, a3);
          if (!v322)
          {
            return;
          }

          sub_1AC107F40();
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

        sub_1AC107EF4(v7, *(a1 + 44) | 0x10);
        if (v49 < 0 && (sub_1AC107E60(v49, v50), v53 < 0))
        {
          sub_1AC119A98(v52, v51);
          sub_1AC107EB4();
          *(a1 + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_1AC107EF4(v7, *(a1 + 44) | 0x20);
        if (v247 < 0 && (sub_1AC107E60(v247, v248), v251 < 0))
        {
          sub_1AC119A98(v250, v249);
          sub_1AC107EB4();
          *(a1 + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x40000);
        if (v117 < 0 && (sub_1AC107E60(v117, v118), v121 < 0))
        {
          sub_1AC119A98(v120, v119);
          sub_1AC107EB4();
          *(a1 + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x20000);
        if (v128 < 0 && (sub_1AC107E60(v128, v129), v132 < 0))
        {
          sub_1AC119A98(v131, v130);
          sub_1AC107EB4();
          *(a1 + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_1AC107F94(*(a1 + 40) | 4);
        if (v56)
        {
          sub_1AC107F88(v210, v56);
        }

        v57 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_1AC107ED4(v7, *(a1 + 40) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_1AC107E78(v134, v135);
        if (v137 < 0)
        {
          v288 = sub_1AC119A98(v136, v134);
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

        sub_1AC107F18(v7, *(a1 + 44) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_1AC107E78(v36, v37);
        if (v39 < 0)
        {
          v262 = sub_1AC119A98(v38, v36);
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

        sub_1AC107F18(v7, *(a1 + 44) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_1AC107E78(v64, v65);
        if (v67 < 0)
        {
          v268 = sub_1AC119A98(v66, v64);
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

        sub_1AC107F18(v7, *(a1 + 44) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_1AC107E78(v226, v227);
        if (v229 < 0)
        {
          v306 = sub_1AC119A98(v228, v226);
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

        sub_1AC107F28(*(a1 + 40) | 8);
        if (v42)
        {
          sub_1AC107F34(v253, v254, v42);
        }

        v43 = &off_1EB549FE8;
        v44 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_1AC107F28(*(a1 + 40) | 0x10);
        if (v42)
        {
          sub_1AC107F34(v47, v48, v42);
        }

        v43 = &off_1EB54A010;
        v44 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_1AC107F28(*(a1 + 40) | 0x20);
        if (v42)
        {
          sub_1AC107F34(v208, v209, v42);
        }

        v43 = &off_1EB54A0F8;
        v44 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_1AC107F28(*(a1 + 40) | 0x40);
        if (v42)
        {
          sub_1AC107F34(v45, v46, v42);
        }

        v43 = &off_1EB54A0D8;
        v44 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_1AC107F28(*(a1 + 40) | 0x80);
        if (v42)
        {
          sub_1AC107F34(v40, v41, v42);
        }

        v43 = &off_1EB54A030;
        v44 = (a1 + 208);
LABEL_264:
        v220 = sub_1AC10BE94(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x80000);
        if (v107 < 0 && (sub_1AC107E60(v107, v108), v111 < 0))
        {
          sub_1AC119A98(v110, v109);
          sub_1AC107EB4();
          *(a1 + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
          *(a1 + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_1AC107EE4(v7, *(a1 + 40) | 0x2000);
        if (v175 < 0 && (sub_1AC107E60(v175, v176), v179 < 0))
        {
          sub_1AC119A98(v178, v177);
          sub_1AC107EB4();
          *(a1 + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          sub_1AC107EC4();
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

        sub_1AC107EE4(v7, *(a1 + 40) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_1AC107E60(v32, v33);
        if (v35 < 0)
        {
          v260 = sub_1AC119A98(v34, v32);
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

        sub_1AC107F94(*(a1 + 40) | 0x100);
        if (v56)
        {
          sub_1AC107F88(v55, v56);
        }

        v57 = (a1 + 216);
LABEL_227:
        v220 = sub_1AC10BD88(v57, v56);
LABEL_265:
        v255 = sub_1AC119B24(v220, v322, a3);
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
            v319 = sub_1AC0FFAA8((a1 + 8));
            v8 = v318;
            v259 = v319;
            v7 = v322;
          }

          v255 = sub_1AC119FE0(v8, v259, v7, a3);
        }

        else
        {
          v255 = sub_1AC112598((a1 + 16), v8, v7, &unk_1EB54A780, (a1 + 8), a3);
        }

LABEL_266:
        v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = sub_1AC0FF968(a3, &v322, a3[11].i32[1]);
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
    sub_1AC107F64(v79);
    if (v14 == v15)
    {
      if (v82 == *(a1 + 140))
      {
LABEL_85:
        sub_1AC11EDA8(a1 + 128, v82 + 1);
        v81 = *(a1 + 144);
        v87 = *v81;
      }

      sub_1AC107FA0(v81);
      v88 = *(a1 + 128);
      if (!v88)
      {
        sub_1AC107FAC();
      }

      if (*(v88 + 24))
      {
        v95 = sub_1AC107F04();
        (*(v96 + 40))(v95, &unk_1F20D21E8, 24);
      }

      v89 = sub_1AC107E8C();
      sub_1AC107F7C(v89);
      v90 = *(a1 + 144);
      v91 = *(a1 + 136);
      sub_1AC107F70();
      *(a1 + 136) = v92;
      v86 = sub_1AC107F58(v93, v94);
      goto LABEL_91;
    }

    sub_1AC107F4C();
    *(a1 + 136) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    v322 = sub_1AC119B24(v86, v83, a3);
    if (!v322)
    {
      return;
    }

    sub_1AC107F40();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(a1 + 140);
  goto LABEL_85;
}

uint64_t sub_1AC1234B0(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AC103D5C(a2, v8, a1);
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

uint64_t sub_1AC123578(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AC104CAC(a2, v8, a1);
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

void sub_1AC123640(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_1AC122440(a2, v8, a1);
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

uint64_t sub_1AC123708(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AC1030D4(a2, v8, a1);
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

uint64_t sub_1AC1237D0(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v11 = sub_1AC0FFDD8(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_1AC104478(a2, v8, a1);
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

void sub_1AC123898(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_1AC11128C(v5, v6, *v7, (v7 + 8));
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

    sub_1AC1110CC(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_1AC117264(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_1AC111394(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_1AC1239CC()
{
  sub_1AC118FD4();
  v13 = *MEMORY[0x1E69E9840];
  sub_1AC118FB4();
  sub_1AC118FA0();
  sub_1AC1176D0(v2, v3, v4);
  sub_1AC118FC4();
  v6 = *(v5 + 88);
  v7 = sub_1AC118FF4();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if (v1 & 2) != 0 || (sub_1AC118FE8(), ((*(v11 + 48))(v0)))
    {
      result = 1;
    }

    else
    {
      sub_1AC118690(v0);
      result = 0;
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

_OWORD *sub_1AC123ABC()
{
  sub_1AC11C154();
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

    sub_1AC11C114(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_1AC11C168(v4, v5);
      v11 = sub_1AC10CFDC(v16, "CHECK failed: size > chunk_size: ");
      sub_1AC10D118(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_1AC10D120(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_1AC11C188(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_1AC1190A8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_1AC11C13C(result);
    if (v14 ^ v10 | v13)
    {
      sub_1AC11C188(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1AC123BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AC123BE8()
{
  sub_1AC11C154();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_1AC11C114(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_1AC11C168(v4, v5);
      v11 = sub_1AC10CFDC(v16, "CHECK failed: size > chunk_size: ");
      sub_1AC10D118(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_1AC10D120(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_1AC11C188(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_1AC1190A8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_1AC11C13C(result);
    if (v14 ^ v10 | v13)
    {
      sub_1AC11C188(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_1AC123CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AC10D120(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AC123CF4(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_1AC123DDC(a3, v7);
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

  v9 = sub_1AC0FFDD8(a1, v8, v7);
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

uint64_t sub_1AC123DDC(uint64_t a1, int a2)
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

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__filename(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A08](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A18](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__root_directory(const std::__fs::filesystem::path *this)
{
  v1 = MEMORY[0x1EEE63A20](this);
  result.__size_ = v2;
  result.__data_ = v1;
  return result;
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const char *a2)
{
  return MEMORY[0x1EEE63B20](this, a2);
}

{
  return MEMORY[0x1EEE63B38](this, a2);
}

std::runtime_error *__cdecl std::runtime_error::runtime_error(std::runtime_error *this, const std::string *a2)
{
  return MEMORY[0x1EEE63B28](this, a2);
}

{
  return MEMORY[0x1EEE63B40](this, a2);
}

void std::runtime_error::~runtime_error(std::runtime_error *this)
{
  MEMORY[0x1EEE63B50](this);
}

{
  MEMORY[0x1EEE63B58](this);
}

uint64_t std::istream::operator>>()
{
  return MEMORY[0x1EEE63E18]();
}

{
  return MEMORY[0x1EEE63E20]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63EB0]();
}

{
  return MEMORY[0x1EEE63EB8]();
}

{
  return MEMORY[0x1EEE63EC8]();
}

{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

uint64_t std::ofstream::open()
{
  return MEMORY[0x1EEE63F70]();
}

{
  return MEMORY[0x1EEE63F78]();
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