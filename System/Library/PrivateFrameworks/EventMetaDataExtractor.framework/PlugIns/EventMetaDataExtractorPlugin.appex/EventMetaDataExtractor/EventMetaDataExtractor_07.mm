double sub_100071F24(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_100071140(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100071F34(uint64_t a1, int a2, int a3)
{
  v6 = sub_10007139C(a1);
  result = sub_10007139C(a1);
  v8 = *(v6 + a2);
  *(v6 + a2) = *(result + a3);
  *(result + a3) = v8;
  return result;
}

uint64_t sub_100071FB4(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return (v1 + 8);
  }
}

uint64_t sub_100071FC8(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = (v1 + 8);
  }

  if ((v2 & 0x80000000) != 0)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_100072040(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072058(int *a1, uint64_t a2)
{
  v2 = a2;
  v4 = (a2 + 1);
  v5 = *(a1 + 1);
  v6 = v2 - v5;
  v7 = *a1;
  v8 = v5 + v6;
  v9 = v5 + v7 - v4;
  if ((v5 + v7) != v4)
  {
    memmove((v5 + v6), v4, v5 + v7 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v10 = v8 + v9 - v5;
  if (v7 < v10)
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v11 = sub_10004FD04(v14, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v13, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v14);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v10;
  }

  return *(a1 + 1) + v6;
}

void sub_100072128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072140(int *a1, void *a2, void *__src)
{
  v4 = *(a1 + 1);
  v5 = a2 - v4;
  if (a2 == __src)
  {
    v11 = v5;
  }

  else
  {
    v6 = *a1;
    v7 = a2;
    v8 = v4 + v6 - __src;
    if ((v4 + v6) != __src)
    {
      memmove((v4 + v5), __src, v4 + v6 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v9 = v7 + v8 - v4;
    if (v6 < v9)
    {
      sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v10 = sub_10004FD04(v14, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v13, &v10->__r_.__value_.__l.__data_);
      sub_10004FE48(v14);
      LODWORD(v6) = *a1;
    }

    v11 = v5;
    if (v6 >= 1)
    {
      *a1 = v9;
    }
  }

  return *(a1 + 1) + v11;
}

void sub_10007221C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072234(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_100072364(a1, v4);
    sub_100072508(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_100072B4C(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_100072B4C(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_100072344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100072364(int *a1, int a2)
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
      v6 = *(sub_100072B4C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v15);
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
    v5 = (sub_100072B4C(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v12 = sub_10004C500(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_100072B4C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_100072B4C(a1);
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

void sub_1000724F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072508(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_10004FD04(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_100050324(v5, *(a1 + 4));
    v7 = sub_10004FD04(v6, ", ");
    v8 = sub_100050324(v7, *a1);
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1000725B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000725DC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100072B4C(a1) + 4 * a2;
}

void sub_10007269C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000726BC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100072B4C(a1) + 4 * a2;
}

void sub_10007277C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000727A0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_100072B4C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *sub_100072808(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_10007324C(a1, a2);
  }

  return a1;
}

int *sub_100072840(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_10007324C(result, a2);
  }

  return result;
}

uint64_t sub_100072854(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100072B4C(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_10007324C(a1, a2);
    }
  }

  else
  {
    sub_100072900(a1, a2);
  }

  return a1;
}

uint64_t sub_1000728D0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_100072B4C(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_100072900(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = sub_10004FD04(v13, "CHECK failed: this != other: ");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (*(a1 + 4))
  {
    v5 = (sub_100072B4C(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_100072B4C(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_100072A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072A2C(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100072B4C(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_10007324C(a1, a2);
    }
  }

  else
  {
    sub_100072900(a1, a2);
  }

  return a1;
}

int *sub_100072AA8(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100072B4C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100072B4C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_100072900(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_10007324C(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_100072B4C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_10004FD04(v5, "CHECK failed: (total_size_) > (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return *(a1 + 8);
}

void sub_100072BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072BE0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100072B4C(a1) + 4 * a2;
}

void sub_100072CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072CC0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100072B4C(a1) + 4 * a2;
}

void sub_100072D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072DA0(_DWORD *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = sub_10004FD04(v11, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v8 = *a3;
  result = sub_100072B4C(a1);
  *(result + 4 * a2) = v8;
  return result;
}

void sub_100072E70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100072E90(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_100072364(a1, v3 + 1);
    result = sub_100072B4C(a1);
    *(result + 4 * v3) = v4;
  }

  else
  {
    result = sub_100072B4C(a1);
    *(result + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100072EFC(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_100072364(a1, v2 + 1);
  }

  result = sub_100072B4C(a1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

int *sub_100072F50(int *result)
{
  v1 = result;
  v2 = *result;
  if (*result <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = sub_10004FD04(v5, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v5);
    v2 = *v1;
  }

  *v1 = v2 - 1;
  return result;
}

void sub_100072FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100072FE4(int *result, int a2, int a3, int *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = sub_10004FD04(v17, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v16, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = sub_10004FD04(v17, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v16, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v17);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *v7)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = sub_10004FD04(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    sub_10004FE40(&v16, &v11->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      result = sub_1000726BC(v7, v13);
      *a4++ = *result;
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *v7;
    while (v10 < v14)
    {
      v15 = sub_1000726BC(v7, v10);
      result = sub_100072DA0(v7, v6, v15);
      ++v10;
      v14 = *v7;
      ++v6;
    }

    if (v14 >= 1)
    {
      *v7 = v14 - a3;
    }
  }

  return result;
}

void sub_100073188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_1000731B0(int *result, int a2)
{
  v3 = result;
  v4 = *result;
  if (*result < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = sub_10004FD04(v7, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
    v4 = *v3;
  }

  if (v4 >= 1)
  {
    *v3 = a2;
  }

  return result;
}

void sub_100073234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_10007324C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_10004FD04(v10, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_100072364(v3, *v3 + *a2);
    sub_100072508(v3, *a2);
    v6 = sub_1000725DC(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_100072B4C(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_10007335C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007337C(int *a1, int *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_100072B4C(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 4 * v7) = v5;
  return result;
}

void sub_10007340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073424(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_100072B4C(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 4 * v4;
}

void sub_1000734AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000734C4(uint64_t result, int a2, int *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v17, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v16, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (*v5 < a2)
  {
    sub_100072364(v5, a2);
    v7 = sub_100072B4C(v5) + 4 * *v5;
    result = sub_100072B4C(v5);
    v8 = (result + 4 * a2 - v7) >> 2;
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *a3;
      v11 = vdupq_n_s64(v8 - 1);
      v12 = (v8 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090CA0)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090C90)))).i32[1])
        {
          *v13 = v10;
          v13[1] = v10;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }
  }

  *v5 = a2;
  return result;
}

void sub_100073618(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100073630(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100072B4C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100072B4C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_100072900(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_100072B4C(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_10007324C(&v9, a1);
      *a1 = 0;
      sub_10007324C(a1, a2);
      if (&v9 != a2)
      {
        sub_100072900(a2, &v9);
      }

      sub_1000727A0(&v9);
    }
  }
}

double sub_100073754(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_100072900(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100073764(uint64_t a1, int a2, int a3)
{
  v6 = sub_100072B4C(a1);
  result = sub_100072B4C(a1);
  v8 = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(result + 4 * a3);
  *(result + 4 * a3) = v8;
  return result;
}

uint64_t sub_1000737D8(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 4 * v1 + 8;
  }
}

unint64_t sub_1000737F0(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4 * v1 + 8;
  }

  if (v2 >> 31)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_100073870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073888(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 2;
  if (v7 < v11)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 4 * (v6 >> 2);
}

void sub_100073960(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073978(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 4 * v6);
    v8 = v4 + 4 * (v5 >> 2);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 4 * (v5 >> 2)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 2;
    if (v6 < v10)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 2);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 4 * v12;
}

void sub_100073A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073A74(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_100073BA4(a1, v4);
    sub_100073D48(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_100074378(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_100074378(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_100073B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100073BA4(int *a1, int a2)
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
      v6 = *(sub_100074378(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v15);
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
    v5 = (sub_100074378(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v12 = sub_10004C500(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_100074378(a1);
  if (*a1 >= 1)
  {
    v13 = sub_100074378(a1);
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

void sub_100073D30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073D48(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_10004FD04(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_100050324(v5, *(a1 + 4));
    v7 = sub_10004FD04(v6, ", ");
    v8 = sub_100050324(v7, *a1);
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_100073DF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073E08(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100074378(a1) + 4 * a2;
}

void sub_100073EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073EE8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100074378(a1) + 4 * a2;
}

void sub_100073FA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100073FCC(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_100074378(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *sub_100074034(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_100074A78(a1, a2);
  }

  return a1;
}

int *sub_10007406C(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_100074A78(result, a2);
  }

  return result;
}

uint64_t sub_100074080(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100074378(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_100074A78(a1, a2);
    }
  }

  else
  {
    sub_10007412C(a1, a2);
  }

  return a1;
}

uint64_t sub_1000740FC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_100074378(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_10007412C(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = sub_10004FD04(v13, "CHECK failed: this != other: ");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (*(a1 + 4))
  {
    v5 = (sub_100074378(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_100074378(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_100074238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074258(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100074378(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_100074A78(a1, a2);
    }
  }

  else
  {
    sub_10007412C(a1, a2);
  }

  return a1;
}

int *sub_1000742D4(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100074378(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100074378(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_10007412C(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_100074A78(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_100074378(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_10004FD04(v5, "CHECK failed: (total_size_) > (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return *(a1 + 8);
}

void sub_1000743EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007440C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100074378(a1) + 4 * a2;
}

void sub_1000744CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000744EC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100074378(a1) + 4 * a2;
}

void sub_1000745AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000745CC(_DWORD *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = sub_10004FD04(v11, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v8 = *a3;
  result = sub_100074378(a1);
  *(result + 4 * a2) = v8;
  return result;
}

void sub_10007469C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000746BC(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_100073BA4(a1, v3 + 1);
    result = sub_100074378(a1);
    *(result + 4 * v3) = v4;
  }

  else
  {
    result = sub_100074378(a1);
    *(result + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100074728(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_100073BA4(a1, v2 + 1);
  }

  result = sub_100074378(a1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

int *sub_10007477C(int *result)
{
  v1 = result;
  v2 = *result;
  if (*result <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = sub_10004FD04(v5, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v5);
    v2 = *v1;
  }

  *v1 = v2 - 1;
  return result;
}

void sub_1000747F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100074810(int *result, int a2, int a3, int *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = sub_10004FD04(v17, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v16, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = sub_10004FD04(v17, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v16, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v17);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *v7)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = sub_10004FD04(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    sub_10004FE40(&v16, &v11->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      result = sub_100073EE8(v7, v13);
      *a4++ = *result;
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *v7;
    while (v10 < v14)
    {
      v15 = sub_100073EE8(v7, v10);
      result = sub_1000745CC(v7, v6, v15);
      ++v10;
      v14 = *v7;
      ++v6;
    }

    if (v14 >= 1)
    {
      *v7 = v14 - a3;
    }
  }

  return result;
}

void sub_1000749B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_1000749DC(int *result, int a2)
{
  v3 = result;
  v4 = *result;
  if (*result < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = sub_10004FD04(v7, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
    v4 = *v3;
  }

  if (v4 >= 1)
  {
    *v3 = a2;
  }

  return result;
}

void sub_100074A60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100074A78(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_10004FD04(v10, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_100073BA4(v3, *v3 + *a2);
    sub_100073D48(v3, *a2);
    v6 = sub_100073E08(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_100074378(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_100074B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074BA8(int *a1, int *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_100074378(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 4 * v7) = v5;
  return result;
}

void sub_100074C38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074C50(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_100074378(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 4 * v4;
}

void sub_100074CD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100074CF0(uint64_t result, int a2, int *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v17, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v16, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (*v5 < a2)
  {
    sub_100073BA4(v5, a2);
    v7 = sub_100074378(v5) + 4 * *v5;
    result = sub_100074378(v5);
    v8 = (result + 4 * a2 - v7) >> 2;
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = *a3;
      v11 = vdupq_n_s64(v8 - 1);
      v12 = (v8 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 8);
      do
      {
        v14 = vdupq_n_s64(v9);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090CA0)));
        if (vuzp1_s16(v15, *v11.i8).u8[0])
        {
          *(v13 - 2) = v10;
        }

        if (vuzp1_s16(v15, *&v11).i8[2])
        {
          *(v13 - 1) = v10;
        }

        if (vuzp1_s16(*&v11, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090C90)))).i32[1])
        {
          *v13 = v10;
          v13[1] = v10;
        }

        v9 += 4;
        v13 += 4;
      }

      while (v12 != v9);
    }
  }

  *v5 = a2;
  return result;
}

void sub_100074E44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100074E5C(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100074378(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100074378(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_10007412C(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_100074378(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_100074A78(&v9, a1);
      *a1 = 0;
      sub_100074A78(a1, a2);
      if (&v9 != a2)
      {
        sub_10007412C(a2, &v9);
      }

      sub_100073FCC(&v9);
    }
  }
}

double sub_100074F80(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_10007412C(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100074F90(uint64_t a1, int a2, int a3)
{
  v6 = sub_100074378(a1);
  result = sub_100074378(a1);
  v8 = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(result + 4 * a3);
  *(result + 4 * a3) = v8;
  return result;
}

unint64_t sub_100074FE0(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4 * v1 + 8;
  }

  if (v2 >> 31)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_100075060(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075078(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 2;
  if (v7 < v11)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 4 * (v6 >> 2);
}

void sub_100075150(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075168(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 4 * v6);
    v8 = v4 + 4 * (v5 >> 2);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 4 * (v5 >> 2)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 2;
    if (v6 < v10)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 2);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 4 * v12;
}

void sub_10007524C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075264(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_100075394(a1, v4);
    sub_100075538(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_100075B7C(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_100075B7C(a2);
    memcpy(v6, v8, 8 * *a2);
  }

  return a1;
}

void sub_100075374(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100075394(int *a1, int a2)
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
      v6 = *(sub_100075B7C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v15);
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
    v5 = (sub_100075B7C(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v12 = sub_10004C500(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_100075B7C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_100075B7C(a1);
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

void sub_100075520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075538(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_10004FD04(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_100050324(v5, *(a1 + 4));
    v7 = sub_10004FD04(v6, ", ");
    v8 = sub_100050324(v7, *a1);
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_1000755E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007560C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100075B7C(a1) + 8 * a2;
}

void sub_1000756CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000756EC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100075B7C(a1) + 8 * a2;
}

void sub_1000757AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000757D0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_100075B7C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *sub_100075838(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_10007627C(a1, a2);
  }

  return a1;
}

int *sub_100075870(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_10007627C(result, a2);
  }

  return result;
}

uint64_t sub_100075884(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100075B7C(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_10007627C(a1, a2);
    }
  }

  else
  {
    sub_100075930(a1, a2);
  }

  return a1;
}

uint64_t sub_100075900(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_100075B7C(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_100075930(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = sub_10004FD04(v13, "CHECK failed: this != other: ");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (*(a1 + 4))
  {
    v5 = (sub_100075B7C(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_100075B7C(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_100075A3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075A5C(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100075B7C(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_10007627C(a1, a2);
    }
  }

  else
  {
    sub_100075930(a1, a2);
  }

  return a1;
}

int *sub_100075AD8(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100075B7C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100075B7C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_100075930(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_10007627C(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_100075B7C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_10004FD04(v5, "CHECK failed: (total_size_) > (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return *(a1 + 8);
}

void sub_100075BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075C10(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100075B7C(a1) + 8 * a2;
}

void sub_100075CD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075CF0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100075B7C(a1) + 8 * a2;
}

void sub_100075DB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075DD0(_DWORD *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = sub_10004FD04(v11, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v8 = *a3;
  result = sub_100075B7C(a1);
  *(result + 8 * a2) = v8;
  return result;
}

void sub_100075EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100075EC0(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_100075394(a1, v3 + 1);
    result = sub_100075B7C(a1);
    *(result + 8 * v3) = v4;
  }

  else
  {
    result = sub_100075B7C(a1);
    *(result + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100075F2C(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_100075394(a1, v2 + 1);
  }

  result = sub_100075B7C(a1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

int *sub_100075F80(int *result)
{
  v1 = result;
  v2 = *result;
  if (*result <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = sub_10004FD04(v5, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v5);
    v2 = *v1;
  }

  *v1 = v2 - 1;
  return result;
}

void sub_100075FFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100076014(int *result, int a2, int a3, void *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = sub_10004FD04(v17, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v16, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = sub_10004FD04(v17, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v16, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v17);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *v7)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = sub_10004FD04(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    sub_10004FE40(&v16, &v11->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      result = sub_1000756EC(v7, v13);
      *a4++ = *result;
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *v7;
    while (v10 < v14)
    {
      v15 = sub_1000756EC(v7, v10);
      result = sub_100075DD0(v7, v6, v15);
      ++v10;
      v14 = *v7;
      ++v6;
    }

    if (v14 >= 1)
    {
      *v7 = v14 - a3;
    }
  }

  return result;
}

void sub_1000761B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_1000761E0(int *result, int a2)
{
  v3 = result;
  v4 = *result;
  if (*result < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = sub_10004FD04(v7, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
    v4 = *v3;
  }

  if (v4 >= 1)
  {
    *v3 = a2;
  }

  return result;
}

void sub_100076264(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_10007627C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_10004FD04(v10, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_100075394(v3, *v3 + *a2);
    sub_100075538(v3, *a2);
    v6 = sub_10007560C(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_100075B7C(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_10007638C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000763AC(int *a1, uint64_t *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_100075B7C(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 8 * v7) = v5;
  return result;
}

void sub_10007643C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076454(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_100075B7C(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 8 * v4;
}

void sub_1000764DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000764F4(uint64_t result, int a2, uint64_t *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v17, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v16, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (*v5 < a2)
  {
    sub_100075394(v5, a2);
    v7 = sub_100075B7C(v5) + 8 * *v5;
    result = sub_100075B7C(v5);
    v8 = (result + 8 * a2 - v7) >> 3;
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = *a3;
      v12 = (v8 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v9);
      v14 = (v7 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_100090CA0)));
        if (v15.i8[0])
        {
          *(v14 - 1) = v11;
        }

        if (v15.i8[4])
        {
          *v14 = v11;
        }

        v10 += 2;
        v14 += 2;
      }

      while (v12 != v10);
    }
  }

  *v5 = a2;
  return result;
}

void sub_10007660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100076624(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100075B7C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100075B7C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_100075930(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_100075B7C(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_10007627C(&v9, a1);
      *a1 = 0;
      sub_10007627C(a1, a2);
      if (&v9 != a2)
      {
        sub_100075930(a2, &v9);
      }

      sub_1000757D0(&v9);
    }
  }
}

double sub_100076748(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_100075930(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100076758(uint64_t a1, int a2, int a3)
{
  v6 = sub_100075B7C(a1);
  result = sub_100075B7C(a1);
  v8 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = *(result + 8 * a3);
  *(result + 8 * a3) = v8;
  return result;
}

uint64_t sub_1000767CC(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    return 0;
  }

  else
  {
    return 8 * v1 + 8;
  }
}

unint64_t sub_1000767E4(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8 * v1 + 8;
  }

  if (v2 >> 31)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_100076864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007687C(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 3;
  if (v7 < v11)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 8 * (v6 >> 3);
}

void sub_100076954(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007696C(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 8 * v6);
    v8 = v4 + 8 * (v5 >> 3);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 8 * (v5 >> 3)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 3;
    if (v6 < v10)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 3);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 8 * v12;
}

void sub_100076A50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076A68(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_100076B98(a1, v4);
    sub_100076D3C(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_10007736C(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_10007736C(a2);
    memcpy(v6, v8, 8 * *a2);
  }

  return a1;
}

void sub_100076B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100076B98(int *a1, int a2)
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
      v6 = *(sub_10007736C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v15);
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
    v5 = (sub_10007736C(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v12 = sub_10004C500(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_10007736C(a1);
  if (*a1 >= 1)
  {
    v13 = sub_10007736C(a1);
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

void sub_100076D24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076D3C(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_10004FD04(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_100050324(v5, *(a1 + 4));
    v7 = sub_10004FD04(v6, ", ");
    v8 = sub_100050324(v7, *a1);
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_100076DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076DFC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007736C(a1) + 8 * a2;
}

void sub_100076EBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076EDC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007736C(a1) + 8 * a2;
}

void sub_100076F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100076FC0(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_10007736C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *sub_100077028(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_100077A6C(a1, a2);
  }

  return a1;
}

int *sub_100077060(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_100077A6C(result, a2);
  }

  return result;
}

uint64_t sub_100077074(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_10007736C(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_100077A6C(a1, a2);
    }
  }

  else
  {
    sub_100077120(a1, a2);
  }

  return a1;
}

uint64_t sub_1000770F0(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_10007736C(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_100077120(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = sub_10004FD04(v13, "CHECK failed: this != other: ");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (*(a1 + 4))
  {
    v5 = (sub_10007736C(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_10007736C(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_10007722C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007724C(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_10007736C(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_100077A6C(a1, a2);
    }
  }

  else
  {
    sub_100077120(a1, a2);
  }

  return a1;
}

int *sub_1000772C8(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_10007736C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_10007736C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_100077120(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_100077A6C(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_10007736C(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_10004FD04(v5, "CHECK failed: (total_size_) > (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return *(a1 + 8);
}

void sub_1000773E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100077400(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007736C(a1) + 8 * a2;
}

void sub_1000774C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000774E0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007736C(a1) + 8 * a2;
}

void sub_1000775A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000775C0(_DWORD *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = sub_10004FD04(v11, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v8 = *a3;
  result = sub_10007736C(a1);
  *(result + 8 * a2) = v8;
  return result;
}

void sub_100077690(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000776B0(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_100076B98(a1, v3 + 1);
    result = sub_10007736C(a1);
    *(result + 8 * v3) = v4;
  }

  else
  {
    result = sub_10007736C(a1);
    *(result + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10007771C(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_100076B98(a1, v2 + 1);
  }

  result = sub_10007736C(a1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

int *sub_100077770(int *result)
{
  v1 = result;
  v2 = *result;
  if (*result <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = sub_10004FD04(v5, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v5);
    v2 = *v1;
  }

  *v1 = v2 - 1;
  return result;
}

void sub_1000777EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100077804(int *result, int a2, int a3, void *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = sub_10004FD04(v17, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v16, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = sub_10004FD04(v17, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v16, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v17);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *v7)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = sub_10004FD04(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    sub_10004FE40(&v16, &v11->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      result = sub_100076EDC(v7, v13);
      *a4++ = *result;
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *v7;
    while (v10 < v14)
    {
      v15 = sub_100076EDC(v7, v10);
      result = sub_1000775C0(v7, v6, v15);
      ++v10;
      v14 = *v7;
      ++v6;
    }

    if (v14 >= 1)
    {
      *v7 = v14 - a3;
    }
  }

  return result;
}

void sub_1000779A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_1000779D0(int *result, int a2)
{
  v3 = result;
  v4 = *result;
  if (*result < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = sub_10004FD04(v7, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
    v4 = *v3;
  }

  if (v4 >= 1)
  {
    *v3 = a2;
  }

  return result;
}

void sub_100077A54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100077A6C(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_10004FD04(v10, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_100076B98(v3, *v3 + *a2);
    sub_100076D3C(v3, *a2);
    v6 = sub_100076DFC(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_10007736C(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_100077B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100077B9C(int *a1, uint64_t *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_10007736C(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 8 * v7) = v5;
  return result;
}

void sub_100077C2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100077C44(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_10007736C(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 8 * v4;
}

void sub_100077CCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100077CE4(uint64_t result, int a2, uint64_t *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v17, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v16, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (*v5 < a2)
  {
    sub_100076B98(v5, a2);
    v7 = sub_10007736C(v5) + 8 * *v5;
    result = sub_10007736C(v5);
    v8 = (result + 8 * a2 - v7) >> 3;
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = *a3;
      v12 = (v8 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v9);
      v14 = (v7 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_100090CA0)));
        if (v15.i8[0])
        {
          *(v14 - 1) = v11;
        }

        if (v15.i8[4])
        {
          *v14 = v11;
        }

        v10 += 2;
        v14 += 2;
      }

      while (v12 != v10);
    }
  }

  *v5 = a2;
  return result;
}

void sub_100077DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100077E14(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_10007736C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_10007736C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_100077120(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_10007736C(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_100077A6C(&v9, a1);
      *a1 = 0;
      sub_100077A6C(a1, a2);
      if (&v9 != a2)
      {
        sub_100077120(a2, &v9);
      }

      sub_100076FC0(&v9);
    }
  }
}

double sub_100077F38(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_100077120(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_100077F48(uint64_t a1, int a2, int a3)
{
  v6 = sub_10007736C(a1);
  result = sub_10007736C(a1);
  v8 = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = *(result + 8 * a3);
  *(result + 8 * a3) = v8;
  return result;
}

unint64_t sub_100077F98(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8 * v1 + 8;
  }

  if (v2 >> 31)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_100078018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078030(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 3;
  if (v7 < v11)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 8 * (v6 >> 3);
}

void sub_100078108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078120(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 8 * v6);
    v8 = v4 + 8 * (v5 >> 3);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 8 * (v5 >> 3)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 3;
    if (v6 < v10)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 3);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 8 * v12;
}

void sub_100078204(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007821C(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_10007834C(a1, v4);
    sub_1000784F0(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_100078B20(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_100078B20(a2);
    memcpy(v6, v8, 4 * *a2);
  }

  return a1;
}

void sub_10007832C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10007834C(int *a1, int a2)
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
      v6 = *(sub_100078B20(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v15);
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
    v5 = (sub_100078B20(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v12 = sub_10004C500(v6, v11 & 0x3FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_100078B20(a1);
  if (*a1 >= 1)
  {
    v13 = sub_100078B20(a1);
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

void sub_1000784D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000784F0(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_10004FD04(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_100050324(v5, *(a1 + 4));
    v7 = sub_10004FD04(v6, ", ");
    v8 = sub_100050324(v7, *a1);
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 4 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_100078598(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000785B0(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100078B20(a1) + 4 * a2;
}

void sub_100078670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078690(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100078B20(a1) + 4 * a2;
}

void sub_100078750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078774(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_100078B20(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *sub_1000787DC(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_100079230(a1, a2);
  }

  return a1;
}

int *sub_100078814(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_100079230(result, a2);
  }

  return result;
}

uint64_t sub_100078828(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100078B20(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_100079230(a1, a2);
    }
  }

  else
  {
    sub_1000788D4(a1, a2);
  }

  return a1;
}

uint64_t sub_1000788A4(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_100078B20(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_1000788D4(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = sub_10004FD04(v13, "CHECK failed: this != other: ");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (*(a1 + 4))
  {
    v5 = (sub_100078B20(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_100078B20(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_1000789E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078A00(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_100078B20(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_100079230(a1, a2);
    }
  }

  else
  {
    sub_1000788D4(a1, a2);
  }

  return a1;
}

int *sub_100078A7C(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100078B20(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100078B20(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_1000788D4(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_100079230(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_100078B20(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_10004FD04(v5, "CHECK failed: (total_size_) > (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return *(a1 + 8);
}

void sub_100078B94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078BB4(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100078B20(a1) + 4 * a2;
}

void sub_100078C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078C94(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_100078B20(a1) + 4 * a2;
}

void sub_100078D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078D74(_DWORD *a1, int a2, int *a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = sub_10004FD04(v11, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v8 = *a3;
  result = sub_100078B20(a1);
  *(result + 4 * a2) = v8;
  return result;
}

void sub_100078E4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100078E6C(int *a1, int *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_10007834C(a1, v3 + 1);
    result = sub_100078B20(a1);
    *(result + 4 * v3) = v4;
  }

  else
  {
    result = sub_100078B20(a1);
    *(result + 4 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_100078EE0(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_10007834C(a1, v2 + 1);
  }

  result = sub_100078B20(a1) + 4 * v2;
  *a1 = v2 + 1;
  return result;
}

int *sub_100078F34(int *result)
{
  v1 = result;
  v2 = *result;
  if (*result <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = sub_10004FD04(v5, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v5);
    v2 = *v1;
  }

  *v1 = v2 - 1;
  return result;
}

void sub_100078FB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100078FC8(int *result, int a2, int a3, int *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = sub_10004FD04(v17, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v16, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = sub_10004FD04(v17, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v16, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v17);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *v7)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = sub_10004FD04(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    sub_10004FE40(&v16, &v11->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      result = sub_100078690(v7, v13);
      *a4++ = *result;
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *v7;
    while (v10 < v14)
    {
      v15 = sub_100078690(v7, v10);
      result = sub_100078D74(v7, v6, v15);
      ++v10;
      v14 = *v7;
      ++v6;
    }

    if (v14 >= 1)
    {
      *v7 = v14 - a3;
    }
  }

  return result;
}

void sub_10007916C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100079194(int *result, int a2)
{
  v3 = result;
  v4 = *result;
  if (*result < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = sub_10004FD04(v7, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
    v4 = *v3;
  }

  if (v4 >= 1)
  {
    *v3 = a2;
  }

  return result;
}

void sub_100079218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100079230(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_10004FD04(v10, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_10007834C(v3, *v3 + *a2);
    sub_1000784F0(v3, *a2);
    v6 = sub_1000785B0(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_100078B20(a2);
    return memcpy(v6, v8, 4 * *a2);
  }

  return result;
}

void sub_100079340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079360(int *a1, int *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_100078B20(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 4 * v7) = v5;
  return result;
}

void sub_1000793F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079410(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_100078B20(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 4 * v4;
}

void sub_100079498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000794B0(uint64_t result, int a2, __int32 *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v17, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v16, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (*v5 < a2)
  {
    sub_10007834C(v5, a2);
    v7 = sub_100078B20(v5) + 4 * *v5;
    result = sub_100078B20(v5);
    v9 = (result + 4 * a2 - v7) >> 2;
    if (v9 >= 1)
    {
      v10 = 0;
      v8.i32[0] = *a3;
      v11 = vdupq_n_s64(v9 - 1);
      v12 = (v9 + 3) & 0x7FFFFFFFFFFFFFFCLL;
      v13 = (v7 + 8);
      do
      {
        v14 = vdupq_n_s64(v10);
        v15 = vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090CA0)));
        if (vuzp1_s16(v15, v8).u8[0])
        {
          *(v13 - 2) = v8.i32[0];
        }

        if (vuzp1_s16(v15, v8).i8[2])
        {
          *(v13 - 1) = v8.i32[0];
        }

        if (vuzp1_s16(v8, vmovn_s64(vcgeq_u64(v11, vorrq_s8(v14, xmmword_100090C90)))).i32[1])
        {
          *v13 = v8.i32[0];
          v13[1] = v8.i32[0];
        }

        v10 += 4;
        v13 += 4;
      }

      while (v12 != v10);
    }
  }

  *v5 = a2;
  return result;
}

void sub_100079604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10007961C(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_100078B20(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_100078B20(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_1000788D4(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_100078B20(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_100079230(&v9, a1);
      *a1 = 0;
      sub_100079230(a1, a2);
      if (&v9 != a2)
      {
        sub_1000788D4(a2, &v9);
      }

      sub_100078774(&v9);
    }
  }
}

double sub_100079740(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_1000788D4(a1, a2).n128_u64[0];
  }

  return result;
}

float sub_100079750(uint64_t a1, int a2, int a3)
{
  v6 = sub_100078B20(a1);
  v7 = sub_100078B20(a1);
  result = *(v6 + 4 * a2);
  *(v6 + 4 * a2) = *(v7 + 4 * a3);
  *(v7 + 4 * a3) = result;
  return result;
}

unint64_t sub_1000797A0(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 4 * v1 + 8;
  }

  if (v2 >> 31)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_100079820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079838(int *a1, uint64_t a2)
{
  v4 = (a2 + 4);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 4 * v7);
  v9 = v5 + 4 * (v6 >> 2);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 4 * (v6 >> 2)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 2;
  if (v7 < v11)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 4 * (v6 >> 2);
}

void sub_100079910(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079928(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 2);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 4 * v6);
    v8 = v4 + 4 * (v5 >> 2);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 4 * (v5 >> 2)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 2;
    if (v6 < v10)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 2);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 4 * v12;
}

void sub_100079A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079A24(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_100079B54(a1, v4);
    sub_100079CF8(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_10007A328(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_10007A328(a2);
    memcpy(v6, v8, 8 * *a2);
  }

  return a1;
}

void sub_100079B34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100079B54(int *a1, int a2)
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
      v6 = *(sub_10007A328(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v15, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v15);
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
    v5 = (sub_10007A328(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v12 = sub_10004C500(v6, v11 & 0x7FFFFFFF8);
  }

  else
  {
    v12 = operator new(v10 + 8);
  }

  *v12 = v6;
  a1[1] = v3;
  *(a1 + 1) = v12 + 1;
  sub_10007A328(a1);
  if (*a1 >= 1)
  {
    v13 = sub_10007A328(a1);
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

void sub_100079CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079CF8(uint64_t a1, int a2)
{
  v4 = *a1;
  if (*(a1 + 4) - *a1 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1278);
    v5 = sub_10004FD04(v11, "CHECK failed: (total_size_ - current_size_) >= (n): ");
    v6 = sub_100050324(v5, *(a1 + 4));
    v7 = sub_10004FD04(v6, ", ");
    v8 = sub_100050324(v7, *a1);
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v4 = *a1;
  }

  result = *(a1 + 8) + 8 * v4;
  *a1 = v4 + a2;
  return result;
}

void sub_100079DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079DB8(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1322);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007A328(a1) + 8 * a2;
}

void sub_100079E78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079E98(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1301);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007A328(a1) + 8 * a2;
}

void sub_100079F58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100079F7C(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_10007A328(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

int *sub_100079FE4(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_10007AA38(a1, a2);
  }

  return a1;
}

int *sub_10007A01C(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_10007AA38(result, a2);
  }

  return result;
}

uint64_t sub_10007A030(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_10007A328(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_10007AA38(a1, a2);
    }
  }

  else
  {
    sub_10007A0DC(a1, a2);
  }

  return a1;
}

uint64_t sub_10007A0AC(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_10007A328(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_10007A0DC(uint64_t a1, __n128 *a2)
{
  if (a1 == a2)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1459);
    v4 = sub_10004FD04(v13, "CHECK failed: this != other: ");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (*(a1 + 4))
  {
    v5 = (sub_10007A328(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_10007A328(a2) - 8);
  }

  else
  {
    v7 = &a2->n128_u64[1];
  }

  if (v6 != *v7)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1460);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == other->GetArena(): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  v9 = *a1;
  v10 = *(a1 + 8);
  result = *a2;
  *a1 = *a2;
  a2->n128_u64[0] = v9;
  a2->n128_u64[1] = v10;
  return result;
}

void sub_10007A1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A208(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_10007A328(a2) - 8);
  }

  else
  {
    v4 = &a2->n128_u64[1];
  }

  if (*v4)
  {
    if (a2 != a1)
    {
      *a1 = 0;
      sub_10007AA38(a1, a2);
    }
  }

  else
  {
    sub_10007A0DC(a1, a2);
  }

  return a1;
}

int *sub_10007A284(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_10007A328(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_10007A328(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_10007A0DC(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_10007AA38(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_10007A328(uint64_t a1)
{
  if (*(a1 + 4) <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 352);
    v2 = sub_10004FD04(v5, "CHECK failed: (total_size_) > (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  return *(a1 + 8);
}

void sub_10007A39C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A3BC(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1308);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1309);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007A328(a1) + 8 * a2;
}

void sub_10007A47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A49C(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1315);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1316);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return sub_10007A328(a1) + 8 * a2;
}

void sub_10007A55C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A57C(_DWORD *a1, int a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1329);
    v6 = sub_10004FD04(v11, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (*a1 <= a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1330);
    v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v8 = *a3;
  result = sub_10007A328(a1);
  *(result + 8 * a2) = v8;
  return result;
}

void sub_10007A654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007A674(int *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_100079B54(a1, v3 + 1);
    result = sub_10007A328(a1);
    *(result + 8 * v3) = v4;
  }

  else
  {
    result = sub_10007A328(a1);
    *(result + 8 * v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10007A6E8(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_100079B54(a1, v2 + 1);
  }

  result = sub_10007A328(a1) + 8 * v2;
  *a1 = v2 + 1;
  return result;
}

int *sub_10007A73C(int *result)
{
  v1 = result;
  v2 = *result;
  if (*result <= 0)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1384);
    v3 = sub_10004FD04(v5, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v5);
    v2 = *v1;
  }

  *v1 = v2 - 1;
  return result;
}

void sub_10007A7B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_10007A7D0(int *result, int a2, int a3, void *a4)
{
  v6 = a2;
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1391);
    v8 = sub_10004FD04(v17, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v16, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1392);
  v9 = sub_10004FD04(v17, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v16, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v17);
LABEL_6:
  v10 = a3 + v6;
  if (a3 + v6 > *v7)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1393);
    v11 = sub_10004FD04(v17, "CHECK failed: (start + num) <= (this->current_size_): ");
    sub_10004FE40(&v16, &v11->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (a4 && a3 >= 1)
  {
    v12 = a3;
    v13 = v6;
    do
    {
      result = sub_100079E98(v7, v13);
      *a4++ = *result;
      ++v13;
      --v12;
    }

    while (v12);
  }

  if (a3 >= 1)
  {
    v14 = *v7;
    while (v10 < v14)
    {
      v15 = sub_100079E98(v7, v10);
      result = sub_10007A57C(v7, v6, v15);
      ++v10;
      v14 = *v7;
      ++v6;
    }

    if (v14 >= 1)
    {
      *v7 = v14 - a3;
    }
  }

  return result;
}

void sub_10007A974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_10007A99C(int *result, int a2)
{
  v3 = result;
  v4 = *result;
  if (*result < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v5 = sub_10004FD04(v7, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v6, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
    v4 = *v3;
  }

  if (v4 >= 1)
  {
    *v3 = a2;
  }

  return result;
}

void sub_10007AA20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_10007AA38(int *result, int *a2)
{
  v3 = result;
  if (a2 == result)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1415);
    v4 = sub_10004FD04(v10, "CHECK failed: (&other) != (this): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*a2)
  {
    v5 = *v3;
    sub_100079B54(v3, *v3 + *a2);
    sub_100079CF8(v3, *a2);
    v6 = sub_100079DB8(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_10007A328(a2);
    return memcpy(v6, v8, 8 * *a2);
  }

  return result;
}

void sub_10007AB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007AB68(int *a1, uint64_t *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_10007A328(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + 8 * v7) = v5;
  return result;
}

void sub_10007AC00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007AC18(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_10007A328(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + 8 * v4;
}

void sub_10007ACA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007ACB8(uint64_t result, int a2, uint64_t *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v17, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v16, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v17);
  }

  if (*v5 < a2)
  {
    sub_100079B54(v5, a2);
    v7 = sub_10007A328(v5) + 8 * *v5;
    result = sub_10007A328(v5);
    v8 = (result + 8 * a2 - v7) >> 3;
    v9 = v8 - 1;
    if (v8 >= 1)
    {
      v10 = 0;
      v11 = *a3;
      v12 = (v8 + 1) & 0x7FFFFFFFFFFFFFFELL;
      v13 = vdupq_n_s64(v9);
      v14 = (v7 + 8);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v10), xmmword_100090CA0)));
        if (v15.i8[0])
        {
          *(v14 - 1) = v11;
        }

        if (v15.i8[4])
        {
          *v14 = v11;
        }

        v10 += 2;
        v14 += 2;
      }

      while (v12 != v10);
    }
  }

  *v5 = a2;
  return result;
}

void sub_10007ADD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10007ADE8(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_10007A328(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_10007A328(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_10007A0DC(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_10007A328(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_10007AA38(&v9, a1);
      *a1 = 0;
      sub_10007AA38(a1, a2);
      if (&v9 != a2)
      {
        sub_10007A0DC(a2, &v9);
      }

      sub_100079F7C(&v9);
    }
  }
}

double sub_10007AF0C(uint64_t a1, __n128 *a2)
{
  if (a1 != a2)
  {
    *&result = sub_10007A0DC(a1, a2).n128_u64[0];
  }

  return result;
}

double sub_10007AF1C(uint64_t a1, int a2, int a3)
{
  v6 = sub_10007A328(a1);
  v7 = sub_10007A328(a1);
  result = *(v6 + 8 * a2);
  *(v6 + 8 * a2) = *(v7 + 8 * a3);
  *(v7 + 8 * a3) = result;
  return result;
}

unint64_t sub_10007AF6C(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 <= 0)
  {
    v2 = 0;
  }

  else
  {
    v2 = 8 * v1 + 8;
  }

  if (v2 >> 31)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v3 = sub_10004FD04(v6, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return v2;
}

void sub_10007AFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B004(int *a1, uint64_t a2)
{
  v4 = (a2 + 8);
  v5 = *(a1 + 1);
  v6 = a2 - v5;
  v7 = *a1;
  v8 = (v5 + 8 * v7);
  v9 = v5 + 8 * (v6 >> 3);
  v10 = v8 - v4;
  if (v8 != v4)
  {
    memmove((v5 + 8 * (v6 >> 3)), v4, v8 - v4);
    v5 = *(a1 + 1);
    LODWORD(v7) = *a1;
  }

  v11 = (v9 + v10 - v5) >> 3;
  if (v7 < v11)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
    v12 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
    LODWORD(v7) = *a1;
  }

  if (v7 >= 1)
  {
    *a1 = v11;
  }

  return *(a1 + 1) + 8 * (v6 >> 3);
}

void sub_10007B0DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B0F4(int *a1, _BYTE *a2, _BYTE *__src)
{
  v4 = *(a1 + 1);
  v5 = &a2[-v4];
  if (a2 == __src)
  {
    v12 = (v5 >> 3);
  }

  else
  {
    v6 = *a1;
    v7 = (v4 + 8 * v6);
    v8 = v4 + 8 * (v5 >> 3);
    v9 = v7 - __src;
    if (v7 != __src)
    {
      memmove((v4 + 8 * (v5 >> 3)), __src, v7 - __src);
      v4 = *(a1 + 1);
      LODWORD(v6) = *a1;
    }

    v10 = (v8 + v9 - v4) >> 3;
    if (v6 < v10)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1609);
      v11 = sub_10004FD04(v15, "CHECK failed: (new_size) <= (current_size_): ");
      sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
      LODWORD(v6) = *a1;
    }

    v12 = (v5 >> 3);
    if (v6 >= 1)
    {
      *a1 = v10;
    }
  }

  return *(a1 + 1) + 8 * v12;
}

void sub_10007B1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10007B1F0(void *result, uint64_t a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = a2;
  return result;
}

void *sub_10007B1FC(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100046C0C(a1, a2);
  return a1;
}

void *sub_10007B244(void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_100046C0C(a1, a2);
  return a1;
}

uint64_t *sub_10007B288(uint64_t *a1)
{
  sub_10007B2C4(a1);

  return sub_10003D264(a1);
}

void sub_10007B2C4(void *a1)
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

uint64_t sub_10007B364(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_100046908(a1);
    sub_100046C0C(a1, a2);
  }

  return a1;
}

uint64_t sub_10007B3A8(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v4 = result;
    sub_100046908(result);

    return sub_100046C0C(v4, a2);
  }

  return result;
}

void *sub_10007B3F4(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a2)
  {
    if (a2 != a1)
    {
      sub_100046908(a1);
      sub_100046C0C(a1, a2);
    }
  }

  else
  {
    sub_10003D500(a1, a2);
  }

  return a1;
}

void *sub_10007B468(void *a1, void *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (*a2)
  {
    if (a2 != a1)
    {
      sub_100046908(a1);
      sub_100046C0C(a1, a2);
    }
  }

  else
  {
    sub_10003D500(a1, a2);
  }

  return a1;
}

void *sub_10007B4D0(void *a1, void *a2)
{
  if (a1 != a2)
  {
    if (*a1 == *a2)
    {
      sub_10003D500(a1, a2);
    }

    else
    {
      sub_100046908(a1);
      sub_100046C0C(a1, a2);
    }
  }

  return a1;
}

void *sub_10007B558(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
LABEL_6:
    v8 = __OFSUB__(v6, v5);
    v9 = v6 - v5;
    if (v9 < 0 == v8)
    {
      sub_10007C9A8(a1, v9 + 1);
      v4 = *(a1 + 16);
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(a1 + 8) = v5 + 1;
    return *&v4[2 * v5 + 2];
  }

  if (v6 == *(a1 + 12))
  {
    goto LABEL_6;
  }

LABEL_8:
  ++*v4;
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v10 + 24))
  {
    sub_10007CF70(*a1, a2, a3);
  }

  result = sub_10004BF84(v10, 0x18uLL, sub_1000467B8);
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v11 = *(a1 + 8);
  v12 = *(a1 + 16) + 8 * v11;
  *(a1 + 8) = v11 + 1;
  *(v12 + 8) = result;
  return result;
}

__n128 sub_10007B658(uint64_t a1, __n128 *a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 12);
LABEL_8:
    if (v6 <= v7)
    {
      sub_10007C9A8(a1, v7 - v6 + 1);
      v5 = *(a1 + 16);
    }

    goto LABEL_10;
  }

  v6 = *(a1 + 8);
  v7 = *v5;
  if (v6 < *v5)
  {
    *(a1 + 8) = v6 + 1;
    v8 = *&v5[2 * v6 + 2];
    if (*(v8 + 23) < 0)
    {
      operator delete(*v8);
    }

    result = *a2;
    *(v8 + 16) = a2[1].n128_u64[0];
    *v8 = result;
    a2[1].n128_u8[7] = 0;
    a2->n128_u8[0] = 0;
    return result;
  }

  if (v7 == *(a1 + 12))
  {
    goto LABEL_8;
  }

LABEL_10:
  ++*v5;
  v10 = *a1;
  if (!*a1)
  {
    operator new();
  }

  if (*(v10 + 24))
  {
    sub_10007CF70(*a1, a2, a3);
  }

  v11 = sub_10004BF84(v10, 0x18uLL, sub_1000467B8);
  result = *a2;
  v11[1].n128_u64[0] = a2[1].n128_u64[0];
  *v11 = result;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  a2->n128_u64[0] = 0;
  v12 = *(a1 + 8);
  v13 = *(a1 + 16) + 8 * v12;
  *(a1 + 8) = v12 + 1;
  *(v13 + 8) = v11;
  return result;
}

uint64_t sub_10007B7A0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1713);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1714);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_10007B860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B884(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1720);
    v4 = sub_10004FD04(v8, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v7, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  if (*(a1 + 8) <= a2)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1721);
    v5 = sub_10004FD04(v8, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return *(*(a1 + 16) + 8 * a2 + 8);
}

void sub_10007B944(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007B964(uint64_t result)
{
  v1 = result;
  v2 = *(result + 8);
  if (v2 <= 0)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1773);
    v3 = sub_10004FD04(v8, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v7, &v3->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v8);
    v2 = *(v1 + 8);
  }

  v4 = v2 - 1;
  v5 = *(v1 + 16) + 8 * v4;
  *(v1 + 8) = v4;
  v6 = *(v5 + 8);
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

  return result;
}

void sub_10007BA10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BA28(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2209);
    v6 = sub_10004FD04(v13, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v12, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2210);
  v7 = sub_10004FD04(v13, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
  sub_10004FE48(v13);
LABEL_6:
  if (a3 + a2 > *(a1 + 8))
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2211);
    v8 = sub_10004FD04(v13, "CHECK failed: (start + num) <= (size()): ");
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  if (a3 >= 1)
  {
    v9 = a2;
    v10 = a3;
    do
    {
      sub_10007BBA0(a1, v9++);
      --v10;
    }

    while (v10);
  }

  return sub_10007C198(a1, a2, a3, 0);
}

void sub_10007BB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BBA0(uint64_t result, int a2)
{
  v3 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1734);
    v4 = sub_10004FD04(v9, "CHECK failed: (index) >= (0): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v9);
  }

  if (*(v3 + 8) <= a2)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1735);
    v5 = sub_10004FD04(v9, "CHECK failed: (index) < (current_size_): ");
    sub_10004FE40(&v8, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v9);
  }

  v6 = *(*(v3 + 16) + 8 * a2 + 8);
  if (v6)
  {
    v7 = *v3 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    if (*(v6 + 23) < 0)
    {
      operator delete(*v6);
    }

    operator delete();
  }

  return result;
}

void sub_10007BC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BCC0(uint64_t result, int a2)
{
  v2 = *(result + 8);
  v3 = __OFSUB__(a2, v2);
  v4 = a2 - v2;
  if (!((v4 < 0) ^ v3 | (v4 == 0)))
  {
    return sub_10007C9A8(result, v4);
  }

  return result;
}

uint64_t sub_10007BCDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10007BCF0(void *a1, unint64_t *a2)
{
  if (a1 != a2)
  {
    if (*a2 == *a1)
    {
      *&result = sub_10003D500(a1, a2).n128_u64[0];
    }

    else
    {
      sub_10007CC28(a1, a2);
    }
  }

  return result;
}

double sub_10007BD14(void *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&result = sub_10003D500(a1, a2).n128_u64[0];
  }

  return result;
}

uint64_t sub_10007BD24(uint64_t result, int a2, int a3)
{
  v3 = *(result + 16) + 8;
  v4 = *(v3 + 8 * a2);
  *(v3 + 8 * a2) = *(v3 + 8 * a3);
  *(v3 + 8 * a3) = v4;
  return result;
}

uint64_t sub_10007BD40(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t sub_10007BD5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1 + 8;
  }

  else
  {
    v2 = 0;
  }

  return v2 + 8 * *(a1 + 8);
}

uint64_t sub_10007BD7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return v1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007BD94(uint64_t a1)
{
  v1 = 8 * *(a1 + 12);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 >= 1)
    {
      v4 = 0;
      do
      {
        v1 += sub_100063DA0(*&v2[2 * v4++ + 2]) + 24;
        v2 = *(a1 + 16);
      }

      while (v4 < *v2);
    }

    v1 += 8;
  }

  return v1;
}

unint64_t sub_10007BE0C(uint64_t a1)
{
  v1 = 8 * *(a1 + 12);
  v2 = *(a1 + 16);
  if (v2)
  {
    if (*v2 >= 1)
    {
      v4 = 0;
      do
      {
        v1 += sub_100063DA0(*&v2[2 * v4++ + 2]) + 24;
        v2 = *(a1 + 16);
      }

      while (v4 < *v2);
    }

    v1 += 8;
  }

  if (v1 >> 31)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/message_lite.h", 113);
    v5 = sub_10004FD04(v8, "CHECK failed: (size) <= (static_cast<size_t>(2147483647)): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
  }

  return v1;
}

void sub_10007BED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BEEC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 0)
  {
    sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v3 = sub_10004FD04(v12, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v11, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v12);
    v2 = *(a1 + 8);
  }

  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *v4 - 1;
  *v4 = v6;
  v7 = v4 + 2;
  v8 = v2 - 1;
  *(a1 + 8) = v8;
  v9 = *&v7[2 * v8];
  if (v2 < v5)
  {
    *&v7[2 * v8] = *&v7[2 * v6];
  }

  if (*a1)
  {
    operator new();
  }

  return v9;
}

void sub_10007BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007BFE8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
    v7 = *(result + 8);
    v5 = *(result + 12);
    goto LABEL_13;
  }

  v5 = *(result + 8);
  v6 = *(result + 12);
  v7 = v5;
  if (v5 == v6)
  {
LABEL_13:
    result = sub_10007C9A8(result, v5 - v7 + 1);
    goto LABEL_14;
  }

  v8 = *v4;
  if (v8 != v6)
  {
    if (v5 >= v8)
    {
      v11 = v8 + 1;
      goto LABEL_15;
    }

    *&v4[2 * v8 + 2] = *&v4[2 * v5 + 2];
LABEL_14:
    v4 = *(v3 + 16);
    v11 = *v4 + 1;
LABEL_15:
    *v4 = v11;
    goto LABEL_16;
  }

  v9 = *&v4[2 * v5 + 2];
  if (v9)
  {
    v10 = *result == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete();
  }

LABEL_16:
  v12 = *(v3 + 8);
  *(v3 + 8) = v12 + 1;
  *&v4[2 * v12 + 2] = a2;
  return result;
}

uint64_t sub_10007C0DC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 <= 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2040);
    v3 = sub_10004FD04(v11, "CHECK failed: (current_size_) > (0): ");
    sub_10004FE40(&v10, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v2 = *(a1 + 8);
  }

  v4 = *(a1 + 16);
  v5 = *v4;
  v6 = *v4 - 1;
  *v4 = v6;
  v7 = v4 + 2;
  v8 = v2 - 1;
  *(a1 + 8) = v8;
  result = *&v7[2 * v8];
  if (v2 < v5)
  {
    *&v7[2 * v8] = *&v7[2 * v6];
  }

  return result;
}

void sub_10007C180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C198(uint64_t result, int a2, int a3, uint64_t *a4)
{
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2231);
    v8 = sub_10004FD04(v14, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v13, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v14);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2232);
  v9 = sub_10004FD04(v14, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v13, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v14);
LABEL_6:
  if (a3 + a2 > *(v7 + 8))
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2233);
    v10 = sub_10004FD04(v14, "CHECK failed: (start + num) <= (size()): ");
    sub_10004FE40(&v13, &v10->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v14);
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v11 = a3;
      if (*v7)
      {
        sub_100061EA4(v7, a2);
        operator new();
      }

      v12 = a2;
      do
      {
        *a4++ = sub_100061EA4(v7, v12++);
        --v11;
      }

      while (v11);
    }

    return sub_10007C508(v7, a2, a3);
  }

  return result;
}

void sub_10007C360(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C388(uint64_t result, int a2, int a3, uint64_t *a4)
{
  v7 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2277);
    v8 = sub_10004FD04(v14, "CHECK failed: (start) >= (0): ");
    sub_10004FE40(&v13, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v14);
    if ((a3 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a3 & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2278);
  v9 = sub_10004FD04(v14, "CHECK failed: (num) >= (0): ");
  sub_10004FE40(&v13, &v9->__r_.__value_.__l.__data_);
  result = sub_10004FE48(v14);
LABEL_6:
  if (a3 + a2 > *(v7 + 8))
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2279);
    v10 = sub_10004FD04(v14, "CHECK failed: (start + num) <= (size()): ");
    sub_10004FE40(&v13, &v10->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v14);
  }

  if (a3 >= 1)
  {
    if (a4)
    {
      v11 = a3;
      v12 = a2;
      do
      {
        *a4++ = sub_100061EA4(v7, v12++);
        --v11;
      }

      while (v11);
    }

    return sub_10007C508(v7, a2, a3);
  }

  return result;
}

void sub_10007C4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C508(uint64_t result, int a2, int a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = a3 + a2;
    LODWORD(v5) = *v3;
    if (a3 + a2 < *v3)
    {
      v6 = v4;
      v7 = 8 * v4 - 8 * a3 + 8;
      do
      {
        *(v3 + v7) = *&v3[2 * v6++ + 2];
        v3 = *(result + 16);
        v5 = *v3;
        v7 += 8;
      }

      while (v6 < v5);
    }

    *(result + 8) -= a3;
    *v3 = v5 - a3;
  }

  return result;
}

uint64_t sub_10007C56C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return (*v1 - *(a1 + 8));
  }

  else
  {
    return 0;
  }
}

void *sub_10007C590(void *result, uint64_t a2)
{
  v3 = result;
  if (*result)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2059);
    v4 = sub_10004FD04(v11, "CHECK failed: GetArena() == NULL: ");
    v5 = sub_10004FD04(v4, "AddCleared() can only be used on a RepeatedPtrField not on an arena.");
    sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  v6 = *(v3 + 16);
  if (v6)
  {
    v7 = *v6;
    if (*v6 != *(v3 + 12))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v7 = *(v3 + 12);
  }

  v8 = *(v3 + 8);
  if (v8 <= v7)
  {
    result = sub_10007C9A8(v3, v7 - v8 + 1);
    v6 = *(v3 + 16);
  }

LABEL_9:
  v9 = *v6;
  *v6 = v9 + 1;
  *&v6[2 * v9 + 2] = a2;
  return result;
}

void sub_10007C660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C67C(uint64_t a1)
{
  if (*a1)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2071);
    v2 = sub_10004FD04(v13, "CHECK failed: GetArena() == NULL: ");
    v3 = sub_10004FD04(v2, "ReleaseCleared() can only be used on a RepeatedPtrField not on ");
    v4 = sub_10004FD04(v3, "an arena.");
    sub_10004FE40(&v12, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
    if (*a1)
    {
      sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2074);
      v5 = sub_10004FD04(v13, "CHECK failed: GetArena() == NULL: ");
      sub_10004FE40(&v12, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v13);
    }
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2075);
    v7 = sub_10004FD04(v13, "CHECK failed: rep_ != NULL: ");
    sub_10004FE40(&v12, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
    v6 = *(a1 + 16);
  }

  v8 = *v6;
  if (*v6 <= *(a1 + 8))
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2076);
    v9 = sub_10004FD04(v13, "CHECK failed: (rep_->allocated_size) > (current_size_): ");
    sub_10004FE40(&v12, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
    v6 = *(a1 + 16);
    v8 = *v6;
  }

  v10 = v8 - 1;
  *v6 = v10;
  return *&v6[2 * v10 + 2];
}

void sub_10007C7F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C824(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = v3 + 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = a2 - v4;
  sub_10007BA28(a1, (a2 - v4) >> 3, ((a2 - v4 + 8) >> 3) - ((a2 - v4) >> 3));
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = v6 + 8;
  }

  else
  {
    v7 = 0;
  }

  return v7 + (v5 << 29 >> 29);
}

uint64_t sub_10007C884(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = v4 + 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = a2 - v5;
  sub_10007BA28(a1, (a2 - v5) >> 3, ((a3 - v5) >> 3) - ((a2 - v5) >> 3));
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = v7 + 8;
  }

  else
  {
    v8 = 0;
  }

  return v8 + (v6 << 29 >> 29);
}

uint64_t sub_10007C8E4(void *a1, int a2, int a3, uint64_t *a4)
{
  if (*a1)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 2268);
    v8 = sub_10004FD04(v13, "CHECK failed: GetArena() == NULL: ");
    v9 = sub_10004FD04(v8, "ExtractSubrange() when arena is non-NULL is only supported when ");
    v10 = sub_10004FD04(v9, "the Element type supplies a MergeFrom() operation to make copies.");
    sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }

  return sub_10007C388(a1, a2, a3, a4);
}

void sub_10007C990(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007C9A8(uint64_t a1, int a2)
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
        sub_10007CF9C(*a1);
      }

      v12 = sub_10004C500(v7, v11 & 0x7FFFFFFF8);
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

void *sub_10007CAA4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a1 + 12);
LABEL_6:
    if (v5 <= v6)
    {
      sub_10007C9A8(a1, v6 - v5 + 1);
      v4 = *(a1 + 16);
    }

    goto LABEL_8;
  }

  v5 = *(a1 + 8);
  v6 = *v4;
  if (v5 < *v4)
  {
    *(a1 + 8) = v5 + 1;
    return *&v4[2 * v5 + 2];
  }

  if (v6 == *(a1 + 12))
  {
    goto LABEL_6;
  }

LABEL_8:
  ++*v4;
  v8 = *a1;
  if (a2)
  {
    result = (*(*a2 + 32))(a2, *a1);
  }

  else
  {
    if (!v8)
    {
      operator new();
    }

    if (*(v8 + 24))
    {
      sub_10007CFD4(*a1);
    }

    result = sub_10004BF84(v8, 0x28uLL, sub_10006A6B4);
    *result = off_1000AE428;
    result[1] = v8;
    result[4] = 0;
    result[2] = 0;
    result[3] = 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 16) + 8 * v9;
  *(a1 + 8) = v9 + 1;
  *(v10 + 8) = result;
  return result;
}

uint64_t *sub_10007CC28(void *a1, unint64_t *a2)
{
  v4 = *a2;
  if (*a2 == *a1)
  {
    sub_10004FCEC(v8, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1685);
    v5 = sub_10004FD04(v8, "CHECK failed: other->GetArena() != GetArena(): ");
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    sub_10004FE48(v8);
    v4 = *a2;
  }

  v8[0].__r_.__value_.__r.__words[2] = 0;
  *&v8[0].__r_.__value_.__l.__data_ = v4;
  sub_100046C0C(v8, a1);
  sub_100046908(a1);
  sub_100046C0C(a1, a2);
  sub_10003D500(a2, v8);
  sub_10007B2C4(v8);
  return sub_10003D264(v8);
}

void sub_10007CCE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007CD10(uint64_t result, uint64_t a2)
{
  if (*result)
  {
    return sub_10007CD70(result, a2, 0, *result);
  }

  v2 = *(result + 16);
  if (!v2)
  {
    return sub_10007CD70(result, a2, 0, *result);
  }

  v3 = *v2;
  if (v3 >= *(result + 12))
  {
    return sub_10007CD70(result, a2, 0, *result);
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

uint64_t sub_10007CD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3 && a4)
  {
    sub_10007CEA4(a4, a2);
LABEL_9:
    v8 = a2;
    goto LABEL_15;
  }

  if (a4 == a3)
  {
    goto LABEL_9;
  }

  if (!a4)
  {
    operator new();
  }

  if (*(a4 + 24))
  {
  }

  v8 = sub_10004BF84(a4, 0x18uLL, sub_1000467B8);
  v8->__r_.__value_.__r.__words[0] = 0;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  std::string::operator=(v8, a2);
  if (!a3)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }

LABEL_15:

  return sub_10007BFE8(a1, v8);
}

uint64_t *sub_10007CEA4(uint64_t *result, uint64_t a2)
{
  if (a2)
  {
    return sub_10004C0E8(result, a2, sub_10007CEC0);
  }

  return result;
}

uint64_t sub_10007CEC0(uint64_t result)
{
  if (result)
  {
    if (*(result + 23) < 0)
    {
      operator delete(*result);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10007CF1C(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  v2 = *result;
  return result;
}

uint64_t sub_10007D00C(uint64_t result)
{
  *result = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_10007D01C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  *a1 = a2;
  *(a1 + 8) = 0;
  v5 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (a2)
  {
    sub_10004FF88(v9, &v7);
    if (*(a1 + 31) < 0)
    {
      operator delete(*v5);
    }

    *v5 = v7;
    *(v5 + 16) = v8;
  }

  return a1;
}

void sub_10007D094(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *sub_10007D0B4(_DWORD *a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = a1 + 2;
  if (*(a2 + 31) < 0)
  {
    sub_100019AD4(v3, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(v3 + 2) = *(a2 + 24);
    *v3 = v4;
  }

  return a1;
}

uint64_t sub_10007D108(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  return a1;
}

BOOL sub_10007D138(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 31);
  if (v2 >= 0)
  {
    v3 = *(a1 + 31);
  }

  else
  {
    v3 = *(a1 + 16);
  }

  v4 = *(a2 + 31);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 16);
  }

  if (v3 != v4)
  {
    return 0;
  }

  v8 = *(a1 + 8);
  v6 = (a1 + 8);
  v7 = v8;
  if (v2 < 0)
  {
    v6 = v7;
  }

  v11 = *(a2 + 8);
  v9 = (a2 + 8);
  v10 = v11;
  if (v5 < 0)
  {
    v9 = v10;
  }

  return memcmp(v6, v9, v3) == 0;
}

void sub_10007D1BC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 31);
    if (v5 < 0)
    {
      v5 = *(a1 + 16);
    }

    if (v5)
    {
      if (v3 > 0x10)
      {
        v6 = "UNKNOWN";
      }

      else
      {
        v6 = off_1000AE5A8[v3 - 1];
      }

      sub_100009A74(&v15, v6);
      v8 = std::string::append(&v15, ":");
      v9 = *&v8->__r_.__value_.__l.__data_;
      v16.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
      *&v16.__r_.__value_.__l.__data_ = v9;
      v8->__r_.__value_.__l.__size_ = 0;
      v8->__r_.__value_.__r.__words[2] = 0;
      v8->__r_.__value_.__r.__words[0] = 0;
      v10 = *(a1 + 31);
      if (v10 >= 0)
      {
        v11 = (a1 + 8);
      }

      else
      {
        v11 = *(a1 + 8);
      }

      if (v10 >= 0)
      {
        v12 = *(a1 + 31);
      }

      else
      {
        v12 = *(a1 + 16);
      }

      v13 = std::string::append(&v16, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      *(a2 + 16) = *(&v13->__r_.__value_.__l + 2);
      *a2 = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v16.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v15.__r_.__value_.__l.__data_);
      }

      return;
    }

    if (v3 > 0x10)
    {
      v7 = "UNKNOWN";
    }

    else
    {
      v7 = off_1000AE5A8[v3 - 1];
    }
  }

  else
  {
    v7 = "OK";
  }

  sub_100009A74(a2, v7);
}

void sub_10007D300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10007D334(void *a1, uint64_t a2)
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

  sub_1000192F4(a1, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return a1;
}

void sub_10007D3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10007D3BC(std::string *a1, char *__format, va_list a3)
{
  result = vsnprintf(__str, 0x400uLL, __format, a3);
  if (result > 1023)
  {
    operator new[]();
  }

  if ((result & 0x80000000) == 0)
  {
    return std::string::append(a1, __str, result);
  }

  return result;
}

std::string *sub_10007D4C4@<X0>(char *__format@<X0>, std::string *a2@<X8>, ...)
{
  va_start(va, a2);
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  return sub_10007D3BC(a2, __format, va);
}

void sub_10007D50C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10007D528(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (*(a1 + 23) < 0)
  {
    **a1 = 0;
    *(a1 + 8) = 0;
  }

  else
  {
    *a1 = 0;
    *(a1 + 23) = 0;
  }

  sub_10007D3BC(a1, a2, &a9);
  return a1;
}

std::string *sub_10007D5B4@<X0>(char *__format@<X0>, uint64_t **a2@<X1>, std::string *a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  if (v7 >= 0x21)
  {
    sub_10004FCEC(&v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringprintf.cc", 149);
    v9 = sub_10004FD04(&v19, "CHECK failed: (v.size()) <= (kStringPrintfVectorMaxArgs): ");
    v10 = sub_10004FD04(v9, "StringPrintfVector currently only supports up to ");
    v11 = sub_100050324(v10, 32);
    v12 = sub_10004FD04(v11, " arguments. ");
    v13 = sub_10004FD04(v12, "Feel free to add support for more if you need it.");
    sub_10004FE40(&v18, &v13->__r_.__value_.__l.__data_);
    sub_10004FE48(&v19);
    v5 = *a2;
    v6 = a2[1];
    v7 = 0xAAAAAAAAAAAAAAABLL * (v6 - *a2);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  if (v6 != v5)
  {
    if (v7 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v7;
    }

    v15 = &v19;
    do
    {
      v16 = v5;
      if (*(v5 + 23) < 0)
      {
        v16 = *v5;
      }

      *v15 = v16;
      v15 = (v15 + 8);
      v5 += 3;
      --v14;
    }

    while (v14);
  }

  if ((v7 & 0xFFFFFFE0) == 0)
  {
    memset_pattern16(&v19 + ((8 * v7) & 0xF8), &off_1000AE630, ((-8 - 8 * v7) & 0xF8) + 8);
  }

  return sub_10007D4C4(__format, a3, v19, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31, *(&v31 + 1), v32, *(&v32 + 1), v33, *(&v33 + 1), v34, *(&v34 + 1));
}

uint64_t sub_10007D7E4(uint64_t a1, const std::string::value_type *a2)
{
  sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 49);
  v4 = sub_10004FD04(v10, "size too big: ");
  v5 = sub_1000504A4(v4, a1);
  v6 = sub_10004FD04(v5, " details: ");
  v7 = sub_10004FD04(v6, a2);
  sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
  return sub_10004FE48(v10);
}

void sub_10007D868(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10007D880(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a2 + a4;
  a1[1] = a3 - a4;
  if (a4 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 54);
    v7 = sub_10004FD04(v11, "CHECK failed: (0) <= (pos): ");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  if (a3 < a4)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 55);
    v8 = sub_10004FD04(v11, "CHECK failed: (pos) <= (x.length_): ");
    sub_10004FE40(&v10, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  return a1;
}

void sub_10007D94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10007D970(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a3 - a4;
  if (a3 - a4 >= a5)
  {
    v9 = a5;
  }

  *a1 = a2 + a4;
  a1[1] = v9;
  if (a4 < 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 62);
    v10 = sub_10004FD04(v15, "CHECK failed: (0) <= (pos): ");
    sub_10004FE40(&v14, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (a3 < a4)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 63);
    v11 = sub_10004FD04(v15, "CHECK failed: (pos) <= (x.length_): ");
    sub_10004FE40(&v14, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  if (a5 < 0)
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/stringpiece.cc", 64);
    v12 = sub_10004FD04(v15, "CHECK failed: (len) >= (0): ");
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v15);
  }

  return a1;
}

void sub_10007DA88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007DAD4(const void **a1, const void *a2, int64_t a3)
{
  v3 = a1[1];
  v4 = &v3[-a3];
  if (v3 < a3)
  {
    return 0;
  }

  v7 = *a1;
  if (memcmp(*a1, a2, a3))
  {
    return 0;
  }

  *a1 = &v7[a3];
  a1[1] = v4;
  return 1;
}

uint64_t sub_10007DB30(void *a1, const void *a2, int64_t a3)
{
  v3 = a1[1];
  v4 = v3 - a3;
  if (v3 < a3 || memcmp((*a1 + v4), a2, a3))
  {
    return 0;
  }

  a1[1] = v4;
  return 1;
}

size_t sub_10007DB7C(void *a1, void *__dst, size_t a3, uint64_t a4)
{
  if (a1[1] - a4 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1[1] - a4;
  }

  memcpy(__dst, (*a1 + a4), v4);
  return v4;
}

uint64_t sub_10007DBE4(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  if (v4 >= 1 && v4 >= a4)
  {
    v8 = sub_10007E2B8((*a1 + a4), *a1 + v4, a2, &a2[a3]);
    if ((*a1 + a1[1]) == v8)
    {
      return -1;
    }

    else
    {
      return &v8[-*a1];
    }
  }

  else if (v4 | a4 | a3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10007DC74(uint64_t *a1, int a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < 1 || v3 <= a3)
  {
    return -1;
  }

  v6 = *a1;
  v7 = memchr((*a1 + a3), a2, v3 - a3);
  if (v7)
  {
    return v7 - v6;
  }

  else
  {
    return -1;
  }
}

uint64_t sub_10007DCD0(unsigned __int8 **a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = &v4[-a3];
  if (v4 < a3)
  {
    return -1;
  }

  if (a3)
  {
    v7 = *a1;
    if (v5 >= a4)
    {
      v5 = a4;
    }

    v8 = &v7[a3 + v5];
    if (v7 == v8)
    {
      return -1;
    }

    v11 = *a2;
    v9 = a2 + 1;
    v10 = v11;
    v12 = *a1;
    v13 = v8;
    do
    {
      v14 = v12 + 1;
      while (*v12 != v10)
      {
        ++v12;
        ++v14;
        if (v12 == v8)
        {
          goto LABEL_19;
        }
      }

      v15 = a3 - 1;
      v16 = v9;
      while (v15)
      {
        if (v14 == v8)
        {
          goto LABEL_19;
        }

        v18 = *v14++;
        v17 = v18;
        v19 = *v16++;
        --v15;
        if (v17 != v19)
        {
          goto LABEL_18;
        }
      }

      v13 = v12;
LABEL_18:
      ++v12;
    }

    while (v12 != v8);
LABEL_19:
    v20 = (v13 - v7);
    if (v13 == v8)
    {
      return -1;
    }

    else
    {
      return v20;
    }
  }

  else if (v4 >= a4)
  {
    return a4;
  }

  else
  {
    return a1[1];
  }
}

uint64_t sub_10007DD94(uint64_t *a1, unsigned __int8 a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < 1)
  {
    return -1;
  }

  if (v3 - 1 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v3 - 1;
  }

  v6 = *a1;
  while (*(v6 + result) != a2)
  {
    if (result-- <= 0)
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_10007DDD8(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, int64_t a4)
{
  v4 = a1[1];
  if (v4 < 1 || a3 < 1)
  {
    return -1;
  }

  if (a3 != 1)
  {
    memset(v9, 0, sizeof(v9));
    do
    {
      v8 = *a2++;
      *(v9 + v8) = 1;
      --a3;
    }

    while (a3);
    if (v4 > a4)
    {
      while ((*(v9 + *(*a1 + a4)) & 1) == 0)
      {
        if (v4 == ++a4)
        {
          return -1;
        }
      }

      return a4;
    }

    return -1;
  }

  v7 = *a2;

  return sub_10007DC74(a1, v7, a4);
}

uint64_t sub_10007DEF0(void *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  if (v4 < 1)
  {
    return -1;
  }

  if (a3 < 1)
  {
    return 0;
  }

  if (a3 != 1)
  {
    memset(v7, 0, sizeof(v7));
    do
    {
      v5 = *a2++;
      *(v7 + v5) = 1;
      --a3;
    }

    while (a3);
    if (v4 > a4)
    {
      while (*(v7 + *(*a1 + a4)) == 1)
      {
        if (v4 == ++a4)
        {
          return -1;
        }
      }

      return a4;
    }

    return -1;
  }

  if (v4 <= a4)
  {
    return -1;
  }

  while (*(*a1 + a4) == *a2)
  {
    if (v4 == ++a4)
    {
      return -1;
    }
  }

  return a4;
}

uint64_t sub_10007DFFC(void *a1, unsigned __int8 a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < 1 || v3 <= a3)
  {
    return -1;
  }

  while (*(*a1 + a3) == a2)
  {
    if (v3 == ++a3)
    {
      return -1;
    }
  }

  return a3;
}

uint64_t sub_10007E038(void *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v6 = v4 < 1;
  v5 = v4 - 1;
  v6 = v6 || a3 < 1;
  if (v6)
  {
    return -1;
  }

  if (a3 == 1)
  {
    if (v5 >= a4)
    {
      v5 = a4;
    }

    while (*(*a1 + v5) != *a2)
    {
      v6 = v5-- < 1;
      if (v6)
      {
        return -1;
      }
    }
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    do
    {
      v8 = *a2++;
      *(v9 + v8) = 1;
      --a3;
    }

    while (a3);
    if (v5 >= a4)
    {
      v5 = a4;
    }

    while ((*(v9 + *(*a1 + v5)) & 1) == 0)
    {
      v6 = v5-- <= 0;
      if (v6)
      {
        return -1;
      }
    }
  }

  return v5;
}

uint64_t sub_10007E13C(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, unint64_t a4)
{
  v4 = a1[1];
  v5 = v4 < 1;
  v6 = v4 - 1;
  if (v5)
  {
    return -1;
  }

  if (v6 >= a4)
  {
    result = a4;
  }

  else
  {
    result = v6;
  }

  if (a3 < 1)
  {
    return result;
  }

  if (a3 != 1)
  {
    memset(v12, 0, sizeof(v12));
    do
    {
      v10 = *a2++;
      *(v12 + v10) = 1;
      --a3;
    }

    while (a3);
    if ((result & 0x8000000000000000) == 0)
    {
      v11 = *a1;
      while (*(v12 + *(v11 + result)) == 1)
      {
        v5 = result-- <= 0;
        if (v5)
        {
          return -1;
        }
      }

      return result;
    }

    return -1;
  }

  v9 = *a1;
  while (*(v9 + result) == *a2)
  {
    v5 = result-- < 1;
    if (v5)
    {
      return -1;
    }
  }

  return result;
}

uint64_t sub_10007E23C(uint64_t *a1, unsigned __int8 a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 < 1)
  {
    return -1;
  }

  if (v3 - 1 >= a3)
  {
    result = a3;
  }

  else
  {
    result = v3 - 1;
  }

  v6 = *a1;
  while (*(v6 + result) == a2)
  {
    if (result-- <= 0)
    {
      return -1;
    }
  }

  return result;
}

unint64_t sub_10007E280(void *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1[1];
  if (v3 >= a2)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v3 - v4;
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  if ((v6 & 0x8000000000000000) != 0)
  {
    sub_10006D62C();
  }

  return *a1 + v4;
}

unsigned __int8 *sub_10007E2B8(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v4 = a4 - a3;
  if (a4 == a3)
  {
    return a1;
  }

  v5 = a2;
  if (a2 - a1 >= v4)
  {
    v6 = a2 - v4 + 1;
    if (v6 != a1)
    {
      v9 = *a3;
      v7 = a3 + 1;
      v8 = v9;
      while (*a1 != v8)
      {
LABEL_9:
        if (++a1 == v6)
        {
          return v5;
        }
      }

      v10 = a1 + 1;
      v11 = v7;
      while (v11 != a4)
      {
        v13 = *v10++;
        v12 = v13;
        v14 = *v11++;
        if (v12 != v14)
        {
          goto LABEL_9;
        }
      }

      return a1;
    }
  }

  return v5;
}

uint64_t sub_10007E34C(unsigned int *a1, _BYTE *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v4 = &a2[a3];
  if (a3 >= 7)
  {
    v5 = v4 - 7;
  }

  else
  {
    v5 = a2;
  }

  v6 = *(a1 + 4) + *a1;
  v7 = *(a1 + 7);
  v8 = a2;
  while (2)
  {
    v9 = v8 & 7;
    if ((v8 & 7) != 0 && v8 < v4)
    {
      v10 = v8 + 1;
      while (!*(v7 + *v8))
      {
        ++v8;
        v9 = v10 & 7;
        if ((v10 & 7) != 0)
        {
          ++v10;
          if (v8 < v4)
          {
            continue;
          }
        }

        goto LABEL_12;
      }

LABEL_20:
      v11 = v8;
      goto LABEL_21;
    }

LABEL_12:
    if (v9 || v8 >= v5)
    {
      goto LABEL_20;
    }

    v11 = v8 + 4;
    while (1)
    {
      v12 = *(v11 - 1);
      if ((((v12 - a1[6]) | (v12 + a1[7]) | (*v11 - a1[6]) | (*v11 + a1[7])) & 0x80808080) != 0)
      {
        break;
      }

LABEL_18:
      v13 = v11 + 2;
      v14 = v11 + 1;
      v11 += 2;
      if (v14 >= v5)
      {
        v11 = v13 - 1;
        goto LABEL_21;
      }
    }

    if (!(*(v7 + BYTE1(v12)) | *(v7 + v12) | *(v7 + BYTE2(v12)) | *(v7 + (v12 >> 24))))
    {
      if (*(v7 + BYTE1(*v11)) | *(v7 + *v11) | *(v7 + BYTE2(*v11)) | *(v7 + (*v11 >> 24)))
      {
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    --v11;
LABEL_21:
    if (v11 < v4)
    {
      v15 = v4 - v11;
      v16 = v11 - 1;
      v17 = *(a1 + 4) + *a1;
      v8 = v11;
      while (1)
      {
        v18 = *(v17 + *v8);
        if (v18 > 0xEF)
        {
          break;
        }

        ++v8;
        v17 = v6 + (v18 << a1[4]);
        ++v16;
        if (!--v15)
        {
          LODWORD(v8) = v4;
          goto LABEL_32;
        }
      }

      if (a1[1] <= v17 - v6)
      {
        do
        {
          v8 = v16;
          if (v16 <= a2)
          {
            break;
          }

          --v16;
        }

        while ((*v8 & 0xC0) == 0x80);
      }

      if (v18 != 253)
      {
        goto LABEL_42;
      }

      continue;
    }

    break;
  }

  LODWORD(v8) = v11;
  LODWORD(v17) = a1[8] + *a1;
LABEL_32:
  if (a1[1] <= v17 - v6)
  {
    if (v11 <= v4)
    {
      v19 = v4;
    }

    else
    {
      v19 = v11;
    }

    v20 = v19 - 1;
    do
    {
      v8 = v20;
      if (v20 <= a2)
      {
        break;
      }

      --v20;
    }

    while ((*v8 & 0xC0) == 0x80);
    v18 = 240;
  }

  else
  {
    v18 = 241;
  }

LABEL_42:
  *a4 = v8 - a2;
  return v18;
}

uint64_t sub_10007E570(unsigned int *a1, char *a2, int a3, _DWORD *a4)
{
  *a4 = 0;
  if (!a3)
  {
    return 241;
  }

  v8 = &a2[a3];
  if (a3 >= 7)
  {
    v9 = (v8 - 7);
  }

  else
  {
    v9 = a2;
  }

  v15 = 0;
  v10 = a2;
  do
  {
    v11 = v10 & 7;
    if ((v10 & 7) != 0 && v10 < v8)
    {
      v12 = v10 + 1;
      while ((*v10 & 0x80000000) == 0)
      {
        ++v10;
        v11 = v12 & 7;
        if ((v12 & 7) != 0)
        {
          ++v12;
          if (v10 < v8)
          {
            continue;
          }
        }

        goto LABEL_12;
      }
    }

    else
    {
LABEL_12:
      if (!v11)
      {
        while (v10 < v9 && ((*(v10 + 1) | *v10) & 0x80808080) == 0)
        {
          v10 += 8;
        }
      }
    }

    if (v10 < v8)
    {
      v13 = v8 - v10;
      while ((*v10 & 0x80000000) == 0)
      {
        ++v10;
        if (!--v13)
        {
          v10 = v8;
          break;
        }
      }
    }

    result = sub_10007E34C(a1, &a2[v10 - a2], a3 - (v10 - a2), &v15);
    v10 += v15;
  }

  while (result == 253);
  *a4 = v10 - a2;
  return result;
}

BOOL sub_10007E694(char *a1, int a2)
{
  v4 = 0;
  sub_10007E570(dword_1000AE640, a1, a2, &v4);
  return v4 == a2;
}

uint64_t sub_10007E6E4(char *a1, int a2)
{
  v3 = 0;
  sub_10007E570(dword_1000AE640, a1, a2, &v3);
  return v3;
}

char *sub_10007E720(char *a1, int a2, char *a3, char a4)
{
  v7 = a1;
  __len = 0;
  sub_10007E570(dword_1000AE640, a1, a2, &__len);
  v8 = __len;
  if (__len != a2)
  {
    memmove(a3, v7, __len);
    if (a2 > v8)
    {
      v9 = &v7[a2];
      v10 = &v7[v8];
      v11 = &a3[v8];
      do
      {
        *v11 = a4;
        v12 = v10 + 1;
        if (v9 - (v10 + 1) < 0)
        {
          sub_10006D62C();
        }

        v13 = v11 + 1;
        __len_4 = 0;
        sub_10007E570(dword_1000AE640, v10 + 1, v9 - (v10 + 1), &__len_4);
        v14 = __len_4;
        memmove(v13, v12, __len_4);
        v10 = &v12[v14];
        v11 = &v13[v14];
      }

      while (&v12[v14] < v9);
    }

    return a3;
  }

  return v7;
}

char *sub_10007E81C(char *__s1, char *__s2, char a3)
{
  v6 = __s1;
  if (__s1[23] < 0)
  {
    v6 = *__s1;
  }

  for (i = v6; ; i = result + 1)
  {
    result = strpbrk(i, __s2);
    if (!result)
    {
      break;
    }

    v9 = __s1;
    if (__s1[23] < 0)
    {
      v9 = *__s1;
    }

    v9[result - v6] = a3;
  }

  return result;
}

std::string *sub_10007E88C(std::string *this)
{
  v1 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size < 1)
  {
    if (size)
    {
      return this;
    }

    goto LABEL_24;
  }

  v3 = 0;
  while (1)
  {
    this = std::string::at(v1, v3);
    v4 = this->__r_.__value_.__s.__data_[0];
    if ((v4 - 9) >= 5 && v4 != 32)
    {
      break;
    }

    if ((size & 0x7FFFFFFF) == ++v3)
    {
      goto LABEL_24;
    }
  }

  if (size == v3)
  {
LABEL_24:
    if (SHIBYTE(v1->__r_.__value_.__r.__words[2]) < 0)
    {
      *v1->__r_.__value_.__l.__data_ = 0;
      v1->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      v1->__r_.__value_.__s.__data_[0] = 0;
      *(&v1->__r_.__value_.__s + 23) = 0;
    }

    return this;
  }

  if (v3)
  {
    this = std::string::erase(v1, 0, v3);
    LODWORD(size) = size - v3;
  }

  v5 = (size - 1);
  if (size >= 1)
  {
    for (i = 0; ; ++i)
    {
      this = std::string::at(v1, v5);
      v7 = this->__r_.__value_.__s.__data_[0];
      if ((v7 - 9) >= 5 && v7 != 32)
      {
        break;
      }

      if (v5-- <= 0)
      {
        return this;
      }
    }

    if (i)
    {

      return std::string::erase(v1, (v5 + 1), 0xFFFFFFFFFFFFFFFFLL);
    }
  }

  return this;
}

std::string *sub_10007E9C0(std::string *__str, uint64_t a2, uint64_t a3, char a4, std::string *this)
{
  v5 = this;
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if ((v7 & 0x80u) == 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  if (v9)
  {
    v11 = 0;
    while (1)
    {
      v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      v13 = v12;
      size = __str->__r_.__value_.__l.__size_;
      v15 = (v12 & 0x80u) == 0 ? __str : __str->__r_.__value_.__r.__words[0];
      v16 = (v12 & 0x80u) == 0 ? HIBYTE(__str->__r_.__value_.__r.__words[2]) : __str->__r_.__value_.__l.__size_;
      v17 = (v7 & 0x80u) == 0 ? a2 : *a2;
      v18 = (v7 & 0x80u) == 0 ? v7 : v8;
      v19 = v16 - v11;
      if (v16 < v11)
      {
        break;
      }

      v20 = v11;
      if (v18)
      {
        if (v19 < v18)
        {
          break;
        }

        v37 = __str->__r_.__value_.__l.__size_;
        v21 = v15 + v16;
        v22 = v15 + v11;
        v23 = *v17;
        while (1)
        {
          v24 = v19 - v18;
          if (v24 == -1 || (v25 = memchr(v22, v23, v24 + 1)) == 0)
          {
LABEL_41:
            v5 = this;
            size = v37;
            v13 = v12;
            goto LABEL_42;
          }

          v26 = v25;
          if (!memcmp(v25, v17, v18))
          {
            break;
          }

          v22 = v26 + 1;
          v19 = v21 - (v26 + 1);
          if (v19 < v18)
          {
            goto LABEL_41;
          }
        }

        v5 = this;
        size = v37;
        v13 = v12;
        if (v26 == v21)
        {
          break;
        }

        v20 = v26 - v15;
      }

      if (v20 == -1)
      {
        break;
      }

      std::string::append(v5, __str, v11, v20 - v11);
      v27 = *(a3 + 23);
      if (v27 >= 0)
      {
        v28 = a3;
      }

      else
      {
        v28 = *a3;
      }

      if (v27 >= 0)
      {
        v29 = *(a3 + 23);
      }

      else
      {
        v29 = *(a3 + 8);
      }

      std::string::append(v5, v28, v29);
      v7 = *(a2 + 23);
      v8 = *(a2 + 8);
      if ((v7 & 0x80u) == 0)
      {
        v30 = *(a2 + 23);
      }

      else
      {
        v30 = *(a2 + 8);
      }

      v11 = v30 + v20;
      if ((a4 & 1) == 0)
      {
        v12 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        size = __str->__r_.__value_.__l.__size_;
        v13 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
        break;
      }
    }

LABEL_42:
    if (v13 >= 0)
    {
      v31 = v12;
    }

    else
    {
      v31 = size;
    }

    return std::string::append(v5, __str, v11, v31 - v11);
  }

  else
  {
    v33 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
    if (v33 >= 0)
    {
      v34 = __str;
    }

    else
    {
      v34 = __str->__r_.__value_.__r.__words[0];
    }

    if (v33 >= 0)
    {
      v35 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v35 = __str->__r_.__value_.__l.__size_;
    }

    return std::string::append(this, v34, v35);
  }
}

std::string *sub_10007EBDC@<X0>(std::string *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, std::string *a5@<X8>)
{
  a5->__r_.__value_.__r.__words[0] = 0;
  a5->__r_.__value_.__l.__size_ = 0;
  a5->__r_.__value_.__r.__words[2] = 0;
  return sub_10007E9C0(a1, a2, a3, a4, a5);
}

void sub_10007EC0C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007EC28(unsigned __int8 *__src, uint64_t a2, char *__s, unint64_t a4)
{
  v31[0] = __src;
  v31[1] = a2;
  v7 = *__s;
  if (*__s && !__s[1])
  {
    if (a2)
    {
      v20 = __src;
      v21 = &__src[a2];
      v22 = &__src[a2];
      do
      {
        if (*v20 == v7)
        {
          v23 = v20 + 1;
        }

        else
        {
          v24 = (v20 + 1);
          while (v24 != v21)
          {
            v25 = *v24++;
            if (v25 == v7)
            {
              v23 = (v24 - 1);
              goto LABEL_27;
            }
          }

          v23 = v22;
LABEL_27:
          sub_1000307B8(__p, v20, v23 - v20);
          v27 = a4;
          sub_10008437C(&v27, __p);
          if (v30 < 0)
          {
            operator delete(__p[0]);
          }
        }

        v20 = v23;
      }

      while (v23 != v21);
    }
  }

  else
  {
    v8 = strlen(__s);
    v9 = v8;
    if ((v8 & 0x8000000000000000) != 0)
    {
      sub_10007D7E4(v8, "size_t to int conversion");
    }

    v10 = sub_10007DEF0(v31, __s, v9, 0);
    if (v10 != -1)
    {
      v11 = v10;
      while (1)
      {
        v12 = strlen(__s);
        v13 = v12;
        if ((v12 & 0x8000000000000000) != 0)
        {
          sub_10007D7E4(v12, "size_t to int conversion");
        }

        v14 = sub_10007DDD8(v31, __s, v13, v11);
        if (v14 == -1)
        {
          break;
        }

        v15 = v14;
        v27 = sub_10007E280(v31, v11, v14 - v11);
        v28 = v16;
        sub_10004FF88(&v27, __p);
        v26 = a4;
        sub_10008437C(&v26, __p);
        if (v30 < 0)
        {
          operator delete(__p[0]);
        }

        v17 = strlen(__s);
        v18 = v17;
        if ((v17 & 0x8000000000000000) != 0)
        {
          sub_10007D7E4(v17, "size_t to int conversion");
        }

        v11 = sub_10007DEF0(v31, __s, v18, v15);
        if (v11 == -1)
        {
          return;
        }
      }

      v27 = sub_10007E280(v31, v11, 0xFFFFFFFFFFFFFFFFLL);
      v28 = v19;
      sub_10004FF88(&v27, __p);
      v26 = a4;
      sub_10008437C(&v26, __p);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_10007EE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007EE70(uint64_t a1, uint64_t a2, char *__s, uint64_t a4)
{
  v16[0] = a1;
  v16[1] = a2;
  sub_10008432C(__p, __s);
  v6 = sub_10007DDD8(v16, __p[0], __p[1], 0);
  if (v6 == -1)
  {
    v8 = 0;
  }

  else
  {
    v7 = v6;
    v8 = 0;
    do
    {
      v12 = sub_10007E280(v16, v8, v7 - v8);
      v13 = v9;
      sub_10004FF88(&v12, __p);
      v11 = a4;
      sub_10008437C(&v11, __p);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }

      v8 = v7 + 1;
      sub_10008432C(__p, __s);
      v7 = sub_10007DDD8(v16, __p[0], __p[1], v7 + 1);
    }

    while (v7 != -1);
  }

  v12 = sub_10007E280(v16, v8, 0xFFFFFFFFFFFFFFFFLL);
  v13 = v10;
  sub_10004FF88(&v12, __p);
  v11 = a4;
  sub_10008437C(&v11, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10007EF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007EFB0(uint64_t *a1, char *__s, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  if (!a3)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 264);
    v7 = sub_10004FD04(v19, "CHECK failed: result != nullptr: ");
    sub_10004FE40(&v18, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
  }

  if (*(a3 + 23) < 0)
  {
    **a3 = 0;
    *(a3 + 8) = 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 23) = 0;
  }

  v8 = strlen(__s);
  if (v6 == v5)
  {
    std::string::reserve(a3, 0);
  }

  else
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = v5;
    do
    {
      if (v10)
      {
        v13 = v8;
      }

      else
      {
        v13 = 0;
      }

      v14 = *(v12 + 23);
      if (v14 < 0)
      {
        v14 = *(v5 + 8 + v10);
      }

      v11 += v13 + v14;
      v12 += 24;
      v10 += 24;
    }

    while (v12 != v6);
    std::string::reserve(a3, v11);
    v15 = 0;
    do
    {
      if (v15)
      {
        std::string::append(a3, __s, v9);
      }

      v16 = *(v5 + 23);
      if ((v16 & 0x8000000000000000) != 0)
      {
        v17 = *v5;
        v16 = *(v5 + 8);
      }

      else
      {
        v17 = v5;
      }

      std::string::append(a3, v17, v16);
      v5 += 24;
      v15 -= 24;
    }

    while (v5 != v6);
  }
}