void sub_10007F104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10007F124(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3)
  {
    sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 316);
    v5 = sub_10004FD04(v27, "CHECK failed: errors == nullptr: ");
    v6 = sub_10004FD04(v5, "Error reporting not implemented.");
    sub_10004FE40(&v26, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v27);
  }

  if (a1 != a2)
  {
    v7 = a2;
LABEL_11:
    v9 = a1;
    goto LABEL_12;
  }

  v8 = a2;
  do
  {
    if (!*a1 || *a1 == 92)
    {
      v7 = v8;
      goto LABEL_11;
    }

    v9 = a1 + 1;
    v7 = v8 + 1;
    v22 = v8++ == a1++;
  }

  while (v22);
  while (1)
  {
LABEL_12:
    v10 = *v9;
    if (v10 != 92)
    {
      if (!*v9)
      {
        goto LABEL_64;
      }

      goto LABEL_62;
    }

    v11 = v9 + 1;
    v10 = v9[1];
    if (v10 <= 0x3E)
    {
      break;
    }

    if (v9[1] <= 0x65u)
    {
      if (v9[1] > 0x5Bu)
      {
        if (v10 != 92)
        {
          if (v10 == 97)
          {
            LOBYTE(v10) = 7;
          }

          else
          {
            if (v10 != 98)
            {
              goto LABEL_63;
            }

            LOBYTE(v10) = 8;
          }
        }

LABEL_61:
        v9 = v11;
LABEL_62:
        *v7++ = v10;
        v11 = v9;
        goto LABEL_63;
      }

      if (v10 == 63)
      {
        goto LABEL_61;
      }

      if (v10 != 88)
      {
        goto LABEL_63;
      }

LABEL_44:
      if ((v9[2] - 48) < 0xAu || (v18 = v9[2] - 65, v18 <= 0x25) && ((1 << v18) & 0x3F0000003FLL) != 0)
      {
        LOBYTE(v10) = 0;
        v19 = v9 + 1;
        while (1)
        {
          v21 = *++v19;
          v20 = v21;
          if ((v21 - 48) >= 0xAu)
          {
            v22 = v20 - 65 > 0x25 || ((1 << (v20 - 65)) & 0x3F0000003FLL) == 0;
            if (v22)
            {
              break;
            }
          }

          v23 = v20;
          v24 = v20 + 9;
          if (v23 <= 0x39)
          {
            v24 = v23;
          }

          v11 = v19;
          LOBYTE(v10) = v24 & 0xF | (16 * v10);
        }

        goto LABEL_61;
      }

      goto LABEL_63;
    }

    if (v9[1] <= 0x73u)
    {
      switch(v10)
      {
        case 'f':
          LOBYTE(v10) = 12;
          break;
        case 'n':
          LOBYTE(v10) = 10;
          break;
        case 'r':
          LOBYTE(v10) = 13;
          break;
        default:
          goto LABEL_63;
      }

      goto LABEL_61;
    }

    switch(v10)
    {
      case 't':
        LOBYTE(v10) = 9;
        goto LABEL_61;
      case 'v':
        LOBYTE(v10) = 11;
        goto LABEL_61;
      case 'x':
        goto LABEL_44;
    }

LABEL_63:
    v9 = v11 + 1;
  }

  if (v9[1] > 0x2Fu)
  {
    v10 -= 48;
    if (v10 >= 8)
    {
      goto LABEL_63;
    }

    v13 = v9[2];
    v12 = v9 + 2;
    v14 = v13 + 8 * v10 - 48;
    if ((v13 & 0xF8) == 0x30)
    {
      v11 = v12;
      LOBYTE(v10) = v14;
    }

    v9 = v11 + 1;
    v15 = v11[1];
    v16 = v15 & 0xF8;
    v17 = v15 + 8 * v10 - 48;
    if (v16 == 48)
    {
      LOBYTE(v10) = v17;
    }

    else
    {
      v9 = v11;
    }

    goto LABEL_62;
  }

  if (v10 == 34 || v10 == 39)
  {
    goto LABEL_61;
  }

  if (v9[1])
  {
    goto LABEL_63;
  }

LABEL_64:
  *v7 = 0;
  return (v7 - a2);
}

void sub_10007F3C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10007F3E4(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

void sub_10007F4D8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004FE48(va);
  operator delete[]();
}

void sub_10007F508(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

uint64_t sub_10007F5C4(unsigned __int8 *a1, int a2, uint64_t a3, int a4, int a5, char a6)
{
  if (a2 >= 1)
  {
    v9 = a5;
    v10 = a1;
    v11 = 0;
    LODWORD(v12) = 0;
    if (a5)
    {
      v13 = "\\x%02x";
    }

    else
    {
      v13 = "\\%03o";
    }

    v14 = &a1[a2];
    while (1)
    {
      if (a4 - v12 < 2)
      {
        return 0xFFFFFFFFLL;
      }

      v15 = *v10;
      if (v15 > 0x21)
      {
        switch(v15)
        {
          case '""':
            v11 = 0;
            *(a3 + v12) = 8796;
            goto LABEL_23;
          case '\'':
            v11 = 0;
            *(a3 + v12) = 10076;
            goto LABEL_23;
          case '\\':
            v11 = 0;
            *(a3 + v12) = 23644;
            goto LABEL_23;
        }
      }

      else
      {
        switch(v15)
        {
          case 9u:
            v11 = 0;
            *(a3 + v12) = 29788;
            goto LABEL_23;
          case 0xAu:
            v11 = 0;
            *(a3 + v12) = 28252;
            goto LABEL_23;
          case 0xDu:
            v11 = 0;
            *(a3 + v12) = 29276;
LABEL_23:
            v12 = (v12 + 2);
            goto LABEL_24;
        }
      }

      if ((v15 & 0x80) != 0 && (a6 & 1) != 0 || v15 - 32 <= 0x5E && ((v11 & 1) == 0 || v15 - 48 >= 0xA && (v15 - 65 > 0x25 || ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0)))
      {
        v11 = 0;
        *(a3 + v12) = v15;
        v12 = (v12 + 1);
      }

      else
      {
        if ((a4 - v12) < 4)
        {
          return 0xFFFFFFFFLL;
        }

        sprintf((a3 + v12), v13, *v10);
        v12 = (v12 + 4);
        v11 = v9;
      }

LABEL_24:
      if (++v10 >= v14)
      {
        goto LABEL_34;
      }
    }
  }

  v12 = 0;
LABEL_34:
  if (v12 >= a4)
  {
    return 0xFFFFFFFFLL;
  }

  *(a3 + v12) = 0;
  return v12;
}

void sub_10007F7A0(const std::string::value_type *a1, int64_t a2, std::string *a3)
{
  v12 = a1;
  v13 = a2;
  v14 = a1;
  v15 = a2;
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v7 += byte_100092A97[sub_10007F978(&v14, v6++)];
    }

    while (v15 > v6);
  }

  if (v7 == a2)
  {
    std::string::append(a3, a1, a2);
    return;
  }

  size = SHIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  std::string::resize(a3, size + v7, 0);
  if (SHIBYTE(a3->__r_.__value_.__r.__words[2]) < 0)
  {
    a3 = a3->__r_.__value_.__r.__words[0];
  }

  if (a2 >= 1)
  {
    v9 = 0;
    v10 = a3 + size;
    do
    {
      v11 = sub_10007F978(&v12, v9);
      if (v11 > 0x21u)
      {
        switch(v11)
        {
          case '""':
            *v10 = 8796;
            v10 += 2;
            break;
          case '\'':
            *v10 = 10076;
            v10 += 2;
            break;
          case '\\':
            *v10 = 23644;
            v10 += 2;
            break;
          default:
LABEL_25:
            if (v11 - 32 >= 0x5F)
            {
              *v10 = 92;
              v10[1] = (v11 >> 6) | 0x30;
              v10[2] = (v11 >> 3) & 7 | 0x30;
              v10[3] = v11 & 7 | 0x30;
              v10 += 4;
            }

            else
            {
              *v10++ = v11;
            }

            break;
        }
      }

      else
      {
        switch(v11)
        {
          case 9u:
            *v10 = 29788;
            v10 += 2;
            break;
          case 0xAu:
            *v10 = 28252;
            v10 += 2;
            break;
          case 0xDu:
            *v10 = 29276;
            v10 += 2;
            break;
          default:
            goto LABEL_25;
        }
      }

      ++v9;
    }

    while (v13 > v9);
  }
}

uint64_t sub_10007F978(void *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    sub_100084864();
  }

  if (a1[1] <= a2)
  {
    sub_100084838();
  }

  return *(*a1 + a2);
}

void sub_10007F9AC(uint64_t *a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  sub_1000468AC(v3, a1);
  sub_10007F7A0(v3[0], v3[1], a2);
}

void sub_10007F9F4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10007FA10(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

void sub_10007FB18(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004FE48(va);
  operator delete[]();
}

void sub_10007FB48(uint64_t a1)
{
  if (*(a1 + 23) < 0)
  {
    v1 = *(a1 + 8);
  }

  operator new[]();
}

void sub_10007FC50(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004FE48(va);
  operator delete[]();
}

uint64_t sub_10007FC80(const char *a1, char **a2, int a3)
{
  v6 = *__error();
  *__error() = 0;
  v7 = strtol(a1, a2, a3);
  if (*__error() == 34 && v7 == 0x8000000000000000)
  {
    return 0x80000000;
  }

  if (*__error() == 34 && v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0x7FFFFFFFLL;
  }

  v10 = *__error();
  v11 = __error();
  if (!v10 && v7 <= 0xFFFFFFFF7FFFFFFFLL)
  {
    *v11 = 34;
    return 0x80000000;
  }

  v12 = *v11;
  v13 = __error();
  if (!v12 && v7 >= 0x80000000)
  {
    *v13 = 34;
    return 0x7FFFFFFFLL;
  }

  if (!*v13)
  {
    *__error() = v6;
  }

  return v7;
}

uint64_t sub_10007FD6C(const char *a1, char **a2, int a3)
{
  v6 = *__error();
  *__error() = 0;
  v7 = strtoul(a1, a2, a3);
  if (*__error() == 34 && v7 == -1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *__error();
  v10 = __error();
  if (!v9 && HIDWORD(v7))
  {
    *v10 = 34;
    return 0xFFFFFFFFLL;
  }

  if (!*v10)
  {
    *__error() = v6;
  }

  return v7;
}

_BYTE *sub_10007FE10(unint64_t a1, _BYTE *a2)
{
  v2 = a1;
  a2[21] = 0;
  if ((a1 & 0x8000000000000000) != 0)
  {
    if (a1 < 0xFFFFFFFFFFFFFFF7)
    {
      v6 = -10 - a1;
      result = a2 + 19;
      a2[20] = (v6 % 0xA) | 0x30;
      v7 = v6 / 0xA + 1;
      do
      {
        *result-- = (v7 % 0xA) | 0x30;
        v8 = v7 > 9;
        v7 /= 0xAuLL;
      }

      while (v8);
    }

    else
    {
      v5 = 48 - a1;
      result = a2 + 19;
      a2[20] = v5;
    }

    *result = 45;
  }

  else
  {
    result = a2 + 21;
    do
    {
      *--result = (v2 % 0xA) | 0x30;
      v4 = v2 >= 0xA;
      v2 /= 0xAuLL;
    }

    while (v4);
  }

  return result;
}

_BYTE *sub_10007FEC8(unsigned int a1, _BYTE *a2)
{
  v2 = a1;
  a2[11] = 0;
  if ((a1 & 0x80000000) != 0)
  {
    if (a1 < 0xFFFFFFF7)
    {
      v6 = -10 - a1;
      v7 = (-10 - a1) / 0xA;
      result = a2 + 9;
      a2[10] = (v6 % 0xA) | 0x30;
      v8 = v7 + 1;
      do
      {
        *result-- = (v8 % 0xA) | 0x30;
        v9 = v8 > 9;
        v8 /= 0xAu;
      }

      while (v9);
    }

    else
    {
      v5 = 48 - a1;
      result = a2 + 9;
      a2[10] = v5;
    }

    *result = 45;
  }

  else
  {
    result = a2 + 11;
    do
    {
      *--result = (v2 % 0xA) | 0x30;
      v4 = v2 >= 0xA;
      v2 /= 0xAu;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_10007FF80(int a1, uint64_t a2)
{
  v3 = a1;
  if (a1 < 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 887);
    v4 = sub_10004FD04(v10, "CHECK failed: i >= 0: ");
    v5 = sub_10004FD04(v4, "FastHexToBuffer() wants non-negative integers, not ");
    v6 = sub_100050324(v5, v3);
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  *(a2 + 21) = 0;
  v7 = a2 + 21;
  do
  {
    *--v7 = a0123456789abcd[v3 & 0xF];
    v3 >>= 4;
  }

  while (v3 > 0);
  return v7;
}

void sub_100080028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100080040(unint64_t a1, uint64_t a2, int a3)
{
  *(a2 + a3) = 0;
  if (a3 >= 1)
  {
    v3 = a3;
    do
    {
      *(a2 - 1 + v3) = a0123456789abcd[a1 & 0xF];
      a1 >>= 4;
    }

    while (v3-- > 1);
  }

  return a2;
}

uint64_t sub_10008007C(unint64_t a1, uint64_t a2)
{
  *(a2 + 16) = 0;
  v2 = 15;
  do
  {
    *(a2 + v2) = a0123456789abcd[a1 & 0xF];
    a1 >>= 4;
    v3 = v2-- + 1;
  }

  while (v3 > 1);
  return a2;
}

uint64_t sub_1000800B4(unsigned int a1, uint64_t a2)
{
  v2 = a1;
  *(a2 + 8) = 0;
  v3 = 7;
  do
  {
    *(a2 + v3) = a0123456789abcd[v2 & 0xF];
    v2 >>= 4;
    v4 = v3-- + 1;
  }

  while (v4 > 1);
  return a2;
}

_BYTE *sub_1000800F0(unsigned int a1, _BYTE *a2)
{
  if (a1 >= 0x3B9ACA00)
  {
    v2 = a1 / 0x5F5E100uLL;
    *a2 = word_10009264D[v2];
    a2 += 2;
    goto LABEL_3;
  }

  if (a1 > 0x63)
  {
    if (a1 >> 4 <= 0x270)
    {
      if (a1 <= 0x3E7)
      {
        LODWORD(v5) = a1 / 0x64u;
        *a2++ = v5 | 0x30;
        goto LABEL_9;
      }

LABEL_8:
      v5 = a1 / 0x64uLL;
      *a2 = word_10009264D[v5];
      a2 += 2;
LABEL_9:
      a1 -= 100 * v5;
      goto LABEL_10;
    }

    if (a1 <= 0xF423F)
    {
      if (a1 >> 5 <= 0xC34)
      {
        LODWORD(v4) = a1 / 0x2710;
        *a2++ = (a1 / 0x2710) | 0x30;
        goto LABEL_7;
      }

LABEL_6:
      v4 = a1 / 0x2710uLL;
      *a2 = word_10009264D[v4];
      a2 += 2;
LABEL_7:
      a1 -= 10000 * v4;
      goto LABEL_8;
    }

    if (a1 <= 0x5F5E0FF)
    {
      if (a1 <= 0x98967F)
      {
        LODWORD(v3) = a1 / 0xF4240;
        *a2++ = a1 / 0xF4240 + 48;
        goto LABEL_5;
      }

LABEL_4:
      v3 = a1 / 0xF4240uLL;
      *a2 = word_10009264D[v3];
      a2 += 2;
LABEL_5:
      a1 -= 1000000 * v3;
      goto LABEL_6;
    }

    LODWORD(v2) = a1 / 0x5F5E100;
    *a2++ = (a1 / 0x5F5E100) | 0x30;
LABEL_3:
    a1 -= 100000000 * v2;
    goto LABEL_4;
  }

  if (a1 <= 9)
  {
    *a2 = a1 | 0x30;
    v6 = a2 + 1;
    goto LABEL_11;
  }

LABEL_10:
  *a2 = word_10009264D[a1];
  v6 = a2 + 2;
LABEL_11:
  *v6 = 0;
  return v6;
}

_BYTE *sub_100080280(unsigned int a1, _BYTE *a2)
{
  if ((a1 & 0x80000000) != 0)
  {
    *a2++ = 45;
    a1 = -a1;
  }

  return sub_1000800F0(a1, a2);
}

_BYTE *sub_100080298(unint64_t a1, _BYTE *a2)
{
  v2 = a1;
  if (HIDWORD(a1))
  {
    v4 = a1 / 0x3B9ACA00;
    v5 = sub_100080298(a1 / 0x3B9ACA00);
    v6 = v2 - 1000000000 * v4;
    if (v6 >= 0x3B9ACA00)
    {
      sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1068);
      v7 = sub_10004FD04(v10, "CHECK failed: (digits) < (100): ");
      sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v10);
    }

    *v5 = word_10009264D[v6 / 0x989680];
    v5[1] = word_10009264D[v6 % 0x989680 / 0x186A0uLL];
    v8 = v6 % 0x989680 % 0x186A0;
    v5[2] = word_10009264D[v8 / 0x3E8uLL];
    v8 %= 0x3E8u;
    v5[3] = word_10009264D[v8 / 0xAuLL];
    v5[4] = (v8 % 0xA + 48);
    return v5 + 9;
  }

  else
  {

    return sub_1000800F0(a1, a2);
  }
}

void sub_10008041C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

_BYTE *sub_100080434(unint64_t a1, _BYTE *a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    *a2++ = 45;
    a1 = -a1;
  }

  return sub_100080298(a1, a2);
}

std::string *sub_10008066C(std::string *__str, double a2)
{
  if (a2 == INFINITY)
  {
    v4 = 6712937;
LABEL_5:
    LODWORD(__str->__r_.__value_.__l.__data_) = v4;
    return __str;
  }

  if (a2 == -INFINITY)
  {
    __str->__r_.__value_.__s.__data_[4] = 0;
    v4 = 1718511917;
    goto LABEL_5;
  }

  if ((snprintf(__str, 0x20uLL, "%.*g", 15, a2) - 32) <= 0xFFFFFFE0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1265);
    v6 = sub_10004FD04(v10, "CHECK failed: snprintf_result > 0 && snprintf_result < kDoubleToBufferSize: ");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  v9 = sub_100080B40(__str, 0);
  if (v9 != a2 && (snprintf(__str, 0x20uLL, "%.*g", 17, a2) - 32) <= 0xFFFFFFE0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1279);
    v7 = sub_10004FD04(v10, "CHECK failed: snprintf_result > 0 && snprintf_result < kDoubleToBufferSize: ");
    sub_10004FE40(&v8, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  sub_100080A1C(__str);
  return __str;
}

void sub_1000807EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_100080874(char *__str, float a2)
{
  if (a2 == INFINITY)
  {
    v4 = 6712937;
LABEL_5:
    *__str = v4;
    return __str;
  }

  if (a2 == -INFINITY)
  {
    __str[4] = 0;
    v4 = 1718511917;
    goto LABEL_5;
  }

  if ((snprintf(__str, 0x18uLL, "%.*g", 6, a2) - 24) <= 0xFFFFFFE8)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1383);
    v6 = sub_10004FD04(v10, "CHECK failed: snprintf_result > 0 && snprintf_result < kFloatToBufferSize: ");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  v9 = 0.0;
  if ((!sub_1000811A4(__str, &v9) || v9 != a2) && (snprintf(__str, 0x18uLL, "%.*g", 9, a2) - 24) <= 0xFFFFFFE8)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1391);
    v7 = sub_10004FD04(v10, "CHECK failed: snprintf_result > 0 && snprintf_result < kFloatToBufferSize: ");
    sub_10004FE40(&v8, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  sub_100080A1C(__str);
  return __str;
}

void sub_1000809FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_100080A1C(char *a1)
{
  result = strchr(a1, 46);
  if (!result)
  {
    for (i = a1 + 2; ; ++i)
    {
      v4 = *(i - 2);
      if ((v4 - 48) >= 0xA && ((v4 - 43) > 0x3A || ((1 << (v4 - 43)) & 0x400000004000005) == 0))
      {
        break;
      }
    }

    if (*(i - 2))
    {
      v7 = (i - 1);
      v6 = *(i - 1);
      *(i - 2) = 46;
      if ((v6 - 48) >= 0xA && ((v6 - 43) > 0x3A || ((1 << (v6 - 43)) & 0x400000004000005) == 0))
      {
        if (v6)
        {
          do
          {
            v8 = i;
            v9 = *i;
            if ((v9 - 48) < 0xA)
            {
              break;
            }

            ++i;
            v10 = (v9 - 43) > 0x3A || ((1 << (v9 - 43)) & 0x400000004000005) == 0;
          }

          while (v10 && v9 != 0);
          v12 = strlen(v8) + 1;

          return memmove(v7, v8, v12);
        }
      }
    }
  }

  return result;
}

double sub_100080B40(std::string *a1, char **a2)
{
  v17 = 0;
  v4 = strtod(a1, &v17);
  v5 = v17;
  if (a2)
  {
    *a2 = v17;
  }

  if (v5->__r_.__value_.__s.__data_[0] == 46)
  {
    v6 = snprintf(&__str, 0x10uLL, "%.1f", 1.5);
    if (__str != 49)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2425);
      v7 = sub_10004FD04(v19, "CHECK failed: (temp[0]) == ('1'): ");
      sub_10004FE40(&v18, &v7->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    if (v21[v6 - 2] != 53)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2426);
      v8 = sub_10004FD04(v19, "CHECK failed: (temp[size - 1]) == ('5'): ");
      sub_10004FE40(&v18, &v8->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    if (v6 >= 7)
    {
      sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2427);
      v9 = sub_10004FD04(v19, "CHECK failed: (size) <= (6): ");
      sub_10004FE40(&v18, &v9->__r_.__value_.__l.__data_);
      sub_10004FE48(v19);
    }

    memset(&v16, 0, sizeof(v16));
    v10 = strlen(a1);
    std::string::reserve(&v16, v10 + v6 - 3);
    sub_1000332FC(&v16, a1, v5);
    std::string::append(&v16, v21, v6 - 2);
    std::string::append(&v16, &v5->__r_.__value_.__s.__data_[1]);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    v19[0].__r_.__value_.__r.__words[0] = 0;
    v4 = strtod(v11, &v19[0].__r_.__value_.__l.__data_);
    v12 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    if (a2 && (v19[0].__r_.__value_.__r.__words[0] - v11) > v17 - a1)
    {
      v13 = strlen(a1);
      if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v14 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v14 = v16.__r_.__value_.__r.__words[1];
      }

      *a2 = a1 + v19[0].__r_.__value_.__r.__words[0] - (v11 + v14 - v13);
    }

    if (v12 < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }
  }

  return v4;
}

