void sub_1AE614A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AE614AA0(unsigned __int8 *result)
{
  v1 = result;
  v2 = result[8];
  v3 = v2 - 19;
  if (result[9] != 1)
  {
    if (v3 <= 0xFFFFFFED)
    {
      sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
      v7 = sub_1AE60AE3C(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
      sub_1AE60AF78(&v12, &v7->__r_.__value_.__l.__data_);
      result = sub_1AE60AF80(v13);
    }

    v8 = dword_1AE79A290[v2];
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
        return MEMORY[0x1B2706400](v6, v10);
      }
    }

    return result;
  }

  if (v3 <= 0xFFFFFFED)
  {
    sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/extension_set.cc", 60);
    v4 = sub_1AE60AE3C(v13, "CHECK failed: type > 0 && type <= WireFormatLite::MAX_FIELD_TYPE: ");
    sub_1AE60AF78(&v12, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v13);
  }

  v5 = dword_1AE79A290[v2];
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

        v6 = sub_1AE61C6C0();
      }

      else
      {
        result = *v1;
        if (!*v1)
        {
          return result;
        }

        v6 = sub_1AE61A7E8();
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

        v6 = sub_1AE61CF84();
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

        sub_1AE615740(v11);
        v6 = sub_1AE5FD9E8(v11);
      }

      v10 = 0x1020C4014030ADELL;
      return MEMORY[0x1B2706400](v6, v10);
    }

LABEL_34:
    result = *v1;
    if (!*v1)
    {
      return result;
    }

    v6 = sub_1AE61AE10();
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

      v6 = sub_1AE61B43C();
    }

    else if (v5 == 4)
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1AE61C094();
    }

    else
    {
      result = *v1;
      if (!*v1)
      {
        return result;
      }

      v6 = sub_1AE61CCEC();
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
      v6 = sub_1AE61BA68();
LABEL_44:
      v10 = 0x1080C4057E67DB5;
      return MEMORY[0x1B2706400](v6, v10);
    }
  }

  return result;
}

