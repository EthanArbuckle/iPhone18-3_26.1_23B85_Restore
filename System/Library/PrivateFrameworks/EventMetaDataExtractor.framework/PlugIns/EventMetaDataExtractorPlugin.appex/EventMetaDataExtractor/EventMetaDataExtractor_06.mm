void sub_1000658F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10004F860(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100065AA4(int a1)
{
  sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 534);
  v2 = sub_10004FD04(v6, "Not implemented field number ");
  v3 = sub_100050324(v2, a1);
  sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
  return sub_10004FE48(v6);
}

void sub_100065B10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_100065B38(void *a1)
{
  v1 = *a1 & 0xFFFFFFFFFFFFFFFELL;
  v2 = *(v1 + 23);
  if (v2 < 0)
  {
    v2 = *(v1 + 8);
  }

  return v2 == 0;
}

char *sub_100065B68(uint64_t *a1, uint64_t a2, void *a3)
{
  v8 = *(a2 + 4);
  result = sub_100069858(&v8, a3);
  v6 = *a1;
  v7 = a3[8];
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  *v7 = v6;
  a3[8] = v7 + 8;
  return result;
}

int *sub_100065BD4(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_100079E98(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_100065C88(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_100079E98(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100065D4C(int *a1, uint64_t a2, void *a3)
{
  v8 = *(a2 + 4);
  result = sub_100069858(&v8, a3);
  v6 = *a1;
  v7 = a3[8];
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  *v7 = v6;
  a3[8] = v7 + 4;
  return result;
}

int *sub_100065DB8(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_100078690(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_100065E6C(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_100078690(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100065F30(char *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_100069858(&v10, a3);
      v9 = sub_1000756EC(v7, v8);
      result = sub_1000698F4(v9, a3);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *sub_100065FB4(char *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_100069858(&v7, a3);
    v8 = v4[4];
    result = sub_100069858(&v8, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sub_1000756EC(v4, v5);
        result = sub_1000698F4(v6, a3);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100066050(char *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_100069858(&v10, a3);
      v9 = sub_100076EDC(v7, v8);
      result = sub_1000698F4(v9, a3);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *sub_1000660D4(char *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_100069858(&v7, a3);
    v8 = v4[4];
    result = sub_100069858(&v8, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sub_100076EDC(v4, v5);
        result = sub_1000698F4(v6, a3);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100066170(char *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_100069858(&v10, a3);
      v9 = sub_1000726BC(v7, v8);
      result = sub_100069990(v9, a3);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *sub_1000661F4(char *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_100069858(&v7, a3);
    v8 = v4[4];
    result = sub_100069858(&v8, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sub_1000726BC(v4, v5);
        result = sub_100069990(v6, a3);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *sub_100066290(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_100076EDC(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_100066344(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_100076EDC(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *sub_100066408(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_100073EE8(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_1000664BC(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_100073EE8(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100066580(char *a1, uint64_t a2, void *a3)
{
  v8 = *(a2 + 4);
  result = sub_100069858(&v8, a3);
  v6 = *a1;
  v7 = a3[8];
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  *v7 = v6;
  a3[8] = v7 + 1;
  return result;
}

int *sub_1000665EC(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_100070EE4(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 1;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_1000666A0(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_100070EE4(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 1;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100066764(char *result, uint64_t a2, void *a3)
{
  if (*(result + 2) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = sub_100069A2C(*(v10 + 8 * v8++), a3);
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

uint64_t sub_1000667F0(uint64_t a1, uint64_t a2)
{
  sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 509);
  v3 = sub_10004FD04(v9, "Not implemented field number ");
  v4 = sub_1000503A4(v3, *(a2 + 4));
  v5 = sub_10004FD04(v4, " with type ");
  v6 = sub_1000503A4(v5, *(a2 + 12));
  sub_10004FE40(&v8, &v6->__r_.__value_.__l.__data_);
  return sub_10004FE48(v9);
}

void sub_100066870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_100066888(uint64_t *a1, uint64_t a2, void *a3)
{
  v7 = *(a2 + 4);
  sub_100069858(&v7, a3);
  sub_100069AFC(*a1, *(a2 + 16), a3);
  v8 = *(a2 + 4) + 1;
  return sub_100069858(&v8, a3);
}

char *sub_1000668FC(char *result, uint64_t a2, void *a3)
{
  if (*(result + 2) >= 1)
  {
    v13 = v3;
    v14 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      v9 = *(v7 + 2);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      sub_100069AFC(*(v10 + 8 * v8), *(a2 + 16), a3);
      v12 = *(a2 + 4) + 1;
      result = sub_100069858(&v12, a3);
      ++v8;
    }

    while (v8 < *(v7 + 2));
  }

  return result;
}

uint64_t sub_1000669A4(uint64_t *a1, uint64_t a2, void *a3)
{
  v7 = *(a2 + 4);
  sub_100069858(&v7, a3);
  return sub_100069B80(*a1, *(a2 + 16), a3);
}

uint64_t sub_100066A00(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 8) >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      v9 = *(v7 + 16);
      if (v9)
      {
        v10 = v9 + 8;
      }

      else
      {
        v10 = 0;
      }

      result = sub_100069B80(*(v10 + 8 * v8++), *(a2 + 16), a3);
    }

    while (v8 < *(v7 + 8));
  }

  return result;
}

char *sub_100066A90(char *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_100069858(&v10, a3);
      v9 = sub_100073EE8(v7, v8);
      result = sub_100069858(v9, a3);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *sub_100066B14(char *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_100069858(&v7, a3);
    v8 = v4[4];
    result = sub_100069858(&v8, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sub_100073EE8(v4, v5);
        result = sub_100069858(v6, a3);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *sub_100066BB0(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_1000726BC(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 4;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_100066C64(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_1000726BC(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 4;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *sub_100066D28(int *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v12 = v3;
    v13 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v11 = *(a2 + 4);
      sub_100069858(&v11, a3);
      result = sub_1000756EC(v7, v8);
      v9 = *result;
      v10 = a3[8];
      if (*a3 <= v10)
      {
        result = sub_10004F000(a3, v10);
        v10 = result;
      }

      *v10 = v9;
      a3[8] = v10 + 8;
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

int *sub_100066DDC(int *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v8 = *(a2 + 4);
    sub_100069858(&v8, a3);
    v9 = v4[4];
    result = sub_100069858(&v9, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        result = sub_1000756EC(v4, v5);
        v6 = *result;
        v7 = a3[8];
        if (*a3 <= v7)
        {
          result = sub_10004F000(a3, v7);
          v7 = result;
        }

        *v7 = v6;
        a3[8] = v7 + 8;
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100066EA0(char *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_100069858(&v10, a3);
      v9 = sub_1000726BC(v7, v8);
      result = sub_100069C60(v9, a3);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *sub_100066F24(char *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_100069858(&v7, a3);
    v8 = v4[4];
    result = sub_100069858(&v8, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sub_1000726BC(v4, v5);
        result = sub_100069C60(v6, a3);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

char *sub_100066FC0(char *result, uint64_t a2, void *a3)
{
  if (*result >= 1)
  {
    v11 = v3;
    v12 = v4;
    v7 = result;
    v8 = 0;
    do
    {
      v10 = *(a2 + 4);
      sub_100069858(&v10, a3);
      v9 = sub_1000756EC(v7, v8);
      result = sub_100069D04(v9, a3);
      ++v8;
    }

    while (v8 < *v7);
  }

  return result;
}

char *sub_100067044(char *result, uint64_t a2, void *a3)
{
  if (*result)
  {
    v4 = result;
    v7 = *(a2 + 4);
    sub_100069858(&v7, a3);
    v8 = v4[4];
    result = sub_100069858(&v8, a3);
    if (*v4 >= 1)
    {
      v5 = 0;
      do
      {
        v6 = sub_1000756EC(v4, v5);
        result = sub_100069D04(v6, a3);
        ++v5;
      }

      while (v5 < *v4);
    }
  }

  return result;
}

int *sub_1000670E0(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = sub_100079E98(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t sub_1000671B0(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_100079E98(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_1000672DC(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            v9 = (v9 + 1);
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = sub_100078690(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_1000673AC(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_100078690(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unint64_t *sub_1000674D8(unint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return sub_100069E0C(a1, a3);
}

unint64_t *sub_100067540(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = sub_1000756EC(v5, v6);
      result = sub_100069E0C(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_100067608(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = sub_1000756EC(v4, v16);
        result = sub_100069E0C(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

unint64_t *sub_10006772C(unint64_t *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = sub_100076EDC(v5, v6);
      result = sub_100069E0C(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_1000677F4(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = sub_100076EDC(v4, v16);
        result = sub_100069E0C(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_100067918(int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return sub_100069E70(a1, a3);
}

int *sub_100067980(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = sub_1000726BC(v5, v6);
      result = sub_100069E70(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_100067A48(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = sub_1000726BC(v4, v16);
        result = sub_100069E70(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_100067B6C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = sub_100076EDC(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t sub_100067C3C(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_100076EDC(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_100067D68(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            v9 = (v9 + 1);
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = sub_100073EE8(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_100067E38(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_100073EE8(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_100067F64(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = sub_100070EE4(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t sub_100068034(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_100070EE4(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

char *sub_100068160(void *a1, uint64_t a2, char **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = sub_10004F864(*a1 & 0xFFFFFFFFFFFFFFFELL, v6);
  *a3 = result;
  return result;
}

char *sub_1000681F0(char *result, uint64_t a2, char **a3)
{
  if (*(result + 2) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(v5 + 2);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      result = sub_10004F864(*(v14 + 8 * v6), v9);
      v7 = result;
      *a3 = result;
      ++v6;
    }

    while (v6 < *(v5 + 2));
  }

  return result;
}

uint64_t sub_1000682C4(uint64_t a1, uint64_t a2)
{
  sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 509);
  v3 = sub_10004FD04(v9, "Not implemented field number ");
  v4 = sub_1000503A4(v3, *(a2 + 4));
  v5 = sub_10004FD04(v4, " with type ");
  v6 = sub_1000503A4(v5, *(a2 + 12));
  sub_10004FE40(&v8, &v6->__r_.__value_.__l.__data_);
  return sub_10004FE48(v9);
}

void sub_100068344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006835C(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *(a2 + 4);
  v6 = *a3;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x80;
    v8 = v5 >> 7;
    if (v5 >> 14)
    {
      v7 = v6 + 2;
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
      v6[1] = v8;
      v7 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5;
    v7 = v6 + 1;
  }

  *a3 = v7;
  result = sub_100069ED4(*a1, *(a2 + 16), a3);
  v12 = *(a2 + 4) + 1;
  v13 = *a3;
  if (v12 > 0x7F)
  {
    *v13 = v12 | 0x80;
    v15 = v12 >> 7;
    if (v12 >> 14)
    {
      v14 = v13 + 2;
      do
      {
        *(v14 - 1) = v15 | 0x80;
        v16 = v15 >> 7;
        ++v14;
        v17 = v15 >> 14;
        v15 >>= 7;
      }

      while (v17);
      *(v14 - 1) = v16;
    }

    else
    {
      v13[1] = v15;
      v14 = v13 + 2;
    }
  }

  else
  {
    *v13 = v12;
    v14 = v13 + 1;
  }

  *a3 = v14;
  return result;
}

uint64_t sub_100068454(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 8) >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      v13 = *(v5 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      result = sub_100069ED4(*(v14 + 8 * v6), *(a2 + 16), a3);
      v15 = *(a2 + 4) + 1;
      v16 = *a3;
      if (v15 > 0x7F)
      {
        *v16 = v15 | 0x80;
        v17 = v15 >> 7;
        if (v15 >> 14)
        {
          v7 = v16 + 2;
          do
          {
            *(v7 - 1) = v17 | 0x80;
            v18 = v17 >> 7;
            ++v7;
            v19 = v17 >> 14;
            v17 >>= 7;
          }

          while (v19);
          *(v7 - 1) = v18;
        }

        else
        {
          v16[1] = v17;
          v7 = v16 + 2;
        }
      }

      else
      {
        *v16 = v15;
        v7 = v16 + 1;
      }

      *a3 = v7;
      ++v6;
    }

    while (v6 < *(v5 + 8));
  }

  return result;
}

uint64_t sub_10006858C(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return sub_100069F38(*a1, *(a2 + 16), a3);
}

uint64_t sub_1000685F8(uint64_t result, uint64_t a2, void *a3)
{
  if (*(result + 8) >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = *(v5 + 16);
      if (v13)
      {
        v14 = v13 + 8;
      }

      else
      {
        v14 = 0;
      }

      result = sub_100069F38(*(v14 + 8 * v6++), *(a2 + 16), a3);
    }

    while (v6 < *(v5 + 8));
  }

  return result;
}

unsigned int *sub_1000686CC(unsigned int *a1, uint64_t a2, _BYTE **a3)
{
  v3 = *(a2 + 4);
  v4 = *a3;
  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  *a3 = v5;
  return sub_100069DA8(a1, a3);
}

unsigned int *sub_100068734(unsigned int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    do
    {
      v7 = *(a2 + 4);
      v8 = *a3;
      if (v7 > 0x7F)
      {
        *v8 = v7 | 0x80;
        v10 = v7 >> 7;
        if (v7 >> 14)
        {
          v9 = v8 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v8[1] = v10;
          v9 = v8 + 2;
        }
      }

      else
      {
        *v8 = v7;
        v9 = v8 + 1;
      }

      *a3 = v9;
      v13 = sub_100073EE8(v5, v6);
      result = sub_100069DA8(v13, a3);
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_1000687FC(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = sub_100073EE8(v4, v16);
        result = sub_100069DA8(v17, a3);
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_100068920(int *result, uint64_t a2, int **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = (v7 + 2);
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            v9 = (v9 + 1);
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          *(v7 + 1) = v10;
          v9 = (v7 + 2);
        }
      }

      else
      {
        *v7 = v8;
        v9 = (v7 + 1);
      }

      *a3 = v9;
      result = sub_1000726BC(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_1000689F0(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_1000726BC(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

int *sub_100068B1C(int *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    v7 = *a3;
    do
    {
      v8 = *(a2 + 4);
      if (v8 > 0x7F)
      {
        *v7 = v8 | 0x80;
        v10 = v8 >> 7;
        if (v8 >> 14)
        {
          v9 = v7 + 2;
          do
          {
            *(v9 - 1) = v10 | 0x80;
            v11 = v10 >> 7;
            ++v9;
            v12 = v10 >> 14;
            v10 >>= 7;
          }

          while (v12);
          *(v9 - 1) = v11;
        }

        else
        {
          v7[1] = v10;
          v9 = v7 + 2;
        }
      }

      else
      {
        *v7 = v8;
        v9 = v7 + 1;
      }

      *a3 = v9;
      result = sub_1000756EC(v5, v6);
      v13 = *a3;
      *v13 = *result;
      v7 = v13 + 1;
      *a3 = v7;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

uint64_t sub_100068BEC(uint64_t result, uint64_t a2, _BYTE **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        v6[1] = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = *(result + 16);
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = v7 + 2;
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
        v7[1] = v13;
        v12 = v7 + 2;
      }
    }

    else
    {
      *v7 = v11;
      v12 = v7 + 1;
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        result = sub_1000756EC(v4, v16);
        v17 = *a3;
        *v17 = *result;
        *a3 = v17 + 1;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

_BYTE *sub_100068D18(int *a1, uint64_t a2, _BYTE **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = sub_10006A08C(a1, v6);
  *a3 = result;
  return result;
}

_BYTE *sub_100068DA0(_BYTE *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    result = *a3;
    do
    {
      v7 = *(a2 + 4);
      if (v7 > 0x7F)
      {
        *result = v7 | 0x80;
        v9 = v7 >> 7;
        if (v7 >> 14)
        {
          v8 = result + 2;
          do
          {
            *(v8 - 1) = v9 | 0x80;
            v10 = v9 >> 7;
            ++v8;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
          *(v8 - 1) = v10;
        }

        else
        {
          result[1] = v9;
          v8 = result + 2;
        }
      }

      else
      {
        *result = v7;
        v8 = result + 1;
      }

      *a3 = v8;
      v12 = sub_1000726BC(v5, v6);
      result = sub_10006A08C(v12, *a3);
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_100068E6C(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = sub_1000726BC(v4, v16);
        result = sub_10006A08C(v17, *a3);
        *a3 = result;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

_BYTE *sub_100068F94(uint64_t *a1, uint64_t a2, _BYTE **a3)
{
  v4 = *(a2 + 4);
  v5 = *a3;
  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *a3 = v6;
  result = sub_10006A0F4(a1, v6);
  *a3 = result;
  return result;
}

_BYTE *sub_10006901C(_BYTE *result, uint64_t a2, _BYTE **a3)
{
  if (*result >= 1)
  {
    v5 = result;
    v6 = 0;
    result = *a3;
    do
    {
      v7 = *(a2 + 4);
      if (v7 > 0x7F)
      {
        *result = v7 | 0x80;
        v9 = v7 >> 7;
        if (v7 >> 14)
        {
          v8 = result + 2;
          do
          {
            *(v8 - 1) = v9 | 0x80;
            v10 = v9 >> 7;
            ++v8;
            v11 = v9 >> 14;
            v9 >>= 7;
          }

          while (v11);
          *(v8 - 1) = v10;
        }

        else
        {
          result[1] = v9;
          v8 = result + 2;
        }
      }

      else
      {
        *result = v7;
        v8 = result + 1;
      }

      *a3 = v8;
      v12 = sub_1000756EC(v5, v6);
      result = sub_10006A0F4(v12, *a3);
      *a3 = result;
      ++v6;
    }

    while (v6 < *v5);
  }

  return result;
}

int *sub_1000690E8(int *result, uint64_t a2, int **a3)
{
  if (*result)
  {
    v4 = result;
    v5 = *(a2 + 4);
    v6 = *a3;
    if (v5 > 0x7F)
    {
      *v6 = v5 | 0x80;
      v8 = v5 >> 7;
      if (v5 >> 14)
      {
        v7 = v6 + 2;
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
        *(v6 + 1) = v8;
        v7 = v6 + 2;
      }
    }

    else
    {
      *v6 = v5;
      v7 = v6 + 1;
    }

    v11 = result[4];
    if (v11 > 0x7F)
    {
      *v7 = v11 | 0x80;
      v13 = v11 >> 7;
      if (v11 >> 14)
      {
        v12 = (v7 + 2);
        do
        {
          *(v12 - 1) = v13 | 0x80;
          v14 = v13 >> 7;
          v12 = (v12 + 1);
          v15 = v13 >> 14;
          v13 >>= 7;
        }

        while (v15);
        *(v12 - 1) = v14;
      }

      else
      {
        v7[1] = v13;
        v12 = (v7 + 2);
      }
    }

    else
    {
      *v7 = v11;
      v12 = (v7 + 1);
    }

    *a3 = v12;
    if (*result >= 1)
    {
      v16 = 0;
      do
      {
        v17 = sub_1000756EC(v4, v16);
        result = sub_10006A0F4(v17, *a3);
        *a3 = result;
        ++v16;
      }

      while (v16 < *v4);
    }
  }

  return result;
}

char *sub_100069210(uint64_t a1, unsigned int a2, signed int a3, int a4, uint64_t a5)
{
  result = sub_10005D814(a1 + a2, a3, a4, *(a5 + 64), a5);
  *(a5 + 64) = result;
  return result;
}

char *sub_10006924C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + a2);
  if (v6)
  {
    v7 = ((v6 & 0xFFFFFFFFFFFFFFFELL) + 8);
  }

  else
  {
    if ((atomic_load_explicit(byte_1000B6A60, memory_order_acquire) & 1) == 0)
    {
      sub_100063CF4();
    }

    v7 = &qword_1000B6A48;
  }

  v8 = *(v7 + 23);
  if (v8 >= 0)
  {
    v9 = v7;
  }

  else
  {
    v9 = *v7;
  }

  if (v8 >= 0)
  {
    LODWORD(v10) = *(v7 + 23);
  }

  else
  {
    v10 = v7[1];
  }

  v11 = *(a5 + 64);
  if (*a5 - v11 < v10)
  {
    result = sub_10004F118(a5, v9, v10, *(a5 + 64));
  }

  else
  {
    v12 = v10;
    memcpy(*(a5 + 64), v9, v10);
    result = (v11 + v12);
  }

  *(a5 + 64) = result;
  return result;
}

uint64_t sub_1000692FC(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = (*(*a1 + 24))(a1);
  (*(*v2 + 64))(v2, a1);
  return v2;
}

uint64_t sub_10006937C(uint64_t a1, uint64_t a2)
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

uint64_t sub_100069508(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (v6)
  {
    v6 = *(v6 & 0xFFFFFFFFFFFFFFFELL);
  }

  if (v6 != a3)
  {
    sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 722);
    v7 = sub_10004FD04(v12, "CHECK failed: submessage->GetArena() == submessage_arena: ");
    sub_10004FE40(&v11, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v12);
  }

  if (a1 == a3)
  {
    sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 723);
    v8 = sub_10004FD04(v12, "CHECK failed: message_arena != submessage_arena: ");
    sub_10004FE40(&v11, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v12);
    if (!a1)
    {
LABEL_11:
      v9 = (*(*v4 + 32))(v4, a1);
      (*(*v9 + 64))(v9, v4);
      return v9;
    }
  }

  else if (!a1)
  {
    goto LABEL_11;
  }

  if (a3)
  {
    goto LABEL_11;
  }

  sub_100058024(a1, v4);
  return v4;
}

void sub_10006965C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10006967C(_DWORD *a1)
{
  if ((atomic_load_explicit(&qword_1000B65F0, memory_order_acquire) & 1) == 0)
  {
    sub_10006A15C();
  }

  v2 = pthread_self();
  if (qword_1000B65F8 == v2)
  {
    if (*a1 != 1)
    {
      sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/generated_message_util.cc", 785);
      v3 = sub_10004FD04(v5, "CHECK failed: (scc->visit_status.load(std::memory_order_relaxed)) == (SCCInfoBase::kRunning): ");
      sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
      sub_10004FE48(v5);
    }
  }

  else
  {
    if ((atomic_load_explicit(byte_1000B6A60, memory_order_acquire) & 1) == 0)
    {
      sub_100063CF4();
    }

    std::mutex::lock(&stru_1000B5980);
    qword_1000B65F8 = v2;
    sub_1000697A0(a1);
    qword_1000B65F8 = 0;

    std::mutex::unlock(&stru_1000B5980);
  }
}

void sub_100069784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

_DWORD *sub_1000697A0(_DWORD *result)
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
          sub_1000697A0();
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
          sub_1000697A0();
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

char *sub_100069858(char *result, void *a2)
{
  v3 = *result;
  v4 = a2[8];
  if (*a2 <= v4)
  {
    result = sub_10004F000(a2, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  a2[8] = v5;
  return result;
}

char *sub_1000698F4(char *result, void *a2)
{
  v3 = *result;
  v4 = a2[8];
  if (*a2 <= v4)
  {
    result = sub_10004F000(a2, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  a2[8] = v5;
  return result;
}

char *sub_100069990(char *result, void *a2)
{
  v3 = *result;
  v4 = a2[8];
  if (*a2 <= v4)
  {
    result = sub_10004F000(a2, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  a2[8] = v5;
  return result;
}

char *sub_100069A2C(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    v4 = *(a1 + 8);
  }

  v5 = *(a2 + 64);
  if (*a2 <= v5)
  {
    v5 = sub_10004F000(a2, *(a2 + 64));
  }

  if (v4 > 0x7F)
  {
    *v5 = v4 | 0x80;
    v7 = v4 >> 7;
    if (v4 >> 14)
    {
      v6 = v5 + 2;
      do
      {
        *(v6 - 1) = v7 | 0x80;
        v8 = v7 >> 7;
        ++v6;
        v9 = v7 >> 14;
        v7 >>= 7;
      }

      while (v9);
      *(v6 - 1) = v8;
    }

    else
    {
      v5[1] = v7;
      v6 = v5 + 2;
    }
  }

  else
  {
    *v5 = v4;
    v6 = v5 + 1;
  }

  *(a2 + 64) = v6;
  v10 = *(v3 + 23);
  if (v10 < 0)
  {
    v11 = v3;
    v3 = *v3;
    v10 = v11[1];
  }

  result = sub_10004F4E8(a2, v3, v10, v6);
  *(a2 + 64) = result;
  return result;
}

uint64_t sub_100069AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = (*a2 - 1);
    v5 = *(a2 + 8) + 24;

    return sub_100063F28(a1, v5, v4, a3);
  }

  else
  {
    result = (*(*a1 + 96))(a1, *(a3 + 64), a3);
    *(a3 + 64) = result;
  }

  return result;
}

uint64_t sub_100069B80(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v6 = *(a2 + 8);
    v9 = *(a1 + *v6);
    sub_100069858(&v9, a3);
    return sub_100063F28(a1, v6 + 6, (*a2 - 1), a3);
  }

  else
  {
    v8 = (*(*a1 + 80))(a1);
    sub_100069858(&v8, a3);
    result = (*(*a1 + 96))(a1, a3[8], a3);
    a3[8] = result;
  }

  return result;
}

char *sub_100069C60(char *result, void *a2)
{
  v3 = (2 * *result) ^ (*result >> 31);
  v4 = a2[8];
  if (*a2 <= v4)
  {
    result = sub_10004F000(a2, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  a2[8] = v5;
  return result;
}

char *sub_100069D04(char *result, void *a2)
{
  v3 = (2 * *result) ^ (*result >> 63);
  v4 = a2[8];
  if (*a2 <= v4)
  {
    result = sub_10004F000(a2, v4);
    v4 = result;
  }

  if (v3 > 0x7F)
  {
    *v4 = v3 | 0x80;
    v6 = v3 >> 7;
    if (v3 >> 14)
    {
      v5 = v4 + 2;
      do
      {
        *(v5 - 1) = v6 | 0x80;
        v7 = v6 >> 7;
        ++v5;
        v8 = v6 >> 14;
        v6 >>= 7;
      }

      while (v8);
      *(v5 - 1) = v7;
    }

    else
    {
      v4[1] = v6;
      v5 = v4 + 2;
    }
  }

  else
  {
    *v4 = v3;
    v5 = v4 + 1;
  }

  a2[8] = v5;
  return result;
}

unsigned int *sub_100069DA8(unsigned int *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (*result > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

unint64_t *sub_100069E0C(unint64_t *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (*result > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

int *sub_100069E70(int *result, _BYTE **a2)
{
  v2 = *a2;
  v3 = *result;
  if (v3 > 0x7F)
  {
    *v2 = v3 | 0x80;
    v5 = v3 >> 7;
    if (v3 >> 14)
    {
      v4 = v2 + 2;
      do
      {
        *(v4 - 1) = v5 | 0x80;
        v6 = v5 >> 7;
        ++v4;
        v7 = v5 >> 14;
        v5 >>= 7;
      }

      while (v7);
      *(v4 - 1) = v6;
    }

    else
    {
      v2[1] = v5;
      v4 = v2 + 2;
    }
  }

  else
  {
    *v2 = v3;
    v4 = v2 + 1;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_100069ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    result = sub_100064988(a1, *(a2 + 8) + 24, (*a2 - 1), *(a3 + 8), *a3);
    *a3 = result;
  }

  else
  {

    return sub_100063E24(a1, a3);
  }

  return result;
}

uint64_t sub_100069F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = *(a2 + 8);
    v6 = *(a1 + *v5);
    v7 = *a3;
    if (v6 > 0x7F)
    {
      *v7 = v6 | 0x80;
      v12 = v6 >> 7;
      if (v6 >> 14)
      {
        v8 = v7 + 2;
        do
        {
          *(v8 - 1) = v12 | 0x80;
          v14 = v12 >> 7;
          ++v8;
          v15 = v12 >> 14;
          v12 >>= 7;
        }

        while (v15);
        *(v8 - 1) = v14;
      }

      else
      {
        v7[1] = v12;
        v8 = v7 + 2;
      }
    }

    else
    {
      *v7 = v6;
      v8 = v7 + 1;
    }

    *a3 = v8;
    result = sub_100064988(a1, v5 + 6, (*a2 - 1), *(a3 + 8), v8);
    *a3 = result;
  }

  else
  {
    v9 = (*(*a1 + 80))(a1);
    v10 = *a3;
    if (v9 > 0x7F)
    {
      *v10 = v9 | 0x80;
      v13 = v9 >> 7;
      if (v9 >> 14)
      {
        v11 = v10 + 2;
        do
        {
          *(v11 - 1) = v13 | 0x80;
          v17 = v13 >> 7;
          ++v11;
          v18 = v13 >> 14;
          v13 >>= 7;
        }

        while (v18);
        *(v11 - 1) = v17;
      }

      else
      {
        v10[1] = v13;
        v11 = v10 + 2;
      }
    }

    else
    {
      *v10 = v9;
      v11 = v10 + 1;
    }

    *a3 = v11;

    return sub_100063E24(a1, a3);
  }

  return result;
}

_BYTE *sub_10006A08C(int *a1, _BYTE *a2)
{
  v2 = (2 * *a1) ^ (*a1 >> 31);
  if (v2 > 0x7F)
  {
    *a2 = v2 | 0x80;
    v4 = v2 >> 7;
    if (v2 >> 14)
    {
      v3 = a2 + 2;
      do
      {
        *(v3 - 1) = v4 | 0x80;
        v5 = v4 >> 7;
        ++v3;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
      *(v3 - 1) = v5;
    }

    else
    {
      a2[1] = v4;
      return a2 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a2 + 1;
  }

  return v3;
}

_BYTE *sub_10006A0F4(uint64_t *a1, _BYTE *a2)
{
  v2 = (2 * *a1) ^ (*a1 >> 63);
  if (v2 > 0x7F)
  {
    *a2 = v2 | 0x80;
    v4 = v2 >> 7;
    if (v2 >> 14)
    {
      v3 = a2 + 2;
      do
      {
        *(v3 - 1) = v4 | 0x80;
        v5 = v4 >> 7;
        ++v3;
        v6 = v4 >> 14;
        v4 >>= 7;
      }

      while (v6);
      *(v3 - 1) = v5;
    }

    else
    {
      a2[1] = v4;
      return a2 + 2;
    }
  }

  else
  {
    *a2 = v2;
    return a2 + 1;
  }

  return v3;
}

void sub_10006A15C()
{
  if (__cxa_guard_acquire(&qword_1000B65F0))
  {
    __cxa_atexit(std::mutex::~mutex, &unk_1000B5980, &_mh_execute_header);

    __cxa_guard_release(&qword_1000B65F0);
  }
}

void sub_10006A1F8()
{
  qword_1000B6A70 = 0;
  unk_1000B6A78 = 0;
  qword_1000B6A68 = off_1000AE428;
  qword_1000B6A80 = 0;
  unk_1000B6A88 = 0;
}

uint64_t *sub_10006A228()
{
  if (atomic_load_explicit(&qword_1000B6A90, memory_order_acquire) != -1)
  {
    v4[1] = v0;
    v4[2] = v1;
    v3 = v4;
    v4[0] = sub_10006A1F8;
    std::__call_once(&qword_1000B6A90, &v3, sub_10006A6D8);
  }

  return &qword_1000B6A68;
}

uint64_t sub_10006A298(uint64_t a1)
{
  *a1 = off_1000AE428;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_10006A2E8(uint64_t a1)
{
  *a1 = off_1000AE428;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void *sub_10006A3B4(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    operator new();
  }

  if (*(a2 + 24))
  {
    sub_10006A6E4(a2);
  }

  result = sub_10004BF84(a2, 0x28uLL, sub_10006A6B4);
  *result = off_1000AE428;
  result[1] = a2;
  result[3] = 0;
  result[4] = 0;
  result[2] = 0;
  return result;
}

uint64_t sub_10006A448(uint64_t result)
{
  if (*(result + 39) < 0)
  {
    **(result + 16) = 0;
    *(result + 24) = 0;
  }

  else
  {
    *(result + 16) = 0;
    *(result + 39) = 0;
  }

  return result;
}

std::string *sub_10006A474(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v2 = a2 + 16;
  v3 = v4;
  v5 = *(v2 + 8);
  if (*(v2 + 23) >= 0)
  {
    v6 = *(v2 + 23);
  }

  else
  {
    v2 = v3;
    v6 = v5;
  }

  return std::string::append((a1 + 16), v2, v6);
}

uint64_t sub_10006A498(uint64_t a1)
{
  result = *(a1 + 39);
  if (result < 0)
  {
    return *(a1 + 24);
  }

  return result;
}

uint64_t sub_10006A4B0(uint64_t a1)
{
  result = *(a1 + 39);
  if (result < 0)
  {
    return *(a1 + 24);
  }

  return result;
}

char *sub_10006A4C8(uint64_t a1, char *__dst, uint64_t *a3)
{
  v4 = *(a1 + 39);
  if (v4 < 0)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 24);
  }

  else
  {
    v5 = (a1 + 16);
  }

  if (*a3 - __dst < v4)
  {

    return sub_10004F118(a3, v5, v4, __dst);
  }

  else
  {
    v6 = v4;
    memcpy(__dst, v5, v4);
    return &__dst[v6];
  }
}

uint64_t sub_10006A548(uint64_t a1, std::string::value_type *__s, std::string **a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 28);
  if (&__s[-v3] > v4)
  {
    return 0;
  }

  v7 = __s;
  if (v4 < 17)
  {
LABEL_9:
    v5 = v3 + v4;
    v12 = v3 + v4 - v7;
    if (v3 + v4 < v7)
    {
      sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 358);
      v13 = sub_10004FD04(v16, "CHECK failed: end >= ptr: ");
      sub_10004FE40(&v15, &v13->__r_.__value_.__l.__data_);
      sub_10004FE48(v16);
    }

    std::string::append(*a3, v7, v12);
  }

  else
  {
    while (1)
    {
      v9 = *(a1 + 8) - v7 + 16;
      if (v9 < 0)
      {
        sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 351);
        v10 = sub_10004FD04(v16, "CHECK failed: (chunk_size) >= (0): ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(v16);
      }

      std::string::append(*a3, v7, v9);
      v11 = sub_10006D6B8(a1);
      if (!v11)
      {
        return *a1;
      }

      v7 = (v11 + 1);
      v4 = *(a1 + 28);
      if (v4 < 17)
      {
        v3 = *(a1 + 8);
        goto LABEL_9;
      }
    }
  }

  return v5;
}

void sub_10006A694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t sub_10006A71C(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, void *a5, unint64_t *a6)
{
  v6 = a2;
  v7 = result;
  if (!(a3 | a4))
  {
    sub_10004FCEC(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 86);
    v8 = sub_10004FD04(v45, "Division or mod by zero: dividend.hi=");
    v9 = sub_1000506A4(v8, v6);
    v10 = sub_10004FD04(v9, ", lo=");
    v11 = sub_1000506A4(v10, v7);
    sub_10004FE40(&v44, &v11->__r_.__value_.__l.__data_);
    return sub_10004FE48(v45);
  }

  v16 = result < a3;
  if (a2 != a4)
  {
    v16 = a2 < a4;
  }

  if (!v16)
  {
    if (a2)
    {
      v17 = HIDWORD(a2);
      if (!HIDWORD(a2))
      {
        v17 = a2;
      }

      if (v17 >> 16)
      {
        v18 = (32 * (HIDWORD(a2) != 0)) | 0x10;
      }

      else
      {
        v18 = 32 * (HIDWORD(a2) != 0);
      }

      if (v17 >> 16)
      {
        LODWORD(v17) = WORD1(v17);
      }

      if (v17 > 0xFF)
      {
        v18 |= 8u;
        LODWORD(v17) = v17 >> 8;
      }

      if (v17 > 0xF)
      {
        v18 |= 4u;
        LOBYTE(v17) = v17 >> 4;
      }

      v19 = v18 + ((0x3333333322221100uLL >> (4 * v17)) & 3) + 64;
      if (a4)
      {
LABEL_20:
        v20 = HIDWORD(a4);
        if (!HIDWORD(a4))
        {
          v20 = a4;
        }

        if (v20 >> 16)
        {
          v21 = (32 * (HIDWORD(a4) != 0)) | 0x10;
        }

        else
        {
          v21 = 32 * (HIDWORD(a4) != 0);
        }

        if (v20 >> 16)
        {
          LODWORD(v20) = WORD1(v20);
        }

        if (v20 > 0xFF)
        {
          v21 |= 8u;
          LODWORD(v20) = v20 >> 8;
        }

        if (v20 > 0xF)
        {
          v21 |= 4u;
          LOBYTE(v20) = v20 >> 4;
        }

        v22 = v21 + ((0x3333333322221100uLL >> (4 * v20)) & 3) + 64;
LABEL_60:
        v29 = (v19 - v22);
        if (v19 - v22 < 0)
        {
          v31 = 0;
          v30 = 0;
        }

        else
        {
          v30 = 0;
          v31 = 0;
          v32 = v29 + 1;
          do
          {
            *(&v33 + 1) = v30;
            *&v33 = v31;
            v30 = v33 >> 63;
            v31 *= 2;
            v34 = a3 << v29;
            if (v29 <= 0x7F)
            {
              v35 = a3 << v29;
            }

            else
            {
              v35 = 0;
            }

            v36 = (a4 << v29) | (a3 >> 1 >> ~v29);
            if (!v29)
            {
              v36 = a4;
              v34 = a3;
            }

            if (v29 > 0x3F)
            {
              v34 = 0;
            }

            else
            {
              v35 = v36;
            }

            v37 = v7 >= v34;
            v38 = v6 >= v35;
            v39 = v6 - v35;
            v40 = v38;
            if (v39)
            {
              v37 = v40;
            }

            v38 = v7 >= v34;
            v41 = v7 - v34;
            v42 = !v38;
            v43 = v39 - v42;
            if (v37)
            {
              v31 |= 1uLL;
              v7 = v41;
              v6 = v43;
            }

            --v29;
            --v32;
          }

          while (v32 > 0);
        }

        *a5 = v31;
        a5[1] = v30;
        goto LABEL_84;
      }
    }

    else
    {
      if (!result)
      {
        sub_10004FCEC(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 63);
        v23 = sub_10004FD04(v45, "CHECK failed: (0) != (n): ");
        sub_10004FE40(&v44, &v23->__r_.__value_.__l.__data_);
        result = sub_10004FE48(v45);
      }

      v24 = HIDWORD(v7);
      if (!HIDWORD(v7))
      {
        v24 = v7;
      }

      if (v24 >> 16)
      {
        v25 = (32 * (HIDWORD(v7) != 0)) | 0x10;
      }

      else
      {
        v25 = 32 * (HIDWORD(v7) != 0);
      }

      if (v24 >> 16)
      {
        LODWORD(v24) = WORD1(v24);
      }

      if (v24 > 0xFF)
      {
        v25 |= 8u;
        LODWORD(v24) = v24 >> 8;
      }

      if (v24 > 0xF)
      {
        v25 |= 4u;
        LOBYTE(v24) = v24 >> 4;
      }

      v19 = ((0x3333333322221100uLL >> (4 * v24)) & 3) + v25;
      if (a4)
      {
        goto LABEL_20;
      }
    }

    if (!a3)
    {
      sub_10004FCEC(v45, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/int128.cc", 63);
      v26 = sub_10004FD04(v45, "CHECK failed: (0) != (n): ");
      sub_10004FE40(&v44, &v26->__r_.__value_.__l.__data_);
      result = sub_10004FE48(v45);
    }

    v27 = HIDWORD(a3);
    if (!HIDWORD(a3))
    {
      v27 = a3;
    }

    if (v27 >> 16)
    {
      v28 = (32 * (HIDWORD(a3) != 0)) | 0x10;
    }

    else
    {
      v28 = 32 * (HIDWORD(a3) != 0);
    }

    if (v27 >> 16)
    {
      LODWORD(v27) = WORD1(v27);
    }

    if (v27 > 0xFF)
    {
      v28 |= 8u;
      LODWORD(v27) = v27 >> 8;
    }

    if (v27 > 0xF)
    {
      v28 |= 4u;
      LOBYTE(v27) = v27 >> 4;
    }

    v22 = ((0x3333333322221100uLL >> (4 * v27)) & 3) + v28;
    goto LABEL_60;
  }

  *a5 = 0;
  a5[1] = 0;
LABEL_84:
  *a6 = v7;
  a6[1] = v6;
  return result;
}

void sub_10006AAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

unint64_t *sub_10006AB14(unint64_t *a1, unint64_t *a2)
{
  v5 = 0uLL;
  sub_10006A71C(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v5;
  return a1;
}

unint64_t *sub_10006AB68(unint64_t *a1, unint64_t *a2)
{
  v4 = 0uLL;
  sub_10006A71C(*a1, a1[1], *a2, a2[1], &v5, &v4);
  *a1 = v4;
  return a1;
}

void *sub_10006ABBC(uint64_t *a1, __int128 *a2)
{
  v4 = *(a1 + *(*a1 - 24) + 8);
  if ((v4 & 0x4A) == 8)
  {
    v5 = 0x1000000000000000;
    v6 = 15;
  }

  else if ((v4 & 0x4A) == 0x40)
  {
    v5 = 0x8000000000000000;
    v6 = 21;
  }

  else
  {
    v5 = 0x8AC7230489E80000;
    v6 = 19;
  }

  sub_1000177C0(&v28);
  *(&v28 + *(v28 - 3) + 8) = *(&v28 + *(v28 - 3) + 8) & 0xFFFFBDB5 | v4 & 0x424A;
  v27 = *a2;
  v26[0] = 0;
  v26[1] = 0;
  sub_10006A71C(v27, *(&v27 + 1), v5, 0, &v27, v26);
  v25[0] = 0;
  v25[1] = 0;
  sub_10006A71C(v27, *(&v27 + 1), v5, 0, &v27, v25);
  if (v27)
  {
    std::ostream::operator<<();
    *(&v28 + *(v28 - 3) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v7 = sub_10006B0F0(&v28, &v24);
    *(v7 + *(*v7 - 24) + 24) = v6;
    std::ostream::operator<<();
    v8 = &v28 + *(v28 - 3);
  }

  else
  {
    if (!v25[0])
    {
      goto LABEL_11;
    }

    std::ostream::operator<<();
    *(&v28 + *(v28 - 3) + 8) &= ~0x200u;
    v24.__r_.__value_.__s.__data_[0] = 48;
    v9 = sub_10006B0F0(&v28, &v24);
    v8 = v9 + *(*v9 - 24);
  }

  *(v8 + 3) = v6;
LABEL_11:
  std::ostream::operator<<();
  std::stringbuf::str();
  v10 = *a1;
  v11 = a1 + *(*a1 - 24);
  v12 = *(v11 + 3);
  *(v11 + 3) = 0;
  size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v24.__r_.__value_.__l.__size_;
  }

  v14 = v12 - size;
  if (v12 > size)
  {
    v15 = v4 & 0xB0;
    v16 = (a1 + *(v10 - 24));
    fmtflags = v16[1].__fmtflags_;
    if (v15 == 32)
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v18 = std::locale::use_facet(&v32, &std::ctype<char>::id);
        fmtflags = (v18->__vftable[2].~facet_0)(v18, 32);
        std::locale::~locale(&v32);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::append(&v24, v14, fmtflags);
    }

    else
    {
      if (fmtflags == -1)
      {
        std::ios_base::getloc(v16);
        v19 = std::locale::use_facet(&v32, &std::ctype<char>::id);
        fmtflags = (v19->__vftable[2].~facet_0)(v19, 32);
        std::locale::~locale(&v32);
        v16[1].__fmtflags_ = fmtflags;
      }

      std::string::insert(&v24, 0, v14, fmtflags);
    }
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v24;
  }

  else
  {
    v20 = v24.__r_.__value_.__r.__words[0];
  }

  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v24.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v24.__r_.__value_.__l.__size_;
  }

  v22 = sub_1000192F4(a1, v20, v21);
  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  std::locale::~locale(v30);
  std::ostream::~ostream();
  std::ios::~ios();
  return v22;
}

void sub_10006B08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  std::locale::~locale((v22 - 72));
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_10006B0F0(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sub_10006B1B8(uint64_t result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (*(result + 8) + 16 < a2)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 116);
    v4 = sub_10004FD04(v7, "CHECK failed: ptr <= buffer_end_ + kSlopBytes: ");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v7);
  }

  if (*(v3 + 16) == v3 + 40)
  {
    v5 = (*(v3 + 8) - v2 + 16);
  }

  else
  {
    v5 = (*(v3 + 24) + *(v3 + 8) - v2);
  }

  if (v5 >= 1)
  {
    result = (*(**(v3 + 32) + 24))(*(v3 + 32), v5);
    *(v3 + 84) += v5;
  }

  return result;
}

void sub_10006B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10006B324(unint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4[0] = "MessageLite at 0x";
  v4[1] = 17;
  sub_100081AF8(v3, a1, 1);
  sub_100081B54(v4, v3, a2);
}

uint64_t sub_10006B3A8(uint64_t a1)
{
  sub_10004FCEC(v6, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 133);
  sub_10006B45C("parse", a1, &__p);
  v2 = sub_10004FD30(v6, &__p);
  sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return sub_10004FE48(v6);
}

void sub_10006B42C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a16);
  _Unwind_Resume(a1);
}

void sub_10006B45C(const std::string::value_type *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
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

void sub_10006B598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

uint64_t sub_10006B5D8(uint64_t a1, uint64_t *a2)
{
  v3 = (*(*a1 + 24))(a1);
  if (a2)
  {
    sub_100058024(a2, v3);
  }

  return v3;
}

uint64_t sub_10006B634(uint64_t a1, uint64_t a2, char a3)
{
  v14[0] = off_1000AE550;
  v14[1] = a2;
  v6 = *(a2 + 52);
  v7 = *(a2 + 37);
  v17 = 0u;
  v18 = 0u;
  v19 = 0;
  v20 = v7;
  v21 = -NAN;
  v22 = v6;
  v23 = 0x80000000;
  v24 = 0uLL;
  v8 = sub_10006DFAC(v15, v14);
  v23 = 0;
  v24 = *(a2 + 64);
  v9 = (*(*a1 + 88))(a1, v8, v15);
  if (v9)
  {
    sub_10006B1B8(v15, v9);
    if (LODWORD(v21) == 1)
    {
      *(a2 + 36) = 1;
      if ((a3 & 2) != 0)
      {
        return 1;
      }
    }

    else
    {
      if (!LODWORD(v21))
      {
        sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 240);
        v10 = sub_10004FD04(v13, "CHECK failed: ctx.LastTag() != 1: ");
        sub_10004FE40(&v12, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(v13);
      }

      if (v15[0] < v9 && (!v15[2] || (v9 - v15[1]) > v16))
      {
        return 0;
      }

      *(a2 + 32) = LODWORD(v21) + 1;
      if ((a3 & 2) != 0)
      {
        return 1;
      }
    }

    if ((*(*a1 + 48))(a1))
    {
      return 1;
    }

    sub_10006B3A8(a1);
  }

  return 0;
}

void sub_10006B820(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006B854(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 40))(a1);

  return sub_10006B634(a1, a2, 1);
}

uint64_t sub_10006B8B8(uint64_t a1, uint64_t a2)
{
  (*(*a1 + 40))(a1);

  return sub_10006B634(a1, a2, 3);
}

uint64_t sub_10006B91C(uint64_t a1, uint64_t a2)
{
  sub_10008A148(v5, a2, 0xFFFFFFFFLL);
  (*(*a1 + 40))(a1);
  v3 = sub_10008D958();
  sub_10006D544(v5, v3, &v6);
  return v6;
}

void *sub_10006B9B0(void *a1)
{
  *a1 = off_1000AEAB8;
  v2 = a1 + 1;
  sub_100087CE8(a1 + 4);
  sub_10008A144(v2);
  return a1;
}

uint64_t sub_10006BA04(uint64_t a1, uint64_t a2)
{
  sub_10008A148(v5, a2, 0xFFFFFFFFLL);
  (*(*a1 + 40))(a1);
  v3 = sub_10008D958();
  sub_10006D544(v5, v3, &v6);
  return v6;
}

uint64_t sub_10006BA98(uint64_t a1, void *a2)
{
  sub_10008A938(v6, a2, -1);
  (*(*a1 + 40))(a1);
  v4 = sub_10008D958();
  sub_10006D56C(v4, a2, v6, &v7);
  return v7;
}

void sub_10006BB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006BB30(va);
  _Unwind_Resume(a1);
}

void *sub_10006BB30(void *a1)
{
  *a1 = off_1000AEB98;
  v2 = a1 + 1;
  sub_100087CE8(a1 + 3);
  nullsub_16(v2);
  return a1;
}

uint64_t sub_10006BB84(uint64_t a1, void *a2)
{
  sub_10008A938(v6, a2, -1);
  (*(*a1 + 40))(a1);
  v4 = sub_10008D958();
  sub_10006D56C(v4, a2, v6, &v7);
  return v7;
}

void sub_10006BC08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006BB30(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BC24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_10006D62C();
  }

  sub_10006D5CC(a3, a2, a1);
  return v4;
}

uint64_t sub_10006BC60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x80000000) != 0)
  {
    sub_10006D62C();
  }

  sub_10006D658(a3, a2, a1);
  return v4;
}

uint64_t sub_10006BC9C(uint64_t a1, uint64_t a2)
{
  v4 = a2 + (*(*a1 + 80))(a1);
  v10[0] = v4;
  v10[1] = 0;
  v10[6] = 0;
  v11 = 0;
  v12 = byte_1000B6A40 & 1;
  v5 = (*(*a1 + 96))(a1, a2, v10);
  if (v4 != v5)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v6 = sub_10004FD04(v9, "CHECK failed: target + size == res: ");
    sub_10004FE40(&v8, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  return v5;
}

void sub_10006BDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BDE0(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 372);
    v4 = sub_10004FD04(v9, "CHECK failed: IsInitialized(): ");
    sub_10006B45C("serialize", a1, &__p);
    v5 = sub_10004FD30(v4, &__p);
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_10004FE48(v9);
  }

  return sub_10006BEEC(a1, a2);
}

void sub_10006BEB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10006BEEC(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  if (v4 >> 31)
  {
    sub_10004FCEC(v23, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 380);
    (*(*a1 + 16))(__p, a1);
    v5 = sub_10004FD30(v23, __p);
    v6 = sub_10004FD04(v5, " exceeded maximum protobuf size of 2GB: ");
    v7 = sub_1000504A4(v6, v4);
    sub_10004FE40(&v20, &v7->__r_.__value_.__l.__data_);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10004FE48(v23);
    return 0;
  }

  else
  {
    v9 = sub_10004E88C(a2, *(a2 + 64));
    v10 = *(a2 + 72);
    *(a2 + 64) = (*(*a1 + 96))(a1, *(a2 + 64), a2);
    v11 = sub_10006C25C(a2);
    if ((v11 & 1) == 0 && v4 != v10 + sub_10004E88C(a2, *(a2 + 64)) - (v9 + *(a2 + 72)))
    {
      if (v4 != (*(*a1 + 72))(a1))
      {
        sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 84);
        v12 = sub_10004FD04(v23, "CHECK failed: (byte_size_before_serialization) == (byte_size_after_serialization): ");
        (*(*a1 + 16))(__p, a1);
        v13 = sub_10004FD30(v12, __p);
        v14 = sub_10004FD04(v13, " was modified concurrently during serialization.");
        sub_10004FE40(&v20, &v14->__r_.__value_.__l.__data_);
        if (v22 < 0)
        {
          operator delete(__p[0]);
        }

        sub_10004FE48(v23);
      }

      sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 87);
      v15 = sub_10004FD04(v23, "CHECK failed: (bytes_produced_by_serialization) == (byte_size_before_serialization): ");
      v16 = sub_10004FD04(v15, "Byte size calculation and serialization were inconsistent.  This may indicate a bug in protocol buffers or it may be caused by concurrent modification of ");
      (*(*a1 + 16))(__p, a1);
      v17 = sub_10004FD30(v16, __p);
      v18 = sub_10004FD04(v17, ".");
      sub_10004FE40(&v20, &v18->__r_.__value_.__l.__data_);
      if (v22 < 0)
      {
        operator delete(__p[0]);
      }

      sub_10004FE48(v23);
      sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 92);
      v19 = sub_10004FD04(v23, "This shouldn't be called if all the sizes are equal.");
      sub_10004FE40(__p, &v19->__r_.__value_.__l.__data_);
      sub_10004FE48(v23);
    }

    return v11 ^ 1u;
  }
}

void sub_10006C204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C25C(uint64_t a1)
{
  v2 = sub_10004ECB0(a1, *(a1 + 64));
  *(a1 + 64) = v2;
  if (!v2)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/io/coded_stream.h", 1062);
    v3 = sub_10004FD04(v6, "CHECK failed: cur_: ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  return *(a1 + 56);
}

void sub_10006C2D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C2EC(uint64_t a1, uint64_t a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 402);
    v4 = sub_10004FD04(v9, "CHECK failed: IsInitialized(): ");
    sub_10006B45C("serialize", a1, &__p);
    v5 = sub_10004FD30(v4, &__p);
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_10004FE48(v9);
  }

  return sub_10006C3F8(a1, a2);
}

void sub_10006C3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C3F8(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 72))(a1);
  if (v4 >> 31)
  {
    v5 = v4;
    sub_10004FCEC(v15, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 410);
    (*(*a1 + 16))(__p, a1);
    v6 = sub_10004FD30(v15, __p);
    v7 = sub_10004FD04(v6, " exceeded maximum protobuf size of 2GB: ");
    v8 = sub_1000504A4(v7, v5);
    sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }

    sub_10004FE48(v15);
    v9 = 0;
  }

  else
  {
    v15[0].__r_.__value_.__r.__words[0] = &v15[0].__r_.__value_.__r.__words[2];
    v15[0].__r_.__value_.__l.__size_ = &v15[0].__r_.__value_.__r.__words[2];
    v16 = a2;
    v17 = 0;
    v18 = byte_1000B6A40 & 1;
    v10 = (*(*a1 + 96))(a1);
    sub_10004EC44(v15, v10);
    v9 = v17 ^ 1;
  }

  return v9 & 1;
}

void sub_10006C584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C5BC(uint64_t a1, int a2)
{
  sub_10008A4F8(v5, a2);
  if (sub_10006C2EC(a1, v5))
  {
    v3 = sub_100088348(v5);
  }

  else
  {
    v3 = 0;
  }

  sub_10008A6F4(v5);
  return v3;
}

void sub_10006C620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008A6F4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C634(uint64_t a1, int a2)
{
  sub_10008A4F8(v5, a2);
  if (sub_10006C3F8(a1, v5))
  {
    v3 = sub_100088348(v5);
  }

  else
  {
    v3 = 0;
  }

  sub_10008A6F4(v5);
  return v3;
}

void sub_10006C698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008A6F4(va);
  _Unwind_Resume(a1);
}

BOOL sub_10006C6AC(uint64_t a1, void *a2)
{
  sub_10008AA6C(v5, a2, -1);
  LODWORD(a1) = sub_10006C2EC(a1, v5);
  sub_10008AB54(v5);
  return a1 && *(a2 + *(*a2 - 24) + 32) == 0;
}

void sub_10006C72C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008AB54(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10006C740(uint64_t a1, uint64_t a2)
{
  sub_10008AA6C(v5, a2, -1);
  v3 = sub_10006C3F8(a1, v5);
  sub_10008AB54(v5);
  return v3;
}

void sub_10006C790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10008AB54(va);
  _Unwind_Resume(a1);
}

BOOL sub_10006C7A4(uint64_t a1, std::string *a2)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 449);
    v4 = sub_10004FD04(v9, "CHECK failed: IsInitialized(): ");
    sub_10006B45C("serialize", a1, &__p);
    v5 = sub_10004FD30(v4, &__p);
    sub_10004FE40(&v7, &v5->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_10004FE48(v9);
  }

  return sub_10006C8B0(a1, a2);
}

void sub_10006C87C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_10006C8B0(uint64_t a1, std::string *a2)
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
    sub_10004FCEC(v16, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 457);
    (*(*a1 + 16))(__p, a1);
    v10 = sub_10004FD30(v16, __p);
    v11 = sub_10004FD04(v10, " exceeded maximum protobuf size of 2GB: ");
    v12 = sub_1000504A4(v11, v6);
    sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
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
  v19 = byte_1000B6A40 & 1;
  if (v16[0].__r_.__value_.__r.__words[0] != (*(*a1 + 96))(a1))
  {
    sub_10004FCEC(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v8 = sub_10004FD04(__p, "CHECK failed: target + size == res: ");
    sub_10004FE40(&v14, &v8->__r_.__value_.__l.__data_);
    v9 = __p;
LABEL_11:
    sub_10004FE48(v9);
  }

  return v7 == 0;
}

BOOL sub_10006CAE4(uint64_t a1, std::string *a2)
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

  return sub_10006C7A4(a1, a2);
}

BOOL sub_10006CB08(uint64_t a1, std::string *a2)
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

  return sub_10006C8B0(a1, a2);
}

uint64_t sub_10006CB2C(uint64_t a1, uint64_t a2, int a3)
{
  if (((*(*a1 + 48))(a1) & 1) == 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 480);
    v6 = sub_10004FD04(v11, "CHECK failed: IsInitialized(): ");
    sub_10006B45C("serialize", a1, &__p);
    v7 = sub_10004FD30(v6, &__p);
    sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    sub_10004FE48(v11);
  }

  return sub_10006CC40(a1, a2, a3);
}

void sub_10006CC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10004FE48(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_10006CC40(uint64_t a1, uint64_t a2, int a3)
{
  v6 = (*(*a1 + 72))(a1);
  v7 = v6;
  if (v6 >> 31)
  {
    sub_10004FCEC(v15, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 487);
    (*(*a1 + 16))(__p, a1);
    v8 = sub_10004FD30(v15, __p);
    v9 = sub_10004FD04(v8, " exceeded maximum protobuf size of 2GB: ");
    v10 = sub_1000504A4(v9, v7);
    sub_10004FE40(&v13, &v10->__r_.__value_.__l.__data_);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    sub_10004FE48(v15);
    return 0;
  }

  if (v6 > a3)
  {
    return 0;
  }

  *&v15[0].__r_.__value_.__l.__data_ = a2 + v6;
  v16 = 0;
  v17 = 0;
  v18 = byte_1000B6A40 & 1;
  if (a2 + v6 != (*(*a1 + 96))(a1, a2, v15))
  {
    sub_10004FCEC(__p, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/message_lite.cc", 360);
    v12 = sub_10004FD04(__p, "CHECK failed: target + size == res: ");
    sub_10004FE40(&v13, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(__p);
  }

  return 1;
}

BOOL sub_10006CE54@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_10006C7A4(a1, a2);
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

void sub_10006CEA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10006CEC4@<W0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  result = sub_10006C8B0(a1, a2);
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

void sub_10006CF18(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10006CFB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10006D0C0();
  std::mutex::lock((v4 + 24));
  v6 = *(v4 + 8);
  v5 = *(v4 + 16);
  if (v6 >= v5)
  {
    v8 = (v6 - *v4) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_100003F50();
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
      sub_10006D3B8(v4, v11);
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

uint64_t sub_10006D0C0()
{
  if ((atomic_load_explicit(&qword_1000B59C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1000B59C8))
  {
    operator new();
  }

  return qword_1000B59C0;
}

void sub_10006D168()
{
  if ((byte_1000B6600 & 1) == 0)
  {
    v0 = sub_10006D0C0();
    if (v0)
    {
      sub_10006D29C(v0);
      operator delete();
    }

    byte_1000B6600 = 1;
  }
}

uint64_t sub_10006D1D4(uint64_t a1, void *a2, _DWORD *a3)
{
  v5 = sub_10004D684(*(a1 + 8), a2, a3);
  if (v5)
  {
    v6 = *a3;
    if ((v6 & 0x80000000) == 0)
    {
      v7 = *(a1 + 8);
      v8 = *(v7 + 8) - *v7;
      if (v6 <= v8)
      {
        *v7 += v6;
      }

      else
      {
        sub_10004D568(v7, v6, v8);
      }
    }
  }

  return v5;
}

uint64_t sub_10006D25C(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(v2 + 8) - *v2;
  if (v3 < a2)
  {
    return sub_10004D568(v2, a2, v3);
  }

  *v2 += a2;
  return 1;
}

uint64_t sub_10006D29C(uint64_t a1)
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

void *sub_10006D344(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == -1)
  {

    return sub_10006DFAC(a1, a2);
  }

  else
  {
    *(a1 + 84) = a3;
    result = sub_10006DFAC(a1, a2);
    v6 = *(a1 + 8);
    v7 = result - v6 + a3;
    *(a1 + 28) = v7;
    *a1 = v6 + (v7 & (v7 >> 31));
  }

  return result;
}

void sub_10006D3B8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100003E64();
}

uint64_t sub_10006D47C(uint64_t a1, char a2, _BYTE *a3)
{
  *a3 = a2 & (*(a1 + 24) == 0);
  *a1 = off_1000AEAB8;
  v4 = a1 + 32;

  return sub_100087CE8(v4);
}

uint64_t sub_10006D56C(char a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a1)
  {
    v5 = (*(a2 + *(*a2 - 24) + 32) >> 1) & 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  sub_10006D4CC(a4, v5);
  *v4 = v6;
  sub_100087CE8(v7 + 24);
  return nullsub_16(v4 + 1);
}

uint64_t sub_10006D5CC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10006D4FC(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = sub_10008D788();
  *v3 = result;
  return result;
}

uint64_t sub_10006D658(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_10006D4FC(a1, a2, a3);
  (*(v4 + 40))(v5);
  result = sub_10008D788();
  *v3 = result;
  return result;
}

_OWORD *sub_10006D6B8(uint64_t a1)
{
  if (*(a1 + 28) <= 16)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 158);
    v2 = sub_10004FD04(v7, "CHECK failed: limit_ > kSlopBytes: ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  result = sub_10006D780(a1, 0, -1);
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

void sub_10006D768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_10006D780(uint64_t a1, unsigned int a2, int a3)
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
      sub_10004FCEC(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 105);
      v7 = sub_10004FD04(v34, "CHECK failed: size_ > kSlopBytes: ");
      sub_10004FE40(&__src, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v34);
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
    sub_10004FCEC(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 53);
    v11 = sub_10004FD04(v34, "CHECK failed: overrun >= 0: ");
    sub_10004FE40(&__src, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v34);
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
            v23 = sub_10008E2F8(v18, v22);
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
        v18 = sub_10006EA1C(v18, v34);
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
    sub_10004FCEC(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 54);
    v10 = sub_10004FD04(v34, "CHECK failed: overrun <= kSlopBytes: ");
    sub_10004FE40(&__src, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v34);
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
      sub_10004FCEC(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 137);
      v13 = sub_10004FD04(v34, "CHECK failed: size_ == 0: ");
      v14 = sub_100050324(v13, *(a1 + 24));
      sub_10004FE40(&v32, &v14->__r_.__value_.__l.__data_);
      sub_10004FE48(v34);
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

void sub_10006DB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006DBAC(uint64_t a1, signed int a2, int a3)
{
  v3 = *(a1 + 28);
  if (v3 < a2)
  {
    return 0;
  }

  v5 = a2;
  if (v3 == a2)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 175);
    v7 = sub_10004FD04(v19, "CHECK failed: overrun != limit_: ");
    sub_10004FE40(&v18, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= v5)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 176);
    v8 = sub_10004FD04(v19, "CHECK failed: overrun < limit_: ");
    sub_10004FE40(&v18, &v8->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
    v3 = *(a1 + 28);
  }

  if (*a1 != *(a1 + 8) + (v3 & (v3 >> 31)))
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 181);
    v9 = sub_10004FD04(v19, "CHECK failed: limit_end_ == buffer_end_ + (std::min)(0, limit_): ");
    sub_10004FE40(&v18, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
    v3 = *(a1 + 28);
  }

  if (v3 <= 0)
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 183);
    v10 = sub_10004FD04(v19, "CHECK failed: limit_ > 0: ");
    sub_10004FE40(&v18, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
  }

  if (*a1 != *(a1 + 8))
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 184);
    v11 = sub_10004FD04(v19, "CHECK failed: limit_end_ == buffer_end_: ");
    sub_10004FE40(&v18, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
  }

  while (1)
  {
    if (v5 < 0)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 188);
      v12 = sub_10004FD04(v19, "CHECK failed: overrun >= 0: ");
      sub_10004FE40(&v18, &v12->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    v13 = sub_10006D780(a1, v5, a3);
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
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/parse_context.cc", 193);
    v17 = sub_10004FD04(v19, "CHECK failed: limit_ > 0: ");
    sub_10004FE40(&v18, &v17->__r_.__value_.__l.__data_);
    sub_10004FE48(v19);
  }

  result = *(a1 + 8);
  *a1 = result;
  *(a1 + 80) = 1;
  return result;
}

void sub_10006DE5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_10006DEA4(uint64_t a1, int a2, int a3)
{
  v5 = *(a1 + 8) - a2 + 16;
  while (1)
  {
    v6 = __OFSUB__(a3, v5);
    a3 -= v5;
    if ((a3 < 0) ^ v6 | (a3 == 0))
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 323);
      v7 = sub_10004FD04(v10, "CHECK failed: size > chunk_size: ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    if (!*(a1 + 16) || *(a1 + 28) < 17)
    {
      break;
    }

    result = sub_10006D6B8(a1);
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

void sub_10006DF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10006DFAC(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = a2;
  __src = 0;
  v7 = 0;
  *(a1 + 28) = 0x7FFFFFFF;
  if ((*(*a2 + 16))(a2, &__src, &v7))
  {
    v3 = v7;
    *(a1 + 84) -= v7;
    if (v3 < 17)
    {
      *a1 = a1 + 56;
      *(a1 + 8) = a1 + 56;
      *(a1 + 16) = a1 + 40;
      v4 = (a1 - v3 + 72);
      memcpy(v4, __src, v3);
    }

    else
    {
      v4 = __src;
      *(a1 + 28) = *(a1 + 28) - v3 + 16;
      v5 = v4 + v3 - 16;
      *a1 = v5;
      *(a1 + 8) = v5;
      *(a1 + 16) = a1 + 40;
      if (*(a1 + 72) == 1)
      {
        *(a1 + 72) = 2;
      }
    }
  }

  else
  {
    *(a1 + 84) = 0;
    *(a1 + 24) = 0;
    v4 = (a1 + 40);
    *(a1 + 8) = a1 + 40;
    *(a1 + 16) = 0;
    *a1 = a1 + 40;
  }

  return v4;
}

void sub_10006E0C0(int a1, unint64_t a2, std::string *this)
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

std::string *sub_10006E16C(int a1, const std::string::value_type *a2, std::string::size_type a3, std::string *this)
{
  v7 = (8 * a1) | 2u;
  if ((8 * a1) < 0x80)
  {
    LOBYTE(v8) = (8 * a1) | 2;
  }

  else
  {
    do
    {
      std::string::push_back(this, v7 | 0x80);
      v8 = v7 >> 7;
      v9 = v7 >> 14;
      v7 >>= 7;
    }

    while (v9);
  }

  std::string::push_back(this, v8);
  LOBYTE(v10) = a3;
  if (a3 >= 0x80)
  {
    v11 = a3;
    do
    {
      std::string::push_back(this, v11 | 0x80);
      v10 = v11 >> 7;
      v12 = v11 >> 14;
      v11 >>= 7;
    }

    while (v12);
  }

  std::string::push_back(this, v10);

  return std::string::append(this, a2, a3);
}

uint64_t sub_10006E234(uint64_t a1, int a2)
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

uint64_t sub_10006E2A0(uint64_t a1, uint64_t a2)
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

uint64_t sub_10006E2E8(uint64_t a1, int a2)
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

BOOL sub_10006E364(char *a1, int a2, uint64_t a3)
{
  v4 = sub_10007E694(a1, a2);
  if (!v4)
  {
    sub_100086ED4(a3, "parsing");
  }

  return v4;
}

std::string::value_type *sub_10006E3A8(std::string *this, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_1000624C4(a3, v6, v5, this);
}

char *sub_10006E494(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_10006FE5C(a3, v6, v5, a1);
}

char *sub_10006E510(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_10006FF64(a3, v6, v5, a1);
}

char *sub_10006E58C(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_10007006C(a3, v6, v5, a1);
}

char *sub_10006E608(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_100070174(a3, v6, v5, a1);
}

char *sub_10006E684(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_10007027C(a3, v6, v5, a1);
}

char *sub_10006E700(int *a1, char *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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

  return sub_100070384(a3, v6, v5, a1);
}

char *sub_10006E7A0(uint64_t a1, char *a2, uint64_t a3)
{
  v10 = a2;
  while (1)
  {
    if (sub_10003CE28(a3, &v10, *(a3 + 92)))
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

    v10 = sub_10006E8B8(v6, a1);
    if (!v10)
    {
      return 0;
    }
  }

  *(a3 + 80) = v6 - 1;
  return v5;
}

char *sub_10006E8B8(unint64_t a1, std::string *a2, int *a3, int32x2_t *a4)
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
        sub_10004FCEC(v12, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 758);
        v10 = sub_10004FD04(v12, "Can't happen");
        sub_10004FE40(&v11, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(v12);
      }

      else
      {
        if (v9 != 5)
        {
          return result;
        }

        v5 = a3 + 1;
        sub_1000708C0(a2, v4, *a3);
      }

      return v5;
    }

    result = sub_100070794(a2, v4, a3, a4);
    if (!result)
    {
      return result;
    }

    return result;
  }

  if (!v9)
  {
    v12[0].__r_.__value_.__r.__words[0] = 0;
    result = sub_10006EA1C(a3, v12);
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_10007048C(a2, v4, v12[0].__r_.__value_.__r.__words[0]);
    return v5;
  }

  if (v9 == 1)
  {
    v5 = a3 + 2;
    sub_100070554(a2, v4, *a3);
    return v5;
  }

  result = sub_100070614(a2, v4, a3, a4);
  if (result)
  {
    return result;
  }

  return result;
}

void sub_10006EA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006EA1C(char *a1, unint64_t *a2)
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

char *sub_10006EA8C(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006ECAC(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006ECAC(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006ECAC(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006EC84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006ECAC(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100072364(a3, v7 + 1);
      *(sub_100072B4C(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_100072B4C(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006ED5C(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006EF7C(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006EF7C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006EF7C(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006EF54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006EF7C(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100073BA4(a3, v7 + 1);
      *(sub_100074378(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_100074378(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006F02C(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006F24C(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006F24C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006F24C(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006F224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006F24C(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100075394(a3, v7 + 1);
      *(sub_100075B7C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_100075B7C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006F2FC(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006F51C(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006F51C(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006F51C(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006F4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006F51C(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100076B98(a3, v7 + 1);
      *(sub_10007736C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_10007736C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006F5CC(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006F7EC(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006F7EC(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006F7EC(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006F7C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006F7EC(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100072364(a3, v7 + 1);
      *(sub_100072B4C(a3) + 4 * v7) = v6;
    }

    else
    {
      *(sub_100072B4C(a3) + 4 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006F8A8(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006FAC8(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006FAC8(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006FAC8(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006FAA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006FAC8(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = -(v10 & 1) ^ (v10 >> 1);
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100075394(a3, v7 + 1);
      *(sub_100075B7C(a3) + 8 * v7) = v6;
    }

    else
    {
      *(sub_100075B7C(a3) + 8 * v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006FB84(uint64_t a1, char *a2, int *a3)
{
  v5 = *a2;
  if (*a2 < 0)
  {
    result = sub_10008E2F8(a2, *a2);
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
    result = sub_10006FDA4(result, v13, a3);
    if (v13 != result)
    {
      return 0;
    }
  }

  else
  {
    while (1)
    {
      result = sub_10006FDA4(result, v7, a3);
      if (!result)
      {
        break;
      }

      v9 = result - *(a1 + 8);
      if (v9 >= 0x11)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 674);
        v10 = sub_10004FD04(&v16, "CHECK failed: overrun >= 0 && overrun <= kSlopBytes: ");
        sub_10004FE40(&v15, &v10->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      v11 = v5 - v8;
      if (v5 - v8 <= 16)
      {
        v17 = 0;
        v16.__r_.__value_.__r.__words[2] = 0;
        *&v16.__r_.__value_.__l.__data_ = **(a1 + 8);
        if (sub_10006FDA4(&v16 + v9, &v16 + v11, a3) != &v16 + v11)
        {
          return 0;
        }

        return (*(a1 + 8) + v11);
      }

      v5 = v5 - v8 - v9;
      if (v5 <= 0)
      {
        sub_10004FCEC(&v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/parse_context.h", 688);
        v12 = sub_10004FD04(&v16, "CHECK failed: (size) > (0): ");
        sub_10004FE40(&v15, &v12->__r_.__value_.__l.__data_);
        sub_10004FE48(&v16);
      }

      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10006FD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_10006FDA4(char *a1, unint64_t a2, int *a3)
{
  for (i = a1; i < a2; *a3 = v8)
  {
    v10 = 0;
    i = sub_10006EA1C(i, &v10);
    if (!i)
    {
      break;
    }

    v6 = v10 != 0;
    v7 = *a3;
    if (v7 == a3[1])
    {
      v8 = v7 + 1;
      sub_100070B88(a3, v7 + 1);
      *(sub_10007139C(a3) + v7) = v6;
    }

    else
    {
      *(sub_10007139C(a3) + v7) = v6;
      v8 = v7 + 1;
    }
  }

  return i;
}

char *sub_10006FE5C(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_100073BA4(a4, *a4 + (v5 >> 2));
    v11 = sub_100073D48(a4, v5 >> 2);
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
      sub_100073BA4(a4, *a4 + (v7 >> 2));
      v9 = sub_100073D48(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

char *sub_10006FF64(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_100072364(a4, *a4 + (v5 >> 2));
    v11 = sub_100072508(a4, v5 >> 2);
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
      sub_100072364(a4, *a4 + (v7 >> 2));
      v9 = sub_100072508(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

char *sub_10007006C(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_100076B98(a4, *a4 + (v5 >> 3));
    v11 = sub_100076D3C(a4, v5 >> 3);
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
      sub_100076B98(a4, *a4 + (v7 >> 3));
      v9 = sub_100076D3C(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

char *sub_100070174(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_100075394(a4, *a4 + (v5 >> 3));
    v11 = sub_100075538(a4, v5 >> 3);
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
      sub_100075394(a4, *a4 + (v7 >> 3));
      v9 = sub_100075538(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

char *sub_10007027C(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_10007834C(a4, *a4 + (v5 >> 2));
    v11 = sub_1000784F0(a4, v5 >> 2);
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
      sub_10007834C(a4, *a4 + (v7 >> 2));
      v9 = sub_1000784F0(a4, v7 >> 2);
      memcpy(v9, v6, (v7 & 0xFFFFFFFC));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

char *sub_100070384(uint64_t a1, char *a2, int a3, int *a4)
{
  v5 = a3;
  v6 = a2;
  v7 = *(a1 + 8) - a2 + 16;
  if (v7 >= a3)
  {
LABEL_5:
    sub_100079B54(a4, *a4 + (v5 >> 3));
    v11 = sub_100079CF8(a4, v5 >> 3);
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
      sub_100079B54(a4, *a4 + (v7 >> 3));
      v9 = sub_100079CF8(a4, v7 >> 3);
      memcpy(v9, v6, (v7 & 0xFFFFFFF8));
      if (*(a1 + 28) < 17)
      {
        return 0;
      }

      result = sub_10006D6B8(a1);
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

void sub_10007048C(std::string **a1, int a2, unint64_t a3)
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

std::string *sub_100070554(std::string *result, int a2, uint64_t a3)
{
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
    v9 = a3;
    return std::string::append(*v5, &v9, 8uLL);
  }

  return result;
}

std::string::value_type *sub_100070614(std::string **a1, int a2, char *a3, uint64_t a4)
{
  v7 = *a3;
  if (*a3 < 0)
  {
    result = sub_10008E2F8(a3, *a3);
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

    return sub_100070954(a4, v8, v7, v18);
  }

  else if (*(a4 + 8) - v8 + 16 >= v7)
  {
    return &v8[v7];
  }

  else
  {

    return sub_10006DEA4(a4, v8, v7);
  }
}

char *sub_100070794(std::string **a1, int a2, char *a3, int32x2_t *a4)
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
  v14 = sub_10006E7A0(a1, a3, a4);
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

std::string *sub_1000708C0(std::string *result, int a2, int a3)
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

std::string::value_type *sub_100070954(uint64_t a1, std::string::value_type *__s, int a3, std::string *this)
{
  if (*(a1 + 8) - __s + 16 < a3)
  {

    return sub_10008E104();
  }

  else
  {
    v5 = a3;
    std::string::append(this, __s, a3);
    return &__s[v5];
  }
}

void sub_1000709C0(uint64_t a1@<X8>)
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

uint64_t sub_100070A14(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);

  return sub_10004FCEC(va, 3, v2, 323);
}

std::string *sub_100070A34(uint64_t a1, uint64_t a2, std::string::size_type a3)
{

  return std::string::append(v3, v4, a3);
}

void *sub_100070A4C(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *sub_100070A54(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = a2;
  return result;
}

uint64_t sub_100070A5C(uint64_t a1, int *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *a2;
  if (v4)
  {
    sub_100070B88(a1, v4);
    sub_100070D30(a1, *a2);
    if (*a1 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1323);
      v5 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v6 = sub_10007139C(a1);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v11, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v11);
    }

    v8 = sub_10007139C(a2);
    memcpy(v6, v8, *a2);
  }

  return a1;
}

void sub_100070B68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100070B88(int *a1, int a2)
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
      v6 = *(sub_10007139C(a1) - 8);
      if (v3 >= 4)
      {
        v7 = a1[1];
        if (v7 > 0x3FFFFFFF)
        {
          if (v3 <= 0x40000000)
          {
            sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1550);
            v8 = sub_10004FD04(v13, "CHECK failed: (new_size) > (kRepeatedFieldUpperClampLimit): ");
            sub_10004FE40(&v12, &v8->__r_.__value_.__l.__data_);
            sub_10004FE48(v13);
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
    v5 = (sub_10007139C(a1) - 8);
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
      sub_10007CF34(v6);
    }

    v10 = sub_10004C500(v6, (v3 + 15) & 0xFFFFFFF8);
  }

  else
  {
    v10 = operator new(v3 + 8);
  }

  *v10 = v6;
  a1[1] = v3;
  *(a1 + 1) = v10 + 1;
  sub_10007139C(a1);
  if (*a1 >= 1)
  {
    v11 = sub_10007139C(a1);
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

void sub_100070D10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070D30(uint64_t a1, int a2)
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

  result = *(a1 + 8) + v4;
  *a1 = v4 + a2;
  return result;
}

void sub_100070DD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070E04(_DWORD *a1, int a2)
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

  return sub_10007139C(a1) + a2;
}

void sub_100070EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070EE4(_DWORD *a1, int a2)
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

  return sub_10007139C(a1) + a2;
}

void sub_100070FA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100070FC8(uint64_t a1)
{
  if (*(a1 + 4) >= 1)
  {
    v2 = sub_10007139C(a1);
    v4 = *(v2 - 8);
    v3 = (v2 - 8);
    if (!v4)
    {
      operator delete(v3);
    }
  }

  return a1;
}

void sub_100071010(int a1, void *__p)
{
  if (__p)
  {
    if (!*__p)
    {
      operator delete(__p);
    }
  }
}

int *sub_100071048(int *a1, int *a2)
{
  if (a1 != a2)
  {
    *a1 = 0;
    sub_100071AA4(a1, a2);
  }

  return a1;
}

int *sub_100071080(int *result, int *a2)
{
  if (a2 != result)
  {
    *result = 0;
    return sub_100071AA4(result, a2);
  }

  return result;
}

uint64_t sub_100071094(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_10007139C(a2) - 8);
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
      sub_100071AA4(a1, a2);
    }
  }

  else
  {
    sub_100071140(a1, a2);
  }

  return a1;
}

uint64_t sub_100071110(uint64_t a1)
{
  if (*(a1 + 4))
  {
    v1 = sub_10007139C(a1) - 8;
  }

  else
  {
    v1 = a1 + 8;
  }

  return *v1;
}

__n128 sub_100071140(uint64_t a1, __n128 *a2)
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
    v5 = (sub_10007139C(a1) - 8);
  }

  else
  {
    v5 = (a1 + 8);
  }

  v6 = *v5;
  if (a2->n128_u32[1])
  {
    v7 = (sub_10007139C(a2) - 8);
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

void sub_10007124C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007126C(uint64_t a1, __n128 *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  if (a2->n128_u32[1])
  {
    v4 = (sub_10007139C(a2) - 8);
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
      sub_100071AA4(a1, a2);
    }
  }

  else
  {
    sub_100071140(a1, a2);
  }

  return a1;
}

int *sub_1000712E8(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_10007139C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_10007139C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {
      sub_100071140(a1, a2);
    }

    else
    {
      *a1 = 0;
      sub_100071AA4(a1, a2);
    }
  }

  return a1;
}

uint64_t sub_10007139C(uint64_t a1)
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

void sub_100071410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071430(_DWORD *a1, int a2)
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

  return sub_10007139C(a1) + a2;
}

void sub_1000714F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071510(_DWORD *a1, int a2)
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

  return sub_10007139C(a1) + a2;
}

void sub_1000715D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000715F0(_DWORD *a1, int a2, char *a3)
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
  result = sub_10007139C(a1);
  *(result + a2) = v8;
  return result;
}

void sub_1000716C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000716E0(int *a1, char *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 == a1[1])
  {
    v5 = v3 + 1;
    sub_100070B88(a1, v3 + 1);
    result = sub_10007139C(a1);
    *(result + v3) = v4;
  }

  else
  {
    result = sub_10007139C(a1);
    *(result + v3) = v4;
    v5 = v3 + 1;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_10007174C(int *a1)
{
  v2 = *a1;
  if (v2 == a1[1])
  {
    sub_100070B88(a1, v2 + 1);
  }

  v3 = sub_10007139C(a1);
  *a1 = v2 + 1;
  return v3 + v2;
}

int *sub_1000717A0(int *result)
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

void sub_10007181C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100071834(int *result, int a2, int a3, _BYTE *a4)
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
      result = sub_100070EE4(v7, v13);
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
      v15 = sub_100070EE4(v7, v10);
      result = sub_1000715F0(v7, v6, v15);
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

void sub_1000719D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100071A00(int *result, int a2)
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

void sub_100071A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

int *sub_100071AA4(int *result, int *a2)
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
    sub_100070B88(v3, *v3 + *a2);
    sub_100070D30(v3, *a2);
    v6 = sub_100070E04(v3, v5);
    if (*a2 <= 0)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1302);
      v7 = sub_10004FD04(v10, "CHECK failed: (index) < (current_size_): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    v8 = sub_10007139C(a2);
    return memcpy(v6, v8, *a2);
  }

  return result;
}

void sub_100071BB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071BD0(int *a1, char *a2)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v9, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1266);
    v4 = sub_10004FD04(v9, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v8, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v9);
  }

  v5 = *a2;
  result = sub_10007139C(a1);
  v7 = *a1;
  *a1 = v7 + 1;
  *(result + v7) = v5;
  return result;
}

void sub_100071C60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071C78(int *a1)
{
  if (*a1 >= a1[1])
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1272);
    v2 = sub_10004FD04(v7, "CHECK failed: (current_size_) < (total_size_): ");
    sub_10004FE40(&v6, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  v3 = sub_10007139C(a1);
  v4 = *a1;
  *a1 = v4 + 1;
  return v3 + v4;
}

void sub_100071D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100071D20(uint64_t result, int a2, unsigned __int8 *a3)
{
  v5 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/google/protobuf/repeated_field.h", 1291);
    v6 = sub_10004FD04(v10, "CHECK failed: (new_size) >= (0): ");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (*v5 < a2)
  {
    sub_100070B88(v5, a2);
    v7 = (sub_10007139C(v5) + *v5);
    result = sub_10007139C(v5);
    v8 = result + a2 - v7;
    if (v8 >= 1)
    {
      result = memset(v7, *a3, v8);
    }
  }

  *v5 = a2;
  return result;
}

void sub_100071DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100071E00(int *a1, __n128 *a2)
{
  if (a1 != a2)
  {
    if (a1[1])
    {
      v4 = (sub_10007139C(a1) - 8);
    }

    else
    {
      v4 = (a1 + 2);
    }

    v5 = *v4;
    if (a2->n128_u32[1])
    {
      v6 = (sub_10007139C(a2) - 8);
    }

    else
    {
      v6 = &a2->n128_u64[1];
    }

    if (v5 == *v6)
    {

      sub_100071140(a1, a2);
    }

    else
    {
      if (a2->n128_u32[1])
      {
        v7 = (sub_10007139C(a2) - 8);
      }

      else
      {
        v7 = &a2->n128_u64[1];
      }

      v8 = *v7;
      v9.n128_u64[0] = 0;
      v9.n128_u64[1] = v8;
      sub_100071AA4(&v9, a1);
      *a1 = 0;
      sub_100071AA4(a1, a2);
      if (&v9 != a2)
      {
        sub_100071140(a2, &v9);
      }

      sub_100070FC8(&v9);
    }
  }
}