uint64_t sub_100080E00(unsigned __int8 *a1, uint64_t a2, char *a3)
{
  if (!a3)
  {
    sub_10004FCEC(v34, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1305);
    v6 = sub_10004FD04(v34, "CHECK failed: value != nullptr: ");
    v7 = sub_10004FD04(v6, "nullptr output BOOLean given.");
    sub_10004FE40(&v33, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v34);
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      v23 = 0;
      while (1)
      {
        v24 = a1[v23];
        v25 = aTrue[v23];
        if ((v24 - 65) < 0x1A)
        {
          v24 += 32;
        }

        if ((v25 - 65) < 0x1A)
        {
          v25 += 32;
        }

        if (v24 != v25)
        {
          break;
        }

        if (++v23 == 4)
        {
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 5)
    {
      v11 = "false";
      v12 = a1;
      v13 = 5;
      while (1)
      {
        v15 = *v12++;
        v14 = v15;
        v16 = v15 + 32;
        v17 = (v15 - 65) >= 0x1A;
        v19 = *v11++;
        v18 = v19;
        if (!v17)
        {
          v14 = v16;
        }

        if ((v18 - 65) < 0x1A)
        {
          v18 += 32;
        }

        if (v14 != v18)
        {
          break;
        }

        if (!--v13)
        {
          goto LABEL_56;
        }
      }
    }
  }

  else if (a2 == 1)
  {
    v20 = 0;
    while (1)
    {
      v21 = a1[v20];
      v22 = aT[v20];
      if ((v21 - 65) < 0x1A)
      {
        v21 += 32;
      }

      if ((v22 - 65) < 0x1A)
      {
        v22 += 32;
      }

      if (v21 != v22)
      {
        break;
      }

      if (++v20 == 1)
      {
        goto LABEL_48;
      }
    }

    v26 = 0;
    while (1)
    {
      v27 = a1[v26];
      v28 = aY[v26];
      if ((v27 - 65) < 0x1A)
      {
        v27 += 32;
      }

      if ((v28 - 65) < 0x1A)
      {
        v28 += 32;
      }

      if (v27 != v28)
      {
        break;
      }

      if (++v26 == 1)
      {
        goto LABEL_48;
      }
    }

    v30 = *a1;
    if ((v30 - 65) < 0x1A)
    {
      v30 += 32;
    }

    if (v30 == 49)
    {
LABEL_48:
      v29 = 1;
LABEL_57:
      *a3 = v29;
      return 1;
    }
  }

  else if (a2 == 3)
  {
    v8 = 0;
    while (1)
    {
      v9 = a1[v8];
      v10 = aYes[v8];
      if ((v9 - 65) < 0x1A)
      {
        v9 += 32;
      }

      if ((v10 - 65) < 0x1A)
      {
        v10 += 32;
      }

      if (v9 != v10)
      {
        break;
      }

      if (++v8 == 3)
      {
        goto LABEL_48;
      }
    }
  }

  sub_10008432C(v34, "f");
  if (sub_10008113C(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_) & 1) != 0 || (sub_10008432C(v34, "no"), (sub_10008113C(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_)) || (sub_10008432C(v34, "n"), (sub_10008113C(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_)) || (sub_10008432C(v34, "0"), v31 = sub_10008113C(a1, a2, v34[0].__r_.__value_.__l.__data_, v34[0].__r_.__value_.__l.__size_), result = 0, v31))
  {
LABEL_56:
    v29 = 0;
    goto LABEL_57;
  }

  return result;
}

void sub_100081124(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008113C(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  if (a2 != a4)
  {
    return 0;
  }

  if (!a2)
  {
    return 1;
  }

  v4 = a2 - 1;
  do
  {
    v6 = *a1++;
    v5 = v6;
    v7 = v6 + 32;
    if ((v6 - 65) < 0x1A)
    {
      v5 = v7;
    }

    v9 = *a3++;
    v8 = v9;
    v10 = v9 + 32;
    if ((v9 - 65) >= 0x1A)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    v13 = v4-- != 0;
    v14 = v5 == v11;
    v15 = v5 == v11;
  }

  while (v14 && v13);
  return v15;
}

BOOL sub_1000811A4(const char *a1, float *a2)
{
  v5 = 0;
  *__error() = 0;
  *a2 = strtof(a1, &v5);
  return *a1 && !*v5 && *__error() == 0;
}

BOOL sub_100081218(std::string *a1, double *a2)
{
  v6 = 0;
  *a2 = sub_100080B40(a1, &v6);
  v3 = v6;
  if (v6 != a1)
  {
    while (1)
    {
      v4 = *v3;
      if ((v4 - 9) >= 5 && v4 != 32)
      {
        break;
      }

      v6 = ++v3;
    }
  }

  return a1->__r_.__value_.__s.__data_[0] && *v3 == 0;
}

uint64_t sub_1000812A0(uint64_t a1, int *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_100019AD4(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_100081330(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100081314(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100081330(std::string *__str, int *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return sub_100084558(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100019AD4(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_1000844C4(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1000814A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000814C0(uint64_t a1, unsigned int *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_100019AD4(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_100081550(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100081534(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100081550(std::string *__str, unsigned int *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100019AD4(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_1000845F8(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1000816B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000816CC(uint64_t a1, int64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_100019AD4(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_10008175C(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100081740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008175C(std::string *__str, int64_t *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return sub_100084714(__str, a2);
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100019AD4(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_100084688(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_1000818D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000818EC(uint64_t a1, unint64_t *a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_100019AD4(&__p, *a1, *(a1 + 8));
  }

  else
  {
    __p = *a1;
  }

  v3 = sub_10008197C(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v3;
}

void sub_100081960(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10008197C(std::string *__str, unint64_t *a2)
{
  *a2 = 0;
  v4 = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  if (v4 < 0)
  {
    v5 = __str->__r_.__value_.__r.__words[0];
    size = __str->__r_.__value_.__l.__size_;
  }

  else
  {
    v5 = __str;
    size = SHIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  v7 = v5 + size;
  v8 = v5;
  if (size >= 1)
  {
    v8 = v5;
    do
    {
      if (v8->__r_.__value_.__s.__data_[0] != 32)
      {
        break;
      }

      v8 = (v8 + 1);
    }

    while (v8 < v7);
  }

  v9 = v5->__r_.__value_.__r.__words + size + 1;
  do
  {
    if (v8 >= v7)
    {
      return 0;
    }

    v10 = *--v7;
    --v9;
  }

  while (v10 == 32);
  v11 = v8->__r_.__value_.__s.__data_[0];
  if (v11 == 45 || v11 == 43)
  {
    v8 = (v8 + 1);
    if (v8 >= (v7 + 1))
    {
      return 0;
    }
  }

  v12 = __str;
  if ((v4 & 0x80000000) != 0)
  {
    v12 = __str->__r_.__value_.__r.__words[0];
  }

  std::string::basic_string(&v17, __str, v8 - v12, v9 - v8, &v18);
  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str->__r_.__value_.__l.__data_);
  }

  *__str = v17;
  if (v11 == 45)
  {
    return 0;
  }

  if (SHIBYTE(__str->__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100019AD4(__p, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
  }

  else
  {
    *__p = *&__str->__r_.__value_.__l.__data_;
    v16 = __str->__r_.__value_.__r.__words[2];
  }

  v13 = sub_1000847B0(__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  return v13;
}

void sub_100081ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100081AF8(void *result, unint64_t a2, char a3)
{
  v3 = 0;
  v4 = (1 << (4 * a3 - 4)) | a2;
  do
  {
    *(result + v3 + 47) = a0123456789abcd[a2 & 0xF];
    a2 >>= 4;
    --v3;
    v5 = v4 > 0xF;
    v4 >>= 4;
  }

  while (v5);
  *result = result + v3 + 48;
  result[1] = -v3;
  return result;
}

void sub_100081B54(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a3, *(a2 + 8) + *(a1 + 8), 0);
  if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v6 = a3;
  }

  else
  {
    v6 = a3->__r_.__value_.__r.__words[0];
  }

  v7 = *(a1 + 8);
  if (v7)
  {
    memcpy(v6, *a1, v7);
    v8 = v6 + *(a1 + 8);
  }

  else
  {
    v8 = v6;
  }

  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(v8, *a2, v9);
    v8 += *(a2 + 8);
  }

  size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a3->__r_.__value_.__l.__size_;
  }

  if (v8 != v6 + size)
  {
    sub_10004FCEC(v13, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1477);
    v11 = sub_10004FD04(v13, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v12, &v11->__r_.__value_.__l.__data_);
    sub_10004FE48(v13);
  }
}

void sub_100081C58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

void sub_100081C8C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  std::string::resize(a4, *(a2 + 8) + *(a1 + 8) + *(a3 + 8), 0);
  if ((a4->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = a4;
  }

  else
  {
    v8 = a4->__r_.__value_.__r.__words[0];
  }

  v9 = *(a1 + 8);
  if (v9)
  {
    memcpy(v8, *a1, v9);
    v10 = v8 + *(a1 + 8);
  }

  else
  {
    v10 = v8;
  }

  v11 = *(a2 + 8);
  if (v11)
  {
    memcpy(v10, *a2, v11);
    v10 += *(a2 + 8);
  }

  v12 = *(a3 + 8);
  if (v12)
  {
    memcpy(v10, *a3, v12);
    v10 += *(a3 + 8);
  }

  size = HIBYTE(a4->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a4->__r_.__value_.__l.__size_;
  }

  if (v10 != v8 + size)
  {
    sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1487);
    v14 = sub_10004FD04(v16, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v15, &v14->__r_.__value_.__l.__data_);
    sub_10004FE48(v16);
  }
}

void sub_100081DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_100081DF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  std::string::resize(a5, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8), 0);
  if (*(a5 + 23) >= 0)
  {
    v10 = a5;
  }

  else
  {
    v10 = *a5;
  }

  result = sub_100081F24(v10, a1, a2, a3, a4);
  v12 = *(a5 + 23);
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a5 + 8);
  }

  if (result != &v10[v12])
  {
    sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1497);
    v13 = sub_10004FD04(v15, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v14, &v13->__r_.__value_.__l.__data_);
    return sub_10004FE48(v15);
  }

  return result;
}

void sub_100081EF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_100081F24(char *__dst, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __dst;
  v9 = *(a2 + 8);
  if (v9)
  {
    memcpy(__dst, *a2, v9);
    v8 += *(a2 + 8);
  }

  v11 = *(a3 + 8);
  if (v11)
  {
    memcpy(v8, *a3, v11);
    v8 += *(a3 + 8);
  }

  v12 = *(a4 + 8);
  if (v12)
  {
    memcpy(v8, *a4, v12);
    v8 += *(a4 + 8);
  }

  v13 = *(a5 + 8);
  if (v13)
  {
    memcpy(v8, *a5, v13);
    v8 += *(a5 + 8);
  }

  return v8;
}

char *sub_100081FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  std::string::resize(a6, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8), 0);
  if (*(a6 + 23) >= 0)
  {
    v12 = a6;
  }

  else
  {
    v12 = *a6;
  }

  result = sub_100081F24(v12, a1, a2, a3, a4);
  v14 = result;
  v15 = *(a5 + 8);
  if (v15)
  {
    result = memcpy(result, *a5, v15);
    v14 += *(a5 + 8);
  }

  v16 = *(a6 + 23);
  if ((v16 & 0x80u) != 0)
  {
    v16 = *(a6 + 8);
  }

  if (v14 != &v12[v16])
  {
    sub_10004FCEC(v19, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1508);
    v17 = sub_10004FD04(v19, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v18, &v17->__r_.__value_.__l.__data_);
    return sub_10004FE48(v19);
  }

  return result;
}

void sub_100082108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_10008213C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  *a7 = 0;
  *(a7 + 8) = 0;
  *(a7 + 16) = 0;
  std::string::resize(a7, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8), 0);
  if (*(a7 + 23) >= 0)
  {
    v14 = a7;
  }

  else
  {
    v14 = *a7;
  }

  result = sub_100081F24(v14, a1, a2, a3, a4);
  v16 = result;
  v17 = *(a5 + 8);
  if (v17)
  {
    result = memcpy(result, *a5, v17);
    v16 += *(a5 + 8);
  }

  v18 = *(a6 + 8);
  if (v18)
  {
    result = memcpy(v16, *a6, v18);
    v16 += *(a6 + 8);
  }

  v19 = *(a7 + 23);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a7 + 8);
  }

  if (v16 != &v14[v19])
  {
    sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1520);
    v20 = sub_10004FD04(v22, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v21, &v20->__r_.__value_.__l.__data_);
    return sub_10004FE48(v22);
  }

  return result;
}

void sub_100082294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_1000822C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = 0;
  *(a8 + 8) = 0;
  *(a8 + 16) = 0;
  std::string::resize(a8, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8), 0);
  if (*(a8 + 23) >= 0)
  {
    v16 = a8;
  }

  else
  {
    v16 = *a8;
  }

  result = sub_100081F24(v16, a1, a2, a3, a4);
  v18 = result;
  v19 = *(a5 + 8);
  if (v19)
  {
    result = memcpy(result, *a5, v19);
    v18 += *(a5 + 8);
  }

  v20 = *(a6 + 8);
  if (v20)
  {
    result = memcpy(v18, *a6, v20);
    v18 += *(a6 + 8);
  }

  v21 = *(a7 + 8);
  if (v21)
  {
    result = memcpy(v18, *a7, v21);
    v18 += *(a7 + 8);
  }

  v22 = *(a8 + 23);
  if ((v22 & 0x80u) != 0)
  {
    v22 = *(a8 + 8);
  }

  if (v18 != &v16[v22])
  {
    sub_10004FCEC(v25, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1534);
    v23 = sub_10004FD04(v25, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v24, &v23->__r_.__value_.__l.__data_);
    return sub_10004FE48(v25);
  }

  return result;
}

void sub_100082450(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_100082484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  std::string::resize(a9, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8) + *(a8 + 8), 0);
  if (*(a9 + 23) >= 0)
  {
    v18 = a9;
  }

  else
  {
    v18 = *a9;
  }

  v19 = sub_100081F24(v18, a1, a2, a3, a4);
  result = sub_100081F24(v19, a5, a6, a7, a8);
  v21 = *(a9 + 23);
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a9 + 8);
  }

  if (result != &v18[v21])
  {
    sub_10004FCEC(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1547);
    v22 = sub_10004FD04(v24, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v23, &v22->__r_.__value_.__l.__data_);
    return sub_10004FE48(v24);
  }

  return result;
}

void sub_1000825D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

char *sub_100082608@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = 0;
  *(a9 + 8) = 0;
  *(a9 + 16) = 0;
  std::string::resize(a9, *(a2 + 8) + *(a1 + 8) + *(a3 + 8) + *(a4 + 8) + *(a5 + 8) + *(a6 + 8) + *(a7 + 8) + *(a8 + 8) + *(a10 + 8), 0);
  if (*(a9 + 23) >= 0)
  {
    v18 = a9;
  }

  else
  {
    v18 = *a9;
  }

  v19 = sub_100081F24(v18, a1, a2, a3, a4);
  result = sub_100081F24(v19, a5, a6, a7, a8);
  v21 = result;
  v22 = *(a10 + 8);
  if (v22)
  {
    result = memcpy(result, *a10, v22);
    v21 += *(a10 + 8);
  }

  v23 = *(a9 + 23);
  if ((v23 & 0x80u) != 0)
  {
    v23 = *(a9 + 8);
  }

  if (v21 != &v18[v23])
  {
    sub_10004FCEC(v27, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1561);
    v24 = sub_10004FD04(v27, "CHECK failed: (out) == (begin + result.size()): ");
    sub_10004FE40(&v26, &v24->__r_.__value_.__l.__data_);
    return sub_10004FE48(v27);
  }

  return result;
}

void sub_100082784(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  if (*(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  _Unwind_Resume(a1);
}

std::string *sub_1000827B8(std::string *this, uint64_t a2)
{
  v4 = *a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v6 = &v4[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v6 = (v4 - this);
  }

  if (v6 <= size)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1574);
    v7 = sub_10004FD04(v10, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
    v4 = *a2;
  }

  return std::string::append(this, v4, *(a2 + 8));
}

void sub_100082854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10008286C(std::string *this, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v7 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v8 = &v6[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v8 = v6 - this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v8 <= size)
  {
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1579);
    v10 = sub_10004FD04(v23, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v22, &v10->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
  }

  v11 = *a3;
  if ((v7 & 0x80) != 0)
  {
    v13 = this->__r_.__value_.__l.__size_;
    v12 = &v11[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v12 = v11 - this;
    v13 = v7;
  }

  if (v12 <= v13)
  {
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1580);
    v14 = sub_10004FD04(v23, "CHECK failed: (uintptr_t((b).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v22, &v14->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
    LOBYTE(v7) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v7 & 0x80) != 0)
  {
    v15 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v15 = v7;
  }

  std::string::resize(this, *(a2 + 8) + *(a3 + 8) + v15, 0);
  v16 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v16 = this->__r_.__value_.__r.__words[0];
  }

  v17 = v16 + v15;
  v18 = *(a2 + 8);
  if (v18)
  {
    memcpy(v17, *a2, v18);
    v17 += *(a2 + 8);
  }

  v19 = *(a3 + 8);
  if (v19)
  {
    memcpy(v17, *a3, v19);
    v17 += *(a3 + 8);
  }

  v20 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v20 & 0x8000000000000000) != 0)
  {
    v20 = this->__r_.__value_.__l.__size_;
  }

  if (v17 != v16 + v20)
  {
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1585);
    v21 = sub_10004FD04(v23, "CHECK failed: (out) == (begin + result->size()): ");
    sub_10004FE40(&v22, &v21->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
  }
}

void sub_100082A48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100082A70(std::string *this, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v9 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v10 = &v8[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v10 = v8 - this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v10 <= size)
  {
    sub_10004FCEC(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1590);
    v12 = sub_10004FD04(v30, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v29, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v30);
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

  v13 = *a3;
  if ((v9 & 0x80) != 0)
  {
    v15 = this->__r_.__value_.__l.__size_;
    v14 = &v13[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v14 = v13 - this;
    v15 = v9;
  }

  if (v14 <= v15)
  {
    sub_10004FCEC(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1591);
    v16 = sub_10004FD04(v30, "CHECK failed: (uintptr_t((b).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v29, &v16->__r_.__value_.__l.__data_);
    sub_10004FE48(v30);
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

  v17 = *a4;
  if ((v9 & 0x80) != 0)
  {
    v19 = this->__r_.__value_.__l.__size_;
    v18 = &v17[-this->__r_.__value_.__r.__words[0]];
  }

  else
  {
    v18 = v17 - this;
    v19 = v9;
  }

  if (v18 <= v19)
  {
    sub_10004FCEC(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1592);
    v20 = sub_10004FD04(v30, "CHECK failed: (uintptr_t((c).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v29, &v20->__r_.__value_.__l.__data_);
    sub_10004FE48(v30);
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v9 & 0x80) != 0)
  {
    v21 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v21 = v9;
  }

  std::string::resize(this, *(a2 + 8) + *(a3 + 8) + v21 + *(a4 + 8), 0);
  v22 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v22 = this->__r_.__value_.__r.__words[0];
  }

  v23 = v22 + v21;
  v24 = *(a2 + 8);
  if (v24)
  {
    memcpy(v23, *a2, v24);
    v23 += *(a2 + 8);
  }

  v25 = *(a3 + 8);
  if (v25)
  {
    memcpy(v23, *a3, v25);
    v23 += *(a3 + 8);
  }

  v26 = *(a4 + 8);
  if (v26)
  {
    memcpy(v23, *a4, v26);
    v23 += *(a4 + 8);
  }

  v27 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v27 & 0x8000000000000000) != 0)
  {
    v27 = this->__r_.__value_.__l.__size_;
  }

  if (v23 != v22 + v27)
  {
    sub_10004FCEC(v30, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1598);
    v28 = sub_10004FD04(v30, "CHECK failed: (out) == (begin + result->size()): ");
    sub_10004FE40(&v29, &v28->__r_.__value_.__l.__data_);
    sub_10004FE48(v30);
  }
}

void sub_100082CDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_100082D0C(std::string *this, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  v11 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v11 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v12 = v10 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v12 = v10 - this;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v12 <= size)
  {
    sub_10004FCEC(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1603);
    v14 = sub_10004FD04(v33, "CHECK failed: (uintptr_t((a).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v32, &v14->__r_.__value_.__l.__data_);
    sub_10004FE48(v33);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  v15 = *a3;
  if ((v11 & 0x80) != 0)
  {
    v17 = this->__r_.__value_.__l.__size_;
    v16 = v15 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v16 = v15 - this;
    v17 = v11;
  }

  if (v16 <= v17)
  {
    sub_10004FCEC(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1604);
    v18 = sub_10004FD04(v33, "CHECK failed: (uintptr_t((b).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v32, &v18->__r_.__value_.__l.__data_);
    sub_10004FE48(v33);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  v19 = *a4;
  if ((v11 & 0x80) != 0)
  {
    v21 = this->__r_.__value_.__l.__size_;
    v20 = v19 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v20 = v19 - this;
    v21 = v11;
  }

  if (v20 <= v21)
  {
    sub_10004FCEC(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1605);
    v22 = sub_10004FD04(v33, "CHECK failed: (uintptr_t((c).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v32, &v22->__r_.__value_.__l.__data_);
    sub_10004FE48(v33);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  v23 = *a5;
  if ((v11 & 0x80) != 0)
  {
    v25 = this->__r_.__value_.__l.__size_;
    v24 = v23 - this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v24 = v23 - this;
    v25 = v11;
  }

  if (v24 <= v25)
  {
    sub_10004FCEC(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1606);
    v26 = sub_10004FD04(v33, "CHECK failed: (uintptr_t((d).data() - (*result).data())) > (uintptr_t((*result).size())): ");
    sub_10004FE40(&v32, &v26->__r_.__value_.__l.__data_);
    sub_10004FE48(v33);
    LOBYTE(v11) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v11 & 0x80) != 0)
  {
    v27 = this->__r_.__value_.__l.__size_;
  }

  else
  {
    v27 = v11;
  }

  std::string::resize(this, a2[1] + a3[1] + v27 + a4[1] + a5[1], 0);
  v28 = this;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    v28 = this->__r_.__value_.__r.__words[0];
  }

  result = sub_100081F24(v28 + v27, a2, a3, a4, a5);
  v30 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v30 & 0x8000000000000000) != 0)
  {
    v30 = this->__r_.__value_.__l.__size_;
  }

  if (result != v28 + v30)
  {
    sub_10004FCEC(v33, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1611);
    v31 = sub_10004FD04(v33, "CHECK failed: (out) == (begin + result->size()): ");
    sub_10004FE40(&v32, &v31->__r_.__value_.__l.__data_);
    return sub_10004FE48(v33);
  }

  return result;
}

void sub_100082FB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100082FEC(uint64_t a1, uint64_t a2, std::string *this)
{
  if (!this)
  {
    sub_10004FCEC(&v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 1616);
    v6 = sub_10004FD04(&v24, "CHECK failed: s != nullptr: ");
    sub_10004FE40(&v23, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(&v24);
  }

  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!this->__r_.__value_.__l.__size_)
    {
      return 0;
    }
  }

  else if (!*(&this->__r_.__value_.__s + 23))
  {
    return 0;
  }

  v7 = *(a1 + 23);
  if ((v7 & 0x8000000000000000) != 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      memset(&v24, 0, sizeof(v24));
      v8 = *a1;
      goto LABEL_12;
    }

    return 0;
  }

  if (!*(a1 + 23))
  {
    return 0;
  }

  memset(&v24, 0, sizeof(v24));
  v8 = a1;
LABEL_12:
  v9 = std::string::find(this, v8, 0, v7);
  if (v9 == -1)
  {
    v10 = 0;
  }

  else
  {
    v11 = 0;
    LODWORD(v10) = 0;
    do
    {
      std::string::append(&v24, this, v11, v9 - v11);
      v12 = *(a2 + 23);
      if ((v12 & 0x80u) == 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = *a2;
      }

      if ((v12 & 0x80u) != 0)
      {
        v12 = *(a2 + 8);
      }

      sub_1000831F0(&v24, v13, (v13 + v12));
      v14 = *(a1 + 23);
      if (v14 >= 0)
      {
        v15 = *(a1 + 23);
      }

      else
      {
        v15 = *(a1 + 8);
      }

      if (v14 >= 0)
      {
        v16 = a1;
      }

      else
      {
        v16 = *a1;
      }

      v17 = v15 + v9;
      v18 = v15 + v9;
      v9 = std::string::find(this, v16, v18, v15);
      v10 = (v10 + 1);
      v11 = v17;
    }

    while (v9 != -1);
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((size & 0x8000000000000000) != 0)
    {
      size = this->__r_.__value_.__l.__size_;
    }

    std::string::append(&v24, this, v18, size - v18);
    v20 = this->__r_.__value_.__r.__words[2];
    v21 = *&this->__r_.__value_.__l.__data_;
    *this = v24;
    *&v24.__r_.__value_.__l.__data_ = v21;
    v24.__r_.__value_.__r.__words[2] = v20;
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return v10;
}

void sub_1000831BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_1000831F0(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    sub_100033474(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_10008334C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100083368(int a1, int a2)
{
  v2 = (4 * (a1 / 3));
  if (a1 % 3)
  {
    v3 = v2 | 3;
    v4 = v2 + 4;
    if (a2)
    {
      v3 = v2 + 4;
    }

    LODWORD(v2) = v2 | 2;
    if (a2)
    {
      LODWORD(v2) = v4;
    }

    if (a1 % 3 == 1)
    {
      v2 = v2;
    }

    else
    {
      v2 = v3;
    }
  }

  if (v2 < a1)
  {
    sub_100084890();
  }

  return v2;
}

uint64_t sub_1000833D8(unsigned __int8 *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  if (!a3)
  {
    if (a2 >= 4)
    {
      v6 = 0;
      LODWORD(v23) = 0;
      while (*a1)
      {
        if (!a1[1])
        {
          break;
        }

        if (!a1[2])
        {
          break;
        }

        v6 = (*(a5 + a1[1]) << 12) | (*(a5 + *a1) << 18) | (*(a5 + a1[2]) << 6) | *(a5 + a1[3]);
        if ((v6 & 0x80000000) != 0)
        {
          break;
        }

        LODWORD(v7) = 0;
        a2 -= 4;
        a1 += 4;
        v8 = -1;
LABEL_75:
        v24 = 0;
        LODWORD(v23) = v23 + 3;
        if (a2 <= 3)
        {
          goto LABEL_112;
        }
      }

      v26 = a2 + 1;
      v27 = a1 + 1;
      v28 = a1 + 2;
      v29 = a2 - 1;
      v30 = a1 + 3;
      v31 = a2 - 2;
      v32 = a1 + 4;
      while (1)
      {
        v16 = *(v27 - 1);
        v8 = *(a5 + v16);
        if ((v8 & 0x80000000) == 0)
        {
          break;
        }

        a1 = v27;
        if ((v16 - 9) >= 5 && v16 != 32)
        {
          a2 = v26 - 2;
LABEL_101:
          v24 = 0;
LABEL_102:
          LODWORD(v7) = v16;
          goto LABEL_112;
        }

        ++v27;
        --v26;
        --a2;
        ++v28;
        --v29;
        ++v30;
        --v31;
        ++v32;
        if (v26 <= 4)
        {
          a2 = 3;
          goto LABEL_101;
        }
      }

      while (1)
      {
        v34 = *(v28 - 1);
        v8 = *(a5 + v34);
        if ((v8 & 0x80000000) == 0)
        {
          break;
        }

        v33 = a2;
        a1 = v28;
        if ((v34 - 9) < 5 || v34 == 32)
        {
          ++v28;
          --a2;
          --v29;
          ++v30;
          --v31;
          ++v32;
          if (a2 > 3)
          {
            continue;
          }
        }

        a2 = v33 - 2;
        v24 = 1;
        LODWORD(v7) = v34;
        goto LABEL_112;
      }

      while (1)
      {
        v20 = *(v30 - 1);
        v8 = *(a5 + v20);
        if ((v8 & 0x80000000) == 0)
        {
          break;
        }

        v35 = v29;
        a1 = v30;
        if ((v20 - 9) < 5 || v20 == 32)
        {
          ++v30;
          --v29;
          --v31;
          ++v32;
          if (v29 > 2)
          {
            continue;
          }
        }

        a2 = v35 - 2;
        v24 = 2;
LABEL_109:
        LODWORD(v7) = v20;
        goto LABEL_112;
      }

      do
      {
        v36 = v31;
        a1 = v32;
        v7 = *(v32 - 1);
        v8 = *(a5 + v7);
        if ((v8 & 0x80000000) == 0)
        {
          a2 = v31 - 2;
          goto LABEL_75;
        }

        if ((v7 - 9) >= 5 && v7 != 32)
        {
          break;
        }

        ++v32;
        --v31;
      }

      while (v31 > 1);
      a2 = v36 - 2;
      v24 = 3;
      goto LABEL_112;
    }

LABEL_77:
    v6 = 0;
    v24 = 0;
    LODWORD(v23) = 0;
    goto LABEL_78;
  }

  if (a2 < 4)
  {
    goto LABEL_77;
  }

  v5 = 0;
  v6 = 0;
  while (*a1)
  {
    if (!a1[1])
    {
      break;
    }

    if (!a1[2])
    {
      break;
    }

    v6 = (*(a5 + a1[1]) << 12) | (*(a5 + *a1) << 18) | (*(a5 + a1[2]) << 6) | *(a5 + a1[3]);
    if ((v6 & 0x80000000) != 0)
    {
      break;
    }

    LODWORD(v7) = 0;
    a2 -= 4;
    a1 += 4;
    v8 = -1;
LABEL_37:
    v23 = v5 + 3;
    if (v5 + 3 > a4)
    {
      return 0xFFFFFFFFLL;
    }

    v24 = 0;
    v25 = &v5[a3];
    *(v25 + 1) = bswap32(v6) >> 16;
    v6 >>= 16;
    *v25 = v6;
    v5 = v23;
    if (a2 <= 3)
    {
      goto LABEL_112;
    }
  }

  v9 = a2 + 1;
  v10 = a1 + 1;
  v11 = a1 + 2;
  v12 = a2 - 1;
  v13 = a1 + 3;
  v14 = a2 - 2;
  v15 = a1 + 4;
  while (1)
  {
    v16 = *(v10 - 1);
    v17 = *(a5 + v16);
    if ((v17 & 0x80000000) == 0)
    {
      break;
    }

    a1 = v10;
    if ((v16 - 9) >= 5 && v16 != 32)
    {
      a2 = v9 - 2;
      goto LABEL_97;
    }

    ++v10;
    --v9;
    --a2;
    ++v11;
    --v12;
    ++v13;
    --v14;
    ++v15;
    if (v9 <= 4)
    {
      a2 = 3;
LABEL_97:
      v24 = 0;
      v8 = *(a5 + v16);
      LODWORD(v23) = v5;
      goto LABEL_102;
    }
  }

  while (1)
  {
    v19 = *(v11 - 1);
    v8 = *(a5 + v19);
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    v18 = a2;
    a1 = v11;
    if ((v19 - 9) < 5 || v19 == 32)
    {
      ++v11;
      --a2;
      --v12;
      ++v13;
      --v14;
      ++v15;
      if (a2 > 3)
      {
        continue;
      }
    }

    a2 = v18 - 2;
    v24 = 1;
    LODWORD(v23) = v5;
    LODWORD(v7) = v19;
    v6 = v17;
    goto LABEL_112;
  }

  v6 = v8 | (v17 << 6);
  while (1)
  {
    v20 = *(v13 - 1);
    v8 = *(a5 + v20);
    if ((v8 & 0x80000000) == 0)
    {
      break;
    }

    v21 = v12;
    a1 = v13;
    if ((v20 - 9) < 5 || v20 == 32)
    {
      ++v13;
      --v12;
      --v14;
      ++v15;
      if (v12 > 2)
      {
        continue;
      }
    }

    a2 = v21 - 2;
    v24 = 2;
    LODWORD(v23) = v5;
    goto LABEL_109;
  }

  v6 = v8 | (v6 << 6);
  do
  {
    v22 = v14;
    a1 = v15;
    v7 = *(v15 - 1);
    v8 = *(a5 + v7);
    if ((v8 & 0x80000000) == 0)
    {
      v6 = v8 | (v6 << 6);
      a2 = v14 - 2;
      goto LABEL_37;
    }

    if ((v7 - 9) >= 5 && v7 != 32)
    {
      break;
    }

    ++v15;
    --v14;
  }

  while (v14 > 1);
  a2 = v22 - 2;
  v24 = 3;
  LODWORD(v23) = v5;
LABEL_112:
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_113;
  }

  if (v7 == 61 || v7 == 46)
  {
    goto LABEL_122;
  }

  if (v7)
  {
    if ((v7 - 9) >= 5 && v7 != 32)
    {
      return 0xFFFFFFFFLL;
    }

LABEL_113:
    if (v7 != 61 && v7 != 46)
    {
      goto LABEL_78;
    }

LABEL_122:
    v37 = a2 + 1;
    v38 = a1 - 1;
    goto LABEL_123;
  }

LABEL_78:
  if (a2 >= 1)
  {
LABEL_79:
    v37 = a2;
    while (1)
    {
      v38 = a1;
      a2 = v37 - 1;
      v40 = *a1++;
      v39 = v40;
      v41 = *(a5 + v40);
      if ((v41 & 0x80000000) == 0)
      {
        v43 = v41 | (v6 << 6);
        if (++v24 == 4)
        {
          v44 = v23 + 3;
          if (a3)
          {
            if (v44 > a4)
            {
              return 0xFFFFFFFFLL;
            }

            v24 = 0;
            v45 = v6 << 6;
            v23 = (a3 + v23);
            v23[2] = v43;
            v23[1] = BYTE1(v45);
            *v23 = BYTE2(v45);
            LODWORD(v23) = v44;
            v6 = 0;
          }

          else
          {
            v24 = 0;
            v6 = 0;
            LODWORD(v23) = v23 + 3;
          }
        }

        else
        {
          v6 = v43;
        }

        a1 = v38 + 1;
        if (v37 < 2)
        {
          ++v38;
          --v37;
          goto LABEL_123;
        }

        goto LABEL_79;
      }

      if ((v39 - 9) >= 5)
      {
        if (v39 > 45)
        {
          if (v39 == 46 || v39 == 61)
          {
            goto LABEL_123;
          }

          return 0xFFFFFFFFLL;
        }

        if (v39 != 32)
        {
          if (!v39)
          {
            --v37;
            goto LABEL_96;
          }

          return 0xFFFFFFFFLL;
        }
      }

      v42 = v37--;
      if (v42 <= 1)
      {
        v37 = 0;
LABEL_96:
        ++v38;
        goto LABEL_123;
      }
    }
  }

  v37 = a2;
  v38 = a1;
LABEL_123:
  if (v24 > 1)
  {
    if (v24 == 3)
    {
      v47 = v23 + 2;
      if (a3)
      {
        if (v47 > a4)
        {
          return 0xFFFFFFFFLL;
        }

        v48 = (a3 + v23);
        v48[1] = v6 >> 2;
        *v48 = v6 >> 10;
      }

      LODWORD(result) = -2;
      LODWORD(v23) = v47;
    }

    else
    {
      if (a3)
      {
        if (v23 >= a4)
        {
          return 0xFFFFFFFFLL;
        }

        *(a3 + v23) = v6 >> 4;
      }

      LODWORD(v23) = v23 + 1;
      LODWORD(result) = -3;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
    if (v24)
    {
      return result;
    }
  }

  if (v37 >= 1)
  {
    v49 = 0;
    v50 = v37 + 1;
    while (1)
    {
      v51 = *v38;
      if (v51 > 0x3D)
      {
        return 0xFFFFFFFFLL;
      }

      if (((1 << v51) & 0x100003E00) == 0)
      {
        if (((1 << v51) & 0x2000400000000000) == 0)
        {
          if (!*v38)
          {
            goto LABEL_144;
          }

          return 0xFFFFFFFFLL;
        }

        ++v49;
      }

      ++v38;
      if (--v50 <= 1)
      {
        goto LABEL_144;
      }
    }
  }

  v49 = 0;
LABEL_144:
  if ((v49 & result) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v23;
  }
}

BOOL sub_100083A84(unsigned __int8 *a1, int a2, std::string *this, uint64_t a4)
{
  v8 = a2 - a2 / 4;
  std::string::resize(this, v8, 0);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      v9 = this->__r_.__value_.__r.__words[0];
      goto LABEL_7;
    }
  }

  else
  {
    v9 = this;
    if (*(&this->__r_.__value_.__s + 23))
    {
      goto LABEL_7;
    }
  }

  v9 = 0;
LABEL_7:
  v10 = sub_1000833D8(a1, a2, v9, v8, a4);
  v11 = v10;
  if (v10 < 0)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      *this->__r_.__value_.__l.__data_ = 0;
      this->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      this->__r_.__value_.__s.__data_[0] = 0;
      *(&this->__r_.__value_.__s + 23) = 0;
    }
  }

  else
  {
    if (v10 > v8)
    {
      sub_10004FCEC(v15, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2073);
      v12 = sub_10004FD04(v15, "CHECK failed: (len) <= (dest_len): ");
      sub_10004FE40(&v14, &v12->__r_.__value_.__l.__data_);
      sub_10004FE48(v15);
    }

    std::string::erase(this, v11, 0xFFFFFFFFFFFFFFFFLL);
  }

  return v11 >= 0;
}

void sub_100083BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100083BD0(unsigned __int16 *a1, int a2, _BYTE *a3, int a4, uint64_t a5, int a6)
{
  if (a2 < 1 || 3 * a4 < 4 * a2)
  {
    return 0;
  }

  v7 = a3;
  v8 = a1 + a2;
  for (i = a3; a1 < (v8 - 3); i += 4)
  {
    v10 = *a1;
    a1 = (a1 + 3);
    v11 = bswap32(v10);
    *i = *(a5 + (v11 >> 26));
    i[1] = *(a5 + ((v11 >> 20) & 0x3F));
    i[2] = *(a5 + ((v11 >> 14) & 0x3F));
    i[3] = *(a5 + ((v11 >> 8) & 0x3F));
  }

  v12 = a3 + a4 - i;
  v13 = v8 - a1;
  if (v8 - a1 > 1)
  {
    if (v13 == 2)
    {
      if (v12 < 3)
      {
        return 0;
      }

      v20 = bswap32(*a1);
      *i = *(a5 + (WORD1(v20) >> 10));
      i[1] = *(a5 + ((v20 >> 20) & 0x3F));
      i[2] = *(a5 + ((v20 >> 14) & 0x3CLL));
      if (!a6)
      {
        LODWORD(i) = i + 3;
        return (i - v7);
      }

      if (v12 == 3)
      {
        return 0;
      }

      v17 = 61;
    }

    else
    {
      if (v13 != 3)
      {
        goto LABEL_19;
      }

      if (v12 < 4)
      {
        return 0;
      }

      v15 = *a1;
      v16 = bswap32(*(a1 + 1));
      *i = *(a5 + (v15 >> 2));
      i[1] = *(a5 + (((__PAIR64__(v15, v16) >> 16) & 0x3F000) >> 12));
      i[2] = *(a5 + ((v16 >> 22) & 0x3F));
      v17 = *(a5 + ((v16 >> 16) & 0x3F));
    }

    i[3] = v17;
    goto LABEL_18;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      if (v12 >= 2)
      {
        v14 = *a1;
        *i = *(a5 + (v14 >> 2));
        i[1] = *(a5 + 16 * (v14 & 3));
        if (!a6)
        {
          LODWORD(i) = i + 2;
          return (i - v7);
        }

        if (v12 >= 4)
        {
          *(i + 1) = 15677;
LABEL_18:
          LODWORD(i) = i + 4;
          return (i - v7);
        }
      }

      return 0;
    }

LABEL_19:
    sub_10004FCEC(v22, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2181);
    v18 = sub_10004FD04(v22, "Logic problem? szsrc = ");
    v19 = sub_100050324(v18, v13);
    sub_10004FE40(&v21, &v19->__r_.__value_.__l.__data_);
    sub_10004FE48(v22);
  }

  return (i - v7);
}