void sub_1AE614D44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_1AE614D78(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1AE614AA0(v3 + 40);
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

uint64_t *sub_1AE614E08(uint64_t *a1)
{
  sub_1AE615740(a1);

  return sub_1AE5FD9E8(a1);
}

uint64_t sub_1AE614E40(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1705);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1706);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_1AE614F00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE614F20(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (!v2)
  {
    return sub_1AE614F74(result, a2);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_1AE614F74(result, a2);
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

uint64_t sub_1AE614F74(uint64_t result, uint64_t a2)
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
    result = sub_1AE61CF88(result, v5 + 1);
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

unsigned __int8 *sub_1AE615054(unsigned __int8 *result, unsigned __int8 *a2)
{
  if (result != a2)
  {
    v3 = result;
    do
    {
      result = sub_1AE60B514(v3 + 40);
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

uint64_t *sub_1AE6150C4(void *a1, void *a2, uint64_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      sub_1AE60F1F4(a3, *(v5 + 8), v5 + 5);
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

_OWORD *sub_1AE615148(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a1 + 8) - a2 + 16 >= a3)
  {
    v6 = a3;
    MEMORY[0x1B2705F30](a4, a2, a3);
    return (a2 + v6);
  }

  else
  {

    return sub_1AE79753C();
  }
}

char *sub_1AE6151B4(uint64_t a1, char *a2, __int128 *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
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
    v18 = *a3;
    v19 = v16;
    v20 = *(a3 + 4);
    result = sub_1AE615404(result, v15, &v18);
    if (v15 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      v10 = a3[1];
      v18 = *a3;
      v19 = v10;
      v20 = *(a3 + 4);
      result = sub_1AE615404(result, v8, &v18);
      if (!result)
      {
        break;
      }

      v11 = result - *(a1 + 8);
      if (v11 >= 0x11)
      {
        sub_1AE60AE24(&v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v12 = sub_1AE60AE3C(&v18, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v21, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v18);
      }

      v13 = v5 - v9;
      if (v5 - v9 <= 16)
      {
        v23 = 0;
        v22 = 0;
        v21 = **(a1 + 8);
        v17 = a3[1];
        v18 = *a3;
        v19 = v17;
        v20 = *(a3 + 4);
        if (sub_1AE615404(&v21 + v11, &v21 + v13, &v18) != &v21 + v13)
        {
          return 0;
        }

        return (*(a1 + 8) + v13);
      }

      v5 = v5 - v9 - v11;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v18, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v14 = sub_1AE60AE3C(&v18, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v21, &v14->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v18);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

char *sub_1AE615404(char *a1, unint64_t a2, unsigned int **a3)
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
        v3 = sub_1AE617C78(v3, (v7 - 128));
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
        sub_1AE61A9A4(*a3, v10 + 1);
        *(sub_1AE61AE14(v9) + 4 * v10) = v6;
      }

      else
      {
        *(sub_1AE61AE14(*a3) + 4 * v10) = v6;
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
        v14 = sub_1AE5FD6EC(v13);
      }

      sub_1AE617B60(v12, v6, v14);
    }
  }

  return v3;
}

char *sub_1AE615530(uint64_t a1, char *__src, int64_t __n)
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

void *sub_1AE6155E4(void *a1, void *a2, void *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      *a3 += sub_1AE613E60(v5 + 5, *(v5 + 8));
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

uint64_t sub_1AE615670(uint64_t result)
{
  v1 = *(result + 8);
  if ((v1 & 0x80000000) != 0)
  {
    sub_1AE60AE24(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1780);
    v5 = sub_1AE60AE3C(v7, "CHECK failed: (n) >= (0): ");
    sub_1AE60AF78(&v6, &v5->__r_.__value_.__l.__data_);
    return sub_1AE60AF80(v7);
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

void sub_1AE615728(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE615740(void *a1)
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

uint64_t *sub_1AE6157CC(uint64_t a1, int *a2)
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

uint64_t sub_1AE6158A0(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1AE615938(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1AE615938(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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

uint64_t *sub_1AE615AE0(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (!v18)
      {
        goto LABEL_55;
      }

LABEL_54:
      if (*(v18 + 24) == 1)
      {
LABEL_55:
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      else
      {
        v17 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_72;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_54;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_68;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (!v23)
  {
    goto LABEL_65;
  }

  if (v23[3])
  {
    v24 = v7[1];
LABEL_65:
    *(v24 + 24) = 1;
    *(v7 + 24) = 0;
    v32 = *v24;
    v7[1] = *v24;
    if (v32)
    {
      *(v32 + 16) = v7;
    }

    v33 = v7[2];
    v24[2] = v33;
    v33[*v33 != v7] = v24;
    *v24 = v7;
    v7[2] = v24;
    v23 = v7;
  }

  else
  {
LABEL_68:
    v24 = v7;
  }

  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_72:
  *(v28 + 16) = v29;
  return result;
}

uint64_t sub_1AE615E70(uint64_t result, uint64_t a2)
{
  if ((result & 1) == 0)
  {
    sub_1AE5DBFC0(a2, *(a2 + 8));

    JUMPOUT(0x1B2706400);
  }

  return result;
}

void sub_1AE616374(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }
}

void sub_1AE616388()
{
  if ((atomic_load_explicit(&qword_1ED9AC5B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC5B8))
  {
    qword_1EB5E0FA8 = 0;
    unk_1EB5E0FB0 = 0;
    qword_1EB5E0FB8 = 0;
    sub_1AE616E8C(sub_1AE616374, &qword_1EB5E0FA8);
    atomic_store(1u, byte_1ED9AC480);

    __cxa_guard_release(&qword_1ED9AC5B8);
  }
}

uint64_t sub_1AE616434(uint64_t a1, uint64_t a2)
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

void sub_1AE6165C0(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_1ED9AC5C0, memory_order_acquire) & 1) == 0)
  {
    sub_1AE61679C();
  }

  v2 = pthread_self();
  if (qword_1EB5E0BB8 == v2)
  {
    if (*a1 != 1)
    {
      sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v3 = sub_1AE60AE3C(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_1AE60AF78(&v4, &v3->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(byte_1ED9AC480, memory_order_acquire) & 1) == 0)
    {
      sub_1AE616388();
    }

    std::mutex::lock(&stru_1ED9AC3A0);
    qword_1EB5E0BB8 = v2;
    sub_1AE6166E4(a1);
    qword_1EB5E0BB8 = 0;

    std::mutex::unlock(&stru_1ED9AC3A0);
  }
}

void sub_1AE6166C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1AE6166E4(_DWORD *result)
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
          sub_1AE6166E4();
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
          sub_1AE6166E4();
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

void sub_1AE61679C()
{
  if (__cxa_guard_acquire(&qword_1ED9AC5C0))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1ED9AC3A0, &dword_1AE5C8000);

    __cxa_guard_release(&qword_1ED9AC5C0);
  }
}

uint64_t sub_1AE616870(uint64_t a1)
{
  sub_1AE60AE24(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  sub_1AE616924("parse", a1, &__p);
  v2 = sub_1AE60AE68(v6, &__p);
  sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_1AE60AF80(v6);
}

void sub_1AE6168F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AE60AF80(&a16);
  _Unwind_Resume(a1);
}

void sub_1AE616924(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
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

void sub_1AE616A60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sub_1AE616AA0(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 < 0)
  {
    sub_1AE61725C();
  }

  sub_1AE6171FC();
  return v4;
}

BOOL sub_1AE616ADC(uint64_t a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_1AE60AE24(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = sub_1AE60AE3C(v9, "CHECK failed: IsInitialized(): ");
    sub_1AE616924("serialize", a1, &__p);
    v5 = sub_1AE60AE68(v4, &__p);
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_1AE60AF80(v9);
  }

  return sub_1AE616BE8(a1, a2);
}

void sub_1AE616BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1AE60AF80(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_1AE616BE8(uint64_t a1, std::string *a2)
{
  v2 = a2;
  v20 = *MEMORY[0x1E69E9840];
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
    sub_1AE60AE24(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = sub_1AE60AE68(v16, __p);
    v11 = sub_1AE60AE3C(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = sub_1AE60B0B4(v11, v6);
    sub_1AE60AF78(&v14, &v12->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v9 = v16;
    goto LABEL_11;
  }

  std::string::resize(v2, v5 + size, 0);
  if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
  {
    v2 = v2->__r_.__value_.__r.__words[0];
  }

  *&v16[0].__r_.__value_.__l.__data_ = v2 + size + v6;
  v17 = 0;
  v18 = 0;
  v19 = byte_1EB5E12B4 & 1;
  if (v16[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    sub_1AE60AE24(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = sub_1AE60AE3C(__p, "CHECK failed: target + size == res: ");
    sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    sub_1AE60AF80(v9);
  }

  return v7 == 0;
}

BOOL sub_1AE616E1C@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_1AE616ADC(a1, a2);
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

void sub_1AE616E70(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AE616E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE616F98();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1AE5CBB70();
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
      sub_1AE617138(v4, v11);
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

uint64_t sub_1AE616F98()
{
  if ((atomic_load_explicit(&qword_1ED9AC3E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED9AC3E0))
  {
    operator new();
  }

  return qword_1ED9AC398;
}

void sub_1AE617040()
{
  if ((byte_1EB5E0BC0 & 1) == 0)
  {
    v0 = sub_1AE616F98();
    if (v0)
    {
      v1 = sub_1AE617090(v0);
      MEMORY[0x1B2706400](v1, 0x1020C40A0054943);
    }

    byte_1EB5E0BC0 = 1;
  }
}

uint64_t sub_1AE617090(uint64_t a1)
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

void sub_1AE617138(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_1AE5CB09C();
}

uint64_t sub_1AE6171FC()
{
  sub_1AE6171E0();
  (*(v1 + 40))(v2);
  result = sub_1AE79744C();
  *v0 = result;
  return result;
}

_OWORD *sub_1AE617288(uint64_t a1)
{
  if (*(a1 + 28) <= 16)
  {
    sub_1AE60AE24(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = sub_1AE60AE3C(v7, "CHECK failed: limit_ > kSlopBytes: ");
    sub_1AE60AF78(&v6, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v7);
  }

  result = sub_1AE617350(a1, 0, -1);
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

void sub_1AE617338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AE617350(uint64_t a1, unsigned int a2, int a3)
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
      sub_1AE60AE24(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = sub_1AE60AE3C(v34, "CHECK failed: size_ > kSlopBytes: ");
      sub_1AE60AF78(&__src, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v34);
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
    sub_1AE60AE24(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = sub_1AE60AE3C(v34, "CHECK failed: overrun >= 0: ");
    sub_1AE60AF78(&__src, &v11->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v34);
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
            v23 = sub_1AE79785C(v18, v22);
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
        v18 = sub_1AE618350(v18, v34);
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
    sub_1AE60AE24(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = sub_1AE60AE3C(v34, "CHECK failed: overrun <= kSlopBytes: ");
    sub_1AE60AF78(&__src, &v10->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v34);
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
      sub_1AE60AE24(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = sub_1AE60AE3C(v34, "CHECK failed: size_ == 0: ");
      v14 = sub_1AE60B034(v13, *(a1 + 24));
      sub_1AE60AF78(&v32, &v14->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v34);
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

void sub_1AE61774C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE61777C(uint64_t a1, signed int a2, int a3)
{
  v3 = *(a1 + 28);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = sub_1AE60AE3C(v19, "CHECK failed: overrun != limit_: ");
    sub_1AE60AF78(&v18, &v7->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= v5)
  {
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = sub_1AE60AE3C(v19, "CHECK failed: overrun < limit_: ");
    sub_1AE60AF78(&v18, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
    v3 = *(a1 + 28);
  }

  if (*a1 != *(a1 + 8) + (v3 & (v3 >> 31)))
  {
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = sub_1AE60AE3C(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    sub_1AE60AF78(&v18, &v9->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= 0)
  {
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = sub_1AE60AE3C(v19, "CHECK failed: limit_ > 0: ");
    sub_1AE60AF78(&v18, &v10->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
  }

  if (*a1 != *(a1 + 8))
  {
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = sub_1AE60AE3C(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    sub_1AE60AF78(&v18, &v11->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
  }

  while (1)
  {
    if (v5 < 0)
    {
      sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = sub_1AE60AE3C(v19, "CHECK failed: overrun >= 0: ");
      sub_1AE60AF78(&v18, &v12->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v19);
    }

    v13 = sub_1AE617350(a1, v5, a3);
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
    sub_1AE60AE24(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = sub_1AE60AE3C(v19, "CHECK failed: limit_ > 0: ");
    sub_1AE60AF78(&v18, &v17->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v19);
  }

  result = *(a1 + 8);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

void sub_1AE617A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_1AE617A74(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: size > chunk_size: ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    if (!*(a1 + 16) || *(a1 + 28) < 17)
    {
      break;
    }

    result = sub_1AE617288(a1);
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

void sub_1AE617B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE617B60(int a1, unint64_t a2, std::string *this)
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

uint64_t sub_1AE617C0C(uint64_t a1, int a2)
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

uint64_t sub_1AE617C78(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AE617CC0(uint64_t a1, int a2)
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

_OWORD *sub_1AE617D04(uint64_t a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE615148(a3, v6, v5, a1);
}

char *sub_1AE617DF0(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE619790(a3, v6, v5, a1);
}

char *sub_1AE617E6C(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE619898(a3, v6, v5, a1);
}

char *sub_1AE617EE8(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE6199A0(a3, v6, v5, a1);
}

char *sub_1AE617F64(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE619AA8(a3, v6, v5, a1);
}

char *sub_1AE617FE0(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE619BB0(a3, v6, v5, a1);
}

char *sub_1AE61805C(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
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

  return sub_1AE619CB8(a3, v6, v5, a1);
}

char *sub_1AE6180D4(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_1AE5FD5AC(a3, &v10, *(a3 + 92)))
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

    v10 = sub_1AE6181EC(v6, a1);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

char *sub_1AE6181EC(unint64_t a1, std::string *a2, int *a3, int32x2_t *a4)
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
        sub_1AE60AE24(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = sub_1AE60AE3C(v12, "Can't happen");
        sub_1AE60AF78(&v11, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(v12);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_1AE61A1F4(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_1AE61A0C8(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_1AE618350(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_1AE619DC0(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_1AE619E88(a2, v4, *a3);
    return v5;
  }

  result = sub_1AE619F48(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_1AE618338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE618350(char *a1, unint64_t *a2)
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

char *sub_1AE6183C0(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE6185E0(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE6185E0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE6185E0(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE6185B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE6185E0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61A9A4(a3, v7 + 1);
      *(sub_1AE61AE14(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1AE61AE14(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE618690(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE6188B0(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE6188B0(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE6188B0(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE618888(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE6188B0(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61AFD0(a3, v7 + 1);
      *(sub_1AE61B440(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1AE61B440(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE618960(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE618B80(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE618B80(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE618B80(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE618B58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE618B80(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61B5FC(a3, v7 + 1);
      *(sub_1AE61BA6C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1AE61BA6C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE618C30(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE618E50(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE618E50(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE618E50(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE618E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE618E50(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61BC28(a3, v7 + 1);
      *(sub_1AE61C098(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1AE61C098(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE618F00(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE619120(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE619120(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE619120(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE6190F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE619120(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61A9A4(a3, v7 + 1);
      *(sub_1AE61AE14(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_1AE61AE14(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE6191DC(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE6193FC(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE6193FC(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE6193FC(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE6193D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE6193FC(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61B5FC(a3, v7 + 1);
      *(sub_1AE61BA6C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_1AE61BA6C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE6194B8(uint64_t a1, char *a2, int *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_1AE79785C(a2, *a2);
    if (!result)
    {
      return result;
    }

    v5 = v14;
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
    result = sub_1AE6196D8(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_1AE6196D8(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_1AE60AE3C(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_1AE60AF78(&v15, &v10->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_1AE6196D8(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_1AE60AE24(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_1AE60AE3C(&v16, "CHECK failed: (size) > (0): ");
        sub_1AE60AF78(&v15, &v12->__r_.__value_.__l.__data_);
        sub_1AE60AF80(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
      if (!result)
      {
        return result;
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

  return result;
}

void sub_1AE6196B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

char *sub_1AE6196D8(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_1AE618350(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_1AE61A380(a3, v7 + 1);
      *(sub_1AE61A7EC(a3) + v7) = v6;
    }

    else
    {
      *(sub_1AE61A7EC(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_1AE619790(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AE61AFD0(a4, *a4 + (v5 >> 2));
    v11 = sub_1AE61B174(a4, v5 >> 2);
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
      sub_1AE61AFD0(a4, *a4 + (v7 >> 2));
      v9 = sub_1AE61B174(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
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

char *sub_1AE619898(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AE61A9A4(a4, *a4 + (v5 >> 2));
    v11 = sub_1AE61AB48(a4, v5 >> 2);
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
      sub_1AE61A9A4(a4, *a4 + (v7 >> 2));
      v9 = sub_1AE61AB48(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
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

char *sub_1AE6199A0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AE61BC28(a4, *a4 + (v5 >> 3));
    v11 = sub_1AE61BDCC(a4, v5 >> 3);
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
      sub_1AE61BC28(a4, *a4 + (v7 >> 3));
      v9 = sub_1AE61BDCC(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
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

char *sub_1AE619AA8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AE61B5FC(a4, *a4 + (v5 >> 3));
    v11 = sub_1AE61B7A0(a4, v5 >> 3);
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
      sub_1AE61B5FC(a4, *a4 + (v7 >> 3));
      v9 = sub_1AE61B7A0(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
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

char *sub_1AE619BB0(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AE61C254(a4, *a4 + (v5 >> 2));
    v11 = sub_1AE61C3F8(a4, v5 >> 2);
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
      sub_1AE61C254(a4, *a4 + (v7 >> 2));
      v9 = sub_1AE61C3F8(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
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

char *sub_1AE619CB8(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_1AE61C880(a4, *a4 + (v5 >> 3));
    v11 = sub_1AE61CA24(a4, v5 >> 3);
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
      sub_1AE61C880(a4, *a4 + (v7 >> 3));
      v9 = sub_1AE61CA24(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_1AE617288(a1);
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

void sub_1AE619DC0(std::string **a1, int a2, unint64_t a3)
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

std::string *sub_1AE619E88(std::string *result, int a2, uint64_t a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
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
    v9[0] = a3;
    return std::string::append(*v5, v9, 8uLL);
  }

  return result;
}

std::string::value_type *sub_1AE619F48(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_1AE79785C(a3, *a3);
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

    return sub_1AE61A288(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_1AE617A74(a4, v8, v7);
  }
}

char *sub_1AE61A0C8(std::string **a1, int a2, char *a3, int32x2_t *a4)
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
  v14 = sub_1AE6180D4(a1, a3, a4);
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

std::string *sub_1AE61A1F4(std::string *result, int a2, int a3)
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

std::string::value_type *sub_1AE61A288(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_1AE797668();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_1AE61A2F4(uint64_t a1@<X8>)
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

uint64_t sub_1AE61A348(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_1AE60AE24(va, 3, v2, 323);
}

std::string *sub_1AE61A368(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void sub_1AE61A380(int *a1, int a2)
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
      v6 = *(sub_1AE61A7EC(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v12, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v13);
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
    v5 = (sub_1AE61A7EC(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v10 = sub_1AE609720(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_1AE61A7EC(a1);
  if (*a1 >= 1)
  {
    v11 = sub_1AE61A7EC(a1);
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

void sub_1AE61A508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61A520(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61A5C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61A5E0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61A7EC(a1) + a2;
}

void sub_1AE61A6A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61A6C0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61A7EC(a1) + a2;
}

void sub_1AE61A780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61A7A0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61A7EC(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61A7EC(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61A860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61A878(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61A380(v3, *v3 + *a2);
    sub_1AE61A520(v3, *a2);
    v6 = sub_1AE61A5E0(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61A7EC(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_1AE61A984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE61A9A4(int *a1, int a2)
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
      v6 = *(sub_1AE61AE14(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v15);
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
    v5 = (sub_1AE61AE14(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v12 = sub_1AE609720(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AE61AE14(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AE61AE14(a1);
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

void sub_1AE61AB30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61AB48(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61ABF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61AC08(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61AE14(a1) + 4 * a2;
}

void sub_1AE61ACC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61ACE8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61AE14(a1) + 4 * a2;
}

void sub_1AE61ADA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61ADC8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61AE14(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61AE14(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61AE88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61AEA0(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61A9A4(v3, *v3 + *a2);
    sub_1AE61AB48(v3, *a2);
    v6 = sub_1AE61AC08(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61AE14(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1AE61AFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE61AFD0(int *a1, int a2)
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
      v6 = *(sub_1AE61B440(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v15);
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
    v5 = (sub_1AE61B440(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v12 = sub_1AE609720(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AE61B440(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AE61B440(a1);
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

void sub_1AE61B15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B174(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B234(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61B440(a1) + 4 * a2;
}

void sub_1AE61B2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B314(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61B440(a1) + 4 * a2;
}

void sub_1AE61B3D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B3F4(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61B440(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61B440(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61B4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61B4CC(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61AFD0(v3, *v3 + *a2);
    sub_1AE61B174(v3, *a2);
    v6 = sub_1AE61B234(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61B440(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1AE61B5DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE61B5FC(int *a1, int a2)
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
      v6 = *(sub_1AE61BA6C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v15);
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
    v5 = (sub_1AE61BA6C(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v12 = sub_1AE609720(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AE61BA6C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AE61BA6C(a1);
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

void sub_1AE61B788(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B7A0(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61B848(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B860(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61BA6C(a1) + 8 * a2;
}

void sub_1AE61B920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61B940(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61BA6C(a1) + 8 * a2;
}

void sub_1AE61BA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61BA20(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61BA6C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61BA6C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61BAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61BAF8(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61B5FC(v3, *v3 + *a2);
    sub_1AE61B7A0(v3, *a2);
    v6 = sub_1AE61B860(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61BA6C(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1AE61BC08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE61BC28(int *a1, int a2)
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
      v6 = *(sub_1AE61C098(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v15);
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
    v5 = (sub_1AE61C098(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v12 = sub_1AE609720(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AE61C098(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AE61C098(a1);
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

void sub_1AE61BDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61BDCC(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61BE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61BE8C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61C098(a1) + 8 * a2;
}

void sub_1AE61BF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61BF6C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61C098(a1) + 8 * a2;
}

void sub_1AE61C02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61C04C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61C098(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61C098(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61C10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61C124(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61BC28(v3, *v3 + *a2);
    sub_1AE61BDCC(v3, *a2);
    v6 = sub_1AE61BE8C(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61C098(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1AE61C234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE61C254(int *a1, int a2)
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
      v6 = *(sub_1AE61C6C4(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v15);
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
    v5 = (sub_1AE61C6C4(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v12 = sub_1AE609720(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AE61C6C4(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AE61C6C4(a1);
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

void sub_1AE61C3E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61C3F8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61C4A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61C4B8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61C6C4(a1) + 4 * a2;
}

void sub_1AE61C578(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61C598(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61C6C4(a1) + 4 * a2;
}

void sub_1AE61C658(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61C678(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61C6C4(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61C6C4(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61C738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61C750(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61C254(v3, *v3 + *a2);
    sub_1AE61C3F8(v3, *a2);
    v6 = sub_1AE61C4B8(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61C6C4(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_1AE61C860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

void sub_1AE61C880(int *a1, int a2)
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
      v6 = *(sub_1AE61CCF0(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_1AE60AE24(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_1AE60AE3C(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_1AE60AF78(&v14, &v8->__r_.__value_.__l.__data_);
            sub_1AE60AF80(v15);
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
    v5 = (sub_1AE61CCF0(a1) - 8);
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
      sub_1AE61D0B0(v6);
    }

    v12 = sub_1AE609720(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_1AE61CCF0(a1);
  if (*a1 >= 1)
  {
    v13 = sub_1AE61CCF0(a1);
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

void sub_1AE61CA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61CA24(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_1AE60AE24(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_1AE60AE3C(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_1AE60B034(v5, *(a1 + 4));
    v7 = sub_1AE60AE3C(v6, ", ");
    v8 = sub_1AE60B034(v7, *a1);
    sub_1AE60AF78(&v10, &v8->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1AE61CACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61CAE4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61CCF0(a1) + 8 * a2;
}

void sub_1AE61CBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61CBC4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_1AE60AE3C(v8, "CHECK failed: (index) >= (0): ");
    sub_1AE60AF78(&v7, &v4->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  if (*a1 <= a2)
  {
    sub_1AE60AE24(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_1AE60AE3C(v8, "CHECK failed: (index) < (current_size_): ");
    sub_1AE60AF78(&v7, &v5->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v8);
  }

  return sub_1AE61CCF0(a1) + 8 * a2;
}

void sub_1AE61CC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61CCA4(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_1AE61CCF0(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

uint64_t sub_1AE61CCF0(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_1AE60AE24(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_1AE60AE3C(v5, "CHECK failed: (total_size_) > (0): ");
    sub_1AE60AF78(&v4, &v2->__r_.__value_.__l.__data_);
    sub_1AE60AF80(v5);
  }

  return *(a1 + 8);
}

void sub_1AE61CD64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

int *sub_1AE61CD7C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_1AE60AE3C(v10, "CHECK failed: (&other) != (this): ");
    sub_1AE60AF78(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_1AE60AF80(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_1AE61C880(v3, *v3 + *a2);
    sub_1AE61CA24(v3, *a2);
    v6 = sub_1AE61CAE4(v3, v5);
    if (*a2 <= 0)
    {
      sub_1AE60AE24(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_1AE60AE3C(v10, "CHECK failed: (index) < (current_size_): ");
      sub_1AE60AF78(&v9, &v7->__r_.__value_.__l.__data_);
      sub_1AE60AF80(v10);
    }

    v8 = sub_1AE61CCF0(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_1AE61CE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1AE60AF80(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1AE61CEAC(uint64_t *a1)
{
  sub_1AE61CEE8(a1);

  return sub_1AE5FD9E8(a1);
}

void sub_1AE61CEE8(void *a1)
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

          MEMORY[0x1B2706400](v5, 0x1012C40EC159624);
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

uint64_t sub_1AE61CF88(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_1AE61CF9C(result, v4);
  }

  return result;
}

uint64_t sub_1AE61CF9C(uint64_t a1, int a2)
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
        sub_1AE61D0EC(*a1);
      }

      v12 = sub_1AE609720(v7, v11 & 0x7FFFFFFF8);
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

uint64_t sub_1AE61D124(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = &unk_1F242A0A0;
  *(a1 + 16) = &unk_1F242A060;
  *(a1 + 24) = 0;
  *(a1 + 32) = &unk_1F242A060;
  *(a1 + 40) = 0;
  sub_1AE6089B8((a1 + 88));
  sub_1AE61D218(a1, a2, a3, &v7);
  sub_1AE608BD8((a1 + 88), &v7);
  sub_1AE6089C0(&v7);
  return a1;
}

void sub_1AE61D1F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE6089C0(va);
  sub_1AE6089C0((v2 + 88));
  _Unwind_Resume(a1);
}

void *sub_1AE61D218@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_1AE5D5FD0(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_1AE6089C0(a4);
    result = sub_1AE606E4C(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_1AE6089C0(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_1AE5D5FD0(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_1AE6089C0(a4);
        result = sub_1AE606E4C(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_1AE6089C0(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_1AE5D5FD0(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_1AE6089C0(a4);
            result = sub_1AE606E4C(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_1AE6089C0(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_1AE5D5DC4(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_1AE6089C0(a4);
                result = sub_1AE606E4C(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_1AE6089C0(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_1AE606DBC(*(a1 + 48), 4uLL);
                  result = sub_1AE606E4C(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_1AE6089C0(a4);
                    *(a1 + 64) = v13;
                    result = sub_1AE606E4C(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_1AE6089C0(a4);
                      *(a1 + 72) = v13;
                      result = sub_1AE606E4C(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_1AE6089C0(a4);
                        *(a1 + 80) = v13;
                        return sub_1AE6089B8(v9);
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

void *sub_1AE61D45C(void *a1)
{
  *a1 = &unk_1F242A0A0;
  sub_1AE6089C0(a1 + 11);
  return a1;
}

void sub_1AE61D4A0(void *a1)
{
  *a1 = &unk_1F242A0A0;
  sub_1AE6089C0(a1 + 11);

  JUMPOUT(0x1B2706400);
}

uint64_t sub_1AE61D50C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AE61D540(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AE61D574(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AE61D5A8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AE61D5DC(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_1AE61D634(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

CFStringRef sub_1AE61D700(UInt8 *bytes, CFIndex numBytes)
{
  if (numBytes)
  {
    return CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, numBytes, 0x8000100u, 0);
  }

  else
  {
    return &stru_1F24332A0;
  }
}

const char *sub_1AE61D734(const __CFString *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v24 = a2;
  v25 = a3;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    result = 0;
  }

  else
  {
    result = CFStringGetCStringPtr(a1, 0x600u);
  }

  v23 = result;
  v26 = 0;
  v27 = 0;
  v19 = 0;
  if (a3 >= 1)
  {
    v8 = 0;
    while ((v8 & 0x8000000000000000) == 0)
    {
      v9 = v25;
      if (v25 <= v8)
      {
        break;
      }

      if (CharactersPtr)
      {
        LOWORD(v10) = CharactersPtr[v24 + v8];
      }

      else if (v23)
      {
        LOWORD(v10) = v23[v24 + v8];
      }

      else
      {
        if (v27 <= v8 || (v12 = v26, v26 > v8))
        {
          v13 = v8 - 4;
          if (v8 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v25)
          {
            v9 = v13 + 64;
          }

          v26 = v13;
          v27 = v9;
          v28.length = v9 - v13;
          v28.location = v24 + v13;
          CFStringGetCharacters(v21, v28, buffer);
          v12 = v26;
        }

        LOWORD(v10) = buffer[v8 - v12];
      }

      if (v10 >> 10 != 54)
      {
        goto LABEL_11;
      }

      v14 = v8 + 1;
      v15 = v25;
      if (v25 <= v8 + 1)
      {
        goto LABEL_11;
      }

      if (CharactersPtr)
      {
        v16 = CharactersPtr[v24 + v14];
      }

      else if (v23)
      {
        v16 = v23[v24 + v14];
      }

      else
      {
        if (v27 <= v14 || (v17 = v26, v26 > v14))
        {
          v18 = v8 - 3;
          if (v8 < 3)
          {
            v18 = 0;
          }

          if (v18 + 64 < v25)
          {
            v15 = v18 + 64;
          }

          v26 = v18;
          v27 = v15;
          v29.length = v15 - v18;
          v29.location = v24 + v18;
          CFStringGetCharacters(v21, v29, buffer);
          v17 = v26;
        }

        v16 = buffer[v14 - v17];
      }

      if (v16 >> 10 != 55)
      {
        goto LABEL_11;
      }

      v10 = (v10 << 10) + v16 - 56613888;
LABEL_12:
      result = (*(a4 + 16))(a4, v10, &v19);
      if ((v19 & 1) == 0)
      {
        v11 = (v10 & 0xFFFF0000) != 0 ? v8 + 1 : v8;
        v8 = v11 + 1;
        if (v11 + 1 < a3)
        {
          continue;
        }
      }

      return result;
    }

    LOWORD(v10) = 0;
LABEL_11:
    v10 = v10;
    goto LABEL_12;
  }

  return result;
}

BOOL sub_1AE61DA04(const void *a1, CFURLRef fileURL, CFPropertyListFormat a3, int a4, CFErrorRef *a5)
{
  v5 = 0;
  if (a1 && fileURL)
  {
    buffer[0] = 0;
    buffer[1] = 0;
    v13 = 0;
    if (a4)
    {
      CFURLCreateCopyDeletingLastPathComponent(0, fileURL);
      sub_1AE61D968();
    }

    v9 = CFWriteStreamCreateWithFile(0, fileURL);
    if (v9)
    {
      if (CFWriteStreamOpen(v9))
      {
        v10 = CFPropertyListWrite(a1, v9, a3, 0, a5);
        CFWriteStreamClose(v9);
      }

      else
      {
        v10 = 0;
      }

      CFRelease(v9);
      v5 = v10 > 0;
    }

    else
    {
      v5 = 0;
    }

    if (SHIBYTE(v13) < 0)
    {
      operator delete(buffer[0]);
    }
  }

  return v5;
}

void sub_1AE61DC30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1AE61DC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_1AE5DBF1C(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    v4 = getenv("TMPDIR");
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = "/tmp";
    }

    MEMORY[0x1B2705F20](a2, v5);
  }

  std::string::append(a2, "/nlptemp-XXXXXX");
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  return mktemp(v6);
}

void sub_1AE61DD20(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

CFLocaleRef sub_1AE61DD48(uint64_t a1, const void *a2)
{
  v3 = MEMORY[0x1B2705500]();
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, v3);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 3, ComponentsFromLocaleIdentifier);
  CFDictionarySetValue(MutableCopy, *MEMORY[0x1E695E6F0], a2);
  LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(0, MutableCopy);
  v7 = CFLocaleCreate(0, LocaleIdentifierFromComponents);
  if (LocaleIdentifierFromComponents)
  {
    CFRelease(LocaleIdentifierFromComponents);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (ComponentsFromLocaleIdentifier)
  {
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  return v7;
}

void sub_1AE61DE14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_1AE61DFFC(va, 0);
  sub_1AE61DF8C(va1, 0);
  sub_1AE61E034(va2, 0);
  _Unwind_Resume(a1);
}

CFErrorRef sub_1AE61DE58(uint64_t a1, CFURLRef anURL)
{
  v3 = CFURLCopyPath(anURL);
  v4 = *MEMORY[0x1E695E480];
  v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@: %@", a1, v3);
  Mutable = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E695E650], v5);
  v7 = CFErrorCreate(v4, @"com.apple.NLPUtils.ErrorDomain", 0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v7;
}

void sub_1AE61DF4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  sub_1AE61DFFC(va, 0);
  sub_1AE61DFFC(va1, 0);
  _Unwind_Resume(a1);
}

void sub_1AE61DF8C(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1AE61DFC4(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1AE61DFFC(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void sub_1AE61E034(const void **a1, const void *a2)
{
  v4 = *a1;
  if (v4)
  {
    CFRelease(v4);
  }

  *a1 = a2;
}

void language_modeling::v1::CompletionStem::CompletionStem(language_modeling::v1::CompletionStem *this)
{
  operator new();
}

{
  operator new();
}

void language_modeling::v1::CompletionStem::CompletionStem(language_modeling::v1::CompletionStem *this, const language_modeling::v1::CompletionStem *a2)
{
  operator new();
}

{
  operator new();
}

uint64_t sub_1AE61E1B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AE5CBA4C(a1, a2);
  sub_1AE5CBB88(v4 + 3, (a2 + 24));
  sub_1AE5CBB88((a1 + 48), (a2 + 48));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  v6 = *(a2 + 72);
  v5 = *(a2 + 80);
  if (v5 != v6)
  {
    if (((v5 - v6) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v8 = *(a2 + 96);
  v7 = *(a2 + 104);
  if (v7 != v8)
  {
    if (((v7 - v8) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1AE5CBB70();
  }

  *(a1 + 120) = *(a2 + 120);
  sub_1AE5CBB88((a1 + 136), (a2 + 136));
  sub_1AE5CBB88((a1 + 160), (a2 + 160));
  return a1;
}

void sub_1AE61E2E0(_Unwind_Exception *a1)
{
  sub_1AE61E350((v1 + 136));
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 104) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 80) = v6;
    operator delete(v6);
  }

  sub_1AE61E350((v1 + 48));
  sub_1AE61E350((v1 + 24));
  sub_1AE61E350(v1);
  _Unwind_Resume(a1);
}

void ***sub_1AE61E350(void ***a1)
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
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1AE61E3C4(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 9);
      v3 -= 4;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****sub_1AE61E424(void ****a1)
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
          v6 = *(v4 - 9);
          v4 -= 4;
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

void ***sub_1AE61E5C8(void ***a1)
{
  v2 = a1[20];
  if (v2)
  {
    v3 = a1[21];
    v4 = a1[20];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = a1[20];
    }

    a1[21] = v2;
    operator delete(v4);
  }

  v6 = a1[17];
  if (v6)
  {
    v7 = a1[18];
    v8 = a1[17];
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = a1[17];
    }

    a1[18] = v6;
    operator delete(v8);
  }

  v10 = a1[12];
  if (v10)
  {
    a1[13] = v10;
    operator delete(v10);
  }

  v11 = a1[9];
  if (v11)
  {
    a1[10] = v11;
    operator delete(v11);
  }

  v12 = a1[6];
  if (v12)
  {
    v13 = a1[7];
    v14 = a1[6];
    if (v13 != v12)
    {
      do
      {
        v15 = *(v13 - 9);
        v13 -= 4;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v12);
      v14 = a1[6];
    }

    a1[7] = v12;
    operator delete(v14);
  }

  v16 = a1[3];
  if (v16)
  {
    v17 = a1[4];
    v18 = a1[3];
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 9);
        v17 -= 4;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = a1[3];
    }

    a1[4] = v16;
    operator delete(v18);
  }

  v20 = *a1;
  if (*a1)
  {
    v21 = a1[1];
    v22 = *a1;
    if (v21 != v20)
    {
      do
      {
        v23 = *(v21 - 9);
        v21 -= 4;
        if (v23 < 0)
        {
          operator delete(*v21);
        }
      }

      while (v21 != v20);
      v22 = *a1;
    }

    a1[1] = v20;
    operator delete(v22);
  }

  return a1;
}

void *language_modeling::v1::CompletionStem::CompletionStem(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

void ****language_modeling::v1::CompletionStem::operator=(void ****result, void ****a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    v5 = sub_1AE61E5C8(v3);
    MEMORY[0x1B2706400](v5, 0x1030C403C62F202);
    return v4;
  }

  return result;
}

void language_modeling::v1::CompletionStem::~CompletionStem(void ****this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AE61E5C8(v2);
    MEMORY[0x1B2706400](v3, 0x1030C403C62F202);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AE61E5C8(v2);
    MEMORY[0x1B2706400](v3, 0x1030C403C62F202);
  }
}

void language_modeling::v1::CompletionStem::pop_back(language_modeling::v1::CompletionStem *this)
{
  v1 = *this;
  v2 = *(*this + 8);
  v3 = v2 - **this;
  v4 = *(*this + 32);
  if (v3 != v4 - *(*this + 24))
  {
    v9 = "m_tokens.size() == m_sanitizedTokens.size()";
    v10 = 23;
    goto LABEL_12;
  }

  if (v3 != v1[7] - v1[6])
  {
    v9 = "m_tokens.size() == m_normalizedTokens.size()";
    v10 = 24;
LABEL_12:
    __assert_rtn("pop_back", "CompletionStemImpl.cpp", v10, v9);
  }

  v5 = (v2 - 32);
  if (*(v2 - 9) < 0)
  {
    operator delete(*v5);
    v4 = v1[4];
  }

  v1[1] = v5;
  v6 = (v4 - 32);
  if (*(v4 - 9) < 0)
  {
    operator delete(*v6);
  }

  v1[4] = v6;
  v7 = v1[7];
  v8 = (v7 - 32);
  if (*(v7 - 9) < 0)
  {
    operator delete(*v8);
  }

  v1[7] = v8;
}

void language_modeling::v1::CompletionStem::clear(void ****this)
{
  v1 = *this;
  v2 = **this;
  v3 = (*this)[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 9);
    v3 -= 4;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  v1[1] = v2;
  v5 = v1[3];
  v6 = v1[4];
  while (v6 != v5)
  {
    v7 = *(v6 - 9);
    v6 -= 4;
    if (v7 < 0)
    {
      operator delete(*v6);
    }
  }

  v1[4] = v5;
  v8 = v1[6];
  v9 = v1[7];
  while (v9 != v8)
  {
    v10 = *(v9 - 9);
    v9 -= 4;
    if (v10 < 0)
    {
      operator delete(*v9);
    }
  }

  v1[7] = v8;
  v1[10] = v1[9];
  v1[13] = v1[12];
  v1[15] = 0;
  v1[16] = 0;
}

void *language_modeling::v1::CompletionStem::prefix@<X0>(void *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*this + 32);
  if (*(*this + 24) == v2)
  {
    *(a2 + 23) = 0;
    *a2 = 0;
  }

  else if (*(v2 - 9) < 0)
  {
    return sub_1AE5DBF1C(a2, *(v2 - 32), *(v2 - 24));
  }

  else
  {
    v3 = *(v2 - 32);
    *(a2 + 16) = *(v2 - 16);
    *a2 = v3;
  }

  return this;
}

void language_modeling::v1::Prediction::Prediction(language_modeling::v1::Prediction *this, const language_modeling::v1::Prediction *a2)
{
  operator new();
}

{
  operator new();
}

char *sub_1AE61EDA0(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__dst, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      *(__dst + 5) = *(a2 + 5);
      *(__dst + 24) = v5;
      goto LABEL_6;
    }
  }

  sub_1AE5DBF1C(__dst + 24, *(a2 + 3), *(a2 + 4));
LABEL_6:
  v6 = a2[3];
  v7 = a2[5];
  *(__dst + 4) = a2[4];
  *(__dst + 5) = v7;
  *(__dst + 3) = v6;
  v8 = a2[6];
  v9 = a2[7];
  v10 = a2[9];
  *(__dst + 8) = a2[8];
  *(__dst + 9) = v10;
  *(__dst + 6) = v8;
  *(__dst + 7) = v9;
  sub_1AE5CBA4C(__dst + 20, a2 + 20);
  sub_1AE5CBA4C(__dst + 23, a2 + 23);
  if (*(a2 + 231) < 0)
  {
    sub_1AE5DBF1C(__dst + 208, *(a2 + 26), *(a2 + 27));
  }

  else
  {
    v11 = a2[13];
    *(__dst + 28) = *(a2 + 28);
    *(__dst + 13) = v11;
  }

  v12 = *(a2 + 232);
  *(__dst + 31) = *(a2 + 31);
  *(__dst + 232) = v12;
  return __dst;
}

void sub_1AE61EE8C(_Unwind_Exception *a1)
{
  sub_1AE61E350((v1 + 184));
  sub_1AE61E350((v1 + 160));
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
    if ((*(v1 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1AE61F018(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  v2 = *(a1 + 184);
  if (v2)
  {
    v3 = *(a1 + 192);
    v4 = *(a1 + 184);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(a1 + 184);
    }

    *(a1 + 192) = v2;
    operator delete(v4);
  }

  v6 = *(a1 + 160);
  if (v6)
  {
    v7 = *(a1 + 168);
    v8 = *(a1 + 160);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 9);
        v7 -= 4;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(a1 + 160);
    }

    *(a1 + 168) = v6;
    operator delete(v8);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      return a1;
    }

LABEL_23:
    operator delete(*a1);
    return a1;
  }

  if (*(a1 + 23) < 0)
  {
    goto LABEL_23;
  }

  return a1;
}

void *language_modeling::v1::Prediction::Prediction(void *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  return result;
}

uint64_t *language_modeling::v1::Prediction::operator=(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  v3 = *result;
  *result = v2;
  if (v3)
  {
    v4 = result;
    v5 = sub_1AE61F018(v3);
    MEMORY[0x1B2706400](v5, 0x1032C4057ACE4D0);
    return v4;
  }

  return result;
}

void language_modeling::v1::Prediction::~Prediction(language_modeling::v1::Prediction *this)
{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AE61F018(v2);
    MEMORY[0x1B2706400](v3, 0x1032C4057ACE4D0);
  }
}

{
  v2 = *this;
  *this = 0;
  if (v2)
  {
    v3 = sub_1AE61F018(v2);
    MEMORY[0x1B2706400](v3, 0x1032C4057ACE4D0);
  }
}

__int128 **language_modeling::v1::Prediction::string@<X0>(__int128 **this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 23) < 0)
  {
    return sub_1AE5DBF1C(a2, *v2, *(v2 + 1));
  }

  v3 = *v2;
  *(a2 + 16) = *(v2 + 2);
  *a2 = v3;
  return this;
}

uint64_t *language_modeling::v1::Prediction::exactPredictionString@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 47) < 0)
  {
    return sub_1AE5DBF1C(a2, *(v2 + 24), *(v2 + 32));
  }

  v3 = *(v2 + 24);
  *(a2 + 16) = *(v2 + 40);
  *a2 = v3;
  return this;
}

double sub_1AE61F2F4(char *a1, uint64_t a2)
{
  *(&v19.__r_.__value_.__s + 23) = 0;
  v19.__r_.__value_.__s.__data_[0] = 0;
  if ((*(a2 + 32) & 1) == 0)
  {
    a1[23] = 20;
    result = *"Cannot provide split";
    strcpy(a1, "Cannot provide split");
    return result;
  }

  v4 = (a2 + 48);
  if (*(a2 + 48) > 0.0)
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      if (v5 == 2)
      {
        *(&v16.__r_.__value_.__s + 23) = 11;
        strcpy(&v16, "static (sp)");
        sub_1AE69649C(__p, &v16, v4, (a2 + 40));
        if (v18 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if (v18 >= 0)
        {
          v7 = HIBYTE(v18);
        }

        else
        {
          v7 = __p[1];
        }
      }

      else
      {
        if (v5 != 1)
        {
          goto LABEL_27;
        }

        *(&v16.__r_.__value_.__s + 23) = 13;
        strcpy(&v16, "static (word)");
        sub_1AE69649C(__p, &v16, v4, (a2 + 40));
        if (v18 >= 0)
        {
          v6 = __p;
        }

        else
        {
          v6 = __p[0];
        }

        if (v18 >= 0)
        {
          v7 = HIBYTE(v18);
        }

        else
        {
          v7 = __p[1];
        }
      }
    }

    else
    {
      *(&v16.__r_.__value_.__s + 23) = 16;
      strcpy(&v16, "static (unknown)");
      sub_1AE69649C(__p, &v16, v4, (a2 + 40));
      if (v18 >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if (v18 >= 0)
      {
        v7 = HIBYTE(v18);
      }

      else
      {
        v7 = __p[1];
      }
    }

    std::string::append(&v19, v6, v7);
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    operator delete(v16.__r_.__value_.__l.__data_);
  }

LABEL_27:
  if (*(a2 + 72) <= 0.0)
  {
    goto LABEL_36;
  }

  *(&v16.__r_.__value_.__s + 23) = 10;
  strcpy(&v16, "dynamic-lm");
  sub_1AE69649C(__p, &v16, (a2 + 72), (a2 + 64));
  if (v18 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if (v18 >= 0)
  {
    v10 = HIBYTE(v18);
  }

  else
  {
    v10 = __p[1];
  }

  std::string::append(&v19, v9, v10);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }
  }

  else if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
LABEL_36:
  if (*(a2 + 88) > 0.0)
  {
    operator new();
  }

  v11 = *(a2 + 96);
  if (v11 <= 0.0)
  {
    goto LABEL_47;
  }

  std::to_string(&v16, v11);
  v12 = std::string::insert(&v16, 0, "penalty", 7uLL);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v18 = v12->__r_.__value_.__r.__words[2];
  *__p = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  if (v18 >= 0)
  {
    v14 = __p;
  }

  else
  {
    v14 = __p[0];
  }

  if (v18 >= 0)
  {
    v15 = HIBYTE(v18);
  }

  else
  {
    v15 = __p[1];
  }

  std::string::append(&v19, v14, v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

LABEL_51:
    operator delete(v16.__r_.__value_.__l.__data_);
    goto LABEL_47;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_47:
  result = *&v19.__r_.__value_.__l.__data_;
  *a1 = v19;
  return result;
}

void sub_1AE61F6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if (a14 < 0)
    {
LABEL_5:
      operator delete(a9);
      if ((a27 & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_8;
    }
  }

  else if (a14 < 0)
  {
    goto LABEL_5;
  }

  if ((a27 & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_8:
  operator delete(a22);
  _Unwind_Resume(a1);
}

uint64_t *language_modeling::v1::Prediction::prefix@<X0>(uint64_t *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *this;
  if (*(*this + 231) < 0)
  {
    return sub_1AE5DBF1C(a2, *(v2 + 208), *(v2 + 216));
  }

  v3 = *(v2 + 208);
  *(a2 + 16) = *(v2 + 224);
  *a2 = v3;
  return this;
}

uint64_t language_modeling::v1::convertAbsoluteTime(language_modeling::v1 *this, CFAbsoluteTime a2)
{
  std::chrono::system_clock::now();
  v3 = CFDateCreate(*MEMORY[0x1E695E480], a2);
  cf = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = CFGetTypeID(v3);
  if (v4 != CFDateGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  if (!cf)
  {
LABEL_8:
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v8, "Could not construct");
    goto LABEL_11;
  }

  TypeID = CFDateGetTypeID();
  if (TypeID != CFGetTypeID(cf))
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v8, "Could not convert");
LABEL_11:
    __cxa_throw(v8, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  v6 = MEMORY[0x1B2705380](cf);
  CFRelease(cf);
  return ((*MEMORY[0x1E695E468] + v6) * 1000000.0);
}

void sub_1AE61F9BC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, __int128 buf)
{
  if (a2)
  {
    __cxa_free_exception(v11);
    sub_1AE6962A0(&a10);
    if (a2 == 2)
    {
      v14 = __cxa_begin_catch(a1);
      if (qword_1ED9ACA10 != -1)
      {
        dispatch_once(&qword_1ED9ACA10, &unk_1F242BD98);
      }

      v15 = qword_1ED9AC9E0;
      if (os_log_type_enabled(qword_1ED9AC9E0, OS_LOG_TYPE_ERROR))
      {
        v16 = (*(*v14 + 16))(v14);
        LODWORD(buf) = 136315394;
        *(&buf + 4) = "convertAbsoluteTime";
        WORD6(buf) = 2080;
        *(&buf + 14) = v16;
        _os_log_error_impl(&dword_1AE5C8000, v15, OS_LOG_TYPE_ERROR, "%s: caught unexpected exception: %s", &buf, 0x16u);
      }

      __cxa_end_catch();
      JUMPOUT(0x1AE61F8F0);
    }

    sub_1AE6090F0(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1AE61FCA4(uint64_t a1, uint64_t a2)
{
  v9[0] = 0;
  v9[1] = 0;
  v8 = v9;
  v3 = *(a2 + 24);
  v4 = (a2 + 32);
  if (v3 != (a2 + 32))
  {
    do
    {
      sub_1AE6205CC(&v8, v9, v3 + 4);
      v5 = v3[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v3[2];
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v4);
  }

  if (*(a2 + 23) < 0)
  {
    sub_1AE5DBF1C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v11 = *(a2 + 16);
  }

  operator new();
}

uint64_t *sub_1AE6205CC(uint64_t **a1, uint64_t *a2, const void **a3)
{
  result = sub_1AE620BA4(a1, a2, &v5, &v4, a3);
  if (!*result)
  {
    operator new();
  }

  return result;
}

void sub_1AE6206C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  sub_1AE620F48(va);
  _Unwind_Resume(a1);
}

void sub_1AE6206F4(char *a1)
{
  if (!a1)
  {
    return;
  }

  sub_1AE6206F4(*a1);
  sub_1AE6206F4(*(a1 + 1));
  if (a1[79] < 0)
  {
    operator delete(*(a1 + 7));
    if ((a1[55] & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    operator delete(*(a1 + 4));
    goto LABEL_4;
  }

  if (a1[55] < 0)
  {
    goto LABEL_9;
  }

LABEL_4:

  operator delete(a1);
}

CFStringRef sub_1AE62076C(CFStringRef *a1, const UInt8 *a2, uint64_t a3)
{
  v5 = *(a2 + 1);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2[23];
  }

  else
  {
    a2 = *a2;
    v6 = v5;
  }

  v7 = CFStringCreateWithBytes(0, a2, v6, 0x8000100u, 0);
  *a1 = v7;
  if (!v7)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

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

  result = CFStringCreateWithBytes(0, v9, v10, 0x8000100u, 0);
  a1[1] = result;
  if (!result)
  {
    v13 = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](v13, "Could not construct");
    __cxa_throw(v13, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

void sub_1AE620878(_Unwind_Exception *a1)
{
  sub_1AE620B3C(v1 + 1);
  sub_1AE620B70(v1);
  _Unwind_Resume(a1);
}

void **sub_1AE6208D0(void **a1)
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
        v5 = *(v3 - 1);
        if (v5)
        {
          CFRelease(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          CFRelease(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void sub_1AE620950(void *a1, void *a2)
{
  v4 = a2[1];
  v5 = *a1;
  v6 = a1[1];
  v7 = v4 - (v6 - *a1);
  v8 = v6 - *a1;
  if (v6 == *a1)
  {
    goto LABEL_20;
  }

  v9 = v8 - 16;
  v10 = *a1;
  v11 = (v4 - (v6 - *a1));
  if ((v8 - 16) >= 0x70)
  {
    v12 = (v9 & 0xFFFFFFFFFFFFFFF0) + 16;
    v13 = v7 >= v5 + v12 || v5 >= v4 + v12 - v8;
    v10 = *a1;
    v11 = (v4 - (v6 - *a1));
    if (v13)
    {
      v14 = v8 >> 4;
      v15 = (v9 >> 4) + 1;
      v16 = 2 * (v15 & 0x1FFFFFFFFFFFFFFCLL);
      v10 = &v5[v16];
      v17 = (v4 - 16 * v14 + 32);
      v18 = (v5 + 4);
      v19 = v15 & 0x1FFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *(v18 - 1);
        v21 = *v18;
        v22 = v18[1];
        *(v17 - 2) = *(v18 - 2);
        *(v17 - 1) = v20;
        *v17 = v21;
        v17[1] = v22;
        v17 += 4;
        *(v18 - 2) = 0uLL;
        *(v18 - 1) = 0uLL;
        *v18 = 0uLL;
        v18[1] = 0uLL;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v15 == (v15 & 0x1FFFFFFFFFFFFFFCLL))
      {
        goto LABEL_15;
      }

      v11 = (v7 + v16 * 8);
    }
  }

  do
  {
    *v11 = *v10;
    *v10 = 0;
    v11[1] = v10[1];
    v10[1] = 0;
    v10 += 2;
    v11 += 2;
  }

  while (v10 != v6);
  do
  {
LABEL_15:
    v23 = v5[1];
    if (v23)
    {
      CFRelease(v23);
    }

    if (*v5)
    {
      CFRelease(*v5);
    }

    v5 += 2;
  }

  while (v5 != v6);
  v5 = *a1;
LABEL_20:
  a2[1] = v7;
  *a1 = v7;
  a1[1] = v5;
  a2[1] = v5;
  v24 = a1[1];
  a1[1] = a2[2];
  a2[2] = v24;
  v25 = a1[2];
  a1[2] = a2[3];
  a2[3] = v25;
  *a2 = a2[1];
}

uint64_t sub_1AE620AC4(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 16);
    *(a1 + 16) = i - 16;
    v5 = *(i - 8);
    if (v5)
    {
      CFRelease(v5);
    }

    if (*v4)
    {
      CFRelease(*v4);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_1AE620B3C(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE620B70(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *sub_1AE620BA4(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, const void **a5)
{
  v8 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_23;
  }

  v10 = *(a5 + 23);
  if (v10 >= 0)
  {
    v11 = a5;
  }

  else
  {
    v11 = *a5;
  }

  if (v10 >= 0)
  {
    v12 = *(a5 + 23);
  }

  else
  {
    v12 = a5[1];
  }

  v13 = *(a2 + 55);
  if (v13 >= 0)
  {
    v14 = a2 + 4;
  }

  else
  {
    v14 = a2[4];
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 55);
  }

  else
  {
    v15 = a2[5];
  }

  if (v15 >= v12)
  {
    v16 = v12;
  }

  else
  {
    v16 = v15;
  }

  v17 = memcmp(v11, v14, v16);
  if (!v17)
  {
    if (v12 >= v15)
    {
      goto LABEL_19;
    }

LABEL_23:
    v19 = *a2;
    if (*a1 == a2)
    {
      v21 = a2;
    }

    else
    {
      if (v19)
      {
        v20 = *a2;
        do
        {
          v21 = v20;
          v20 = v20[1];
        }

        while (v20);
      }

      else
      {
        v22 = a2;
        do
        {
          v21 = v22[2];
          v23 = *v21 == v22;
          v22 = v21;
        }

        while (v23);
      }

      v24 = *(v21 + 55);
      if (v24 >= 0)
      {
        v25 = v21 + 4;
      }

      else
      {
        v25 = v21[4];
      }

      if (v24 >= 0)
      {
        v26 = *(v21 + 55);
      }

      else
      {
        v26 = v21[5];
      }

      v27 = *(a5 + 23);
      if (v27 >= 0)
      {
        v28 = a5;
      }

      else
      {
        v28 = *a5;
      }

      if (v27 >= 0)
      {
        v29 = *(a5 + 23);
      }

      else
      {
        v29 = a5[1];
      }

      if (v29 >= v26)
      {
        v30 = v26;
      }

      else
      {
        v30 = v29;
      }

      v31 = memcmp(v25, v28, v30);
      if (v31)
      {
        if ((v31 & 0x80000000) == 0)
        {
          goto LABEL_48;
        }
      }

      else if (v26 >= v29)
      {
LABEL_48:
        v32 = *v8;
        if (!*v8)
        {
          v33 = v8;
LABEL_69:
          *a3 = v33;
          return v8;
        }

        while (1)
        {
          v33 = v32;
          v36 = v32[4];
          v34 = v32 + 4;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v38 = v34;
          }

          else
          {
            v38 = v35;
          }

          if (v37 >= 0)
          {
            v39 = *(v34 + 23);
          }

          else
          {
            v39 = v34[1];
          }

          if (v39 >= v29)
          {
            v40 = v29;
          }

          else
          {
            v40 = v39;
          }

          v41 = memcmp(v28, v38, v40);
          if (v41)
          {
            if (v41 < 0)
            {
              goto LABEL_50;
            }

LABEL_64:
            v42 = memcmp(v38, v28, v40);
            if (v42)
            {
              if ((v42 & 0x80000000) == 0)
              {
                goto LABEL_69;
              }
            }

            else if (v39 >= v29)
            {
              goto LABEL_69;
            }

            v8 = v33 + 1;
            v32 = v33[1];
            if (!v32)
            {
              goto LABEL_69;
            }
          }

          else
          {
            if (v29 >= v39)
            {
              goto LABEL_64;
            }

LABEL_50:
            v32 = *v33;
            v8 = v33;
            if (!*v33)
            {
              goto LABEL_69;
            }
          }
        }
      }
    }

    if (v19)
    {
      *a3 = v21;
      return v21 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v17 < 0)
  {
    goto LABEL_23;
  }

LABEL_19:
  v18 = memcmp(v14, v11, v16);
  if (v18)
  {
    if ((v18 & 0x80000000) == 0)
    {
LABEL_21:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }
  }

  else if (v15 >= v12)
  {
    goto LABEL_21;
  }

  v43 = a2[1];
  if (v43)
  {
    v44 = a2[1];
    do
    {
      a4 = v44;
      v44 = *v44;
    }

    while (v44);
  }

  else
  {
    v45 = a2;
    do
    {
      a4 = v45[2];
      v23 = *a4 == v45;
      v45 = a4;
    }

    while (!v23);
  }

  if (a4 != v8)
  {
    v46 = *(a4 + 55);
    if (v46 >= 0)
    {
      v47 = (a4 + 4);
    }

    else
    {
      v47 = a4[4];
    }

    if (v46 >= 0)
    {
      v48 = *(a4 + 55);
    }

    else
    {
      v48 = a4[5];
    }

    if (v48 >= v12)
    {
      v49 = v12;
    }

    else
    {
      v49 = v48;
    }

    v50 = memcmp(v11, v47, v49);
    if (v50)
    {
      if ((v50 & 0x80000000) == 0)
      {
        goto LABEL_95;
      }
    }

    else if (v12 >= v48)
    {
LABEL_95:
      v51 = *v8;
      if (!*v8)
      {
        v52 = v8;
LABEL_116:
        *a3 = v52;
        return v8;
      }

      while (1)
      {
        v52 = v51;
        v55 = v51[4];
        v53 = v51 + 4;
        v54 = v55;
        v56 = *(v53 + 23);
        if (v56 >= 0)
        {
          v57 = v53;
        }

        else
        {
          v57 = v54;
        }

        if (v56 >= 0)
        {
          v58 = *(v53 + 23);
        }

        else
        {
          v58 = v53[1];
        }

        if (v58 >= v12)
        {
          v59 = v12;
        }

        else
        {
          v59 = v58;
        }

        v60 = memcmp(v11, v57, v59);
        if (v60)
        {
          if (v60 < 0)
          {
            goto LABEL_97;
          }

LABEL_111:
          v61 = memcmp(v57, v11, v59);
          if (v61)
          {
            if ((v61 & 0x80000000) == 0)
            {
              goto LABEL_116;
            }
          }

          else if (v58 >= v12)
          {
            goto LABEL_116;
          }

          v8 = v52 + 1;
          v51 = v52[1];
          if (!v51)
          {
            goto LABEL_116;
          }
        }

        else
        {
          if (v12 >= v58)
          {
            goto LABEL_111;
          }

LABEL_97:
          v51 = *v52;
          v8 = v52;
          if (!*v52)
          {
            goto LABEL_116;
          }
        }
      }
    }
  }

  if (v43)
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

uint64_t *sub_1AE620F48(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      if (*(v2 + 79) < 0)
      {
        operator delete(*(v2 + 56));
        if ((*(v2 + 55) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }
      }

      else if ((*(v2 + 55) & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

      operator delete(*(v2 + 32));
    }

LABEL_5:
    operator delete(v2);
  }

  return a1;
}

void LM::TrialParameters::createWithEncodedRepresentation(LM::TrialParameters *this@<X0>, uint64_t a2@<X8>)
{
  if (!this)
  {
    __assert_rtn("createWithEncodedRepresentation", "TrialParameters.mm", 33, "dict");
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 24) = a2 + 32;
  *(a2 + 40) = 0;
  CFRetain(this);
  v46 = this;
  v5 = CFGetTypeID(this);
  if (v5 != CFDictionaryGetTypeID())
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1B2705EB0](exception, "Could not construct");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  sub_1AE62155C(&v40, v46);
  while (1)
  {
    sub_1AE62155C(&__p, v46);
    v6 = v36;
    v35 = (v37 - v36) >> 3;
    if (!v40 || v41 == (v43 - v42) >> 3)
    {
      v7 = 1;
      v8 = v38;
      if (!v38)
      {
        goto LABEL_9;
      }

LABEL_8:
      v39 = v8;
      operator delete(v8);
      v6 = v36;
      goto LABEL_9;
    }

    v7 = v40 == __p && v41 == (v37 - v36) >> 3;
    v8 = v38;
    if (v38)
    {
      goto LABEL_8;
    }

LABEL_9:
    if (v6)
    {
      v37 = v6;
      operator delete(v6);
    }

    if (v7)
    {
      break;
    }

    sub_1AE621620(cf, &v40);
    v9 = cf[0];
    if (cf[0])
    {
      TypeID = CFStringGetTypeID();
      if (TypeID == CFGetTypeID(v9))
      {
        sub_1AE621740(&__p, v9);
        v11 = cf[1];
        if (!cf[1])
        {
          goto LABEL_18;
        }

LABEL_17:
        CFRelease(v11);
        goto LABEL_18;
      }
    }

    HIBYTE(v36) = 0;
    LOBYTE(__p) = 0;
    v11 = cf[1];
    if (cf[1])
    {
      goto LABEL_17;
    }

LABEL_18:
    if (v9)
    {
      CFRelease(v9);
    }

    sub_1AE621620(&p_p, &v40);
    v12 = v31;
    if (v31)
    {
      v13 = CFStringGetTypeID();
      if (v13 == CFGetTypeID(v12))
      {
        sub_1AE621740(cf, v12);
      }

      else
      {
        HIBYTE(v33) = 0;
        LOBYTE(cf[0]) = 0;
      }

      CFRelease(v12);
    }

    else
    {
      HIBYTE(v33) = 0;
      LOBYTE(cf[0]) = 0;
    }

    if (p_p)
    {
      CFRelease(p_p);
    }

    if (v43 != v42)
    {
      if (((v43 - v42) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    if (v45 != v44)
    {
      if (((v45 - v44) & 0x8000000000000000) == 0)
      {
        operator new();
      }

      sub_1AE5CBB70();
    }

    ++v41;
    v15 = HIBYTE(v36);
    if (SHIBYTE(v36) < 0)
    {
      v15 = v35;
    }

    if (!v15)
    {
      goto LABEL_87;
    }

    v16 = HIBYTE(v33);
    v17 = HIBYTE(v33);
    v18 = cf[1];
    if (!(v33 >= 0 ? HIBYTE(v33) : cf[1]))
    {
      goto LABEL_87;
    }

    if (SHIBYTE(v36) < 0 && v35 == 36)
    {
      v20 = *__p == 0x3935383444303942 && *(__p + 1) == 0x41342D453131412DLL;
      v21 = v20 && *(__p + 2) == 0x2D343038412D3139;
      v22 = v21 && *(__p + 3) == 0x3041324442414643;
      if (v22 && *(__p + 8) == 1178745145)
      {
        if (*(a2 + 23) < 0)
        {
          **a2 = 0;
          *(a2 + 8) = 0;
          v16 = HIBYTE(v33);
          v18 = cf[1];
          v17 = HIBYTE(v33);
        }

        else
        {
          *a2 = 0;
          *(a2 + 23) = 0;
        }

        if (v17 >= 0)
        {
          v28 = cf;
        }

        else
        {
          v28 = cf[0];
        }

        if (v17 < 0)
        {
          v16 = v18;
        }

        sub_1AE5F459C(a2, v28, &v16[v28]);
        goto LABEL_87;
      }
    }

    p_p = &__p;
    v24 = sub_1AE62190C(a2 + 24, &__p);
    v25 = v24 + 7;
    if (v24 + 7 == cf)
    {
LABEL_87:
      if (SHIBYTE(v33) < 0)
      {
        operator delete(cf[0]);
        if (SHIBYTE(v36) < 0)
        {
LABEL_4:
          operator delete(__p);
        }
      }

      else if (SHIBYTE(v36) < 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (*(v24 + 79) < 0)
      {
        if (v33 >= 0)
        {
          v26 = cf;
        }

        else
        {
          v26 = cf[0];
        }

        if (v33 >= 0)
        {
          v27 = HIBYTE(v33);
        }

        else
        {
          v27 = cf[1];
        }

        sub_1AE621B84(v25, v26, v27);
        goto LABEL_87;
      }

      if (v33 < 0)
      {
        sub_1AE621AB4(v25, cf[0], cf[1]);
        goto LABEL_87;
      }

      *v25 = *cf;
      v24[9] = v33;
      if (SHIBYTE(v36) < 0)
      {
        goto LABEL_4;
      }
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  if (v42)
  {
    v43 = v42;
    operator delete(v42);
  }

  if (v46)
  {
    CFRelease(v46);
  }
}

void sub_1AE621464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  __cxa_free_exception(v30);
  sub_1AE621528((v31 - 96));
  sub_1AE621D24(v29);
  _Unwind_Resume(a1);
}

const void **sub_1AE621528(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1AE62155C(uint64_t a1, CFDictionaryRef theDict)
{
  *a1 = theDict;
  *(a1 + 40) = 0u;
  v3 = (a1 + 40);
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0;
  if (theDict)
  {
    Count = CFDictionaryGetCount(theDict);
    v5 = Count;
    v6 = *(a1 + 16);
    v7 = (*(a1 + 24) - v6) >> 3;
    if (Count <= v7)
    {
      if (Count < v7)
      {
        *(a1 + 24) = v6 + 8 * Count;
      }
    }

    else
    {
      sub_1AE621E88(a1 + 16, Count - v7);
    }

    v8 = *(a1 + 40);
    v9 = (*(a1 + 48) - v8) >> 3;
    if (v5 <= v9)
    {
      if (v5 < v9)
      {
        *(a1 + 48) = &v8[v5];
      }
    }

    else
    {
      sub_1AE621E88(v3, v5 - v9);
      v8 = *v3;
    }

    CFDictionaryGetKeysAndValues(*a1, *(a1 + 16), v8);
  }

  return a1;
}

void sub_1AE621620(void *a1, void *a2)
{
  v2 = a2[1];
  if ((v2 & 0x8000000000000000) != 0 || (v4 = a2[2], v2 >= (a2[3] - v4) >> 3))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    sub_1AE5F1E00(exception, "DictionaryRef_iterator iterator out of range.");
    __cxa_throw(exception, off_1E7A2D6D0, MEMORY[0x1E69E5280]);
  }

  sub_1AE621D60(&v10, *(v4 + 8 * v2));
  sub_1AE621D60(&v9, *(a2[5] + 8 * a2[1]));
  v7 = v9;
  v6 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  *a1 = v6;
  if (v7)
  {
    CFRetain(v7);
    a1[1] = v7;
    CFRelease(v7);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    a1[1] = 0;
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void sub_1AE621718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE621E20(va);
  _Unwind_Resume(a1);
}

unint64_t sub_1AE621740(_BYTE *a1, CFStringRef theString)
{
  CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
  v5 = CStringPtr;
  if (CStringPtr)
  {
    result = strlen(CStringPtr);
    if (result <= 0x7FFFFFFFFFFFFFF7)
    {
      v7 = result;
      if (result >= 0x17)
      {
        operator new();
      }

      a1[23] = result;
      if (result)
      {
        result = memmove(a1, v5, result);
      }

      a1[v7] = 0;
      return result;
    }

LABEL_19:
    sub_1AE5DB4F0();
  }

  Length = CFStringGetLength(theString);
  maxBufLen = 0;
  v12.location = 0;
  v12.length = Length;
  CFStringGetBytes(theString, v12, 0x8000100u, 0, 0, 0, 0, &maxBufLen);
  v9 = maxBufLen;
  if (maxBufLen > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_19;
  }

  if (maxBufLen >= 0x17)
  {
    operator new();
  }

  a1[23] = maxBufLen;
  if (v9)
  {
    bzero(a1, v9);
  }

  a1[v9] = 0;
  if (a1[23] >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  v13.location = 0;
  v13.length = Length;
  return CFStringGetBytes(theString, v13, 0x8000100u, 0, 0, v10, maxBufLen, &maxBufLen);
}

void *sub_1AE62190C(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_27:
    operator new();
  }

  v3 = *(a2 + 23);
  if (v3 >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  while (1)
  {
    while (1)
    {
      v6 = v2;
      v9 = v2[4];
      v7 = v2 + 4;
      v8 = v9;
      v10 = *(v7 + 23);
      v11 = v10 >= 0 ? v7 : v8;
      v12 = v10 >= 0 ? *(v7 + 23) : v7[1];
      v13 = (v12 >= v5 ? v5 : v12);
      v14 = memcmp(v4, v11, v13);
      if (v14)
      {
        break;
      }

      if (v5 >= v12)
      {
        goto LABEL_22;
      }

LABEL_8:
      v2 = *v6;
      if (!*v6)
      {
        goto LABEL_27;
      }
    }

    if (v14 < 0)
    {
      goto LABEL_8;
    }

LABEL_22:
    v15 = memcmp(v11, v4, v13);
    if (v15)
    {
      if ((v15 & 0x80000000) == 0)
      {
        return v6;
      }

      goto LABEL_26;
    }

    if (v12 >= v5)
    {
      return v6;
    }

LABEL_26:
    v2 = v6[1];
    if (!v2)
    {
      goto LABEL_27;
    }
  }
}

void sub_1AE621AA0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1AE620F48(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_1AE621AB4(_BYTE *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 > 0x800000000000001ELL)
    {
      operator new();
    }

    sub_1AE5DB4F0();
  }

  __dst[23] = __len;
  v5 = __dst;
  if (__len)
  {
    memmove(__dst, a2, __len);
    v5 = __dst;
  }

  v5[__len] = 0;
  return __dst;
}

uint64_t sub_1AE621B84(uint64_t a1, const void *a2, size_t __len)
{
  v5 = *(a1 + 16) & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v5 >= __len - v5 + 1)
    {
      operator new();
    }

    sub_1AE5DB4F0();
  }

  v6 = *a1;
  *(a1 + 8) = __len;
  if (__len)
  {
    memmove(v6, a2, __len);
  }

  *(v6 + __len) = 0;
  return a1;
}

void *sub_1AE621CAC(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    a1[6] = v2;
    operator delete(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

const void **sub_1AE621CF0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1AE621D24(uint64_t a1)
{
  sub_1AE6206F4(*(a1 + 32));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_1AE621D60(void *result, CFTypeRef cf)
{
  v2 = result;
  if (cf)
  {
    CFRetain(cf);
    *v2 = cf;
    v4 = CFGetTypeID(cf);
    result = CFStringGetTypeID();
    if (v4 != result)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x1B2705EB0](exception, "Could not construct");
      __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
    }
  }

  else
  {
    *result = 0;
  }

  return result;
}

void sub_1AE621DF4(_Unwind_Exception *a1)
{
  __cxa_free_exception(v2);
  sub_1AE621E54(v1);
  _Unwind_Resume(a1);
}

const void **sub_1AE621E20(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

const void **sub_1AE621E54(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1AE621E88(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 3)
  {
    if (a2)
    {
      v10 = 8 * a2;
      bzero(*(a1 + 8), 8 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 3) + a2;
    if (v7 >> 61)
    {
      sub_1AE5CBB70();
    }

    v8 = v3 - v5;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      sub_1AE5CB09C();
    }

    v11 = (8 * (v6 >> 3));
    v12 = 8 * a2;
    bzero(v11, 8 * a2);
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

uint64_t LM::TrialParameters::operator==(const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v4;
  }

  if (!std::__fs::filesystem::path::__compare(a1, a2) && a1[1].__pn_.__r_.__value_.__r.__words[2] == *(data + 5))
  {
    v5 = a1[1].__pn_.__r_.__value_.__l.__data_;
    v6 = &a1[1].__pn_.__r_.__value_.__s.__data_[8];
    if (v5 == v6)
    {
      return 1;
    }

    v7 = *(data + 3);
    while (1)
    {
      v9 = v5[55];
      if (v9 >= 0)
      {
        v10 = v5[55];
      }

      else
      {
        v10 = *(v5 + 5);
      }

      v11 = *(v7 + 55);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = v7[5];
      }

      if (v10 != v11)
      {
        break;
      }

      v13 = v9 >= 0 ? v5 + 32 : *(v5 + 4);
      v14 = v12 >= 0 ? v7 + 4 : v7[4];
      if (memcmp(v13, v14, v10))
      {
        break;
      }

      v15 = v5[79];
      if (v15 >= 0)
      {
        v16 = v5[79];
      }

      else
      {
        v16 = *(v5 + 8);
      }

      v17 = *(v7 + 79);
      v18 = v17;
      if ((v17 & 0x80u) != 0)
      {
        v17 = v7[8];
      }

      if (v16 != v17)
      {
        break;
      }

      v19 = v15 >= 0 ? v5 + 56 : *(v5 + 7);
      v20 = v18 >= 0 ? v7 + 7 : v7[7];
      if (memcmp(v19, v20, v16))
      {
        break;
      }

      v21 = *(v5 + 1);
      v22 = v5;
      if (v21)
      {
        do
        {
          v5 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v5 = *(v22 + 2);
          v23 = *v5 == v22;
          v22 = v5;
        }

        while (!v23);
      }

      v24 = v7[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v7[2];
          v23 = *v25 == v7;
          v7 = v25;
        }

        while (!v23);
      }

      result = 1;
      v7 = v25;
      if (v5 == v6)
      {
        return result;
      }
    }
  }

  return 0;
}