void sub_100083DDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

std::string *sub_100083E14(unsigned __int16 *a1, int a2, uint64_t a3, int a4, uint64_t a5)
{
  v10 = sub_100083368(a2, a4);
  std::string::resize(a3, v10, 0);
  v11 = *(a3 + 23);
  if (v11 < 0)
  {
    v11 = *(a3 + 8);
    if (v11)
    {
      v12 = *a3;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (*(a3 + 23))
  {
    v12 = a3;
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_100083BD0(a1, a2, v12, v11, a5, a4);
  if (v10 != v13)
  {
    sub_10004FCEC(v17, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/strutil.cc", 2213);
    v14 = sub_10004FD04(v17, "CHECK failed: (calc_escaped_size) == (escaped_len): ");
    sub_10004FE40(&v16, &v14->__r_.__value_.__l.__data_);
    sub_10004FE48(v17);
  }

  return std::string::erase(a3, v13, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_100083F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100083F70(unsigned int a1, void *a2)
{
  if (a1 >= 0x80)
  {
    if (HIWORD(a1))
    {
      v4 = (16 * a1) & 0x3F0000 | a1 & 0x3F | (((a1 >> 18) & 7) << 24) | (((a1 >> 6) & 0x3F) << 8) | 0xF0808080;
    }

    else
    {
      v4 = (4 * a1) & 0x3F00 | a1 & 0x3F | (a1 >> 12 << 16) | 0xE08080;
    }

    if (HIWORD(a1))
    {
      v5 = 4;
    }

    else
    {
      v5 = 3;
    }

    v6 = a1 > 0x7FF;
    if (a1 <= 0x7FF)
    {
      a1 = (4 * a1) & 0x1F00 | a1 & 0x3F | 0xC080;
    }

    else
    {
      a1 = v4;
    }

    if (v6)
    {
      v3 = v5;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 1;
  }

  v8 = sub_100050860(a1);
  memcpy(a2, &v8 - v3 + 4, v3);
  return v3;
}

uint64_t sub_10008404C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    return byte_100092997[*a1];
  }

  else
  {
    return 0;
  }
}

void sub_10008406C(uint64_t a1, std::string *this, int a3)
{
  if ((SHIBYTE(this->__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (this->__r_.__value_.__l.__size_)
    {
      goto LABEL_3;
    }
  }

  else if (*(&this->__r_.__value_.__s + 23))
  {
LABEL_3:
    if (*(a1 + 23) < 0)
    {
      sub_100019AD4(&__p, *a1, *(a1 + 8));
    }

    else
    {
      __p = *a1;
    }

    sub_100084184(&__p, a3);
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

    std::string::append(this, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return;
  }

  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  std::string::append(this, v6, v7);

  sub_100084184(this, a3);
}

void sub_100084168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100084184(std::string *this, int a2)
{
  v2 = this;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v4 = this;
  if (size < 0)
  {
    v4 = this->__r_.__value_.__r.__words[0];
    size = this->__r_.__value_.__l.__size_;
  }

  if (size >= 1)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    while (1)
    {
      if (v6)
      {
        v8 = v4 + v7;
        v9 = v4->__r_.__value_.__s.__data_[v7];
        if (v9 == 10)
        {
          goto LABEL_18;
        }

        if (v9 == 13)
        {
          v4->__r_.__value_.__s.__data_[v5++] = 10;
LABEL_17:
          v6 = 1;
          goto LABEL_26;
        }

        v4->__r_.__value_.__s.__data_[v5++] = 10;
      }

      else
      {
        v8 = v4 + v7;
        if (v7 + 8 >= size)
        {
          LOBYTE(v10) = *v8;
        }

        else
        {
          v10 = *v8;
          if ((~((0xE0E0E0E0E0E0E0DLL - *v8) | *v8) & 0x8080808080808080) == 0)
          {
            if (v5 != v7)
            {
              *(v4->__r_.__value_.__r.__words + v5) = v10;
            }

            v6 = 0;
            v5 += 8;
            v7 += 8;
            goto LABEL_27;
          }
        }

        if (v10 == 10)
        {
LABEL_18:
          if (v7 != v5)
          {
            v4->__r_.__value_.__s.__data_[v5] = 10;
          }

          v6 = 0;
          goto LABEL_25;
        }

        if (v10 == 13)
        {
          goto LABEL_17;
        }
      }

      if (v7 != v5)
      {
        v6 = 0;
        v4->__r_.__value_.__s.__data_[v5] = *v8;
LABEL_25:
        ++v5;
        goto LABEL_26;
      }

      v6 = 0;
      v5 = v7 + 1;
LABEL_26:
      ++v7;
LABEL_27:
      if (v7 >= size)
      {
        if ((v6 & 1) == 0 && (!a2 || v5 < 1 || v4->__r_.__value_.__s.__data_[v5 - 1] == 10))
        {
          goto LABEL_33;
        }

        std::string::resize(this, v5 + 1, 0);
        if (SHIBYTE(v2->__r_.__value_.__r.__words[2]) < 0)
        {
          v2 = v2->__r_.__value_.__r.__words[0];
        }

        v2->__r_.__value_.__s.__data_[v5] = 10;
        return;
      }
    }
  }

  v5 = 0;
LABEL_33:
  if (v5 < size)
  {

    std::string::resize(this, v5, 0);
  }
}

void *sub_10008432C(void *a1, char *__s)
{
  *a1 = __s;
  a1[1] = 0;
  if (__s)
  {
    v3 = strlen(__s);
    v4 = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      sub_10007D7E4(v3, "size_t to int conversion");
    }

    a1[1] = v4;
  }

  return a1;
}

uint64_t *sub_10008437C(uint64_t *a1, __int128 *a2)
{
  v4 = *a1;
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (v5 >= v6)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *v4) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_100003F50();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *v4) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x555555555555555)
    {
      v12 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v12 = v10;
    }

    v20[4] = *a1;
    if (v12)
    {
      sub_10000CB48(v4, v12);
    }

    v13 = 24 * v9;
    v14 = *a2;
    *(v13 + 16) = *(a2 + 2);
    *v13 = v14;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = 24 * v9 + 24;
    v15 = *(v4 + 8) - *v4;
    v16 = v13 - v15;
    memcpy((v13 - v15), *v4, v15);
    v17 = *v4;
    *v4 = v16;
    v20[0] = v17;
    v20[1] = v17;
    *(v4 + 8) = v8;
    v20[2] = v17;
    v18 = *(v4 + 16);
    *(v4 + 16) = 0;
    v20[3] = v18;
    sub_10000D0AC(v20);
  }

  else
  {
    v7 = *a2;
    *(v5 + 16) = *(a2 + 2);
    *v5 = v7;
    *(a2 + 1) = 0;
    *(a2 + 2) = 0;
    *a2 = 0;
    v8 = v5 + 24;
  }

  *(v4 + 8) = v8;
  return a1;
}

uint64_t sub_1000844C4(unsigned __int8 *a1, int *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 214748364 || (v7 = 10 * v4, v7 > -2147483601 - v6))
      {
        result = 0;
        v4 = 0x7FFFFFFF;
        goto LABEL_14;
      }

      v4 = v7 + v6 - 48;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_100084558(unsigned __int8 *a1, int *a2)
{
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5 < 1)
  {
    v6 = 0;
LABEL_15:
    result = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v4[v5];
    while (1)
    {
      v8 = *v4;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v6 < -214748364 || (v9 = 10 * v6, v9 < v8 + 2147483600))
      {
        result = 0;
        v6 = 0x80000000;
        goto LABEL_18;
      }

      v6 = v9 - v8 + 48;
      if (++v4 >= v7)
      {
        goto LABEL_15;
      }
    }

    result = 0;
  }

LABEL_18:
  *a2 = v6;
  return result;
}

uint64_t sub_1000845F8(unsigned __int8 *a1, unsigned int *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 0x19999999 || (v7 = 10 * v4, v7 > 47 - v6))
      {
        result = 0;
        v4 = -1;
        goto LABEL_14;
      }

      v4 = v7 + v6 - 48;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_100084688(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 0xCCCCCCCCCCCCCCCLL || (v7 = 10 * v4, v8 = v6 & 0xF, v7 > (v8 ^ 0x7FFFFFFFFFFFFFFFLL)))
      {
        result = 0;
        v4 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_14;
      }

      v4 = v7 + v8;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_100084714(unsigned __int8 *a1, int64_t *a2)
{
  v2 = a1[23];
  v3 = v2 < 0;
  if (v2 >= 0)
  {
    v4 = a1;
  }

  else
  {
    v4 = *a1;
  }

  if (v3)
  {
    v5 = *(a1 + 1);
  }

  else
  {
    v5 = a1[23];
  }

  if (v5 < 1)
  {
    v6 = 0;
LABEL_15:
    result = 1;
  }

  else
  {
    v6 = 0;
    v7 = &v4[v5];
    while (1)
    {
      v8 = *v4;
      if ((v8 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v6 < 0xF333333333333334 || (v9 = 10 * v6, v9 < (v8 & 0xF | 0x8000000000000000)))
      {
        result = 0;
        v6 = 0x8000000000000000;
        goto LABEL_18;
      }

      v6 = v9 - (v8 & 0xF);
      if (++v4 >= v7)
      {
        goto LABEL_15;
      }
    }

    result = 0;
  }

LABEL_18:
  *a2 = v6;
  return result;
}

uint64_t sub_1000847B0(unsigned __int8 *a1, unint64_t *a2)
{
  v2 = a1[23];
  if (v2 < 0)
  {
    v3 = a1;
    a1 = *a1;
    v2 = *(v3 + 1);
  }

  if (v2 < 1)
  {
    v4 = 0;
LABEL_11:
    result = 1;
  }

  else
  {
    v4 = 0;
    v5 = &a1[v2];
    while (1)
    {
      v6 = *a1;
      if ((v6 - 58) < 0xFFFFFFF6)
      {
        break;
      }

      if (v4 > 0x1999999999999999 || (v7 = 5 * v4, v8 = v6 & 0xF, __CFADD__(v8, 2 * v7)))
      {
        result = 0;
        v4 = -1;
        goto LABEL_14;
      }

      v4 = 2 * v7 + v8;
      if (++a1 >= v5)
      {
        goto LABEL_11;
      }
    }

    result = 0;
  }

LABEL_14:
  *a2 = v4;
  return result;
}

uint64_t sub_1000848BC(uint64_t a1, unsigned int a2)
{
  if (a2 < 8)
  {
    return 0;
  }

  v2 = 0;
  v5 = a2 & 7;
  if (v5 <= 1)
  {
    if ((a2 & 7) == 0)
    {
      v15 = *a1;
      if (*a1 >= *(a1 + 8) || *v15 < 0)
      {
        sub_10004DCFC(a1);
        return v2;
      }

      v6 = (v15 + 1);
      goto LABEL_29;
    }

    if (v5 != 1)
    {
      return v2;
    }

    v19 = 0;
    if ((*(a1 + 8) - *a1) >= 8)
    {
      v6 = *a1 + 8;
      goto LABEL_29;
    }

    return sub_10004DC3C(a1, &v19);
  }

  if (v5 != 2)
  {
    if (v5 == 3)
    {
      v12 = *(a1 + 52);
      v13 = __OFSUB__(v12--, 1);
      *(a1 + 52) = v12;
      if (v12 < 0 == v13 && sub_100084A80(a1))
      {
        v14 = *(a1 + 52);
        if (v14 < *(a1 + 56))
        {
          *(a1 + 52) = v14 + 1;
        }

        return *(a1 + 32) == (a2 & 0xFFFFFFF8 | 4);
      }

      return 0;
    }

    if (v5 != 5)
    {
      return v2;
    }

    v18 = 0;
    if ((*(a1 + 8) - *a1) >= 4)
    {
      v6 = *a1 + 4;
LABEL_29:
      *a1 = v6;
      return 1;
    }

    return sub_10004DBD4(a1, &v18);
  }

  v8 = *a1;
  v7 = *(a1 + 8);
  if (*a1 >= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = *v8;
    if ((*v8 & 0x80000000) == 0)
    {
      v10 = v8 + 1;
      *a1 = v10;
      goto LABEL_16;
    }
  }

  v16 = sub_10004DFA4(a1, v9);
  if ((v16 & 0x8000000080000000) != 0)
  {
    return 0;
  }

  v9 = v16;
  v10 = *a1;
  v7 = *(a1 + 8);
LABEL_16:
  if (v9 <= v7 - v10)
  {
    v6 = &v10[v9];
    goto LABEL_29;
  }

  return sub_10004D568(a1, v9, v7 - v10);
}

uint64_t sub_100084A80(uint64_t a1)
{
  do
  {
    v2 = *a1;
    if (*a1 >= *(a1 + 8))
    {
      v3 = 0;
    }

    else
    {
      v3 = *v2;
      if ((*v2 & 0x80000000) == 0)
      {
        *a1 = v2 + 1;
        goto LABEL_6;
      }
    }

    v3 = sub_10004E524(a1, v3);
LABEL_6:
    *(a1 + 32) = v3;
    if (v3)
    {
      v4 = (v3 & 7) == 4;
    }

    else
    {
      v4 = 1;
    }

    v5 = v4;
  }

  while (!v4 && (sub_1000848BC(a1) & 1) != 0);
  return v5;
}

BOOL sub_100084AFC(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 < 8)
  {
    return 0;
  }

  v3 = 0;
  v7 = a2 & 7;
  if (v7 <= 1)
  {
    if ((a2 & 7) != 0)
    {
      if (v7 != 1)
      {
        return v3;
      }

      __p.__r_.__value_.__r.__words[0] = 0;
      v11 = *a1;
      if ((*(a1 + 8) - *a1) < 8)
      {
        if (!sub_10004DC3C(a1, &__p))
        {
          return 0;
        }
      }

      else
      {
        __p.__r_.__value_.__r.__words[0] = *v11;
        *a1 = v11 + 8;
      }

      v12 = *(a3 + 64);
      if (*a3 <= v12)
      {
        v12 = sub_10004F000(a3, v12);
      }

      if (a2 > 0x7F)
      {
        *v12 = a2 | 0x80;
        v22 = a2 >> 7;
        if (a2 >> 14)
        {
          v13 = v12 + 2;
          do
          {
            *(v13 - 1) = v22 | 0x80;
            v37 = v22 >> 7;
            ++v13;
            v38 = v22 >> 14;
            v22 >>= 7;
          }

          while (v38);
          *(v13 - 1) = v37;
        }

        else
        {
          v12[1] = v22;
          v13 = v12 + 2;
        }
      }

      else
      {
        *v12 = a2;
        v13 = v12 + 1;
      }

      *(a3 + 64) = v13;
      v39 = __p.__r_.__value_.__r.__words[0];
      if (*a3 <= v13)
      {
        v13 = sub_10004F000(a3, v13);
      }

      *v13 = v39;
      v36 = v13 + 8;
      goto LABEL_77;
    }

    v18 = *a1;
    if (*a1 >= *(a1 + 8) || (v19 = *v18, (v19 & 0x8000000000000000) != 0))
    {
      v23 = sub_10004DCFC(a1);
      if ((v24 & 1) == 0)
      {
        return 0;
      }

      v19 = v23;
    }

    else
    {
      *a1 = v18 + 1;
    }

    v25 = *(a3 + 64);
    if (*a3 <= v25)
    {
      v25 = sub_10004F000(a3, v25);
    }

    if (a2 > 0x7F)
    {
      *v25 = a2 | 0x80;
      v27 = a2 >> 7;
      if (a2 >> 14)
      {
        v26 = v25 + 2;
        do
        {
          *(v26 - 1) = v27 | 0x80;
          v40 = v27 >> 7;
          ++v26;
          v41 = v27 >> 14;
          v27 >>= 7;
        }

        while (v41);
        *(v26 - 1) = v40;
      }

      else
      {
        v25[1] = v27;
        v26 = v25 + 2;
      }
    }

    else
    {
      *v25 = a2;
      v26 = v25 + 1;
    }

    *(a3 + 64) = v26;
    if (*a3 <= v26)
    {
      v26 = sub_10004F000(a3, v26);
    }

    if (v19 > 0x7F)
    {
      *v26 = v19 | 0x80;
      v42 = v19 >> 7;
      if (v19 >> 14)
      {
        v36 = v26 + 2;
        do
        {
          *(v36 - 1) = v42 | 0x80;
          v43 = v42 >> 7;
          ++v36;
          v44 = v42 >> 14;
          v42 >>= 7;
        }

        while (v44);
        *(v36 - 1) = v43;
      }

      else
      {
        v26[1] = v42;
        v36 = v26 + 2;
      }
    }

    else
    {
      *v26 = v19;
      v36 = v26 + 1;
    }

    goto LABEL_77;
  }

  if (v7 == 2)
  {
    v14 = *a1;
    if (*a1 >= *(a1 + 8))
    {
      LODWORD(v15) = 0;
    }

    else
    {
      v15 = *v14;
      if ((*v14 & 0x80000000) == 0)
      {
        *a1 = v14 + 1;
LABEL_81:
        v46 = *(a3 + 64);
        if (*a3 <= v46)
        {
          v60 = v15;
          v61 = sub_10004F000(a3, v46);
          v15 = v60;
          v46 = v61;
        }

        if (a2 > 0x7F)
        {
          *v46 = a2 | 0x80;
          v48 = a2 >> 7;
          if (a2 >> 14)
          {
            v47 = v46 + 2;
            do
            {
              *(v47 - 1) = v48 | 0x80;
              v49 = v48 >> 7;
              ++v47;
              v50 = v48 >> 14;
              v48 >>= 7;
            }

            while (v50);
            *(v47 - 1) = v49;
          }

          else
          {
            v46[1] = v48;
            v47 = v46 + 2;
          }
        }

        else
        {
          *v46 = a2;
          v47 = v46 + 1;
        }

        *(a3 + 64) = v47;
        if (*a3 <= v47)
        {
          v62 = v15;
          v63 = sub_10004F000(a3, v47);
          v15 = v62;
          v47 = v63;
        }

        if (v15 > 0x7F)
        {
          *v47 = v15 | 0x80;
          v52 = v15 >> 7;
          if (v15 >> 14)
          {
            v51 = v47 + 2;
            do
            {
              *(v51 - 1) = v52 | 0x80;
              v53 = v52 >> 7;
              ++v51;
              v54 = v52 >> 14;
              v52 >>= 7;
            }

            while (v54);
            *(v51 - 1) = v53;
          }

          else
          {
            v47[1] = v52;
            v51 = v47 + 2;
          }
        }

        else
        {
          *v47 = v15;
          v51 = v47 + 1;
        }

        *(a3 + 64) = v51;
        memset(&__p, 0, sizeof(__p));
        v3 = sub_10004D990(a1, &__p, v15);
        if (v3)
        {
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
            v56 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v56 = __p.__r_.__value_.__r.__words[1];
          }

          v57 = *(a3 + 64);
          if (*a3 - v57 < v56)
          {
            v59 = sub_10004F118(a3, p_p, v56, *(a3 + 64));
          }

          else
          {
            v58 = v56;
            memcpy(*(a3 + 64), p_p, v56);
            v59 = (v57 + v58);
          }

          *(a3 + 64) = v59;
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        return v3;
      }
    }

    v15 = sub_10004DFA4(a1, v15);
    if (v15 < 0)
    {
      return 0;
    }

    goto LABEL_81;
  }

  if (v7 != 3)
  {
    if (v7 != 5)
    {
      return v3;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
    v8 = *a1;
    if ((*(a1 + 8) - *a1) >= 4)
    {
      LODWORD(__p.__r_.__value_.__l.__data_) = *v8;
      *a1 = v8 + 4;
LABEL_9:
      v9 = *(a3 + 64);
      if (*a3 <= v9)
      {
        v9 = sub_10004F000(a3, v9);
      }

      if (a2 > 0x7F)
      {
        *v9 = a2 | 0x80;
        v21 = a2 >> 7;
        if (a2 >> 14)
        {
          v10 = v9 + 2;
          do
          {
            *(v10 - 1) = v21 | 0x80;
            v33 = v21 >> 7;
            ++v10;
            v34 = v21 >> 14;
            v21 >>= 7;
          }

          while (v34);
          *(v10 - 1) = v33;
        }

        else
        {
          v9[1] = v21;
          v10 = v9 + 2;
        }
      }

      else
      {
        *v9 = a2;
        v10 = v9 + 1;
      }

      *(a3 + 64) = v10;
      data = __p.__r_.__value_.__l.__data_;
      if (*a3 <= v10)
      {
        v10 = sub_10004F000(a3, v10);
      }

      *v10 = data;
      v36 = v10 + 4;
LABEL_77:
      *(a3 + 64) = v36;
      return 1;
    }

    if (sub_10004DBD4(a1, &__p))
    {
      goto LABEL_9;
    }

    return 0;
  }

  v16 = *(a3 + 64);
  if (*a3 <= v16)
  {
    v16 = sub_10004F000(a3, v16);
  }

  if (a2 > 0x7F)
  {
    *v16 = a2 | 0x80;
    v20 = a2 >> 7;
    if (a2 >> 14)
    {
      v17 = v16 + 2;
      do
      {
        *(v17 - 1) = v20 | 0x80;
        v28 = v20 >> 7;
        ++v17;
        v29 = v20 >> 14;
        v20 >>= 7;
      }

      while (v29);
      *(v17 - 1) = v28;
    }

    else
    {
      v16[1] = v20;
      v17 = v16 + 2;
    }
  }

  else
  {
    *v16 = a2;
    v17 = v16 + 1;
  }

  *(a3 + 64) = v17;
  v30 = *(a1 + 52);
  v31 = __OFSUB__(v30--, 1);
  *(a1 + 52) = v30;
  if (v30 < 0 != v31 || !sub_1000850EC(a1, a3))
  {
    return 0;
  }

  v32 = *(a1 + 52);
  if (v32 < *(a1 + 56))
  {
    *(a1 + 52) = v32 + 1;
  }

  return *(a1 + 32) == (a2 & 0xFFFFFFF8 | 4);
}

void sub_1000850D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000850EC(uint64_t a1, void *a2)
{
  while (1)
  {
    v4 = *a1;
    if (*a1 >= *(a1 + 8))
    {
      v5 = 0;
    }

    else
    {
      v5 = *v4;
      if ((*v4 & 0x80000000) == 0)
      {
        *a1 = v4 + 1;
        goto LABEL_6;
      }
    }

    v5 = sub_10004E524(a1, v5);
LABEL_6:
    *(a1 + 32) = v5;
    v6 = v5 == 0;
    if (!v5)
    {
      return v6;
    }

    if ((v5 & 7) == 4)
    {
      break;
    }

    if ((sub_100084AFC(a1) & 1) == 0)
    {
      return v6;
    }
  }

  v7 = a2[8];
  if (*a2 <= v7)
  {
    v7 = sub_10004F000(a2, v7);
  }

  if (v5 > 0x7F)
  {
    *v7 = v5 | 0x80;
    v9 = v5 >> 7;
    if (v5 >> 14)
    {
      v8 = v7 + 2;
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
      v7[1] = v9;
      v8 = v7 + 2;
    }
  }

  else
  {
    *v7 = v5;
    v8 = v7 + 1;
  }

  a2[8] = v8;
  return 1;
}

char *sub_100085240(char *result, unsigned int a2, unsigned int a3)
{
  v5 = result;
  v6 = *(result + 1);
  v7 = v6[8];
  if (*v6 <= v7)
  {
    result = sub_10004F000(*(result + 1), v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v9 = a2 >> 7;
    if (a2 >> 14)
    {
      v8 = v7 + 2;
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
      v7[1] = v9;
      v8 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v8 = v7 + 1;
  }

  v6[8] = v8;
  v12 = *(v5 + 1);
  v13 = v12[8];
  if (*v12 <= v13)
  {
    result = sub_10004F000(v12, v13);
    v13 = result;
  }

  if (a3 > 0x7F)
  {
    *v13 = a3 | 0x80;
    v15 = a3 >> 7;
    if (a3 >> 14)
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
    *v13 = a3;
    v14 = v13 + 1;
  }

  v12[8] = v14;
  return result;
}

uint64_t sub_10008536C(uint64_t a1, unsigned int a2, unsigned int (*a3)(uint64_t), uint64_t a4, int *a5)
{
  v10 = *a1;
  if (*a1 >= *(a1 + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = *v10;
    if ((*v10 & 0x80000000) == 0)
    {
      *a1 = v10 + 1;
      goto LABEL_6;
    }
  }

  v12 = sub_10004DFA4(a1, v11);
  v11 = v12;
  if (v12 < 0)
  {
    return 0;
  }

LABEL_6:
  v30 = sub_10008D52C(a1, v11);
  if (sub_10004D404(a1) >= 1)
  {
    v13 = 8 * a2;
    v14 = (8 * a2) | 0x80;
    v15 = (a2 >> 4) & 0x1FFFFFF;
    while (1)
    {
      v16 = *a1;
      if (*a1 >= *(a1 + 8))
      {
        break;
      }

      v17 = *v16;
      if (*v16 < 0)
      {
        goto LABEL_12;
      }

      *a1 = v16 + 1;
LABEL_13:
      if (a3 && !a3(v17))
      {
        v20 = *(a4 + 64);
        if (*a4 <= v20)
        {
          v20 = sub_10004F000(a4, *(a4 + 64));
        }

        if (v13 > 0x7F)
        {
          *v20 = v14;
          if (v13 >= 0x4000)
          {
            v21 = v20 + 2;
            v22 = v15;
            do
            {
              *(v21 - 1) = v22 | 0x80;
              v23 = v22 >> 7;
              ++v21;
              v24 = v22 >> 14;
              v22 >>= 7;
            }

            while (v24);
            *(v21 - 1) = v23;
          }

          else
          {
            v20[1] = v13 >> 7;
            v21 = v20 + 2;
          }
        }

        else
        {
          v21 = v20 + 1;
          *v20 = v13;
        }

        *(a4 + 64) = v21;
        if (*a4 <= v21)
        {
          v21 = sub_10004F000(a4, v21);
        }

        if (v17 > 0x7F)
        {
          *v21 = v17 | 0x80;
          v26 = v17 >> 7;
          if (v17 >> 14)
          {
            v25 = v21 + 2;
            do
            {
              *(v25 - 1) = v26 | 0x80;
              v27 = v26 >> 7;
              ++v25;
              v28 = v26 >> 14;
              v26 >>= 7;
            }

            while (v28);
            *(v25 - 1) = v27;
          }

          else
          {
            v21[1] = v26;
            v25 = v21 + 2;
          }
        }

        else
        {
          *v21 = v17;
          v25 = v21 + 1;
        }

        *(a4 + 64) = v25;
      }

      else
      {
        v18 = *a5;
        if (v18 == a5[1])
        {
          v19 = v18 + 1;
          sub_100072364(a5, v18 + 1);
          *(sub_100072B4C(a5) + 4 * v18) = v17;
        }

        else
        {
          *(sub_100072B4C(a5) + 4 * v18) = v17;
          v19 = v18 + 1;
        }

        *a5 = v19;
      }

      if (sub_10004D404(a1) <= 0)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v17) = 0;
LABEL_12:
    v17 = sub_10004DFA4(a1, v17);
    if (v17 < 0)
    {
      return 0;
    }

    goto LABEL_13;
  }

LABEL_39:
  sub_10004D28C(a1, v30);
  return 1;
}

char *sub_1000855D4(char *__src, int a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  v5 = 4 * a2;
  if ((*a3 - v4) < v5)
  {
    result = sub_10004F118(a3, __src, v5, v4);
  }

  else
  {
    memcpy(*(a3 + 64), __src, v5);
    result = (v4 + v5);
  }

  *(a3 + 64) = result;
  return result;
}

char *sub_10008564C(char *__src, int a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  v5 = 8 * a2;
  if ((*a3 - v4) < v5)
  {
    result = sub_10004F118(a3, __src, v5, v4);
  }

  else
  {
    memcpy(*(a3 + 64), __src, v5);
    result = (v4 + v5);
  }

  *(a3 + 64) = result;
  return result;
}

char *sub_1000856C4(char *__src, int a2, uint64_t a3)
{
  v4 = *(a3 + 64);
  if (*a3 - v4 < a2)
  {
    result = sub_10004F118(a3, __src, a2, *(a3 + 64));
  }

  else
  {
    v5 = a2;
    memcpy(*(a3 + 64), __src, a2);
    result = (v4 + v5);
  }

  *(a3 + 64) = result;
  return result;
}

char *sub_100085730(char *result, unsigned int a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

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

  a3[8] = v7;
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v12 = a2 >> 7;
    if (a2 >> 14)
    {
      v11 = v7 + 2;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v7[1] = v12;
      v11 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v11 = v7 + 1;
  }

  a3[8] = v11;
  return result;
}

char *sub_100085850(char *result, unint64_t a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

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

  a3[8] = v7;
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v12 = a2 >> 7;
    if (a2 >> 14)
    {
      v11 = v7 + 2;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v7[1] = v12;
      v11 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v11 = v7 + 1;
  }

  a3[8] = v11;
  return result;
}

char *sub_10008596C(char *result, unsigned int a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

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

  a3[8] = v7;
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  if (a2 > 0x7F)
  {
    *v7 = a2 | 0x80;
    v12 = a2 >> 7;
    if (a2 >> 14)
    {
      v11 = v7 + 2;
      do
      {
        *(v11 - 1) = v12 | 0x80;
        v13 = v12 >> 7;
        ++v11;
        v14 = v12 >> 14;
        v12 >>= 7;
      }

      while (v14);
      *(v11 - 1) = v13;
    }

    else
    {
      v7[1] = v12;
      v11 = v7 + 2;
    }
  }

  else
  {
    *v7 = a2;
    v11 = v7 + 1;
  }

  a3[8] = v11;
  return result;
}

char *sub_100085A88(char *result, int a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

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

  a3[8] = v7;
  v11 = (2 * a2) ^ (a2 >> 31);
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

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

  a3[8] = v12;
  return result;
}

char *sub_100085BAC(char *result, uint64_t a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

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

  a3[8] = v7;
  v11 = (2 * a2) ^ (a2 >> 63);
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

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

  a3[8] = v12;
  return result;
}

char *sub_100085CD0(char *result, int a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x85;
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
    *v6 = v5 | 5;
    v7 = v6 + 1;
  }

  a3[8] = v7;
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  *v7 = a2;
  a3[8] = v7 + 4;
  return result;
}

char *sub_100085DA8(char *result, uint64_t a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x81;
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
    *v6 = v5 | 1;
    v7 = v6 + 1;
  }

  a3[8] = v7;
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  *v7 = a2;
  a3[8] = v7 + 8;
  return result;
}

char *sub_100085E78(char *result, void *a2, float a3)
{
  v5 = 8 * result;
  v6 = a2[8];
  if (*a2 <= v6)
  {
    result = sub_10004F000(a2, v6);
    v6 = result;
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x85;
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
    *v6 = v5 | 5;
    v7 = v6 + 1;
  }

  a2[8] = v7;
  if (*a2 <= v7)
  {
    result = sub_10004F000(a2, v7);
    v7 = result;
  }

  *v7 = a3;
  a2[8] = v7 + 4;
  return result;
}

char *sub_100085F50(char *result, void *a2, double a3)
{
  v5 = 8 * result;
  v6 = a2[8];
  if (*a2 <= v6)
  {
    result = sub_10004F000(a2, v6);
    v6 = result;
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x81;
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
    *v6 = v5 | 1;
    v7 = v6 + 1;
  }

  a2[8] = v7;
  if (*a2 <= v7)
  {
    result = sub_10004F000(a2, v7);
    v7 = result;
  }

  *v7 = a3;
  a2[8] = v7 + 8;
  return result;
}

char *sub_100086020(char *result, char a2, void *a3)
{
  v5 = 8 * result;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    result = sub_10004F000(a3, v6);
    v6 = result;
  }

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

  a3[8] = v7;
  if (*a3 <= v7)
  {
    result = sub_10004F000(a3, v7);
    v7 = result;
  }

  *v7 = a2;
  a3[8] = v7 + 1;
  return result;
}

char *sub_1000860EC(int a1, uint64_t a2, uint64_t a3)
{
  v5 = 8 * a1;
  v6 = *(a3 + 64);
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, *(a3 + 64));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(a3 + 64) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    sub_10004FCEC(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 482);
    v12 = sub_10004FD04(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_10004FE40(&v23, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v24);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(a3 + 64);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*a3 <= v7)
  {
    v7 = sub_10004F000(a3, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v7 + 2;
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
      v7[1] = v15;
      v14 = v7 + 2;
    }
  }

  else
  {
    *v7 = v13;
    v14 = v7 + 1;
  }

  *(a3 + 64) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    LODWORD(v20) = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  if (*a3 - v14 < v20)
  {
    result = sub_10004F118(a3, v19, v20, v14);
  }

  else
  {
    v21 = v20;
    memcpy(v14, v19, v20);
    result = &v14[v21];
  }

  *(a3 + 64) = result;
  return result;
}

void sub_1000862DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_1000862F4(int a1, void **a2, uint64_t a3)
{
  v5 = 8 * a1;
  v6 = *(a3 + 64);
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, *(a3 + 64));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(a3 + 64) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && a2[1] >> 31)
  {
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 491);
    v12 = sub_10004FD04(v23, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_10004FE40(&v22, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(a3 + 64);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = a2[1];
  }

  if (*a3 <= v7)
  {
    v7 = sub_10004F000(a3, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v7 + 2;
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
      v7[1] = v15;
      v14 = v7 + 2;
    }
  }

  else
  {
    *v7 = v13;
    v14 = v7 + 1;
  }

  *(a3 + 64) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 2);
  }

  result = sub_10004F4E8(a3, v19, v20, v14);
  *(a3 + 64) = result;
  return result;
}

void sub_1000864BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_1000864D4(int a1, uint64_t a2, uint64_t a3)
{
  v5 = 8 * a1;
  v6 = *(a3 + 64);
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, *(a3 + 64));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(a3 + 64) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && *(a2 + 8) >> 31)
  {
    sub_10004FCEC(v24, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 498);
    v12 = sub_10004FD04(v24, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_10004FE40(&v23, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v24);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(a3 + 64);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = *(a2 + 8);
  }

  if (*a3 <= v7)
  {
    v7 = sub_10004F000(a3, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v7 + 2;
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
      v7[1] = v15;
      v14 = v7 + 2;
    }
  }

  else
  {
    *v7 = v13;
    v14 = v7 + 1;
  }

  *(a3 + 64) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    LODWORD(v20) = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 8);
  }

  if (*a3 - v14 < v20)
  {
    result = sub_10004F118(a3, v19, v20, v14);
  }

  else
  {
    v21 = v20;
    memcpy(v14, v19, v20);
    result = &v14[v21];
  }

  *(a3 + 64) = result;
  return result;
}

void sub_1000866C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_1000866DC(int a1, void **a2, uint64_t a3)
{
  v5 = 8 * a1;
  v6 = *(a3 + 64);
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, *(a3 + 64));
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  *(a3 + 64) = v7;
  v11 = *(a2 + 23);
  if (v11 < 0 && a2[1] >> 31)
  {
    sub_10004FCEC(v23, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 506);
    v12 = sub_10004FD04(v23, "CHECK failed: (value.size()) <= (kint32max): ");
    sub_10004FE40(&v22, &v12->__r_.__value_.__l.__data_);
    sub_10004FE48(v23);
    LOBYTE(v11) = *(a2 + 23);
    v7 = *(a3 + 64);
  }

  if ((v11 & 0x80u) == 0)
  {
    LODWORD(v13) = v11;
  }

  else
  {
    v13 = a2[1];
  }

  if (*a3 <= v7)
  {
    v7 = sub_10004F000(a3, v7);
  }

  if (v13 > 0x7F)
  {
    *v7 = v13 | 0x80;
    v15 = v13 >> 7;
    if (v13 >> 14)
    {
      v14 = v7 + 2;
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
      v7[1] = v15;
      v14 = v7 + 2;
    }
  }

  else
  {
    *v7 = v13;
    v14 = v7 + 1;
  }

  *(a3 + 64) = v14;
  v18 = *(a2 + 23);
  if (v18 >= 0)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a2;
  }

  if (v18 >= 0)
  {
    v20 = *(a2 + 23);
  }

  else
  {
    v20 = *(a2 + 2);
  }

  result = sub_10004F4E8(a3, v19, v20, v14);
  *(a3 + 64) = result;
  return result;
}

void sub_1000868A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

char *sub_1000868BC(int a1, uint64_t a2, void *a3)
{
  v5 = 8 * a1;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, v6);
  }

  v7 = v5 >> 7;
  v8 = v5 >> 14;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x83;
    if (v8)
    {
      v9 = v6 + 2;
      v10 = v5 >> 7;
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
      v6[1] = v7;
      v9 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5 | 3;
    v9 = v6 + 1;
  }

  a3[8] = v9;
  result = (*(*a2 + 96))(a2);
  v14 = result;
  a3[8] = result;
  if (*a3 <= result)
  {
    result = sub_10004F000(a3, result);
    v14 = result;
  }

  if (v5 > 0x7F)
  {
    *v14 = v5 | 0x84;
    if (v8)
    {
      v15 = v14 + 2;
      do
      {
        *(v15 - 1) = v7 | 0x80;
        v16 = v7 >> 7;
        ++v15;
        v17 = v7 >> 14;
        v7 >>= 7;
      }

      while (v17);
      *(v15 - 1) = v16;
    }

    else
    {
      v14[1] = v7;
      v15 = v14 + 2;
    }
  }

  else
  {
    *v14 = v5 | 4;
    v15 = v14 + 1;
  }

  a3[8] = v15;
  return result;
}

uint64_t sub_100086A1C(int a1, uint64_t a2, void *a3)
{
  v5 = 8 * a1;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, v6);
  }

  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x82;
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
    *v6 = v5 | 2;
    v7 = v6 + 1;
  }

  a3[8] = v7;
  v11 = (*(*a2 + 80))(a2);
  v12 = a3[8];
  if (*a3 <= v12)
  {
    v12 = sub_10004F000(a3, v12);
  }

  if (v11 > 0x7F)
  {
    *v12 = v11 | 0x80;
    v14 = v11 >> 7;
    if (v11 >> 14)
    {
      v13 = v12 + 2;
      do
      {
        *(v13 - 1) = v14 | 0x80;
        v15 = v14 >> 7;
        ++v13;
        v16 = v14 >> 14;
        v14 >>= 7;
      }

      while (v16);
      *(v13 - 1) = v15;
    }

    else
    {
      v12[1] = v14;
      v13 = v12 + 2;
    }
  }

  else
  {
    *v12 = v11;
    v13 = v12 + 1;
  }

  a3[8] = v13;
  result = (*(*a2 + 96))(a2);
  a3[8] = result;
  return result;
}

uint64_t sub_100086BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(*a2 + 96))(a2, *(a3 + 64));
  *(a3 + 64) = result;
  return result;
}

char *sub_100086BF0(int a1, uint64_t a2, void *a3)
{
  v5 = 8 * a1;
  v6 = a3[8];
  if (*a3 <= v6)
  {
    v6 = sub_10004F000(a3, v6);
  }

  v7 = v5 >> 7;
  v8 = v5 >> 14;
  if (v5 > 0x7F)
  {
    *v6 = v5 | 0x83;
    if (v8)
    {
      v9 = v6 + 2;
      v10 = v5 >> 7;
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
      v6[1] = v7;
      v9 = v6 + 2;
    }
  }

  else
  {
    *v6 = v5 | 3;
    v9 = v6 + 1;
  }

  a3[8] = v9;
  (*(*a2 + 80))(a2);
  result = (*(*a2 + 96))(a2, a3[8], a3);
  v14 = result;
  a3[8] = result;
  if (*a3 <= result)
  {
    result = sub_10004F000(a3, result);
    v14 = result;
  }

  if (v5 > 0x7F)
  {
    *v14 = v5 | 0x84;
    if (v8)
    {
      v15 = v14 + 2;
      do
      {
        *(v15 - 1) = v7 | 0x80;
        v16 = v7 >> 7;
        ++v15;
        v17 = v7 >> 14;
        v7 >>= 7;
      }

      while (v17);
      *(v15 - 1) = v16;
    }

    else
    {
      v14[1] = v7;
      v15 = v14 + 2;
    }
  }

  else
  {
    *v14 = v5 | 4;
    v15 = v14 + 1;
  }

  a3[8] = v15;
  return result;
}

BOOL sub_100086D7C(uint64_t a1, std::string *this)
{
  v4 = *a1;
  if (*a1 >= *(a1 + 8))
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = *v4;
    if ((*v4 & 0x80000000) == 0)
    {
      *a1 = v4 + 1;
      goto LABEL_6;
    }
  }

  v5 = sub_10004DFA4(a1, v5);
  if (v5 < 0)
  {
    return 0;
  }

LABEL_6:

  return sub_10004D990(a1, this, v5);
}

BOOL sub_100086E04(uint64_t a1, std::string **a2)
{
  v3 = *a2;
  if (*a2 == &qword_1000B6A48)
  {
    operator new();
  }

  v4 = *a1;
  if (*a1 >= *(a1 + 8))
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v5 = *v4;
    if ((*v4 & 0x80000000) == 0)
    {
      *a1 = v4 + 1;
      goto LABEL_8;
    }
  }

  v5 = sub_10004DFA4(a1, v5);
  if (v5 < 0)
  {
    return 0;
  }

LABEL_8:

  return sub_10004D990(a1, v3, v5);
}

void sub_100086ED4(uint64_t a1, const std::string::value_type *a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v16 = 0;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  if (a1)
  {
    sub_10007D4C4(" '%s'", v13, a1);
    __p = v13[0];
  }

  sub_10004FCEC(v13, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/wire_format_lite.cc", 577);
  v3 = sub_10004FD04(v13, "String field");
  v4 = sub_10004FD30(v3, &__p);
  v5 = sub_10004FD04(v4, " contains invalid ");
  v6 = sub_10004FD04(v5, "UTF-8 data when ");
  v7 = sub_10004FD04(v6, a2);
  v8 = sub_10004FD04(v7, " a protocol ");
  v9 = sub_10004FD04(v8, "buffer. Use the 'bytes' type if you intend to send raw ");
  v10 = sub_10004FD04(v9, "bytes. ");
  v11 = sub_10004FD30(v10, v15);
  sub_10004FE40(&v12, &v11->__r_.__value_.__l.__data_);
  sub_10004FE48(v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_100086FE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v22 - 17) < 0)
  {
    operator delete(*(v22 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10008702C(char *a1, int a2, int a3, uint64_t a4)
{
  v6 = sub_10007E694(a1, a2);
  if (!v6)
  {
    v7 = "serializing";
    if (a3 != 1)
    {
      v7 = 0;
    }

    if (a3)
    {
      v8 = v7;
    }

    else
    {
      v8 = "parsing";
    }

    sub_100086ED4(a4, v8);
  }

  return v6;
}

uint64_t sub_100087094(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = *sub_1000726BC(a1, v3);
    if (v5 < 0)
    {
      v6 = 10;
    }

    else
    {
      v6 = (9 * (__clz(v5 | 1) ^ 0x1F) + 73) >> 6;
    }

    v4 += v6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_100087120(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += (9 * (__clz(*sub_100073EE8(a1, v3++) | 1) ^ 0x1F) + 73) >> 6;
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_1000871A0(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = sub_1000726BC(a1, v3);
    v4 += (9 * (__clz((2 * *v5) ^ (*v5 >> 31) | 1) ^ 0x1F) + 73) >> 6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_100087228(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += (9 * (__clz(*sub_1000756EC(a1, v3++) | 1) ^ 0x3F) + 73) >> 6;
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_1000872A4(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v4 += (9 * (__clz(*sub_100076EDC(a1, v3++) | 1) ^ 0x3F) + 73) >> 6;
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_100087320(int *a1)
{
  v1 = *a1;
  if (*a1 < 1)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v5 = sub_1000756EC(a1, v3);
    v4 += (9 * (__clz((2 * *v5) ^ (*v5 >> 63) | 1) ^ 0x3F) + 73) >> 6;
    ++v3;
  }

  while (v1 != v3);
  return v4;
}

uint64_t sub_1000873D4(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = off_1000AE728;
  *(result + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(result + 16) = a3;
  *(result + 20) = v4;
  *(result + 24) = 0;
  return result;
}

BOOL sub_100087404(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    *(a1 + 28) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(a1 + 20))
    {
      v5 = *(a1 + 20);
    }

    *(a1 + 28) = v5;
    *a2 = *(a1 + 8) + v3;
    *a3 = v5;
    *(a1 + 24) += *(a1 + 28);
  }

  return v3 < v4;
}

uint64_t sub_100087458(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4 <= 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 80);
    v5 = sub_10004FD04(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = sub_10004FD04(v5, "BackUp() can only be called after a successful Next().");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
    v4 = *(v3 + 28);
  }

  if (v4 < a2)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 82);
    v7 = sub_10004FD04(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (a2 < 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 83);
    v8 = sub_10004FD04(v10, "CHECK failed: (count) >= (0): ");
    sub_10004FE40(&v9, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  *(v3 + 24) = (*(v3 + 24) - a2);
  return result;
}

void sub_10008756C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_100087594(_DWORD *a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 89);
    v4 = sub_10004FD04(v11, "CHECK failed: (count) >= (0): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v5 = a1[4];
  v6 = a1[6];
  v7 = v5 - v6;
  result = v5 - v6 >= a2;
  v9 = v6 + a2;
  if (v7 >= a2)
  {
    v5 = v9;
  }

  a1[6] = v5;
  a1[7] = 0;
  return result;
}

void sub_100087620(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100087640(uint64_t result, uint64_t a2, int a3, int a4)
{
  *result = off_1000AE768;
  *(result + 8) = a2;
  if (a4 <= 0)
  {
    v4 = a3;
  }

  else
  {
    v4 = a4;
  }

  *(result + 16) = a3;
  *(result + 20) = v4;
  *(result + 24) = 0;
  return result;
}

BOOL sub_100087670(uint64_t a1, void *a2, _DWORD *a3)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    *(a1 + 28) = 0;
  }

  else
  {
    v5 = v4 - v3;
    if (v4 - v3 >= *(a1 + 20))
    {
      v5 = *(a1 + 20);
    }

    *(a1 + 28) = v5;
    *a2 = *(a1 + 8) + v3;
    *a3 = v5;
    *(a1 + 24) += *(a1 + 28);
  }

  return v3 < v4;
}

uint64_t sub_1000876C4(uint64_t result, int a2)
{
  v3 = result;
  v4 = *(result + 28);
  if (v4 <= 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 127);
    v5 = sub_10004FD04(v10, "CHECK failed: (last_returned_size_) > (0): ");
    v6 = sub_10004FD04(v5, "BackUp() can only be called after a successful Next().");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
    v4 = *(v3 + 28);
  }

  if (v4 < a2)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 129);
    v7 = sub_10004FD04(v10, "CHECK failed: (count) <= (last_returned_size_): ");
    sub_10004FE40(&v9, &v7->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  if (a2 < 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 130);
    v8 = sub_10004FD04(v10, "CHECK failed: (count) >= (0): ");
    sub_10004FE40(&v9, &v8->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v10);
  }

  *(v3 + 24) = (*(v3 + 24) - a2);
  return result;
}

void sub_1000877D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_100087808(void *result, uint64_t a2)
{
  *result = off_1000AE7B0;
  result[1] = a2;
  return result;
}

uint64_t sub_100087828(uint64_t a1, void *a2, _DWORD *a3)
{
  v6 = *(a1 + 8);
  if (!v6)
  {
    sub_10004FCEC(v16, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 142);
    v7 = sub_10004FD04(v16, "CHECK failed: target_ != NULL: ");
    sub_10004FE40(&v15, &v7->__r_.__value_.__l.__data_);
    sub_10004FE48(v16);
    v6 = *(a1 + 8);
  }

  v8 = *(v6 + 23);
  if ((v8 & 0x8000000000000000) != 0)
  {
    v8 = *(v6 + 8);
    v9 = (*(v6 + 16) & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < v9)
    {
      goto LABEL_8;
    }
  }

  else if (v8 < 0x16)
  {
    v9 = 22;
    goto LABEL_8;
  }

  v9 = 2 * v8;
LABEL_8:
  if (v8 + 0x7FFFFFFF < v9)
  {
    v9 = v8 + 0x7FFFFFFF;
  }

  if (v9 <= 0x10)
  {
    v10 = 16;
  }

  else
  {
    v10 = v9;
  }

  std::string::resize(v6, v10, 0);
  v11 = *(a1 + 8);
  if (*(v11 + 23) < 0)
  {
    v11 = *v11;
  }

  *a2 = v11 + v8;
  v12 = *(a1 + 8);
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = *(v12 + 8);
  }

  *a3 = v13 - v8;
  return 1;
}

void sub_100087930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_100087948(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 169);
    v4 = sub_10004FD04(v11, "CHECK failed: (count) >= (0): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
  }

  v5 = *(a1 + 8);
  if (!v5)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 170);
    v6 = sub_10004FD04(v11, "CHECK failed: target_ != NULL: ");
    sub_10004FE40(&v10, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v5 = *(a1 + 8);
  }

  v7 = *(v5 + 23);
  if (v7 < 0)
  {
    v8 = *(v5 + 8);
  }

  else
  {
    v8 = *(v5 + 23);
  }

  if (v8 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 171);
    v9 = sub_10004FD04(v11, "CHECK failed: (count) <= (target_->size()): ");
    sub_10004FE40(&v10, &v9->__r_.__value_.__l.__data_);
    sub_10004FE48(v11);
    v5 = *(a1 + 8);
    LOBYTE(v7) = *(v5 + 23);
  }

  if ((v7 & 0x80) != 0)
  {
    v7 = *(v5 + 8);
  }

  else
  {
    v7 = v7;
  }

  std::string::resize(v5, v7 - a2, 0);
}

void sub_100087A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100087AA4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (!v1)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 176);
    v3 = sub_10004FD04(v6, "CHECK failed: target_ != NULL: ");
    sub_10004FE40(&v5, &v3->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
    v1 = *(a1 + 8);
  }

  result = *(v1 + 23);
  if (result < 0)
  {
    return *(v1 + 8);
  }

  return result;
}

void sub_100087B20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100087B38()
{
  v0 = __chkstk_darwin();
  v2 = v1;
  v3 = v0;
  v4 = 0;
  do
  {
    v5 = v4;
    v6 = __OFSUB__(v2, v4);
    v7 = v2 - v4;
    if ((v7 < 0) ^ v6 | (v7 == 0))
    {
      break;
    }

    v8 = v7 >= 4096 ? 4096 : v7;
    v9 = (*(*v3 + 16))(v3, v11, v8);
    v4 = (v9 + v5);
  }

  while (v9 > 0);
  return v5;
}

uint64_t sub_100087C14(uint64_t result, uint64_t a2, int a3)
{
  *result = off_1000AE7F8;
  *(result + 8) = a2;
  *(result + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 44) = 0;
  *(result + 48) = 0;
  *(result + 40) = v3;
  return result;
}

uint64_t sub_100087C50(uint64_t a1)
{
  *a1 = off_1000AE7F8;
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    operator delete[]();
  }

  return a1;
}

void sub_100087CEC(uint64_t a1)
{
  sub_100087C50(a1);

  operator delete();
}

uint64_t sub_100087D24(uint64_t a1, void *a2, int *a3)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  sub_100087E08(a1);
  v7 = *(a1 + 48);
  if (v7 >= 1)
  {
    *a2 = *(a1 + 32) + *(a1 + 44) - v7;
    *a3 = v7;
    *(a1 + 48) = 0;
    return 1;
  }

  v8 = (*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 32), *(a1 + 40));
  *(a1 + 44) = v8;
  if (v8 > 0)
  {
    v9 = *(a1 + 32);
    *(a1 + 24) += v8;
    *a3 = v8;
    *a2 = v9;
    return 1;
  }

  if (v8 < 0)
  {
    *(a1 + 17) = 1;
  }

  sub_100087E7C(a1);
  return 0;
}

uint64_t sub_100087E08(uint64_t result)
{
  if (!*(result + 32))
  {
    v1 = *(result + 40);
    operator new[]();
  }

  return result;
}

uint64_t sub_100087E7C(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 292);
    v2 = sub_10004FD04(v5, "CHECK failed: (backup_bytes_) == (0): ");
    sub_10004FE40(&v4, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v5);
  }

  *(a1 + 44) = 0;
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    operator delete[]();
  }

  return result;
}

void sub_100087F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100087F24(uint64_t result, int a2)
{
  v3 = result;
  if (*(result + 48) || !*(result + 32))
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 248);
    v4 = sub_10004FD04(v11, "CHECK failed: backup_bytes_ == 0 && buffer_.get() != NULL: ");
    v5 = sub_10004FD04(v4, " BackUp() can only be called after Next().");
    sub_10004FE40(&v10, &v5->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  if (*(v3 + 44) < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 250);
    v6 = sub_10004FD04(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v7 = sub_10004FD04(v6, " Can't back up over more bytes than were returned by the last call to Next().");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 253);
    v8 = sub_10004FD04(v11, "CHECK failed: (count) >= (0): ");
    v9 = sub_10004FD04(v8, " Parameter to BackUp() can't be negative.");
    sub_10004FE40(&v10, &v9->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  *(v3 + 48) = a2;
  return result;
}

void sub_100088050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

BOOL sub_100088078(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 259);
    v4 = sub_10004FD04(v10, "CHECK failed: (count) >= (0): ");
    sub_10004FE40(&v9, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  if (*(a1 + 17))
  {
    return 0;
  }

  v6 = *(a1 + 48);
  if (v6 >= a2)
  {
    *(a1 + 48) = v6 - a2;
    return 1;
  }

  else
  {
    v7 = (a2 - v6);
    *(a1 + 48) = 0;
    v8 = (*(**(a1 + 8) + 24))(*(a1 + 8), v7);
    *(a1 + 24) += v8;
    return v8 == v7;
  }
}

void sub_100088154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008817C(uint64_t result, uint64_t a2, int a3)
{
  *result = off_1000AE838;
  *(result + 8) = a2;
  *(result + 16) = 0;
  if (a3 <= 0)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = a3;
  }

  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = v3;
  *(result + 44) = 0;
  return result;
}

uint64_t sub_1000881B4(uint64_t a1)
{
  *a1 = off_1000AE838;
  sub_100088254(a1);
  if (*(a1 + 16) == 1)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  if (v3)
  {
    operator delete[]();
  }

  return a1;
}

uint64_t sub_100088254(uint64_t a1)
{
  if (*(a1 + 17))
  {
    return 0;
  }

  if (!*(a1 + 44))
  {
    return 1;
  }

  if ((*(**(a1 + 8) + 16))(*(a1 + 8), *(a1 + 32)))
  {
    *(a1 + 24) += *(a1 + 44);
    *(a1 + 44) = 0;
    return 1;
  }

  *(a1 + 17) = 1;
  *(a1 + 44) = 0;
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    operator delete[]();
  }

  return result;
}

void sub_100088310(uint64_t a1)
{
  sub_1000881B4(a1);

  operator delete();
}

uint64_t sub_10008834C(uint64_t a1, void *a2, _DWORD *a3)
{
  if (*(a1 + 44) != *(a1 + 40) || (result = sub_100088254(a1), result))
  {
    sub_100087E08(a1);
    v7 = *(a1 + 40);
    v8 = *(a1 + 44);
    *a2 = *(a1 + 32) + v8;
    *a3 = v7 - v8;
    *(a1 + 44) = *(a1 + 40);
    return 1;
  }

  return result;
}

uint64_t sub_1000883C4(uint64_t result, int a2)
{
  v3 = result;
  if (a2 < 0)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 331);
    v4 = sub_10004FD04(v11, "CHECK failed: (count) >= (0): ");
    sub_10004FE40(&v10, &v4->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
  }

  v5 = *(v3 + 44);
  if (v5 != *(v3 + 40))
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 332);
    v6 = sub_10004FD04(v11, "CHECK failed: (buffer_used_) == (buffer_size_): ");
    v7 = sub_10004FD04(v6, " BackUp() can only be called after Next().");
    sub_10004FE40(&v10, &v7->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
    v5 = *(v3 + 44);
  }

  if (v5 < a2)
  {
    sub_10004FCEC(v11, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 334);
    v8 = sub_10004FD04(v11, "CHECK failed: (count) <= (buffer_used_): ");
    v9 = sub_10004FD04(v8, " Can't back up over more bytes than were returned by the last call to Next().");
    sub_10004FE40(&v10, &v9->__r_.__value_.__l.__data_);
    result = sub_10004FE48(v11);
    v5 = *(v3 + 44);
  }

  *(v3 + 44) = v5 - a2;
  return result;
}

void sub_1000884E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008851C(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = a3;
  if (*(a1 + 40) > a3)
  {
    __n_4[0].__r_.__value_.__r.__words[0] = 0;
    __n = 0;
    result = (*(*a1 + 16))(a1, __n_4, &__n);
    if (!result)
    {
      return result;
    }

    while (v3 > __n)
    {
      memcpy(__n_4[0].__r_.__value_.__l.__data_, a2, __n);
      a2 += __n;
      LODWORD(v3) = v3 - __n;
      if (((*(*a1 + 16))(a1, __n_4, &__n) & 1) == 0)
      {
        return 0;
      }
    }

    memcpy(__n_4[0].__r_.__value_.__l.__data_, a2, v3);
    (*(*a1 + 24))(a1, (__n - v3));
    return 1;
  }

  result = sub_100088254(a1);
  if (result)
  {
    result = (*(**(a1 + 8) + 16))(*(a1 + 8), a2, v3);
    if (result)
    {
      if (*(a1 + 44))
      {
        sub_10004FCEC(__n_4, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl_lite.cc", 350);
        v7 = sub_10004FD04(__n_4, "CHECK failed: (buffer_used_) == (0): ");
        sub_10004FE40(&__n, &v7->__r_.__value_.__l.__data_);
        sub_10004FE48(__n_4);
      }

      *(a1 + 24) += v3;
      return 1;
    }
  }

  return result;
}

void sub_1000886D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000886E8(uint64_t a1)
{
  *(a1 + 44) = 0;
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    operator delete[]();
  }

  return result;
}

void *sub_100088714(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = off_1000AE880;
  a1[1] = a2;
  a1[2] = a3;
  a1[3] = (*(*a2 + 40))(a2);
  return a1;
}

uint64_t sub_100088784(uint64_t a1)
{
  *a1 = off_1000AE880;
  if ((*(a1 + 16) & 0x8000000000000000) != 0)
  {
    (*(**(a1 + 8) + 24))(*(a1 + 8), -*(a1 + 16));
  }

  return a1;
}

void sub_100088800(uint64_t a1)
{
  sub_100088784(a1);

  operator delete();
}

uint64_t sub_100088838(uint64_t a1, uint64_t a2, int *a3)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  result = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (result)
  {
    v6 = *a3;
    v7 = *(a1 + 16) - v6;
    *(a1 + 16) = v7;
    if (v7 < 0)
    {
      *a3 = v6 + v7;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1000888C0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v6 = a1 + 8;
  v4 = *(a1 + 8);
  v5 = *(v6 + 8);
  if (v5 < 0)
  {
    v8 = a2;
    result = (*(*v4 + 24))(v4, (a2 - v5));
  }

  else
  {
    result = (*(*v4 + 24))(v4, a2);
    v8 = *(a1 + 16) + v2;
  }

  *(a1 + 16) = v8;
  return result;
}

BOOL sub_100088958(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = v4 >= a2;
  if (v4 < a2)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      (*(**(a1 + 8) + 32))(*(a1 + 8));
      v6 = 0;
      goto LABEL_6;
    }

    return 0;
  }

  if (!(*(**(a1 + 8) + 32))(*(a1 + 8), a2))
  {
    return 0;
  }

  v6 = *(a1 + 16) - a2;
LABEL_6:
  *(a1 + 16) = v6;
  return v5;
}

uint64_t sub_100088A14(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  if (v2 < 0)
  {
    v3 += *(a1 + 16);
  }

  return v3 - *(a1 + 24);
}

uint64_t sub_100088AC8(uint64_t result, int a2, int a3)
{
  v3 = *(result + 8);
  v4 = v3 & ~a2;
  v5 = v3 | a2;
  if (!a3)
  {
    v5 = v4;
  }

  *(result + 8) = v5;
  return result;
}

uint64_t sub_100088AE4(uint64_t a1, uint64_t a2)
{
  *a1 = off_1000AE990;
  *(a1 + 8) = 0;
  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFE | (*(*a2 + 16))(a2);
  if ((*(*a2 + 24))(a2))
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFD | v4;
  if ((*(*a2 + 32))(a2))
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFFB | v5;
  if ((*(*a2 + 40))(a2))
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 8) = *(a1 + 8) & 0xFFFFFFF7 | v6;
  return a1;
}

void sub_100088C34(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 4uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *v4 = v3;
}

void sub_100088C84(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100088CA0(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  std::string::resize(a2, 1uLL, 0);
  if (*(a2 + 23) >= 0)
  {
    v4 = a2;
  }

  else
  {
    v4 = *a2;
  }

  *v4 = v3;
}

void sub_100088CF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100088D0C(uint64_t a1, _DWORD *a2, unint64_t a3)
{
  *a1 = off_1000AE9D0;
  *(a1 + 16) = off_1000AE990;
  *(a1 + 24) = 0;
  *(a1 + 32) = off_1000AE990;
  *(a1 + 40) = 0;
  sub_10004AF14((a1 + 88));
  sub_100088E00(a1, a2, a3, &v7);
  sub_10004B134((a1 + 88), &v7);
  sub_10004AF1C(&v7);
  return a1;
}

void sub_100088DDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10004AF1C(va);
  sub_10004AF1C((v2 + 88));
  _Unwind_Resume(a1);
}

void *sub_100088E00@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v13 = a2;
  v14 = a3;
  v12 = 0;
  result = sub_10001432C(a2, a3, &v12, a4);
  if (!*a4)
  {
    sub_10004AF1C(a4);
    result = sub_1000492DC(&v13, 4uLL, a4);
    if (!*a4)
    {
      sub_10004AF1C(a4);
      *(a1 + 8) = v12;
      v11 = 0;
      result = sub_10001432C(v13, v14, &v11, a4);
      if (!*a4)
      {
        sub_10004AF1C(a4);
        result = sub_1000492DC(&v13, 4uLL, a4);
        if (!*a4)
        {
          sub_10004AF1C(a4);
          *(a1 + 24) = v11;
          v10 = 0;
          result = sub_10001432C(v13, v14, &v10, a4);
          if (!*a4)
          {
            sub_10004AF1C(a4);
            result = sub_1000492DC(&v13, 4uLL, a4);
            if (!*a4)
            {
              sub_10004AF1C(a4);
              v7 = v10;
              *(a1 + 48) = 0;
              *(a1 + 40) = v7;
              result = sub_100014120(v13, v14, (a1 + 48), a4);
              if (!*a4)
              {
                sub_10004AF1C(a4);
                result = sub_1000492DC(&v13, 4uLL, a4);
                if (!*a4)
                {
                  sub_10004AF1C(a4);
                  *(a1 + 56) = v13;
                  v8 = sub_10004924C(*(a1 + 48), 4uLL);
                  result = sub_1000492DC(&v13, v8, a4);
                  if (!*a4)
                  {
                    sub_10004AF1C(a4);
                    *(a1 + 64) = v13;
                    result = sub_1000492DC(&v13, 4 * *(a1 + 48), a4);
                    if (!*a4)
                    {
                      sub_10004AF1C(a4);
                      *(a1 + 72) = v13;
                      result = sub_1000492DC(&v13, 4 * *(a1 + 48) + 20, a4);
                      if (!*a4)
                      {
                        v9 = sub_10004AF1C(a4);
                        *(a1 + 80) = v13;
                        return sub_10004AF14(v9);
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

uint64_t sub_100089000(uint64_t a1, uint64_t a2)
{
  if ((*(*a1 + 104))(a1))
  {
    return 1;
  }

  if ((*(*a1 + 112))(a1, a2))
  {
    return 2;
  }

  if ((*(*a1 + 120))(a1, a2))
  {
    return 3;
  }

  if ((*(*a1 + 128))(a1, a2))
  {
    return 4;
  }

  if ((*(*a1 + 136))(a1, a2))
  {
    return 5;
  }

  if (((*(*a1 + 144))(a1, a2) & 1) == 0)
  {
    if (sub_100048804() <= 2)
    {
      v14 = 0;
      v5 = sub_1000192F4(&std::cerr, "mmap_model_proto.cc", 19);
      sub_1000192F4(v5, "(", 1);
      v6 = std::ostream::operator<<();
      v7 = sub_1000192F4(v6, ") ", 2);
      v8 = sub_1000192F4(v7, "LOG(", 4);
      v9 = sub_1000192F4(v8, "ERROR", 5);
      v10 = sub_1000192F4(v9, ") ", 2);
      v11 = sub_1000192F4(v10, "Unknown piece type: ", 20);
      v12 = (*(*a1 + 88))(a1, a2);
      sub_1000192F4(v11, v12, v13);
      sub_1000179E8(&v14);
    }

    return 1;
  }

  return 6;
}

void sub_100089270(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = (*(*a1 + 64))(a1);
  v5 = (*(*a1 + 72))(a1);
  v6 = (*(*a1 + 80))(a1);
  memset(&v118, 0, sizeof(v118));
  std::string::resize(&v118, 4uLL, 0);
  v7 = v4 | 2;
  if (!v5)
  {
    v7 = v4;
  }

  v8 = v7 | (v6 << 30);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v118;
  }

  else
  {
    v9 = v118.__r_.__value_.__r.__words[0];
  }

  LODWORD(v9->__r_.__value_.__l.__data_) = v8;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v118;
  }

  else
  {
    v10 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v10, size);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v12 = (*(*a1 + 152))(a1);
  sub_100088AE4(v117, v12);
  sub_100088C34(v117, &v118);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v118;
  }

  else
  {
    v13 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v14 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v13, v14);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v15 = (*(*a1 + 160))(a1);
  sub_100088AE4(v116, v15);
  sub_100088C34(v116, &v118);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v118;
  }

  else
  {
    v16 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v17 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v17 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v16, v17);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v18 = (*(*a1 + 16))(a1);
  memset(&v118, 0, sizeof(v118));
  std::string::resize(&v118, 4uLL, 0);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v118;
  }

  else
  {
    v19 = v118.__r_.__value_.__r.__words[0];
  }

  LODWORD(v19->__r_.__value_.__l.__data_) = v18;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v118;
  }

  else
  {
    v20 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v20, v21);
  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }

  v22 = v18;
  if (v18)
  {
    for (i = 0; i != v18; ++i)
    {
      LOBYTE(__src) = sub_100089000(a1, i);
      sub_100088CA0(&__src, &v118);
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v24 = &v118;
      }

      else
      {
        v24 = v118.__r_.__value_.__r.__words[0];
      }

      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v25 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v25 = v118.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v24, v25);
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }
    }
  }

  sub_100049274(a2);
  if (v18)
  {
    for (j = 0; j != v18; ++j)
    {
      v27 = (*(*a1 + 96))(a1, j);
      memset(&v118, 0, sizeof(v118));
      std::string::resize(&v118, 4uLL, 0);
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v28 = &v118;
      }

      else
      {
        v28 = v118.__r_.__value_.__r.__words[0];
      }

      *&v28->__r_.__value_.__l.__data_ = v27;
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v29 = &v118;
      }

      else
      {
        v29 = v118.__r_.__value_.__r.__words[0];
      }

      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v118.__r_.__value_.__l.__size_;
      }

      std::string::append(a2, v29, v30);
      if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v118.__r_.__value_.__l.__data_);
      }
    }
  }

  memset(&v118, 0, sizeof(v118));
  __src = 0;
  v114 = 0;
  v115 = 0;
  v31 = (*(*a1 + 24))(a1);
  v33 = v32;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v118.__r_.__value_.__r.__words[1];
  }

  v35 = v114;
  if (v114 >= v115)
  {
    v37 = __src;
    v38 = v114 - __src;
    v39 = (v114 - __src) >> 2;
    v40 = v39 + 1;
    if ((v39 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v41 = v115 - __src;
    if ((v115 - __src) >> 1 > v40)
    {
      v40 = v41 >> 1;
    }

    v42 = v41 >= 0x7FFFFFFFFFFFFFFCLL;
    v43 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v43 = v40;
    }

    if (v43)
    {
      sub_10000418C(&__src, v43);
    }

    *(4 * v39) = v34;
    v36 = 4 * v39 + 4;
    memcpy(0, v37, v38);
    v44 = __src;
    __src = 0;
    v114 = v36;
    v115 = 0;
    if (v44)
    {
      operator delete(v44);
    }
  }

  else
  {
    *v114 = v34;
    v36 = (v35 + 4);
  }

  v114 = v36;
  std::string::append(&v118, v31, v33);
  std::string::push_back(&v118, 0);
  v45 = (*(*a1 + 32))(a1);
  v47 = v46;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v48 = v118.__r_.__value_.__r.__words[1];
  }

  v49 = v114;
  if (v114 >= v115)
  {
    v51 = __src;
    v52 = v114 - __src;
    v53 = (v114 - __src) >> 2;
    v54 = v53 + 1;
    if ((v53 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v55 = v115 - __src;
    if ((v115 - __src) >> 1 > v54)
    {
      v54 = v55 >> 1;
    }

    v42 = v55 >= 0x7FFFFFFFFFFFFFFCLL;
    v56 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v56 = v54;
    }

    if (v56)
    {
      sub_10000418C(&__src, v56);
    }

    *(4 * v53) = v48;
    v50 = 4 * v53 + 4;
    memcpy(0, v51, v52);
    v57 = __src;
    __src = 0;
    v114 = v50;
    v115 = 0;
    if (v57)
    {
      operator delete(v57);
    }
  }

  else
  {
    *v114 = v48;
    v50 = (v49 + 4);
  }

  v114 = v50;
  std::string::append(&v118, v45, v47);
  std::string::push_back(&v118, 0);
  v58 = (*(*a1 + 40))(a1);
  v60 = v59;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v61 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v61 = v118.__r_.__value_.__r.__words[1];
  }

  v62 = v114;
  if (v114 >= v115)
  {
    v64 = __src;
    v65 = v114 - __src;
    v66 = (v114 - __src) >> 2;
    v67 = v66 + 1;
    if ((v66 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v68 = v115 - __src;
    if ((v115 - __src) >> 1 > v67)
    {
      v67 = v68 >> 1;
    }

    v42 = v68 >= 0x7FFFFFFFFFFFFFFCLL;
    v69 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v69 = v67;
    }

    if (v69)
    {
      sub_10000418C(&__src, v69);
    }

    *(4 * v66) = v61;
    v63 = 4 * v66 + 4;
    memcpy(0, v64, v65);
    v70 = __src;
    __src = 0;
    v114 = v63;
    v115 = 0;
    if (v70)
    {
      operator delete(v70);
    }
  }

  else
  {
    *v114 = v61;
    v63 = (v62 + 4);
  }

  v114 = v63;
  std::string::append(&v118, v58, v60);
  std::string::push_back(&v118, 0);
  v71 = (*(*a1 + 48))(a1);
  v73 = v72;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v118.__r_.__value_.__r.__words[1];
  }

  v75 = v114;
  if (v114 >= v115)
  {
    v77 = __src;
    v78 = v114 - __src;
    v79 = (v114 - __src) >> 2;
    v80 = v79 + 1;
    if ((v79 + 1) >> 62)
    {
      goto LABEL_165;
    }

    v81 = v115 - __src;
    if ((v115 - __src) >> 1 > v80)
    {
      v80 = v81 >> 1;
    }

    v42 = v81 >= 0x7FFFFFFFFFFFFFFCLL;
    v82 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v42)
    {
      v82 = v80;
    }

    if (v82)
    {
      sub_10000418C(&__src, v82);
    }

    *(4 * v79) = v74;
    v76 = 4 * v79 + 4;
    memcpy(0, v77, v78);
    v83 = __src;
    __src = 0;
    v114 = v76;
    v115 = 0;
    if (v83)
    {
      operator delete(v83);
    }
  }

  else
  {
    *v114 = v74;
    v76 = (v75 + 4);
  }

  v114 = v76;
  std::string::append(&v118, v71, v73);
  std::string::push_back(&v118, 0);
  v84 = (*(*a1 + 56))(a1);
  v86 = v85;
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v87 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v87 = v118.__r_.__value_.__r.__words[1];
  }

  v88 = v114;
  if (v114 < v115)
  {
    *v114 = v87;
    v89 = (v88 + 4);
    goto LABEL_136;
  }

  v90 = __src;
  v91 = v114 - __src;
  v92 = (v114 - __src) >> 2;
  v93 = v92 + 1;
  if ((v92 + 1) >> 62)
  {
LABEL_165:
    sub_100003F50();
  }

  v94 = v115 - __src;
  if ((v115 - __src) >> 1 > v93)
  {
    v93 = v94 >> 1;
  }

  v42 = v94 >= 0x7FFFFFFFFFFFFFFCLL;
  v95 = 0x3FFFFFFFFFFFFFFFLL;
  if (!v42)
  {
    v95 = v93;
  }

  if (v95)
  {
    sub_10000418C(&__src, v95);
  }

  *(4 * v92) = v87;
  v89 = 4 * v92 + 4;
  memcpy(0, v90, v91);
  v96 = __src;
  __src = 0;
  v114 = v89;
  v115 = 0;
  if (v96)
  {
    operator delete(v96);
  }

LABEL_136:
  v114 = v89;
  std::string::append(&v118, v84, v86);
  std::string::push_back(&v118, 0);
  if (v18)
  {
    v97 = 0;
    do
    {
      v98 = (*(*a1 + 88))(a1, v97);
      v100 = v99;
      if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v101 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v101 = v118.__r_.__value_.__r.__words[1];
      }

      v102 = v114;
      if (v114 >= v115)
      {
        v104 = __src;
        v105 = v114 - __src;
        v106 = (v114 - __src) >> 2;
        v107 = v106 + 1;
        if ((v106 + 1) >> 62)
        {
          sub_100003F50();
        }

        v108 = v115 - __src;
        if ((v115 - __src) >> 1 > v107)
        {
          v107 = v108 >> 1;
        }

        v42 = v108 >= 0x7FFFFFFFFFFFFFFCLL;
        v109 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v42)
        {
          v109 = v107;
        }

        if (v109)
        {
          sub_10000418C(&__src, v109);
        }

        *(4 * v106) = v101;
        v103 = 4 * v106 + 4;
        memcpy(0, v104, v105);
        v110 = __src;
        __src = 0;
        v114 = v103;
        v115 = 0;
        if (v110)
        {
          operator delete(v110);
        }
      }

      else
      {
        *v114 = v101;
        v103 = (v102 + 4);
      }

      v114 = v103;
      std::string::append(&v118, v98, v100);
      std::string::push_back(&v118, 0);
      ++v97;
    }

    while (v22 != v97);
  }

  std::string::append(a2, __src, v114 - __src);
  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v111 = &v118;
  }

  else
  {
    v111 = v118.__r_.__value_.__r.__words[0];
  }

  if ((v118.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v112 = HIBYTE(v118.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v112 = v118.__r_.__value_.__l.__size_;
  }

  std::string::append(a2, v111, v112);
  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v118.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v118.__r_.__value_.__l.__data_);
  }
}

void sub_100089D04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 + 23) < 0)
  {
    operator delete(*v21);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100089DE0(void *a1)
{
  *a1 = off_1000AE9D0;
  sub_10004AF1C(a1 + 11);
  return a1;
}

void sub_100089E24(void *a1)
{
  *a1 = off_1000AE9D0;
  sub_10004AF1C(a1 + 11);

  operator delete();
}

uint64_t sub_100089E90(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = **(a1 + 72);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_100089EC4(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 4);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_100089EF8(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 8);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_100089F2C(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 12);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_100089F60(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(*(a1 + 72) + 16);
  strlen((v1 + v2));
  return v1 + v2;
}

uint64_t sub_100089FB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 80);
  v3 = *(*(a1 + 72) + 4 * (a2 + 5));
  strlen((v2 + v3));
  return v2 + v3;
}

uint64_t sub_10008A084(uint64_t a1, int a2, int a3)
{
  *a1 = off_1000AEAB8;
  *(a1 + 8) = off_1000AEAF8;
  *(a1 + 16) = a2;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  sub_100087C14(a1 + 32, a1 + 8, a3);
  return a1;
}

uint64_t sub_10008A114(uint64_t result, int a2)
{
  *result = off_1000AEAF8;
  *(result + 8) = a2;
  *(result + 12) = 0;
  *(result + 16) = 0;
  *(result + 20) = 0;
  return result;
}

BOOL sub_10008A154(uint64_t a1)
{
  if (*(a1 + 13) == 1)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 117);
    v2 = sub_10004FD04(v6, "CHECK failed: !is_closed_: ");
    sub_10004FE40(&v5, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  *(a1 + 13) = 1;
  v3 = sub_10008A318(*(a1 + 8));
  if (v3)
  {
    *(a1 + 16) = *__error();
  }

  return v3 == 0;
}

void sub_10008A1F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A228(uint64_t a1)
{
  *a1 = off_1000AEAF8;
  if (*(a1 + 12) == 1 && !sub_10008A154(a1))
  {
    sub_10004FCEC(v7, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 111);
    v2 = sub_10004FD04(v7, "close() failed: ");
    v3 = strerror(*(a1 + 16));
    v4 = sub_10004FD04(v2, v3);
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  return a1;
}

void sub_10008A2E0(uint64_t a1)
{
  sub_10008A228(a1);

  operator delete();
}

uint64_t sub_10008A318(int a1)
{
  do
  {
    v2 = close(a1);
  }

  while ((v2 & 0x80000000) != 0 && *__error() == 4);
  return v2;
}

ssize_t sub_10008A35C(uint64_t a1, void *a2, int a3)
{
  if (*(a1 + 13) == 1)
  {
    sub_10004FCEC(v10, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 132);
    v6 = sub_10004FD04(v10, "CHECK failed: !is_closed_: ");
    sub_10004FE40(&v9, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v10);
  }

  while (1)
  {
    v7 = read(*(a1 + 8), a2, a3);
    if ((v7 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      *(a1 + 16) = *__error();
      return v7;
    }
  }

  return v7;
}

void sub_10008A418(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A430(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 13) == 1)
  {
    sub_10004FCEC(v7, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 148);
    v4 = sub_10004FD04(v7, "CHECK failed: !is_closed_: ");
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  if ((*(a1 + 20) & 1) != 0 || lseek(*(a1 + 8), a2, 1) == -1)
  {
    *(a1 + 20) = 1;
    return sub_100087B38();
  }

  return a2;
}

void sub_10008A4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A4F8(void *a1, int a2)
{
  *a1 = off_1000AEB28;
  result = sub_10008817C(a1, (a1 + 6), -1);
  *result = off_1000AEB28;
  *(result + 48) = off_1000AEB70;
  *(result + 56) = a2;
  *(result + 60) = 0;
  *(result + 64) = 0;
  return result;
}

uint64_t sub_10008A57C(uint64_t result, int a2)
{
  *result = off_1000AEB70;
  *(result + 8) = a2;
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

BOOL sub_10008A5DC(uint64_t a1)
{
  if (*(a1 + 13) == 1)
  {
    sub_10004FCEC(v6, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 194);
    v2 = sub_10004FD04(v6, "CHECK failed: !is_closed_: ");
    sub_10004FE40(&v5, &v2->__r_.__value_.__l.__data_);
    sub_10004FE48(v6);
  }

  *(a1 + 13) = 1;
  v3 = sub_10008A318(*(a1 + 8));
  if (v3)
  {
    *(a1 + 16) = *__error();
  }

  return v3 == 0;
}

void sub_10008A678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008A690(void *a1)
{
  *a1 = off_1000AEB28;
  sub_100088348(a1);
  sub_10008A730((a1 + 6));

  return sub_1000881B4(a1);
}

void sub_10008A6F8(void *a1)
{
  sub_10008A690(a1);

  operator delete();
}

uint64_t sub_10008A730(uint64_t a1)
{
  *a1 = off_1000AEB70;
  if (*(a1 + 12) == 1 && !sub_10008A5DC(a1))
  {
    sub_10004FCEC(v7, 2, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 188);
    v2 = sub_10004FD04(v7, "close() failed: ");
    v3 = strerror(*(a1 + 16));
    v4 = sub_10004FD04(v2, v3);
    sub_10004FE40(&v6, &v4->__r_.__value_.__l.__data_);
    sub_10004FE48(v7);
  }

  return a1;
}

void sub_10008A7E8(uint64_t a1)
{
  sub_10008A730(a1);

  operator delete();
}

BOOL sub_10008A820(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 13) == 1)
  {
    sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 210);
    v6 = sub_10004FD04(v14, "CHECK failed: !is_closed_: ");
    sub_10004FE40(&v13, &v6->__r_.__value_.__l.__data_);
    sub_10004FE48(v14);
  }

  if (a3 < 1)
  {
    return 1;
  }

  v7 = 0;
  do
  {
    while (1)
    {
      v8 = write(*(a1 + 8), (a2 + v7), a3 - v7);
      v9 = v8;
      if (v8 < 0)
      {
        break;
      }

      result = v8 != 0;
      v7 += v9;
      if (v9)
      {
        v10 = v7 < a3;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
        return result;
      }
    }
  }

  while (*__error() == 4);
  v11 = __error();
  result = 0;
  *(a1 + 16) = *v11;
  return result;
}

void sub_10008A920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void *sub_10008A938(void *a1, uint64_t a2, int a3)
{
  *a1 = off_1000AEB98;
  a1[1] = off_1000AEBD8;
  a1[2] = a2;
  sub_100087C14((a1 + 3), (a1 + 1), a3);
  return a1;
}

void *sub_10008A9A4(void *result, uint64_t a2)
{
  *result = off_1000AEBD8;
  result[1] = a2;
  return result;
}

uint64_t sub_10008A9FC(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::istream::read();
  v3 = *(a1 + 8);
  result = *(v3 + 8);
  if (!result)
  {
    v5 = *(v3 + *(*v3 - 24) + 32);
    v6 = v5 & 5;
    v7 = v5 & 2;
    if (v6)
    {
      v8 = v7 == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void *sub_10008AA6C(void *a1, uint64_t a2, int a3)
{
  *a1 = off_1000AEC08;
  a1[1] = off_1000AEC50;
  a1[2] = a2;
  sub_10008817C((a1 + 3), (a1 + 1), a3);
  return a1;
}

void *sub_10008AAD8(void *result, uint64_t a2)
{
  *result = off_1000AEC50;
  result[1] = a2;
  return result;
}

void *sub_10008AAFC(void *a1)
{
  *a1 = off_1000AEC08;
  v2 = a1 + 3;
  sub_100088348(a1 + 3);
  sub_10008830C(v2);
  return a1;
}

void sub_10008AB58(void *a1)
{
  sub_10008AAFC(a1);

  operator delete();
}

BOOL sub_10008ABBC(uint64_t a1)
{
  v2 = *(a1 + 8);
  std::ostream::write();
  return *(*(a1 + 8) + *(**(a1 + 8) - 24) + 32) == 0;
}

uint64_t sub_10008AC10(uint64_t result, uint64_t a2, int a3)
{
  *result = off_1000AEC78;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = 0;
  return result;
}

uint64_t sub_10008AC38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v6 = *(a1 + 8);
  do
  {
    v7 = (*(**v6 + 16))(*v6, a2, a3);
    if (v7)
    {
      break;
    }

    *(a1 + 24) += (*(***(a1 + 8) + 40))(**(a1 + 8));
    v6 = (*(a1 + 8) + 8);
    *(a1 + 8) = v6;
    v8 = *(a1 + 16);
    v9 = __OFSUB__(v8--, 1);
    *(a1 + 16) = v8;
  }

  while (!((v8 < 0) ^ v9 | (v8 == 0)));
  return v7;
}

uint64_t sub_10008AD10(uint64_t a1)
{
  if (*(a1 + 16) < 1)
  {
    sub_10004FCEC(v5, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 327);
    v3 = sub_10004FD04(v5, "Can't BackUp() after failed Next().");
    sub_10004FE40(&v4, &v3->__r_.__value_.__l.__data_);
    return sub_10004FE48(v5);
  }

  else
  {
    v1 = *(***(a1 + 8) + 24);

    return v1();
  }
}

void sub_10008ADC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008ADDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < 1)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  do
  {
    v5 = (*(**v4 + 40))();
    v6 = (*(***(a1 + 8) + 32))(**(a1 + 8), a2);
    if (v6)
    {
      break;
    }

    v7 = v5 + a2;
    v8 = (*(***(a1 + 8) + 40))(**(a1 + 8));
    if (v7 <= v8)
    {
      sub_10004FCEC(v14, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream_impl.cc", 341);
      v9 = sub_10004FD04(v14, "CHECK failed: (final_byte_count) < (target_byte_count): ");
      sub_10004FE40(&v13, &v9->__r_.__value_.__l.__data_);
      sub_10004FE48(v14);
    }

    a2 = (v7 - v8);
    *(a1 + 24) += v8;
    v4 = *(a1 + 8) + 8;
    *(a1 + 8) = v4;
    v10 = *(a1 + 16);
    v11 = __OFSUB__(v10--, 1);
    *(a1 + 16) = v10;
  }

  while (!((v10 < 0) ^ v11 | (v10 == 0)));
  return v6;
}

void sub_10008AF44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008AF5C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (*(a1 + 16))
  {
    v1 += (*(***(a1 + 8) + 40))(**(a1 + 8));
  }

  return v1;
}

void sub_10008AFB8(void *a1)
{
  *a1 = off_1000AEAB8;
  v1 = (a1 + 1);
  sub_100087CE8(a1 + 4);
  sub_10008A228(v1);

  operator delete();
}

void sub_10008B02C(void *a1)
{
  *a1 = off_1000AEB98;
  sub_100087CE8(a1 + 3);

  operator delete();
}

uint64_t sub_10008B0A8()
{
  sub_10004FCEC(v3, 3, "/Library/Caches/com.apple.xbs/Sources/SentencePiece/third_party/protobuf-lite/zero_copy_stream.cc", 47);
  v0 = sub_10004FD04(v3, "This ZeroCopyOutputStream doesn't support aliasing. Reaching here usually means a ZeroCopyOutputStream implementation bug.");
  sub_10004FE40(&v2, &v0->__r_.__value_.__l.__data_);
  sub_10004FE48(v3);
  return 0;
}

void sub_10008B10C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

void sub_10008B124(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "DDScannerHelper - Error Running DD Scanner: %@", &v2, 0xCu);
}

void sub_10008B19C(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138477827;
  v4 = v2;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "DDScannerHelper - No end date found in input text: %{private}@", &v3, 0xCu);
}

void sub_10008B218(os_log_t log)
{
  v1 = 138412290;
  v2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "EMDEBeamSearchHandler - Found nil in input model for initWithModel:%@", &v1, 0xCu);
}

void sub_10008B2D8(uint64_t *a1)
{
  v6 = *a1;
  sub_10000930C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10008B350()
{
  sub_100009318();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008B404(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138477827;
  *(buf + 4) = a1;
  _os_log_debug_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "EMDEEventExtractor - Predicted Date String: %{private}@", buf, 0xCu);
}

void sub_10008B45C()
{
  sub_100009318();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008B498(uint64_t a1, NSObject *a2, float a3)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2048;
  v6 = a3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "EMDEEventExtractor - Predicted Title String: %{private}@ (Score: %f)", &v3, 0x16u);
}

void sub_10008B520(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "EMDEEventExtractor - Extracting Title from inputMessage: %{private}@", &v2, 0xCu);
}

void sub_10008B598()
{
  sub_100009318();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008B5D4(uint64_t a1, NSObject *a2)
{
  v2 = 138477827;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "EMDEEventExtractor - Extracting Event from inputMessage: %{private}@", &v2, 0xCu);
}

void sub_10008B64C(uint64_t *a1)
{
  v6 = *a1;
  sub_10000930C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void sub_10008B6C4()
{
  sub_100009318();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10008B700(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "EMDEEventExtractor - Error in running DataDetector for dateString. Error: %@", buf, 0xCu);
}

void sub_10008B968(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138478083;
  v4 = a1;
  v5 = 2113;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "EMDEUtils - Found nil in input parameters for loadConfigFromFile:%{private}@ assetFolderPath:%{private}@", &v3, 0x16u);
}

void sub_10008BB28()
{
  sub_1000117F8();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008BB98()
{
  sub_1000117F8();
  v3 = 2113;
  v4 = v0;
  _os_log_error_impl(&_mh_execute_header, v1, OS_LOG_TYPE_ERROR, "EMDEModelWrapper - Found nil in input parameters for loadConfigFromFile:%{private}@ assetFolderPath:%{private}@", v2, 0x16u);
}

void sub_10008BC9C()
{
  sub_1000117F8();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008BD0C()
{
  sub_1000117F8();
  sub_10000930C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_10008BE44(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "EMDEBeamPath - Found nil in input parameters for initChildBeamFrom:%@ state:%@ ", &v3, 0x16u);
}

void sub_10008BECC(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "EventMetaDataExtractorPlugin - Sending CoreAnalytics Event: %@", &v2, 0xCu);
}

uint64_t sub_10008BF44(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_10003A638(a2, v8, a1);
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

uint64_t sub_10008C00C(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_10003B728(a2, v8, a1);
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

void sub_10008C0D4(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  *v322 = a2;
  v5 = sub_10003CE28(a3, v322, a3[11].i32[1]);
  v6 = *v322;
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
      *v322 = v7;
      goto LABEL_7;
    }

    v31 = sub_10006E2E8(v6, v8);
    *v322 = v31;
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
          *v322 = v9 + 1;
          v10 = *(a1 + 72);
          if (!v10)
          {
            v13 = *(a1 + 68);
LABEL_16:
            sub_10007BCC0(a1 + 56, v13 + 1);
            v12 = *(a1 + 72);
            v20 = *v12;
            goto LABEL_17;
          }

          v11 = *(a1 + 64);
          sub_1000473DC(v10);
          if (v14 != v15)
          {
            sub_1000473C4();
            *(a1 + 64) = v17;
            v19 = *(v18 + 8);
            goto LABEL_22;
          }

          if (v13 == *(a1 + 68))
          {
            goto LABEL_16;
          }

LABEL_17:
          sub_100047418(v12);
          v21 = *(a1 + 56);
          if (!v21)
          {
            sub_100047424();
          }

          if (*(v21 + 24))
          {
            v29 = sub_10004737C();
          }

          v22 = sub_100047304();
          sub_1000473F4(v22);
          v23 = *(a1 + 72);
          v24 = *(a1 + 64);
          sub_1000473E8();
          *(a1 + 64) = v25;
          v19 = sub_1000473D0(v26, v27);
LABEL_22:
          *v322 = sub_10006E3A8(v19, v16, a3);
          if (*v322)
          {
            sub_1000473B8();
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

        sub_10004740C(*(a1 + 40) | 1);
        if (v56)
        {
          sub_100047400(v127, v56);
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

        sub_1000472D8(v185, v186);
        if (v188 < 0)
        {
          *v322 = sub_10006E2A0(v187, v185);
          if (!*v322)
          {
            return;
          }
        }

        else
        {
          v186 = (v187 + 2);
LABEL_183:
          *v322 = v186;
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
            v321 = sub_10003CF68((a1 + 8));
            v185 = v320;
            v317 = v321;
          }

          sub_10006E0C0(3, v185, v317);
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

        sub_10004734C(v7, *(a1 + 40) | 0x1000000);
        if ((v123 & 0x80) == 0)
        {
          goto LABEL_122;
        }

        sub_1000472F0(v123, v124);
        if (v126 < 0)
        {
          v284 = sub_10006E2A0(v125, v123);
          *v322 = v284;
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
          *v322 = v124;
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
          *v322 = v152 + 1;
          v153 = *(a1 + 96);
          if (!v153)
          {
            break;
          }

          v154 = *(a1 + 88);
          sub_1000473DC(v153);
          if (v14 == v15)
          {
            if (v156 == *(a1 + 92))
            {
LABEL_154:
              sub_10007BCC0(a1 + 80, v156 + 1);
              v155 = *(a1 + 96);
              v161 = *v155;
            }

            sub_100047418(v155);
            v162 = *(a1 + 80);
            if (!v162)
            {
              sub_100047424();
            }

            if (*(v162 + 24))
            {
              v169 = sub_10004737C();
            }

            v163 = sub_100047304();
            sub_1000473F4(v163);
            v164 = *(a1 + 96);
            v165 = *(a1 + 88);
            sub_1000473E8();
            *(a1 + 88) = v166;
            v160 = sub_1000473D0(v167, v168);
            goto LABEL_160;
          }

          sub_1000473C4();
          *(a1 + 88) = v158;
          v160 = *(v159 + 8);
LABEL_160:
          *v322 = sub_10006E3A8(v160, v157, a3);
          if (!*v322)
          {
            return;
          }

          sub_1000473B8();
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

        sub_10004734C(v7, *(a1 + 40) | 0x200);
        if ((v181 & 0x80) == 0)
        {
          goto LABEL_178;
        }

        sub_1000472F0(v181, v182);
        if (v184 < 0)
        {
          v298 = sub_10006E2A0(v183, v181);
          *v322 = v298;
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
          *v322 = v182;
          *(a1 + 224) = v181;
        }

        goto LABEL_267;
      case 7u:
        if (v8 != 58)
        {
          goto LABEL_269;
        }

        sub_10004740C(*(a1 + 40) | 2);
        if (v56)
        {
          sub_100047400(v219, v56);
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

        sub_10004735C(v7, *(a1 + 40) | 0x800);
        if ((v97 & 0x8000000000000000) == 0)
        {
          goto LABEL_100;
        }

        sub_1000472D8(v97, v98);
        if (v100 < 0)
        {
          v274 = sub_10006E2A0(v99, v97);
          *v322 = v274;
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
          *v322 = v98;
          *(a1 + 232) = v97;
        }

        goto LABEL_267;
      case 0xCu:
        if (v8 != 96)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x400);
        if ((v222 & 0x80) == 0)
        {
          goto LABEL_234;
        }

        sub_1000472F0(v222, v223);
        if (v225 < 0)
        {
          v304 = sub_10006E2A0(v224, v222);
          *v322 = v304;
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
          *v322 = v223;
          *(a1 + 228) = v222;
        }

        goto LABEL_267;
      case 0xDu:
        if (v8 != 104)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x1000);
        if ((v113 & 0x80) == 0)
        {
          goto LABEL_113;
        }

        sub_1000472F0(v113, v114);
        if (v116 < 0)
        {
          v280 = sub_10006E2A0(v115, v113);
          *v322 = v280;
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
          *v322 = v114;
          *(a1 + 240) = v113;
        }

        goto LABEL_267;
      case 0xEu:
        if (v8 != 112)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x4000000);
        if ((v171 & 0x80) == 0)
        {
          goto LABEL_169;
        }

        sub_1000472F0(v171, v172);
        if (v174 < 0)
        {
          v294 = sub_10006E2A0(v173, v171);
          *v322 = v294;
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
          *v322 = v172;
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

        sub_10004734C(v7, *(a1 + 40) | 0x10000000);
        if ((v74 & 0x80) == 0)
        {
          goto LABEL_76;
        }

        sub_1000472F0(v74, v75);
        if (v77 < 0)
        {
          v272 = sub_10006E2A0(v76, v74);
          *v322 = v272;
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
          *v322 = v75;
          *(a1 + 292) = v74;
        }

        goto LABEL_267;
      case 0x11u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x20000000);
        if ((v211 & 0x80) == 0)
        {
          goto LABEL_217;
        }

        sub_1000472F0(v211, v212);
        if (v214 < 0)
        {
          v300 = sub_10006E2A0(v213, v211);
          *v322 = v300;
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
          *v322 = v212;
          *(a1 + 296) = v211;
        }

        goto LABEL_267;
      case 0x12u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x40000000);
        if ((v215 & 0x80) == 0)
        {
          goto LABEL_222;
        }

        sub_1000472F0(v215, v216);
        if (v218 < 0)
        {
          v302 = sub_10006E2A0(v217, v215);
          *v322 = v302;
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
          *v322 = v216;
          *(a1 + 300) = v215;
        }

        goto LABEL_267;
      case 0x13u:
        if (v8 != 152)
        {
          goto LABEL_269;
        }

        sub_10004736C(v7, *(a1 + 44) | 1);
        if (v234 < 0 && (sub_1000472D8(v234, v235), v238 < 0))
        {
          sub_10006E2A0(v237, v236);
          sub_10004732C();
          *(a1 + 308) = v310;
          if (!v311)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 308) = v239;
        }

        goto LABEL_267;
      case 0x14u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x80000000);
        if ((v230 & 0x80) == 0)
        {
          goto LABEL_244;
        }

        sub_1000472F0(v230, v231);
        if (v233 < 0)
        {
          v308 = sub_10006E2A0(v232, v230);
          *v322 = v308;
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
          *v322 = v231;
          *(a1 + 304) = v230;
        }

        goto LABEL_267;
      case 0x15u:
        if (v8 != 168)
        {
          goto LABEL_269;
        }

        sub_10004736C(v7, *(a1 + 44) | 2);
        if (v58 < 0 && (sub_1000472D8(v58, v59), v62 < 0))
        {
          sub_10006E2A0(v61, v60);
          sub_10004732C();
          *(a1 + 309) = v266;
          if (!v267)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 309) = v63;
        }

        goto LABEL_267;
      case 0x16u:
        if (v8 != 176)
        {
          goto LABEL_269;
        }

        sub_10004736C(v7, *(a1 + 44) | 8);
        if (v146 < 0 && (sub_1000472D8(v146, v147), v150 < 0))
        {
          sub_10006E2A0(v149, v148);
          sub_10004732C();
          *(a1 + 311) = v292;
          if (!v293)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 311) = v151;
        }

        goto LABEL_267;
      case 0x17u:
        if (v8 != 184)
        {
          goto LABEL_269;
        }

        sub_10004736C(v7, *(a1 + 44) | 4);
        if (v241 < 0 && (sub_1000472D8(v241, v242), v245 < 0))
        {
          sub_10006E2A0(v244, v243);
          sub_10004732C();
          *(a1 + 310) = v312;
          if (!v313)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 310) = v246;
        }

        goto LABEL_267;
      case 0x18u:
        if (v8 != 192)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x4000);
        if (v68 < 0 && (sub_1000472D8(v68, v69), v72 < 0))
        {
          sub_10006E2A0(v71, v70);
          sub_10004732C();
          *(a1 + 245) = v270;
          if (!v271)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 245) = v73;
        }

        goto LABEL_267;
      case 0x19u:
        if (v8 != 200)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x10000);
        if (v138 < 0 && (sub_1000472D8(v138, v139), v142 < 0))
        {
          sub_10006E2A0(v141, v140);
          sub_10004732C();
          *(a1 + 247) = v290;
          if (!v291)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 247) = v143;
        }

        goto LABEL_267;
      case 0x1Au:
        if (v8 != 208)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x8000);
        if (v101 < 0 && (sub_1000472D8(v101, v102), v105 < 0))
        {
          sub_10006E2A0(v104, v103);
          sub_10004732C();
          *(a1 + 246) = v276;
          if (!v277)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
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
          *v322 = v189 + 2;
          v190 = *(a1 + 120);
          if (!v190)
          {
            break;
          }

          v191 = *(a1 + 112);
          sub_1000473DC(v190);
          if (v14 == v15)
          {
            if (v193 == *(a1 + 116))
            {
LABEL_194:
              sub_10007BCC0(a1 + 104, v193 + 1);
              v192 = *(a1 + 120);
              v198 = *v192;
            }

            sub_100047418(v192);
            v199 = *(a1 + 104);
            if (!v199)
            {
              sub_100047424();
            }

            if (*(v199 + 24))
            {
              v206 = sub_10004737C();
            }

            v200 = sub_100047304();
            sub_1000473F4(v200);
            v201 = *(a1 + 120);
            v202 = *(a1 + 112);
            sub_1000473E8();
            *(a1 + 112) = v203;
            v197 = sub_1000473D0(v204, v205);
            goto LABEL_200;
          }

          sub_1000473C4();
          *(a1 + 112) = v195;
          v197 = *(v196 + 8);
LABEL_200:
          *v322 = sub_10006E3A8(v197, v194, a3);
          if (!*v322)
          {
            return;
          }

          sub_1000473B8();
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

        sub_10004736C(v7, *(a1 + 44) | 0x10);
        if (v49 < 0 && (sub_1000472D8(v49, v50), v53 < 0))
        {
          sub_10006E2A0(v52, v51);
          sub_10004732C();
          *(a1 + 312) = v264;
          if (!v265)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 312) = v54;
        }

        goto LABEL_267;
      case 0x21u:
        if (v8 != 8)
        {
          goto LABEL_269;
        }

        sub_10004736C(v7, *(a1 + 44) | 0x20);
        if (v247 < 0 && (sub_1000472D8(v247, v248), v251 < 0))
        {
          sub_10006E2A0(v250, v249);
          sub_10004732C();
          *(a1 + 313) = v314;
          if (!v315)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 313) = v252;
        }

        goto LABEL_267;
      case 0x22u:
        if (v8 != 16)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x40000);
        if (v117 < 0 && (sub_1000472D8(v117, v118), v121 < 0))
        {
          sub_10006E2A0(v120, v119);
          sub_10004732C();
          *(a1 + 249) = v282;
          if (!v283)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 249) = v122;
        }

        goto LABEL_267;
      case 0x23u:
        if (v8 != 24)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x20000);
        if (v128 < 0 && (sub_1000472D8(v128, v129), v132 < 0))
        {
          sub_10006E2A0(v131, v130);
          sub_10004732C();
          *(a1 + 248) = v286;
          if (!v287)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 248) = v133;
        }

        goto LABEL_267;
      case 0x24u:
        if (v8 != 34)
        {
          goto LABEL_269;
        }

        sub_10004740C(*(a1 + 40) | 4);
        if (v56)
        {
          sub_100047400(v210, v56);
        }

        v57 = (a1 + 168);
        goto LABEL_227;
      case 0x28u:
        if (v8 != 64)
        {
          goto LABEL_269;
        }

        sub_10004734C(v7, *(a1 + 40) | 0x100000);
        if ((v134 & 0x80) == 0)
        {
          goto LABEL_135;
        }

        sub_1000472F0(v134, v135);
        if (v137 < 0)
        {
          v288 = sub_10006E2A0(v136, v134);
          *v322 = v288;
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
          *v322 = v135;
          *(a1 + 252) = v134;
        }

        goto LABEL_267;
      case 0x29u:
        if (v8 != 72)
        {
          goto LABEL_269;
        }

        sub_100047390(v7, *(a1 + 44) | 0x40);
        if ((v36 & 0x80) == 0)
        {
          goto LABEL_38;
        }

        sub_1000472F0(v36, v37);
        if (v39 < 0)
        {
          v262 = sub_10006E2A0(v38, v36);
          *v322 = v262;
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
          *v322 = v37;
          *(a1 + 316) = v36;
        }

        goto LABEL_267;
      case 0x2Au:
        if (v8 != 80)
        {
          goto LABEL_269;
        }

        sub_100047390(v7, *(a1 + 44) | 0x80);
        if ((v64 & 0x80) == 0)
        {
          goto LABEL_67;
        }

        sub_1000472F0(v64, v65);
        if (v67 < 0)
        {
          v268 = sub_10006E2A0(v66, v64);
          *v322 = v268;
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
          *v322 = v65;
          *(a1 + 320) = v64;
        }

        goto LABEL_267;
      case 0x2Bu:
        if (v8 != 88)
        {
          goto LABEL_269;
        }

        sub_100047390(v7, *(a1 + 44) | 0x100);
        if ((v226 & 0x80) == 0)
        {
          goto LABEL_239;
        }

        sub_1000472F0(v226, v227);
        if (v229 < 0)
        {
          v306 = sub_10006E2A0(v228, v226);
          *v322 = v306;
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
          *v322 = v227;
          *(a1 + 324) = v226;
        }

        goto LABEL_267;
      case 0x2Cu:
        if (v8 != 98)
        {
          goto LABEL_269;
        }

        sub_1000473A0(*(a1 + 40) | 8);
        if (v42)
        {
          sub_1000473AC(v253, v254, v42);
        }

        v43 = &off_1000B5908;
        v44 = (a1 + 176);
        goto LABEL_264;
      case 0x2Du:
        if (v8 != 106)
        {
          goto LABEL_269;
        }

        sub_1000473A0(*(a1 + 40) | 0x10);
        if (v42)
        {
          sub_1000473AC(v47, v48, v42);
        }

        v43 = &off_1000B5888;
        v44 = (a1 + 184);
        goto LABEL_264;
      case 0x2Eu:
        if (v8 != 114)
        {
          goto LABEL_269;
        }

        sub_1000473A0(*(a1 + 40) | 0x20);
        if (v42)
        {
          sub_1000473AC(v208, v209, v42);
        }

        v43 = &off_1000B58A8;
        v44 = (a1 + 192);
        goto LABEL_264;
      case 0x2Fu:
        if (v8 != 122)
        {
          goto LABEL_269;
        }

        sub_1000473A0(*(a1 + 40) | 0x40);
        if (v42)
        {
          sub_1000473AC(v45, v46, v42);
        }

        v43 = &off_1000B58C8;
        v44 = (a1 + 200);
        goto LABEL_264;
      case 0x30u:
        if (v8 != 130)
        {
          goto LABEL_269;
        }

        sub_1000473A0(*(a1 + 40) | 0x80);
        if (v42)
        {
          sub_1000473AC(v40, v41, v42);
        }

        v43 = &off_1000B58E8;
        v44 = (a1 + 208);
LABEL_264:
        v220 = sub_10004CAE4(v44, v43, v42);
        goto LABEL_265;
      case 0x31u:
        if (v8 != 136)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x80000);
        if (v107 < 0 && (sub_1000472D8(v107, v108), v111 < 0))
        {
          sub_10006E2A0(v110, v109);
          sub_10004732C();
          *(a1 + 250) = v278;
          if (!v279)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
          *(a1 + 250) = v112;
        }

        goto LABEL_267;
      case 0x32u:
        if (v8 != 144)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x2000);
        if (v175 < 0 && (sub_1000472D8(v175, v176), v179 < 0))
        {
          sub_10006E2A0(v178, v177);
          sub_10004732C();
          *(a1 + 244) = v296;
          if (!v297)
          {
            return;
          }
        }

        else
        {
          sub_10004733C();
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
        *v322 = v144;
        goto LABEL_267;
      case 0x34u:
        if (v8 != 160)
        {
          goto LABEL_269;
        }

        sub_10004735C(v7, *(a1 + 40) | 0x400000);
        if ((v32 & 0x8000000000000000) == 0)
        {
          goto LABEL_33;
        }

        sub_1000472D8(v32, v33);
        if (v35 < 0)
        {
          v260 = sub_10006E2A0(v34, v32);
          *v322 = v260;
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
          *v322 = v33;
          *(a1 + 264) = v32;
        }

        goto LABEL_267;
      case 0x35u:
        if (v8 != 170)
        {
          goto LABEL_269;
        }

        sub_10004740C(*(a1 + 40) | 0x100);
        if (v56)
        {
          sub_100047400(v55, v56);
        }

        v57 = (a1 + 216);
LABEL_227:
        v220 = sub_10004C9D8(v57, v56);
LABEL_265:
        v255 = sub_10006E3A8(v220, *v322, a3);
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
            v319 = sub_10003CF68((a1 + 8));
            v8 = v318;
            v259 = v319;
            v7 = *v322;
          }

          v255 = sub_10006E88C(v8, v259, v7, a3);
        }

        else
        {
          v255 = sub_10005C01C((a1 + 16), v8, v7, &unk_1000B6718, (a1 + 8), a3);
        }

LABEL_266:
        *v322 = v255;
        if (!v255)
        {
          return;
        }

LABEL_267:
        v256 = sub_10003CE28(a3, v322, a3[11].i32[1]);
        v6 = *v322;
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
    *v322 = v78 + 2;
    v79 = *(a1 + 144);
    if (!v79)
    {
      break;
    }

    v80 = *(a1 + 136);
    sub_1000473DC(v79);
    if (v14 == v15)
    {
      if (v82 == *(a1 + 140))
      {
LABEL_85:
        sub_10007BCC0(a1 + 128, v82 + 1);
        v81 = *(a1 + 144);
        v87 = *v81;
      }

      sub_100047418(v81);
      v88 = *(a1 + 128);
      if (!v88)
      {
        sub_100047424();
      }

      if (*(v88 + 24))
      {
        v95 = sub_10004737C();
      }

      v89 = sub_100047304();
      sub_1000473F4(v89);
      v90 = *(a1 + 144);
      v91 = *(a1 + 136);
      sub_1000473E8();
      *(a1 + 136) = v92;
      v86 = sub_1000473D0(v93, v94);
      goto LABEL_91;
    }

    sub_1000473C4();
    *(a1 + 136) = v84;
    v86 = *(v85 + 8);
LABEL_91:
    *v322 = sub_10006E3A8(v86, v83, a3);
    if (!*v322)
    {
      return;
    }

    sub_1000473B8();
    if (!(!v257 & v28) || *v78 != 506)
    {
      goto LABEL_267;
    }
  }

  v82 = *(a1 + 140);
  goto LABEL_85;
}

uint64_t sub_10008D144(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_100042524(a2, v8, a1);
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

uint64_t sub_10008D20C(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_100043A2C(a2, v8, a1);
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

void sub_10008D2D4(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    v9 = sub_10008E2F8(a3, v7);
    if (!v9)
    {
      return;
    }

    v8 = v9;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 == v13)
  {
    v14 = v11;
    sub_10008C0D4(a2, v8, a1);
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

uint64_t sub_10008D39C(int32x2_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
    if (!result)
    {
      return result;
    }

    v8 = result;
    v7 = v10;
  }

  else
  {
    v8 = (a3 + 1);
  }

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_100041494(a2, v8, a1);
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

uint64_t sub_10008D464(int32x2_t *a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
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

  v11 = sub_10003D298(a1, v8, v7);
  v12 = a1[11].i32[0];
  v13 = __OFSUB__(v12--, 1);
  a1[11].i32[0] = v12;
  if (v12 < 0 != v13)
  {
    return 0;
  }

  v14 = v11;
  result = sub_100042F94(a2, v8, a1);
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

uint64_t sub_10008D52C(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 40);
  if ((a2 & 0x80000000) == 0)
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 8);
    v6 = *(a1 + 44);
    v7 = v4 - v6 + *a1 - v5;
    if ((v7 ^ 0x7FFFFFFFu) >= a2 && result - v7 > a2)
    {
      v9 = v7 + a2;
      *(a1 + 40) = v9;
      v10 = v5 + v6;
      *(a1 + 8) = v10;
      v11 = *(a1 + 48);
      if (v11 >= v9)
      {
        v11 = v9;
      }

      v12 = __OFSUB__(v4, v11);
      v13 = v4 - v11;
      if ((v13 < 0) ^ v12 | (v13 == 0))
      {
        v13 = 0;
      }

      else
      {
        *(a1 + 8) = v10 - v13;
      }

      *(a1 + 44) = v13;
    }
  }

  return result;
}

unint64_t sub_10008D5A4(uint64_t a1, unsigned int a2)
{
  v3 = sub_10008D52C(a1, a2);
  v4 = (*(a1 + 52) - 1);
  *(a1 + 52) = v4;
  return v3 | (v4 << 32);
}

uint64_t sub_10008D5DC(uint64_t a1)
{
  v2 = *a1;
  if (*a1 >= *(a1 + 8))
  {
    v3 = 0;
  }

  else
  {
    v3 = *v2;
    if ((*v2 & 0x80000000) == 0)
    {
      *a1 = v2 + 1;
      goto LABEL_7;
    }
  }

  v4 = sub_10004DFA4(a1, v3);
  v3 = v4;
  if (v4 < 0)
  {
    v3 = 0;
  }

LABEL_7:

  return sub_10008D52C(a1, v3);
}

void sub_10008D64C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) <= 0x100u)
  {
    v4 = *(a2 + 8);
    v5 = *(a1 + 16);
    v6 = &v5[32 * *(a1 + 10)];
    v7 = *(a2 + 16);
    if (v4 > 0x100)
    {
      v12 = sub_100059980(v5, v6, *v7, (v7 + 8));
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

    sub_1000597C0(a1, v12);
  }

  v13 = *(a2 + 16);
  if (*(a2 + 8) >= 0x101u)
  {
    v19 = *v13;
    v18 = v13 + 2;
    v17 = v19;

    sub_100062440(v17, v18, a1);
  }

  else if (*(a2 + 10))
  {
    v14 = &v13[8 * *(a2 + 10)];
    v15 = v13;
    do
    {
      v16 = *v15;
      v15 += 8;
      sub_100059A88(a1, v16, v13 + 1);
      v13 = v15;
    }

    while (v15 != v14);
  }
}

uint64_t sub_10008D788()
{
  sub_10006D468();
  sub_10006D448();
  sub_10006D434();
  sub_100062920(v2, v3, v4);
  sub_10006D458();
  v6 = *(v5 + 88);
  v7 = sub_10006D4F0();
  v9 = v8(v7);
  result = 0;
  if (v9)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    sub_10006D4C0();
    if ((*(v11 + 48))(v0))
    {
      return 1;
    }

    else
    {
      sub_10006B3A8(v0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008D878()
{
  sub_10006D468();
  sub_10006D400();
  sub_100062920(v2, v3, v4);
  sub_10006D458();
  v6 = *(v5 + 88);
  v7 = sub_10006D4F0();
  v9 = v8(v7);
  result = 0;
  if (v9 && !v12)
  {
    if ((v1 & 2) != 0)
    {
      return 1;
    }

    sub_10006D4C0();
    if ((*(v11 + 48))(v0))
    {
      return 1;
    }

    else
    {
      sub_10006B3A8(v0);
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008D958()
{
  sub_10006D448();
  sub_10006D434();
  sub_10006DFAC(v0, v1);
  sub_10006D458();
  v3 = *(v2 + 88);
  v4 = sub_10006D4F0();
  v5(v4);
  return 0;
}

uint64_t sub_10008DA4C(uint64_t a1, uint64_t a2, char a3)
{
  sub_10006D400();
  sub_10006DFAC(v5, v6);
  sub_10006D458();
  v8 = *(v7 + 88);
  v9 = sub_10006D4F0();
  if (v10(v9))
  {
    v11 = v14 == 1;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    if ((a3 & 2) != 0)
    {
      return 1;
    }

    sub_10006D4C0();
    if ((*(v12 + 48))(a2))
    {
      return 1;
    }

    sub_10006B3A8(a2);
  }

  return 0;
}

unint64_t sub_10008DB30()
{
  sub_10006D468();
  *&v2 = sub_10006D448();
  v13 = v2;
  v14 = 0x7FFFFFFF00000000;
  sub_10006D434();
  sub_10006D344(v3, v4, v5);
  sub_10006D458();
  v7 = *(v6 + 88);
  v8 = sub_10006D4F0();
  result = v9(v8);
  if (result)
  {
    sub_10006B1B8(v12, result);
    if (!v14)
    {
      if ((v1 & 2) != 0)
      {
        return 1;
      }

      sub_10006D4C0();
      if ((*(v11 + 48))(v0))
      {
        return 1;
      }

      sub_10006B3A8(v0);
    }

    return 0;
  }

  return result;
}

unint64_t sub_10008DC24()
{
  sub_10006D468();
  sub_10006D400();
  sub_10006D344(v2, v3, v4);
  sub_10006D458();
  v6 = *(v5 + 88);
  v7 = sub_10006D4F0();
  result = v8(v7);
  if (result)
  {
    sub_10006B1B8(v11, result);
    if (!v12)
    {
      if ((v1 & 2) != 0)
      {
        return 1;
      }

      sub_10006D4C0();
      if ((*(v10 + 48))(v0))
      {
        return 1;
      }

      sub_10006B3A8(v0);
    }

    return 0;
  }

  return result;
}

uint64_t sub_10008DD08(uint64_t *a1)
{
  v1 = sub_10006D530(a1);
  (*(v2 + 40))(v1);

  return sub_10008D958();
}

uint64_t sub_10008DD60(uint64_t *a1)
{
  v1 = sub_10006D530(a1);
  (*(v2 + 40))(v1);

  return sub_10008D958();
}

unint64_t sub_10008DDF0(uint64_t *a1)
{
  v1 = sub_10006D518(a1);
  (*(v2 + 40))(v1);

  return sub_10008DB30();
}

unint64_t sub_10008DE54(uint64_t *a1)
{
  v1 = sub_10006D518(a1);
  (*(v2 + 40))(v1);

  return sub_10008DB30();
}

uint64_t sub_10008DEB8(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 40))(a1);
  sub_1000468AC(&v4, a2);
  return sub_10008D788();
}

uint64_t sub_10008DF24(uint64_t a1, uint64_t *a2)
{
  (*(*a1 + 40))(a1);
  sub_1000468AC(&v4, a2);
  return sub_10008D788();
}

_OWORD *sub_10008DFD8()
{
  sub_100070A00();
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

    sub_1000709C0(v8);
    v7 = *(v2 + 8);
  }

  v9 = v7 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_100070A14(v4, v5);
      v11 = sub_10004FD04(v16, "CHECK failed: size > chunk_size: ");
      sub_10004FE40(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_10004FE48(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_100070A34(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_10006D6B8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_1000709E8(result);
    if (v14 ^ v10 | v13)
    {
      sub_100070A34(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_10008E0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

_OWORD *sub_10008E104()
{
  sub_100070A00();
  v6 = *(v4 + 8);
  if (v6 - v5 + *(v4 + 28) >= v7)
  {
    v8 = *(v1 + 23);
    if (v8 < 0)
    {
      v8 = *(v1 + 8);
    }

    sub_1000709C0(v8);
    v6 = *(v2 + 8);
  }

  v9 = v6 - v3 + 16;
  while (1)
  {
    v10 = __OFSUB__(v0, v9);
    v0 -= v9;
    if ((v0 < 0) ^ v10 | (v0 == 0))
    {
      sub_100070A14(v4, v5);
      v11 = sub_10004FD04(v16, "CHECK failed: size > chunk_size: ");
      sub_10004FE40(&v15, &v11->__r_.__value_.__l.__data_);
      v4 = sub_10004FE48(v16);
    }

    if (!*(v2 + 16))
    {
      break;
    }

    sub_100070A34(v4, v5, v9);
    if (*(v2 + 28) < 17)
    {
      break;
    }

    result = sub_10006D6B8(v2);
    if (!result)
    {
      return result;
    }

    v4 = sub_1000709E8(result);
    if (v14 ^ v10 | v13)
    {
      sub_100070A34(v4, v5, v0);
      return (v3 + v0);
    }
  }

  return 0;
}

void sub_10008E1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004FE48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10008E210(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v6 = *a3;
  v7 = *a3;
  if (v6 < 0)
  {
    result = sub_10008E2F8(a3, v7);
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

  v9 = sub_10003D298(a1, v8, v7);
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

uint64_t sub_10008E2F8(uint64_t a1, int a2)
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
  v3 = std::__fs::filesystem::path::__filename(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

std::__fs::filesystem::path::__string_view std::__fs::filesystem::path::__parent_path(const std::__fs::filesystem::path *this)
{
  v3 = std::__fs::filesystem::path::__parent_path(this);
  size = v3.__size_;
  data = v3.__data_;
  result.__size_ = size;
  result.__data_ = data;
  return result;
}

uint64_t std::ostream::operator<<()
{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
}

{
  return std::ostream::operator<<();
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